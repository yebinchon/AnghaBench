; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/pxa/extr_pxa-ssp.c_pxa_ssp_set_dai_clkdiv.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/pxa/extr_pxa-ssp.c_pxa_ssp_set_dai_clkdiv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { %struct.ssp_priv* }
%struct.ssp_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ssp_device* }
%struct.ssp_device = type { i32 }

@SSACD = common dso_local global i32 0, align 4
@SSACD_SCDB = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@SSACD_SCDX8 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32, i32)* @pxa_ssp_set_dai_clkdiv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pxa_ssp_set_dai_clkdiv(%struct.snd_soc_dai* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_soc_dai*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ssp_priv*, align 8
  %9 = alloca %struct.ssp_device*, align 8
  %10 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %5, align 8
  %12 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %11, i32 0, i32 0
  %13 = load %struct.ssp_priv*, %struct.ssp_priv** %12, align 8
  store %struct.ssp_priv* %13, %struct.ssp_priv** %8, align 8
  %14 = load %struct.ssp_priv*, %struct.ssp_priv** %8, align 8
  %15 = getelementptr inbounds %struct.ssp_priv, %struct.ssp_priv* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load %struct.ssp_device*, %struct.ssp_device** %16, align 8
  store %struct.ssp_device* %17, %struct.ssp_device** %9, align 8
  %18 = load i32, i32* %6, align 4
  switch i32 %18, label %57 [
    i32 133, label %19
    i32 132, label %31
    i32 128, label %53
  ]

19:                                               ; preds = %3
  %20 = load %struct.ssp_device*, %struct.ssp_device** %9, align 8
  %21 = load i32, i32* @SSACD, align 4
  %22 = call i32 @ssp_read_reg(%struct.ssp_device* %20, i32 %21)
  %23 = and i32 %22, -8
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @SSACD_ACDS(i32 %24)
  %26 = or i32 %23, %25
  store i32 %26, i32* %10, align 4
  %27 = load %struct.ssp_device*, %struct.ssp_device** %9, align 8
  %28 = load i32, i32* @SSACD, align 4
  %29 = load i32, i32* %10, align 4
  %30 = call i32 @ssp_write_reg(%struct.ssp_device* %27, i32 %28, i32 %29)
  br label %60

31:                                               ; preds = %3
  %32 = load %struct.ssp_device*, %struct.ssp_device** %9, align 8
  %33 = load i32, i32* @SSACD, align 4
  %34 = call i32 @ssp_read_reg(%struct.ssp_device* %32, i32 %33)
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* @SSACD_SCDB, align 4
  %36 = xor i32 %35, -1
  %37 = load i32, i32* %10, align 4
  %38 = and i32 %37, %36
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %7, align 4
  switch i32 %39, label %45 [
    i32 131, label %40
    i32 130, label %44
  ]

40:                                               ; preds = %31
  %41 = load i32, i32* @SSACD_SCDB, align 4
  %42 = load i32, i32* %10, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %10, align 4
  br label %48

44:                                               ; preds = %31
  br label %48

45:                                               ; preds = %31
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %4, align 4
  br label %61

48:                                               ; preds = %44, %40
  %49 = load %struct.ssp_device*, %struct.ssp_device** %9, align 8
  %50 = load i32, i32* @SSACD, align 4
  %51 = load i32, i32* %10, align 4
  %52 = call i32 @ssp_write_reg(%struct.ssp_device* %49, i32 %50, i32 %51)
  br label %60

53:                                               ; preds = %3
  %54 = load %struct.ssp_device*, %struct.ssp_device** %9, align 8
  %55 = load i32, i32* %7, align 4
  %56 = call i32 @ssp_set_scr(%struct.ssp_device* %54, i32 %55)
  br label %60

57:                                               ; preds = %3
  %58 = load i32, i32* @ENODEV, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %4, align 4
  br label %61

60:                                               ; preds = %53, %48, %19
  store i32 0, i32* %4, align 4
  br label %61

61:                                               ; preds = %60, %57, %45
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local i32 @ssp_read_reg(%struct.ssp_device*, i32) #1

declare dso_local i32 @SSACD_ACDS(i32) #1

declare dso_local i32 @ssp_write_reg(%struct.ssp_device*, i32, i32) #1

declare dso_local i32 @ssp_set_scr(%struct.ssp_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
