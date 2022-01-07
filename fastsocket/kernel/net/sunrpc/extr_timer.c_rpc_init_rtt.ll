; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_timer.c_rpc_init_rtt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_timer.c_rpc_init_rtt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_rtt = type { i64, i64*, i64*, i64* }

@RPC_RTO_INIT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rpc_init_rtt(%struct.rpc_rtt* %0, i64 %1) #0 {
  %3 = alloca %struct.rpc_rtt*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.rpc_rtt* %0, %struct.rpc_rtt** %3, align 8
  store i64 %1, i64* %4, align 8
  store i64 0, i64* %5, align 8
  %7 = load i64, i64* %4, align 8
  %8 = load %struct.rpc_rtt*, %struct.rpc_rtt** %3, align 8
  %9 = getelementptr inbounds %struct.rpc_rtt, %struct.rpc_rtt* %8, i32 0, i32 0
  store i64 %7, i64* %9, align 8
  %10 = load i64, i64* %4, align 8
  %11 = load i64, i64* @RPC_RTO_INIT, align 8
  %12 = icmp ugt i64 %10, %11
  br i1 %12, label %13, label %18

13:                                               ; preds = %2
  %14 = load i64, i64* %4, align 8
  %15 = load i64, i64* @RPC_RTO_INIT, align 8
  %16 = sub i64 %14, %15
  %17 = shl i64 %16, 3
  store i64 %17, i64* %5, align 8
  br label %18

18:                                               ; preds = %13, %2
  store i32 0, i32* %6, align 4
  br label %19

19:                                               ; preds = %43, %18
  %20 = load i32, i32* %6, align 4
  %21 = icmp ult i32 %20, 5
  br i1 %21, label %22, label %46

22:                                               ; preds = %19
  %23 = load i64, i64* %5, align 8
  %24 = load %struct.rpc_rtt*, %struct.rpc_rtt** %3, align 8
  %25 = getelementptr inbounds %struct.rpc_rtt, %struct.rpc_rtt* %24, i32 0, i32 1
  %26 = load i64*, i64** %25, align 8
  %27 = load i32, i32* %6, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds i64, i64* %26, i64 %28
  store i64 %23, i64* %29, align 8
  %30 = load i64, i64* @RPC_RTO_INIT, align 8
  %31 = load %struct.rpc_rtt*, %struct.rpc_rtt** %3, align 8
  %32 = getelementptr inbounds %struct.rpc_rtt, %struct.rpc_rtt* %31, i32 0, i32 2
  %33 = load i64*, i64** %32, align 8
  %34 = load i32, i32* %6, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds i64, i64* %33, i64 %35
  store i64 %30, i64* %36, align 8
  %37 = load %struct.rpc_rtt*, %struct.rpc_rtt** %3, align 8
  %38 = getelementptr inbounds %struct.rpc_rtt, %struct.rpc_rtt* %37, i32 0, i32 3
  %39 = load i64*, i64** %38, align 8
  %40 = load i32, i32* %6, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds i64, i64* %39, i64 %41
  store i64 0, i64* %42, align 8
  br label %43

43:                                               ; preds = %22
  %44 = load i32, i32* %6, align 4
  %45 = add i32 %44, 1
  store i32 %45, i32* %6, align 4
  br label %19

46:                                               ; preds = %19
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
