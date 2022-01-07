; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/camera/extr_msm_vfe8x_proc.c_vfe_la_update.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/camera/extr_msm_vfe8x_proc.c_vfe_la_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.vfe_cmd_la_config = type { i32, i64* }

@ctrl = common dso_local global %struct.TYPE_4__* null, align 8
@LUMA_ADAPT_LUT_RAM_BANK0 = common dso_local global i32 0, align 4
@LUMA_ADAPT_LUT_RAM_BANK1 = common dso_local global i32 0, align 4
@VFE_LA_TABLE_LENGTH = common dso_local global i32 0, align 4
@VFE_DMI_DATA_LO = common dso_local global i64 0, align 8
@VFE_DMI_CFG_DEFAULT = common dso_local global i32 0, align 4
@VFE_DMI_CFG = common dso_local global i64 0, align 8
@VFE_LA_CFG = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vfe_la_update(%struct.vfe_cmd_la_config* %0) #0 {
  %2 = alloca %struct.vfe_cmd_la_config*, align 8
  %3 = alloca i64*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.vfe_cmd_la_config* %0, %struct.vfe_cmd_la_config** %2, align 8
  %6 = load %struct.vfe_cmd_la_config*, %struct.vfe_cmd_la_config** %2, align 8
  %7 = getelementptr inbounds %struct.vfe_cmd_la_config, %struct.vfe_cmd_la_config* %6, i32 0, i32 1
  %8 = load i64*, i64** %7, align 8
  store i64* %8, i64** %3, align 8
  %9 = load %struct.vfe_cmd_la_config*, %struct.vfe_cmd_la_config** %2, align 8
  %10 = getelementptr inbounds %struct.vfe_cmd_la_config, %struct.vfe_cmd_la_config* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ctrl, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  store i32 %11, i32* %14, align 8
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ctrl, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = xor i32 %17, 1
  store i32 %18, i32* %16, align 8
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ctrl, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %1
  %24 = load i32, i32* @LUMA_ADAPT_LUT_RAM_BANK0, align 4
  store i32 %24, i32* %4, align 4
  br label %27

25:                                               ; preds = %1
  %26 = load i32, i32* @LUMA_ADAPT_LUT_RAM_BANK1, align 4
  store i32 %26, i32* %4, align 4
  br label %27

27:                                               ; preds = %25, %23
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @vfe_program_dmi_cfg(i32 %28)
  store i32 0, i32* %5, align 4
  br label %30

30:                                               ; preds = %46, %27
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @VFE_LA_TABLE_LENGTH, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %49

34:                                               ; preds = %30
  %35 = load i64*, i64** %3, align 8
  %36 = load i64, i64* %35, align 8
  %37 = trunc i64 %36 to i32
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ctrl, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @VFE_DMI_DATA_LO, align 8
  %42 = add nsw i64 %40, %41
  %43 = call i32 @writel(i32 %37, i64 %42)
  %44 = load i64*, i64** %3, align 8
  %45 = getelementptr inbounds i64, i64* %44, i32 1
  store i64* %45, i64** %3, align 8
  br label %46

46:                                               ; preds = %34
  %47 = load i32, i32* %5, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %5, align 4
  br label %30

49:                                               ; preds = %30
  %50 = load i32, i32* @VFE_DMI_CFG_DEFAULT, align 4
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ctrl, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @VFE_DMI_CFG, align 8
  %55 = add nsw i64 %53, %54
  %56 = call i32 @writel(i32 %50, i64 %55)
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ctrl, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ctrl, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @VFE_LA_CFG, align 8
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
