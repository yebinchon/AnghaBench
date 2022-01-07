; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_generic.c_parse_user_hints.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_generic.c_parse_user_hints.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.hda_gen_spec* }
%struct.hda_gen_spec = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [12 x i8] c"jack_detect\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"inv_jack_detect\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"trigger_sense\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"inv_eapd\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"pcm_format_first\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"sticky_stream\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"spdif_status_reset\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"pin_amp_workaround\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"single_adc_amp\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"auto_mute\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"auto_mic\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"line_in_auto_switch\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"auto_mute_via_amp\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"need_dac_fix\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"primary_hp\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"multi_cap_vol\00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"inv_dmic_split\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"indep_hp\00", align 1
@.str.18 = private unnamed_addr constant [21 x i8] c"add_stereo_mix_input\00", align 1
@.str.19 = private unnamed_addr constant [19 x i8] c"add_out_jack_modes\00", align 1
@.str.20 = private unnamed_addr constant [18 x i8] c"add_in_jack_modes\00", align 1
@.str.21 = private unnamed_addr constant [15 x i8] c"add_jack_modes\00", align 1
@.str.22 = private unnamed_addr constant [18 x i8] c"power_down_unused\00", align 1
@.str.23 = private unnamed_addr constant [11 x i8] c"add_hp_mic\00", align 1
@.str.24 = private unnamed_addr constant [14 x i8] c"hp_mic_detect\00", align 1
@.str.25 = private unnamed_addr constant [10 x i8] c"mixer_nid\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hda_codec*)* @parse_user_hints to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_user_hints(%struct.hda_codec* %0) #0 {
  %2 = alloca %struct.hda_codec*, align 8
  %3 = alloca %struct.hda_gen_spec*, align 8
  %4 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %2, align 8
  %5 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %6 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %5, i32 0, i32 9
  %7 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %6, align 8
  store %struct.hda_gen_spec* %7, %struct.hda_gen_spec** %3, align 8
  %8 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %9 = call i32 @snd_hda_get_bool_hint(%struct.hda_codec* %8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp sge i32 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %1
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %18 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 8
  br label %19

19:                                               ; preds = %12, %1
  %20 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %21 = call i32 @snd_hda_get_bool_hint(%struct.hda_codec* %20, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp sge i32 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %19
  %25 = load i32, i32* %4, align 4
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  %30 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %31 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  br label %32

32:                                               ; preds = %24, %19
  %33 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %34 = call i32 @snd_hda_get_bool_hint(%struct.hda_codec* %33, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  store i32 %34, i32* %4, align 4
  %35 = load i32, i32* %4, align 4
  %36 = icmp sge i32 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %32
  %38 = load i32, i32* %4, align 4
  %39 = icmp ne i32 %38, 0
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  %42 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %43 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %42, i32 0, i32 2
  store i32 %41, i32* %43, align 8
  br label %44

44:                                               ; preds = %37, %32
  %45 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %46 = call i32 @snd_hda_get_bool_hint(%struct.hda_codec* %45, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  store i32 %46, i32* %4, align 4
  %47 = load i32, i32* %4, align 4
  %48 = icmp sge i32 %47, 0
  br i1 %48, label %49, label %57

49:                                               ; preds = %44
  %50 = load i32, i32* %4, align 4
  %51 = icmp ne i32 %50, 0
  %52 = xor i1 %51, true
  %53 = xor i1 %52, true
  %54 = zext i1 %53 to i32
  %55 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %56 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %55, i32 0, i32 3
  store i32 %54, i32* %56, align 4
  br label %57

57:                                               ; preds = %49, %44
  %58 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %59 = call i32 @snd_hda_get_bool_hint(%struct.hda_codec* %58, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  store i32 %59, i32* %4, align 4
  %60 = load i32, i32* %4, align 4
  %61 = icmp sge i32 %60, 0
  br i1 %61, label %62, label %70

62:                                               ; preds = %57
  %63 = load i32, i32* %4, align 4
  %64 = icmp ne i32 %63, 0
  %65 = xor i1 %64, true
  %66 = xor i1 %65, true
  %67 = zext i1 %66 to i32
  %68 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %69 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %68, i32 0, i32 4
  store i32 %67, i32* %69, align 8
  br label %70

70:                                               ; preds = %62, %57
  %71 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %72 = call i32 @snd_hda_get_bool_hint(%struct.hda_codec* %71, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  store i32 %72, i32* %4, align 4
  %73 = load i32, i32* %4, align 4
  %74 = icmp sge i32 %73, 0
  br i1 %74, label %75, label %82

75:                                               ; preds = %70
  %76 = load i32, i32* %4, align 4
  %77 = icmp ne i32 %76, 0
  %78 = xor i1 %77, true
  %79 = zext i1 %78 to i32
  %80 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %81 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %80, i32 0, i32 5
  store i32 %79, i32* %81, align 4
  br label %82

82:                                               ; preds = %75, %70
  %83 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %84 = call i32 @snd_hda_get_bool_hint(%struct.hda_codec* %83, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0))
  store i32 %84, i32* %4, align 4
  %85 = load i32, i32* %4, align 4
  %86 = icmp sge i32 %85, 0
  br i1 %86, label %87, label %95

87:                                               ; preds = %82
  %88 = load i32, i32* %4, align 4
  %89 = icmp ne i32 %88, 0
  %90 = xor i1 %89, true
  %91 = xor i1 %90, true
  %92 = zext i1 %91 to i32
  %93 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %94 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %93, i32 0, i32 6
  store i32 %92, i32* %94, align 8
  br label %95

95:                                               ; preds = %87, %82
  %96 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %97 = call i32 @snd_hda_get_bool_hint(%struct.hda_codec* %96, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0))
  store i32 %97, i32* %4, align 4
  %98 = load i32, i32* %4, align 4
  %99 = icmp sge i32 %98, 0
  br i1 %99, label %100, label %108

100:                                              ; preds = %95
  %101 = load i32, i32* %4, align 4
  %102 = icmp ne i32 %101, 0
  %103 = xor i1 %102, true
  %104 = xor i1 %103, true
  %105 = zext i1 %104 to i32
  %106 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %107 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %106, i32 0, i32 7
  store i32 %105, i32* %107, align 4
  br label %108

108:                                              ; preds = %100, %95
  %109 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %110 = call i32 @snd_hda_get_bool_hint(%struct.hda_codec* %109, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0))
  store i32 %110, i32* %4, align 4
  %111 = load i32, i32* %4, align 4
  %112 = icmp sge i32 %111, 0
  br i1 %112, label %113, label %121

113:                                              ; preds = %108
  %114 = load i32, i32* %4, align 4
  %115 = icmp ne i32 %114, 0
  %116 = xor i1 %115, true
  %117 = xor i1 %116, true
  %118 = zext i1 %117 to i32
  %119 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %120 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %119, i32 0, i32 8
  store i32 %118, i32* %120, align 8
  br label %121

121:                                              ; preds = %113, %108
  %122 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %123 = call i32 @snd_hda_get_bool_hint(%struct.hda_codec* %122, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0))
  store i32 %123, i32* %4, align 4
  %124 = load i32, i32* %4, align 4
  %125 = icmp sge i32 %124, 0
  br i1 %125, label %126, label %133

126:                                              ; preds = %121
  %127 = load i32, i32* %4, align 4
  %128 = icmp ne i32 %127, 0
  %129 = xor i1 %128, true
  %130 = zext i1 %129 to i32
  %131 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %3, align 8
  %132 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %131, i32 0, i32 0
  store i32 %130, i32* %132, align 4
  br label %133

133:                                              ; preds = %126, %121
  %134 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %135 = call i32 @snd_hda_get_bool_hint(%struct.hda_codec* %134, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0))
  store i32 %135, i32* %4, align 4
  %136 = load i32, i32* %4, align 4
  %137 = icmp sge i32 %136, 0
  br i1 %137, label %138, label %145

138:                                              ; preds = %133
  %139 = load i32, i32* %4, align 4
  %140 = icmp ne i32 %139, 0
  %141 = xor i1 %140, true
  %142 = zext i1 %141 to i32
  %143 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %3, align 8
  %144 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %143, i32 0, i32 1
  store i32 %142, i32* %144, align 4
  br label %145

145:                                              ; preds = %138, %133
  %146 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %147 = call i32 @snd_hda_get_bool_hint(%struct.hda_codec* %146, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i64 0, i64 0))
  store i32 %147, i32* %4, align 4
  %148 = load i32, i32* %4, align 4
  %149 = icmp sge i32 %148, 0
  br i1 %149, label %150, label %158

