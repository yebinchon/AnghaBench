; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/aty/extr_mach64_ct.c_aty_st_pll_ct.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/aty/extr_mach64_ct.c_aty_st_pll_ct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atyfb_par = type { i32 }

@CLOCK_CNTL_ADDR = common dso_local global i32 0, align 4
@PLL_ADDR = common dso_local global i32 0, align 4
@PLL_WR_EN = common dso_local global i32 0, align 4
@CLOCK_CNTL_DATA = common dso_local global i32 0, align 4
@PLL_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, %struct.atyfb_par*)* @aty_st_pll_ct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aty_st_pll_ct(i32 %0, i32 %1, %struct.atyfb_par* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.atyfb_par*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store %struct.atyfb_par* %2, %struct.atyfb_par** %6, align 8
  %7 = load i32, i32* @CLOCK_CNTL_ADDR, align 4
  %8 = load i32, i32* %4, align 4
  %9 = shl i32 %8, 2
  %10 = load i32, i32* @PLL_ADDR, align 4
  %11 = and i32 %9, %10
  %12 = load i32, i32* @PLL_WR_EN, align 4
  %13 = or i32 %11, %12
  %14 = load %struct.atyfb_par*, %struct.atyfb_par** %6, align 8
  %15 = call i32 @aty_st_8(i32 %7, i32 %13, %struct.atyfb_par* %14)
  %16 = load i32, i32* @CLOCK_CNTL_DATA, align 4
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @PLL_DATA, align 4
  %19 = and i32 %17, %18
  %20 = load %struct.atyfb_par*, %struct.atyfb_par** %6, align 8
  %21 = call i32 @aty_st_8(i32 %16, i32 %19, %struct.atyfb_par* %20)
  %22 = load i32, i32* @CLOCK_CNTL_ADDR, align 4
  %23 = load i32, i32* %4, align 4
  %24 = shl i32 %23, 2
  %25 = load i32, i32* @PLL_ADDR, align 4
  %26 = and i32 %24, %25
  %27 = load i32, i32* @PLL_WR_EN, align 4
  %28 = xor i32 %27, -1
  %29 = and i32 %26, %28
  %30 = load %struct.atyfb_par*, %struct.atyfb_par** %6, align 8
  %31 = call i32 @aty_st_8(i32 %22, i32 %29, %struct.atyfb_par* %30)
  ret void
}

declare dso_local i32 @aty_st_8(i32, i32, %struct.atyfb_par*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
