; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/rxrpc/extr_ar-ack.c_rxrpc_drain_rx_oos_queue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/rxrpc/extr_ar-ack.c_rxrpc_drain_rx_oos_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxrpc_call = type { i64, i32, i32, i32, i32 }
%struct.rxrpc_skb_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.sk_buff = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"{%d,%d}\00", align 1
@ECONNRESET = common dso_local global i32 0, align 4
@RXRPC_CALL_RELEASED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"drain OOS packet %d [%d]\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"requeue %p {%u}\00", align 1
@RXRPC_SKB_MARK_DATA = common dso_local global i32 0, align 4
@RXRPC_LAST_PACKET = common dso_local global i32 0, align 4
@RXRPC_CLIENT_INITIATED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"drain #%u\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"peek %p {%u}\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c" = %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rxrpc_call*)* @rxrpc_drain_rx_oos_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rxrpc_drain_rx_oos_queue(%struct.rxrpc_call* %0) #0 {
  %2 = alloca %struct.rxrpc_call*, align 8
  %3 = alloca %struct.rxrpc_skb_priv*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.rxrpc_call* %0, %struct.rxrpc_call** %2, align 8
  %7 = load %struct.rxrpc_call*, %struct.rxrpc_call** %2, align 8
  %8 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.rxrpc_call*, %struct.rxrpc_call** %2, align 8
  %11 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = call i32 @_enter(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %9, i64 %12)
  %14 = load %struct.rxrpc_call*, %struct.rxrpc_call** %2, align 8
  %15 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %14, i32 0, i32 1
  %16 = call i32 @spin_lock_bh(i32* %15)
  %17 = load i32, i32* @ECONNRESET, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* @RXRPC_CALL_RELEASED, align 4
  %20 = load %struct.rxrpc_call*, %struct.rxrpc_call** %2, align 8
  %21 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %20, i32 0, i32 4
  %22 = call i64 @test_bit(i32 %19, i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %1
  br label %137

25:                                               ; preds = %1
  %26 = load %struct.rxrpc_call*, %struct.rxrpc_call** %2, align 8
  %27 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %26, i32 0, i32 2
  %28 = call %struct.sk_buff* @skb_dequeue(i32* %27)
  store %struct.sk_buff* %28, %struct.sk_buff** %4, align 8
  %29 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %30 = icmp ne %struct.sk_buff* %29, null
  br i1 %30, label %31, label %136

31:                                               ; preds = %25
  %32 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %33 = call %struct.rxrpc_skb_priv* @rxrpc_skb(%struct.sk_buff* %32)
  store %struct.rxrpc_skb_priv* %33, %struct.rxrpc_skb_priv** %3, align 8
  %34 = load %struct.rxrpc_skb_priv*, %struct.rxrpc_skb_priv** %3, align 8
  %35 = getelementptr inbounds %struct.rxrpc_skb_priv, %struct.rxrpc_skb_priv* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @ntohl(i32 %37)
  %39 = inttoptr i64 %38 to %struct.sk_buff*
  %40 = load %struct.rxrpc_call*, %struct.rxrpc_call** %2, align 8
  %41 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = call i32 (i8*, %struct.sk_buff*, ...) @_debug(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), %struct.sk_buff* %39, i64 %42)
  %44 = load %struct.rxrpc_skb_priv*, %struct.rxrpc_skb_priv** %3, align 8
  %45 = getelementptr inbounds %struct.rxrpc_skb_priv, %struct.rxrpc_skb_priv* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i64 @ntohl(i32 %47)
  %49 = load %struct.rxrpc_call*, %struct.rxrpc_call** %2, align 8
  %50 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %48, %51
  br i1 %52, label %53, label %71

53:                                               ; preds = %31
  %54 = load %struct.rxrpc_call*, %struct.rxrpc_call** %2, align 8
  %55 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %54, i32 0, i32 2
  %56 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %57 = call i32 @skb_queue_head(i32* %55, %struct.sk_buff* %56)
  %58 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %59 = call %struct.rxrpc_skb_priv* @rxrpc_skb(%struct.sk_buff* %58)
  %60 = getelementptr inbounds %struct.rxrpc_skb_priv, %struct.rxrpc_skb_priv* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i64 @ntohl(i32 %62)
  %64 = load %struct.rxrpc_call*, %struct.rxrpc_call** %2, align 8
  %65 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %64, i32 0, i32 0
  store i64 %63, i64* %65, align 8
  %66 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %67 = load %struct.rxrpc_call*, %struct.rxrpc_call** %2, align 8
  %68 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = call i32 (i8*, %struct.sk_buff*, ...) @_debug(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), %struct.sk_buff* %66, i64 %69)
  br label %135

