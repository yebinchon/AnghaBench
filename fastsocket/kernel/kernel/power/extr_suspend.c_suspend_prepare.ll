; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/power/extr_suspend.c_suspend_prepare.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/power/extr_suspend.c_suspend_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@suspend_ops = common dso_local global %struct.TYPE_2__* null, align 8
@EPERM = common dso_local global i32 0, align 4
@PM_SUSPEND_PREPARE = common dso_local global i32 0, align 4
@PM_POST_SUSPEND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @suspend_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @suspend_prepare() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load %struct.TYPE_2__*, %struct.TYPE_2__** @suspend_ops, align 8
  %4 = icmp ne %struct.TYPE_2__* %3, null
  br i1 %4, label %5, label %10

5:                                                ; preds = %0
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** @suspend_ops, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %5, %0
  %11 = load i32, i32* @EPERM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %1, align 4
  br label %38

13:                                               ; preds = %5
  %14 = call i32 (...) @pm_prepare_console()
  %15 = load i32, i32* @PM_SUSPEND_PREPARE, align 4
  %16 = call i32 @pm_notifier_call_chain(i32 %15)
  store i32 %16, i32* %2, align 4
  %17 = load i32, i32* %2, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  br label %33

20:                                               ; preds = %13
  %21 = call i32 (...) @usermodehelper_disable()
  store i32 %21, i32* %2, align 4
  %22 = load i32, i32* %2, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  br label %33

25:                                               ; preds = %20
  %26 = call i32 (...) @suspend_freeze_processes()
  store i32 %26, i32* %2, align 4
  %27 = load i32, i32* %2, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %25
  store i32 0, i32* %1, align 4
  br label %38

30:                                               ; preds = %25
  %31 = call i32 (...) @suspend_thaw_processes()
  %32 = call i32 (...) @usermodehelper_enable()
  br label %33

33:                                               ; preds = %30, %24, %19
  %34 = load i32, i32* @PM_POST_SUSPEND, align 4
  %35 = call i32 @pm_notifier_call_chain(i32 %34)
  %36 = call i32 (...) @pm_restore_console()
  %37 = load i32, i32* %2, align 4
  store i32 %37, i32* %1, align 4
  br label %38

38:                                               ; preds = %33, %29, %10
  %39 = load i32, i32* %1, align 4
  ret i32 %39
}

declare dso_local i32 @pm_prepare_console(...) #1

declare dso_local i32 @pm_notifier_call_chain(i32) #1

declare dso_local i32 @usermodehelper_disable(...) #1

declare dso_local i32 @suspend_freeze_processes(...) #1

declare dso_local i32 @suspend_thaw_processes(...) #1

declare dso_local i32 @usermodehelper_enable(...) #1

declare dso_local i32 @pm_restore_console(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
