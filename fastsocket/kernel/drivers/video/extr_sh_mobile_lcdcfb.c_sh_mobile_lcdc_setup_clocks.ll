; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_sh_mobile_lcdcfb.c_sh_mobile_lcdc_setup_clocks.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_sh_mobile_lcdcfb.c_sh_mobile_lcdc_setup_clocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.sh_mobile_lcdc_priv = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c"bus_clk\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"peripheral_clk\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"cannot get dot clock %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*, i32, %struct.sh_mobile_lcdc_priv*)* @sh_mobile_lcdc_setup_clocks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sh_mobile_lcdc_setup_clocks(%struct.platform_device* %0, i32 %1, %struct.sh_mobile_lcdc_priv* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.platform_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sh_mobile_lcdc_priv*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.sh_mobile_lcdc_priv* %2, %struct.sh_mobile_lcdc_priv** %7, align 8
  %10 = load i32, i32* %6, align 4
  switch i32 %10, label %14 [
    i32 130, label %11
    i32 128, label %12
    i32 129, label %13
  ]

11:                                               ; preds = %3
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  store i32 0, i32* %9, align 4
  br label %17

12:                                               ; preds = %3
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8** %8, align 8
  store i32 1, i32* %9, align 4
  br label %17

13:                                               ; preds = %3
  store i8* null, i8** %8, align 8
  store i32 2, i32* %9, align 4
  br label %17

14:                                               ; preds = %3
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %58

17:                                               ; preds = %13, %12, %11
  %18 = load i32, i32* %9, align 4
  %19 = shl i32 %18, 16
  %20 = load %struct.sh_mobile_lcdc_priv*, %struct.sh_mobile_lcdc_priv** %7, align 8
  %21 = getelementptr inbounds %struct.sh_mobile_lcdc_priv, %struct.sh_mobile_lcdc_priv* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  %22 = load i8*, i8** %8, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %46

24:                                               ; preds = %17
  %25 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %26 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %25, i32 0, i32 0
  %27 = load i8*, i8** %8, align 8
  %28 = call i32 @clk_get(i32* %26, i8* %27)
  %29 = load %struct.sh_mobile_lcdc_priv*, %struct.sh_mobile_lcdc_priv** %7, align 8
  %30 = getelementptr inbounds %struct.sh_mobile_lcdc_priv, %struct.sh_mobile_lcdc_priv* %29, i32 0, i32 3
  store i32 %28, i32* %30, align 4
  %31 = load %struct.sh_mobile_lcdc_priv*, %struct.sh_mobile_lcdc_priv** %7, align 8
  %32 = getelementptr inbounds %struct.sh_mobile_lcdc_priv, %struct.sh_mobile_lcdc_priv* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @IS_ERR(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %24
  %37 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %38 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %37, i32 0, i32 0
  %39 = load i8*, i8** %8, align 8
  %40 = call i32 @dev_err(i32* %38, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i8* %39)
  %41 = load %struct.sh_mobile_lcdc_priv*, %struct.sh_mobile_lcdc_priv** %7, align 8
  %42 = getelementptr inbounds %struct.sh_mobile_lcdc_priv, %struct.sh_mobile_lcdc_priv* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @PTR_ERR(i32 %43)
  store i32 %44, i32* %4, align 4
  br label %58

45:                                               ; preds = %24
  br label %46

46:                                               ; preds = %45, %17
  %47 = load %struct.sh_mobile_lcdc_priv*, %struct.sh_mobile_lcdc_priv** %7, align 8
  %48 = getelementptr inbounds %struct.sh_mobile_lcdc_priv, %struct.sh_mobile_lcdc_priv* %47, i32 0, i32 2
  %49 = call i32 @atomic_set(i32* %48, i32 -1)
  %50 = load %struct.sh_mobile_lcdc_priv*, %struct.sh_mobile_lcdc_priv** %7, align 8
  %51 = getelementptr inbounds %struct.sh_mobile_lcdc_priv, %struct.sh_mobile_lcdc_priv* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @pm_runtime_enable(i32 %52)
  %54 = load %struct.sh_mobile_lcdc_priv*, %struct.sh_mobile_lcdc_priv** %7, align 8
  %55 = getelementptr inbounds %struct.sh_mobile_lcdc_priv, %struct.sh_mobile_lcdc_priv* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @pm_runtime_resume(i32 %56)
  store i32 0, i32* %4, align 4
  br label %58

58:                                               ; preds = %46, %36, %14
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local i32 @clk_get(i32*, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i8*) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @pm_runtime_enable(i32) #1

declare dso_local i32 @pm_runtime_resume(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
