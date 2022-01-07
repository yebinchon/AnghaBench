; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/via/extr_vt1636.c_viafb_disable_lvds_vt1636.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/via/extr_vt1636.c_viafb_disable_lvds_vt1636.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lvds_setting_information = type { i32 }
%struct.lvds_chip_information = type { i32 }

@VDD_OFF_TBL_VT1636 = common dso_local global i32* null, align 8
@SR1E = common dso_local global i32 0, align 4
@VIASR = common dso_local global i32 0, align 4
@SR2A = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @viafb_disable_lvds_vt1636(%struct.lvds_setting_information* %0, %struct.lvds_chip_information* %1) #0 {
  %3 = alloca %struct.lvds_setting_information*, align 8
  %4 = alloca %struct.lvds_chip_information*, align 8
  store %struct.lvds_setting_information* %0, %struct.lvds_setting_information** %3, align 8
  store %struct.lvds_chip_information* %1, %struct.lvds_chip_information** %4, align 8
  %5 = load %struct.lvds_setting_information*, %struct.lvds_setting_information** %3, align 8
  %6 = load %struct.lvds_chip_information*, %struct.lvds_chip_information** %4, align 8
  %7 = load i32*, i32** @VDD_OFF_TBL_VT1636, align 8
  %8 = getelementptr inbounds i32, i32* %7, i64 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @viafb_gpio_i2c_write_mask_lvds(%struct.lvds_setting_information* %5, %struct.lvds_chip_information* %6, i32 %9)
  %11 = load %struct.lvds_chip_information*, %struct.lvds_chip_information** %4, align 8
  %12 = getelementptr inbounds %struct.lvds_chip_information, %struct.lvds_chip_information* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %30 [
    i32 129, label %14
    i32 128, label %18
    i32 130, label %22
    i32 131, label %26
  ]

14:                                               ; preds = %2
  %15 = load i32, i32* @SR1E, align 4
  %16 = load i32, i32* @VIASR, align 4
  %17 = call i32 @viafb_write_reg_mask(i32 %15, i32 %16, i32 0, i32 192)
  br label %30

18:                                               ; preds = %2
  %19 = load i32, i32* @SR1E, align 4
  %20 = load i32, i32* @VIASR, align 4
  %21 = call i32 @viafb_write_reg_mask(i32 %19, i32 %20, i32 0, i32 48)
  br label %30

22:                                               ; preds = %2
  %23 = load i32, i32* @SR2A, align 4
  %24 = load i32, i32* @VIASR, align 4
  %25 = call i32 @viafb_write_reg_mask(i32 %23, i32 %24, i32 0, i32 3)
  br label %30

26:                                               ; preds = %2
  %27 = load i32, i32* @SR2A, align 4
  %28 = load i32, i32* @VIASR, align 4
  %29 = call i32 @viafb_write_reg_mask(i32 %27, i32 %28, i32 0, i32 12)
  br label %30

30:                                               ; preds = %2, %26, %22, %18, %14
  ret void
}

declare dso_local i32 @viafb_gpio_i2c_write_mask_lvds(%struct.lvds_setting_information*, %struct.lvds_chip_information*, i32) #1

declare dso_local i32 @viafb_write_reg_mask(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
