; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/dlm/extr_ast.c_dlm_astd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/dlm/extr_ast.c_dlm_astd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@WAKE_ASTS = common dso_local global i32 0, align 4
@astd_wakeflags = common dso_local global i32 0, align 4
@TASK_RUNNING = common dso_local global i32 0, align 4
@astd_running = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @dlm_astd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dlm_astd(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  br label %3

3:                                                ; preds = %24, %1
  %4 = call i32 (...) @kthread_should_stop()
  %5 = icmp ne i32 %4, 0
  %6 = xor i1 %5, true
  br i1 %6, label %7, label %26

7:                                                ; preds = %3
  %8 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %9 = call i32 @set_current_state(i32 %8)
  %10 = load i32, i32* @WAKE_ASTS, align 4
  %11 = call i32 @test_bit(i32 %10, i32* @astd_wakeflags)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %7
  %14 = call i32 (...) @schedule()
  br label %15

15:                                               ; preds = %13, %7
  %16 = load i32, i32* @TASK_RUNNING, align 4
  %17 = call i32 @set_current_state(i32 %16)
  %18 = call i32 @mutex_lock(i32* @astd_running)
  %19 = load i32, i32* @WAKE_ASTS, align 4
  %20 = call i64 @test_and_clear_bit(i32 %19, i32* @astd_wakeflags)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %15
  %23 = call i32 (...) @process_asts()
  br label %24

24:                                               ; preds = %22, %15
  %25 = call i32 @mutex_unlock(i32* @astd_running)
  br label %3

26:                                               ; preds = %3
  ret i32 0
}

declare dso_local i32 @kthread_should_stop(...) #1

declare dso_local i32 @set_current_state(i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @process_asts(...) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
