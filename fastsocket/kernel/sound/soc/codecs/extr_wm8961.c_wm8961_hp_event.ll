; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm8961.c_wm8961_hp_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm8961.c_wm8961_hp_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dapm_widget = type { %struct.snd_soc_codec* }
%struct.snd_soc_codec = type { i32 }
%struct.snd_kcontrol = type { i32 }

@WM8961_ANALOGUE_HP_0 = common dso_local global i32 0, align 4
@WM8961_CHARGE_PUMP_1 = common dso_local global i32 0, align 4
@WM8961_PWR_MGMT_2 = common dso_local global i32 0, align 4
@WM8961_DC_SERVO_1 = common dso_local global i32 0, align 4
@SND_SOC_DAPM_POST_PMU = common dso_local global i32 0, align 4
@WM8961_HPR_RMV_SHORT = common dso_local global i32 0, align 4
@WM8961_HPL_RMV_SHORT = common dso_local global i32 0, align 4
@WM8961_CP_ENA = common dso_local global i32 0, align 4
@WM8961_LOUT1_PGA = common dso_local global i32 0, align 4
@WM8961_ROUT1_PGA = common dso_local global i32 0, align 4
@WM8961_HPR_ENA = common dso_local global i32 0, align 4
@WM8961_HPL_ENA = common dso_local global i32 0, align 4
@WM8961_HPR_ENA_DLY = common dso_local global i32 0, align 4
@WM8961_HPL_ENA_DLY = common dso_local global i32 0, align 4
@WM8961_DCS_ENA_CHAN_HPR = common dso_local global i32 0, align 4
@WM8961_DCS_TRIG_STARTUP_HPR = common dso_local global i32 0, align 4
@WM8961_DCS_ENA_CHAN_HPL = common dso_local global i32 0, align 4
@WM8961_DCS_TRIG_STARTUP_HPL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Enabling DC servo\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"DC servo timed out\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"DC servo startup complete\0A\00", align 1
@WM8961_HPR_ENA_OUTP = common dso_local global i32 0, align 4
@WM8961_HPL_ENA_OUTP = common dso_local global i32 0, align 4
@SND_SOC_DAPM_PRE_PMD = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"Disabling charge pump\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dapm_widget*, %struct.snd_kcontrol*, i32)* @wm8961_hp_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8961_hp_event(%struct.snd_soc_dapm_widget* %0, %struct.snd_kcontrol* %1, i32 %2) #0 {
  %4 = alloca %struct.snd_soc_dapm_widget*, align 8
  %5 = alloca %struct.snd_kcontrol*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_soc_codec*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.snd_soc_dapm_widget* %0, %struct.snd_soc_dapm_widget** %4, align 8
  store %struct.snd_kcontrol* %1, %struct.snd_kcontrol** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %4, align 8
  %14 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %13, i32 0, i32 0
  %15 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %14, align 8
  store %struct.snd_soc_codec* %15, %struct.snd_soc_codec** %7, align 8
  %16 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %7, align 8
  %17 = load i32, i32* @WM8961_ANALOGUE_HP_0, align 4
  %18 = call i32 @snd_soc_read(%struct.snd_soc_codec* %16, i32 %17)
  store i32 %18, i32* %8, align 4
  %19 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %7, align 8
  %20 = load i32, i32* @WM8961_CHARGE_PUMP_1, align 4
  %21 = call i32 @snd_soc_read(%struct.snd_soc_codec* %19, i32 %20)
  store i32 %21, i32* %9, align 4
  %22 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %7, align 8
  %23 = load i32, i32* @WM8961_PWR_MGMT_2, align 4
  %24 = call i32 @snd_soc_read(%struct.snd_soc_codec* %22, i32 %23)
  store i32 %24, i32* %10, align 4
  %25 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %7, align 8
  %26 = load i32, i32* @WM8961_DC_SERVO_1, align 4
  %27 = call i32 @snd_soc_read(%struct.snd_soc_codec* %25, i32 %26)
  store i32 %27, i32* %11, align 4
  store i32 500, i32* %12, align 4
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @SND_SOC_DAPM_POST_PMU, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %149

