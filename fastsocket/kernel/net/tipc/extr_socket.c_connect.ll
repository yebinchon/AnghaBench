; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_socket.c_connect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_socket.c_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i64, %struct.sock* }
%struct.sock = type { i32, i32, i32* }
%struct.sockaddr = type { i32 }
%struct.sockaddr_tipc = type { i64 }
%struct.msghdr = type { i32, %struct.sockaddr*, i32* }
%struct.sk_buff = type { i32 }
%struct.tipc_msg = type { i32 }

@SS_READY = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@EWOULDBLOCK = common dso_local global i32 0, align 4
@SS_LISTENING = common dso_local global i64 0, align 8
@SS_CONNECTING = common dso_local global i64 0, align 8
@EALREADY = common dso_local global i32 0, align 4
@SS_UNCONNECTED = common dso_local global i64 0, align 8
@EISCONN = common dso_local global i32 0, align 4
@TIPC_ADDR_MCAST = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@SS_CONNECTED = common dso_local global i64 0, align 8
@ECONNREFUSED = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@SS_DISCONNECTING = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.sockaddr*, i32, i32)* @connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @connect(%struct.socket* %0, %struct.sockaddr* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.socket*, align 8
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.sock*, align 8
  %10 = alloca %struct.sockaddr_tipc*, align 8
  %11 = alloca %struct.msghdr, align 8
  %12 = alloca %struct.sk_buff*, align 8
  %13 = alloca %struct.tipc_msg*, align 8
  %14 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %5, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %15 = load %struct.socket*, %struct.socket** %5, align 8
  %16 = getelementptr inbounds %struct.socket, %struct.socket* %15, i32 0, i32 1
  %17 = load %struct.sock*, %struct.sock** %16, align 8
  store %struct.sock* %17, %struct.sock** %9, align 8
  %18 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %19 = bitcast %struct.sockaddr* %18 to %struct.sockaddr_tipc*
  store %struct.sockaddr_tipc* %19, %struct.sockaddr_tipc** %10, align 8
  %20 = bitcast %struct.msghdr* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %20, i8 0, i64 24, i1 false)
  %21 = load %struct.sock*, %struct.sock** %9, align 8
  %22 = call i32 @lock_sock(%struct.sock* %21)
  %23 = load %struct.socket*, %struct.socket** %5, align 8
  %24 = getelementptr inbounds %struct.socket, %struct.socket* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @SS_READY, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %4
  %29 = load i32, i32* @EOPNOTSUPP, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %14, align 4
  br label %164

31:                                               ; preds = %4
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* @O_NONBLOCK, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load i32, i32* @EWOULDBLOCK, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %14, align 4
  br label %164

39:                                               ; preds = %31
  %40 = load %struct.socket*, %struct.socket** %5, align 8
  %41 = getelementptr inbounds %struct.socket, %struct.socket* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @SS_LISTENING, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %39
  %46 = load i32, i32* @EOPNOTSUPP, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %14, align 4
  br label %164

48:                                               ; preds = %39
  %49 = load %struct.socket*, %struct.socket** %5, align 8
  %50 = getelementptr inbounds %struct.socket, %struct.socket* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @SS_CONNECTING, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %48
  %55 = load i32, i32* @EALREADY, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %14, align 4
  br label %164

57:                                               ; preds = %48
  %58 = load %struct.socket*, %struct.socket** %5, align 8
  %59 = getelementptr inbounds %struct.socket, %struct.socket* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @SS_UNCONNECTED, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %57
  %64 = load i32, i32* @EISCONN, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %14, align 4
  br label %164

66:                                               ; preds = %57
  %67 = load %struct.sockaddr_tipc*, %struct.sockaddr_tipc** %10, align 8
  %68 = getelementptr inbounds %struct.sockaddr_tipc, %struct.sockaddr_tipc* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @TIPC_ADDR_MCAST, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %66
  %73 = load i32, i32* @EINVAL, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %14, align 4
  br label %164

75:                                               ; preds = %66
  %76 = load %struct.sock*, %struct.sock** %9, align 8
  %77 = call i32 @reject_rx_queue(%struct.sock* %76)
  %78 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %79 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %11, i32 0, i32 1
  store %struct.sockaddr* %78, %struct.sockaddr** %79, align 8
  %80 = load i32, i32* %7, align 4
  %81 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %11, i32 0, i32 0
  store i32 %80, i32* %81, align 8
  %82 = load %struct.socket*, %struct.socket** %5, align 8
  %83 = call i32 @send_msg(i32* null, %struct.socket* %82, %struct.msghdr* %11, i32 0)
  store i32 %83, i32* %14, align 4
  %84 = load i32, i32* %14, align 4
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %75
  br label %164

87:                                               ; preds = %75
  %88 = load %struct.sock*, %struct.sock** %9, align 8
  %89 = call i32 @release_sock(%struct.sock* %88)
  %90 = load %struct.sock*, %struct.sock** %9, align 8
  %91 = getelementptr inbounds %struct.sock, %struct.sock* %90, i32 0, i32 2
  %92 = load i32*, i32** %91, align 8
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.sock*, %struct.sock** %9, align 8
  %95 = getelementptr inbounds %struct.sock, %struct.sock* %94, i32 0, i32 0
  %96 = call i32 @skb_queue_empty(i32* %95)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %104

