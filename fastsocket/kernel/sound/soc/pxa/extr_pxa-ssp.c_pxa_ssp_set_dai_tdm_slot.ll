; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/pxa/extr_pxa-ssp.c_pxa_ssp_set_dai_tdm_slot.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/pxa/extr_pxa-ssp.c_pxa_ssp_set_dai_tdm_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { %struct.ssp_priv* }
%struct.ssp_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ssp_device* }
%struct.ssp_device = type { i32 }

@SSCR0 = common dso_local global i32 0, align 4
@SSCR0_MOD = common dso_local global i32 0, align 4
@SSCR0_EDSS = common dso_local global i32 0, align 4
@SSCR0_DSS = common dso_local global i32 0, align 4
@SSTSA = common dso_local global i32 0, align 4
@SSRSA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32, i32, i32, i32)* @pxa_ssp_set_dai_tdm_slot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pxa_ssp_set_dai_tdm_slot(%struct.snd_soc_dai* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.snd_soc_dai*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ssp_priv*, align 8
  %12 = alloca %struct.ssp_device*, align 8
  %13 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %14 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %15 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %14, i32 0, i32 0
  %16 = load %struct.ssp_priv*, %struct.ssp_priv** %15, align 8
  store %struct.ssp_priv* %16, %struct.ssp_priv** %11, align 8
  %17 = load %struct.ssp_priv*, %struct.ssp_priv** %11, align 8
  %18 = getelementptr inbounds %struct.ssp_priv, %struct.ssp_priv* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load %struct.ssp_device*, %struct.ssp_device** %19, align 8
  store %struct.ssp_device* %20, %struct.ssp_device** %12, align 8
  %21 = load %struct.ssp_device*, %struct.ssp_device** %12, align 8
  %22 = load i32, i32* @SSCR0, align 4
  %23 = call i32 @ssp_read_reg(%struct.ssp_device* %21, i32 %22)
  store i32 %23, i32* %13, align 4
  %24 = load i32, i32* @SSCR0_MOD, align 4
  %25 = call i32 @SSCR0_SlotsPerFrm(i32 8)
  %26 = or i32 %24, %25
  %27 = load i32, i32* @SSCR0_EDSS, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @SSCR0_DSS, align 4
  %30 = or i32 %28, %29
  %31 = xor i32 %30, -1
  %32 = load i32, i32* %13, align 4
  %33 = and i32 %32, %31
  store i32 %33, i32* %13, align 4
  %34 = load i32, i32* %10, align 4
  %35 = icmp sgt i32 %34, 16
  br i1 %35, label %36, label %44

36:                                               ; preds = %5
  %37 = load i32, i32* @SSCR0_EDSS, align 4
  %38 = load i32, i32* %10, align 4
  %39 = sub nsw i32 %38, 16
  %40 = call i32 @SSCR0_DataSize(i32 %39)
  %41 = or i32 %37, %40
  %42 = load i32, i32* %13, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %13, align 4
  br label %49

44:                                               ; preds = %5
  %45 = load i32, i32* %10, align 4
  %46 = call i32 @SSCR0_DataSize(i32 %45)
  %47 = load i32, i32* %13, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %13, align 4
  br label %49

49:                                               ; preds = %44, %36
  %50 = load i32, i32* %9, align 4
  %51 = icmp sgt i32 %50, 1
  br i1 %51, label %52, label %68

52:                                               ; preds = %49
  %53 = load i32, i32* @SSCR0_MOD, align 4
  %54 = load i32, i32* %13, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %13, align 4
  %56 = load i32, i32* %9, align 4
  %57 = call i32 @SSCR0_SlotsPerFrm(i32 %56)
  %58 = load i32, i32* %13, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %13, align 4
  %60 = load %struct.ssp_device*, %struct.ssp_device** %12, align 8
  %61 = load i32, i32* @SSTSA, align 4
  %62 = load i32, i32* %7, align 4
  %63 = call i32 @ssp_write_reg(%struct.ssp_device* %60, i32 %61, i32 %62)
  %64 = load %struct.ssp_device*, %struct.ssp_device** %12, align 8
  %65 = load i32, i32* @SSRSA, align 4
  %66 = load i32, i32* %8, align 4
  %67 = call i32 @ssp_write_reg(%struct.ssp_device* %64, i32 %65, i32 %66)
  br label %68

68:                                               ; preds = %52, %49
  %69 = load %struct.ssp_device*, %struct.ssp_device** %12, align 8
  %70 = load i32, i32* @SSCR0, align 4
  %71 = load i32, i32* %13, align 4
  %72 = call i32 @ssp_write_reg(%struct.ssp_device* %69, i32 %70, i32 %71)
  ret i32 0
}

declare dso_local i32 @ssp_read_reg(%struct.ssp_device*, i32) #1

declare dso_local i32 @SSCR0_SlotsPerFrm(i32) #1

declare dso_local i32 @SSCR0_DataSize(i32) #1

declare dso_local i32 @ssp_write_reg(%struct.ssp_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
