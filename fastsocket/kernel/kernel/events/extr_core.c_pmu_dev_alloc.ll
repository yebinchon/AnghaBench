; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/events/extr_core.c_pmu_dev_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/events/extr_core.c_pmu_dev_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmu = type { %struct.TYPE_7__*, i32, i32 }
%struct.TYPE_7__ = type { i32, i32*, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@pmu_bus = common dso_local global i32 0, align 4
@pmu_dev_release = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pmu*)* @pmu_dev_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmu_dev_alloc(%struct.pmu* %0) #0 {
  %2 = alloca %struct.pmu*, align 8
  %3 = alloca i32, align 4
  store %struct.pmu* %0, %struct.pmu** %2, align 8
  %4 = load i32, i32* @ENOMEM, align 4
  %5 = sub nsw i32 0, %4
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.TYPE_7__* @kzalloc(i32 4, i32 %6)
  %8 = load %struct.pmu*, %struct.pmu** %2, align 8
  %9 = getelementptr inbounds %struct.pmu, %struct.pmu* %8, i32 0, i32 0
  store %struct.TYPE_7__* %7, %struct.TYPE_7__** %9, align 8
  %10 = load %struct.pmu*, %struct.pmu** %2, align 8
  %11 = getelementptr inbounds %struct.pmu, %struct.pmu* %10, i32 0, i32 0
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %13 = icmp ne %struct.TYPE_7__* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  br label %60

15:                                               ; preds = %1
  %16 = load %struct.pmu*, %struct.pmu** %2, align 8
  %17 = getelementptr inbounds %struct.pmu, %struct.pmu* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.pmu*, %struct.pmu** %2, align 8
  %20 = getelementptr inbounds %struct.pmu, %struct.pmu* %19, i32 0, i32 0
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 2
  store i32 %18, i32* %22, align 8
  %23 = load %struct.pmu*, %struct.pmu** %2, align 8
  %24 = getelementptr inbounds %struct.pmu, %struct.pmu* %23, i32 0, i32 0
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  %26 = call i32 @device_initialize(%struct.TYPE_7__* %25)
  %27 = load %struct.pmu*, %struct.pmu** %2, align 8
  %28 = getelementptr inbounds %struct.pmu, %struct.pmu* %27, i32 0, i32 0
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %28, align 8
  %30 = load %struct.pmu*, %struct.pmu** %2, align 8
  %31 = getelementptr inbounds %struct.pmu, %struct.pmu* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @dev_set_name(%struct.TYPE_7__* %29, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %32)
  store i32 %33, i32* %3, align 4
  %34 = load i32, i32* %3, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %15
  br label %62

37:                                               ; preds = %15
  %38 = load %struct.pmu*, %struct.pmu** %2, align 8
  %39 = getelementptr inbounds %struct.pmu, %struct.pmu* %38, i32 0, i32 0
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %39, align 8
  %41 = load %struct.pmu*, %struct.pmu** %2, align 8
  %42 = call i32 @dev_set_drvdata(%struct.TYPE_7__* %40, %struct.pmu* %41)
  %43 = load %struct.pmu*, %struct.pmu** %2, align 8
  %44 = getelementptr inbounds %struct.pmu, %struct.pmu* %43, i32 0, i32 0
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 1
  store i32* @pmu_bus, i32** %46, align 8
  %47 = load i32, i32* @pmu_dev_release, align 4
  %48 = load %struct.pmu*, %struct.pmu** %2, align 8
  %49 = getelementptr inbounds %struct.pmu, %struct.pmu* %48, i32 0, i32 0
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  store i32 %47, i32* %51, align 8
  %52 = load %struct.pmu*, %struct.pmu** %2, align 8
  %53 = getelementptr inbounds %struct.pmu, %struct.pmu* %52, i32 0, i32 0
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %53, align 8
  %55 = call i32 @device_add(%struct.TYPE_7__* %54)
  store i32 %55, i32* %3, align 4
  %56 = load i32, i32* %3, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %37
  br label %62

59:                                               ; preds = %37
  br label %60

60:                                               ; preds = %62, %59, %14
  %61 = load i32, i32* %3, align 4
  ret i32 %61

62:                                               ; preds = %58, %36
  %63 = load %struct.pmu*, %struct.pmu** %2, align 8
  %64 = getelementptr inbounds %struct.pmu, %struct.pmu* %63, i32 0, i32 0
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %64, align 8
  %66 = call i32 @put_device(%struct.TYPE_7__* %65)
  br label %60
}

declare dso_local %struct.TYPE_7__* @kzalloc(i32, i32) #1

declare dso_local i32 @device_initialize(%struct.TYPE_7__*) #1

declare dso_local i32 @dev_set_name(%struct.TYPE_7__*, i8*, i32) #1

declare dso_local i32 @dev_set_drvdata(%struct.TYPE_7__*, %struct.pmu*) #1

declare dso_local i32 @device_add(%struct.TYPE_7__*) #1

declare dso_local i32 @put_device(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
