; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/aty/extr_mach64_gx.c_aty_set_dac_ATI68860_B.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/aty/extr_mach64_gx.c_aty_set_dac_ATI68860_B.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i64 }
%union.aty_pll = type { i32 }
%struct.atyfb_par = type { i32 }

@DAC_CNTL = common dso_local global i64 0, align 8
@DAC_EXT_SEL_RS2 = common dso_local global i32 0, align 4
@DAC_EXT_SEL_RS3 = common dso_local global i32 0, align 4
@DAC_REGS = common dso_local global i64 0, align 8
@ONE_MB = common dso_local global i64 0, align 8
@BUS_CNTL = common dso_local global i64 0, align 8
@A860_DELAY_L = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_info*, %union.aty_pll*, i32, i32)* @aty_set_dac_ATI68860_B to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aty_set_dac_ATI68860_B(%struct.fb_info* %0, %union.aty_pll* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.fb_info*, align 8
  %6 = alloca %union.aty_pll*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.atyfb_par*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.fb_info* %0, %struct.fb_info** %5, align 8
  store %union.aty_pll* %1, %union.aty_pll** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %14 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %15 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.atyfb_par*
  store %struct.atyfb_par* %17, %struct.atyfb_par** %9, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %18 = load i32, i32* %7, align 4
  switch i32 %18, label %24 [
    i32 8, label %19
    i32 15, label %20
    i32 16, label %21
    i32 24, label %22
    i32 32, label %23
  ]

19:                                               ; preds = %4
  store i32 131, i32* %10, align 4
  store i32 96, i32* %11, align 4
  br label %24

20:                                               ; preds = %4
  store i32 160, i32* %10, align 4
  store i32 96, i32* %11, align 4
  br label %24

21:                                               ; preds = %4
  store i32 161, i32* %10, align 4
  store i32 96, i32* %11, align 4
  br label %24

22:                                               ; preds = %4
  store i32 192, i32* %10, align 4
  store i32 96, i32* %11, align 4
  br label %24

23:                                               ; preds = %4
  store i32 227, i32* %10, align 4
  store i32 96, i32* %11, align 4
  br label %24

24:                                               ; preds = %4, %23, %22, %21, %20, %19
  %25 = load i32, i32* %8, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %24
  store i32 128, i32* %10, align 4
  store i32 97, i32* %11, align 4
  br label %28

28:                                               ; preds = %27, %24
  %29 = load i64, i64* @DAC_CNTL, align 8
  %30 = load %struct.atyfb_par*, %struct.atyfb_par** %9, align 8
  %31 = call i32 @aty_ld_8(i64 %29, %struct.atyfb_par* %30)
  store i32 %31, i32* %12, align 4
  %32 = load i64, i64* @DAC_CNTL, align 8
  %33 = load i32, i32* %12, align 4
  %34 = load i32, i32* @DAC_EXT_SEL_RS2, align 4
  %35 = xor i32 %34, -1
  %36 = and i32 %33, %35
  %37 = load i32, i32* @DAC_EXT_SEL_RS3, align 4
  %38 = or i32 %36, %37
  %39 = load %struct.atyfb_par*, %struct.atyfb_par** %9, align 8
  %40 = call i32 @aty_st_8(i64 %32, i32 %38, %struct.atyfb_par* %39)
  %41 = load i64, i64* @DAC_REGS, align 8
  %42 = add nsw i64 %41, 2
  %43 = load %struct.atyfb_par*, %struct.atyfb_par** %9, align 8
  %44 = call i32 @aty_st_8(i64 %42, i32 29, %struct.atyfb_par* %43)
  %45 = load i64, i64* @DAC_REGS, align 8
  %46 = add nsw i64 %45, 3
  %47 = load i32, i32* %10, align 4
  %48 = load %struct.atyfb_par*, %struct.atyfb_par** %9, align 8
  %49 = call i32 @aty_st_8(i64 %46, i32 %47, %struct.atyfb_par* %48)
  %50 = load i64, i64* @DAC_REGS, align 8
  %51 = load %struct.atyfb_par*, %struct.atyfb_par** %9, align 8
  %52 = call i32 @aty_st_8(i64 %50, i32 2, %struct.atyfb_par* %51)
  %53 = load i64, i64* @DAC_CNTL, align 8
  %54 = load %struct.atyfb_par*, %struct.atyfb_par** %9, align 8
  %55 = call i32 @aty_ld_8(i64 %53, %struct.atyfb_par* %54)
  store i32 %55, i32* %12, align 4
  %56 = load i64, i64* @DAC_CNTL, align 8
  %57 = load i32, i32* %12, align 4
  %58 = load i32, i32* @DAC_EXT_SEL_RS2, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* @DAC_EXT_SEL_RS3, align 4
  %61 = or i32 %59, %60
  %62 = load %struct.atyfb_par*, %struct.atyfb_par** %9, align 8
  %63 = call i32 @aty_st_8(i64 %56, i32 %61, %struct.atyfb_par* %62)
  %64 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %65 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @ONE_MB, align 8
  %69 = icmp slt i64 %67, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %28
  store i32 4, i32* %13, align 4
  br label %81

71:                                               ; preds = %28
  %72 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %73 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @ONE_MB, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %71
  store i32 8, i32* %13, align 4
  br label %80

79:                                               ; preds = %71
  store i32 12, i32* %13, align 4
  br label %80

80:                                               ; preds = %79, %78
  br label %81

81:                                               ; preds = %80, %70
  %82 = load i64, i64* @DAC_REGS, align 8
  %83 = load %struct.atyfb_par*, %struct.atyfb_par** %9, align 8
  %84 = call i32 @aty_ld_8(i64 %82, %struct.atyfb_par* %83)
  store i32 %84, i32* %12, align 4
  %85 = load i64, i64* @DAC_REGS, align 8
  %86 = load i32, i32* %11, align 4
  %87 = load i32, i32* %13, align 4
  %88 = or i32 %86, %87
  %89 = load i32, i32* %12, align 4
  %90 = and i32 %89, 128
  %91 = or i32 %88, %90
  %92 = load %struct.atyfb_par*, %struct.atyfb_par** %9, align 8
  %93 = call i32 @aty_st_8(i64 %85, i32 %91, %struct.atyfb_par* %92)
  %94 = load i64, i64* @DAC_CNTL, align 8
  %95 = load %struct.atyfb_par*, %struct.atyfb_par** %9, align 8
  %96 = call i32 @aty_ld_8(i64 %94, %struct.atyfb_par* %95)
  store i32 %96, i32* %12, align 4
  %97 = load i64, i64* @DAC_CNTL, align 8
  %98 = load i32, i32* %12, align 4
  %99 = load i32, i32* @DAC_EXT_SEL_RS2, align 4
  %100 = load i32, i32* @DAC_EXT_SEL_RS3, align 4
  %101 = or i32 %99, %100
  %102 = xor i32 %101, -1
  %103 = and i32 %98, %102
  %104 = load %struct.atyfb_par*, %struct.atyfb_par** %9, align 8
  %105 = call i32 @aty_st_8(i64 %97, i32 %103, %struct.atyfb_par* %104)
  %106 = load i64, i64* @BUS_CNTL, align 8
  %107 = load %struct.atyfb_par*, %struct.atyfb_par** %9, align 8
  %108 = call i32 @aty_st_le32(i64 %106, i32 -1995562767, %struct.atyfb_par* %107)
  %109 = load i64, i64* @DAC_CNTL, align 8
  %110 = load %struct.atyfb_par*, %struct.atyfb_par** %9, align 8
  %111 = call i32 @aty_st_le32(i64 %109, i32 1191518464, %struct.atyfb_par* %110)
  ret i32 0
}

declare dso_local i32 @aty_ld_8(i64, %struct.atyfb_par*) #1

declare dso_local i32 @aty_st_8(i64, i32, %struct.atyfb_par*) #1

declare dso_local i32 @aty_st_le32(i64, i32, %struct.atyfb_par*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
