; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_twl4030.c_headset_ramp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_twl4030.c_headset_ramp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_codec = type { %struct.twl4030_priv*, %struct.snd_soc_device* }
%struct.twl4030_priv = type { i32 }
%struct.snd_soc_device = type { %struct.twl4030_setup_data* }
%struct.twl4030_setup_data = type { i32 (i32)*, i64 }

@__const.headset_ramp.ramp_base = private unnamed_addr constant [8 x i32] [i32 524288, i32 1048576, i32 2097152, i32 4194304, i32 8388608, i32 16777216, i32 33554432, i32 67108864], align 16
@TWL4030_REG_HS_GAIN_SET = common dso_local global i32 0, align 4
@TWL4030_REG_HS_POPN_SET = common dso_local global i32 0, align 4
@TWL4030_EXTMUTE = common dso_local global i8 0, align 1
@TWL4030_VMID_EN = common dso_local global i8 0, align 1
@TWL4030_RAMP_EN = common dso_local global i8 0, align 1
@TWL4030_RAMP_DELAY = common dso_local global i8 0, align 1
@TWL4030_MODULE_AUDIO_VOICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_soc_codec*, i32)* @headset_ramp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @headset_ramp(%struct.snd_soc_codec* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_soc_codec*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_soc_device*, align 8
  %6 = alloca %struct.twl4030_setup_data*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca %struct.twl4030_priv*, align 8
  %10 = alloca [8 x i32], align 16
  store %struct.snd_soc_codec* %0, %struct.snd_soc_codec** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %12 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %11, i32 0, i32 1
  %13 = load %struct.snd_soc_device*, %struct.snd_soc_device** %12, align 8
  store %struct.snd_soc_device* %13, %struct.snd_soc_device** %5, align 8
  %14 = load %struct.snd_soc_device*, %struct.snd_soc_device** %5, align 8
  %15 = getelementptr inbounds %struct.snd_soc_device, %struct.snd_soc_device* %14, i32 0, i32 0
  %16 = load %struct.twl4030_setup_data*, %struct.twl4030_setup_data** %15, align 8
  store %struct.twl4030_setup_data* %16, %struct.twl4030_setup_data** %6, align 8
  %17 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %18 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %17, i32 0, i32 0
  %19 = load %struct.twl4030_priv*, %struct.twl4030_priv** %18, align 8
  store %struct.twl4030_priv* %19, %struct.twl4030_priv** %9, align 8
  %20 = bitcast [8 x i32]* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %20, i8* align 16 bitcast ([8 x i32]* @__const.headset_ramp.ramp_base to i8*), i64 32, i1 false)
  %21 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %22 = load i32, i32* @TWL4030_REG_HS_GAIN_SET, align 4
  %23 = call zeroext i8 @twl4030_read_reg_cache(%struct.snd_soc_codec* %21, i32 %22)
  store i8 %23, i8* %7, align 1
  %24 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %25 = load i32, i32* @TWL4030_REG_HS_POPN_SET, align 4
  %26 = call zeroext i8 @twl4030_read_reg_cache(%struct.snd_soc_codec* %24, i32 %25)
  store i8 %26, i8* %8, align 1
  %27 = load %struct.twl4030_setup_data*, %struct.twl4030_setup_data** %6, align 8
  %28 = icmp ne %struct.twl4030_setup_data* %27, null
  br i1 %28, label %29, label %56

29:                                               ; preds = %2
  %30 = load %struct.twl4030_setup_data*, %struct.twl4030_setup_data** %6, align 8
  %31 = getelementptr inbounds %struct.twl4030_setup_data, %struct.twl4030_setup_data* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %56

34:                                               ; preds = %29
  %35 = load %struct.twl4030_setup_data*, %struct.twl4030_setup_data** %6, align 8
  %36 = getelementptr inbounds %struct.twl4030_setup_data, %struct.twl4030_setup_data* %35, i32 0, i32 0
  %37 = load i32 (i32)*, i32 (i32)** %36, align 8
  %38 = icmp ne i32 (i32)* %37, null
  br i1 %38, label %39, label %44