150:                                              ; preds = %145
  %151 = load i32, i32* %4, align 4
  %152 = icmp ne i32 %151, 0
  %153 = xor i1 %152, true
  %154 = xor i1 %153, true
  %155 = zext i1 %154 to i32
  %156 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %3, align 8
  %157 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %156, i32 0, i32 2
  store i32 %155, i32* %157, align 4
  br label %158

158:                                              ; preds = %150, %145
  %159 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %160 = call i32 @snd_hda_get_bool_hint(%struct.hda_codec* %159, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i64 0, i64 0))
  store i32 %160, i32* %4, align 4
  %161 = load i32, i32* %4, align 4
  %162 = icmp sge i32 %161, 0
  br i1 %162, label %163, label %171

163:                                              ; preds = %158
  %164 = load i32, i32* %4, align 4
  %165 = icmp ne i32 %164, 0
  %166 = xor i1 %165, true
  %167 = xor i1 %166, true
  %168 = zext i1 %167 to i32
  %169 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %3, align 8
  %170 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %169, i32 0, i32 3
  store i32 %168, i32* %170, align 4
  br label %171

171:                                              ; preds = %163, %158
  %172 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %173 = call i32 @snd_hda_get_bool_hint(%struct.hda_codec* %172, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i64 0, i64 0))
  store i32 %173, i32* %4, align 4
  %174 = load i32, i32* %4, align 4
  %175 = icmp sge i32 %174, 0
  br i1 %175, label %176, label %184