98:                                               ; preds = %87
  %99 = load %struct.socket*, %struct.socket** %5, align 8
  %100 = getelementptr inbounds %struct.socket, %struct.socket* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @SS_CONNECTING, align 8
  %103 = icmp ne i64 %101, %102
  br label %104

104:                                              ; preds = %98, %87
  %105 = phi i1 [ true, %87 ], [ %103, %98 ]
  %106 = zext i1 %105 to i32
  %107 = load %struct.sock*, %struct.sock** %9, align 8
  %108 = getelementptr inbounds %struct.sock, %struct.sock* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @wait_event_interruptible_timeout(i32 %93, i32 %106, i32 %109)
  store i32 %110, i32* %14, align 4
  %111 = load %struct.sock*, %struct.sock** %9, align 8
  %112 = call i32 @lock_sock(%struct.sock* %111)
  %113 = load i32, i32* %14, align 4
  %114 = icmp sgt i32 %113, 0
  br i1 %114, label %115, label %152

115:                                              ; preds = %104
  %116 = load %struct.sock*, %struct.sock** %9, align 8
  %117 = getelementptr inbounds %struct.sock, %struct.sock* %116, i32 0, i32 0
  %118 = call %struct.sk_buff* @skb_peek(i32* %117)
  store %struct.sk_buff* %118, %struct.sk_buff** %12, align 8
  %119 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %120 = icmp ne %struct.sk_buff* %119, null
  br i1 %120, label %121, label %138

121:                                              ; preds = %115
  %122 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %123 = call %struct.tipc_msg* @buf_msg(%struct.sk_buff* %122)
  store %struct.tipc_msg* %123, %struct.tipc_msg** %13, align 8
  %124 = load %struct.socket*, %struct.socket** %5, align 8
  %125 = load %struct.tipc_msg*, %struct.tipc_msg** %13, align 8
  %126 = call i32 @auto_connect(%struct.socket* %124, %struct.tipc_msg* %125)
  store i32 %126, i32* %14, align 4
  %127 = load i32, i32* %14, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %137, label %129

129:                                              ; preds = %121
  %130 = load %struct.tipc_msg*, %struct.tipc_msg** %13, align 8
  %131 = call i32 @msg_data_sz(%struct.tipc_msg* %130)
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %136, label %133

133:                                              ; preds = %129
  %134 = load %struct.sock*, %struct.sock** %9, align 8
  %135 = call i32 @advance_rx_queue(%struct.sock* %134)
  br label %136

136:                                              ; preds = %133, %129
  br label %137

137:                                              ; preds = %136, %121
  br label %151

138:                                              ; preds = %115
  %139 = load %struct.socket*, %struct.socket** %5, align 8
  %140 = getelementptr inbounds %struct.socket, %struct.socket* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = load i64, i64* @SS_CONNECTED, align 8
  %143 = icmp eq i64 %141, %142
  br i1 %143, label %144, label %147

144:                                              ; preds = %138
  %145 = load i32, i32* @EISCONN, align 4
  %146 = sub nsw i32 0, %145
  store i32 %146, i32* %14, align 4
  br label %150

147:                                              ; preds = %138
  %148 = load i32, i32* @ECONNREFUSED, align 4
  %149 = sub nsw i32 0, %148
  store i32 %149, i32* %14, align 4
  br label %150

150:                                              ; preds = %147, %144
  br label %151

151:                                              ; preds = %150, %137
  br label %163

152:                                              ; preds = %104
  %153 = load i32, i32* %14, align 4
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %155, label %158

155:                                              ; preds = %152
  %156 = load i32, i32* @ETIMEDOUT, align 4
  %157 = sub nsw i32 0, %156
  store i32 %157, i32* %14, align 4
  br label %159

158:                                              ; preds = %152
  br label %159

159:                                              ; preds = %158, %155
  %160 = load i64, i64* @SS_DISCONNECTING, align 8
  %161 = load %struct.socket*, %struct.socket** %5, align 8
  %162 = getelementptr inbounds %struct.socket, %struct.socket* %161, i32 0, i32 0
  store i64 %160, i64* %162, align 8
  br label %163

163:                                              ; preds = %159, %151
  br label %164

164:                                              ; preds = %163, %86, %72, %63, %54, %45, %36, %28
  %165 = load %struct.sock*, %struct.sock** %9, align 8
  %166 = call i32 @release_sock(%struct.sock* %165)
  %167 = load i32, i32* %14, align 4
  ret i32 %167
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @lock_sock(%struct.sock*) #2

declare dso_local i32 @reject_rx_queue(%struct.sock*) #2

declare dso_local i32 @send_msg(i32*, %struct.socket*, %struct.msghdr*, i32) #2

declare dso_local i32 @release_sock(%struct.sock*) #2

declare dso_local i32 @wait_event_interruptible_timeout(i32, i32, i32) #2

declare dso_local i32 @skb_queue_empty(i32*) #2

declare dso_local %struct.sk_buff* @skb_peek(i32*) #2

declare dso_local %struct.tipc_msg* @buf_msg(%struct.sk_buff*) #2

declare dso_local i32 @auto_connect(%struct.socket*, %struct.tipc_msg*) #2

declare dso_local i32 @msg_data_sz(%struct.tipc_msg*) #2

declare dso_local i32 @advance_rx_queue(%struct.sock*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
