; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/backlight/extr_cr_bllcd.c_cr_panel_on.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/backlight/extr_cr_bllcd.c_cr_panel_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@gpio_bar = common dso_local global i32 0, align 4
@CRVML_PANEL_PORT = common dso_local global i32 0, align 4
@CRVML_PANEL_ON = common dso_local global i32 0, align 4
@CRVML_LVDS_ON = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @cr_panel_on to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cr_panel_on() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @gpio_bar, align 4
  %4 = load i32, i32* @CRVML_PANEL_PORT, align 4
  %5 = add nsw i32 %3, %4
  store i32 %5, i32* %1, align 4
  %6 = load i32, i32* %1, align 4
  %7 = call i32 @inl(i32 %6)
  store i32 %7, i32* %2, align 4
  %8 = load i32, i32* %2, align 4
  %9 = load i32, i32* @CRVML_PANEL_ON, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %34, label %12

12:                                               ; preds = %0
  %13 = load i32, i32* %2, align 4
  %14 = and i32 %13, 1
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %24

16:                                               ; preds = %12
  %17 = load i32, i32* @CRVML_LVDS_ON, align 4
  %18 = xor i32 %17, -1
  %19 = load i32, i32* %2, align 4
  %20 = and i32 %19, %18
  store i32 %20, i32* %2, align 4
  %21 = load i32, i32* %2, align 4
  %22 = load i32, i32* %1, align 4
  %23 = call i32 @outl(i32 %21, i32 %22)
  br label %24

24:                                               ; preds = %16, %12
  %25 = load i32, i32* @HZ, align 4
  %26 = sdiv i32 %25, 10
  %27 = call i32 @schedule_timeout(i32 %26)
  %28 = load i32, i32* @CRVML_PANEL_ON, align 4
  %29 = load i32, i32* %2, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %2, align 4
  %31 = load i32, i32* %2, align 4
  %32 = load i32, i32* %1, align 4
  %33 = call i32 @outl(i32 %31, i32 %32)
  br label %34

34:                                               ; preds = %24, %0
  %35 = load i32, i32* %2, align 4
  %36 = load i32, i32* @CRVML_LVDS_ON, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %48, label %39

39:                                               ; preds = %34
  %40 = load i32, i32* @HZ, align 4
  %41 = sdiv i32 %40, 10
  %42 = call i32 @schedule_timeout(i32 %41)
  %43 = load i32, i32* %2, align 4
  %44 = load i32, i32* @CRVML_LVDS_ON, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* %1, align 4
  %47 = call i32 @outl(i32 %45, i32 %46)
  br label %48

48:                                               ; preds = %39, %34
  ret void
}

declare dso_local i32 @inl(i32) #1

declare dso_local i32 @outl(i32, i32) #1

declare dso_local i32 @schedule_timeout(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