39:                                               ; preds = %34
  %40 = load %struct.twl4030_setup_data*, %struct.twl4030_setup_data** %6, align 8
  %41 = getelementptr inbounds %struct.twl4030_setup_data, %struct.twl4030_setup_data* %40, i32 0, i32 0
  %42 = load i32 (i32)*, i32 (i32)** %41, align 8
  %43 = call i32 %42(i32 1)
  br label %55

44:                                               ; preds = %34
  %45 = load i8, i8* @TWL4030_EXTMUTE, align 1
  %46 = zext i8 %45 to i32
  %47 = load i8, i8* %8, align 1
  %48 = zext i8 %47 to i32
  %49 = or i32 %48, %46
  %50 = trunc i32 %49 to i8
  store i8 %50, i8* %8, align 1
  %51 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %52 = load i32, i32* @TWL4030_REG_HS_POPN_SET, align 4
  %53 = load i8, i8* %8, align 1
  %54 = call i32 @twl4030_write(%struct.snd_soc_codec* %51, i32 %52, i8 zeroext %53)
  br label %55

55:                                               ; preds = %44, %39
  br label %56

56:                                               ; preds = %55, %29, %2
  %57 = load i32, i32* %4, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %99

59:                                               ; preds = %56
  %60 = load i8, i8* @TWL4030_VMID_EN, align 1
  %61 = zext i8 %60 to i32
  %62 = load i8, i8* %8, align 1
  %63 = zext i8 %62 to i32
  %64 = or i32 %63, %61
  %65 = trunc i32 %64 to i8
  store i8 %65, i8* %8, align 1
  %66 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %67 = load i32, i32* @TWL4030_REG_HS_POPN_SET, align 4
  %68 = load i8, i8* %8, align 1
  %69 = call i32 @twl4030_write(%struct.snd_soc_codec* %66, i32 %67, i8 zeroext %68)
  %70 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %71 = load i32, i32* @TWL4030_REG_HS_GAIN_SET, align 4
  %72 = load i8, i8* %7, align 1
  %73 = call i32 @twl4030_write(%struct.snd_soc_codec* %70, i32 %71, i8 zeroext %72)
  %74 = load i8, i8* @TWL4030_RAMP_EN, align 1
  %75 = zext i8 %74 to i32
  %76 = load i8, i8* %8, align 1
  %77 = zext i8 %76 to i32
  %78 = or i32 %77, %75
  %79 = trunc i32 %78 to i8
  store i8 %79, i8* %8, align 1
  %80 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %81 = load i32, i32* @TWL4030_REG_HS_POPN_SET, align 4
  %82 = load i8, i8* %8, align 1
  %83 = call i32 @twl4030_write(%struct.snd_soc_codec* %80, i32 %81, i8 zeroext %82)
  %84 = load i8, i8* %8, align 1
  %85 = zext i8 %84 to i32
  %86 = load i8, i8* @TWL4030_RAMP_DELAY, align 1
  %87 = zext i8 %86 to i32
  %88 = and i32 %85, %87
  %89 = ashr i32 %88, 2
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.twl4030_priv*, %struct.twl4030_priv** %9, align 8
  %94 = getelementptr inbounds %struct.twl4030_priv, %struct.twl4030_priv* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = udiv i32 %92, %95
  %97 = add i32 %96, 1
  %98 = call i32 @mdelay(i32 %97)
  br label %144

