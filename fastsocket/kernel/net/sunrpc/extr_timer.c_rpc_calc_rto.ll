; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_timer.c_rpc_calc_rto.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_timer.c_rpc_calc_rto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_rtt = type { i64, i32*, i32* }

@RPC_RTO_MAX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @rpc_calc_rto(%struct.rpc_rtt* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.rpc_rtt*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.rpc_rtt* %0, %struct.rpc_rtt** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = add i32 %7, -1
  store i32 %8, i32* %5, align 4
  %9 = icmp eq i32 %7, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = load %struct.rpc_rtt*, %struct.rpc_rtt** %4, align 8
  %12 = getelementptr inbounds %struct.rpc_rtt, %struct.rpc_rtt* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %3, align 8
  br label %40

14:                                               ; preds = %2
  %15 = load %struct.rpc_rtt*, %struct.rpc_rtt** %4, align 8
  %16 = getelementptr inbounds %struct.rpc_rtt, %struct.rpc_rtt* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  %18 = load i32, i32* %5, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = add nsw i32 %21, 7
  %23 = ashr i32 %22, 3
  %24 = load %struct.rpc_rtt*, %struct.rpc_rtt** %4, align 8
  %25 = getelementptr inbounds %struct.rpc_rtt, %struct.rpc_rtt* %24, i32 0, i32 2
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %5, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = add nsw i32 %23, %30
  %32 = sext i32 %31 to i64
  store i64 %32, i64* %6, align 8
  %33 = load i64, i64* %6, align 8
  %34 = load i64, i64* @RPC_RTO_MAX, align 8
  %35 = icmp ugt i64 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %14
  %37 = load i64, i64* @RPC_RTO_MAX, align 8
  store i64 %37, i64* %6, align 8
  br label %38

38:                                               ; preds = %36, %14
  %39 = load i64, i64* %6, align 8
  store i64 %39, i64* %3, align 8
  br label %40

40:                                               ; preds = %38, %10
  %41 = load i64, i64* %3, align 8
  ret i64 %41
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
