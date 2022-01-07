; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/rfcomm/extr_core.c_rfcomm_run.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/rfcomm/extr_core.c_rfcomm_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@current = common dso_local global i32 0, align 4
@BDADDR_ANY = common dso_local global i32 0, align 4
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@RFCOMM_SCHED_WAKEUP = common dso_local global i32 0, align 4
@rfcomm_event = common dso_local global i32 0, align 4
@TASK_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @rfcomm_run to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rfcomm_run(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = call i32 @BT_DBG(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %4 = load i32, i32* @current, align 4
  %5 = call i32 @set_user_nice(i32 %4, i32 -10)
  %6 = load i32, i32* @BDADDR_ANY, align 4
  %7 = call i32 @rfcomm_add_listener(i32 %6)
  br label %8

8:                                                ; preds = %20, %1
  %9 = call i32 (...) @kthread_should_stop()
  %10 = icmp ne i32 %9, 0
  %11 = xor i1 %10, true
  br i1 %11, label %12, label %26

12:                                               ; preds = %8
  %13 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %14 = call i32 @set_current_state(i32 %13)
  %15 = load i32, i32* @RFCOMM_SCHED_WAKEUP, align 4
  %16 = call i32 @test_bit(i32 %15, i32* @rfcomm_event)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %12
  %19 = call i32 (...) @schedule()
  br label %20

20:                                               ; preds = %18, %12
  %21 = load i32, i32* @TASK_RUNNING, align 4
  %22 = call i32 @set_current_state(i32 %21)
  %23 = load i32, i32* @RFCOMM_SCHED_WAKEUP, align 4
  %24 = call i32 @clear_bit(i32 %23, i32* @rfcomm_event)
  %25 = call i32 (...) @rfcomm_process_sessions()
  br label %8

26:                                               ; preds = %8
  %27 = call i32 (...) @rfcomm_kill_listener()
  ret i32 0
}

declare dso_local i32 @BT_DBG(i8*) #1

declare dso_local i32 @set_user_nice(i32, i32) #1

declare dso_local i32 @rfcomm_add_listener(i32) #1

declare dso_local i32 @kthread_should_stop(...) #1

declare dso_local i32 @set_current_state(i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @rfcomm_process_sessions(...) #1

declare dso_local i32 @rfcomm_kill_listener(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
