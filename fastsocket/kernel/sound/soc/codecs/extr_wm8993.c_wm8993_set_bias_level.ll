; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm8993.c_wm8993_set_bias_level.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm8993.c_wm8993_set_bias_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_codec = type { i32, %struct.wm8993_priv* }
%struct.wm8993_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@WM8993_POWER_MANAGEMENT_1 = common dso_local global i32 0, align 4
@WM8993_VMID_SEL_MASK = common dso_local global i32 0, align 4
@WM8993_POWER_MANAGEMENT_2 = common dso_local global i32 0, align 4
@WM8993_TSHUT_ENA = common dso_local global i32 0, align 4
@WM8993_ANTIPOP2 = common dso_local global i32 0, align 4
@WM8993_STARTUP_BIAS_ENA = common dso_local global i32 0, align 4
@WM8993_VMID_BUF_ENA = common dso_local global i32 0, align 4
@WM8993_VMID_RAMP_MASK = common dso_local global i32 0, align 4
@WM8993_BIAS_SRC = common dso_local global i32 0, align 4
@WM8993_ANTIPOP1 = common dso_local global i32 0, align 4
@WM8993_LINEOUT_VMID_BUF_ENA = common dso_local global i32 0, align 4
@WM8993_BIAS_ENA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_codec*, i32)* @wm8993_set_bias_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8993_set_bias_level(%struct.snd_soc_codec* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_soc_codec*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.wm8993_priv*, align 8
  store %struct.snd_soc_codec* %0, %struct.snd_soc_codec** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %7 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %6, i32 0, i32 1
  %8 = load %struct.wm8993_priv*, %struct.wm8993_priv** %7, align 8
  store %struct.wm8993_priv* %8, %struct.wm8993_priv** %5, align 8
  %9 = load i32, i32* %4, align 4
  switch i32 %9, label %96 [
    i32 130, label %10
    i32 129, label %10
    i32 128, label %20
    i32 131, label %85
  ]

10:                                               ; preds = %2, %2
  %11 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %12 = load i32, i32* @WM8993_POWER_MANAGEMENT_1, align 4
  %13 = load i32, i32* @WM8993_VMID_SEL_MASK, align 4
  %14 = call i32 @snd_soc_update_bits(%struct.snd_soc_codec* %11, i32 %12, i32 %13, i32 2)
  %15 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %16 = load i32, i32* @WM8993_POWER_MANAGEMENT_2, align 4
  %17 = load i32, i32* @WM8993_TSHUT_ENA, align 4
  %18 = load i32, i32* @WM8993_TSHUT_ENA, align 4
  %19 = call i32 @snd_soc_update_bits(%struct.snd_soc_codec* %15, i32 %16, i32 %17, i32 %18)
  br label %96

20:                                               ; preds = %2
  %21 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %22 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp eq i32 %23, 131
  br i1 %24, label %25, label %76

25:                                               ; preds = %20
  %26 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %27 = load i32, i32* @WM8993_ANTIPOP2, align 4
  %28 = load i32, i32* @WM8993_STARTUP_BIAS_ENA, align 4
  %29 = load i32, i32* @WM8993_VMID_BUF_ENA, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @WM8993_VMID_RAMP_MASK, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @WM8993_BIAS_SRC, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @WM8993_STARTUP_BIAS_ENA, align 4
  %36 = load i32, i32* @WM8993_VMID_BUF_ENA, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @WM8993_VMID_RAMP_MASK, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @WM8993_BIAS_SRC, align 4
  %41 = or i32 %39, %40
  %42 = call i32 @snd_soc_update_bits(%struct.snd_soc_codec* %26, i32 %27, i32 %34, i32 %41)
  %43 = load %struct.wm8993_priv*, %struct.wm8993_priv** %5, align 8
  %44 = getelementptr inbounds %struct.wm8993_priv, %struct.wm8993_priv* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %25
  %49 = load %struct.wm8993_priv*, %struct.wm8993_priv** %5, align 8
  %50 = getelementptr inbounds %struct.wm8993_priv, %struct.wm8993_priv* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %60, label %54

54:                                               ; preds = %48, %25
  %55 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %56 = load i32, i32* @WM8993_ANTIPOP1, align 4
  %57 = load i32, i32* @WM8993_LINEOUT_VMID_BUF_ENA, align 4
  %58 = load i32, i32* @WM8993_LINEOUT_VMID_BUF_ENA, align 4
  %59 = call i32 @snd_soc_update_bits(%struct.snd_soc_codec* %55, i32 %56, i32 %57, i32 %58)
  br label %60

60:                                               ; preds = %54, %48
  %61 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %62 = load i32, i32* @WM8993_POWER_MANAGEMENT_1, align 4
  %63 = load i32, i32* @WM8993_VMID_SEL_MASK, align 4
  %64 = load i32, i32* @WM8993_BIAS_ENA, align 4
  %65 = or i32 %63, %64
  %66 = load i32, i32* @WM8993_BIAS_ENA, align 4
  %67 = or i32 %66, 2
  %68 = call i32 @snd_soc_update_bits(%struct.snd_soc_codec* %61, i32 %62, i32 %65, i32 %67)
  %69 = call i32 @msleep(i32 32)
  %70 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %71 = load i32, i32* @WM8993_ANTIPOP2, align 4
  %72 = load i32, i32* @WM8993_BIAS_SRC, align 4
  %73 = load i32, i32* @WM8993_STARTUP_BIAS_ENA, align 4
  %74 = or i32 %72, %73
  %75 = call i32 @snd_soc_update_bits(%struct.snd_soc_codec* %70, i32 %71, i32 %74, i32 0)
  br label %76

76:                                               ; preds = %60, %20
  %77 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %78 = load i32, i32* @WM8993_POWER_MANAGEMENT_1, align 4
  %79 = load i32, i32* @WM8993_VMID_SEL_MASK, align 4
  %80 = call i32 @snd_soc_update_bits(%struct.snd_soc_codec* %77, i32 %78, i32 %79, i32 4)
  %81 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %82 = load i32, i32* @WM8993_POWER_MANAGEMENT_2, align 4
  %83 = load i32, i32* @WM8993_TSHUT_ENA, align 4
  %84 = call i32 @snd_soc_update_bits(%struct.snd_soc_codec* %81, i32 %82, i32 %83, i32 0)
  br label %96

85:                                               ; preds = %2
  %86 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %87 = load i32, i32* @WM8993_ANTIPOP1, align 4
  %88 = load i32, i32* @WM8993_LINEOUT_VMID_BUF_ENA, align 4
  %89 = call i32 @snd_soc_update_bits(%struct.snd_soc_codec* %86, i32 %87, i32 %88, i32 0)
  %90 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %91 = load i32, i32* @WM8993_POWER_MANAGEMENT_1, align 4
  %92 = load i32, i32* @WM8993_VMID_SEL_MASK, align 4
  %93 = load i32, i32* @WM8993_BIAS_ENA, align 4
  %94 = or i32 %92, %93
  %95 = call i32 @snd_soc_update_bits(%struct.snd_soc_codec* %90, i32 %91, i32 %94, i32 0)
  br label %96

96:                                               ; preds = %2, %85, %76, %10
  %97 = load i32, i32* %4, align 4
  %98 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %99 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %98, i32 0, i32 0
  store i32 %97, i32* %99, align 8
  ret i32 0
}

declare dso_local i32 @snd_soc_update_bits(%struct.snd_soc_codec*, i32, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
