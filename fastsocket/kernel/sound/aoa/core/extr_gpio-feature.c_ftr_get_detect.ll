; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/aoa/core/extr_gpio-feature.c_ftr_get_detect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/aoa/core/extr_gpio-feature.c_ftr_get_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_runtime = type { i32 }

@headphone_detect_gpio = common dso_local global i32 0, align 4
@headphone_detect_gpio_activestate = common dso_local global i32 0, align 4
@linein_detect_gpio = common dso_local global i32 0, align 4
@linein_detect_gpio_activestate = common dso_local global i32 0, align 4
@lineout_detect_gpio = common dso_local global i32 0, align 4
@lineout_detect_gpio_activestate = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@PMAC_FTR_READ_GPIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_runtime*, i32)* @ftr_get_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ftr_get_detect(%struct.gpio_runtime* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gpio_runtime*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.gpio_runtime* %0, %struct.gpio_runtime** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  switch i32 %9, label %19 [
    i32 130, label %10
    i32 129, label %13
    i32 128, label %16
  ]

10:                                               ; preds = %2
  %11 = load i32, i32* @headphone_detect_gpio, align 4
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* @headphone_detect_gpio_activestate, align 4
  store i32 %12, i32* %8, align 4
  br label %22

13:                                               ; preds = %2
  %14 = load i32, i32* @linein_detect_gpio, align 4
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* @linein_detect_gpio_activestate, align 4
  store i32 %15, i32* %8, align 4
  br label %22

16:                                               ; preds = %2
  %17 = load i32, i32* @lineout_detect_gpio, align 4
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* @lineout_detect_gpio_activestate, align 4
  store i32 %18, i32* %8, align 4
  br label %22

19:                                               ; preds = %2
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %43

22:                                               ; preds = %16, %13, %10
  %23 = load i32, i32* %6, align 4
  %24 = icmp eq i32 %23, -1
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = load i32, i32* @ENODEV, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %43

28:                                               ; preds = %22
  %29 = load i32, i32* @PMAC_FTR_READ_GPIO, align 4
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @pmac_call_feature(i32 %29, i32* null, i32 %30, i32 0)
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %28
  %35 = load i32, i32* %7, align 4
  store i32 %35, i32* %3, align 4
  br label %43

36:                                               ; preds = %28
  %37 = load i32, i32* %7, align 4
  %38 = ashr i32 %37, 1
  %39 = and i32 %38, 1
  %40 = load i32, i32* %8, align 4
  %41 = icmp eq i32 %39, %40
  %42 = zext i1 %41 to i32
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %36, %34, %25, %19
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i32 @pmac_call_feature(i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
