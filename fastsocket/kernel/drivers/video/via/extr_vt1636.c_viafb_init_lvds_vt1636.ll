; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/via/extr_vt1636.c_viafb_init_lvds_vt1636.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/via/extr_vt1636.c_viafb_init_lvds_vt1636.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lvds_setting_information = type { i64, i64 }
%struct.lvds_chip_information = type { i32 }

@COMMON_INIT_TBL_VT1636 = common dso_local global i32* null, align 8
@DUAL_CHANNEL_ENABLE_TBL_VT1636 = common dso_local global i32* null, align 8
@SINGLE_CHANNEL_ENABLE_TBL_VT1636 = common dso_local global i32* null, align 8
@DITHERING_ENABLE_TBL_VT1636 = common dso_local global i32* null, align 8
@DITHERING_DISABLE_TBL_VT1636 = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @viafb_init_lvds_vt1636(%struct.lvds_setting_information* %0, %struct.lvds_chip_information* %1) #0 {
  %3 = alloca %struct.lvds_setting_information*, align 8
  %4 = alloca %struct.lvds_chip_information*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.lvds_setting_information* %0, %struct.lvds_setting_information** %3, align 8
  store %struct.lvds_chip_information* %1, %struct.lvds_chip_information** %4, align 8
  %7 = load i32*, i32** @COMMON_INIT_TBL_VT1636, align 8
  %8 = call i32 @ARRAY_SIZE(i32* %7)
  store i32 %8, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %9

9:                                                ; preds = %22, %2
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %25

13:                                               ; preds = %9
  %14 = load %struct.lvds_setting_information*, %struct.lvds_setting_information** %3, align 8
  %15 = load %struct.lvds_chip_information*, %struct.lvds_chip_information** %4, align 8
  %16 = load i32*, i32** @COMMON_INIT_TBL_VT1636, align 8
  %17 = load i32, i32* %6, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @viafb_gpio_i2c_write_mask_lvds(%struct.lvds_setting_information* %14, %struct.lvds_chip_information* %15, i32 %20)
  br label %22

22:                                               ; preds = %13
  %23 = load i32, i32* %6, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %6, align 4
  br label %9

25:                                               ; preds = %9
  %26 = load %struct.lvds_setting_information*, %struct.lvds_setting_information** %3, align 8
  %27 = getelementptr inbounds %struct.lvds_setting_information, %struct.lvds_setting_information* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %25
  %31 = load %struct.lvds_setting_information*, %struct.lvds_setting_information** %3, align 8
  %32 = load %struct.lvds_chip_information*, %struct.lvds_chip_information** %4, align 8
  %33 = load i32*, i32** @DUAL_CHANNEL_ENABLE_TBL_VT1636, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @viafb_gpio_i2c_write_mask_lvds(%struct.lvds_setting_information* %31, %struct.lvds_chip_information* %32, i32 %35)
  br label %44

37:                                               ; preds = %25
  %38 = load %struct.lvds_setting_information*, %struct.lvds_setting_information** %3, align 8
  %39 = load %struct.lvds_chip_information*, %struct.lvds_chip_information** %4, align 8
  %40 = load i32*, i32** @SINGLE_CHANNEL_ENABLE_TBL_VT1636, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @viafb_gpio_i2c_write_mask_lvds(%struct.lvds_setting_information* %38, %struct.lvds_chip_information* %39, i32 %42)
  br label %44

44:                                               ; preds = %37, %30
  %45 = load %struct.lvds_setting_information*, %struct.lvds_setting_information** %3, align 8
  %46 = getelementptr inbounds %struct.lvds_setting_information, %struct.lvds_setting_information* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %44
  %50 = load %struct.lvds_setting_information*, %struct.lvds_setting_information** %3, align 8
  %51 = load %struct.lvds_chip_information*, %struct.lvds_chip_information** %4, align 8
  %52 = load i32*, i32** @DITHERING_ENABLE_TBL_VT1636, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @viafb_gpio_i2c_write_mask_lvds(%struct.lvds_setting_information* %50, %struct.lvds_chip_information* %51, i32 %54)
  br label %63

56:                                               ; preds = %44
  %57 = load %struct.lvds_setting_information*, %struct.lvds_setting_information** %3, align 8
  %58 = load %struct.lvds_chip_information*, %struct.lvds_chip_information** %4, align 8
  %59 = load i32*, i32** @DITHERING_DISABLE_TBL_VT1636, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @viafb_gpio_i2c_write_mask_lvds(%struct.lvds_setting_information* %57, %struct.lvds_chip_information* %58, i32 %61)
  br label %63

63:                                               ; preds = %56, %49
  ret void
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @viafb_gpio_i2c_write_mask_lvds(%struct.lvds_setting_information*, %struct.lvds_chip_information*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
