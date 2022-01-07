; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm8903.c_wm8903_output_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm8903.c_wm8903_output_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dapm_widget = type { i32, i32, %struct.snd_soc_codec* }
%struct.snd_soc_codec = type { i32 }
%struct.snd_kcontrol = type { i32 }

@WM8903_ANALOGUE_HP_0 = common dso_local global i32 0, align 4
@WM8903_ANALOGUE_LINEOUT_0 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SND_SOC_DAPM_PRE_PMU = common dso_local global i32 0, align 4
@WM8903_OUTPUT_SHORT = common dso_local global i32 0, align 4
@SND_SOC_DAPM_POST_PMU = common dso_local global i32 0, align 4
@WM8903_OUTPUT_IN = common dso_local global i32 0, align 4
@WM8903_OUTPUT_INT = common dso_local global i32 0, align 4
@WM8903_OUTPUT_OUT = common dso_local global i32 0, align 4
@WM8903_DC_SERVO_0 = common dso_local global i32 0, align 4
@SND_SOC_DAPM_PRE_PMD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dapm_widget*, %struct.snd_kcontrol*, i32)* @wm8903_output_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8903_output_event(%struct.snd_soc_dapm_widget* %0, %struct.snd_kcontrol* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_soc_dapm_widget*, align 8
  %6 = alloca %struct.snd_kcontrol*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.snd_soc_codec*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.snd_soc_dapm_widget* %0, %struct.snd_soc_dapm_widget** %5, align 8
  store %struct.snd_kcontrol* %1, %struct.snd_kcontrol** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %5, align 8
  %15 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %14, i32 0, i32 2
  %16 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %15, align 8
  store %struct.snd_soc_codec* %16, %struct.snd_soc_codec** %8, align 8
  %17 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %5, align 8
  %18 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  switch i32 %19, label %32 [
    i32 129, label %20
    i32 128, label %26
  ]

20:                                               ; preds = %3
  %21 = load i32, i32* @WM8903_ANALOGUE_HP_0, align 4
  store i32 %21, i32* %10, align 4
  %22 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %5, align 8
  %23 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = add nsw i32 0, %24
  store i32 %25, i32* %12, align 4
  br label %36

26:                                               ; preds = %3
  %27 = load i32, i32* @WM8903_ANALOGUE_LINEOUT_0, align 4
  store i32 %27, i32* %10, align 4
  %28 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %5, align 8
  %29 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = add nsw i32 2, %30
  store i32 %31, i32* %12, align 4
  br label %36

32:                                               ; preds = %3
  %33 = call i32 (...) @BUG()
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %165

36:                                               ; preds = %26, %20
  %37 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %5, align 8
  %38 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  switch i32 %39, label %42 [
    i32 0, label %40
    i32 1, label %41
  ]

40:                                               ; preds = %36
  store i32 0, i32* %13, align 4
  br label %46

41:                                               ; preds = %36
  store i32 4, i32* %13, align 4
  br label %46

42:                                               ; preds = %36
  %43 = call i32 (...) @BUG()
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %4, align 4
  br label %165

46:                                               ; preds = %41, %40
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* @SND_SOC_DAPM_PRE_PMU, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %65

51:                                               ; preds = %46
  %52 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %8, align 8
  %53 = load i32, i32* %10, align 4
  %54 = call i32 @snd_soc_read(%struct.snd_soc_codec* %52, i32 %53)
  store i32 %54, i32* %9, align 4
  %55 = load i32, i32* @WM8903_OUTPUT_SHORT, align 4
  %56 = load i32, i32* %13, align 4
  %57 = shl i32 %55, %56
  %58 = xor i32 %57, -1
  %59 = load i32, i32* %9, align 4
  %60 = and i32 %59, %58
  store i32 %60, i32* %9, align 4
  %61 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %8, align 8
  %62 = load i32, i32* %10, align 4
  %63 = load i32, i32* %9, align 4
  %64 = call i32 @snd_soc_write(%struct.snd_soc_codec* %61, i32 %62, i32 %63)
  br label %65

65:                                               ; preds = %51, %46
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* @SND_SOC_DAPM_POST_PMU, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %120

70:                                               ; preds = %65
  %71 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %8, align 8
  %72 = load i32, i32* %10, align 4
  %73 = call i32 @snd_soc_read(%struct.snd_soc_codec* %71, i32 %72)
  store i32 %73, i32* %9, align 4
  %74 = load i32, i32* @WM8903_OUTPUT_IN, align 4
  %75 = load i32, i32* %13, align 4
  %76 = shl i32 %74, %75
  %77 = load i32, i32* %9, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %9, align 4
  %79 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %8, align 8
  %80 = load i32, i32* %10, align 4
  %81 = load i32, i32* %9, align 4
  %82 = call i32 @snd_soc_write(%struct.snd_soc_codec* %79, i32 %80, i32 %81)
  %83 = load i32, i32* @WM8903_OUTPUT_INT, align 4
  %84 = load i32, i32* %13, align 4
  %85 = shl i32 %83, %84
  %86 = load i32, i32* %9, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %9, align 4
  %88 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %8, align 8
  %89 = load i32, i32* %10, align 4
  %90 = load i32, i32* %9, align 4
  %91 = call i32 @snd_soc_write(%struct.snd_soc_codec* %88, i32 %89, i32 %90)
  %92 = load i32, i32* @WM8903_OUTPUT_OUT, align 4
  %93 = load i32, i32* %13, align 4
  %94 = shl i32 %92, %93
  %95 = load i32, i32* %9, align 4
  %96 = or i32 %95, %94
  store i32 %96, i32* %9, align 4
  %97 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %8, align 8
  %98 = load i32, i32* %10, align 4
  %99 = load i32, i32* %9, align 4
  %100 = call i32 @snd_soc_write(%struct.snd_soc_codec* %97, i32 %98, i32 %99)
  %101 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %8, align 8
  %102 = load i32, i32* @WM8903_DC_SERVO_0, align 4
  %103 = call i32 @snd_soc_read(%struct.snd_soc_codec* %101, i32 %102)
  store i32 %103, i32* %11, align 4
  %104 = load i32, i32* %12, align 4
  %105 = load i32, i32* %11, align 4
  %106 = or i32 %105, %104
  store i32 %106, i32* %11, align 4
  %107 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %8, align 8
  %108 = load i32, i32* @WM8903_DC_SERVO_0, align 4
  %109 = load i32, i32* %11, align 4
  %110 = call i32 @snd_soc_write(%struct.snd_soc_codec* %107, i32 %108, i32 %109)
  %111 = load i32, i32* @WM8903_OUTPUT_SHORT, align 4
  %112 = load i32, i32* %13, align 4
  %113 = shl i32 %111, %112
  %114 = load i32, i32* %9, align 4
  %115 = or i32 %114, %113
  store i32 %115, i32* %9, align 4
  %116 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %8, align 8
  %117 = load i32, i32* %10, align 4
  %118 = load i32, i32* %9, align 4
  %119 = call i32 @snd_soc_write(%struct.snd_soc_codec* %116, i32 %117, i32 %118)
  br label %120

120:                                              ; preds = %70, %65
  %121 = load i32, i32* %7, align 4
  %122 = load i32, i32* @SND_SOC_DAPM_PRE_PMD, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %164

125:                                              ; preds = %120
  %126 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %8, align 8
  %127 = load i32, i32* %10, align 4
  %128 = call i32 @snd_soc_read(%struct.snd_soc_codec* %126, i32 %127)
  store i32 %128, i32* %9, align 4
  %129 = load i32, i32* @WM8903_OUTPUT_SHORT, align 4
  %130 = load i32, i32* %13, align 4
  %131 = shl i32 %129, %130
  %132 = xor i32 %131, -1
  %133 = load i32, i32* %9, align 4
  %134 = and i32 %133, %132
  store i32 %134, i32* %9, align 4
  %135 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %8, align 8
  %136 = load i32, i32* %10, align 4
  %137 = load i32, i32* %9, align 4
  %138 = call i32 @snd_soc_write(%struct.snd_soc_codec* %135, i32 %136, i32 %137)
  %139 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %8, align 8
  %140 = load i32, i32* @WM8903_DC_SERVO_0, align 4
  %141 = call i32 @snd_soc_read(%struct.snd_soc_codec* %139, i32 %140)
  store i32 %141, i32* %11, align 4
  %142 = load i32, i32* %12, align 4
  %143 = xor i32 %142, -1
  %144 = load i32, i32* %11, align 4
  %145 = and i32 %144, %143
  store i32 %145, i32* %11, align 4
  %146 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %8, align 8
  %147 = load i32, i32* @WM8903_DC_SERVO_0, align 4
  %148 = load i32, i32* %11, align 4
  %149 = call i32 @snd_soc_write(%struct.snd_soc_codec* %146, i32 %147, i32 %148)
  %150 = load i32, i32* @WM8903_OUTPUT_OUT, align 4
  %151 = load i32, i32* @WM8903_OUTPUT_INT, align 4
  %152 = or i32 %150, %151
  %153 = load i32, i32* @WM8903_OUTPUT_IN, align 4
  %154 = or i32 %152, %153
  %155 = load i32, i32* %13, align 4
  %156 = shl i32 %154, %155
  %157 = xor i32 %156, -1
  %158 = load i32, i32* %9, align 4
  %159 = and i32 %158, %157
  store i32 %159, i32* %9, align 4
  %160 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %8, align 8
  %161 = load i32, i32* %10, align 4
  %162 = load i32, i32* %9, align 4
  %163 = call i32 @snd_soc_write(%struct.snd_soc_codec* %160, i32 %161, i32 %162)
  br label %164

164:                                              ; preds = %125, %120
  store i32 0, i32* %4, align 4
  br label %165

165:                                              ; preds = %164, %42, %32
  %166 = load i32, i32* %4, align 4
  ret i32 %166
}

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @snd_soc_read(%struct.snd_soc_codec*, i32) #1

declare dso_local i32 @snd_soc_write(%struct.snd_soc_codec*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
