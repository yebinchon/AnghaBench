; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_ptrace-utrace.c_ptrace_resume_action.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_ptrace-utrace.c_ptrace_resume_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }
%struct.utrace_engine = type { i64 }
%struct.ptrace_context = type { i32 }

@PTRACE_O_SYSEMU = common dso_local global i32 0, align 4
@UTRACE_EVENT_SYSCALL = common dso_local global i64 0, align 8
@UTRACE_RESUME = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@UTRACE_BLOCKSTEP = common dso_local global i32 0, align 4
@SYSCALL_EXIT = common dso_local global i32 0, align 4
@UTRACE_SINGLESTEP = common dso_local global i32 0, align 4
@SYSCALL_ENTRY = common dso_local global i32 0, align 4
@ESRCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.task_struct*, %struct.utrace_engine*, i64)* @ptrace_resume_action to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ptrace_resume_action(%struct.task_struct* %0, %struct.utrace_engine* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.task_struct*, align 8
  %6 = alloca %struct.utrace_engine*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.ptrace_context*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.task_struct* %0, %struct.task_struct** %5, align 8
  store %struct.utrace_engine* %1, %struct.utrace_engine** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load %struct.utrace_engine*, %struct.utrace_engine** %6, align 8
  %12 = call %struct.ptrace_context* @ptrace_context(%struct.utrace_engine* %11)
  store %struct.ptrace_context* %12, %struct.ptrace_context** %8, align 8
  %13 = load i32, i32* @PTRACE_O_SYSEMU, align 4
  %14 = xor i32 %13, -1
  %15 = load %struct.ptrace_context*, %struct.ptrace_context** %8, align 8
  %16 = getelementptr inbounds %struct.ptrace_context, %struct.ptrace_context* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = and i32 %17, %14
  store i32 %18, i32* %16, align 4
  %19 = load %struct.utrace_engine*, %struct.utrace_engine** %6, align 8
  %20 = getelementptr inbounds %struct.utrace_engine, %struct.utrace_engine* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @UTRACE_EVENT_SYSCALL, align 8
  %23 = xor i64 %22, -1
  %24 = and i64 %21, %23
  store i64 %24, i64* %9, align 8
  %25 = load i32, i32* @UTRACE_RESUME, align 4
  store i32 %25, i32* %10, align 4
  %26 = load i64, i64* %7, align 8
  switch i64 %26, label %86 [
    i64 132, label %27
    i64 131, label %43
    i64 128, label %59
    i64 129, label %71
    i64 130, label %81
    i64 133, label %85
  ]

27:                                               ; preds = %3
  %28 = call i32 (...) @arch_has_block_step()
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  %32 = call i32 @unlikely(i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %27
  %35 = load i32, i32* @EIO, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  br label %106

37:                                               ; preds = %27
  %38 = load i32, i32* @UTRACE_BLOCKSTEP, align 4
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* @SYSCALL_EXIT, align 4
  %40 = call i64 @UTRACE_EVENT(i32 %39)
  %41 = load i64, i64* %9, align 8
  %42 = or i64 %41, %40
  store i64 %42, i64* %9, align 8
  br label %89

43:                                               ; preds = %3
  %44 = call i32 (...) @arch_has_single_step()
  %45 = icmp ne i32 %44, 0
  %46 = xor i1 %45, true
  %47 = zext i1 %46 to i32
  %48 = call i32 @unlikely(i32 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %43
  %51 = load i32, i32* @EIO, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %4, align 4
  br label %106

53:                                               ; preds = %43
  %54 = load i32, i32* @UTRACE_SINGLESTEP, align 4
  store i32 %54, i32* %10, align 4
  %55 = load i32, i32* @SYSCALL_EXIT, align 4
  %56 = call i64 @UTRACE_EVENT(i32 %55)
  %57 = load i64, i64* %9, align 8
  %58 = or i64 %57, %56
  store i64 %58, i64* %9, align 8
  br label %89

59:                                               ; preds = %3
  %60 = call i32 (...) @arch_has_single_step()
  %61 = icmp ne i32 %60, 0
  %62 = xor i1 %61, true
  %63 = zext i1 %62 to i32
  %64 = call i32 @unlikely(i32 %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %59
  %67 = load i32, i32* @EIO, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %4, align 4
  br label %106

69:                                               ; preds = %59
  %70 = load i32, i32* @UTRACE_SINGLESTEP, align 4
  store i32 %70, i32* %10, align 4
  br label %71

71:                                               ; preds = %3, %69
  %72 = load i32, i32* @PTRACE_O_SYSEMU, align 4
  %73 = load %struct.ptrace_context*, %struct.ptrace_context** %8, align 8
  %74 = getelementptr inbounds %struct.ptrace_context, %struct.ptrace_context* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = or i32 %75, %72
  store i32 %76, i32* %74, align 4
  %77 = load i32, i32* @SYSCALL_ENTRY, align 4
  %78 = call i64 @UTRACE_EVENT(i32 %77)
  %79 = load i64, i64* %9, align 8
  %80 = or i64 %79, %78
  store i64 %80, i64* %9, align 8
  br label %89

81:                                               ; preds = %3
  %82 = load i64, i64* @UTRACE_EVENT_SYSCALL, align 8
  %83 = load i64, i64* %9, align 8
  %84 = or i64 %83, %82
  store i64 %84, i64* %9, align 8
  br label %89

85:                                               ; preds = %3
  br label %89

86:                                               ; preds = %3
  %87 = load i32, i32* @EIO, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %4, align 4
  br label %106

89:                                               ; preds = %85, %81, %71, %53, %37
  %90 = load i64, i64* %9, align 8
  %91 = load %struct.utrace_engine*, %struct.utrace_engine** %6, align 8
  %92 = getelementptr inbounds %struct.utrace_engine, %struct.utrace_engine* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %90, %93
  br i1 %94, label %95, label %104

95:                                               ; preds = %89
  %96 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %97 = load %struct.utrace_engine*, %struct.utrace_engine** %6, align 8
  %98 = load i64, i64* %9, align 8
  %99 = call i64 @utrace_set_events(%struct.task_struct* %96, %struct.utrace_engine* %97, i64 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %95
  %102 = load i32, i32* @ESRCH, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %4, align 4
  br label %106

104:                                              ; preds = %95, %89
  %105 = load i32, i32* %10, align 4
  store i32 %105, i32* %4, align 4
  br label %106

106:                                              ; preds = %104, %101, %86, %66, %50, %34
  %107 = load i32, i32* %4, align 4
  ret i32 %107
}

declare dso_local %struct.ptrace_context* @ptrace_context(%struct.utrace_engine*) #1

declare dso_local i32 @unlikely(i32) #1

declare dso_local i32 @arch_has_block_step(...) #1

declare dso_local i64 @UTRACE_EVENT(i32) #1

declare dso_local i32 @arch_has_single_step(...) #1

declare dso_local i64 @utrace_set_events(%struct.task_struct*, %struct.utrace_engine*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
