; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/fsl/extr_mpc8610_hpcd.c_mpc8610_hpcd_machine_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/fsl/extr_mpc8610_hpcd.c_mpc8610_hpcd_machine_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.mpc8610_hpcd_data* }
%struct.mpc8610_hpcd_data = type { i32, %struct.TYPE_4__*, i32*, i32 }
%struct.TYPE_4__ = type { i32 }

@CCSR_GUTS_PMUXCR_SSI1_MASK = common dso_local global i32 0, align 4
@CCSR_GUTS_PMUXCR_SSI1_LA = common dso_local global i32 0, align 4
@CCSR_GUTS_PMUXCR_SSI2_MASK = common dso_local global i32 0, align 4
@CCSR_GUTS_PMUXCR_SSI2_LA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mpc8610_hpcd_machine_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.mpc8610_hpcd_data*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %4 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %5 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %7 = load %struct.mpc8610_hpcd_data*, %struct.mpc8610_hpcd_data** %6, align 8
  store %struct.mpc8610_hpcd_data* %7, %struct.mpc8610_hpcd_data** %3, align 8
  %8 = load %struct.mpc8610_hpcd_data*, %struct.mpc8610_hpcd_data** %3, align 8
  %9 = getelementptr inbounds %struct.mpc8610_hpcd_data, %struct.mpc8610_hpcd_data* %8, i32 0, i32 1
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = load %struct.mpc8610_hpcd_data*, %struct.mpc8610_hpcd_data** %3, align 8
  %12 = getelementptr inbounds %struct.mpc8610_hpcd_data, %struct.mpc8610_hpcd_data* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.mpc8610_hpcd_data*, %struct.mpc8610_hpcd_data** %3, align 8
  %15 = getelementptr inbounds %struct.mpc8610_hpcd_data, %struct.mpc8610_hpcd_data* %14, i32 0, i32 2
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @guts_set_dmacr(%struct.TYPE_4__* %10, i32 %13, i32 %18, i32 0)
  %20 = load %struct.mpc8610_hpcd_data*, %struct.mpc8610_hpcd_data** %3, align 8
  %21 = getelementptr inbounds %struct.mpc8610_hpcd_data, %struct.mpc8610_hpcd_data* %20, i32 0, i32 1
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = load %struct.mpc8610_hpcd_data*, %struct.mpc8610_hpcd_data** %3, align 8
  %24 = getelementptr inbounds %struct.mpc8610_hpcd_data, %struct.mpc8610_hpcd_data* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.mpc8610_hpcd_data*, %struct.mpc8610_hpcd_data** %3, align 8
  %27 = getelementptr inbounds %struct.mpc8610_hpcd_data, %struct.mpc8610_hpcd_data* %26, i32 0, i32 2
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @guts_set_dmacr(%struct.TYPE_4__* %22, i32 %25, i32 %30, i32 0)
  %32 = load %struct.mpc8610_hpcd_data*, %struct.mpc8610_hpcd_data** %3, align 8
  %33 = getelementptr inbounds %struct.mpc8610_hpcd_data, %struct.mpc8610_hpcd_data* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  switch i32 %34, label %51 [
    i32 0, label %35
    i32 1, label %43
  ]

35:                                               ; preds = %1
  %36 = load %struct.mpc8610_hpcd_data*, %struct.mpc8610_hpcd_data** %3, align 8
  %37 = getelementptr inbounds %struct.mpc8610_hpcd_data, %struct.mpc8610_hpcd_data* %36, i32 0, i32 1
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* @CCSR_GUTS_PMUXCR_SSI1_MASK, align 4
  %41 = load i32, i32* @CCSR_GUTS_PMUXCR_SSI1_LA, align 4
  %42 = call i32 @clrsetbits_be32(i32* %39, i32 %40, i32 %41)
  br label %51

43:                                               ; preds = %1
  %44 = load %struct.mpc8610_hpcd_data*, %struct.mpc8610_hpcd_data** %3, align 8
  %45 = getelementptr inbounds %struct.mpc8610_hpcd_data, %struct.mpc8610_hpcd_data* %44, i32 0, i32 1
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32, i32* @CCSR_GUTS_PMUXCR_SSI2_MASK, align 4
  %49 = load i32, i32* @CCSR_GUTS_PMUXCR_SSI2_LA, align 4
  %50 = call i32 @clrsetbits_be32(i32* %47, i32 %48, i32 %49)
  br label %51

51:                                               ; preds = %1, %43, %35
  ret i32 0
}

declare dso_local i32 @guts_set_dmacr(%struct.TYPE_4__*, i32, i32, i32) #1

declare dso_local i32 @clrsetbits_be32(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
