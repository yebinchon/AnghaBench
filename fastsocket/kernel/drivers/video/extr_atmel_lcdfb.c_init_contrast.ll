; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_atmel_lcdfb.c_init_contrast.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_atmel_lcdfb.c_init_contrast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atmel_lcdfb_info = type { i64 }

@ATMEL_LCDC_CONTRAST_CTR = common dso_local global i32 0, align 4
@contrast_ctr = common dso_local global i32 0, align 4
@ATMEL_LCDC_CONTRAST_VAL = common dso_local global i32 0, align 4
@ATMEL_LCDC_CVAL_DEFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.atmel_lcdfb_info*)* @init_contrast to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_contrast(%struct.atmel_lcdfb_info* %0) #0 {
  %2 = alloca %struct.atmel_lcdfb_info*, align 8
  store %struct.atmel_lcdfb_info* %0, %struct.atmel_lcdfb_info** %2, align 8
  %3 = load %struct.atmel_lcdfb_info*, %struct.atmel_lcdfb_info** %2, align 8
  %4 = load i32, i32* @ATMEL_LCDC_CONTRAST_CTR, align 4
  %5 = load i32, i32* @contrast_ctr, align 4
  %6 = call i32 @lcdc_writel(%struct.atmel_lcdfb_info* %3, i32 %4, i32 %5)
  %7 = load %struct.atmel_lcdfb_info*, %struct.atmel_lcdfb_info** %2, align 8
  %8 = load i32, i32* @ATMEL_LCDC_CONTRAST_VAL, align 4
  %9 = load i32, i32* @ATMEL_LCDC_CVAL_DEFAULT, align 4
  %10 = call i32 @lcdc_writel(%struct.atmel_lcdfb_info* %7, i32 %8, i32 %9)
  %11 = load %struct.atmel_lcdfb_info*, %struct.atmel_lcdfb_info** %2, align 8
  %12 = getelementptr inbounds %struct.atmel_lcdfb_info, %struct.atmel_lcdfb_info* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load %struct.atmel_lcdfb_info*, %struct.atmel_lcdfb_info** %2, align 8
  %17 = call i32 @init_backlight(%struct.atmel_lcdfb_info* %16)
  br label %18

18:                                               ; preds = %15, %1
  ret void
}

declare dso_local i32 @lcdc_writel(%struct.atmel_lcdfb_info*, i32, i32) #1

declare dso_local i32 @init_backlight(%struct.atmel_lcdfb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
