; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_socket.c_accept.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_socket.c_accept.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i64, %struct.sock* }
%struct.sock = type { i32, i32* }
%struct.sk_buff = type { i32 }
%struct.tipc_sock = type { %struct.TYPE_2__, %struct.tipc_port* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.tipc_port = type { i32, i32, i32 }
%struct.tipc_msg = type { i32 }
%struct.msghdr = type { i32* }

@SS_READY = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@SS_LISTENING = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@EWOULDBLOCK = common dso_local global i32 0, align 4
@SS_CONNECTED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"<ACC<: \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.socket*, i32)* @accept to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @accept(%struct.socket* %0, %struct.socket* %1, i32 %2) #0 {
  %4 = alloca %struct.socket*, align 8
  %5 = alloca %struct.socket*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sock*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.sock*, align 8
  %11 = alloca %struct.tipc_sock*, align 8
  %12 = alloca %struct.tipc_port*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.tipc_msg*, align 8
  %15 = alloca %struct.msghdr, align 8
  store %struct.socket* %0, %struct.socket** %4, align 8
  store %struct.socket* %1, %struct.socket** %5, align 8
  store i32 %2, i32* %6, align 4
  %16 = load %struct.socket*, %struct.socket** %4, align 8
  %17 = getelementptr inbounds %struct.socket, %struct.socket* %16, i32 0, i32 1
  %18 = load %struct.sock*, %struct.sock** %17, align 8
  store %struct.sock* %18, %struct.sock** %7, align 8
  %19 = load %struct.sock*, %struct.sock** %7, align 8
  %20 = call i32 @lock_sock(%struct.sock* %19)
  %21 = load %struct.socket*, %struct.socket** %4, align 8
  %22 = getelementptr inbounds %struct.socket, %struct.socket* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @SS_READY, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %3
  %27 = load i32, i32* @EOPNOTSUPP, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %9, align 4
  br label %159

29:                                               ; preds = %3
  %30 = load %struct.socket*, %struct.socket** %4, align 8
  %31 = getelementptr inbounds %struct.socket, %struct.socket* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @SS_LISTENING, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %29
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %9, align 4
  br label %159

38:                                               ; preds = %29
  br label %39

39:                                               ; preds = %71, %38
  %40 = load %struct.sock*, %struct.sock** %7, align 8
  %41 = getelementptr inbounds %struct.sock, %struct.sock* %40, i32 0, i32 0
  %42 = call i64 @skb_queue_empty(i32* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %72

44:                                               ; preds = %39
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* @O_NONBLOCK, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  %50 = load i32, i32* @EWOULDBLOCK, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %9, align 4
  br label %159

52:                                               ; preds = %44
  %53 = load %struct.sock*, %struct.sock** %7, align 8
  %54 = call i32 @release_sock(%struct.sock* %53)
  %55 = load %struct.sock*, %struct.sock** %7, align 8
  %56 = getelementptr inbounds %struct.sock, %struct.sock* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.sock*, %struct.sock** %7, align 8
  %60 = getelementptr inbounds %struct.sock, %struct.sock* %59, i32 0, i32 0
  %61 = call i64 @skb_queue_empty(i32* %60)
  %62 = icmp ne i64 %61, 0
  %63 = xor i1 %62, true
  %64 = zext i1 %63 to i32
  %65 = call i32 @wait_event_interruptible(i32 %58, i32 %64)
  store i32 %65, i32* %9, align 4
  %66 = load %struct.sock*, %struct.sock** %7, align 8
  %67 = call i32 @lock_sock(%struct.sock* %66)
  %68 = load i32, i32* %9, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %52
  br label %159

71:                                               ; preds = %52
  br label %39

72:                                               ; preds = %39
  %73 = load %struct.sock*, %struct.sock** %7, align 8
  %74 = getelementptr inbounds %struct.sock, %struct.sock* %73, i32 0, i32 0
  %75 = call %struct.sk_buff* @skb_peek(i32* %74)
  store %struct.sk_buff* %75, %struct.sk_buff** %8, align 8
  %76 = load %struct.socket*, %struct.socket** %4, align 8
  %77 = getelementptr inbounds %struct.socket, %struct.socket* %76, i32 0, i32 1
  %78 = load %struct.sock*, %struct.sock** %77, align 8
  %79 = call i32 @sock_net(%struct.sock* %78)
  %80 = load %struct.socket*, %struct.socket** %5, align 8
  %81 = call i32 @tipc_create(i32 %79, %struct.socket* %80, i32 0, i32 0)
  store i32 %81, i32* %9, align 4
  %82 = load i32, i32* %9, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %158, label %84

84:                                               ; preds = %72
  %85 = load %struct.socket*, %struct.socket** %5, align 8
  %86 = getelementptr inbounds %struct.socket, %struct.socket* %85, i32 0, i32 1
  %87 = load %struct.sock*, %struct.sock** %86, align 8
  store %struct.sock* %87, %struct.sock** %10, align 8
  %88 = load %struct.sock*, %struct.sock** %10, align 8
  %89 = call %struct.tipc_sock* @tipc_sk(%struct.sock* %88)
  store %struct.tipc_sock* %89, %struct.tipc_sock** %11, align 8
  %90 = load %struct.tipc_sock*, %struct.tipc_sock** %11, align 8
  %91 = getelementptr inbounds %struct.tipc_sock, %struct.tipc_sock* %90, i32 0, i32 1
  %92 = load %struct.tipc_port*, %struct.tipc_port** %91, align 8
  store %struct.tipc_port* %92, %struct.tipc_port** %12, align 8
  %93 = load %struct.tipc_port*, %struct.tipc_port** %12, align 8
  %94 = getelementptr inbounds %struct.tipc_port, %struct.tipc_port* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  store i32 %95, i32* %13, align 4
  %96 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %97 = call %struct.tipc_msg* @buf_msg(%struct.sk_buff* %96)
  store %struct.tipc_msg* %97, %struct.tipc_msg** %14, align 8
  %98 = load %struct.sock*, %struct.sock** %10, align 8
  %99 = call i32 @lock_sock(%struct.sock* %98)
  %100 = load %struct.sock*, %struct.sock** %10, align 8
  %101 = call i32 @reject_rx_queue(%struct.sock* %100)
  %102 = load %struct.tipc_msg*, %struct.tipc_msg** %14, align 8
  %103 = call i32 @msg_origport(%struct.tipc_msg* %102)
  %104 = load %struct.tipc_sock*, %struct.tipc_sock** %11, align 8
  %105 = getelementptr inbounds %struct.tipc_sock, %struct.tipc_sock* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 1
  store i32 %103, i32* %106, align 4
  %107 = load %struct.tipc_msg*, %struct.tipc_msg** %14, align 8
  %108 = call i32 @msg_orignode(%struct.tipc_msg* %107)
  %109 = load %struct.tipc_sock*, %struct.tipc_sock** %11, align 8
  %110 = getelementptr inbounds %struct.tipc_sock, %struct.tipc_sock* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 0
  store i32 %108, i32* %111, align 8
  %112 = load i32, i32* %13, align 4
  %113 = load %struct.tipc_sock*, %struct.tipc_sock** %11, align 8
  %114 = getelementptr inbounds %struct.tipc_sock, %struct.tipc_sock* %113, i32 0, i32 0
  %115 = call i32 @tipc_connect2port(i32 %112, %struct.TYPE_2__* %114)
  %116 = load i64, i64* @SS_CONNECTED, align 8
  %117 = load %struct.socket*, %struct.socket** %5, align 8
  %118 = getelementptr inbounds %struct.socket, %struct.socket* %117, i32 0, i32 0
  store i64 %116, i64* %118, align 8
  %119 = load i32, i32* %13, align 4
  %120 = load %struct.tipc_msg*, %struct.tipc_msg** %14, align 8
  %121 = call i32 @msg_importance(%struct.tipc_msg* %120)
  %122 = call i32 @tipc_set_portimportance(i32 %119, i32 %121)
  %123 = load %struct.tipc_msg*, %struct.tipc_msg** %14, align 8
  %124 = call i64 @msg_named(%struct.tipc_msg* %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %135

126:                                              ; preds = %84
  %127 = load %struct.tipc_msg*, %struct.tipc_msg** %14, align 8
  %128 = call i32 @msg_nametype(%struct.tipc_msg* %127)
  %129 = load %struct.tipc_port*, %struct.tipc_port** %12, align 8
  %130 = getelementptr inbounds %struct.tipc_port, %struct.tipc_port* %129, i32 0, i32 1
  store i32 %128, i32* %130, align 4
  %131 = load %struct.tipc_msg*, %struct.tipc_msg** %14, align 8
  %132 = call i32 @msg_nameinst(%struct.tipc_msg* %131)
  %133 = load %struct.tipc_port*, %struct.tipc_port** %12, align 8
  %134 = getelementptr inbounds %struct.tipc_port, %struct.tipc_port* %133, i32 0, i32 0
  store i32 %132, i32* %134, align 4
  br label %135

135:                                              ; preds = %126, %84
  %136 = load %struct.tipc_msg*, %struct.tipc_msg** %14, align 8
  %137 = call i32 @msg_dbg(%struct.tipc_msg* %136, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %138 = load %struct.tipc_msg*, %struct.tipc_msg** %14, align 8
  %139 = call i32 @msg_data_sz(%struct.tipc_msg* %138)
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %147, label %141

141:                                              ; preds = %135
  %142 = bitcast %struct.msghdr* %15 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %142, i8 0, i64 8, i1 false)
  %143 = load %struct.sock*, %struct.sock** %7, align 8
  %144 = call i32 @advance_rx_queue(%struct.sock* %143)
  %145 = load %struct.socket*, %struct.socket** %5, align 8
  %146 = call i32 @send_packet(i32* null, %struct.socket* %145, %struct.msghdr* %15, i32 0)
  br label %155

147:                                              ; preds = %135
  %148 = load %struct.sock*, %struct.sock** %7, align 8
  %149 = getelementptr inbounds %struct.sock, %struct.sock* %148, i32 0, i32 0
  %150 = call i32 @__skb_dequeue(i32* %149)
  %151 = load %struct.sock*, %struct.sock** %10, align 8
  %152 = getelementptr inbounds %struct.sock, %struct.sock* %151, i32 0, i32 0
  %153 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %154 = call i32 @__skb_queue_head(i32* %152, %struct.sk_buff* %153)
  br label %155

155:                                              ; preds = %147, %141
  %156 = load %struct.sock*, %struct.sock** %10, align 8
  %157 = call i32 @release_sock(%struct.sock* %156)
  br label %158

158:                                              ; preds = %155, %72
  br label %159

159:                                              ; preds = %158, %70, %49, %35, %26
  %160 = load %struct.sock*, %struct.sock** %7, align 8
  %161 = call i32 @release_sock(%struct.sock* %160)
  %162 = load i32, i32* %9, align 4
  ret i32 %162
}

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local i64 @skb_queue_empty(i32*) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

declare dso_local i32 @wait_event_interruptible(i32, i32) #1

declare dso_local %struct.sk_buff* @skb_peek(i32*) #1

declare dso_local i32 @tipc_create(i32, %struct.socket*, i32, i32) #1

declare dso_local i32 @sock_net(%struct.sock*) #1

declare dso_local %struct.tipc_sock* @tipc_sk(%struct.sock*) #1

declare dso_local %struct.tipc_msg* @buf_msg(%struct.sk_buff*) #1

declare dso_local i32 @reject_rx_queue(%struct.sock*) #1

declare dso_local i32 @msg_origport(%struct.tipc_msg*) #1

declare dso_local i32 @msg_orignode(%struct.tipc_msg*) #1

declare dso_local i32 @tipc_connect2port(i32, %struct.TYPE_2__*) #1

declare dso_local i32 @tipc_set_portimportance(i32, i32) #1

declare dso_local i32 @msg_importance(%struct.tipc_msg*) #1

declare dso_local i64 @msg_named(%struct.tipc_msg*) #1

declare dso_local i32 @msg_nametype(%struct.tipc_msg*) #1

declare dso_local i32 @msg_nameinst(%struct.tipc_msg*) #1

declare dso_local i32 @msg_dbg(%struct.tipc_msg*, i8*) #1

declare dso_local i32 @msg_data_sz(%struct.tipc_msg*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @advance_rx_queue(%struct.sock*) #1

declare dso_local i32 @send_packet(i32*, %struct.socket*, %struct.msghdr*, i32) #1

declare dso_local i32 @__skb_dequeue(i32*) #1

declare dso_local i32 @__skb_queue_head(i32*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
