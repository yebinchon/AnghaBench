; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/camera/extr_msm_vfe8x_proc.c_vfe_write_gamma_table.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/camera/extr_msm_vfe8x_proc.c_vfe_write_gamma_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@NO_MEM_SELECTED = common dso_local global i32 0, align 4
@RGBLUT_RAM_CH0_BANK0 = common dso_local global i32 0, align 4
@RGBLUT_RAM_CH0_BANK1 = common dso_local global i32 0, align 4
@RGBLUT_RAM_CH1_BANK0 = common dso_local global i32 0, align 4
@RGBLUT_RAM_CH1_BANK1 = common dso_local global i32 0, align 4
@RGBLUT_RAM_CH2_BANK0 = common dso_local global i32 0, align 4
@RGBLUT_RAM_CH2_BANK1 = common dso_local global i32 0, align 4
@VFE_GAMMA_TABLE_LENGTH = common dso_local global i64 0, align 8
@ctrl = common dso_local global %struct.TYPE_2__* null, align 8
@VFE_DMI_DATA_LO = common dso_local global i64 0, align 8
@VFE_DMI_CFG_DEFAULT = common dso_local global i32 0, align 4
@VFE_DMI_CFG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i64*)* @vfe_write_gamma_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vfe_write_gamma_table(i32 %0, i32 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i64* %2, i64** %6, align 8
  %9 = load i32, i32* @NO_MEM_SELECTED, align 4
  store i32 %9, i32* %8, align 4
  %10 = load i32, i32* %4, align 4
  switch i32 %10, label %35 [
    i32 0, label %11
    i32 1, label %19
    i32 2, label %27
  ]

11:                                               ; preds = %3
  %12 = load i32, i32* %5, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  %15 = load i32, i32* @RGBLUT_RAM_CH0_BANK0, align 4
  store i32 %15, i32* %8, align 4
  br label %18

16:                                               ; preds = %11
  %17 = load i32, i32* @RGBLUT_RAM_CH0_BANK1, align 4
  store i32 %17, i32* %8, align 4
  br label %18

18:                                               ; preds = %16, %14
  br label %36

19:                                               ; preds = %3
  %20 = load i32, i32* %5, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = load i32, i32* @RGBLUT_RAM_CH1_BANK0, align 4
  store i32 %23, i32* %8, align 4
  br label %26

24:                                               ; preds = %19
  %25 = load i32, i32* @RGBLUT_RAM_CH1_BANK1, align 4
  store i32 %25, i32* %8, align 4
  br label %26

26:                                               ; preds = %24, %22
  br label %36

27:                                               ; preds = %3
  %28 = load i32, i32* %5, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  %31 = load i32, i32* @RGBLUT_RAM_CH2_BANK0, align 4
  store i32 %31, i32* %8, align 4
  br label %34

32:                                               ; preds = %27
  %33 = load i32, i32* @RGBLUT_RAM_CH2_BANK1, align 4
  store i32 %33, i32* %8, align 4
  br label %34

34:                                               ; preds = %32, %30
  br label %36

35:                                               ; preds = %3
  br label %36

36:                                               ; preds = %35, %34, %26, %18
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @vfe_program_dmi_cfg(i32 %37)
  store i64 0, i64* %7, align 8
  br label %39

39:                                               ; preds = %55, %36
  %40 = load i64, i64* %7, align 8
  %41 = load i64, i64* @VFE_GAMMA_TABLE_LENGTH, align 8
  %42 = icmp slt i64 %40, %41
  br i1 %42, label %43, label %58

43:                                               ; preds = %39
  %44 = load i64*, i64** %6, align 8
  %45 = load i64, i64* %44, align 8
  %46 = trunc i64 %45 to i32
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ctrl, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @VFE_DMI_DATA_LO, align 8
  %51 = add nsw i64 %49, %50
  %52 = call i32 @writel(i32 %46, i64 %51)
  %53 = load i64*, i64** %6, align 8
  %54 = getelementptr inbounds i64, i64* %53, i32 1
  store i64* %54, i64** %6, align 8
  br label %55

55:                                               ; preds = %43
  %56 = load i64, i64* %7, align 8
  %57 = add nsw i64 %56, 1
  store i64 %57, i64* %7, align 8
  br label %39

58:                                               ; preds = %39
  %59 = load i32, i32* @VFE_DMI_CFG_DEFAULT, align 4
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ctrl, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @VFE_DMI_CFG, align 8
  %64 = add nsw i64 %62, %63
  %65 = call i32 @writel(i32 %59, i64 %64)
  ret void
}

declare dso_local i32 @vfe_program_dmi_cfg(i32) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
