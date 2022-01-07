; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_xprt.c_xprt_set_retrans_timeout_rtt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_xprt.c_xprt_set_retrans_timeout_rtt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_task = type { i64, %struct.rpc_rqst*, %struct.rpc_clnt*, %struct.TYPE_6__ }
%struct.rpc_rqst = type { i64 }
%struct.rpc_clnt = type { %struct.TYPE_4__*, %struct.rpc_rtt* }
%struct.TYPE_4__ = type { i64 }
%struct.rpc_rtt = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xprt_set_retrans_timeout_rtt(%struct.rpc_task* %0) #0 {
  %2 = alloca %struct.rpc_task*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.rpc_clnt*, align 8
  %5 = alloca %struct.rpc_rtt*, align 8
  %6 = alloca %struct.rpc_rqst*, align 8
  %7 = alloca i64, align 8
  store %struct.rpc_task* %0, %struct.rpc_task** %2, align 8
  %8 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %9 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %8, i32 0, i32 3
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %3, align 4
  %14 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %15 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %14, i32 0, i32 2
  %16 = load %struct.rpc_clnt*, %struct.rpc_clnt** %15, align 8
  store %struct.rpc_clnt* %16, %struct.rpc_clnt** %4, align 8
  %17 = load %struct.rpc_clnt*, %struct.rpc_clnt** %4, align 8
  %18 = getelementptr inbounds %struct.rpc_clnt, %struct.rpc_clnt* %17, i32 0, i32 1
  %19 = load %struct.rpc_rtt*, %struct.rpc_rtt** %18, align 8
  store %struct.rpc_rtt* %19, %struct.rpc_rtt** %5, align 8
  %20 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %21 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %20, i32 0, i32 1
  %22 = load %struct.rpc_rqst*, %struct.rpc_rqst** %21, align 8
  store %struct.rpc_rqst* %22, %struct.rpc_rqst** %6, align 8
  %23 = load %struct.rpc_clnt*, %struct.rpc_clnt** %4, align 8
  %24 = getelementptr inbounds %struct.rpc_clnt, %struct.rpc_clnt* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %7, align 8
  %28 = load %struct.rpc_rtt*, %struct.rpc_rtt** %5, align 8
  %29 = load i32, i32* %3, align 4
  %30 = call i64 @rpc_calc_rto(%struct.rpc_rtt* %28, i32 %29)
  %31 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %32 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %31, i32 0, i32 0
  store i64 %30, i64* %32, align 8
  %33 = load %struct.rpc_rtt*, %struct.rpc_rtt** %5, align 8
  %34 = load i32, i32* %3, align 4
  %35 = call i64 @rpc_ntimeo(%struct.rpc_rtt* %33, i32 %34)
  %36 = load %struct.rpc_rqst*, %struct.rpc_rqst** %6, align 8
  %37 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = add i64 %35, %38
  %40 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %41 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = shl i64 %42, %39
  store i64 %43, i64* %41, align 8
  %44 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %45 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* %7, align 8
  %48 = icmp ugt i64 %46, %47
  br i1 %48, label %54, label %49

49:                                               ; preds = %1
  %50 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %51 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %49, %1
  %55 = load i64, i64* %7, align 8
  %56 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %57 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %56, i32 0, i32 0
  store i64 %55, i64* %57, align 8
  br label %58

58:                                               ; preds = %54, %49
  ret void
}

declare dso_local i64 @rpc_calc_rto(%struct.rpc_rtt*, i32) #1

declare dso_local i64 @rpc_ntimeo(%struct.rpc_rtt*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
