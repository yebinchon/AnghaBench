; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/rxrpc/extr_ar-output.c_rxrpc_queue_packet.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/rxrpc/extr_ar-output.c_rxrpc_queue_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxrpc_call = type { i64, i64*, i32, i32, %struct.TYPE_5__*, i32, %struct.TYPE_6__, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i64 }
%struct.sk_buff = type { i32 }
%struct.rxrpc_skb_priv = type { i32, i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@.str = private unnamed_addr constant [18 x i8] c"queue skb %p [%d]\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"________awaiting reply/ACK__________\00", align 1
@RXRPC_CALL_CLIENT_AWAIT_REPLY = common dso_local global i32 0, align 4
@RXRPC_CALL_SERVER_AWAIT_ACK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"Tx DATA %%%u { #%u }\00", align 1
@jiffies = common dso_local global i64 0, align 8
@rxrpc_resend_timeout = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@RXRPC_CALL_RUN_RTIMER = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"run timer\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [12 x i8] c"sent skb %p\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"failed to delete ACK timer\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"need instant resend %d\00", align 1
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rxrpc_call*, %struct.sk_buff*, i32)* @rxrpc_queue_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rxrpc_queue_packet(%struct.rxrpc_call* %0, %struct.sk_buff* %1, i32 %2) #0 {
  %4 = alloca %struct.rxrpc_call*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.rxrpc_skb_priv*, align 8
  %8 = alloca i32, align 4
  store %struct.rxrpc_call* %0, %struct.rxrpc_call** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %10 = call %struct.rxrpc_skb_priv* @rxrpc_skb(%struct.sk_buff* %9)
  store %struct.rxrpc_skb_priv* %10, %struct.rxrpc_skb_priv** %7, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %12 = load %struct.rxrpc_call*, %struct.rxrpc_call** %4, align 8
  %13 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = call i32 (i8*, %struct.sk_buff*, ...) @_net(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), %struct.sk_buff* %11, i64 %14)
  %16 = load %struct.rxrpc_call*, %struct.rxrpc_call** %4, align 8
  %17 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %16, i32 0, i32 1
  %18 = load i64*, i64** %17, align 8
  %19 = icmp ne i64* %18, null
  %20 = zext i1 %19 to i32
  %21 = call i32 @ASSERT(i32 %20)
  %22 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %23 = ptrtoint %struct.sk_buff* %22 to i64
  %24 = load %struct.rxrpc_call*, %struct.rxrpc_call** %4, align 8
  %25 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %24, i32 0, i32 1
  %26 = load i64*, i64** %25, align 8
  %27 = load %struct.rxrpc_call*, %struct.rxrpc_call** %4, align 8
  %28 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds i64, i64* %26, i64 %29
  store i64 %23, i64* %30, align 8
  %31 = call i32 (...) @smp_wmb()
  %32 = load %struct.rxrpc_call*, %struct.rxrpc_call** %4, align 8
  %33 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = add i64 %34, 1
  %36 = load %struct.rxrpc_call*, %struct.rxrpc_call** %4, align 8
  %37 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = sub nsw i32 %38, 1
  %40 = sext i32 %39 to i64
  %41 = and i64 %35, %40
  %42 = load %struct.rxrpc_call*, %struct.rxrpc_call** %4, align 8
  %43 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %42, i32 0, i32 0
  store i64 %41, i64* %43, align 8
  %44 = load i32, i32* %6, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %51, label %46

46:                                               ; preds = %3
  %47 = load %struct.rxrpc_call*, %struct.rxrpc_call** %4, align 8
  %48 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = icmp eq i32 %49, 129
  br i1 %50, label %51, label %79

