; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/aty/extr_mach64_gx.c_aty_set_pll18818.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/aty/extr_mach64_gx.c_aty_set_pll18818.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i64 }
%union.aty_pll = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.atyfb_par = type { i64 }

@CLOCK_CNTL = common dso_local global i64 0, align 8
@CRTC_GEN_CNTL = common dso_local global i64 0, align 8
@CRTC_EXT_DISP_EN = common dso_local global i32 0, align 4
@DAC_REGS = common dso_local global i64 0, align 8
@CLOCK_STROBE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fb_info*, %union.aty_pll*)* @aty_set_pll18818 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aty_set_pll18818(%struct.fb_info* %0, %union.aty_pll* %1) #0 {
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca %union.aty_pll*, align 8
  %5 = alloca %struct.atyfb_par*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.fb_info* %0, %struct.fb_info** %3, align 8
  store %union.aty_pll* %1, %union.aty_pll** %4, align 8
  %11 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %12 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.atyfb_par*
  store %struct.atyfb_par* %14, %struct.atyfb_par** %5, align 8
  %15 = load i64, i64* @CLOCK_CNTL, align 8
  %16 = load %struct.atyfb_par*, %struct.atyfb_par** %5, align 8
  %17 = call i32 @aty_ld_8(i64 %15, %struct.atyfb_par* %16)
  store i32 %17, i32* %9, align 4
  %18 = load i64, i64* @CLOCK_CNTL, align 8
  %19 = load %struct.atyfb_par*, %struct.atyfb_par** %5, align 8
  %20 = getelementptr inbounds %struct.atyfb_par, %struct.atyfb_par* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = add nsw i64 %18, %21
  %23 = load %struct.atyfb_par*, %struct.atyfb_par** %5, align 8
  %24 = call i32 @aty_st_8(i64 %22, i32 0, %struct.atyfb_par* %23)
  %25 = load i64, i64* @CRTC_GEN_CNTL, align 8
  %26 = add nsw i64 %25, 3
  %27 = load %struct.atyfb_par*, %struct.atyfb_par** %5, align 8
  %28 = call i32 @aty_ld_8(i64 %26, %struct.atyfb_par* %27)
  store i32 %28, i32* %10, align 4
  %29 = load i64, i64* @CRTC_GEN_CNTL, align 8
  %30 = add nsw i64 %29, 3
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* @CRTC_EXT_DISP_EN, align 4
  %33 = ashr i32 %32, 24
  %34 = or i32 %31, %33
  %35 = load %struct.atyfb_par*, %struct.atyfb_par** %5, align 8
  %36 = call i32 @aty_st_8(i64 %30, i32 %34, %struct.atyfb_par* %35)
  %37 = call i32 @mdelay(i32 15)
  %38 = load %union.aty_pll*, %union.aty_pll** %4, align 8
  %39 = bitcast %union.aty_pll* %38 to %struct.TYPE_2__*
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %6, align 4
  %42 = load %union.aty_pll*, %union.aty_pll** %4, align 8
  %43 = bitcast %union.aty_pll* %42 to %struct.TYPE_2__*
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %7, align 4
  %46 = load i64, i64* @CLOCK_CNTL, align 8
  %47 = load %struct.atyfb_par*, %struct.atyfb_par** %5, align 8
  %48 = getelementptr inbounds %struct.atyfb_par, %struct.atyfb_par* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = add nsw i64 %46, %49
  %51 = load %struct.atyfb_par*, %struct.atyfb_par** %5, align 8
  %52 = call i32 @aty_st_8(i64 %50, i32 0, %struct.atyfb_par* %51)
  %53 = load %struct.atyfb_par*, %struct.atyfb_par** %5, align 8
  %54 = call i32 @aty_StrobeClock(%struct.atyfb_par* %53)
  %55 = load i64, i64* @CLOCK_CNTL, align 8
  %56 = load %struct.atyfb_par*, %struct.atyfb_par** %5, align 8
  %57 = getelementptr inbounds %struct.atyfb_par, %struct.atyfb_par* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = add nsw i64 %55, %58
  %60 = load %struct.atyfb_par*, %struct.atyfb_par** %5, align 8
  %61 = call i32 @aty_st_8(i64 %59, i32 1, %struct.atyfb_par* %60)
  %62 = load %struct.atyfb_par*, %struct.atyfb_par** %5, align 8
  %63 = call i32 @aty_StrobeClock(%struct.atyfb_par* %62)
  %64 = load %struct.atyfb_par*, %struct.atyfb_par** %5, align 8
  %65 = call i32 @aty_ICS2595_put1bit(i32 1, %struct.atyfb_par* %64)
  %66 = load %struct.atyfb_par*, %struct.atyfb_par** %5, align 8
  %67 = call i32 @aty_ICS2595_put1bit(i32 0, %struct.atyfb_par* %66)
  %68 = load %struct.atyfb_par*, %struct.atyfb_par** %5, align 8
  %69 = call i32 @aty_ICS2595_put1bit(i32 0, %struct.atyfb_par* %68)
  store i32 0, i32* %8, align 4
  br label %70