32:                                               ; preds = %3
  %33 = load i32, i32* @WM8961_HPR_RMV_SHORT, align 4
  %34 = load i32, i32* @WM8961_HPL_RMV_SHORT, align 4
  %35 = or i32 %33, %34
  %36 = xor i32 %35, -1
  %37 = load i32, i32* %8, align 4
  %38 = and i32 %37, %36
  store i32 %38, i32* %8, align 4
  %39 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %7, align 8
  %40 = load i32, i32* @WM8961_ANALOGUE_HP_0, align 4
  %41 = load i32, i32* %8, align 4
  %42 = call i32 @snd_soc_write(%struct.snd_soc_codec* %39, i32 %40, i32 %41)
  %43 = load i32, i32* @WM8961_CP_ENA, align 4
  %44 = load i32, i32* %9, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %9, align 4
  %46 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %7, align 8
  %47 = load i32, i32* @WM8961_CHARGE_PUMP_1, align 4
  %48 = load i32, i32* %9, align 4
  %49 = call i32 @snd_soc_write(%struct.snd_soc_codec* %46, i32 %47, i32 %48)
  %50 = call i32 @mdelay(i32 5)
  %51 = load i32, i32* @WM8961_LOUT1_PGA, align 4
  %52 = load i32, i32* @WM8961_ROUT1_PGA, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* %10, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %10, align 4
  %56 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %7, align 8
  %57 = load i32, i32* @WM8961_PWR_MGMT_2, align 4
  %58 = load i32, i32* %10, align 4
  %59 = call i32 @snd_soc_write(%struct.snd_soc_codec* %56, i32 %57, i32 %58)
  %60 = load i32, i32* @WM8961_HPR_ENA, align 4
  %61 = load i32, i32* @WM8961_HPL_ENA, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* %8, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %8, align 4
  %65 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %7, align 8
  %66 = load i32, i32* @WM8961_ANALOGUE_HP_0, align 4
  %67 = load i32, i32* %8, align 4
  %68 = call i32 @snd_soc_write(%struct.snd_soc_codec* %65, i32 %66, i32 %67)
  %69 = load i32, i32* @WM8961_HPR_ENA_DLY, align 4
  %70 = load i32, i32* @WM8961_HPL_ENA_DLY, align 4
  %71 = or i32 %69, %70
  %72 = load i32, i32* %8, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %8, align 4
  %74 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %7, align 8
  %75 = load i32, i32* @WM8961_ANALOGUE_HP_0, align 4
  %76 = load i32, i32* %8, align 4
  %77 = call i32 @snd_soc_write(%struct.snd_soc_codec* %74, i32 %75, i32 %76)
  %78 = load i32, i32* @WM8961_DCS_ENA_CHAN_HPR, align 4
  %79 = load i32, i32* @WM8961_DCS_TRIG_STARTUP_HPR, align 4
  %80 = or i32 %78, %79
  %81 = load i32, i32* @WM8961_DCS_ENA_CHAN_HPL, align 4
  %82 = or i32 %80, %81
  %83 = load i32, i32* @WM8961_DCS_TRIG_STARTUP_HPL, align 4
  %84 = or i32 %82, %83
  %85 = load i32, i32* %11, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %11, align 4
  %87 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %7, align 8
  %88 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @dev_dbg(i32 %89, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %91 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %7, align 8
  %92 = load i32, i32* @WM8961_DC_SERVO_1, align 4
  %93 = load i32, i32* %11, align 4
  %94 = call i32 @snd_soc_write(%struct.snd_soc_codec* %91, i32 %92, i32 %93)
  br label %95

95:                                               ; preds = %111, %32
  %96 = call i32 @msleep(i32 1)
  %97 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %7, align 8
  %98 = load i32, i32* @WM8961_DC_SERVO_1, align 4
  %99 = call i32 @snd_soc_read(%struct.snd_soc_codec* %97, i32 %98)
  store i32 %99, i32* %11, align 4
  br label %100

100:                                              ; preds = %95
  %101 = load i32, i32* %12, align 4
  %102 = add nsw i32 %101, -1
  store i32 %102, i32* %12, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %111

104:                                              ; preds = %100
  %105 = load i32, i32* %11, align 4
  %106 = load i32, i32* @WM8961_DCS_TRIG_STARTUP_HPR, align 4
  %107 = load i32, i32* @WM8961_DCS_TRIG_STARTUP_HPL, align 4
  %108 = or i32 %106, %107
  %109 = and i32 %105, %108
  %110 = icmp ne i32 %109, 0
  br label %111

111:                                              ; preds = %104, %100
  %112 = phi i1 [ false, %100 ], [ %110, %104 ]
  br i1 %112, label %95, label %113

113:                                              ; preds = %111
  %114 = load i32, i32* %11, align 4
  %115 = load i32, i32* @WM8961_DCS_TRIG_STARTUP_HPR, align 4
  %116 = load i32, i32* @WM8961_DCS_TRIG_STARTUP_HPL, align 4
  %117 = or i32 %115, %116
  %118 = and i32 %114, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %125

120:                                              ; preds = %113
  %121 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %7, align 8
  %122 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @dev_err(i32 %123, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  br label %130

125:                                              ; preds = %113
  %126 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %7, align 8
  %127 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @dev_dbg(i32 %128, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  br label %130

130:                                              ; preds = %125, %120
  %131 = load i32, i32* @WM8961_HPR_ENA_OUTP, align 4
  %132 = load i32, i32* @WM8961_HPL_ENA_OUTP, align 4
  %133 = or i32 %131, %132
  %134 = load i32, i32* %8, align 4
  %135 = or i32 %134, %133
  store i32 %135, i32* %8, align 4
  %136 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %7, align 8
  %137 = load i32, i32* @WM8961_ANALOGUE_HP_0, align 4
  %138 = load i32, i32* %8, align 4
  %139 = call i32 @snd_soc_write(%struct.snd_soc_codec* %136, i32 %137, i32 %138)
  %140 = load i32, i32* @WM8961_HPR_RMV_SHORT, align 4
  %141 = load i32, i32* @WM8961_HPL_RMV_SHORT, align 4
  %142 = or i32 %140, %141
  %143 = load i32, i32* %8, align 4
  %144 = or i32 %143, %142
  store i32 %144, i32* %8, align 4
  %145 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %7, align 8
  %146 = load i32, i32* @WM8961_ANALOGUE_HP_0, align 4
  %147 = load i32, i32* %8, align 4
  %148 = call i32 @snd_soc_write(%struct.snd_soc_codec* %145, i32 %146, i32 %147)
  br label %149

149:                                              ; preds = %130, %3
  %150 = load i32, i32* %6, align 4
  %151 = load i32, i32* @SND_SOC_DAPM_PRE_PMD, align 4
  %152 = and i32 %150, %151
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %220

154:                                              ; preds = %149
  %155 = load i32, i32* @WM8961_HPR_RMV_SHORT, align 4
  %156 = load i32, i32* @WM8961_HPL_RMV_SHORT, align 4
  %157 = or i32 %155, %156
  %158 = xor i32 %157, -1
  %159 = load i32, i32* %8, align 4
  %160 = and i32 %159, %158
  store i32 %160, i32* %8, align 4
  %161 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %7, align 8
  %162 = load i32, i32* @WM8961_ANALOGUE_HP_0, align 4
  %163 = load i32, i32* %8, align 4
  %164 = call i32 @snd_soc_write(%struct.snd_soc_codec* %161, i32 %162, i32 %163)
  %165 = load i32, i32* @WM8961_HPR_ENA_OUTP, align 4
  %166 = load i32, i32* @WM8961_HPL_ENA_OUTP, align 4
  %167 = or i32 %165, %166
  %168 = xor i32 %167, -1
  %169 = load i32, i32* %8, align 4
  %170 = and i32 %169, %168
  store i32 %170, i32* %8, align 4
  %171 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %7, align 8
  %172 = load i32, i32* @WM8961_ANALOGUE_HP_0, align 4
  %173 = load i32, i32* %8, align 4
  %174 = call i32 @snd_soc_write(%struct.snd_soc_codec* %171, i32 %172, i32 %173)
  %175 = load i32, i32* @WM8961_DCS_ENA_CHAN_HPR, align 4
  %176 = load i32, i32* @WM8961_DCS_ENA_CHAN_HPL, align 4
  %177 = or i32 %175, %176
  %178 = xor i32 %177, -1
  %179 = load i32, i32* %11, align 4
  %180 = and i32 %179, %178
  store i32 %180, i32* %11, align 4
  %181 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %7, align 8
  %182 = load i32, i32* @WM8961_DC_SERVO_1, align 4
  %183 = load i32, i32* %11, align 4
  %184 = call i32 @snd_soc_write(%struct.snd_soc_codec* %181, i32 %182, i32 %183)
  %185 = load i32, i32* @WM8961_HPR_ENA_DLY, align 4
  %186 = load i32, i32* @WM8961_HPR_ENA, align 4
  %187 = or i32 %185, %186
  %188 = load i32, i32* @WM8961_HPL_ENA_DLY, align 4
  %189 = or i32 %187, %188
  %190 = load i32, i32* @WM8961_HPL_ENA, align 4
  %191 = or i32 %189, %190
  %192 = xor i32 %191, -1
  %193 = load i32, i32* %8, align 4
  %194 = and i32 %193, %192
  store i32 %194, i32* %8, align 4
  %195 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %7, align 8
  %196 = load i32, i32* @WM8961_ANALOGUE_HP_0, align 4
  %197 = load i32, i32* %8, align 4
  %198 = call i32 @snd_soc_write(%struct.snd_soc_codec* %195, i32 %196, i32 %197)
  %199 = load i32, i32* @WM8961_LOUT1_PGA, align 4
  %200 = load i32, i32* @WM8961_ROUT1_PGA, align 4
  %201 = or i32 %199, %200
  %202 = xor i32 %201, -1
  %203 = load i32, i32* %10, align 4
  %204 = and i32 %203, %202
  store i32 %204, i32* %10, align 4
  %205 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %7, align 8
  %206 = load i32, i32* @WM8961_PWR_MGMT_2, align 4
  %207 = load i32, i32* %10, align 4
  %208 = call i32 @snd_soc_write(%struct.snd_soc_codec* %205, i32 %206, i32 %207)
  %209 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %7, align 8
  %210 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 4
  %212 = call i32 @dev_dbg(i32 %211, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %213 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %7, align 8
  %214 = load i32, i32* @WM8961_CHARGE_PUMP_1, align 4
  %215 = load i32, i32* %9, align 4
  %216 = load i32, i32* @WM8961_CP_ENA, align 4
  %217 = xor i32 %216, -1
  %218 = and i32 %215, %217
  %219 = call i32 @snd_soc_write(%struct.snd_soc_codec* %213, i32 %214, i32 %218)
  br label %220

220:                                              ; preds = %154, %149
  ret i32 0
}

declare dso_local i32 @snd_soc_read(%struct.snd_soc_codec*, i32) #1

declare dso_local i32 @snd_soc_write(%struct.snd_soc_codec*, i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
