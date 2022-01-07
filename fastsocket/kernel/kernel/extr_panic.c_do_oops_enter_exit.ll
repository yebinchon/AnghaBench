; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_panic.c_do_oops_enter_exit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_panic.c_do_oops_enter_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@do_oops_enter_exit.spin_counter = internal global i32 0, align 4
@pause_on_oops = common dso_local global i32 0, align 4
@pause_on_oops_lock = common dso_local global i32 0, align 4
@pause_on_oops_flag = common dso_local global i32 0, align 4
@MSEC_PER_SEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @do_oops_enter_exit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_oops_enter_exit() #0 {
  %1 = alloca i64, align 8
  %2 = load i32, i32* @pause_on_oops, align 4
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %5, label %4

4:                                                ; preds = %0
  br label %39

5:                                                ; preds = %0
  %6 = load i64, i64* %1, align 8
  %7 = call i32 @spin_lock_irqsave(i32* @pause_on_oops_lock, i64 %6)
  %8 = load i32, i32* @pause_on_oops_flag, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %5
  store i32 1, i32* @pause_on_oops_flag, align 4
  br label %36

11:                                               ; preds = %5
  %12 = load i32, i32* @do_oops_enter_exit.spin_counter, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %26, label %14

14:                                               ; preds = %11
  %15 = load i32, i32* @pause_on_oops, align 4
  store i32 %15, i32* @do_oops_enter_exit.spin_counter, align 4
  br label %16

16:                                               ; preds = %21, %14
  %17 = call i32 @spin_unlock(i32* @pause_on_oops_lock)
  %18 = load i32, i32* @MSEC_PER_SEC, align 4
  %19 = call i32 @spin_msec(i32 %18)
  %20 = call i32 @spin_lock(i32* @pause_on_oops_lock)
  br label %21

21:                                               ; preds = %16
  %22 = load i32, i32* @do_oops_enter_exit.spin_counter, align 4
  %23 = add nsw i32 %22, -1
  store i32 %23, i32* @do_oops_enter_exit.spin_counter, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %16, label %25

25:                                               ; preds = %21
  store i32 0, i32* @pause_on_oops_flag, align 4
  br label %35

26:                                               ; preds = %11
  br label %27

27:                                               ; preds = %30, %26
  %28 = load i32, i32* @do_oops_enter_exit.spin_counter, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %27
  %31 = call i32 @spin_unlock(i32* @pause_on_oops_lock)
  %32 = call i32 @spin_msec(i32 1)
  %33 = call i32 @spin_lock(i32* @pause_on_oops_lock)
  br label %27

34:                                               ; preds = %27
  br label %35

35:                                               ; preds = %34, %25
  br label %36

36:                                               ; preds = %35, %10
  %37 = load i64, i64* %1, align 8
  %38 = call i32 @spin_unlock_irqrestore(i32* @pause_on_oops_lock, i64 %37)
  br label %39

39:                                               ; preds = %36, %4
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @spin_msec(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
