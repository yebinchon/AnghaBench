; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/power/extr_hibernate.c_hibernation_platform_enter.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/power/extr_hibernate.c_hibernation_platform_enter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (...)*, i32 (...)*, i32 (...)*, i32 (...)*, i32 (...)*, i32 (...)* }

@hibernation_ops = common dso_local global %struct.TYPE_2__* null, align 8
@ENOSYS = common dso_local global i32 0, align 4
@entering_platform_hibernation = common dso_local global i32 0, align 4
@PMSG_HIBERNATE = common dso_local global i32 0, align 4
@PMSG_RESTORE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hibernation_platform_enter() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load %struct.TYPE_2__*, %struct.TYPE_2__** @hibernation_ops, align 8
  %4 = icmp ne %struct.TYPE_2__* %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %0
  %6 = load i32, i32* @ENOSYS, align 4
  %7 = sub nsw i32 0, %6
  store i32 %7, i32* %1, align 4
  br label %78

8:                                                ; preds = %0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** @hibernation_ops, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32 (...)*, i32 (...)** %10, align 8
  %12 = call i32 (...) %11()
  store i32 %12, i32* %2, align 4
  %13 = load i32, i32* %2, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %8
  br label %72

16:                                               ; preds = %8
  store i32 1, i32* @entering_platform_hibernation, align 4
  %17 = call i32 (...) @suspend_console()
  %18 = load i32, i32* @PMSG_HIBERNATE, align 4
  %19 = call i32 @dpm_suspend_start(i32 %18)
  store i32 %19, i32* %2, align 4
  %20 = load i32, i32* %2, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %33

22:                                               ; preds = %16
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** @hibernation_ops, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 5
  %25 = load i32 (...)*, i32 (...)** %24, align 8
  %26 = icmp ne i32 (...)* %25, null
  br i1 %26, label %27, label %32

27:                                               ; preds = %22
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** @hibernation_ops, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 5
  %30 = load i32 (...)*, i32 (...)** %29, align 8
  %31 = call i32 (...) %30()
  br label %32

32:                                               ; preds = %27, %22
  br label %68

33:                                               ; preds = %16
  %34 = load i32, i32* @PMSG_HIBERNATE, align 4
  %35 = call i32 @dpm_suspend_noirq(i32 %34)
  store i32 %35, i32* %2, align 4
  %36 = load i32, i32* %2, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  br label %68

39:                                               ; preds = %33
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** @hibernation_ops, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load i32 (...)*, i32 (...)** %41, align 8
  %43 = call i32 (...) %42()
  store i32 %43, i32* %2, align 4
  %44 = load i32, i32* %2, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %39
  br label %61

47:                                               ; preds = %39
  %48 = call i32 (...) @disable_nonboot_cpus()
  store i32 %48, i32* %2, align 4
  %49 = load i32, i32* %2, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %47
  br label %61

52:                                               ; preds = %47
  %53 = call i32 (...) @local_irq_disable()
  %54 = load i32, i32* @PMSG_HIBERNATE, align 4
  %55 = call i32 @sysdev_suspend(i32 %54)
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** @hibernation_ops, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 4
  %58 = load i32 (...)*, i32 (...)** %57, align 8
  %59 = call i32 (...) %58()
  br label %60

60:                                               ; preds = %52, %60
  br label %60

61:                                               ; preds = %51, %46
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** @hibernation_ops, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 3
  %64 = load i32 (...)*, i32 (...)** %63, align 8
  %65 = call i32 (...) %64()
  %66 = load i32, i32* @PMSG_RESTORE, align 4
  %67 = call i32 @dpm_suspend_noirq(i32 %66)
  br label %68

68:                                               ; preds = %61, %38, %32
  store i32 0, i32* @entering_platform_hibernation, align 4
  %69 = load i32, i32* @PMSG_RESTORE, align 4
  %70 = call i32 @dpm_resume_end(i32 %69)
  %71 = call i32 (...) @resume_console()
  br label %72

72:                                               ; preds = %68, %15
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** @hibernation_ops, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 2
  %75 = load i32 (...)*, i32 (...)** %74, align 8
  %76 = call i32 (...) %75()
  %77 = load i32, i32* %2, align 4
  store i32 %77, i32* %1, align 4
  br label %78

78:                                               ; preds = %72, %5
  %79 = load i32, i32* %1, align 4
  ret i32 %79
}

declare dso_local i32 @suspend_console(...) #1

declare dso_local i32 @dpm_suspend_start(i32) #1

declare dso_local i32 @dpm_suspend_noirq(i32) #1

declare dso_local i32 @disable_nonboot_cpus(...) #1

declare dso_local i32 @local_irq_disable(...) #1

declare dso_local i32 @sysdev_suspend(i32) #1

declare dso_local i32 @dpm_resume_end(i32) #1

declare dso_local i32 @resume_console(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
