; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/aty/extr_mach64_gx.c_aty_set_pll_1703.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/aty/extr_mach64_gx.c_aty_set_pll_1703.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i64 }
%union.aty_pll = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.atyfb_par = type { i32 }

@CRTC_GEN_CNTL = common dso_local global i64 0, align 8
@CRTC_EXT_DISP_EN = common dso_local global i32 0, align 4
@DAC_REGS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fb_info*, %union.aty_pll*)* @aty_set_pll_1703 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aty_set_pll_1703(%struct.fb_info* %0, %union.aty_pll* %1) #0 {
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca %union.aty_pll*, align 8
  %5 = alloca %struct.atyfb_par*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  store %struct.fb_info* %0, %struct.fb_info** %3, align 8
  store %union.aty_pll* %1, %union.aty_pll** %4, align 8
  %9 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %10 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.atyfb_par*
  store %struct.atyfb_par* %12, %struct.atyfb_par** %5, align 8
  %13 = load i64, i64* @CRTC_GEN_CNTL, align 8
  %14 = add nsw i64 %13, 3
  %15 = load %struct.atyfb_par*, %struct.atyfb_par** %5, align 8
  %16 = call signext i8 @aty_ld_8(i64 %14, %struct.atyfb_par* %15)
  store i8 %16, i8* %8, align 1
  %17 = load i64, i64* @CRTC_GEN_CNTL, align 8
  %18 = add nsw i64 %17, 3
  %19 = load i8, i8* %8, align 1
  %20 = sext i8 %19 to i32
  %21 = load i32, i32* @CRTC_EXT_DISP_EN, align 4
  %22 = ashr i32 %21, 24
  %23 = or i32 %20, %22
  %24 = trunc i32 %23 to i8
  %25 = load %struct.atyfb_par*, %struct.atyfb_par** %5, align 8
  %26 = call i32 @aty_st_8(i64 %18, i8 signext %24, %struct.atyfb_par* %25)
  %27 = load %union.aty_pll*, %union.aty_pll** %4, align 8
  %28 = bitcast %union.aty_pll* %27 to %struct.TYPE_2__*
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %6, align 4
  %31 = load %union.aty_pll*, %union.aty_pll** %4, align 8
  %32 = bitcast %union.aty_pll* %31 to %struct.TYPE_2__*
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %7, align 4
  %35 = load %struct.atyfb_par*, %struct.atyfb_par** %5, align 8
  %36 = call i32 @aty_dac_waste4(%struct.atyfb_par* %35)
  %37 = load i64, i64* @DAC_REGS, align 8
  %38 = add nsw i64 %37, 2
  %39 = load %struct.atyfb_par*, %struct.atyfb_par** %5, align 8
  %40 = call signext i8 @aty_ld_8(i64 %38, %struct.atyfb_par* %39)
  %41 = load i64, i64* @DAC_REGS, align 8
  %42 = add nsw i64 %41, 2
  %43 = load i32, i32* %7, align 4
  %44 = shl i32 %43, 1
  %45 = add nsw i32 %44, 32
  %46 = trunc i32 %45 to i8
  %47 = load %struct.atyfb_par*, %struct.atyfb_par** %5, align 8
  %48 = call i32 @aty_st_8(i64 %42, i8 signext %46, %struct.atyfb_par* %47)
  %49 = load i64, i64* @DAC_REGS, align 8
  %50 = add nsw i64 %49, 2
  %51 = load %struct.atyfb_par*, %struct.atyfb_par** %5, align 8
  %52 = call i32 @aty_st_8(i64 %50, i8 signext 0, %struct.atyfb_par* %51)
  %53 = load i64, i64* @DAC_REGS, align 8
  %54 = add nsw i64 %53, 2
  %55 = load i32, i32* %6, align 4
  %56 = and i32 %55, 65280
  %57 = ashr i32 %56, 8
  %58 = trunc i32 %57 to i8
  %59 = load %struct.atyfb_par*, %struct.atyfb_par** %5, align 8
  %60 = call i32 @aty_st_8(i64 %54, i8 signext %58, %struct.atyfb_par* %59)
  %61 = load i64, i64* @DAC_REGS, align 8
  %62 = add nsw i64 %61, 2
  %63 = load i32, i32* %6, align 4
  %64 = and i32 %63, 255
  %65 = trunc i32 %64 to i8
  %66 = load %struct.atyfb_par*, %struct.atyfb_par** %5, align 8
  %67 = call i32 @aty_st_8(i64 %62, i8 signext %65, %struct.atyfb_par* %66)
  %68 = load i64, i64* @DAC_REGS, align 8
  %69 = load %struct.atyfb_par*, %struct.atyfb_par** %5, align 8
  %70 = call signext i8 @aty_ld_8(i64 %68, %struct.atyfb_par* %69)
  %71 = load i64, i64* @CRTC_GEN_CNTL, align 8
  %72 = add nsw i64 %71, 3
  %73 = load i8, i8* %8, align 1
  %74 = load %struct.atyfb_par*, %struct.atyfb_par** %5, align 8
  %75 = call i32 @aty_st_8(i64 %72, i8 signext %73, %struct.atyfb_par* %74)
  ret void
}

declare dso_local signext i8 @aty_ld_8(i64, %struct.atyfb_par*) #1

declare dso_local i32 @aty_st_8(i64, i8 signext, %struct.atyfb_par*) #1

declare dso_local i32 @aty_dac_waste4(%struct.atyfb_par*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
