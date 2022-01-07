; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_ptrace.c_ptrace_resume.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_ptrace.c_ptrace_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i64 }

@EIO = common dso_local global i32 0, align 4
@PTRACE_SYSCALL = common dso_local global i64 0, align 8
@TIF_SYSCALL_TRACE = common dso_local global i32 0, align 4
@PTRACE_SYSEMU = common dso_local global i64 0, align 8
@PTRACE_SYSEMU_SINGLESTEP = common dso_local global i64 0, align 8
@TIF_SYSCALL_EMU = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.task_struct*, i64, i64)* @ptrace_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ptrace_resume(%struct.task_struct* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.task_struct*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.task_struct* %0, %struct.task_struct** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %8 = load i64, i64* %7, align 8
  %9 = call i32 @valid_signal(i64 %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %3
  %12 = load i32, i32* @EIO, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %4, align 4
  br label %74

14:                                               ; preds = %3
  %15 = load i64, i64* %6, align 8
  %16 = load i64, i64* @PTRACE_SYSCALL, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %14
  %19 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %20 = load i32, i32* @TIF_SYSCALL_TRACE, align 4
  %21 = call i32 @set_tsk_thread_flag(%struct.task_struct* %19, i32 %20)
  br label %26

22:                                               ; preds = %14
  %23 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %24 = load i32, i32* @TIF_SYSCALL_TRACE, align 4
  %25 = call i32 @clear_tsk_thread_flag(%struct.task_struct* %23, i32 %24)
  br label %26

26:                                               ; preds = %22, %18
  %27 = load i64, i64* %6, align 8
  %28 = call i64 @is_singleblock(i64 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %43

30:                                               ; preds = %26
  %31 = call i32 (...) @arch_has_block_step()
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  %35 = call i64 @unlikely(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %30
  %38 = load i32, i32* @EIO, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %74

40:                                               ; preds = %30
  %41 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %42 = call i32 @user_enable_block_step(%struct.task_struct* %41)
  br label %68

43:                                               ; preds = %26
  %44 = load i64, i64* %6, align 8
  %45 = call i64 @is_singlestep(i64 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %43
  %48 = load i64, i64* %6, align 8
  %49 = call i64 @is_sysemu_singlestep(i64 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %64

51:                                               ; preds = %47, %43
  %52 = call i32 (...) @arch_has_single_step()
  %53 = icmp ne i32 %52, 0
  %54 = xor i1 %53, true
  %55 = zext i1 %54 to i32
  %56 = call i64 @unlikely(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %51
  %59 = load i32, i32* @EIO, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %4, align 4
  br label %74

61:                                               ; preds = %51
  %62 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %63 = call i32 @user_enable_single_step(%struct.task_struct* %62)
  br label %67

64:                                               ; preds = %47
  %65 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %66 = call i32 @user_disable_single_step(%struct.task_struct* %65)
  br label %67

67:                                               ; preds = %64, %61
  br label %68

68:                                               ; preds = %67, %40
  %69 = load i64, i64* %7, align 8
  %70 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %71 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %70, i32 0, i32 0
  store i64 %69, i64* %71, align 8
  %72 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %73 = call i32 @wake_up_process(%struct.task_struct* %72)
  store i32 0, i32* %4, align 4
  br label %74

74:                                               ; preds = %68, %58, %37, %11
  %75 = load i32, i32* %4, align 4
  ret i32 %75
}

declare dso_local i32 @valid_signal(i64) #1

declare dso_local i32 @set_tsk_thread_flag(%struct.task_struct*, i32) #1

declare dso_local i32 @clear_tsk_thread_flag(%struct.task_struct*, i32) #1

declare dso_local i64 @is_singleblock(i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @arch_has_block_step(...) #1

declare dso_local i32 @user_enable_block_step(%struct.task_struct*) #1

declare dso_local i64 @is_singlestep(i64) #1

declare dso_local i64 @is_sysemu_singlestep(i64) #1

declare dso_local i32 @arch_has_single_step(...) #1

declare dso_local i32 @user_enable_single_step(%struct.task_struct*) #1

declare dso_local i32 @user_disable_single_step(%struct.task_struct*) #1

declare dso_local i32 @wake_up_process(%struct.task_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
