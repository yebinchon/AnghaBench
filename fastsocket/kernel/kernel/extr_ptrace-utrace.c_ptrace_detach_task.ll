; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_ptrace-utrace.c_ptrace_detach_task.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_ptrace-utrace.c_ptrace_detach_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }
%struct.utrace_engine = type { i32 }
%struct.ptrace_context = type { i32, i32, i32, i64 }

@UTRACE_DETACH = common dso_local global i32 0, align 4
@UTRACE_RESUME = common dso_local global i32 0, align 4
@SEND_SIG_PRIV = common dso_local global i32 0, align 4
@PTRACE_O_DETACHED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.task_struct*, i32)* @ptrace_detach_task to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ptrace_detach_task(%struct.task_struct* %0, i32 %1) #0 {
  %3 = alloca %struct.task_struct*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.utrace_engine*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ptrace_context*, align 8
  %9 = alloca i32, align 4
  store %struct.task_struct* %0, %struct.task_struct** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp sge i32 %10, 0
  %12 = zext i1 %11 to i32
  store i32 %12, i32* %5, align 4
  %13 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %14 = call %struct.utrace_engine* @ptrace_lookup_engine(%struct.task_struct* %13)
  store %struct.utrace_engine* %14, %struct.utrace_engine** %6, align 8
  %15 = load i32, i32* @UTRACE_DETACH, align 4
  store i32 %15, i32* %7, align 4
  %16 = load %struct.utrace_engine*, %struct.utrace_engine** %6, align 8
  %17 = call i32 @IS_ERR(%struct.utrace_engine* %16)
  %18 = call i64 @unlikely(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  br label %80

21:                                               ; preds = %2
  %22 = load %struct.utrace_engine*, %struct.utrace_engine** %6, align 8
  %23 = call %struct.ptrace_context* @ptrace_context(%struct.utrace_engine* %22)
  store %struct.ptrace_context* %23, %struct.ptrace_context** %8, align 8
  %24 = load i32, i32* %5, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %43, label %26

26:                                               ; preds = %21
  %27 = load i32, i32* @UTRACE_DETACH, align 4
  %28 = load %struct.ptrace_context*, %struct.ptrace_context** %8, align 8
  %29 = getelementptr inbounds %struct.ptrace_context, %struct.ptrace_context* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  %30 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %31 = load %struct.utrace_engine*, %struct.utrace_engine** %6, align 8
  %32 = call i32 @utrace_barrier_uninterruptible(%struct.task_struct* %30, %struct.utrace_engine* %31)
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %42, label %35

35:                                               ; preds = %26
  %36 = load %struct.ptrace_context*, %struct.ptrace_context** %8, align 8
  %37 = getelementptr inbounds %struct.ptrace_context, %struct.ptrace_context* %36, i32 0, i32 3
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = load i32, i32* @UTRACE_RESUME, align 4
  store i32 %41, i32* %7, align 4
  br label %42

42:                                               ; preds = %40, %35, %26
  br label %64

43:                                               ; preds = %21
  %44 = load i32, i32* %4, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %63

46:                                               ; preds = %43
  %47 = load %struct.ptrace_context*, %struct.ptrace_context** %8, align 8
  %48 = call i32 @get_stop_event(%struct.ptrace_context* %47)
  switch i32 %48, label %62 [
    i32 128, label %49
    i32 129, label %54
  ]

49:                                               ; preds = %46
  %50 = load i32, i32* %4, align 4
  %51 = load i32, i32* @SEND_SIG_PRIV, align 4
  %52 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %53 = call i32 @send_sig_info(i32 %50, i32 %51, %struct.task_struct* %52)
  br label %62

54:                                               ; preds = %46
  %55 = load i32, i32* %4, align 4
  %56 = load %struct.ptrace_context*, %struct.ptrace_context** %8, align 8
  %57 = getelementptr inbounds %struct.ptrace_context, %struct.ptrace_context* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 4
  %58 = load i32, i32* @UTRACE_DETACH, align 4
  %59 = load %struct.ptrace_context*, %struct.ptrace_context** %8, align 8
  %60 = getelementptr inbounds %struct.ptrace_context, %struct.ptrace_context* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 8
  %61 = load i32, i32* @UTRACE_RESUME, align 4
  store i32 %61, i32* %7, align 4
  br label %62

62:                                               ; preds = %46, %54, %49
  br label %63

63:                                               ; preds = %62, %43
  br label %64

64:                                               ; preds = %63, %42
  %65 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %66 = load %struct.utrace_engine*, %struct.utrace_engine** %6, align 8
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* %5, align 4
  %69 = call i32 @ptrace_wake_up(%struct.task_struct* %65, %struct.utrace_engine* %66, i32 %67, i32 %68)
  %70 = load i32, i32* %7, align 4
  %71 = load i32, i32* @UTRACE_DETACH, align 4
  %72 = icmp ne i32 %70, %71
  br i1 %72, label %73, label %77

73:                                               ; preds = %64
  %74 = load i32, i32* @PTRACE_O_DETACHED, align 4
  %75 = load %struct.ptrace_context*, %struct.ptrace_context** %8, align 8
  %76 = getelementptr inbounds %struct.ptrace_context, %struct.ptrace_context* %75, i32 0, i32 2
  store i32 %74, i32* %76, align 8
  br label %77

77:                                               ; preds = %73, %64
  %78 = load %struct.utrace_engine*, %struct.utrace_engine** %6, align 8
  %79 = call i32 @utrace_engine_put(%struct.utrace_engine* %78)
  br label %80

80:                                               ; preds = %77, %20
  ret void
}

declare dso_local %struct.utrace_engine* @ptrace_lookup_engine(%struct.task_struct*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @IS_ERR(%struct.utrace_engine*) #1

declare dso_local %struct.ptrace_context* @ptrace_context(%struct.utrace_engine*) #1

declare dso_local i32 @utrace_barrier_uninterruptible(%struct.task_struct*, %struct.utrace_engine*) #1

declare dso_local i32 @get_stop_event(%struct.ptrace_context*) #1

declare dso_local i32 @send_sig_info(i32, i32, %struct.task_struct*) #1

declare dso_local i32 @ptrace_wake_up(%struct.task_struct*, %struct.utrace_engine*, i32, i32) #1

declare dso_local i32 @utrace_engine_put(%struct.utrace_engine*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