176:                                              ; preds = %171
  %177 = load i32, i32* %4, align 4
  %178 = icmp ne i32 %177, 0
  %179 = xor i1 %178, true
  %180 = xor i1 %179, true
  %181 = zext i1 %180 to i32
  %182 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %3, align 8
  %183 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %182, i32 0, i32 4
  store i32 %181, i32* %183, align 4
  br label %184

184:                                              ; preds = %176, %171
  %185 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %186 = call i32 @snd_hda_get_bool_hint(%struct.hda_codec* %185, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i64 0, i64 0))
  store i32 %186, i32* %4, align 4
  %187 = load i32, i32* %4, align 4
  %188 = icmp sge i32 %187, 0
  br i1 %188, label %189, label %196

189:                                              ; preds = %184
  %190 = load i32, i32* %4, align 4
  %191 = icmp ne i32 %190, 0
  %192 = xor i1 %191, true
  %193 = zext i1 %192 to i32
  %194 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %3, align 8
  %195 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %194, i32 0, i32 5
  store i32 %193, i32* %195, align 4
  br label %196

196:                                              ; preds = %189, %184
  %197 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %198 = call i32 @snd_hda_get_bool_hint(%struct.hda_codec* %197, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i64 0, i64 0))
  store i32 %198, i32* %4, align 4
  %199 = load i32, i32* %4, align 4
  %200 = icmp sge i32 %199, 0
  br i1 %200, label %201, label %209

