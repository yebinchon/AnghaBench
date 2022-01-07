; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/aty/extr_mach64_gx.c_aty_set_pll_408.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/aty/extr_mach64_gx.c_aty_set_pll_408.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i64 }
%union.aty_pll = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.atyfb_par = type { i32 }

@CRTC_GEN_CNTL = common dso_local global i64 0, align 8
@CRTC_EXT_DISP_EN = common dso_local global i32 0, align 4
@DAC_REGS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fb_info*, %union.aty_pll*)* @aty_set_pll_408 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aty_set_pll_408(%struct.fb_info* %0, %union.aty_pll* %1) #0 {
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca %union.aty_pll*, align 8
  %5 = alloca %struct.atyfb_par*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  store %struct.fb_info* %0, %struct.fb_info** %3, align 8
  store %union.aty_pll* %1, %union.aty_pll** %4, align 8
  %12 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %13 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.atyfb_par*
  store %struct.atyfb_par* %15, %struct.atyfb_par** %5, align 8
  %16 = load i64, i64* @CRTC_GEN_CNTL, align 8
  %17 = add nsw i64 %16, 3
  %18 = load %struct.atyfb_par*, %struct.atyfb_par** %5, align 8
  %19 = call i32 @aty_ld_8(i64 %17, %struct.atyfb_par* %18)
  %20 = trunc i32 %19 to i8
  store i8 %20, i8* %11, align 1
  %21 = load i64, i64* @CRTC_GEN_CNTL, align 8
  %22 = add nsw i64 %21, 3
  %23 = load i8, i8* %11, align 1
  %24 = sext i8 %23 to i32
  %25 = load i32, i32* @CRTC_EXT_DISP_EN, align 4
  %26 = ashr i32 %25, 24
  %27 = or i32 %24, %26
  %28 = trunc i32 %27 to i8
  %29 = load %struct.atyfb_par*, %struct.atyfb_par** %5, align 8
  %30 = call i32 @aty_st_8(i64 %22, i8 signext %28, %struct.atyfb_par* %29)
  %31 = load %union.aty_pll*, %union.aty_pll** %4, align 8
  %32 = bitcast %union.aty_pll* %31 to %struct.TYPE_2__*
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %6, align 4
  %35 = load %union.aty_pll*, %union.aty_pll** %4, align 8
  %36 = bitcast %union.aty_pll* %35 to %struct.TYPE_2__*
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %7, align 4
  %39 = load %struct.atyfb_par*, %struct.atyfb_par** %5, align 8
  %40 = call i32 @aty_dac_waste4(%struct.atyfb_par* %39)
  %41 = load i64, i64* @DAC_REGS, align 8
  %42 = add nsw i64 %41, 2
  %43 = load %struct.atyfb_par*, %struct.atyfb_par** %5, align 8
  %44 = call i32 @aty_ld_8(i64 %42, %struct.atyfb_par* %43)
  %45 = or i32 %44, 1
  store i32 %45, i32* %9, align 4
  %46 = load %struct.atyfb_par*, %struct.atyfb_par** %5, align 8
  %47 = call i32 @aty_dac_waste4(%struct.atyfb_par* %46)
  %48 = load i64, i64* @DAC_REGS, align 8
  %49 = add nsw i64 %48, 2
  %50 = load i32, i32* %9, align 4
  %51 = trunc i32 %50 to i8
  %52 = load %struct.atyfb_par*, %struct.atyfb_par** %5, align 8
  %53 = call i32 @aty_st_8(i64 %49, i8 signext %51, %struct.atyfb_par* %52)
  %54 = load i32, i32* %9, align 4
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %8, align 4
  store i32 %55, i32* %10, align 4
  %56 = load i32, i32* %8, align 4
  %57 = or i32 %56, 8
  store i32 %57, i32* %8, align 4
  store i32 1, i32* %9, align 4
  %58 = load i64, i64* @DAC_REGS, align 8
  %59 = load i32, i32* %9, align 4
  %60 = trunc i32 %59 to i8
  %61 = load %struct.atyfb_par*, %struct.atyfb_par** %5, align 8
  %62 = call i32 @aty_st_8(i64 %58, i8 signext %60, %struct.atyfb_par* %61)
  %63 = load i64, i64* @DAC_REGS, align 8
  %64 = add nsw i64 %63, 2
  %65 = load i32, i32* %8, align 4
  %66 = trunc i32 %65 to i8
  %67 = load %struct.atyfb_par*, %struct.atyfb_par** %5, align 8
  %68 = call i32 @aty_st_8(i64 %64, i8 signext %66, %struct.atyfb_par* %67)
  %69 = call i32 @udelay(i32 400)
  %70 = load i32, i32* %7, align 4
  %71 = shl i32 %70, 2
  %72 = add nsw i32 %71, 64
  store i32 %72, i32* %7, align 4
  %73 = load i32, i32* %7, align 4
  store i32 %73, i32* %9, align 4
  %74 = load i32, i32* %6, align 4
  %75 = ashr i32 %74, 8
  store i32 %75, i32* %8, align 4
  %76 = load i64, i64* @DAC_REGS, align 8
  %77 = load i32, i32* %9, align 4
  %78 = trunc i32 %77 to i8
  %79 = load %struct.atyfb_par*, %struct.atyfb_par** %5, align 8
  %80 = call i32 @aty_st_8(i64 %76, i8 signext %78, %struct.atyfb_par* %79)
  %81 = load i64, i64* @DAC_REGS, align 8
  %82 = add nsw i64 %81, 2
  %83 = load i32, i32* %8, align 4
  %84 = trunc i32 %83 to i8
  %85 = load %struct.atyfb_par*, %struct.atyfb_par** %5, align 8
  %86 = call i32 @aty_st_8(i64 %82, i8 signext %84, %struct.atyfb_par* %85)
  %87 = load i32, i32* %7, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %9, align 4
  %89 = load i32, i32* %6, align 4
  store i32 %89, i32* %8, align 4
  %90 = load i64, i64* @DAC_REGS, align 8
  %91 = load i32, i32* %9, align 4
  %92 = trunc i32 %91 to i8
  %93 = load %struct.atyfb_par*, %struct.atyfb_par** %5, align 8
  %94 = call i32 @aty_st_8(i64 %90, i8 signext %92, %struct.atyfb_par* %93)
  %95 = load i64, i64* @DAC_REGS, align 8
  %96 = add nsw i64 %95, 2
  %97 = load i32, i32* %8, align 4
  %98 = trunc i32 %97 to i8
  %99 = load %struct.atyfb_par*, %struct.atyfb_par** %5, align 8
  %100 = call i32 @aty_st_8(i64 %96, i8 signext %98, %struct.atyfb_par* %99)
  %101 = load i32, i32* %7, align 4
  %102 = add nsw i32 %101, 2
  store i32 %102, i32* %9, align 4
  store i32 119, i32* %8, align 4
  %103 = load i64, i64* @DAC_REGS, align 8
  %104 = load i32, i32* %9, align 4
  %105 = trunc i32 %104 to i8
  %106 = load %struct.atyfb_par*, %struct.atyfb_par** %5, align 8
  %107 = call i32 @aty_st_8(i64 %103, i8 signext %105, %struct.atyfb_par* %106)
  %108 = load i64, i64* @DAC_REGS, align 8
  %109 = add nsw i64 %108, 2
  %110 = load i32, i32* %8, align 4
  %111 = trunc i32 %110 to i8
  %112 = load %struct.atyfb_par*, %struct.atyfb_par** %5, align 8
  %113 = call i32 @aty_st_8(i64 %109, i8 signext %111, %struct.atyfb_par* %112)
  %114 = call i32 @udelay(i32 400)
  %115 = load i32, i32* %10, align 4
  %116 = and i32 %115, -10
  store i32 %116, i32* %8, align 4
  store i32 1, i32* %9, align 4
  %117 = load i64, i64* @DAC_REGS, align 8
  %118 = load i32, i32* %9, align 4
  %119 = trunc i32 %118 to i8
  %120 = load %struct.atyfb_par*, %struct.atyfb_par** %5, align 8
  %121 = call i32 @aty_st_8(i64 %117, i8 signext %119, %struct.atyfb_par* %120)
  %122 = load i64, i64* @DAC_REGS, align 8
  %123 = add nsw i64 %122, 2
  %124 = load i32, i32* %8, align 4
  %125 = trunc i32 %124 to i8
  %126 = load %struct.atyfb_par*, %struct.atyfb_par** %5, align 8
  %127 = call i32 @aty_st_8(i64 %123, i8 signext %125, %struct.atyfb_par* %126)
  %128 = load i64, i64* @DAC_REGS, align 8
  %129 = load %struct.atyfb_par*, %struct.atyfb_par** %5, align 8
  %130 = call i32 @aty_ld_8(i64 %128, %struct.atyfb_par* %129)
  %131 = load i64, i64* @CRTC_GEN_CNTL, align 8
  %132 = add nsw i64 %131, 3
  %133 = load i8, i8* %11, align 1
  %134 = load %struct.atyfb_par*, %struct.atyfb_par** %5, align 8
  %135 = call i32 @aty_st_8(i64 %132, i8 signext %133, %struct.atyfb_par* %134)
  ret void
}

declare dso_local i32 @aty_ld_8(i64, %struct.atyfb_par*) #1

declare dso_local i32 @aty_st_8(i64, i8 signext, %struct.atyfb_par*) #1

declare dso_local i32 @aty_dac_waste4(%struct.atyfb_par*) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