51:                                               ; preds = %46, %3
  %52 = call i32 (i8*, ...) @_debug(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %53 = load %struct.rxrpc_call*, %struct.rxrpc_call** %4, align 8
  %54 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %53, i32 0, i32 8
  %55 = call i32 @write_lock_bh(i32* %54)
  %56 = load %struct.rxrpc_call*, %struct.rxrpc_call** %4, align 8
  %57 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  switch i32 %58, label %74 [
    i32 130, label %59
    i32 129, label %63
    i32 128, label %70
  ]

59:                                               ; preds = %51
  %60 = load i32, i32* @RXRPC_CALL_CLIENT_AWAIT_REPLY, align 4
  %61 = load %struct.rxrpc_call*, %struct.rxrpc_call** %4, align 8
  %62 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %61, i32 0, i32 3
  store i32 %60, i32* %62, align 4
  br label %75

63:                                               ; preds = %51
  %64 = load %struct.rxrpc_call*, %struct.rxrpc_call** %4, align 8
  %65 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %64, i32 0, i32 3
  store i32 128, i32* %65, align 4
  %66 = load i32, i32* %6, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %63
  br label %75

69:                                               ; preds = %63
  br label %70

70:                                               ; preds = %51, %69
  %71 = load i32, i32* @RXRPC_CALL_SERVER_AWAIT_ACK, align 4
  %72 = load %struct.rxrpc_call*, %struct.rxrpc_call** %4, align 8
  %73 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %72, i32 0, i32 3
  store i32 %71, i32* %73, align 4
  br label %75

74:                                               ; preds = %51
  br label %75

75:                                               ; preds = %74, %70, %68, %59
  %76 = load %struct.rxrpc_call*, %struct.rxrpc_call** %4, align 8
  %77 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %76, i32 0, i32 8
  %78 = call i32 @write_unlock_bh(i32* %77)
  br label %79

79:                                               ; preds = %75, %46
  %80 = load %struct.rxrpc_skb_priv*, %struct.rxrpc_skb_priv** %7, align 8
  %81 = getelementptr inbounds %struct.rxrpc_skb_priv, %struct.rxrpc_skb_priv* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @ntohl(i32 %83)
  %85 = load %struct.rxrpc_skb_priv*, %struct.rxrpc_skb_priv** %7, align 8
  %86 = getelementptr inbounds %struct.rxrpc_skb_priv, %struct.rxrpc_skb_priv* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @ntohl(i32 %88)
  %90 = call i32 @_proto(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %84, i32 %89)
  %91 = load %struct.rxrpc_skb_priv*, %struct.rxrpc_skb_priv** %7, align 8
  %92 = getelementptr inbounds %struct.rxrpc_skb_priv, %struct.rxrpc_skb_priv* %91, i32 0, i32 0
  store i32 0, i32* %92, align 8
  %93 = load i64, i64* @jiffies, align 8
  %94 = load i32, i32* @rxrpc_resend_timeout, align 4
  %95 = load i32, i32* @HZ, align 4
  %96 = mul nsw i32 %94, %95
  %97 = sext i32 %96 to i64
  %98 = add nsw i64 %93, %97
  %99 = load %struct.rxrpc_skb_priv*, %struct.rxrpc_skb_priv** %7, align 8
  %100 = getelementptr inbounds %struct.rxrpc_skb_priv, %struct.rxrpc_skb_priv* %99, i32 0, i32 1
  store i64 %98, i64* %100, align 8
  %101 = load i32, i32* @RXRPC_CALL_RUN_RTIMER, align 4
  %102 = load %struct.rxrpc_call*, %struct.rxrpc_call** %4, align 8
  %103 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %102, i32 0, i32 7
  %104 = call i32 @test_and_set_bit(i32 %101, i32* %103)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %117, label %106

106:                                              ; preds = %79
  %107 = call i32 (i8*, ...) @_debug(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %108 = load %struct.rxrpc_skb_priv*, %struct.rxrpc_skb_priv** %7, align 8
  %109 = getelementptr inbounds %struct.rxrpc_skb_priv, %struct.rxrpc_skb_priv* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = load %struct.rxrpc_call*, %struct.rxrpc_call** %4, align 8
  %112 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %111, i32 0, i32 6
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 0
  store i64 %110, i64* %113, align 8
  %114 = load %struct.rxrpc_call*, %struct.rxrpc_call** %4, align 8
  %115 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %114, i32 0, i32 6
  %116 = call i32 @add_timer(%struct.TYPE_6__* %115)
  br label %117

117:                                              ; preds = %106, %79
  %118 = load i32, i32* @EAGAIN, align 4
  %119 = sub nsw i32 0, %118
  store i32 %119, i32* %8, align 4
  %120 = load %struct.rxrpc_call*, %struct.rxrpc_call** %4, align 8
  %121 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %120, i32 0, i32 5
  %122 = call i64 @try_to_del_timer_sync(i32* %121)
  %123 = icmp sge i64 %122, 0
  br i1 %123, label %124, label %134

124:                                              ; preds = %117
  %125 = load %struct.rxrpc_call*, %struct.rxrpc_call** %4, align 8
  %126 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %125, i32 0, i32 4
  %127 = load %struct.TYPE_5__*, %struct.TYPE_5__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %131 = call i32 @rxrpc_send_packet(i32 %129, %struct.sk_buff* %130)
  store i32 %131, i32* %8, align 4
  %132 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %133 = call i32 (i8*, %struct.sk_buff*, ...) @_net(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), %struct.sk_buff* %132)
  br label %136

134:                                              ; preds = %117
  %135 = call i32 (i8*, ...) @_debug(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  br label %136

136:                                              ; preds = %134, %124
  %137 = load i32, i32* %8, align 4
  %138 = icmp slt i32 %137, 0
  br i1 %138, label %139, label %146

139:                                              ; preds = %136
  %140 = load i32, i32* %8, align 4
  %141 = call i32 (i8*, ...) @_debug(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), i32 %140)
  %142 = load %struct.rxrpc_skb_priv*, %struct.rxrpc_skb_priv** %7, align 8
  %143 = getelementptr inbounds %struct.rxrpc_skb_priv, %struct.rxrpc_skb_priv* %142, i32 0, i32 0
  store i32 1, i32* %143, align 8
  %144 = load %struct.rxrpc_call*, %struct.rxrpc_call** %4, align 8
  %145 = call i32 @rxrpc_instant_resend(%struct.rxrpc_call* %144)
  br label %146

146:                                              ; preds = %139, %136
  %147 = call i32 @_leave(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0))
  ret void
}

declare dso_local %struct.rxrpc_skb_priv* @rxrpc_skb(%struct.sk_buff*) #1

declare dso_local i32 @_net(i8*, %struct.sk_buff*, ...) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @smp_wmb(...) #1

declare dso_local i32 @_debug(i8*, ...) #1

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

declare dso_local i32 @_proto(i8*, i32, i32) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @add_timer(%struct.TYPE_6__*) #1

declare dso_local i64 @try_to_del_timer_sync(i32*) #1

declare dso_local i32 @rxrpc_send_packet(i32, %struct.sk_buff*) #1

declare dso_local i32 @rxrpc_instant_resend(%struct.rxrpc_call*) #1

declare dso_local i32 @_leave(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
