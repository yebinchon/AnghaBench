; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/power/extr_hibernate.c_hibernation_set_ops.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/power/extr_hibernate.c_hibernation_set_ops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_hibernation_ops = type { i64, i64, i64, i64, i64, i64, i64, i64 }

@pm_mutex = common dso_local global i32 0, align 4
@hibernation_ops = common dso_local global %struct.platform_hibernation_ops* null, align 8
@HIBERNATION_PLATFORM = common dso_local global i64 0, align 8
@hibernation_mode = common dso_local global i64 0, align 8
@HIBERNATION_SHUTDOWN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hibernation_set_ops(%struct.platform_hibernation_ops* %0) #0 {
  %2 = alloca %struct.platform_hibernation_ops*, align 8
  store %struct.platform_hibernation_ops* %0, %struct.platform_hibernation_ops** %2, align 8
  %3 = load %struct.platform_hibernation_ops*, %struct.platform_hibernation_ops** %2, align 8
  %4 = icmp ne %struct.platform_hibernation_ops* %3, null
  br i1 %4, label %5, label %47

5:                                                ; preds = %1
  %6 = load %struct.platform_hibernation_ops*, %struct.platform_hibernation_ops** %2, align 8
  %7 = getelementptr inbounds %struct.platform_hibernation_ops, %struct.platform_hibernation_ops* %6, i32 0, i32 7
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %45

10:                                               ; preds = %5
  %11 = load %struct.platform_hibernation_ops*, %struct.platform_hibernation_ops** %2, align 8
  %12 = getelementptr inbounds %struct.platform_hibernation_ops, %struct.platform_hibernation_ops* %11, i32 0, i32 6
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %45

15:                                               ; preds = %10
  %16 = load %struct.platform_hibernation_ops*, %struct.platform_hibernation_ops** %2, align 8
  %17 = getelementptr inbounds %struct.platform_hibernation_ops, %struct.platform_hibernation_ops* %16, i32 0, i32 5
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %45

20:                                               ; preds = %15
  %21 = load %struct.platform_hibernation_ops*, %struct.platform_hibernation_ops** %2, align 8
  %22 = getelementptr inbounds %struct.platform_hibernation_ops, %struct.platform_hibernation_ops* %21, i32 0, i32 4
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %45

25:                                               ; preds = %20
  %26 = load %struct.platform_hibernation_ops*, %struct.platform_hibernation_ops** %2, align 8
  %27 = getelementptr inbounds %struct.platform_hibernation_ops, %struct.platform_hibernation_ops* %26, i32 0, i32 3
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %45

30:                                               ; preds = %25
  %31 = load %struct.platform_hibernation_ops*, %struct.platform_hibernation_ops** %2, align 8
  %32 = getelementptr inbounds %struct.platform_hibernation_ops, %struct.platform_hibernation_ops* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %45

35:                                               ; preds = %30
  %36 = load %struct.platform_hibernation_ops*, %struct.platform_hibernation_ops** %2, align 8
  %37 = getelementptr inbounds %struct.platform_hibernation_ops, %struct.platform_hibernation_ops* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %35
  %41 = load %struct.platform_hibernation_ops*, %struct.platform_hibernation_ops** %2, align 8
  %42 = getelementptr inbounds %struct.platform_hibernation_ops, %struct.platform_hibernation_ops* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %40, %35, %30, %25, %20, %15, %10, %5
  %46 = call i32 @WARN_ON(i32 1)
  br label %63

47:                                               ; preds = %40, %1
  %48 = call i32 @mutex_lock(i32* @pm_mutex)
  %49 = load %struct.platform_hibernation_ops*, %struct.platform_hibernation_ops** %2, align 8
  store %struct.platform_hibernation_ops* %49, %struct.platform_hibernation_ops** @hibernation_ops, align 8
  %50 = load %struct.platform_hibernation_ops*, %struct.platform_hibernation_ops** %2, align 8
  %51 = icmp ne %struct.platform_hibernation_ops* %50, null
  br i1 %51, label %52, label %54

52:                                               ; preds = %47
  %53 = load i64, i64* @HIBERNATION_PLATFORM, align 8
  store i64 %53, i64* @hibernation_mode, align 8
  br label %61

54:                                               ; preds = %47
  %55 = load i64, i64* @hibernation_mode, align 8
  %56 = load i64, i64* @HIBERNATION_PLATFORM, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %54
  %59 = load i64, i64* @HIBERNATION_SHUTDOWN, align 8
  store i64 %59, i64* @hibernation_mode, align 8
  br label %60

60:                                               ; preds = %58, %54
  br label %61

61:                                               ; preds = %60, %52
  %62 = call i32 @mutex_unlock(i32* @pm_mutex)
  br label %63

63:                                               ; preds = %61, %45
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