201:                                              ; preds = %196
  %202 = load i32, i32* %4, align 4
  %203 = icmp ne i32 %202, 0
  %204 = xor i1 %203, true
  %205 = xor i1 %204, true
  %206 = zext i1 %205 to i32
  %207 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %3, align 8
  %208 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %207, i32 0, i32 6
  store i32 %206, i32* %208, align 4
  br label %209

209:                                              ; preds = %201, %196
  %210 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %211 = call i32 @snd_hda_get_bool_hint(%struct.hda_codec* %210, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i64 0, i64 0))
  store i32 %211, i32* %4, align 4
  %212 = load i32, i32* %4, align 4
  %213 = icmp sge i32 %212, 0
  br i1 %213, label %214, label %222

214:                                              ; preds = %209
  %215 = load i32, i32* %4, align 4
  %216 = icmp ne i32 %215, 0
  %217 = xor i1 %216, true
  %218 = xor i1 %217, true
  %219 = zext i1 %218 to i32
  %220 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %3, align 8
  %221 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %220, i32 0, i32 7
  store i32 %219, i32* %221, align 4
  br label %222

222:                                              ; preds = %214, %209
  %223 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %224 = call i32 @snd_hda_get_bool_hint(%struct.hda_codec* %223, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i64 0, i64 0))
  store i32 %224, i32* %4, align 4
  %225 = load i32, i32* %4, align 4
  %226 = icmp sge i32 %225, 0
  br i1 %226, label %227, label %235

227:                                              ; preds = %222
  %228 = load i32, i32* %4, align 4
  %229 = icmp ne i32 %228, 0
  %230 = xor i1 %229, true
  %231 = xor i1 %230, true
  %232 = zext i1 %231 to i32
  %233 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %3, align 8
  %234 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %233, i32 0, i32 8
  store i32 %232, i32* %234, align 4
  br label %235

235:                                              ; preds = %227, %222
  %236 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %237 = call i32 @snd_hda_get_bool_hint(%struct.hda_codec* %236, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.18, i64 0, i64 0))
  store i32 %237, i32* %4, align 4
  %238 = load i32, i32* %4, align 4
  %239 = icmp sge i32 %238, 0
  br i1 %239, label %240, label %248

240:                                              ; preds = %235
  %241 = load i32, i32* %4, align 4
  %242 = icmp ne i32 %241, 0
  %243 = xor i1 %242, true
  %244 = xor i1 %243, true
  %245 = zext i1 %244 to i32
  %246 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %3, align 8
  %247 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %246, i32 0, i32 9
  store i32 %245, i32* %247, align 4
  br label %248

248:                                              ; preds = %240, %235
  %249 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %250 = call i32 @snd_hda_get_bool_hint(%struct.hda_codec* %249, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.19, i64 0, i64 0))
  store i32 %250, i32* %4, align 4
  %251 = load i32, i32* %4, align 4
  %252 = icmp sge i32 %251, 0
  br i1 %252, label %253, label %261

253:                                              ; preds = %248
  %254 = load i32, i32* %4, align 4
  %255 = icmp ne i32 %254, 0
  %256 = xor i1 %255, true
  %257 = xor i1 %256, true
  %258 = zext i1 %257 to i32
  %259 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %3, align 8
  %260 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %259, i32 0, i32 10
  store i32 %258, i32* %260, align 4
  br label %261

261:                                              ; preds = %253, %248
  %262 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %263 = call i32 @snd_hda_get_bool_hint(%struct.hda_codec* %262, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.20, i64 0, i64 0))
  store i32 %263, i32* %4, align 4
  %264 = load i32, i32* %4, align 4
  %265 = icmp sge i32 %264, 0
  br i1 %265, label %266, label %274

