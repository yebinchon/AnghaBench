; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/omap/extr_omap-mcbsp.c_omap_mcbsp_dai_set_dai_sysclk.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/omap/extr_omap-mcbsp.c_omap_mcbsp_dai_set_dai_sysclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { i32 }
%struct.omap_mcbsp_data = type { %struct.omap_mcbsp_reg_cfg }
%struct.omap_mcbsp_reg_cfg = type { i32, i32 }

@CLKSM = common dso_local global i32 0, align 4
@SCLKME = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32, i32, i32)* @omap_mcbsp_dai_set_dai_sysclk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_mcbsp_dai_set_dai_sysclk(%struct.snd_soc_dai* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.snd_soc_dai*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.omap_mcbsp_data*, align 8
  %10 = alloca %struct.omap_mcbsp_reg_cfg*, align 8
  %11 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %5, align 8
  %13 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.omap_mcbsp_data* @to_mcbsp(i32 %14)
  store %struct.omap_mcbsp_data* %15, %struct.omap_mcbsp_data** %9, align 8
  %16 = load %struct.omap_mcbsp_data*, %struct.omap_mcbsp_data** %9, align 8
  %17 = getelementptr inbounds %struct.omap_mcbsp_data, %struct.omap_mcbsp_data* %16, i32 0, i32 0
  store %struct.omap_mcbsp_reg_cfg* %17, %struct.omap_mcbsp_reg_cfg** %10, align 8
  store i32 0, i32* %11, align 4
  %18 = load i32, i32* %6, align 4
  switch i32 %18, label %45 [
    i32 132, label %19
    i32 129, label %25
    i32 130, label %25
    i32 128, label %29
    i32 131, label %35
    i32 136, label %41
    i32 135, label %41
    i32 134, label %41
    i32 133, label %41
  ]

19:                                               ; preds = %4
  %20 = load i32, i32* @CLKSM, align 4
  %21 = load %struct.omap_mcbsp_reg_cfg*, %struct.omap_mcbsp_reg_cfg** %10, align 8
  %22 = getelementptr inbounds %struct.omap_mcbsp_reg_cfg, %struct.omap_mcbsp_reg_cfg* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = or i32 %23, %20
  store i32 %24, i32* %22, align 4
  br label %48

25:                                               ; preds = %4, %4
  %26 = load %struct.omap_mcbsp_data*, %struct.omap_mcbsp_data** %9, align 8
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @omap_mcbsp_dai_set_clks_src(%struct.omap_mcbsp_data* %26, i32 %27)
  store i32 %28, i32* %11, align 4
  br label %48

29:                                               ; preds = %4
  %30 = load i32, i32* @CLKSM, align 4
  %31 = load %struct.omap_mcbsp_reg_cfg*, %struct.omap_mcbsp_reg_cfg** %10, align 8
  %32 = getelementptr inbounds %struct.omap_mcbsp_reg_cfg, %struct.omap_mcbsp_reg_cfg* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = or i32 %33, %30
  store i32 %34, i32* %32, align 4
  br label %35

35:                                               ; preds = %4, %29
  %36 = load i32, i32* @SCLKME, align 4
  %37 = load %struct.omap_mcbsp_reg_cfg*, %struct.omap_mcbsp_reg_cfg** %10, align 8
  %38 = getelementptr inbounds %struct.omap_mcbsp_reg_cfg, %struct.omap_mcbsp_reg_cfg* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = or i32 %39, %36
  store i32 %40, i32* %38, align 4
  br label %48

41:                                               ; preds = %4, %4, %4, %4
  %42 = load %struct.omap_mcbsp_data*, %struct.omap_mcbsp_data** %9, align 8
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @omap_mcbsp_dai_set_rcvr_src(%struct.omap_mcbsp_data* %42, i32 %43)
  store i32 %44, i32* %11, align 4
  br label %48

45:                                               ; preds = %4
  %46 = load i32, i32* @ENODEV, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %11, align 4
  br label %48

48:                                               ; preds = %45, %41, %35, %25, %19
  %49 = load i32, i32* %11, align 4
  ret i32 %49
}

declare dso_local %struct.omap_mcbsp_data* @to_mcbsp(i32) #1

declare dso_local i32 @omap_mcbsp_dai_set_clks_src(%struct.omap_mcbsp_data*, i32) #1

declare dso_local i32 @omap_mcbsp_dai_set_rcvr_src(%struct.omap_mcbsp_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
