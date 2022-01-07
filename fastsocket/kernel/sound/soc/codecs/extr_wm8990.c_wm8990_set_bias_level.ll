; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm8990.c_wm8990_set_bias_level.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm8990.c_wm8990_set_bias_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_codec = type { i32 }

@WM8990_POWER_MANAGEMENT_1 = common dso_local global i32 0, align 4
@WM8990_VMID_MODE_MASK = common dso_local global i32 0, align 4
@WM8990_ANTIPOP1 = common dso_local global i32 0, align 4
@WM8990_DIS_LLINE = common dso_local global i32 0, align 4
@WM8990_DIS_RLINE = common dso_local global i32 0, align 4
@WM8990_DIS_OUT3 = common dso_local global i32 0, align 4
@WM8990_DIS_OUT4 = common dso_local global i32 0, align 4
@WM8990_DIS_LOUT = common dso_local global i32 0, align 4
@WM8990_DIS_ROUT = common dso_local global i32 0, align 4
@WM8990_ANTIPOP2 = common dso_local global i32 0, align 4
@WM8990_SOFTST = common dso_local global i32 0, align 4
@WM8990_BUFDCOPEN = common dso_local global i32 0, align 4
@WM8990_POBCTRL = common dso_local global i32 0, align 4
@WM8990_VMIDTOG = common dso_local global i32 0, align 4
@WM8990_BUFIOEN = common dso_local global i32 0, align 4
@WM8990_EXT_ACCESS_ENA = common dso_local global i32 0, align 4
@WM8990_EXT_CTL1 = common dso_local global i32 0, align 4
@WM8990_DAC_CTRL = common dso_local global i32 0, align 4
@WM8990_DAC_MUTE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_codec*, i32)* @wm8990_set_bias_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8990_set_bias_level(%struct.snd_soc_codec* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_soc_codec*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.snd_soc_codec* %0, %struct.snd_soc_codec** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %172 [
    i32 130, label %7
    i32 129, label %8
    i32 128, label %20
    i32 131, label %116
  ]

7:                                                ; preds = %2
  br label %172

8:                                                ; preds = %2
  %9 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %10 = load i32, i32* @WM8990_POWER_MANAGEMENT_1, align 4
  %11 = call i32 @snd_soc_read(%struct.snd_soc_codec* %9, i32 %10)
  %12 = load i32, i32* @WM8990_VMID_MODE_MASK, align 4
  %13 = xor i32 %12, -1
  %14 = and i32 %11, %13
  store i32 %14, i32* %5, align 4
  %15 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %16 = load i32, i32* @WM8990_POWER_MANAGEMENT_1, align 4
  %17 = load i32, i32* %5, align 4
  %18 = or i32 %17, 2
  %19 = call i32 @snd_soc_write(%struct.snd_soc_codec* %15, i32 %16, i32 %18)
  br label %172

20:                                               ; preds = %2
  %21 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %22 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp eq i32 %23, 131
  br i1 %24, label %25, label %104

25:                                               ; preds = %20
  %26 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %27 = load i32, i32* @WM8990_ANTIPOP1, align 4
  %28 = load i32, i32* @WM8990_DIS_LLINE, align 4
  %29 = load i32, i32* @WM8990_DIS_RLINE, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @WM8990_DIS_OUT3, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @WM8990_DIS_OUT4, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @WM8990_DIS_LOUT, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @WM8990_DIS_ROUT, align 4
  %38 = or i32 %36, %37
  %39 = call i32 @snd_soc_write(%struct.snd_soc_codec* %26, i32 %27, i32 %38)
  %40 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %41 = load i32, i32* @WM8990_ANTIPOP2, align 4
  %42 = load i32, i32* @WM8990_SOFTST, align 4
  %43 = load i32, i32* @WM8990_BUFDCOPEN, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @WM8990_POBCTRL, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @WM8990_VMIDTOG, align 4
  %48 = or i32 %46, %47
  %49 = call i32 @snd_soc_write(%struct.snd_soc_codec* %40, i32 %41, i32 %48)
  %50 = call i32 @msecs_to_jiffies(i32 300)
  %51 = call i32 @msleep(i32 %50)
  %52 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %53 = load i32, i32* @WM8990_ANTIPOP2, align 4
  %54 = load i32, i32* @WM8990_SOFTST, align 4
  %55 = load i32, i32* @WM8990_BUFDCOPEN, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* @WM8990_POBCTRL, align 4
  %58 = or i32 %56, %57
  %59 = call i32 @snd_soc_write(%struct.snd_soc_codec* %52, i32 %53, i32 %58)
  %60 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %61 = load i32, i32* @WM8990_ANTIPOP1, align 4
  %62 = call i32 @snd_soc_write(%struct.snd_soc_codec* %60, i32 %61, i32 0)
  %63 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %64 = load i32, i32* @WM8990_POWER_MANAGEMENT_1, align 4
  %65 = call i32 @snd_soc_write(%struct.snd_soc_codec* %63, i32 %64, i32 6912)
  %66 = call i32 @msecs_to_jiffies(i32 50)
  %67 = call i32 @msleep(i32 %66)
  %68 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %69 = load i32, i32* @WM8990_POWER_MANAGEMENT_1, align 4
  %70 = call i32 @snd_soc_write(%struct.snd_soc_codec* %68, i32 %69, i32 7938)
  %71 = call i32 @msecs_to_jiffies(i32 100)
  %72 = call i32 @msleep(i32 %71)
  %73 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %74 = load i32, i32* @WM8990_POWER_MANAGEMENT_1, align 4
  %75 = call i32 @snd_soc_write(%struct.snd_soc_codec* %73, i32 %74, i32 7939)
  %76 = call i32 @msecs_to_jiffies(i32 600)
  %77 = call i32 @msleep(i32 %76)
  %78 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %79 = load i32, i32* @WM8990_ANTIPOP2, align 4
  %80 = load i32, i32* @WM8990_SOFTST, align 4
  %81 = load i32, i32* @WM8990_BUFDCOPEN, align 4
  %82 = or i32 %80, %81
  %83 = load i32, i32* @WM8990_POBCTRL, align 4
  %84 = or i32 %82, %83
  %85 = load i32, i32* @WM8990_BUFIOEN, align 4
  %86 = or i32 %84, %85
  %87 = call i32 @snd_soc_write(%struct.snd_soc_codec* %78, i32 %79, i32 %86)
  %88 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %89 = load i32, i32* @WM8990_POWER_MANAGEMENT_1, align 4
  %90 = call i32 @snd_soc_write(%struct.snd_soc_codec* %88, i32 %89, i32 3)
  %91 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %92 = load i32, i32* @WM8990_ANTIPOP2, align 4
  %93 = load i32, i32* @WM8990_BUFIOEN, align 4
  %94 = call i32 @snd_soc_write(%struct.snd_soc_codec* %91, i32 %92, i32 %93)
  %95 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %96 = load i32, i32* @WM8990_EXT_ACCESS_ENA, align 4
  %97 = call i32 @snd_soc_write(%struct.snd_soc_codec* %95, i32 %96, i32 2)
  %98 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %99 = load i32, i32* @WM8990_EXT_CTL1, align 4
  %100 = call i32 @snd_soc_write(%struct.snd_soc_codec* %98, i32 %99, i32 40963)
  %101 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %102 = load i32, i32* @WM8990_EXT_ACCESS_ENA, align 4
  %103 = call i32 @snd_soc_write(%struct.snd_soc_codec* %101, i32 %102, i32 0)
  br label %104

104:                                              ; preds = %25, %20
  %105 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %106 = load i32, i32* @WM8990_POWER_MANAGEMENT_1, align 4
  %107 = call i32 @snd_soc_read(%struct.snd_soc_codec* %105, i32 %106)
  %108 = load i32, i32* @WM8990_VMID_MODE_MASK, align 4
  %109 = xor i32 %108, -1
  %110 = and i32 %107, %109
  store i32 %110, i32* %5, align 4
  %111 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %112 = load i32, i32* @WM8990_POWER_MANAGEMENT_1, align 4
  %113 = load i32, i32* %5, align 4
  %114 = or i32 %113, 4
  %115 = call i32 @snd_soc_write(%struct.snd_soc_codec* %111, i32 %112, i32 %114)
  br label %172

116:                                              ; preds = %2
  %117 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %118 = load i32, i32* @WM8990_ANTIPOP2, align 4
  %119 = load i32, i32* @WM8990_SOFTST, align 4
  %120 = load i32, i32* @WM8990_POBCTRL, align 4
  %121 = or i32 %119, %120
  %122 = load i32, i32* @WM8990_BUFIOEN, align 4
  %123 = or i32 %121, %122
  %124 = call i32 @snd_soc_write(%struct.snd_soc_codec* %117, i32 %118, i32 %123)
  %125 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %126 = load i32, i32* @WM8990_ANTIPOP2, align 4
  %127 = load i32, i32* @WM8990_SOFTST, align 4
  %128 = load i32, i32* @WM8990_BUFDCOPEN, align 4
  %129 = or i32 %127, %128
  %130 = load i32, i32* @WM8990_POBCTRL, align 4
  %131 = or i32 %129, %130
  %132 = load i32, i32* @WM8990_BUFIOEN, align 4
  %133 = or i32 %131, %132
  %134 = call i32 @snd_soc_write(%struct.snd_soc_codec* %125, i32 %126, i32 %133)
  %135 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %136 = load i32, i32* @WM8990_DAC_CTRL, align 4
  %137 = call i32 @snd_soc_read(%struct.snd_soc_codec* %135, i32 %136)
  store i32 %137, i32* %5, align 4
  %138 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %139 = load i32, i32* @WM8990_DAC_CTRL, align 4
  %140 = load i32, i32* %5, align 4
  %141 = load i32, i32* @WM8990_DAC_MUTE, align 4
  %142 = or i32 %140, %141
  %143 = call i32 @snd_soc_write(%struct.snd_soc_codec* %138, i32 %139, i32 %142)
  %144 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %145 = load i32, i32* @WM8990_POWER_MANAGEMENT_1, align 4
  %146 = call i32 @snd_soc_write(%struct.snd_soc_codec* %144, i32 %145, i32 7939)
  %147 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %148 = load i32, i32* @WM8990_POWER_MANAGEMENT_1, align 4
  %149 = call i32 @snd_soc_write(%struct.snd_soc_codec* %147, i32 %148, i32 7937)
  %150 = call i32 @msecs_to_jiffies(i32 300)
  %151 = call i32 @msleep(i32 %150)
  %152 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %153 = load i32, i32* @WM8990_ANTIPOP1, align 4
  %154 = load i32, i32* @WM8990_DIS_LLINE, align 4
  %155 = load i32, i32* @WM8990_DIS_RLINE, align 4
  %156 = or i32 %154, %155
  %157 = load i32, i32* @WM8990_DIS_OUT3, align 4
  %158 = or i32 %156, %157
  %159 = load i32, i32* @WM8990_DIS_OUT4, align 4
  %160 = or i32 %158, %159
  %161 = load i32, i32* @WM8990_DIS_LOUT, align 4
  %162 = or i32 %160, %161
  %163 = load i32, i32* @WM8990_DIS_ROUT, align 4
  %164 = or i32 %162, %163
  %165 = call i32 @snd_soc_write(%struct.snd_soc_codec* %152, i32 %153, i32 %164)
  %166 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %167 = load i32, i32* @WM8990_POWER_MANAGEMENT_1, align 4
  %168 = call i32 @snd_soc_write(%struct.snd_soc_codec* %166, i32 %167, i32 0)
  %169 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %170 = load i32, i32* @WM8990_ANTIPOP2, align 4
  %171 = call i32 @snd_soc_write(%struct.snd_soc_codec* %169, i32 %170, i32 0)
  br label %172

172:                                              ; preds = %2, %116, %104, %8, %7
  %173 = load i32, i32* %4, align 4
  %174 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %175 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %174, i32 0, i32 0
  store i32 %173, i32* %175, align 4
  ret i32 0
}

declare dso_local i32 @snd_soc_read(%struct.snd_soc_codec*, i32) #1

declare dso_local i32 @snd_soc_write(%struct.snd_soc_codec*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