70:                                               ; preds = %80, %2
  %71 = load i32, i32* %8, align 4
  %72 = icmp slt i32 %71, 5
  br i1 %72, label %73, label %83

73:                                               ; preds = %70
  %74 = load i32, i32* %7, align 4
  %75 = and i32 %74, 1
  %76 = load %struct.atyfb_par*, %struct.atyfb_par** %5, align 8
  %77 = call i32 @aty_ICS2595_put1bit(i32 %75, %struct.atyfb_par* %76)
  %78 = load i32, i32* %7, align 4
  %79 = ashr i32 %78, 1
  store i32 %79, i32* %7, align 4
  br label %80

80:                                               ; preds = %73
  %81 = load i32, i32* %8, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %8, align 4
  br label %70

83:                                               ; preds = %70
  store i32 0, i32* %8, align 4
  br label %84

84:                                               ; preds = %94, %83
  %85 = load i32, i32* %8, align 4
  %86 = icmp slt i32 %85, 13
  br i1 %86, label %87, label %97

87:                                               ; preds = %84
  %88 = load i32, i32* %6, align 4
  %89 = and i32 %88, 1
  %90 = load %struct.atyfb_par*, %struct.atyfb_par** %5, align 8
  %91 = call i32 @aty_ICS2595_put1bit(i32 %89, %struct.atyfb_par* %90)
  %92 = load i32, i32* %6, align 4
  %93 = ashr i32 %92, 1
  store i32 %93, i32* %6, align 4
  br label %94

94:                                               ; preds = %87
  %95 = load i32, i32* %8, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %8, align 4
  br label %84

97:                                               ; preds = %84
  %98 = call i32 @mdelay(i32 1)
  %99 = load i64, i64* @DAC_REGS, align 8
  %100 = load %struct.atyfb_par*, %struct.atyfb_par** %5, align 8
  %101 = call i32 @aty_ld_8(i64 %99, %struct.atyfb_par* %100)
  %102 = load i64, i64* @CRTC_GEN_CNTL, align 8
  %103 = add nsw i64 %102, 3
  %104 = load i32, i32* %10, align 4
  %105 = load %struct.atyfb_par*, %struct.atyfb_par** %5, align 8
  %106 = call i32 @aty_st_8(i64 %103, i32 %104, %struct.atyfb_par* %105)
  %107 = load i64, i64* @CLOCK_CNTL, align 8
  %108 = load %struct.atyfb_par*, %struct.atyfb_par** %5, align 8
  %109 = getelementptr inbounds %struct.atyfb_par, %struct.atyfb_par* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = add nsw i64 %107, %110
  %112 = load i32, i32* %9, align 4
  %113 = load i32, i32* @CLOCK_STROBE, align 4
  %114 = or i32 %112, %113
  %115 = load %struct.atyfb_par*, %struct.atyfb_par** %5, align 8
  %116 = call i32 @aty_st_8(i64 %111, i32 %114, %struct.atyfb_par* %115)
  %117 = call i32 @mdelay(i32 50)
  %118 = load i64, i64* @CLOCK_CNTL, align 8
  %119 = load %struct.atyfb_par*, %struct.atyfb_par** %5, align 8
  %120 = getelementptr inbounds %struct.atyfb_par, %struct.atyfb_par* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = add nsw i64 %118, %121
  %123 = load %union.aty_pll*, %union.aty_pll** %4, align 8
  %124 = bitcast %union.aty_pll* %123 to %struct.TYPE_2__*
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = and i32 %126, 15
  %128 = load i32, i32* @CLOCK_STROBE, align 4
  %129 = or i32 %127, %128
  %130 = load %struct.atyfb_par*, %struct.atyfb_par** %5, align 8
  %131 = call i32 @aty_st_8(i64 %122, i32 %129, %struct.atyfb_par* %130)
  ret void
}

declare dso_local i32 @aty_ld_8(i64, %struct.atyfb_par*) #1

declare dso_local i32 @aty_st_8(i64, i32, %struct.atyfb_par*) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @aty_StrobeClock(%struct.atyfb_par*) #1

declare dso_local i32 @aty_ICS2595_put1bit(i32, %struct.atyfb_par*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
