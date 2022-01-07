; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_ptrace-utrace.c_ptrace_resume.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_ptrace-utrace.c_ptrace_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }
%struct.utrace_engine = type { i32 }
%struct.ptrace_context = type { i32, i64, i32 }

@EIO = common dso_local global i32 0, align 4
@PTRACE_O_TRACEVFORKDONE = common dso_local global i32 0, align 4
@UTRACE_REPORT = common dso_local global i32 0, align 4
@PTRACE_SYSCALL = common dso_local global i64 0, align 8
@UTRACE_RESUME = common dso_local global i32 0, align 4
@SIGTRAP = common dso_local global i64 0, align 8
@UTRACE_INTERRUPT = common dso_local global i32 0, align 4
@SEND_SIG_PRIV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.task_struct*, %struct.utrace_engine*, i64, i64)* @ptrace_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ptrace_resume(%struct.task_struct* %0, %struct.utrace_engine* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.task_struct*, align 8
  %7 = alloca %struct.utrace_engine*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.ptrace_context*, align 8
  %11 = alloca i32, align 4
  store %struct.task_struct* %0, %struct.task_struct** %6, align 8
  store %struct.utrace_engine* %1, %struct.utrace_engine** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load %struct.utrace_engine*, %struct.utrace_engine** %7, align 8
  %13 = call %struct.ptrace_context* @ptrace_context(%struct.utrace_engine* %12)
  store %struct.ptrace_context* %13, %struct.ptrace_context** %10, align 8
  %14 = load i64, i64* %9, align 8
  %15 = call i32 @valid_signal(i64 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %4
  %18 = load i32, i32* @EIO, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %5, align 4
  br label %85

20:                                               ; preds = %4
  %21 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %22 = load %struct.utrace_engine*, %struct.utrace_engine** %7, align 8
  %23 = load i64, i64* %8, align 8
  %24 = call i32 @ptrace_resume_action(%struct.task_struct* %21, %struct.utrace_engine* %22, i64 %23)
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %11, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %20
  %28 = load i32, i32* %11, align 4
  store i32 %28, i32* %5, align 4
  br label %85

29:                                               ; preds = %20
  %30 = load %struct.ptrace_context*, %struct.ptrace_context** %10, align 8
  %31 = call i32 @get_stop_event(%struct.ptrace_context* %30)
  switch i32 %31, label %77 [
    i32 129, label %32
    i32 133, label %44
    i32 132, label %44
    i32 134, label %44
    i32 128, label %44
    i32 130, label %64
    i32 131, label %73
  ]

32:                                               ; preds = %29
  %33 = load %struct.ptrace_context*, %struct.ptrace_context** %10, align 8
  %34 = getelementptr inbounds %struct.ptrace_context, %struct.ptrace_context* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @PTRACE_O_TRACEVFORKDONE, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %32
  %40 = load %struct.ptrace_context*, %struct.ptrace_context** %10, align 8
  %41 = call i32 @set_stop_code(%struct.ptrace_context* %40, i32 128)
  %42 = load i32, i32* @UTRACE_REPORT, align 4
  store i32 %42, i32* %11, align 4
  br label %43

43:                                               ; preds = %39, %32
  br label %77

44:                                               ; preds = %29, %29, %29, %29
  %45 = load i64, i64* %8, align 8
  %46 = load i64, i64* @PTRACE_SYSCALL, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %54

48:                                               ; preds = %44
  %49 = load %struct.ptrace_context*, %struct.ptrace_context** %10, align 8
  %50 = call i32 @set_syscall_code(%struct.ptrace_context* %49)
  %51 = load %struct.ptrace_context*, %struct.ptrace_context** %10, align 8
  %52 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %53 = call i32 @do_ptrace_notify_stop(%struct.ptrace_context* %51, %struct.task_struct* %52)
  store i32 0, i32* %5, align 4
  br label %85

54:                                               ; preds = %44
  %55 = load i32, i32* %11, align 4
  %56 = load i32, i32* @UTRACE_RESUME, align 4
  %57 = icmp ne i32 %55, %56
  br i1 %57, label %58, label %63

58:                                               ; preds = %54
  %59 = load i64, i64* @SIGTRAP, align 8
  %60 = load %struct.ptrace_context*, %struct.ptrace_context** %10, align 8
  %61 = getelementptr inbounds %struct.ptrace_context, %struct.ptrace_context* %60, i32 0, i32 1
  store i64 %59, i64* %61, align 8
  %62 = load i32, i32* @UTRACE_INTERRUPT, align 4
  store i32 %62, i32* %11, align 4
  br label %63

63:                                               ; preds = %58, %54
  br label %77

64:                                               ; preds = %29
  %65 = load i64, i64* %9, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %64
  %68 = load i64, i64* %9, align 8
  %69 = load i32, i32* @SEND_SIG_PRIV, align 4
  %70 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %71 = call i32 @send_sig_info(i64 %68, i32 %69, %struct.task_struct* %70)
  br label %72

72:                                               ; preds = %67, %64
  br label %77

73:                                               ; preds = %29
  %74 = load i64, i64* %9, align 8
  %75 = load %struct.ptrace_context*, %struct.ptrace_context** %10, align 8
  %76 = getelementptr inbounds %struct.ptrace_context, %struct.ptrace_context* %75, i32 0, i32 1
  store i64 %74, i64* %76, align 8
  br label %77

77:                                               ; preds = %29, %73, %72, %63, %43
  %78 = load i32, i32* %11, align 4
  %79 = load %struct.ptrace_context*, %struct.ptrace_context** %10, align 8
  %80 = getelementptr inbounds %struct.ptrace_context, %struct.ptrace_context* %79, i32 0, i32 2
  store i32 %78, i32* %80, align 8
  %81 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %82 = load %struct.utrace_engine*, %struct.utrace_engine** %7, align 8
  %83 = load i32, i32* %11, align 4
  %84 = call i32 @ptrace_wake_up(%struct.task_struct* %81, %struct.utrace_engine* %82, i32 %83, i32 1)
  store i32 0, i32* %5, align 4
  br label %85

85:                                               ; preds = %77, %48, %27, %17
  %86 = load i32, i32* %5, align 4
  ret i32 %86
}

declare dso_local %struct.ptrace_context* @ptrace_context(%struct.utrace_engine*) #1

declare dso_local i32 @valid_signal(i64) #1

declare dso_local i32 @ptrace_resume_action(%struct.task_struct*, %struct.utrace_engine*, i64) #1

declare dso_local i32 @get_stop_event(%struct.ptrace_context*) #1

declare dso_local i32 @set_stop_code(%struct.ptrace_context*, i32) #1

declare dso_local i32 @set_syscall_code(%struct.ptrace_context*) #1

declare dso_local i32 @do_ptrace_notify_stop(%struct.ptrace_context*, %struct.task_struct*) #1

declare dso_local i32 @send_sig_info(i64, i32, %struct.task_struct*) #1

declare dso_local i32 @ptrace_wake_up(%struct.task_struct*, %struct.utrace_engine*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
