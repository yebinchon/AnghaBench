; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/octeon/extr_cvmx-cmd-queue.c_cvmx_cmd_queue_shutdown.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/octeon/extr_cvmx-cmd-queue.c_cvmx_cmd_queue_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32 }

@.str = private unnamed_addr constant [66 x i8] c"ERROR: cvmx_cmd_queue_shutdown: Unable to get queue information.\0A\00", align 1
@CVMX_CMD_QUEUE_INVALID_PARAM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [61 x i8] c"ERROR: cvmx_cmd_queue_shutdown: Queue still has data in it.\0A\00", align 1
@CVMX_CMD_QUEUE_FULL = common dso_local global i32 0, align 4
@CVMX_CMD_QUEUE_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cvmx_cmd_queue_shutdown(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call %struct.TYPE_5__* @__cvmx_cmd_queue_get_state(i32 %5)
  store %struct.TYPE_5__* %6, %struct.TYPE_5__** %4, align 8
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %8 = icmp eq %struct.TYPE_5__* %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = call i32 @cvmx_dprintf(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0))
  %11 = load i32, i32* @CVMX_CMD_QUEUE_INVALID_PARAM, align 4
  store i32 %11, i32* %2, align 4
  br label %44

12:                                               ; preds = %1
  %13 = load i32, i32* %3, align 4
  %14 = call i64 @cvmx_cmd_queue_length(i32 %13)
  %15 = icmp sgt i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = call i32 @cvmx_dprintf(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0))
  %18 = load i32, i32* @CVMX_CMD_QUEUE_FULL, align 4
  store i32 %18, i32* %2, align 4
  br label %44

19:                                               ; preds = %12
  %20 = load i32, i32* %3, align 4
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %22 = call i32 @__cvmx_cmd_queue_lock(i32 %20, %struct.TYPE_5__* %21)
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %40

27:                                               ; preds = %19
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = trunc i64 %30 to i32
  %32 = shl i32 %31, 7
  %33 = call i32 @cvmx_phys_to_ptr(i32 %32)
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @cvmx_fpa_free(i32 %33, i32 %36, i32 0)
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  store i64 0, i64* %39, align 8
  br label %40

40:                                               ; preds = %27, %19
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %42 = call i32 @__cvmx_cmd_queue_unlock(%struct.TYPE_5__* %41)
  %43 = load i32, i32* @CVMX_CMD_QUEUE_SUCCESS, align 4
  store i32 %43, i32* %2, align 4
  br label %44

44:                                               ; preds = %40, %16, %9
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local %struct.TYPE_5__* @__cvmx_cmd_queue_get_state(i32) #1

declare dso_local i32 @cvmx_dprintf(i8*) #1

declare dso_local i64 @cvmx_cmd_queue_length(i32) #1

declare dso_local i32 @__cvmx_cmd_queue_lock(i32, %struct.TYPE_5__*) #1

declare dso_local i32 @cvmx_fpa_free(i32, i32, i32) #1

declare dso_local i32 @cvmx_phys_to_ptr(i32) #1

declare dso_local i32 @__cvmx_cmd_queue_unlock(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