99:                                               ; preds = %56
  %100 = load i8, i8* @TWL4030_RAMP_EN, align 1
  %101 = zext i8 %100 to i32
  %102 = xor i32 %101, -1
  %103 = load i8, i8* %8, align 1
  %104 = zext i8 %103 to i32
  %105 = and i32 %104, %102
  %106 = trunc i32 %105 to i8
  store i8 %106, i8* %8, align 1
  %107 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %108 = load i32, i32* @TWL4030_REG_HS_POPN_SET, align 4
  %109 = load i8, i8* %8, align 1
  %110 = call i32 @twl4030_write(%struct.snd_soc_codec* %107, i32 %108, i8 zeroext %109)
  %111 = load i8, i8* %8, align 1
  %112 = zext i8 %111 to i32
  %113 = load i8, i8* @TWL4030_RAMP_DELAY, align 1
  %114 = zext i8 %113 to i32
  %115 = and i32 %112, %114
  %116 = ashr i32 %115, 2
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 %117
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.twl4030_priv*, %struct.twl4030_priv** %9, align 8
  %121 = getelementptr inbounds %struct.twl4030_priv, %struct.twl4030_priv* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = udiv i32 %119, %122
  %124 = add i32 %123, 1
  %125 = call i32 @mdelay(i32 %124)
  %126 = load i32, i32* @TWL4030_MODULE_AUDIO_VOICE, align 4
  %127 = load i8, i8* %7, align 1
  %128 = zext i8 %127 to i32
  %129 = and i32 %128, -16
  %130 = trunc i32 %129 to i8
  %131 = load i32, i32* @TWL4030_REG_HS_GAIN_SET, align 4
  %132 = call i32 @twl4030_i2c_write_u8(i32 %126, i8 zeroext %130, i32 %131)
  %133 = load i8, i8* @TWL4030_VMID_EN, align 1
  %134 = zext i8 %133 to i32
  %135 = xor i32 %134, -1
  %136 = load i8, i8* %8, align 1
  %137 = zext i8 %136 to i32
  %138 = and i32 %137, %135
  %139 = trunc i32 %138 to i8
  store i8 %139, i8* %8, align 1
  %140 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %141 = load i32, i32* @TWL4030_REG_HS_POPN_SET, align 4
  %142 = load i8, i8* %8, align 1
  %143 = call i32 @twl4030_write(%struct.snd_soc_codec* %140, i32 %141, i8 zeroext %142)
  br label %144

144:                                              ; preds = %99, %59
  %145 = load %struct.twl4030_setup_data*, %struct.twl4030_setup_data** %6, align 8
  %146 = icmp ne %struct.twl4030_setup_data* %145, null
  br i1 %146, label %147, label %175

147:                                              ; preds = %144
  %148 = load %struct.twl4030_setup_data*, %struct.twl4030_setup_data** %6, align 8
  %149 = getelementptr inbounds %struct.twl4030_setup_data, %struct.twl4030_setup_data* %148, i32 0, i32 1
  %150 = load i64, i64* %149, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %175

152:                                              ; preds = %147
  %153 = load %struct.twl4030_setup_data*, %struct.twl4030_setup_data** %6, align 8
  %154 = getelementptr inbounds %struct.twl4030_setup_data, %struct.twl4030_setup_data* %153, i32 0, i32 0
  %155 = load i32 (i32)*, i32 (i32)** %154, align 8
  %156 = icmp ne i32 (i32)* %155, null
  br i1 %156, label %157, label %162

157:                                              ; preds = %152
  %158 = load %struct.twl4030_setup_data*, %struct.twl4030_setup_data** %6, align 8
  %159 = getelementptr inbounds %struct.twl4030_setup_data, %struct.twl4030_setup_data* %158, i32 0, i32 0
  %160 = load i32 (i32)*, i32 (i32)** %159, align 8
  %161 = call i32 %160(i32 0)
  br label %174

162:                                              ; preds = %152
  %163 = load i8, i8* @TWL4030_EXTMUTE, align 1
  %164 = zext i8 %163 to i32
  %165 = xor i32 %164, -1
  %166 = load i8, i8* %8, align 1
  %167 = zext i8 %166 to i32
  %168 = and i32 %167, %165
  %169 = trunc i32 %168 to i8
  store i8 %169, i8* %8, align 1
  %170 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %171 = load i32, i32* @TWL4030_REG_HS_POPN_SET, align 4
  %172 = load i8, i8* %8, align 1
  %173 = call i32 @twl4030_write(%struct.snd_soc_codec* %170, i32 %171, i8 zeroext %172)
  br label %174

174:                                              ; preds = %162, %157
  br label %175

175:                                              ; preds = %174, %147, %144
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local zeroext i8 @twl4030_read_reg_cache(%struct.snd_soc_codec*, i32) #2

declare dso_local i32 @twl4030_write(%struct.snd_soc_codec*, i32, i8 zeroext) #2

declare dso_local i32 @mdelay(i32) #2

declare dso_local i32 @twl4030_i2c_write_u8(i32, i8 zeroext, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
