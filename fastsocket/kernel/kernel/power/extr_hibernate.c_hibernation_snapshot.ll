; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/power/extr_hibernate.c_hibernation_snapshot.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/power/extr_hibernate.c_hibernation_snapshot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PMSG_FREEZE = common dso_local global i32 0, align 4
@TEST_DEVICES = common dso_local global i32 0, align 4
@in_suspend = common dso_local global i64 0, align 8
@PMSG_RECOVER = common dso_local global i32 0, align 4
@PMSG_THAW = common dso_local global i32 0, align 4
@PMSG_RESTORE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hibernation_snapshot(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call i32 @platform_begin(i32 %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* %4, align 4
  store i32 %10, i32* %2, align 4
  br label %73

11:                                               ; preds = %1
  %12 = call i32 (...) @hibernate_preallocate_memory()
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  br label %66

16:                                               ; preds = %11
  %17 = call i32 (...) @suspend_console()
  %18 = call i32 (...) @pm_restrict_gfp_mask()
  %19 = load i32, i32* @PMSG_FREEZE, align 4
  %20 = call i32 @dpm_suspend_start(i32 %19)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %16
  br label %70

24:                                               ; preds = %16
  %25 = load i32, i32* @TEST_DEVICES, align 4
  %26 = call i64 @hibernation_test(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  br label %70

29:                                               ; preds = %24
  %30 = load i32, i32* %3, align 4
  %31 = call i32 @create_image(i32 %30)
  store i32 %31, i32* %4, align 4
  br label %32

32:                                               ; preds = %70, %29
  %33 = load i32, i32* %4, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %32
  %36 = load i64, i64* @in_suspend, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %35, %32
  %39 = call i32 (...) @swsusp_free()
  br label %40

40:                                               ; preds = %38, %35
  %41 = load i64, i64* @in_suspend, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %40
  %44 = load i32, i32* %4, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %43
  %47 = load i32, i32* @PMSG_RECOVER, align 4
  br label %50

48:                                               ; preds = %43
  %49 = load i32, i32* @PMSG_THAW, align 4
  br label %50

50:                                               ; preds = %48, %46
  %51 = phi i32 [ %47, %46 ], [ %49, %48 ]
  br label %54

52:                                               ; preds = %40
  %53 = load i32, i32* @PMSG_RESTORE, align 4
  br label %54

54:                                               ; preds = %52, %50
  %55 = phi i32 [ %51, %50 ], [ %53, %52 ]
  %56 = call i32 @dpm_resume_end(i32 %55)
  %57 = load i32, i32* %4, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %54
  %60 = load i64, i64* @in_suspend, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %64, label %62

62:                                               ; preds = %59, %54
  %63 = call i32 (...) @pm_restore_gfp_mask()
  br label %64

64:                                               ; preds = %62, %59
  %65 = call i32 (...) @resume_console()
  br label %66

66:                                               ; preds = %64, %15
  %67 = load i32, i32* %3, align 4
  %68 = call i32 @platform_end(i32 %67)
  %69 = load i32, i32* %4, align 4
  store i32 %69, i32* %2, align 4
  br label %73

70:                                               ; preds = %28, %23
  %71 = load i32, i32* %3, align 4
  %72 = call i32 @platform_recover(i32 %71)
  br label %32

73:                                               ; preds = %66, %9
  %74 = load i32, i32* %2, align 4
  ret i32 %74
}

declare dso_local i32 @platform_begin(i32) #1

declare dso_local i32 @hibernate_preallocate_memory(...) #1

declare dso_local i32 @suspend_console(...) #1

declare dso_local i32 @pm_restrict_gfp_mask(...) #1

declare dso_local i32 @dpm_suspend_start(i32) #1

declare dso_local i64 @hibernation_test(i32) #1

declare dso_local i32 @create_image(i32) #1

declare dso_local i32 @swsusp_free(...) #1

declare dso_local i32 @dpm_resume_end(i32) #1

declare dso_local i32 @pm_restore_gfp_mask(...) #1

declare dso_local i32 @resume_console(...) #1

declare dso_local i32 @platform_end(i32) #1

declare dso_local i32 @platform_recover(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
