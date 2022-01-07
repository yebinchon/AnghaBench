; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_xprt.c_xprt_reserve_xprt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_xprt.c_xprt_reserve_xprt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_xprt = type { i32, %struct.rpc_task*, i32 }
%struct.rpc_task = type { i32, i64, i32, %struct.rpc_rqst* }
%struct.rpc_rqst = type { i32, i64 }

@XPRT_LOCKED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"RPC: %5u failed to lock transport %p\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@RPC_PRIORITY_LOW = common dso_local global i32 0, align 4
@RPC_PRIORITY_NORMAL = common dso_local global i32 0, align 4
@RPC_PRIORITY_HIGH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xprt_reserve_xprt(%struct.rpc_xprt* %0, %struct.rpc_task* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rpc_xprt*, align 8
  %5 = alloca %struct.rpc_task*, align 8
  %6 = alloca %struct.rpc_rqst*, align 8
  %7 = alloca i32, align 4
  store %struct.rpc_xprt* %0, %struct.rpc_xprt** %4, align 8
  store %struct.rpc_task* %1, %struct.rpc_task** %5, align 8
  %8 = load %struct.rpc_task*, %struct.rpc_task** %5, align 8
  %9 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %8, i32 0, i32 3
  %10 = load %struct.rpc_rqst*, %struct.rpc_rqst** %9, align 8
  store %struct.rpc_rqst* %10, %struct.rpc_rqst** %6, align 8
  %11 = load i32, i32* @XPRT_LOCKED, align 4
  %12 = load %struct.rpc_xprt*, %struct.rpc_xprt** %4, align 8
  %13 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %12, i32 0, i32 2
  %14 = call i64 @test_and_set_bit(i32 %11, i32* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %24

16:                                               ; preds = %2
  %17 = load %struct.rpc_task*, %struct.rpc_task** %5, align 8
  %18 = load %struct.rpc_xprt*, %struct.rpc_xprt** %4, align 8
  %19 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %18, i32 0, i32 1
  %20 = load %struct.rpc_task*, %struct.rpc_task** %19, align 8
  %21 = icmp eq %struct.rpc_task* %17, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  store i32 1, i32* %3, align 4
  br label %70

23:                                               ; preds = %16
  br label %38

24:                                               ; preds = %2
  %25 = load %struct.rpc_task*, %struct.rpc_task** %5, align 8
  %26 = load %struct.rpc_xprt*, %struct.rpc_xprt** %4, align 8
  %27 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %26, i32 0, i32 1
  store %struct.rpc_task* %25, %struct.rpc_task** %27, align 8
  %28 = load %struct.rpc_rqst*, %struct.rpc_rqst** %6, align 8
  %29 = icmp ne %struct.rpc_rqst* %28, null
  br i1 %29, label %30, label %37

30:                                               ; preds = %24
  %31 = load %struct.rpc_rqst*, %struct.rpc_rqst** %6, align 8
  %32 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %31, i32 0, i32 1
  store i64 0, i64* %32, align 8
  %33 = load %struct.rpc_rqst*, %struct.rpc_rqst** %6, align 8
  %34 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %34, align 8
  br label %37

37:                                               ; preds = %30, %24
  store i32 1, i32* %3, align 4
  br label %70

38:                                               ; preds = %23
  %39 = load %struct.rpc_task*, %struct.rpc_task** %5, align 8
  %40 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.rpc_xprt*, %struct.rpc_xprt** %4, align 8
  %43 = call i32 @dprintk(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %41, %struct.rpc_xprt* %42)
  %44 = load %struct.rpc_task*, %struct.rpc_task** %5, align 8
  %45 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %44, i32 0, i32 1
  store i64 0, i64* %45, align 8
  %46 = load i32, i32* @EAGAIN, align 4
  %47 = sub nsw i32 0, %46
  %48 = load %struct.rpc_task*, %struct.rpc_task** %5, align 8
  %49 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  %50 = load %struct.rpc_rqst*, %struct.rpc_rqst** %6, align 8
  %51 = icmp eq %struct.rpc_rqst* %50, null
  br i1 %51, label %52, label %54

52:                                               ; preds = %38
  %53 = load i32, i32* @RPC_PRIORITY_LOW, align 4
  store i32 %53, i32* %7, align 4
  br label %64

54:                                               ; preds = %38
  %55 = load %struct.rpc_rqst*, %struct.rpc_rqst** %6, align 8
  %56 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %61, label %59

59:                                               ; preds = %54
  %60 = load i32, i32* @RPC_PRIORITY_NORMAL, align 4
  store i32 %60, i32* %7, align 4
  br label %63

61:                                               ; preds = %54
  %62 = load i32, i32* @RPC_PRIORITY_HIGH, align 4
  store i32 %62, i32* %7, align 4
  br label %63

63:                                               ; preds = %61, %59
  br label %64

64:                                               ; preds = %63, %52
  %65 = load %struct.rpc_xprt*, %struct.rpc_xprt** %4, align 8
  %66 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %65, i32 0, i32 0
  %67 = load %struct.rpc_task*, %struct.rpc_task** %5, align 8
  %68 = load i32, i32* %7, align 4
  %69 = call i32 @rpc_sleep_on_priority(i32* %66, %struct.rpc_task* %67, i32* null, i32 %68)
  store i32 0, i32* %3, align 4
  br label %70

70:                                               ; preds = %64, %37, %22
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @dprintk(i8*, i32, %struct.rpc_xprt*) #1

declare dso_local i32 @rpc_sleep_on_priority(i32*, %struct.rpc_task*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
