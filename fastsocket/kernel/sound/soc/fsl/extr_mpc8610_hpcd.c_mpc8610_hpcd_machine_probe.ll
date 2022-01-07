; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/fsl/extr_mpc8610_hpcd.c_mpc8610_hpcd_machine_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/fsl/extr_mpc8610_hpcd.c_mpc8610_hpcd_machine_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.mpc8610_hpcd_data* }
%struct.mpc8610_hpcd_data = type { i32, %struct.TYPE_5__*, i32*, i32 }
%struct.TYPE_5__ = type { i32 }

@CCSR_GUTS_DMACR_DEV_SSI = common dso_local global i32 0, align 4
@CCSR_GUTS_PMUXCR_SSI1_MASK = common dso_local global i32 0, align 4
@CCSR_GUTS_PMUXCR_SSI1_SSI = common dso_local global i32 0, align 4
@CCSR_GUTS_PMUXCR_SSI2_MASK = common dso_local global i32 0, align 4
@CCSR_GUTS_PMUXCR_SSI2_SSI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @mpc8610_hpcd_machine_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpc8610_hpcd_machine_probe(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.mpc8610_hpcd_data*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %4 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %5 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = load %struct.mpc8610_hpcd_data*, %struct.mpc8610_hpcd_data** %6, align 8
  store %struct.mpc8610_hpcd_data* %7, %struct.mpc8610_hpcd_data** %3, align 8
  %8 = load %struct.mpc8610_hpcd_data*, %struct.mpc8610_hpcd_data** %3, align 8
  %9 = getelementptr inbounds %struct.mpc8610_hpcd_data, %struct.mpc8610_hpcd_data* %8, i32 0, i32 1
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %11 = load %struct.mpc8610_hpcd_data*, %struct.mpc8610_hpcd_data** %3, align 8
  %12 = getelementptr inbounds %struct.mpc8610_hpcd_data, %struct.mpc8610_hpcd_data* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.mpc8610_hpcd_data*, %struct.mpc8610_hpcd_data** %3, align 8
  %15 = getelementptr inbounds %struct.mpc8610_hpcd_data, %struct.mpc8610_hpcd_data* %14, i32 0, i32 2
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @CCSR_GUTS_DMACR_DEV_SSI, align 4
  %20 = call i32 @guts_set_dmacr(%struct.TYPE_5__* %10, i32 %13, i32 %18, i32 %19)
  %21 = load %struct.mpc8610_hpcd_data*, %struct.mpc8610_hpcd_data** %3, align 8
  %22 = getelementptr inbounds %struct.mpc8610_hpcd_data, %struct.mpc8610_hpcd_data* %21, i32 0, i32 1
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = load %struct.mpc8610_hpcd_data*, %struct.mpc8610_hpcd_data** %3, align 8
  %25 = getelementptr inbounds %struct.mpc8610_hpcd_data, %struct.mpc8610_hpcd_data* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.mpc8610_hpcd_data*, %struct.mpc8610_hpcd_data** %3, align 8
  %28 = getelementptr inbounds %struct.mpc8610_hpcd_data, %struct.mpc8610_hpcd_data* %27, i32 0, i32 2
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @CCSR_GUTS_DMACR_DEV_SSI, align 4
  %33 = call i32 @guts_set_dmacr(%struct.TYPE_5__* %23, i32 %26, i32 %31, i32 %32)
  %34 = load %struct.mpc8610_hpcd_data*, %struct.mpc8610_hpcd_data** %3, align 8
  %35 = getelementptr inbounds %struct.mpc8610_hpcd_data, %struct.mpc8610_hpcd_data* %34, i32 0, i32 1
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = load %struct.mpc8610_hpcd_data*, %struct.mpc8610_hpcd_data** %3, align 8
  %38 = getelementptr inbounds %struct.mpc8610_hpcd_data, %struct.mpc8610_hpcd_data* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.mpc8610_hpcd_data*, %struct.mpc8610_hpcd_data** %3, align 8
  %41 = getelementptr inbounds %struct.mpc8610_hpcd_data, %struct.mpc8610_hpcd_data* %40, i32 0, i32 2
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @guts_set_pmuxcr_dma(%struct.TYPE_5__* %36, i32 %39, i32 %44, i32 0)
  %46 = load %struct.mpc8610_hpcd_data*, %struct.mpc8610_hpcd_data** %3, align 8
  %47 = getelementptr inbounds %struct.mpc8610_hpcd_data, %struct.mpc8610_hpcd_data* %46, i32 0, i32 1
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %47, align 8
  %49 = load %struct.mpc8610_hpcd_data*, %struct.mpc8610_hpcd_data** %3, align 8
  %50 = getelementptr inbounds %struct.mpc8610_hpcd_data, %struct.mpc8610_hpcd_data* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.mpc8610_hpcd_data*, %struct.mpc8610_hpcd_data** %3, align 8
  %53 = getelementptr inbounds %struct.mpc8610_hpcd_data, %struct.mpc8610_hpcd_data* %52, i32 0, i32 2
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @guts_set_pmuxcr_dma(%struct.TYPE_5__* %48, i32 %51, i32 %56, i32 0)
  %58 = load %struct.mpc8610_hpcd_data*, %struct.mpc8610_hpcd_data** %3, align 8
  %59 = getelementptr inbounds %struct.mpc8610_hpcd_data, %struct.mpc8610_hpcd_data* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  switch i32 %60, label %77 [
    i32 0, label %61
    i32 1, label %69
  ]

61:                                               ; preds = %1
  %62 = load %struct.mpc8610_hpcd_data*, %struct.mpc8610_hpcd_data** %3, align 8
  %63 = getelementptr inbounds %struct.mpc8610_hpcd_data, %struct.mpc8610_hpcd_data* %62, i32 0, i32 1
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = load i32, i32* @CCSR_GUTS_PMUXCR_SSI1_MASK, align 4
  %67 = load i32, i32* @CCSR_GUTS_PMUXCR_SSI1_SSI, align 4
  %68 = call i32 @clrsetbits_be32(i32* %65, i32 %66, i32 %67)
  br label %77

69:                                               ; preds = %1
  %70 = load %struct.mpc8610_hpcd_data*, %struct.mpc8610_hpcd_data** %3, align 8
  %71 = getelementptr inbounds %struct.mpc8610_hpcd_data, %struct.mpc8610_hpcd_data* %70, i32 0, i32 1
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  %74 = load i32, i32* @CCSR_GUTS_PMUXCR_SSI2_MASK, align 4
  %75 = load i32, i32* @CCSR_GUTS_PMUXCR_SSI2_SSI, align 4
  %76 = call i32 @clrsetbits_be32(i32* %73, i32 %74, i32 %75)
  br label %77

77:                                               ; preds = %1, %69, %61
  ret i32 0
}

declare dso_local i32 @guts_set_dmacr(%struct.TYPE_5__*, i32, i32, i32) #1

declare dso_local i32 @guts_set_pmuxcr_dma(%struct.TYPE_5__*, i32, i32, i32) #1

declare dso_local i32 @clrsetbits_be32(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
