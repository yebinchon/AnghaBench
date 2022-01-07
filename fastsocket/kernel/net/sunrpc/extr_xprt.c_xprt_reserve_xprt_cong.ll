; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_xprt.c_xprt_reserve_xprt_cong.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_xprt.c_xprt_reserve_xprt_cong.c"
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
define dso_local i32 @xprt_reserve_xprt_cong(%struct.rpc_xprt* %0, %struct.rpc_task* %1) #0 {
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
  br label %81

23:                                               ; preds = %16
  br label %49

24:                                               ; preds = %2
  %25 = load %struct.rpc_rqst*, %struct.rpc_rqst** %6, align 8
  %26 = icmp eq %struct.rpc_rqst* %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %24
  %28 = load %struct.rpc_task*, %struct.rpc_task** %5, align 8
  %29 = load %struct.rpc_xprt*, %struct.rpc_xprt** %4, align 8
  %30 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %29, i32 0, i32 1
  store %struct.rpc_task* %28, %struct.rpc_task** %30, align 8
  store i32 1, i32* %3, align 4
  br label %81

31:                                               ; preds = %24
  %32 = load %struct.rpc_xprt*, %struct.rpc_xprt** %4, align 8
  %33 = load %struct.rpc_task*, %struct.rpc_task** %5, align 8
  %34 = call i64 @__xprt_get_cong(%struct.rpc_xprt* %32, %struct.rpc_task* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %46

36:                                               ; preds = %31
  %37 = load %struct.rpc_task*, %struct.rpc_task** %5, align 8
  %38 = load %struct.rpc_xprt*, %struct.rpc_xprt** %4, align 8
  %39 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %38, i32 0, i32 1
  store %struct.rpc_task* %37, %struct.rpc_task** %39, align 8
  %40 = load %struct.rpc_rqst*, %struct.rpc_rqst** %6, align 8
  %41 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %40, i32 0, i32 1
  store i64 0, i64* %41, align 8
  %42 = load %struct.rpc_rqst*, %struct.rpc_rqst** %6, align 8
  %43 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %43, align 8
  store i32 1, i32* %3, align 4
  br label %81

46:                                               ; preds = %31
  %47 = load %struct.rpc_xprt*, %struct.rpc_xprt** %4, align 8
  %48 = call i32 @xprt_clear_locked(%struct.rpc_xprt* %47)
  br label %49

49:                                               ; preds = %46, %23
  %50 = load %struct.rpc_task*, %struct.rpc_task** %5, align 8
  %51 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.rpc_xprt*, %struct.rpc_xprt** %4, align 8
  %54 = call i32 @dprintk(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %52, %struct.rpc_xprt* %53)
  %55 = load %struct.rpc_task*, %struct.rpc_task** %5, align 8
  %56 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %55, i32 0, i32 1
  store i64 0, i64* %56, align 8
  %57 = load i32, i32* @EAGAIN, align 4
  %58 = sub nsw i32 0, %57
  %59 = load %struct.rpc_task*, %struct.rpc_task** %5, align 8
  %60 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 8
  %61 = load %struct.rpc_rqst*, %struct.rpc_rqst** %6, align 8
  %62 = icmp eq %struct.rpc_rqst* %61, null
  br i1 %62, label %63, label %65

63:                                               ; preds = %49
  %64 = load i32, i32* @RPC_PRIORITY_LOW, align 4
  store i32 %64, i32* %7, align 4
  br label %75

65:                                               ; preds = %49
  %66 = load %struct.rpc_rqst*, %struct.rpc_rqst** %6, align 8
  %67 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %72, label %70

70:                                               ; preds = %65
  %71 = load i32, i32* @RPC_PRIORITY_NORMAL, align 4
  store i32 %71, i32* %7, align 4
  br label %74

72:                                               ; preds = %65
  %73 = load i32, i32* @RPC_PRIORITY_HIGH, align 4
  store i32 %73, i32* %7, align 4
  br label %74

74:                                               ; preds = %72, %70
  br label %75

75:                                               ; preds = %74, %63
  %76 = load %struct.rpc_xprt*, %struct.rpc_xprt** %4, align 8
  %77 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %76, i32 0, i32 0
  %78 = load %struct.rpc_task*, %struct.rpc_task** %5, align 8
  %79 = load i32, i32* %7, align 4
  %80 = call i32 @rpc_sleep_on_priority(i32* %77, %struct.rpc_task* %78, i32* null, i32 %79)
  store i32 0, i32* %3, align 4
  br label %81

81:                                               ; preds = %75, %36, %27, %22
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i64 @__xprt_get_cong(%struct.rpc_xprt*, %struct.rpc_task*) #1

declare dso_local i32 @xprt_clear_locked(%struct.rpc_xprt*) #1

declare dso_local i32 @dprintk(i8*, i32, %struct.rpc_xprt*) #1

declare dso_local i32 @rpc_sleep_on_priority(i32*, %struct.rpc_task*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
