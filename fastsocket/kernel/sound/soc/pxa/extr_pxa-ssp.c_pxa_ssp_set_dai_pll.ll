; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/pxa/extr_pxa-ssp.c_pxa_ssp_set_dai_pll.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/pxa/extr_pxa-ssp.c_pxa_ssp_set_dai_pll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { %struct.ssp_priv* }
%struct.ssp_priv = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.ssp_device* }
%struct.ssp_device = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@SSACD = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SSACDD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32, i32, i32)* @pxa_ssp_set_dai_pll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pxa_ssp_set_dai_pll(%struct.snd_soc_dai* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_soc_dai*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ssp_priv*, align 8
  %11 = alloca %struct.ssp_device*, align 8
  %12 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %14 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %13, i32 0, i32 0
  %15 = load %struct.ssp_priv*, %struct.ssp_priv** %14, align 8
  store %struct.ssp_priv* %15, %struct.ssp_priv** %10, align 8
  %16 = load %struct.ssp_priv*, %struct.ssp_priv** %10, align 8
  %17 = getelementptr inbounds %struct.ssp_priv, %struct.ssp_priv* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load %struct.ssp_device*, %struct.ssp_device** %18, align 8
  store %struct.ssp_device* %19, %struct.ssp_device** %11, align 8
  %20 = load %struct.ssp_device*, %struct.ssp_device** %11, align 8
  %21 = load i32, i32* @SSACD, align 4
  %22 = call i32 @ssp_read_reg(%struct.ssp_device* %20, i32 %21)
  %23 = and i32 %22, -113
  store i32 %23, i32* %12, align 4
  %24 = load i32, i32* %9, align 4
  switch i32 %24, label %42 [
    i32 5622000, label %25
    i32 11345000, label %26
    i32 12235000, label %29
    i32 14857000, label %32
    i32 32842000, label %35
    i32 48000000, label %38
    i32 0, label %41
  ]

25:                                               ; preds = %4
  br label %45

26:                                               ; preds = %4
  %27 = load i32, i32* %12, align 4
  %28 = or i32 %27, 16
  store i32 %28, i32* %12, align 4
  br label %45

29:                                               ; preds = %4
  %30 = load i32, i32* %12, align 4
  %31 = or i32 %30, 32
  store i32 %31, i32* %12, align 4
  br label %45

32:                                               ; preds = %4
  %33 = load i32, i32* %12, align 4
  %34 = or i32 %33, 48
  store i32 %34, i32* %12, align 4
  br label %45

35:                                               ; preds = %4
  %36 = load i32, i32* %12, align 4
  %37 = or i32 %36, 64
  store i32 %37, i32* %12, align 4
  br label %45

38:                                               ; preds = %4
  %39 = load i32, i32* %12, align 4
  %40 = or i32 %39, 80
  store i32 %40, i32* %12, align 4
  br label %45

41:                                               ; preds = %4
  br label %45

42:                                               ; preds = %4
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %5, align 4
  br label %50

45:                                               ; preds = %41, %38, %35, %32, %29, %26, %25
  %46 = load %struct.ssp_device*, %struct.ssp_device** %11, align 8
  %47 = load i32, i32* @SSACD, align 4
  %48 = load i32, i32* %12, align 4
  %49 = call i32 @ssp_write_reg(%struct.ssp_device* %46, i32 %47, i32 %48)
  store i32 0, i32* %5, align 4
  br label %50

50:                                               ; preds = %45, %42
  %51 = load i32, i32* %5, align 4
  ret i32 %51
}

declare dso_local i32 @ssp_read_reg(%struct.ssp_device*, i32) #1

declare dso_local i32 @ssp_write_reg(%struct.ssp_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
