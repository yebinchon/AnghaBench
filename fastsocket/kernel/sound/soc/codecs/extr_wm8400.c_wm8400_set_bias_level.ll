; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm8400.c_wm8400_set_bias_level.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm8400.c_wm8400_set_bias_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_codec = type { i32, %struct.wm8400_priv* }
%struct.wm8400_priv = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@WM8400_POWER_MANAGEMENT_1 = common dso_local global i32 0, align 4
@WM8400_VMID_MODE_MASK = common dso_local global i32 0, align 4
@power = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [33 x i8] c"Failed to enable regulators: %d\0A\00", align 1
@WM8400_CODEC_ENA = common dso_local global i32 0, align 4
@WM8400_SYSCLK_ENA = common dso_local global i32 0, align 4
@WM8400_ANTIPOP2 = common dso_local global i32 0, align 4
@WM8400_SOFTST = common dso_local global i32 0, align 4
@WM8400_BUFDCOPEN = common dso_local global i32 0, align 4
@WM8400_POBCTRL = common dso_local global i32 0, align 4
@WM8400_VREF_ENA = common dso_local global i32 0, align 4
@WM8400_BUFIOEN = common dso_local global i32 0, align 4
@WM8400_DAC_CTRL = common dso_local global i32 0, align 4
@WM8400_DAC_MUTE = common dso_local global i32 0, align 4
@WM8400_SPK_ENA = common dso_local global i32 0, align 4
@WM8400_OUT3_ENA = common dso_local global i32 0, align 4
@WM8400_OUT4_ENA = common dso_local global i32 0, align 4
@WM8400_LOUT_ENA = common dso_local global i32 0, align 4
@WM8400_ROUT_ENA = common dso_local global i32 0, align 4
@WM8400_ANTIPOP1 = common dso_local global i32 0, align 4
@WM8400_DIS_LLINE = common dso_local global i32 0, align 4
@WM8400_DIS_RLINE = common dso_local global i32 0, align 4
@WM8400_DIS_OUT3 = common dso_local global i32 0, align 4
@WM8400_DIS_OUT4 = common dso_local global i32 0, align 4
@WM8400_DIS_LOUT = common dso_local global i32 0, align 4
@WM8400_DIS_ROUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_codec*, i32)* @wm8400_set_bias_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8400_set_bias_level(%struct.snd_soc_codec* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_codec*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.wm8400_priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.snd_soc_codec* %0, %struct.snd_soc_codec** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %4, align 8
  %10 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %9, i32 0, i32 1
  %11 = load %struct.wm8400_priv*, %struct.wm8400_priv** %10, align 8
  store %struct.wm8400_priv* %11, %struct.wm8400_priv** %6, align 8
  %12 = load i32, i32* %5, align 4
  switch i32 %12, label %191 [
    i32 130, label %13
    i32 129, label %14
    i32 128, label %26
    i32 131, label %101
  ]

13:                                               ; preds = %2
  br label %191

14:                                               ; preds = %2
  %15 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %4, align 8
  %16 = load i32, i32* @WM8400_POWER_MANAGEMENT_1, align 4
  %17 = call i32 @wm8400_read(%struct.snd_soc_codec* %15, i32 %16)
  %18 = load i32, i32* @WM8400_VMID_MODE_MASK, align 4
  %19 = xor i32 %18, -1
  %20 = and i32 %17, %19
  store i32 %20, i32* %7, align 4
  %21 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %4, align 8
  %22 = load i32, i32* @WM8400_POWER_MANAGEMENT_1, align 4
  %23 = load i32, i32* %7, align 4
  %24 = or i32 %23, 2
  %25 = call i32 @wm8400_write(%struct.snd_soc_codec* %21, i32 %22, i32 %24)
  br label %191

26:                                               ; preds = %2
  %27 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %4, align 8
  %28 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp eq i32 %29, 131
  br i1 %30, label %31, label %89

31:                                               ; preds = %26
  %32 = load i32*, i32** @power, align 8
  %33 = call i32 @ARRAY_SIZE(i32* %32)
  %34 = load i32*, i32** @power, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  %36 = call i32 @regulator_bulk_enable(i32 %33, i32* %35)
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %31
  %40 = load %struct.wm8400_priv*, %struct.wm8400_priv** %6, align 8
  %41 = getelementptr inbounds %struct.wm8400_priv, %struct.wm8400_priv* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @dev_err(i32 %44, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %45)
  %47 = load i32, i32* %8, align 4
  store i32 %47, i32* %3, align 4
  br label %195

48:                                               ; preds = %31
  %49 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %4, align 8
  %50 = load i32, i32* @WM8400_POWER_MANAGEMENT_1, align 4
  %51 = load i32, i32* @WM8400_CODEC_ENA, align 4
  %52 = load i32, i32* @WM8400_SYSCLK_ENA, align 4
  %53 = or i32 %51, %52
  %54 = call i32 @wm8400_write(%struct.snd_soc_codec* %49, i32 %50, i32 %53)
  %55 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %4, align 8
  %56 = load i32, i32* @WM8400_ANTIPOP2, align 4
  %57 = load i32, i32* @WM8400_SOFTST, align 4
  %58 = load i32, i32* @WM8400_BUFDCOPEN, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* @WM8400_POBCTRL, align 4
  %61 = or i32 %59, %60
  %62 = call i32 @wm8400_write(%struct.snd_soc_codec* %55, i32 %56, i32 %61)
  %63 = call i32 @msleep(i32 50)
  %64 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %4, align 8
  %65 = load i32, i32* @WM8400_POWER_MANAGEMENT_1, align 4
  %66 = call i32 @wm8400_read(%struct.snd_soc_codec* %64, i32 %65)
  store i32 %66, i32* %7, align 4
  %67 = load i32, i32* @WM8400_VREF_ENA, align 4
  %68 = or i32 2, %67
  %69 = load i32, i32* %7, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %7, align 4
  %71 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %4, align 8
  %72 = load i32, i32* @WM8400_POWER_MANAGEMENT_1, align 4
  %73 = load i32, i32* %7, align 4
  %74 = call i32 @wm8400_write(%struct.snd_soc_codec* %71, i32 %72, i32 %73)
  %75 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %4, align 8
  %76 = load i32, i32* @WM8400_ANTIPOP2, align 4
  %77 = load i32, i32* @WM8400_SOFTST, align 4
  %78 = load i32, i32* @WM8400_BUFDCOPEN, align 4
  %79 = or i32 %77, %78
  %80 = load i32, i32* @WM8400_POBCTRL, align 4
  %81 = or i32 %79, %80
  %82 = load i32, i32* @WM8400_BUFIOEN, align 4
  %83 = or i32 %81, %82
  %84 = call i32 @wm8400_write(%struct.snd_soc_codec* %75, i32 %76, i32 %83)
  %85 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %4, align 8
  %86 = load i32, i32* @WM8400_ANTIPOP2, align 4
  %87 = load i32, i32* @WM8400_BUFIOEN, align 4
  %88 = call i32 @wm8400_write(%struct.snd_soc_codec* %85, i32 %86, i32 %87)
  br label %89

89:                                               ; preds = %48, %26
  %90 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %4, align 8
  %91 = load i32, i32* @WM8400_POWER_MANAGEMENT_1, align 4
  %92 = call i32 @wm8400_read(%struct.snd_soc_codec* %90, i32 %91)
  %93 = load i32, i32* @WM8400_VMID_MODE_MASK, align 4
  %94 = xor i32 %93, -1
  %95 = and i32 %92, %94
  store i32 %95, i32* %7, align 4
  %96 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %4, align 8
  %97 = load i32, i32* @WM8400_POWER_MANAGEMENT_1, align 4
  %98 = load i32, i32* %7, align 4
  %99 = or i32 %98, 4
  %100 = call i32 @wm8400_write(%struct.snd_soc_codec* %96, i32 %97, i32 %99)
  br label %191

101:                                              ; preds = %2
  %102 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %4, align 8
  %103 = load i32, i32* @WM8400_ANTIPOP2, align 4
  %104 = load i32, i32* @WM8400_SOFTST, align 4
  %105 = load i32, i32* @WM8400_POBCTRL, align 4
  %106 = or i32 %104, %105
  %107 = load i32, i32* @WM8400_BUFIOEN, align 4
  %108 = or i32 %106, %107
  %109 = call i32 @wm8400_write(%struct.snd_soc_codec* %102, i32 %103, i32 %108)
  %110 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %4, align 8
  %111 = load i32, i32* @WM8400_ANTIPOP2, align 4
  %112 = load i32, i32* @WM8400_SOFTST, align 4
  %113 = load i32, i32* @WM8400_BUFDCOPEN, align 4
  %114 = or i32 %112, %113
  %115 = load i32, i32* @WM8400_POBCTRL, align 4
  %116 = or i32 %114, %115
  %117 = load i32, i32* @WM8400_BUFIOEN, align 4
  %118 = or i32 %116, %117
  %119 = call i32 @wm8400_write(%struct.snd_soc_codec* %110, i32 %111, i32 %118)
  %120 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %4, align 8
  %121 = load i32, i32* @WM8400_DAC_CTRL, align 4
  %122 = call i32 @wm8400_read(%struct.snd_soc_codec* %120, i32 %121)
  store i32 %122, i32* %7, align 4
  %123 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %4, align 8
  %124 = load i32, i32* @WM8400_DAC_CTRL, align 4
  %125 = load i32, i32* %7, align 4
  %126 = load i32, i32* @WM8400_DAC_MUTE, align 4
  %127 = or i32 %125, %126
  %128 = call i32 @wm8400_write(%struct.snd_soc_codec* %123, i32 %124, i32 %127)
  %129 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %4, align 8
  %130 = load i32, i32* @WM8400_POWER_MANAGEMENT_1, align 4
  %131 = call i32 @wm8400_read(%struct.snd_soc_codec* %129, i32 %130)
  store i32 %131, i32* %7, align 4
  %132 = load i32, i32* @WM8400_SPK_ENA, align 4
  %133 = load i32, i32* @WM8400_OUT3_ENA, align 4
  %134 = or i32 %132, %133
  %135 = load i32, i32* @WM8400_OUT4_ENA, align 4
  %136 = or i32 %134, %135
  %137 = load i32, i32* @WM8400_LOUT_ENA, align 4
  %138 = or i32 %136, %137
  %139 = load i32, i32* @WM8400_ROUT_ENA, align 4
  %140 = or i32 %138, %139
  %141 = load i32, i32* %7, align 4
  %142 = or i32 %141, %140
  store i32 %142, i32* %7, align 4
  %143 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %4, align 8
  %144 = load i32, i32* @WM8400_POWER_MANAGEMENT_1, align 4
  %145 = load i32, i32* %7, align 4
  %146 = call i32 @wm8400_write(%struct.snd_soc_codec* %143, i32 %144, i32 %145)
  %147 = load i32, i32* @WM8400_VMID_MODE_MASK, align 4
  %148 = xor i32 %147, -1
  %149 = load i32, i32* %7, align 4
  %150 = and i32 %149, %148
  store i32 %150, i32* %7, align 4
  %151 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %4, align 8
  %152 = load i32, i32* @WM8400_POWER_MANAGEMENT_1, align 4
  %153 = load i32, i32* %7, align 4
  %154 = call i32 @wm8400_write(%struct.snd_soc_codec* %151, i32 %152, i32 %153)
  %155 = call i32 @msleep(i32 300)
  %156 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %4, align 8
  %157 = load i32, i32* @WM8400_ANTIPOP1, align 4
  %158 = load i32, i32* @WM8400_DIS_LLINE, align 4
  %159 = load i32, i32* @WM8400_DIS_RLINE, align 4
  %160 = or i32 %158, %159
  %161 = load i32, i32* @WM8400_DIS_OUT3, align 4
  %162 = or i32 %160, %161
  %163 = load i32, i32* @WM8400_DIS_OUT4, align 4
  %164 = or i32 %162, %163
  %165 = load i32, i32* @WM8400_DIS_LOUT, align 4
  %166 = or i32 %164, %165
  %167 = load i32, i32* @WM8400_DIS_ROUT, align 4
  %168 = or i32 %166, %167
  %169 = call i32 @wm8400_write(%struct.snd_soc_codec* %156, i32 %157, i32 %168)
  %170 = load i32, i32* @WM8400_VREF_ENA, align 4
  %171 = xor i32 %170, -1
  %172 = load i32, i32* %7, align 4
  %173 = and i32 %172, %171
  store i32 %173, i32* %7, align 4
  %174 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %4, align 8
  %175 = load i32, i32* @WM8400_POWER_MANAGEMENT_1, align 4
  %176 = load i32, i32* %7, align 4
  %177 = call i32 @wm8400_write(%struct.snd_soc_codec* %174, i32 %175, i32 %176)
  %178 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %4, align 8
  %179 = load i32, i32* @WM8400_ANTIPOP2, align 4
  %180 = call i32 @wm8400_write(%struct.snd_soc_codec* %178, i32 %179, i32 0)
  %181 = load i32*, i32** @power, align 8
  %182 = call i32 @ARRAY_SIZE(i32* %181)
  %183 = load i32*, i32** @power, align 8
  %184 = getelementptr inbounds i32, i32* %183, i64 0
  %185 = call i32 @regulator_bulk_disable(i32 %182, i32* %184)
  store i32 %185, i32* %8, align 4
  %186 = load i32, i32* %8, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %190

188:                                              ; preds = %101
  %189 = load i32, i32* %8, align 4
  store i32 %189, i32* %3, align 4
  br label %195

190:                                              ; preds = %101
  br label %191

191:                                              ; preds = %2, %190, %89, %14, %13
  %192 = load i32, i32* %5, align 4
  %193 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %4, align 8
  %194 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %193, i32 0, i32 0
  store i32 %192, i32* %194, align 8
  store i32 0, i32* %3, align 4
  br label %195

195:                                              ; preds = %191, %188, %39
  %196 = load i32, i32* %3, align 4
  ret i32 %196
}

declare dso_local i32 @wm8400_read(%struct.snd_soc_codec*, i32) #1

declare dso_local i32 @wm8400_write(%struct.snd_soc_codec*, i32, i32) #1

declare dso_local i32 @regulator_bulk_enable(i32, i32*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @regulator_bulk_disable(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
