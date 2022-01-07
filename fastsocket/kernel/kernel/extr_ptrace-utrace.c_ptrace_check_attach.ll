; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_ptrace-utrace.c_ptrace_check_attach.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_ptrace-utrace.c_ptrace_check_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i64 }
%struct.utrace_engine = type { i32 }
%struct.utrace_examiner = type { i32 }

@ESRCH = common dso_local global i32 0, align 4
@current = common dso_local global i64 0, align 8
@UTRACE_STOP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ptrace_check_attach(%struct.task_struct* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.task_struct*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.utrace_engine*, align 8
  %7 = alloca %struct.utrace_examiner, align 4
  %8 = alloca i32, align 4
  store %struct.task_struct* %0, %struct.task_struct** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* @ESRCH, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %8, align 4
  %11 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %12 = call %struct.utrace_engine* @ptrace_lookup_engine(%struct.task_struct* %11)
  store %struct.utrace_engine* %12, %struct.utrace_engine** %6, align 8
  %13 = load %struct.utrace_engine*, %struct.utrace_engine** %6, align 8
  %14 = call i64 @IS_ERR(%struct.utrace_engine* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* %8, align 4
  store i32 %17, i32* %3, align 4
  br label %57

18:                                               ; preds = %2
  %19 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %20 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @current, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  br label %53

25:                                               ; preds = %18
  %26 = load i32, i32* %5, align 4
  %27 = call i64 @unlikely(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  store i32 0, i32* %8, align 4
  br label %30

30:                                               ; preds = %29, %25
  %31 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %32 = call i32 @task_is_stopped_or_traced(%struct.task_struct* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %30
  br label %53

35:                                               ; preds = %30
  %36 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %37 = call i32 @utrace_freeze_stop(%struct.task_struct* %36)
  %38 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %39 = load %struct.utrace_engine*, %struct.utrace_engine** %6, align 8
  %40 = load i32, i32* @UTRACE_STOP, align 4
  %41 = call i32 @utrace_control(%struct.task_struct* %38, %struct.utrace_engine* %39, i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %49, label %43

43:                                               ; preds = %35
  %44 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %45 = load %struct.utrace_engine*, %struct.utrace_engine** %6, align 8
  %46 = call i32 @utrace_prepare_examine(%struct.task_struct* %44, %struct.utrace_engine* %45, %struct.utrace_examiner* %7)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %43
  store i32 0, i32* %8, align 4
  br label %52

49:                                               ; preds = %43, %35
  %50 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %51 = call i32 @utrace_unfreeze_stop(%struct.task_struct* %50)
  br label %52

52:                                               ; preds = %49, %48
  br label %53

53:                                               ; preds = %52, %34, %24
  %54 = load %struct.utrace_engine*, %struct.utrace_engine** %6, align 8
  %55 = call i32 @utrace_engine_put(%struct.utrace_engine* %54)
  %56 = load i32, i32* %8, align 4
  store i32 %56, i32* %3, align 4
  br label %57

57:                                               ; preds = %53, %16
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local %struct.utrace_engine* @ptrace_lookup_engine(%struct.task_struct*) #1

declare dso_local i64 @IS_ERR(%struct.utrace_engine*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @task_is_stopped_or_traced(%struct.task_struct*) #1

declare dso_local i32 @utrace_freeze_stop(%struct.task_struct*) #1

declare dso_local i32 @utrace_control(%struct.task_struct*, %struct.utrace_engine*, i32) #1

declare dso_local i32 @utrace_prepare_examine(%struct.task_struct*, %struct.utrace_engine*, %struct.utrace_examiner*) #1

declare dso_local i32 @utrace_unfreeze_stop(%struct.task_struct*) #1

declare dso_local i32 @utrace_engine_put(%struct.utrace_engine*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
