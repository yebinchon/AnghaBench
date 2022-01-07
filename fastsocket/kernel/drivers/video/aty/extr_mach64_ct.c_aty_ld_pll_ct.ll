; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/aty/extr_mach64_ct.c_aty_ld_pll_ct.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/aty/extr_mach64_ct.c_aty_ld_pll_ct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atyfb_par = type { i32 }

@CLOCK_CNTL_ADDR = common dso_local global i32 0, align 4
@PLL_ADDR = common dso_local global i32 0, align 4
@CLOCK_CNTL_DATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @aty_ld_pll_ct(i32 %0, %struct.atyfb_par* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.atyfb_par*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.atyfb_par* %1, %struct.atyfb_par** %4, align 8
  %6 = load i32, i32* @CLOCK_CNTL_ADDR, align 4
  %7 = load i32, i32* %3, align 4
  %8 = shl i32 %7, 2
  %9 = load i32, i32* @PLL_ADDR, align 4
  %10 = and i32 %8, %9
  %11 = load %struct.atyfb_par*, %struct.atyfb_par** %4, align 8
  %12 = call i32 @aty_st_8(i32 %6, i32 %10, %struct.atyfb_par* %11)
  %13 = load i32, i32* @CLOCK_CNTL_DATA, align 4
  %14 = load %struct.atyfb_par*, %struct.atyfb_par** %4, align 8
  %15 = call i32 @aty_ld_8(i32 %13, %struct.atyfb_par* %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  ret i32 %16
}

declare dso_local i32 @aty_st_8(i32, i32, %struct.atyfb_par*) #1

declare dso_local i32 @aty_ld_8(i32, %struct.atyfb_par*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
