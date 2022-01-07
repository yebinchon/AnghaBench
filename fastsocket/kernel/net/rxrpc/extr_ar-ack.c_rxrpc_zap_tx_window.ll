; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/rxrpc/extr_ar-ack.c_rxrpc_zap_tx_window.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/rxrpc/extr_ar-ack.c_rxrpc_zap_tx_window.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxrpc_call = type { i32, i64*, i32, i32 }
%struct.rxrpc_skb_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.sk_buff = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"+++ clear Tx %u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rxrpc_call*)* @rxrpc_zap_tx_window to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rxrpc_zap_tx_window(%struct.rxrpc_call* %0) #0 {
  %2 = alloca %struct.rxrpc_call*, align 8
  %3 = alloca %struct.rxrpc_skb_priv*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.rxrpc_call* %0, %struct.rxrpc_call** %2, align 8
  %9 = load %struct.rxrpc_call*, %struct.rxrpc_call** %2, align 8
  %10 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %7, align 4
  %12 = load %struct.rxrpc_call*, %struct.rxrpc_call** %2, align 8
  %13 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %12, i32 0, i32 1
  %14 = load i64*, i64** %13, align 8
  store i64* %14, i64** %6, align 8
  %15 = load %struct.rxrpc_call*, %struct.rxrpc_call** %2, align 8
  %16 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %15, i32 0, i32 1
  store i64* null, i64** %16, align 8
  br label %17

17:                                               ; preds = %27, %1
  %18 = load %struct.rxrpc_call*, %struct.rxrpc_call** %2, align 8
  %19 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.rxrpc_call*, %struct.rxrpc_call** %2, align 8
  %22 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* %7, align 4
  %25 = call i64 @CIRC_CNT(i32 %20, i32 %23, i32 %24)
  %26 = icmp sgt i64 %25, 0
  br i1 %26, label %27, label %60

27:                                               ; preds = %17
  %28 = load %struct.rxrpc_call*, %struct.rxrpc_call** %2, align 8
  %29 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %8, align 4
  %31 = call i32 (...) @smp_read_barrier_depends()
  %32 = load i64*, i64** %6, align 8
  %33 = load i32, i32* %8, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i64, i64* %32, i64 %34
  %36 = load i64, i64* %35, align 8
  %37 = and i64 %36, -2
  store i64 %37, i64* %5, align 8
  %38 = call i32 (...) @smp_mb()
  %39 = load %struct.rxrpc_call*, %struct.rxrpc_call** %2, align 8
  %40 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = add nsw i32 %41, 1
  %43 = load i32, i32* %7, align 4
  %44 = sub nsw i32 %43, 1
  %45 = and i32 %42, %44
  %46 = load %struct.rxrpc_call*, %struct.rxrpc_call** %2, align 8
  %47 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 8
  %48 = load i64, i64* %5, align 8
  %49 = inttoptr i64 %48 to %struct.sk_buff*
  store %struct.sk_buff* %49, %struct.sk_buff** %4, align 8
  %50 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %51 = call %struct.rxrpc_skb_priv* @rxrpc_skb(%struct.sk_buff* %50)
  store %struct.rxrpc_skb_priv* %51, %struct.rxrpc_skb_priv** %3, align 8
  %52 = load %struct.rxrpc_skb_priv*, %struct.rxrpc_skb_priv** %3, align 8
  %53 = getelementptr inbounds %struct.rxrpc_skb_priv, %struct.rxrpc_skb_priv* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @ntohl(i32 %55)
  %57 = call i32 @_debug(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %56)
  %58 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %59 = call i32 @rxrpc_free_skb(%struct.sk_buff* %58)
  br label %17

60:                                               ; preds = %17
  %61 = load i64*, i64** %6, align 8
  %62 = call i32 @kfree(i64* %61)
  ret void
}

declare dso_local i64 @CIRC_CNT(i32, i32, i32) #1

declare dso_local i32 @smp_read_barrier_depends(...) #1

declare dso_local i32 @smp_mb(...) #1

declare dso_local %struct.rxrpc_skb_priv* @rxrpc_skb(%struct.sk_buff*) #1

declare dso_local i32 @_debug(i8*, i32) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @rxrpc_free_skb(%struct.sk_buff*) #1

declare dso_local i32 @kfree(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
