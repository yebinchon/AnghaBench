; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/aoa/core/extr_gpio-feature.c_ftr_set_notify.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/aoa/core/extr_gpio-feature.c_ftr_set_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_runtime = type { %struct.gpio_notification, %struct.gpio_notification, %struct.gpio_notification }
%struct.gpio_notification = type { i64, i8*, i32 }

@EBUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"headphone-detect\00", align 1
@headphone_detect_irq = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"linein-detect\00", align 1
@linein_detect_irq = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"lineout-detect\00", align 1
@lineout_detect_irq = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@NO_IRQ = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@ftr_handle_notify_irq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_runtime*, i32, i64, i8*)* @ftr_set_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ftr_set_notify(%struct.gpio_runtime* %0, i32 %1, i64 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.gpio_runtime*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.gpio_notification*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store %struct.gpio_runtime* %0, %struct.gpio_runtime** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  %15 = load i32, i32* @EBUSY, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %14, align 4
  %17 = load i32, i32* %7, align 4
  switch i32 %17, label %30 [
    i32 130, label %18
    i32 129, label %22
    i32 128, label %26
  ]

18:                                               ; preds = %4
  %19 = load %struct.gpio_runtime*, %struct.gpio_runtime** %6, align 8
  %20 = getelementptr inbounds %struct.gpio_runtime, %struct.gpio_runtime* %19, i32 0, i32 2
  store %struct.gpio_notification* %20, %struct.gpio_notification** %10, align 8
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8** %13, align 8
  %21 = load i32, i32* @headphone_detect_irq, align 4
  store i32 %21, i32* %12, align 4
  br label %33

22:                                               ; preds = %4
  %23 = load %struct.gpio_runtime*, %struct.gpio_runtime** %6, align 8
  %24 = getelementptr inbounds %struct.gpio_runtime, %struct.gpio_runtime* %23, i32 0, i32 1
  store %struct.gpio_notification* %24, %struct.gpio_notification** %10, align 8
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8** %13, align 8
  %25 = load i32, i32* @linein_detect_irq, align 4
  store i32 %25, i32* %12, align 4
  br label %33

26:                                               ; preds = %4
  %27 = load %struct.gpio_runtime*, %struct.gpio_runtime** %6, align 8
  %28 = getelementptr inbounds %struct.gpio_runtime, %struct.gpio_runtime* %27, i32 0, i32 0
  store %struct.gpio_notification* %28, %struct.gpio_notification** %10, align 8
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8** %13, align 8
  %29 = load i32, i32* @lineout_detect_irq, align 4
  store i32 %29, i32* %12, align 4
  br label %33

30:                                               ; preds = %4
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %5, align 4
  br label %109

33:                                               ; preds = %26, %22, %18
  %34 = load i32, i32* %12, align 4
  %35 = load i32, i32* @NO_IRQ, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  %38 = load i32, i32* @ENODEV, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %5, align 4
  br label %109

40:                                               ; preds = %33
  %41 = load %struct.gpio_notification*, %struct.gpio_notification** %10, align 8
  %42 = getelementptr inbounds %struct.gpio_notification, %struct.gpio_notification* %41, i32 0, i32 2
  %43 = call i32 @mutex_lock(i32* %42)
  %44 = load %struct.gpio_notification*, %struct.gpio_notification** %10, align 8
  %45 = getelementptr inbounds %struct.gpio_notification, %struct.gpio_notification* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  store i64 %46, i64* %11, align 8
  %47 = load i64, i64* %11, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %40
  %50 = load i64, i64* %8, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %49
  store i32 0, i32* %14, align 4
  br label %104

53:                                               ; preds = %49, %40
  %54 = load i64, i64* %11, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %71

56:                                               ; preds = %53
  %57 = load i64, i64* %8, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %71

59:                                               ; preds = %56
  %60 = load i64, i64* %11, align 8
  %61 = load i64, i64* %8, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %70

63:                                               ; preds = %59
  %64 = load %struct.gpio_notification*, %struct.gpio_notification** %10, align 8
  %65 = getelementptr inbounds %struct.gpio_notification, %struct.gpio_notification* %64, i32 0, i32 1
  %66 = load i8*, i8** %65, align 8
  %67 = load i8*, i8** %9, align 8
  %68 = icmp eq i8* %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %63
  store i32 0, i32* %14, align 4
  br label %70

70:                                               ; preds = %69, %63, %59
  br label %104

71:                                               ; preds = %56, %53
  %72 = load i64, i64* %11, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %81

74:                                               ; preds = %71
  %75 = load i64, i64* %8, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %81, label %77

77:                                               ; preds = %74
  %78 = load i32, i32* %12, align 4
  %79 = load %struct.gpio_notification*, %struct.gpio_notification** %10, align 8
  %80 = call i32 @free_irq(i32 %78, %struct.gpio_notification* %79)
  br label %81

81:                                               ; preds = %77, %74, %71
  %82 = load i64, i64* %11, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %97, label %84

84:                                               ; preds = %81
  %85 = load i64, i64* %8, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %97

87:                                               ; preds = %84
  %88 = load i32, i32* %12, align 4
  %89 = load i32, i32* @ftr_handle_notify_irq, align 4
  %90 = load i8*, i8** %13, align 8
  %91 = load %struct.gpio_notification*, %struct.gpio_notification** %10, align 8
  %92 = call i32 @request_irq(i32 %88, i32 %89, i32 0, i8* %90, %struct.gpio_notification* %91)
  store i32 %92, i32* %14, align 4
  %93 = load i32, i32* %14, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %87
  br label %104

96:                                               ; preds = %87
  br label %97

97:                                               ; preds = %96, %84, %81
  %98 = load i64, i64* %8, align 8
  %99 = load %struct.gpio_notification*, %struct.gpio_notification** %10, align 8
  %100 = getelementptr inbounds %struct.gpio_notification, %struct.gpio_notification* %99, i32 0, i32 0
  store i64 %98, i64* %100, align 8
  %101 = load i8*, i8** %9, align 8
  %102 = load %struct.gpio_notification*, %struct.gpio_notification** %10, align 8
  %103 = getelementptr inbounds %struct.gpio_notification, %struct.gpio_notification* %102, i32 0, i32 1
  store i8* %101, i8** %103, align 8
  store i32 0, i32* %14, align 4
  br label %104

104:                                              ; preds = %97, %95, %70, %52
  %105 = load %struct.gpio_notification*, %struct.gpio_notification** %10, align 8
  %106 = getelementptr inbounds %struct.gpio_notification, %struct.gpio_notification* %105, i32 0, i32 2
  %107 = call i32 @mutex_unlock(i32* %106)
  %108 = load i32, i32* %14, align 4
  store i32 %108, i32* %5, align 4
  br label %109

109:                                              ; preds = %104, %37, %30
  %110 = load i32, i32* %5, align 4
  ret i32 %110
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @free_irq(i32, %struct.gpio_notification*) #1

declare dso_local i32 @request_irq(i32, i32, i32, i8*, %struct.gpio_notification*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
