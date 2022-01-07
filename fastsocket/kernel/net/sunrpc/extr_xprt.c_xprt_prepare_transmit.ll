; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_xprt.c_xprt_prepare_transmit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_xprt.c_xprt_prepare_transmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_task = type { i32, %struct.rpc_rqst* }
%struct.rpc_rqst = type { i32, i32, %struct.rpc_xprt* }
%struct.rpc_xprt = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.rpc_xprt*, %struct.rpc_task*)* }

@.str = private unnamed_addr constant [32 x i8] c"RPC: %5u xprt_prepare_transmit\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xprt_prepare_transmit(%struct.rpc_task* %0) #0 {
  %2 = alloca %struct.rpc_task*, align 8
  %3 = alloca %struct.rpc_rqst*, align 8
  %4 = alloca %struct.rpc_xprt*, align 8
  %5 = alloca i32, align 4
  store %struct.rpc_task* %0, %struct.rpc_task** %2, align 8
  %6 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %7 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %6, i32 0, i32 1
  %8 = load %struct.rpc_rqst*, %struct.rpc_rqst** %7, align 8
  store %struct.rpc_rqst* %8, %struct.rpc_rqst** %3, align 8
  %9 = load %struct.rpc_rqst*, %struct.rpc_rqst** %3, align 8
  %10 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %9, i32 0, i32 2
  %11 = load %struct.rpc_xprt*, %struct.rpc_xprt** %10, align 8
  store %struct.rpc_xprt* %11, %struct.rpc_xprt** %4, align 8
  store i32 0, i32* %5, align 4
  %12 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %13 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @dprintk(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load %struct.rpc_xprt*, %struct.rpc_xprt** %4, align 8
  %17 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %16, i32 0, i32 0
  %18 = call i32 @spin_lock_bh(i32* %17)
  %19 = load %struct.rpc_rqst*, %struct.rpc_rqst** %3, align 8
  %20 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %1
  %24 = load %struct.rpc_rqst*, %struct.rpc_rqst** %3, align 8
  %25 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %23
  %29 = load %struct.rpc_rqst*, %struct.rpc_rqst** %3, align 8
  %30 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %5, align 4
  br label %46

32:                                               ; preds = %23, %1
  %33 = load %struct.rpc_xprt*, %struct.rpc_xprt** %4, align 8
  %34 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %33, i32 0, i32 1
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32 (%struct.rpc_xprt*, %struct.rpc_task*)*, i32 (%struct.rpc_xprt*, %struct.rpc_task*)** %36, align 8
  %38 = load %struct.rpc_xprt*, %struct.rpc_xprt** %4, align 8
  %39 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %40 = call i32 %37(%struct.rpc_xprt* %38, %struct.rpc_task* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %32
  %43 = load i32, i32* @EAGAIN, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %5, align 4
  br label %45

45:                                               ; preds = %42, %32
  br label %46

46:                                               ; preds = %45, %28
  %47 = load %struct.rpc_xprt*, %struct.rpc_xprt** %4, align 8
  %48 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %47, i32 0, i32 0
  %49 = call i32 @spin_unlock_bh(i32* %48)
  %50 = load i32, i32* %5, align 4
  ret i32 %50
}

declare dso_local i32 @dprintk(i8*, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
