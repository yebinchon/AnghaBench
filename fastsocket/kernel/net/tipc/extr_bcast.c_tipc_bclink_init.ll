; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_bcast.c_tipc_bclink_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_bcast.c_tipc_bclink_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_13__, %struct.TYPE_10__ }
%struct.TYPE_12__ = type { %struct.TYPE_10__*, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_13__ = type { i32, i32, i32, i32, %struct.TYPE_12__*, i32, %struct.TYPE_11__*, i32 }
%struct.TYPE_10__ = type { i32, i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@bcbearer = common dso_local global %struct.TYPE_14__* null, align 8
@bclink = common dso_local global %struct.TYPE_14__* null, align 8
@.str = private unnamed_addr constant [43 x i8] c"Multicast link creation failed, no memory\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@tipc_bcbearer_send = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"tipc-multicast\00", align 1
@bcl = common dso_local global %struct.TYPE_13__* null, align 8
@MAX_PKT_DEFAULT_MCAST = common dso_local global i32 0, align 4
@BCLINK_WIN_DEFAULT = common dso_local global i32 0, align 4
@WORKING_WORKING = common dso_local global i32 0, align 4
@tipc_bclink_name = common dso_local global i32 0, align 4
@TIPC_MAX_LINK_NAME = common dso_local global i32 0, align 4
@BCLINK_LOG_BUF_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tipc_bclink_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = load i32, i32* @GFP_ATOMIC, align 4
  %4 = call %struct.TYPE_14__* @kzalloc(i32 80, i32 %3)
  store %struct.TYPE_14__* %4, %struct.TYPE_14__** @bcbearer, align 8
  %5 = load i32, i32* @GFP_ATOMIC, align 4
  %6 = call %struct.TYPE_14__* @kzalloc(i32 80, i32 %5)
  store %struct.TYPE_14__* %6, %struct.TYPE_14__** @bclink, align 8
  %7 = load %struct.TYPE_14__*, %struct.TYPE_14__** @bcbearer, align 8
  %8 = icmp ne %struct.TYPE_14__* %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %0
  %10 = load %struct.TYPE_14__*, %struct.TYPE_14__** @bclink, align 8
  %11 = icmp ne %struct.TYPE_14__* %10, null
  br i1 %11, label %21, label %12

12:                                               ; preds = %9, %0
  br label %13

13:                                               ; preds = %82, %12
  %14 = call i32 @warn(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** @bcbearer, align 8
  %16 = call i32 @kfree(%struct.TYPE_14__* %15)
  store %struct.TYPE_14__* null, %struct.TYPE_14__** @bcbearer, align 8
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** @bclink, align 8
  %18 = call i32 @kfree(%struct.TYPE_14__* %17)
  store %struct.TYPE_14__* null, %struct.TYPE_14__** @bclink, align 8
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %1, align 4
  br label %90

21:                                               ; preds = %9
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** @bcbearer, align 8
  %23 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 1
  %25 = call i32 @INIT_LIST_HEAD(i32* %24)
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** @bcbearer, align 8
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 3
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** @bcbearer, align 8
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 0
  store %struct.TYPE_10__* %27, %struct.TYPE_10__** %30, align 8
  %31 = load i32, i32* @tipc_bcbearer_send, align 4
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** @bcbearer, align 8
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 3
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 1
  store i32 %31, i32* %34, align 4
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** @bcbearer, align 8
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 3
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @sprintf(i32 %38, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** @bclink, align 8
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 2
  store %struct.TYPE_13__* %41, %struct.TYPE_13__** @bcl, align 8
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** @bcl, align 8
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 7
  %44 = call i32 @INIT_LIST_HEAD(i32* %43)
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** @bcl, align 8
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i32 0, i32 0
  store i32 1, i32* %46, align 8
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** @bclink, align 8
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 0
  %50 = call i32 @spin_lock_init(i32* %49)
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** @bclink, align 8
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %51, i32 0, i32 1
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** @bcl, align 8
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 6
  store %struct.TYPE_11__* %52, %struct.TYPE_11__** %54, align 8
  %55 = load i32, i32* @MAX_PKT_DEFAULT_MCAST, align 4
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** @bcl, align 8
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 5
  store i32 %55, i32* %57, align 8
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** @bcl, align 8
  %59 = load i32, i32* @BCLINK_WIN_DEFAULT, align 4
  %60 = call i32 @tipc_link_set_queue_limits(%struct.TYPE_13__* %58, i32 %59)
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** @bcbearer, align 8
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** @bcl, align 8
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 4
  store %struct.TYPE_12__* %62, %struct.TYPE_12__** %64, align 8
  %65 = load i32, i32* @WORKING_WORKING, align 4
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** @bcl, align 8
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 3
  store i32 %65, i32* %67, align 4
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** @bcl, align 8
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @tipc_bclink_name, align 4
  %72 = load i32, i32* @TIPC_MAX_LINK_NAME, align 4
  %73 = call i32 @strlcpy(i32 %70, i32 %71, i32 %72)
  %74 = load i64, i64* @BCLINK_LOG_BUF_SIZE, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %89

76:                                               ; preds = %21
  %77 = load i64, i64* @BCLINK_LOG_BUF_SIZE, align 8
  %78 = load i32, i32* @GFP_ATOMIC, align 4
  %79 = call i8* @kmalloc(i64 %77, i32 %78)
  store i8* %79, i8** %2, align 8
  %80 = load i8*, i8** %2, align 8
  %81 = icmp ne i8* %80, null
  br i1 %81, label %83, label %82

82:                                               ; preds = %76
  br label %13

83:                                               ; preds = %76
  %84 = load %struct.TYPE_13__*, %struct.TYPE_13__** @bcl, align 8
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %84, i32 0, i32 1
  %86 = load i8*, i8** %2, align 8
  %87 = load i64, i64* @BCLINK_LOG_BUF_SIZE, align 8
  %88 = call i32 @tipc_printbuf_init(i32* %85, i8* %86, i64 %87)
  br label %89

89:                                               ; preds = %83, %21
  store i32 0, i32* %1, align 4
  br label %90

90:                                               ; preds = %89, %13
  %91 = load i32, i32* %1, align 4
  ret i32 %91
}

declare dso_local %struct.TYPE_14__* @kzalloc(i32, i32) #1

declare dso_local i32 @warn(i8*) #1

declare dso_local i32 @kfree(%struct.TYPE_14__*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @sprintf(i32, i8*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @tipc_link_set_queue_limits(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local i8* @kmalloc(i64, i32) #1

declare dso_local i32 @tipc_printbuf_init(i32*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
