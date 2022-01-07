; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_utrace.c_finish_resume_report.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_utrace.c_finish_resume_report.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }
%struct.utrace = type { i32 }
%struct.utrace_report = type { i32, i32 }

@TIF_SIGPENDING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"UTRACE_BLOCKSTEP when !arch_has_block_step()\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"UTRACE_SINGLESTEP when !arch_has_single_step()\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.task_struct*, %struct.utrace*, %struct.utrace_report*)* @finish_resume_report to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @finish_resume_report(%struct.task_struct* %0, %struct.utrace* %1, %struct.utrace_report* %2) #0 {
  %4 = alloca %struct.task_struct*, align 8
  %5 = alloca %struct.utrace*, align 8
  %6 = alloca %struct.utrace_report*, align 8
  store %struct.task_struct* %0, %struct.task_struct** %4, align 8
  store %struct.utrace* %1, %struct.utrace** %5, align 8
  store %struct.utrace_report* %2, %struct.utrace_report** %6, align 8
  %7 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %8 = load %struct.utrace*, %struct.utrace** %5, align 8
  %9 = load %struct.utrace_report*, %struct.utrace_report** %6, align 8
  %10 = call i32 @finish_report_reset(%struct.task_struct* %7, %struct.utrace* %8, %struct.utrace_report* %9)
  %11 = load %struct.utrace_report*, %struct.utrace_report** %6, align 8
  %12 = getelementptr inbounds %struct.utrace_report, %struct.utrace_report* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %50 [
    i32 128, label %14
    i32 132, label %21
    i32 133, label %30
    i32 129, label %39
    i32 131, label %49
    i32 130, label %49
  ]

14:                                               ; preds = %3
  %15 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %16 = load %struct.utrace*, %struct.utrace** %5, align 8
  %17 = load %struct.utrace_report*, %struct.utrace_report** %6, align 8
  %18 = getelementptr inbounds %struct.utrace_report, %struct.utrace_report* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @utrace_stop(%struct.task_struct* %15, %struct.utrace* %16, i32 %19)
  br label %53

21:                                               ; preds = %3
  %22 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %23 = call i32 @signal_pending(%struct.task_struct* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %21
  %26 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %27 = load i32, i32* @TIF_SIGPENDING, align 4
  %28 = call i32 @set_tsk_thread_flag(%struct.task_struct* %26, i32 %27)
  br label %29

29:                                               ; preds = %25, %21
  br label %53

30:                                               ; preds = %3
  %31 = call i32 (...) @arch_has_block_step()
  %32 = call i32 @likely(i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %36 = call i32 @user_enable_block_step(%struct.task_struct* %35)
  br label %53

37:                                               ; preds = %30
  %38 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  br label %39

39:                                               ; preds = %3, %37
  %40 = call i32 (...) @arch_has_single_step()
  %41 = call i32 @likely(i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %39
  %44 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %45 = call i32 @user_enable_single_step(%struct.task_struct* %44)
  br label %48

46:                                               ; preds = %39
  %47 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  br label %48

48:                                               ; preds = %46, %43
  br label %53

49:                                               ; preds = %3, %3
  br label %50

50:                                               ; preds = %3, %49
  %51 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %52 = call i32 @user_disable_single_step(%struct.task_struct* %51)
  br label %53

53:                                               ; preds = %50, %48, %34, %29, %14
  ret void
}

declare dso_local i32 @finish_report_reset(%struct.task_struct*, %struct.utrace*, %struct.utrace_report*) #1

declare dso_local i32 @utrace_stop(%struct.task_struct*, %struct.utrace*, i32) #1

declare dso_local i32 @signal_pending(%struct.task_struct*) #1

declare dso_local i32 @set_tsk_thread_flag(%struct.task_struct*, i32) #1

declare dso_local i32 @likely(i32) #1

declare dso_local i32 @arch_has_block_step(...) #1

declare dso_local i32 @user_enable_block_step(%struct.task_struct*) #1

declare dso_local i32 @WARN(i32, i8*) #1

declare dso_local i32 @arch_has_single_step(...) #1

declare dso_local i32 @user_enable_single_step(%struct.task_struct*) #1

declare dso_local i32 @user_disable_single_step(%struct.task_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
