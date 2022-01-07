; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_utrace.c_finish_report.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_utrace.c_finish_report.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }
%struct.utrace = type { i32, i32 }
%struct.utrace_report = type { i32 }

@UTRACE_STOP = common dso_local global i32 0, align 4
@UTRACE_REPORT = common dso_local global i32 0, align 4
@UTRACE_RESUME = common dso_local global i32 0, align 4
@UTRACE_INTERRUPT = common dso_local global i32 0, align 4
@TIF_SIGPENDING = common dso_local global i32 0, align 4
@TIF_NOTIFY_RESUME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.task_struct*, %struct.utrace*, %struct.utrace_report*, i32)* @finish_report to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @finish_report(%struct.task_struct* %0, %struct.utrace* %1, %struct.utrace_report* %2, i32 %3) #0 {
  %5 = alloca %struct.task_struct*, align 8
  %6 = alloca %struct.utrace*, align 8
  %7 = alloca %struct.utrace_report*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.task_struct* %0, %struct.task_struct** %5, align 8
  store %struct.utrace* %1, %struct.utrace** %6, align 8
  store %struct.utrace_report* %2, %struct.utrace_report** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load %struct.utrace_report*, %struct.utrace_report** %7, align 8
  %11 = getelementptr inbounds %struct.utrace_report, %struct.utrace_report* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  %14 = load i32, i32* @UTRACE_STOP, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %25

16:                                               ; preds = %4
  %17 = load i32, i32* %8, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = load i32, i32* @UTRACE_REPORT, align 4
  br label %23

21:                                               ; preds = %16
  %22 = load i32, i32* @UTRACE_RESUME, align 4
  br label %23

23:                                               ; preds = %21, %19
  %24 = phi i32 [ %20, %19 ], [ %22, %21 ]
  store i32 %24, i32* %9, align 4
  br label %25

25:                                               ; preds = %23, %4
  %26 = load i32, i32* %9, align 4
  %27 = load %struct.utrace*, %struct.utrace** %6, align 8
  %28 = getelementptr inbounds %struct.utrace, %struct.utrace* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp ult i32 %26, %29
  br i1 %30, label %31, label %53

31:                                               ; preds = %25
  %32 = load %struct.utrace*, %struct.utrace** %6, align 8
  %33 = getelementptr inbounds %struct.utrace, %struct.utrace* %32, i32 0, i32 1
  %34 = call i32 @spin_lock(i32* %33)
  %35 = load i32, i32* %9, align 4
  %36 = load %struct.utrace*, %struct.utrace** %6, align 8
  %37 = getelementptr inbounds %struct.utrace, %struct.utrace* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* @UTRACE_INTERRUPT, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %31
  %42 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %43 = load i32, i32* @TIF_SIGPENDING, align 4
  %44 = call i32 @set_tsk_thread_flag(%struct.task_struct* %42, i32 %43)
  br label %49

45:                                               ; preds = %31
  %46 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %47 = load i32, i32* @TIF_NOTIFY_RESUME, align 4
  %48 = call i32 @set_tsk_thread_flag(%struct.task_struct* %46, i32 %47)
  br label %49

49:                                               ; preds = %45, %41
  %50 = load %struct.utrace*, %struct.utrace** %6, align 8
  %51 = getelementptr inbounds %struct.utrace, %struct.utrace* %50, i32 0, i32 1
  %52 = call i32 @spin_unlock(i32* %51)
  br label %53

53:                                               ; preds = %49, %25
  %54 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %55 = load %struct.utrace*, %struct.utrace** %6, align 8
  %56 = load %struct.utrace_report*, %struct.utrace_report** %7, align 8
  %57 = call i32 @finish_report_reset(%struct.task_struct* %54, %struct.utrace* %55, %struct.utrace_report* %56)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @set_tsk_thread_flag(%struct.task_struct*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @finish_report_reset(%struct.task_struct*, %struct.utrace*, %struct.utrace_report*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
