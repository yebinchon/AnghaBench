; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/via/extr_lcd.c_load_lcd_p880_patch_tbl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/via/extr_lcd.c_load_lcd_p880_patch_tbl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.io_reg = type { i32 }

@NUM_TOTAL_P880_LCD_RES_6X4_14X10 = common dso_local global i32 0, align 4
@P880_LCD_RES_6X4_14X10 = common dso_local global %struct.io_reg* null, align 8
@NUM_TOTAL_P880_LCD_RES_8X6_14X10 = common dso_local global i32 0, align 4
@P880_LCD_RES_8X6_14X10 = common dso_local global %struct.io_reg* null, align 8
@NUM_TOTAL_P880_LCD_RES_6X4_16X12 = common dso_local global i32 0, align 4
@P880_LCD_RES_6X4_16X12 = common dso_local global %struct.io_reg* null, align 8
@NUM_TOTAL_P880_LCD_RES_7X4_16X12 = common dso_local global i32 0, align 4
@P880_LCD_RES_7X4_16X12 = common dso_local global %struct.io_reg* null, align 8
@NUM_TOTAL_P880_LCD_RES_8X6_16X12 = common dso_local global i32 0, align 4
@P880_LCD_RES_8X6_16X12 = common dso_local global %struct.io_reg* null, align 8
@NUM_TOTAL_P880_LCD_RES_10X7_16X12 = common dso_local global i32 0, align 4
@P880_LCD_RES_10X7_16X12 = common dso_local global %struct.io_reg* null, align 8
@NUM_TOTAL_P880_LCD_RES_12X10_16X12 = common dso_local global i32 0, align 4
@P880_LCD_RES_12X10_16X12 = common dso_local global %struct.io_reg* null, align 8
@CR17 = common dso_local global i32 0, align 4
@VIACR = common dso_local global i32 0, align 4
@BIT7 = common dso_local global i32 0, align 4
@SR40 = common dso_local global i32 0, align 4
@VIASR = common dso_local global i32 0, align 4
@BIT1 = common dso_local global i32 0, align 4
@VIARMisc = common dso_local global i32 0, align 4
@BIT2 = common dso_local global i32 0, align 4
@BIT3 = common dso_local global i32 0, align 4
@VIAWMisc = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32)* @load_lcd_p880_patch_tbl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @load_lcd_p880_patch_tbl(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.io_reg*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %8, align 4
  store %struct.io_reg* null, %struct.io_reg** %9, align 8
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @viafb_get_mode_index(i32 %10, i32 %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %6, align 4
  switch i32 %13, label %41 [
    i32 138, label %14
    i32 137, label %23
  ]

14:                                               ; preds = %3
  %15 = load i32, i32* %7, align 4
  switch i32 %15, label %22 [
    i32 131, label %16
    i32 128, label %19
  ]

16:                                               ; preds = %14
  %17 = load i32, i32* @NUM_TOTAL_P880_LCD_RES_6X4_14X10, align 4
  store i32 %17, i32* %8, align 4
  %18 = load %struct.io_reg*, %struct.io_reg** @P880_LCD_RES_6X4_14X10, align 8
  store %struct.io_reg* %18, %struct.io_reg** %9, align 8
  br label %22

19:                                               ; preds = %14
  %20 = load i32, i32* @NUM_TOTAL_P880_LCD_RES_8X6_14X10, align 4
  store i32 %20, i32* %8, align 4
  %21 = load %struct.io_reg*, %struct.io_reg** @P880_LCD_RES_8X6_14X10, align 8
  store %struct.io_reg* %21, %struct.io_reg** %9, align 8
  br label %22

22:                                               ; preds = %14, %19, %16
  br label %41

23:                                               ; preds = %3
  %24 = load i32, i32* %7, align 4
  switch i32 %24, label %40 [
    i32 132, label %25
    i32 131, label %25
    i32 130, label %28
    i32 129, label %28
    i32 128, label %31
    i32 136, label %34
    i32 134, label %37
    i32 133, label %37
    i32 135, label %37
  ]

25:                                               ; preds = %23, %23
  %26 = load i32, i32* @NUM_TOTAL_P880_LCD_RES_6X4_16X12, align 4
  store i32 %26, i32* %8, align 4
  %27 = load %struct.io_reg*, %struct.io_reg** @P880_LCD_RES_6X4_16X12, align 8
  store %struct.io_reg* %27, %struct.io_reg** %9, align 8
  br label %40

28:                                               ; preds = %23, %23
  %29 = load i32, i32* @NUM_TOTAL_P880_LCD_RES_7X4_16X12, align 4
  store i32 %29, i32* %8, align 4
  %30 = load %struct.io_reg*, %struct.io_reg** @P880_LCD_RES_7X4_16X12, align 8
  store %struct.io_reg* %30, %struct.io_reg** %9, align 8
  br label %40

31:                                               ; preds = %23
  %32 = load i32, i32* @NUM_TOTAL_P880_LCD_RES_8X6_16X12, align 4
  store i32 %32, i32* %8, align 4
  %33 = load %struct.io_reg*, %struct.io_reg** @P880_LCD_RES_8X6_16X12, align 8
  store %struct.io_reg* %33, %struct.io_reg** %9, align 8
  br label %40

34:                                               ; preds = %23
  %35 = load i32, i32* @NUM_TOTAL_P880_LCD_RES_10X7_16X12, align 4
  store i32 %35, i32* %8, align 4
  %36 = load %struct.io_reg*, %struct.io_reg** @P880_LCD_RES_10X7_16X12, align 8
  store %struct.io_reg* %36, %struct.io_reg** %9, align 8
  br label %40

37:                                               ; preds = %23, %23, %23
  %38 = load i32, i32* @NUM_TOTAL_P880_LCD_RES_12X10_16X12, align 4
  store i32 %38, i32* %8, align 4
  %39 = load %struct.io_reg*, %struct.io_reg** @P880_LCD_RES_12X10_16X12, align 8
  store %struct.io_reg* %39, %struct.io_reg** %9, align 8
  br label %40

40:                                               ; preds = %23, %37, %34, %31, %28, %25
  br label %41

41:                                               ; preds = %3, %40, %22
  %42 = load i32, i32* %8, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %72

44:                                               ; preds = %41
  %45 = load i32, i32* @CR17, align 4
  %46 = load i32, i32* @VIACR, align 4
  %47 = load i32, i32* @BIT7, align 4
  %48 = call i32 @viafb_write_reg_mask(i32 %45, i32 %46, i32 0, i32 %47)
  %49 = load %struct.io_reg*, %struct.io_reg** %9, align 8
  %50 = load i32, i32* %8, align 4
  %51 = call i32 @viafb_write_regx(%struct.io_reg* %49, i32 %50)
  %52 = load i32, i32* @CR17, align 4
  %53 = load i32, i32* @VIACR, align 4
  %54 = load i32, i32* @BIT7, align 4
  %55 = call i32 @viafb_write_reg_mask(i32 %52, i32 %53, i32 128, i32 %54)
  %56 = load i32, i32* @SR40, align 4
  %57 = load i32, i32* @VIASR, align 4
  %58 = load i32, i32* @BIT1, align 4
  %59 = call i32 @viafb_write_reg_mask(i32 %56, i32 %57, i32 2, i32 %58)
  %60 = load i32, i32* @SR40, align 4
  %61 = load i32, i32* @VIASR, align 4
  %62 = load i32, i32* @BIT1, align 4
  %63 = call i32 @viafb_write_reg_mask(i32 %60, i32 %61, i32 0, i32 %62)
  %64 = load i32, i32* @VIARMisc, align 4
  %65 = call i32 @inb(i32 %64)
  %66 = load i32, i32* @BIT2, align 4
  %67 = load i32, i32* @BIT3, align 4
  %68 = add nsw i32 %66, %67
  %69 = or i32 %65, %68
  %70 = load i32, i32* @VIAWMisc, align 4
  %71 = call i32 @outb(i32 %69, i32 %70)
  br label %72

72:                                               ; preds = %44, %41
  ret void
}

declare dso_local i32 @viafb_get_mode_index(i32, i32) #1

declare dso_local i32 @viafb_write_reg_mask(i32, i32, i32, i32) #1

declare dso_local i32 @viafb_write_regx(%struct.io_reg*, i32) #1

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i32 @inb(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
