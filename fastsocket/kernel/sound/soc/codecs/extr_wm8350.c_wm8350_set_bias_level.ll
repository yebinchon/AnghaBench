; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm8350.c_wm8350_set_bias_level.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm8350.c_wm8350_set_bias_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_codec = type { i32, %struct.wm8350_data*, %struct.wm8350* }
%struct.wm8350_data = type { i32 }
%struct.wm8350 = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.wm8350_audio_platform_data* }
%struct.wm8350_audio_platform_data = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@WM8350_POWER_MGMT_1 = common dso_local global i32 0, align 4
@WM8350_VMID_MASK = common dso_local global i32 0, align 4
@WM8350_CODEC_ISEL_MASK = common dso_local global i32 0, align 4
@WM8350_VMID_50K = common dso_local global i32 0, align 4
@WM8350_POWER_MGMT_4 = common dso_local global i32 0, align 4
@WM8350_SYSCLK_ENA = common dso_local global i32 0, align 4
@WM8350_DAC_MUTE = common dso_local global i32 0, align 4
@WM8350_DAC_MUTE_ENA = common dso_local global i32 0, align 4
@WM8350_ANTI_POP_CONTROL = common dso_local global i32 0, align 4
@WM8350_VMID_5K = common dso_local global i32 0, align 4
@WM8350_VMIDEN = common dso_local global i32 0, align 4
@WM8350_VBUFEN = common dso_local global i32 0, align 4
@WM8350_VMID_300K = common dso_local global i32 0, align 4
@WM8350_BIASEN = common dso_local global i32 0, align 4
@WM8350_POWER_MGMT_3 = common dso_local global i32 0, align 4
@WM8350_OUT1L_ENA = common dso_local global i32 0, align 4
@WM8350_OUT1R_ENA = common dso_local global i32 0, align 4
@WM8350_OUT2L_ENA = common dso_local global i32 0, align 4
@WM8350_OUT2R_ENA = common dso_local global i32 0, align 4
@WM8350_OUTPUT_DRAIN_EN = common dso_local global i32 0, align 4
@WM8350_LOUT1_VOLUME = common dso_local global i32 0, align 4
@WM8350_ROUT1_VOLUME = common dso_local global i32 0, align 4
@WM8350_LOUT2_VOLUME = common dso_local global i32 0, align 4
@WM8350_ROUT2_VOLUME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_codec*, i32)* @wm8350_set_bias_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8350_set_bias_level(%struct.snd_soc_codec* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_codec*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.wm8350*, align 8
  %7 = alloca %struct.wm8350_data*, align 8
  %8 = alloca %struct.wm8350_audio_platform_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.snd_soc_codec* %0, %struct.snd_soc_codec** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %4, align 8
  %12 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %11, i32 0, i32 2
  %13 = load %struct.wm8350*, %struct.wm8350** %12, align 8
  store %struct.wm8350* %13, %struct.wm8350** %6, align 8
  %14 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %4, align 8
  %15 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %14, i32 0, i32 1
  %16 = load %struct.wm8350_data*, %struct.wm8350_data** %15, align 8
  store %struct.wm8350_data* %16, %struct.wm8350_data** %7, align 8
  %17 = load %struct.wm8350*, %struct.wm8350** %6, align 8
  %18 = getelementptr inbounds %struct.wm8350, %struct.wm8350* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load %struct.wm8350_audio_platform_data*, %struct.wm8350_audio_platform_data** %19, align 8
  store %struct.wm8350_audio_platform_data* %20, %struct.wm8350_audio_platform_data** %8, align 8
  %21 = load i32, i32* %5, align 4
  switch i32 %21, label %306 [
    i32 130, label %22
    i32 129, label %42
    i32 128, label %56
    i32 131, label %185
  ]

22:                                               ; preds = %2
  %23 = load %struct.wm8350*, %struct.wm8350** %6, align 8
  %24 = load i32, i32* @WM8350_POWER_MGMT_1, align 4
  %25 = call i32 @wm8350_reg_read(%struct.wm8350* %23, i32 %24)
  %26 = load i32, i32* @WM8350_VMID_MASK, align 4
  %27 = load i32, i32* @WM8350_CODEC_ISEL_MASK, align 4
  %28 = or i32 %26, %27
  %29 = xor i32 %28, -1
  %30 = and i32 %25, %29
  store i32 %30, i32* %9, align 4
  %31 = load %struct.wm8350*, %struct.wm8350** %6, align 8
  %32 = load i32, i32* @WM8350_POWER_MGMT_1, align 4
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* @WM8350_VMID_50K, align 4
  %35 = or i32 %33, %34
  %36 = load %struct.wm8350_audio_platform_data*, %struct.wm8350_audio_platform_data** %8, align 8
  %37 = getelementptr inbounds %struct.wm8350_audio_platform_data, %struct.wm8350_audio_platform_data* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = shl i32 %38, 14
  %40 = or i32 %35, %39
  %41 = call i32 @wm8350_reg_write(%struct.wm8350* %31, i32 %32, i32 %40)
  br label %306

42:                                               ; preds = %2
  %43 = load %struct.wm8350*, %struct.wm8350** %6, align 8
  %44 = load i32, i32* @WM8350_POWER_MGMT_1, align 4
  %45 = call i32 @wm8350_reg_read(%struct.wm8350* %43, i32 %44)
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* @WM8350_VMID_MASK, align 4
  %47 = xor i32 %46, -1
  %48 = load i32, i32* %9, align 4
  %49 = and i32 %48, %47
  store i32 %49, i32* %9, align 4
  %50 = load %struct.wm8350*, %struct.wm8350** %6, align 8
  %51 = load i32, i32* @WM8350_POWER_MGMT_1, align 4
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* @WM8350_VMID_50K, align 4
  %54 = or i32 %52, %53
  %55 = call i32 @wm8350_reg_write(%struct.wm8350* %50, i32 %51, i32 %54)
  br label %306

56:                                               ; preds = %2
  %57 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %4, align 8
  %58 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp eq i32 %59, 131
  br i1 %60, label %61, label %164

61:                                               ; preds = %56
  %62 = load %struct.wm8350_data*, %struct.wm8350_data** %7, align 8
  %63 = getelementptr inbounds %struct.wm8350_data, %struct.wm8350_data* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @ARRAY_SIZE(i32 %64)
  %66 = load %struct.wm8350_data*, %struct.wm8350_data** %7, align 8
  %67 = getelementptr inbounds %struct.wm8350_data, %struct.wm8350_data* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @regulator_bulk_enable(i32 %65, i32 %68)
  store i32 %69, i32* %10, align 4
  %70 = load i32, i32* %10, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %61
  %73 = load i32, i32* %10, align 4
  store i32 %73, i32* %3, align 4
  br label %310

74:                                               ; preds = %61
  %75 = load %struct.wm8350*, %struct.wm8350** %6, align 8
  %76 = load i32, i32* @WM8350_POWER_MGMT_4, align 4
  %77 = load i32, i32* @WM8350_SYSCLK_ENA, align 4
  %78 = call i32 @wm8350_set_bits(%struct.wm8350* %75, i32 %76, i32 %77)
  %79 = load %struct.wm8350*, %struct.wm8350** %6, align 8
  %80 = load i32, i32* @WM8350_DAC_MUTE, align 4
  %81 = load i32, i32* @WM8350_DAC_MUTE_ENA, align 4
  %82 = call i32 @wm8350_set_bits(%struct.wm8350* %79, i32 %80, i32 %81)
  %83 = load %struct.wm8350*, %struct.wm8350** %6, align 8
  %84 = load i32, i32* @WM8350_ANTI_POP_CONTROL, align 4
  %85 = load %struct.wm8350_audio_platform_data*, %struct.wm8350_audio_platform_data** %8, align 8
  %86 = getelementptr inbounds %struct.wm8350_audio_platform_data, %struct.wm8350_audio_platform_data* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.wm8350_audio_platform_data*, %struct.wm8350_audio_platform_data** %8, align 8
  %89 = getelementptr inbounds %struct.wm8350_audio_platform_data, %struct.wm8350_audio_platform_data* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = shl i32 %90, 2
  %92 = or i32 %87, %91
  %93 = load %struct.wm8350_audio_platform_data*, %struct.wm8350_audio_platform_data** %8, align 8
  %94 = getelementptr inbounds %struct.wm8350_audio_platform_data, %struct.wm8350_audio_platform_data* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 4
  %96 = shl i32 %95, 4
  %97 = or i32 %92, %96
  %98 = load %struct.wm8350_audio_platform_data*, %struct.wm8350_audio_platform_data** %8, align 8
  %99 = getelementptr inbounds %struct.wm8350_audio_platform_data, %struct.wm8350_audio_platform_data* %98, i32 0, i32 4
  %100 = load i32, i32* %99, align 4
  %101 = shl i32 %100, 6
  %102 = or i32 %97, %101
  %103 = call i32 @wm8350_reg_write(%struct.wm8350* %83, i32 %84, i32 %102)
  %104 = load %struct.wm8350_audio_platform_data*, %struct.wm8350_audio_platform_data** %8, align 8
  %105 = getelementptr inbounds %struct.wm8350_audio_platform_data, %struct.wm8350_audio_platform_data* %104, i32 0, i32 11
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @msecs_to_jiffies(i32 %106)
  %108 = call i32 @schedule_timeout_interruptible(i32 %107)
  %109 = load %struct.wm8350*, %struct.wm8350** %6, align 8
  %110 = load i32, i32* @WM8350_ANTI_POP_CONTROL, align 4
  %111 = load %struct.wm8350_audio_platform_data*, %struct.wm8350_audio_platform_data** %8, align 8
  %112 = getelementptr inbounds %struct.wm8350_audio_platform_data, %struct.wm8350_audio_platform_data* %111, i32 0, i32 5
  %113 = load i32, i32* %112, align 4
  %114 = shl i32 %113, 8
  %115 = call i32 @wm8350_reg_write(%struct.wm8350* %109, i32 %110, i32 %114)
  %116 = load %struct.wm8350*, %struct.wm8350** %6, align 8
  %117 = load i32, i32* @WM8350_POWER_MGMT_1, align 4
  %118 = load %struct.wm8350_audio_platform_data*, %struct.wm8350_audio_platform_data** %8, align 8
  %119 = getelementptr inbounds %struct.wm8350_audio_platform_data, %struct.wm8350_audio_platform_data* %118, i32 0, i32 6
  %120 = load i32, i32* %119, align 4
  %121 = shl i32 %120, 14
  %122 = load i32, i32* @WM8350_VMID_5K, align 4
  %123 = or i32 %121, %122
  %124 = load i32, i32* @WM8350_VMIDEN, align 4
  %125 = or i32 %123, %124
  %126 = load i32, i32* @WM8350_VBUFEN, align 4
  %127 = or i32 %125, %126
  %128 = call i32 @wm8350_reg_write(%struct.wm8350* %116, i32 %117, i32 %127)
  %129 = load %struct.wm8350_audio_platform_data*, %struct.wm8350_audio_platform_data** %8, align 8
  %130 = getelementptr inbounds %struct.wm8350_audio_platform_data, %struct.wm8350_audio_platform_data* %129, i32 0, i32 10
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @msecs_to_jiffies(i32 %131)
  %133 = call i32 @schedule_timeout_interruptible(i32 %132)
  %134 = load %struct.wm8350*, %struct.wm8350** %6, align 8
  %135 = load i32, i32* @WM8350_POWER_MGMT_1, align 4
  %136 = call i32 @wm8350_reg_read(%struct.wm8350* %134, i32 %135)
  %137 = load i32, i32* @WM8350_VMID_MASK, align 4
  %138 = load i32, i32* @WM8350_CODEC_ISEL_MASK, align 4
  %139 = or i32 %137, %138
  %140 = xor i32 %139, -1
  %141 = and i32 %136, %140
  store i32 %141, i32* %9, align 4
  %142 = load i32, i32* @WM8350_VMID_300K, align 4
  %143 = load %struct.wm8350_audio_platform_data*, %struct.wm8350_audio_platform_data** %8, align 8
  %144 = getelementptr inbounds %struct.wm8350_audio_platform_data, %struct.wm8350_audio_platform_data* %143, i32 0, i32 7
  %145 = load i32, i32* %144, align 4
  %146 = shl i32 %145, 14
  %147 = or i32 %142, %146
  %148 = load i32, i32* %9, align 4
  %149 = or i32 %148, %147
  store i32 %149, i32* %9, align 4
  %150 = load %struct.wm8350*, %struct.wm8350** %6, align 8
  %151 = load i32, i32* @WM8350_POWER_MGMT_1, align 4
  %152 = load i32, i32* %9, align 4
  %153 = call i32 @wm8350_reg_write(%struct.wm8350* %150, i32 %151, i32 %152)
  %154 = load i32, i32* @WM8350_BIASEN, align 4
  %155 = load i32, i32* %9, align 4
  %156 = or i32 %155, %154
  store i32 %156, i32* %9, align 4
  %157 = load %struct.wm8350*, %struct.wm8350** %6, align 8
  %158 = load i32, i32* @WM8350_POWER_MGMT_1, align 4
  %159 = load i32, i32* %9, align 4
  %160 = call i32 @wm8350_reg_write(%struct.wm8350* %157, i32 %158, i32 %159)
  %161 = load %struct.wm8350*, %struct.wm8350** %6, align 8
  %162 = load i32, i32* @WM8350_ANTI_POP_CONTROL, align 4
  %163 = call i32 @wm8350_reg_write(%struct.wm8350* %161, i32 %162, i32 0)
  br label %184

164:                                              ; preds = %56
  %165 = load %struct.wm8350*, %struct.wm8350** %6, align 8
  %166 = load i32, i32* @WM8350_POWER_MGMT_1, align 4
  %167 = call i32 @wm8350_reg_read(%struct.wm8350* %165, i32 %166)
  %168 = load i32, i32* @WM8350_VMID_MASK, align 4
  %169 = load i32, i32* @WM8350_CODEC_ISEL_MASK, align 4
  %170 = or i32 %168, %169
  %171 = xor i32 %170, -1
  %172 = and i32 %167, %171
  store i32 %172, i32* %9, align 4
  %173 = load %struct.wm8350*, %struct.wm8350** %6, align 8
  %174 = load i32, i32* @WM8350_POWER_MGMT_1, align 4
  %175 = load i32, i32* %9, align 4
  %176 = load i32, i32* @WM8350_VMID_300K, align 4
  %177 = or i32 %175, %176
  %178 = load %struct.wm8350_audio_platform_data*, %struct.wm8350_audio_platform_data** %8, align 8
  %179 = getelementptr inbounds %struct.wm8350_audio_platform_data, %struct.wm8350_audio_platform_data* %178, i32 0, i32 7
  %180 = load i32, i32* %179, align 4
  %181 = shl i32 %180, 14
  %182 = or i32 %177, %181
  %183 = call i32 @wm8350_reg_write(%struct.wm8350* %173, i32 %174, i32 %182)
  br label %184

184:                                              ; preds = %164, %74
  br label %306

185:                                              ; preds = %2
  %186 = load %struct.wm8350*, %struct.wm8350** %6, align 8
  %187 = load i32, i32* @WM8350_DAC_MUTE, align 4
  %188 = load i32, i32* @WM8350_DAC_MUTE_ENA, align 4
  %189 = call i32 @wm8350_set_bits(%struct.wm8350* %186, i32 %187, i32 %188)
  %190 = load %struct.wm8350*, %struct.wm8350** %6, align 8
  %191 = load i32, i32* @WM8350_POWER_MGMT_3, align 4
  %192 = load i32, i32* @WM8350_OUT1L_ENA, align 4
  %193 = load i32, i32* @WM8350_OUT1R_ENA, align 4
  %194 = or i32 %192, %193
  %195 = load i32, i32* @WM8350_OUT2L_ENA, align 4
  %196 = or i32 %194, %195
  %197 = load i32, i32* @WM8350_OUT2R_ENA, align 4
  %198 = or i32 %196, %197
  %199 = call i32 @wm8350_set_bits(%struct.wm8350* %190, i32 %191, i32 %198)
  %200 = load %struct.wm8350*, %struct.wm8350** %6, align 8
  %201 = load i32, i32* @WM8350_ANTI_POP_CONTROL, align 4
  %202 = load %struct.wm8350_audio_platform_data*, %struct.wm8350_audio_platform_data** %8, align 8
  %203 = getelementptr inbounds %struct.wm8350_audio_platform_data, %struct.wm8350_audio_platform_data* %202, i32 0, i32 5
  %204 = load i32, i32* %203, align 4
  %205 = shl i32 %204, 8
  %206 = call i32 @wm8350_reg_write(%struct.wm8350* %200, i32 %201, i32 %205)
  %207 = load %struct.wm8350*, %struct.wm8350** %6, align 8
  %208 = load i32, i32* @WM8350_POWER_MGMT_1, align 4
  %209 = call i32 @wm8350_reg_read(%struct.wm8350* %207, i32 %208)
  %210 = load i32, i32* @WM8350_VMIDEN, align 4
  %211 = xor i32 %210, -1
  %212 = and i32 %209, %211
  store i32 %212, i32* %9, align 4
  %213 = load %struct.wm8350*, %struct.wm8350** %6, align 8
  %214 = load i32, i32* @WM8350_POWER_MGMT_1, align 4
  %215 = load i32, i32* %9, align 4
  %216 = call i32 @wm8350_reg_write(%struct.wm8350* %213, i32 %214, i32 %215)
  %217 = load %struct.wm8350_audio_platform_data*, %struct.wm8350_audio_platform_data** %8, align 8
  %218 = getelementptr inbounds %struct.wm8350_audio_platform_data, %struct.wm8350_audio_platform_data* %217, i32 0, i32 9
  %219 = load i32, i32* %218, align 4
  %220 = call i32 @msecs_to_jiffies(i32 %219)
  %221 = call i32 @schedule_timeout_interruptible(i32 %220)
  %222 = load %struct.wm8350*, %struct.wm8350** %6, align 8
  %223 = load i32, i32* @WM8350_ANTI_POP_CONTROL, align 4
  %224 = load %struct.wm8350_audio_platform_data*, %struct.wm8350_audio_platform_data** %8, align 8
  %225 = getelementptr inbounds %struct.wm8350_audio_platform_data, %struct.wm8350_audio_platform_data* %224, i32 0, i32 5
  %226 = load i32, i32* %225, align 4
  %227 = shl i32 %226, 8
  %228 = load %struct.wm8350_audio_platform_data*, %struct.wm8350_audio_platform_data** %8, align 8
  %229 = getelementptr inbounds %struct.wm8350_audio_platform_data, %struct.wm8350_audio_platform_data* %228, i32 0, i32 1
  %230 = load i32, i32* %229, align 4
  %231 = or i32 %227, %230
  %232 = load %struct.wm8350_audio_platform_data*, %struct.wm8350_audio_platform_data** %8, align 8
  %233 = getelementptr inbounds %struct.wm8350_audio_platform_data, %struct.wm8350_audio_platform_data* %232, i32 0, i32 2
  %234 = load i32, i32* %233, align 4
  %235 = shl i32 %234, 2
  %236 = or i32 %231, %235
  %237 = load %struct.wm8350_audio_platform_data*, %struct.wm8350_audio_platform_data** %8, align 8
  %238 = getelementptr inbounds %struct.wm8350_audio_platform_data, %struct.wm8350_audio_platform_data* %237, i32 0, i32 3
  %239 = load i32, i32* %238, align 4
  %240 = shl i32 %239, 4
  %241 = or i32 %236, %240
  %242 = load %struct.wm8350_audio_platform_data*, %struct.wm8350_audio_platform_data** %8, align 8
  %243 = getelementptr inbounds %struct.wm8350_audio_platform_data, %struct.wm8350_audio_platform_data* %242, i32 0, i32 4
  %244 = load i32, i32* %243, align 4
  %245 = shl i32 %244, 6
  %246 = or i32 %241, %245
  %247 = call i32 @wm8350_reg_write(%struct.wm8350* %222, i32 %223, i32 %246)
  %248 = load %struct.wm8350*, %struct.wm8350** %6, align 8
  %249 = load i32, i32* @WM8350_POWER_MGMT_1, align 4
  %250 = call i32 @wm8350_reg_read(%struct.wm8350* %248, i32 %249)
  %251 = load i32, i32* @WM8350_VBUFEN, align 4
  %252 = load i32, i32* @WM8350_VMID_MASK, align 4
  %253 = or i32 %251, %252
  %254 = xor i32 %253, -1
  %255 = and i32 %250, %254
  store i32 %255, i32* %9, align 4
  %256 = load %struct.wm8350*, %struct.wm8350** %6, align 8
  %257 = load i32, i32* @WM8350_POWER_MGMT_1, align 4
  %258 = load i32, i32* %9, align 4
  %259 = load i32, i32* @WM8350_OUTPUT_DRAIN_EN, align 4
  %260 = or i32 %258, %259
  %261 = call i32 @wm8350_reg_write(%struct.wm8350* %256, i32 %257, i32 %260)
  %262 = load %struct.wm8350_audio_platform_data*, %struct.wm8350_audio_platform_data** %8, align 8
  %263 = getelementptr inbounds %struct.wm8350_audio_platform_data, %struct.wm8350_audio_platform_data* %262, i32 0, i32 8
  %264 = load i32, i32* %263, align 4
  %265 = call i32 @msecs_to_jiffies(i32 %264)
  %266 = call i32 @schedule_timeout_interruptible(i32 %265)
  %267 = load i32, i32* @WM8350_BIASEN, align 4
  %268 = xor i32 %267, -1
  %269 = load i32, i32* %9, align 4
  %270 = and i32 %269, %268
  store i32 %270, i32* %9, align 4
  %271 = load %struct.wm8350*, %struct.wm8350** %6, align 8
  %272 = load i32, i32* @WM8350_POWER_MGMT_1, align 4
  %273 = load i32, i32* %9, align 4
  %274 = call i32 @wm8350_reg_write(%struct.wm8350* %271, i32 %272, i32 %273)
  %275 = load %struct.wm8350*, %struct.wm8350** %6, align 8
  %276 = load i32, i32* @WM8350_ANTI_POP_CONTROL, align 4
  %277 = call i32 @wm8350_reg_write(%struct.wm8350* %275, i32 %276, i32 0)
  %278 = load %struct.wm8350*, %struct.wm8350** %6, align 8
  %279 = load i32, i32* @WM8350_LOUT1_VOLUME, align 4
  %280 = load i32, i32* @WM8350_OUT1L_ENA, align 4
  %281 = call i32 @wm8350_clear_bits(%struct.wm8350* %278, i32 %279, i32 %280)
  %282 = load %struct.wm8350*, %struct.wm8350** %6, align 8
  %283 = load i32, i32* @WM8350_ROUT1_VOLUME, align 4
  %284 = load i32, i32* @WM8350_OUT1R_ENA, align 4
  %285 = call i32 @wm8350_clear_bits(%struct.wm8350* %282, i32 %283, i32 %284)
  %286 = load %struct.wm8350*, %struct.wm8350** %6, align 8
  %287 = load i32, i32* @WM8350_LOUT2_VOLUME, align 4
  %288 = load i32, i32* @WM8350_OUT2L_ENA, align 4
  %289 = call i32 @wm8350_clear_bits(%struct.wm8350* %286, i32 %287, i32 %288)
  %290 = load %struct.wm8350*, %struct.wm8350** %6, align 8
  %291 = load i32, i32* @WM8350_ROUT2_VOLUME, align 4
  %292 = load i32, i32* @WM8350_OUT2R_ENA, align 4
  %293 = call i32 @wm8350_clear_bits(%struct.wm8350* %290, i32 %291, i32 %292)
  %294 = load %struct.wm8350*, %struct.wm8350** %6, align 8
  %295 = load i32, i32* @WM8350_POWER_MGMT_4, align 4
  %296 = load i32, i32* @WM8350_SYSCLK_ENA, align 4
  %297 = call i32 @wm8350_clear_bits(%struct.wm8350* %294, i32 %295, i32 %296)
  %298 = load %struct.wm8350_data*, %struct.wm8350_data** %7, align 8
  %299 = getelementptr inbounds %struct.wm8350_data, %struct.wm8350_data* %298, i32 0, i32 0
  %300 = load i32, i32* %299, align 4
  %301 = call i32 @ARRAY_SIZE(i32 %300)
  %302 = load %struct.wm8350_data*, %struct.wm8350_data** %7, align 8
  %303 = getelementptr inbounds %struct.wm8350_data, %struct.wm8350_data* %302, i32 0, i32 0
  %304 = load i32, i32* %303, align 4
  %305 = call i32 @regulator_bulk_disable(i32 %301, i32 %304)
  br label %306

306:                                              ; preds = %2, %185, %184, %42, %22
  %307 = load i32, i32* %5, align 4
  %308 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %4, align 8
  %309 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %308, i32 0, i32 0
  store i32 %307, i32* %309, align 8
  store i32 0, i32* %3, align 4
  br label %310

310:                                              ; preds = %306, %72
  %311 = load i32, i32* %3, align 4
  ret i32 %311
}

declare dso_local i32 @wm8350_reg_read(%struct.wm8350*, i32) #1

declare dso_local i32 @wm8350_reg_write(%struct.wm8350*, i32, i32) #1

declare dso_local i32 @regulator_bulk_enable(i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @wm8350_set_bits(%struct.wm8350*, i32, i32) #1

declare dso_local i32 @schedule_timeout_interruptible(i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @wm8350_clear_bits(%struct.wm8350*, i32, i32) #1

declare dso_local i32 @regulator_bulk_disable(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
