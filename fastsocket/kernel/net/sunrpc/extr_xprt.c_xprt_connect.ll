; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_xprt.c_xprt_connect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_xprt.c_xprt_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_task = type { %struct.TYPE_4__*, i32, i32, i32, %struct.rpc_xprt* }
%struct.TYPE_4__ = type { i32, i64 }
%struct.rpc_xprt = type { %struct.TYPE_6__*, %struct.TYPE_5__, i32, i32 }
%struct.TYPE_6__ = type { i32 (%struct.rpc_task*)*, i32 (%struct.rpc_xprt*)* }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [44 x i8] c"RPC: %5u xprt_connect xprt %p %s connected\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"is\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"is not\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@XPRT_CLOSE_WAIT = common dso_local global i32 0, align 4
@xprt_connect_status = common dso_local global i32 0, align 4
@XPRT_CLOSING = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xprt_connect(%struct.rpc_task* %0) #0 {
  %2 = alloca %struct.rpc_task*, align 8
  %3 = alloca %struct.rpc_xprt*, align 8
  store %struct.rpc_task* %0, %struct.rpc_task** %2, align 8
  %4 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %5 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %4, i32 0, i32 4
  %6 = load %struct.rpc_xprt*, %struct.rpc_xprt** %5, align 8
  store %struct.rpc_xprt* %6, %struct.rpc_xprt** %3, align 8
  %7 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %8 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.rpc_xprt*, %struct.rpc_xprt** %3, align 8
  %11 = load %struct.rpc_xprt*, %struct.rpc_xprt** %3, align 8
  %12 = call i64 @xprt_connected(%struct.rpc_xprt* %11)
  %13 = icmp ne i64 %12, 0
  %14 = zext i1 %13 to i64
  %15 = select i1 %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0)
  %16 = call i32 @dprintk(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %9, %struct.rpc_xprt* %10, i8* %15)
  %17 = load %struct.rpc_xprt*, %struct.rpc_xprt** %3, align 8
  %18 = call i32 @xprt_bound(%struct.rpc_xprt* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %1
  %21 = load i32, i32* @EAGAIN, align 4
  %22 = sub nsw i32 0, %21
  %23 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %24 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %23, i32 0, i32 2
  store i32 %22, i32* %24, align 4
  br label %99

25:                                               ; preds = %1
  %26 = load %struct.rpc_xprt*, %struct.rpc_xprt** %3, align 8
  %27 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %28 = call i32 @xprt_lock_write(%struct.rpc_xprt* %26, %struct.rpc_task* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %25
  br label %99

31:                                               ; preds = %25
  %32 = load i32, i32* @XPRT_CLOSE_WAIT, align 4
  %33 = load %struct.rpc_xprt*, %struct.rpc_xprt** %3, align 8
  %34 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %33, i32 0, i32 2
  %35 = call i64 @test_and_clear_bit(i32 %32, i32* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %31
  %38 = load %struct.rpc_xprt*, %struct.rpc_xprt** %3, align 8
  %39 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %38, i32 0, i32 0
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 1
  %42 = load i32 (%struct.rpc_xprt*)*, i32 (%struct.rpc_xprt*)** %41, align 8
  %43 = load %struct.rpc_xprt*, %struct.rpc_xprt** %3, align 8
  %44 = call i32 %42(%struct.rpc_xprt* %43)
  br label %45

45:                                               ; preds = %37, %31
  %46 = load %struct.rpc_xprt*, %struct.rpc_xprt** %3, align 8
  %47 = call i64 @xprt_connected(%struct.rpc_xprt* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %45
  %50 = load %struct.rpc_xprt*, %struct.rpc_xprt** %3, align 8
  %51 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %52 = call i32 @xprt_release_write(%struct.rpc_xprt* %50, %struct.rpc_task* %51)
  br label %99

53:                                               ; preds = %45
  %54 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %55 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %54, i32 0, i32 0
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = icmp ne %struct.TYPE_4__* %56, null
  br i1 %57, label %58, label %63

58:                                               ; preds = %53
  %59 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %60 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %59, i32 0, i32 0
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 1
  store i64 0, i64* %62, align 8
  br label %63

63:                                               ; preds = %58, %53
  %64 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %65 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %64, i32 0, i32 0
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %70 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 8
  %71 = load %struct.rpc_xprt*, %struct.rpc_xprt** %3, align 8
  %72 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %71, i32 0, i32 3
  %73 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %74 = load i32, i32* @xprt_connect_status, align 4
  %75 = call i32 @rpc_sleep_on(i32* %72, %struct.rpc_task* %73, i32 %74)
  %76 = load i32, i32* @XPRT_CLOSING, align 4
  %77 = load %struct.rpc_xprt*, %struct.rpc_xprt** %3, align 8
  %78 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %77, i32 0, i32 2
  %79 = call i64 @test_bit(i32 %76, i32* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %63
  br label %99

82:                                               ; preds = %63
  %83 = load %struct.rpc_xprt*, %struct.rpc_xprt** %3, align 8
  %84 = call i64 @xprt_test_and_set_connecting(%struct.rpc_xprt* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %82
  br label %99

87:                                               ; preds = %82
  %88 = load i32, i32* @jiffies, align 4
  %89 = load %struct.rpc_xprt*, %struct.rpc_xprt** %3, align 8
  %90 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 0
  store i32 %88, i32* %91, align 8
  %92 = load %struct.rpc_xprt*, %struct.rpc_xprt** %3, align 8
  %93 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %92, i32 0, i32 0
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 0
  %96 = load i32 (%struct.rpc_task*)*, i32 (%struct.rpc_task*)** %95, align 8
  %97 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %98 = call i32 %96(%struct.rpc_task* %97)
  br label %99

99:                                               ; preds = %20, %30, %81, %86, %87, %49
  ret void
}

declare dso_local i32 @dprintk(i8*, i32, %struct.rpc_xprt*, i8*) #1

declare dso_local i64 @xprt_connected(%struct.rpc_xprt*) #1

declare dso_local i32 @xprt_bound(%struct.rpc_xprt*) #1

declare dso_local i32 @xprt_lock_write(%struct.rpc_xprt*, %struct.rpc_task*) #1

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @xprt_release_write(%struct.rpc_xprt*, %struct.rpc_task*) #1

declare dso_local i32 @rpc_sleep_on(i32*, %struct.rpc_task*, i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i64 @xprt_test_and_set_connecting(%struct.rpc_xprt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
