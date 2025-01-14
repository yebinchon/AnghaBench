; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/rfkill/extr_input.c_rfkill_schedule_global_op.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/rfkill/extr_input.c_rfkill_schedule_global_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@rfkill_op_lock = common dso_local global i32 0, align 4
@rfkill_op = common dso_local global i32 0, align 4
@rfkill_op_pending = common dso_local global i32 0, align 4
@RFKILL_GLOBAL_OP_EPO = common dso_local global i32 0, align 4
@rfkill_op_work = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@rfkill_last_scheduled = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @rfkill_schedule_global_op to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rfkill_schedule_global_op(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i64, i64* %3, align 8
  %5 = call i32 @spin_lock_irqsave(i32* @rfkill_op_lock, i64 %4)
  %6 = load i32, i32* %2, align 4
  store i32 %6, i32* @rfkill_op, align 4
  store i32 1, i32* @rfkill_op_pending, align 4
  %7 = load i32, i32* %2, align 4
  %8 = load i32, i32* @RFKILL_GLOBAL_OP_EPO, align 4
  %9 = icmp eq i32 %7, %8
  br i1 %9, label %10, label %17

10:                                               ; preds = %1
  %11 = call i32 (...) @rfkill_is_epo_lock_active()
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %10
  %14 = call i32 @cancel_delayed_work(i32* @rfkill_op_work)
  %15 = call i32 @schedule_delayed_work(i32* @rfkill_op_work, i32 0)
  %16 = load i32, i32* @jiffies, align 4
  store i32 %16, i32* @rfkill_last_scheduled, align 4
  br label %19

17:                                               ; preds = %10, %1
  %18 = call i32 (...) @rfkill_schedule_ratelimited()
  br label %19

19:                                               ; preds = %17, %13
  %20 = load i64, i64* %3, align 8
  %21 = call i32 @spin_unlock_irqrestore(i32* @rfkill_op_lock, i64 %20)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @rfkill_is_epo_lock_active(...) #1

declare dso_local i32 @cancel_delayed_work(i32*) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

declare dso_local i32 @rfkill_schedule_ratelimited(...) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
