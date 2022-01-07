; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_xprt.c_xprt_update_rtt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_xprt.c_xprt_update_rtt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_task = type { %struct.TYPE_6__, %struct.TYPE_4__*, %struct.rpc_rqst* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { %struct.rpc_rtt* }
%struct.rpc_rtt = type { i32 }
%struct.rpc_rqst = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rpc_task*)* @xprt_update_rtt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xprt_update_rtt(%struct.rpc_task* %0) #0 {
  %2 = alloca %struct.rpc_task*, align 8
  %3 = alloca %struct.rpc_rqst*, align 8
  %4 = alloca %struct.rpc_rtt*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.rpc_task* %0, %struct.rpc_task** %2, align 8
  %7 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %8 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %7, i32 0, i32 2
  %9 = load %struct.rpc_rqst*, %struct.rpc_rqst** %8, align 8
  store %struct.rpc_rqst* %9, %struct.rpc_rqst** %3, align 8
  %10 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %11 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %10, i32 0, i32 1
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.rpc_rtt*, %struct.rpc_rtt** %13, align 8
  store %struct.rpc_rtt* %14, %struct.rpc_rtt** %4, align 8
  %15 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %16 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %5, align 4
  %21 = load %struct.rpc_rqst*, %struct.rpc_rqst** %3, align 8
  %22 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @ktime_to_us(i32 %23)
  %25 = call i64 @usecs_to_jiffies(i32 %24)
  store i64 %25, i64* %6, align 8
  %26 = load i32, i32* %5, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %46

28:                                               ; preds = %1
  %29 = load %struct.rpc_rqst*, %struct.rpc_rqst** %3, align 8
  %30 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp eq i32 %31, 1
  br i1 %32, label %33, label %38

33:                                               ; preds = %28
  %34 = load %struct.rpc_rtt*, %struct.rpc_rtt** %4, align 8
  %35 = load i32, i32* %5, align 4
  %36 = load i64, i64* %6, align 8
  %37 = call i32 @rpc_update_rtt(%struct.rpc_rtt* %34, i32 %35, i64 %36)
  br label %38

38:                                               ; preds = %33, %28
  %39 = load %struct.rpc_rtt*, %struct.rpc_rtt** %4, align 8
  %40 = load i32, i32* %5, align 4
  %41 = load %struct.rpc_rqst*, %struct.rpc_rqst** %3, align 8
  %42 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = sub nsw i32 %43, 1
  %45 = call i32 @rpc_set_timeo(%struct.rpc_rtt* %39, i32 %40, i32 %44)
  br label %46

46:                                               ; preds = %38, %1
  ret void
}

declare dso_local i64 @usecs_to_jiffies(i32) #1

declare dso_local i32 @ktime_to_us(i32) #1

declare dso_local i32 @rpc_update_rtt(%struct.rpc_rtt*, i32, i64) #1

declare dso_local i32 @rpc_set_timeo(%struct.rpc_rtt*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