71:                                               ; preds = %31
  %72 = load i32, i32* @RXRPC_SKB_MARK_DATA, align 4
  %73 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %74 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 4
  %75 = load %struct.rxrpc_skb_priv*, %struct.rxrpc_skb_priv** %3, align 8
  %76 = getelementptr inbounds %struct.rxrpc_skb_priv, %struct.rxrpc_skb_priv* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @RXRPC_LAST_PACKET, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %91

82:                                               ; preds = %71
  %83 = load %struct.rxrpc_skb_priv*, %struct.rxrpc_skb_priv** %3, align 8
  %84 = getelementptr inbounds %struct.rxrpc_skb_priv, %struct.rxrpc_skb_priv* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @RXRPC_CLIENT_INITIATED, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  %90 = xor i1 %89, true
  br label %91

91:                                               ; preds = %82, %71
  %92 = phi i1 [ false, %71 ], [ %90, %82 ]
  %93 = zext i1 %92 to i32
  store i32 %93, i32* %5, align 4
  %94 = load %struct.rxrpc_call*, %struct.rxrpc_call** %2, align 8
  %95 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %96 = load i32, i32* %5, align 4
  %97 = call i32 @rxrpc_queue_rcv_skb(%struct.rxrpc_call* %94, %struct.sk_buff* %95, i32 1, i32 %96)
  store i32 %97, i32* %6, align 4
  %98 = load i32, i32* %6, align 4
  %99 = icmp slt i32 %98, 0
  %100 = zext i1 %99 to i32
  %101 = call i32 @BUG_ON(i32 %100)
  %102 = load %struct.rxrpc_call*, %struct.rxrpc_call** %2, align 8
  %103 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 8
  %105 = sext i32 %104 to i64
  %106 = inttoptr i64 %105 to %struct.sk_buff*
  %107 = call i32 (i8*, %struct.sk_buff*, ...) @_debug(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), %struct.sk_buff* %106)
  %108 = load %struct.rxrpc_call*, %struct.rxrpc_call** %2, align 8
  %109 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 8
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %109, align 8
  %112 = load %struct.rxrpc_call*, %struct.rxrpc_call** %2, align 8
  %113 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %112, i32 0, i32 2
  %114 = call %struct.sk_buff* @skb_peek(i32* %113)
  store %struct.sk_buff* %114, %struct.sk_buff** %4, align 8
  %115 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %116 = icmp ne %struct.sk_buff* %115, null
  br i1 %116, label %117, label %126

117:                                              ; preds = %91
  %118 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %119 = call %struct.rxrpc_skb_priv* @rxrpc_skb(%struct.sk_buff* %118)
  %120 = getelementptr inbounds %struct.rxrpc_skb_priv, %struct.rxrpc_skb_priv* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = call i64 @ntohl(i32 %122)
  %124 = load %struct.rxrpc_call*, %struct.rxrpc_call** %2, align 8
  %125 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %124, i32 0, i32 0
  store i64 %123, i64* %125, align 8
  br label %129

126:                                              ; preds = %91
  %127 = load %struct.rxrpc_call*, %struct.rxrpc_call** %2, align 8
  %128 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %127, i32 0, i32 0
  store i64 0, i64* %128, align 8
  br label %129

129:                                              ; preds = %126, %117
  %130 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %131 = load %struct.rxrpc_call*, %struct.rxrpc_call** %2, align 8
  %132 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = call i32 (i8*, %struct.sk_buff*, ...) @_debug(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), %struct.sk_buff* %130, i64 %133)
  br label %135

135:                                              ; preds = %129, %53
  br label %136

136:                                              ; preds = %135, %25
  store i32 0, i32* %6, align 4
  br label %137

137:                                              ; preds = %136, %24
  %138 = load %struct.rxrpc_call*, %struct.rxrpc_call** %2, align 8
  %139 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %138, i32 0, i32 1
  %140 = call i32 @spin_unlock_bh(i32* %139)
  %141 = load i32, i32* %6, align 4
  %142 = call i32 @_leave(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 %141)
  %143 = load i32, i32* %6, align 4
  ret i32 %143
}

declare dso_local i32 @_enter(i8*, i32, i64) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local %struct.sk_buff* @skb_dequeue(i32*) #1

declare dso_local %struct.rxrpc_skb_priv* @rxrpc_skb(%struct.sk_buff*) #1

declare dso_local i32 @_debug(i8*, %struct.sk_buff*, ...) #1

declare dso_local i64 @ntohl(i32) #1

declare dso_local i32 @skb_queue_head(i32*, %struct.sk_buff*) #1

declare dso_local i32 @rxrpc_queue_rcv_skb(%struct.rxrpc_call*, %struct.sk_buff*, i32, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local %struct.sk_buff* @skb_peek(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @_leave(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
