; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/mbx/extr_mbxfb.c_mbxfb_blank.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/mbx/extr_mbxfb.c_mbxfb_blank.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i32 }

@DSCTRL = common dso_local global i32 0, align 4
@DSCTRL_SYNCGEN_EN = common dso_local global i32 0, align 4
@PIXCLK = common dso_local global i32 0, align 4
@PIXCLK_EN = common dso_local global i32 0, align 4
@VOVRCLK = common dso_local global i32 0, align 4
@VOVRCLK_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.fb_info*)* @mbxfb_blank to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mbxfb_blank(i32 %0, %struct.fb_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fb_info*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.fb_info* %1, %struct.fb_info** %4, align 8
  %5 = load i32, i32* %3, align 4
  switch i32 %5, label %41 [
    i32 130, label %6
    i32 128, label %6
    i32 132, label %6
    i32 131, label %6
    i32 129, label %28
  ]

6:                                                ; preds = %2, %2, %2, %2
  %7 = load i32, i32* @DSCTRL, align 4
  %8 = call i32 @readl(i32 %7)
  %9 = load i32, i32* @DSCTRL_SYNCGEN_EN, align 4
  %10 = xor i32 %9, -1
  %11 = and i32 %8, %10
  %12 = load i32, i32* @DSCTRL, align 4
  %13 = call i32 @write_reg_dly(i32 %11, i32 %12)
  %14 = load i32, i32* @PIXCLK, align 4
  %15 = call i32 @readl(i32 %14)
  %16 = load i32, i32* @PIXCLK_EN, align 4
  %17 = xor i32 %16, -1
  %18 = and i32 %15, %17
  %19 = load i32, i32* @PIXCLK, align 4
  %20 = call i32 @write_reg_dly(i32 %18, i32 %19)
  %21 = load i32, i32* @VOVRCLK, align 4
  %22 = call i32 @readl(i32 %21)
  %23 = load i32, i32* @VOVRCLK_EN, align 4
  %24 = xor i32 %23, -1
  %25 = and i32 %22, %24
  %26 = load i32, i32* @VOVRCLK, align 4
  %27 = call i32 @write_reg_dly(i32 %25, i32 %26)
  br label %41

28:                                               ; preds = %2
  %29 = load i32, i32* @DSCTRL, align 4
  %30 = call i32 @readl(i32 %29)
  %31 = load i32, i32* @DSCTRL_SYNCGEN_EN, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @DSCTRL, align 4
  %34 = call i32 @write_reg_dly(i32 %32, i32 %33)
  %35 = load i32, i32* @PIXCLK, align 4
  %36 = call i32 @readl(i32 %35)
  %37 = load i32, i32* @PIXCLK_EN, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @PIXCLK, align 4
  %40 = call i32 @write_reg_dly(i32 %38, i32 %39)
  br label %41

41:                                               ; preds = %2, %28, %6
  ret i32 0
}

declare dso_local i32 @write_reg_dly(i32, i32) #1

declare dso_local i32 @readl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
