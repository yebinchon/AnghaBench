; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/aty/extr_mach64_gx.c_aty_set_dac_ATT21C498.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/aty/extr_mach64_gx.c_aty_set_dac_ATT21C498.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i64 }
%union.aty_pll = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.atyfb_par = type { i32 }

@DAC_REGS = common dso_local global i64 0, align 8
@BUS_CNTL = common dso_local global i32 0, align 4
@DAC_CNTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_info*, %union.aty_pll*, i32, i32)* @aty_set_dac_ATT21C498 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aty_set_dac_ATT21C498(%struct.fb_info* %0, %union.aty_pll* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.fb_info*, align 8
  %6 = alloca %union.aty_pll*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.atyfb_par*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.fb_info* %0, %struct.fb_info** %5, align 8
  store %union.aty_pll* %1, %union.aty_pll** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %14 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.atyfb_par*
  store %struct.atyfb_par* %16, %struct.atyfb_par** %9, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %17 = load %union.aty_pll*, %union.aty_pll** %6, align 8
  %18 = bitcast %union.aty_pll* %17 to %struct.TYPE_2__*
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = sdiv i32 100000000, %20
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %7, align 4
  switch i32 %22, label %33 [
    i32 8, label %23
    i32 15, label %29
    i32 16, label %30
    i32 24, label %31
    i32 32, label %32
  ]

23:                                               ; preds = %4
  %24 = load i32, i32* %10, align 4
  %25 = icmp sgt i32 %24, 8000
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  store i32 36, i32* %12, align 4
  store i32 1, i32* %11, align 4
  br label %28

27:                                               ; preds = %23
  store i32 4, i32* %12, align 4
  br label %28

28:                                               ; preds = %27, %26
  br label %33

29:                                               ; preds = %4
  store i32 22, i32* %12, align 4
  br label %33

30:                                               ; preds = %4
  store i32 54, i32* %12, align 4
  br label %33

31:                                               ; preds = %4
  store i32 230, i32* %12, align 4
  br label %33

32:                                               ; preds = %4
  store i32 230, i32* %12, align 4
  br label %33

33:                                               ; preds = %4, %32, %31, %30, %29, %28
  %34 = load i32, i32* %12, align 4
  %35 = or i32 %34, 2
  store i32 %35, i32* %12, align 4
  %36 = load %struct.atyfb_par*, %struct.atyfb_par** %9, align 8
  %37 = call i32 @aty_dac_waste4(%struct.atyfb_par* %36)
  %38 = load i64, i64* @DAC_REGS, align 8
  %39 = add nsw i64 %38, 2
  %40 = load i32, i32* %12, align 4
  %41 = load %struct.atyfb_par*, %struct.atyfb_par** %9, align 8
  %42 = call i32 @aty_st_8(i64 %39, i32 %40, %struct.atyfb_par* %41)
  %43 = load i32, i32* @BUS_CNTL, align 4
  %44 = load %struct.atyfb_par*, %struct.atyfb_par** %9, align 8
  %45 = call i32 @aty_st_le32(i32 %43, i32 -1995562767, %struct.atyfb_par* %44)
  %46 = load i32, i32* @DAC_CNTL, align 4
  %47 = load %struct.atyfb_par*, %struct.atyfb_par** %9, align 8
  %48 = call i32 @aty_st_le32(i32 %46, i32 466944, %struct.atyfb_par* %47)
  %49 = load i32, i32* %11, align 4
  ret i32 %49
}

declare dso_local i32 @aty_dac_waste4(%struct.atyfb_par*) #1

declare dso_local i32 @aty_st_8(i64, i32, %struct.atyfb_par*) #1

declare dso_local i32 @aty_st_le32(i32, i32, %struct.atyfb_par*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