266:                                              ; preds = %261
  %267 = load i32, i32* %4, align 4
  %268 = icmp ne i32 %267, 0
  %269 = xor i1 %268, true
  %270 = xor i1 %269, true
  %271 = zext i1 %270 to i32
  %272 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %3, align 8
  %273 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %272, i32 0, i32 10
  store i32 %271, i32* %273, align 4
  br label %274

274:                                              ; preds = %266, %261
  %275 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %276 = call i32 @snd_hda_get_bool_hint(%struct.hda_codec* %275, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i64 0, i64 0))
  store i32 %276, i32* %4, align 4
  %277 = load i32, i32* %4, align 4
  %278 = icmp sge i32 %277, 0
  br i1 %278, label %279, label %287

279:                                              ; preds = %274
  %280 = load i32, i32* %4, align 4
  %281 = icmp ne i32 %280, 0
  %282 = xor i1 %281, true
  %283 = xor i1 %282, true
  %284 = zext i1 %283 to i32
  %285 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %3, align 8
  %286 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %285, i32 0, i32 10
  store i32 %284, i32* %286, align 4
  br label %287

287:                                              ; preds = %279, %274
  %288 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %289 = call i32 @snd_hda_get_bool_hint(%struct.hda_codec* %288, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.22, i64 0, i64 0))
  store i32 %289, i32* %4, align 4
  %290 = load i32, i32* %4, align 4
  %291 = icmp sge i32 %290, 0
  br i1 %291, label %292, label %300

292:                                              ; preds = %287
  %293 = load i32, i32* %4, align 4
  %294 = icmp ne i32 %293, 0
  %295 = xor i1 %294, true
  %296 = xor i1 %295, true
  %297 = zext i1 %296 to i32
  %298 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %3, align 8
  %299 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %298, i32 0, i32 11
  store i32 %297, i32* %299, align 4
  br label %300

300:                                              ; preds = %292, %287
  %301 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %302 = call i32 @snd_hda_get_bool_hint(%struct.hda_codec* %301, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.23, i64 0, i64 0))
  store i32 %302, i32* %4, align 4
  %303 = load i32, i32* %4, align 4
  %304 = icmp sge i32 %303, 0
  br i1 %304, label %305, label %313

305:                                              ; preds = %300
  %306 = load i32, i32* %4, align 4
  %307 = icmp ne i32 %306, 0
  %308 = xor i1 %307, true
  %309 = xor i1 %308, true
  %310 = zext i1 %309 to i32
  %311 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %3, align 8
  %312 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %311, i32 0, i32 12
  store i32 %310, i32* %312, align 4
  br label %313

313:                                              ; preds = %305, %300
  %314 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %315 = call i32 @snd_hda_get_bool_hint(%struct.hda_codec* %314, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.24, i64 0, i64 0))
  store i32 %315, i32* %4, align 4
  %316 = load i32, i32* %4, align 4
  %317 = icmp sge i32 %316, 0
  br i1 %317, label %318, label %325

318:                                              ; preds = %313
  %319 = load i32, i32* %4, align 4
  %320 = icmp ne i32 %319, 0
  %321 = xor i1 %320, true
  %322 = zext i1 %321 to i32
  %323 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %3, align 8
  %324 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %323, i32 0, i32 13
  store i32 %322, i32* %324, align 4
  br label %325

325:                                              ; preds = %318, %313
  %326 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %327 = call i32 @snd_hda_get_int_hint(%struct.hda_codec* %326, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.25, i64 0, i64 0), i32* %4)
  %328 = icmp ne i32 %327, 0
  br i1 %328, label %333, label %329

329:                                              ; preds = %325
  %330 = load i32, i32* %4, align 4
  %331 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %3, align 8
  %332 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %331, i32 0, i32 14
  store i32 %330, i32* %332, align 4
  br label %333

333:                                              ; preds = %329, %325
  ret void
}

declare dso_local i32 @snd_hda_get_bool_hint(%struct.hda_codec*, i8*) #1

declare dso_local i32 @snd_hda_get_int_hint(%struct.hda_codec*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
