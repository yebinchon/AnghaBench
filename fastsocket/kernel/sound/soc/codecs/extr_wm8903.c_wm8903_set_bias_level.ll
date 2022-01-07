; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm8903.c_wm8903_set_bias_level.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm8903.c_wm8903_set_bias_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_codec = type { i32, i32, %struct.i2c_client* }
%struct.i2c_client = type { i32 }

@WM8903_VMID_CONTROL_0 = common dso_local global i32 0, align 4
@WM8903_VMID_RES_MASK = common dso_local global i32 0, align 4
@WM8903_VMID_RES_50K = common dso_local global i32 0, align 4
@WM8903_CLOCK_RATES_2 = common dso_local global i32 0, align 4
@WM8903_CLK_SYS_ENA = common dso_local global i32 0, align 4
@WM8903_WRITE_SEQUENCER_0 = common dso_local global i32 0, align 4
@WM8903_WRITE_SEQUENCER_1 = common dso_local global i32 0, align 4
@WM8903_WRITE_SEQUENCER_2 = common dso_local global i32 0, align 4
@WM8903_CONTROL_INTERFACE_TEST_1 = common dso_local global i32 0, align 4
@WM8903_TEST_KEY = common dso_local global i32 0, align 4
@WM8903_CHARGE_PUMP_TEST_1 = common dso_local global i32 0, align 4
@WM8903_CP_SW_KELVIN_MODE_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Enabling Class W\0A\00", align 1
@WM8903_CLASS_W_0 = common dso_local global i32 0, align 4
@WM8903_CP_DYN_FREQ = common dso_local global i32 0, align 4
@WM8903_CP_DYN_V = common dso_local global i32 0, align 4
@WM8903_VMID_RES_250K = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_codec*, i32)* @wm8903_set_bias_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8903_set_bias_level(%struct.snd_soc_codec* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_soc_codec*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_client*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.snd_soc_codec* %0, %struct.snd_soc_codec** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %9 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %8, i32 0, i32 2
  %10 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  store %struct.i2c_client* %10, %struct.i2c_client** %5, align 8
  %11 = load i32, i32* %4, align 4
  switch i32 %11, label %115 [
    i32 130, label %12
    i32 129, label %12
    i32 128, label %27
    i32 131, label %101
  ]

12:                                               ; preds = %2, %2
  %13 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %14 = load i32, i32* @WM8903_VMID_CONTROL_0, align 4
  %15 = call i32 @snd_soc_read(%struct.snd_soc_codec* %13, i32 %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* @WM8903_VMID_RES_MASK, align 4
  %17 = xor i32 %16, -1
  %18 = load i32, i32* %6, align 4
  %19 = and i32 %18, %17
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* @WM8903_VMID_RES_50K, align 4
  %21 = load i32, i32* %6, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %6, align 4
  %23 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %24 = load i32, i32* @WM8903_VMID_CONTROL_0, align 4
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @snd_soc_write(%struct.snd_soc_codec* %23, i32 %24, i32 %25)
  br label %115

27:                                               ; preds = %2
  %28 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %29 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp eq i32 %30, 131
  br i1 %31, label %32, label %86

32:                                               ; preds = %27
  %33 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %34 = load i32, i32* @WM8903_CLOCK_RATES_2, align 4
  %35 = load i32, i32* @WM8903_CLK_SYS_ENA, align 4
  %36 = call i32 @snd_soc_write(%struct.snd_soc_codec* %33, i32 %34, i32 %35)
  %37 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %38 = load i32, i32* @WM8903_WRITE_SEQUENCER_0, align 4
  %39 = call i32 @snd_soc_write(%struct.snd_soc_codec* %37, i32 %38, i32 17)
  %40 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %41 = load i32, i32* @WM8903_WRITE_SEQUENCER_1, align 4
  %42 = call i32 @snd_soc_write(%struct.snd_soc_codec* %40, i32 %41, i32 4695)
  %43 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %44 = load i32, i32* @WM8903_WRITE_SEQUENCER_2, align 4
  %45 = call i32 @snd_soc_write(%struct.snd_soc_codec* %43, i32 %44, i32 2)
  %46 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %47 = call i32 @wm8903_run_sequence(%struct.snd_soc_codec* %46, i32 0)
  %48 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %49 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %50 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @wm8903_sync_reg_cache(%struct.snd_soc_codec* %48, i32 %51)
  %53 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %54 = load i32, i32* @WM8903_CONTROL_INTERFACE_TEST_1, align 4
  %55 = call i32 @snd_soc_read(%struct.snd_soc_codec* %53, i32 %54)
  store i32 %55, i32* %6, align 4
  %56 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %57 = load i32, i32* @WM8903_CONTROL_INTERFACE_TEST_1, align 4
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* @WM8903_TEST_KEY, align 4
  %60 = or i32 %58, %59
  %61 = call i32 @snd_soc_write(%struct.snd_soc_codec* %56, i32 %57, i32 %60)
  %62 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %63 = load i32, i32* @WM8903_CHARGE_PUMP_TEST_1, align 4
  %64 = call i32 @snd_soc_read(%struct.snd_soc_codec* %62, i32 %63)
  store i32 %64, i32* %7, align 4
  %65 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %66 = load i32, i32* @WM8903_CHARGE_PUMP_TEST_1, align 4
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* @WM8903_CP_SW_KELVIN_MODE_MASK, align 4
  %69 = or i32 %67, %68
  %70 = call i32 @snd_soc_write(%struct.snd_soc_codec* %65, i32 %66, i32 %69)
  %71 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %72 = load i32, i32* @WM8903_CONTROL_INTERFACE_TEST_1, align 4
  %73 = load i32, i32* %6, align 4
  %74 = call i32 @snd_soc_write(%struct.snd_soc_codec* %71, i32 %72, i32 %73)
  %75 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %76 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %75, i32 0, i32 0
  %77 = call i32 @dev_dbg(i32* %76, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %78 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %79 = load i32, i32* @WM8903_CLASS_W_0, align 4
  %80 = load i32, i32* %6, align 4
  %81 = load i32, i32* @WM8903_CP_DYN_FREQ, align 4
  %82 = or i32 %80, %81
  %83 = load i32, i32* @WM8903_CP_DYN_V, align 4
  %84 = or i32 %82, %83
  %85 = call i32 @snd_soc_write(%struct.snd_soc_codec* %78, i32 %79, i32 %84)
  br label %86

86:                                               ; preds = %32, %27
  %87 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %88 = load i32, i32* @WM8903_VMID_CONTROL_0, align 4
  %89 = call i32 @snd_soc_read(%struct.snd_soc_codec* %87, i32 %88)
  store i32 %89, i32* %6, align 4
  %90 = load i32, i32* @WM8903_VMID_RES_MASK, align 4
  %91 = xor i32 %90, -1
  %92 = load i32, i32* %6, align 4
  %93 = and i32 %92, %91
  store i32 %93, i32* %6, align 4
  %94 = load i32, i32* @WM8903_VMID_RES_250K, align 4
  %95 = load i32, i32* %6, align 4
  %96 = or i32 %95, %94
  store i32 %96, i32* %6, align 4
  %97 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %98 = load i32, i32* @WM8903_VMID_CONTROL_0, align 4
  %99 = load i32, i32* %6, align 4
  %100 = call i32 @snd_soc_write(%struct.snd_soc_codec* %97, i32 %98, i32 %99)
  br label %115

101:                                              ; preds = %2
  %102 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %103 = call i32 @wm8903_run_sequence(%struct.snd_soc_codec* %102, i32 32)
  %104 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %105 = load i32, i32* @WM8903_CLOCK_RATES_2, align 4
  %106 = call i32 @snd_soc_read(%struct.snd_soc_codec* %104, i32 %105)
  store i32 %106, i32* %6, align 4
  %107 = load i32, i32* @WM8903_CLK_SYS_ENA, align 4
  %108 = xor i32 %107, -1
  %109 = load i32, i32* %6, align 4
  %110 = and i32 %109, %108
  store i32 %110, i32* %6, align 4
  %111 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %112 = load i32, i32* @WM8903_CLOCK_RATES_2, align 4
  %113 = load i32, i32* %6, align 4
  %114 = call i32 @snd_soc_write(%struct.snd_soc_codec* %111, i32 %112, i32 %113)
  br label %115

115:                                              ; preds = %2, %101, %86, %12
  %116 = load i32, i32* %4, align 4
  %117 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %118 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %117, i32 0, i32 0
  store i32 %116, i32* %118, align 8
  ret i32 0
}

declare dso_local i32 @snd_soc_read(%struct.snd_soc_codec*, i32) #1

declare dso_local i32 @snd_soc_write(%struct.snd_soc_codec*, i32, i32) #1

declare dso_local i32 @wm8903_run_sequence(%struct.snd_soc_codec*, i32) #1

declare dso_local i32 @wm8903_sync_reg_cache(%struct.snd_soc_codec*, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
