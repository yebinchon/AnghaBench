; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_generic.c_check_auto_mute_availability.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_generic.c_check_auto_mute_availability.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.hda_gen_spec* }
%struct.hda_gen_spec = type { i32, i32, i32, i32, i32, i32, i64, %struct.auto_pin_cfg }
%struct.auto_pin_cfg = type { i64, i32, i32, i32, i64*, i64*, i64* }

@AUTO_PIN_SPEAKER_OUT = common dso_local global i64 0, align 8
@AUTO_PIN_HP_OUT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [46 x i8] c"hda-codec: Enable HP auto-muting on NID 0x%x\0A\00", align 1
@HDA_GEN_HP_EVENT = common dso_local global i32 0, align 4
@call_hp_automute = common dso_local global i32 0, align 4
@AUTO_PIN_LINE_OUT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [52 x i8] c"hda-codec: Enable Line-Out auto-muting on NID 0x%x\0A\00", align 1
@HDA_GEN_FRONT_EVENT = common dso_local global i32 0, align 4
@call_line_automute = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*)* @check_auto_mute_availability to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_auto_mute_availability(%struct.hda_codec* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hda_codec*, align 8
  %4 = alloca %struct.hda_gen_spec*, align 8
  %5 = alloca %struct.auto_pin_cfg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.hda_codec* %0, %struct.hda_codec** %3, align 8
  %11 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %12 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %11, i32 0, i32 0
  %13 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %12, align 8
  store %struct.hda_gen_spec* %13, %struct.hda_gen_spec** %4, align 8
  %14 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %4, align 8
  %15 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %14, i32 0, i32 7
  store %struct.auto_pin_cfg* %15, %struct.auto_pin_cfg** %5, align 8
  store i32 0, i32* %6, align 4
  %16 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %4, align 8
  %17 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %16, i32 0, i32 6
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %246

21:                                               ; preds = %1
  %22 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %5, align 8
  %23 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %22, i32 0, i32 5
  %24 = load i64*, i64** %23, align 8
  %25 = getelementptr inbounds i64, i64* %24, i64 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %21
  %29 = load i32, i32* %6, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %6, align 4
  br label %31

31:                                               ; preds = %28, %21
  %32 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %5, align 8
  %33 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %32, i32 0, i32 4
  %34 = load i64*, i64** %33, align 8
  %35 = getelementptr inbounds i64, i64* %34, i64 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %31
  %39 = load i32, i32* %6, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %6, align 4
  br label %41

41:                                               ; preds = %38, %31
  %42 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %5, align 8
  %43 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %42, i32 0, i32 6
  %44 = load i64*, i64** %43, align 8
  %45 = getelementptr inbounds i64, i64* %44, i64 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %41
  %49 = load i32, i32* %6, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %6, align 4
  br label %51

51:                                               ; preds = %48, %41
  %52 = load i32, i32* %6, align 4
  %53 = icmp slt i32 %52, 2
  br i1 %53, label %54, label %55

54:                                               ; preds = %51
  store i32 0, i32* %2, align 4
  br label %246

55:                                               ; preds = %51
  %56 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %5, align 8
  %57 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %56, i32 0, i32 6
  %58 = load i64*, i64** %57, align 8
  %59 = getelementptr inbounds i64, i64* %58, i64 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %81, label %62

62:                                               ; preds = %55
  %63 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %5, align 8
  %64 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @AUTO_PIN_SPEAKER_OUT, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %81

68:                                               ; preds = %62
  %69 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %5, align 8
  %70 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %69, i32 0, i32 6
  %71 = load i64*, i64** %70, align 8
  %72 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %5, align 8
  %73 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %72, i32 0, i32 4
  %74 = load i64*, i64** %73, align 8
  %75 = call i32 @memcpy(i64* %71, i64* %74, i32 8)
  %76 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %5, align 8
  %77 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %5, align 8
  %80 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %79, i32 0, i32 1
  store i32 %78, i32* %80, align 8
  br label %81

81:                                               ; preds = %68, %62, %55
  %82 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %5, align 8
  %83 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %82, i32 0, i32 5
  %84 = load i64*, i64** %83, align 8
  %85 = getelementptr inbounds i64, i64* %84, i64 0
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %107, label %88

88:                                               ; preds = %81
  %89 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %5, align 8
  %90 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @AUTO_PIN_HP_OUT, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %107

94:                                               ; preds = %88
  %95 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %5, align 8
  %96 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %95, i32 0, i32 5
  %97 = load i64*, i64** %96, align 8
  %98 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %5, align 8
  %99 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %98, i32 0, i32 4
  %100 = load i64*, i64** %99, align 8
  %101 = call i32 @memcpy(i64* %97, i64* %100, i32 8)
  %102 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %5, align 8
  %103 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %5, align 8
  %106 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %105, i32 0, i32 3
  store i32 %104, i32* %106, align 8
  br label %107

107:                                              ; preds = %94, %88, %81
  store i32 0, i32* %7, align 4
  br label %108

108:                                              ; preds = %137, %107
  %109 = load i32, i32* %7, align 4
  %110 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %5, align 8
  %111 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 8
  %113 = icmp slt i32 %109, %112
  br i1 %113, label %114, label %140

114:                                              ; preds = %108
  %115 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %5, align 8
  %116 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %115, i32 0, i32 5
  %117 = load i64*, i64** %116, align 8
  %118 = load i32, i32* %7, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i64, i64* %117, i64 %119
  %121 = load i64, i64* %120, align 8
  store i64 %121, i64* %9, align 8
  %122 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %123 = load i64, i64* %9, align 8
  %124 = call i32 @is_jack_detectable(%struct.hda_codec* %122, i64 %123)
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %127, label %126

126:                                              ; preds = %114
  br label %137

127:                                              ; preds = %114
  %128 = load i64, i64* %9, align 8
  %129 = call i32 @snd_printdd(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i64 %128)
  %130 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %131 = load i64, i64* %9, align 8
  %132 = load i32, i32* @HDA_GEN_HP_EVENT, align 4
  %133 = load i32, i32* @call_hp_automute, align 4
  %134 = call i32 @snd_hda_jack_detect_enable_callback(%struct.hda_codec* %130, i64 %131, i32 %132, i32 %133)
  %135 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %4, align 8
  %136 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %135, i32 0, i32 0
  store i32 1, i32* %136, align 8
  br label %137

137:                                              ; preds = %127, %126
  %138 = load i32, i32* %7, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %7, align 4
  br label %108

140:                                              ; preds = %108
  %141 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %5, align 8
  %142 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = load i64, i64* @AUTO_PIN_LINE_OUT, align 8
  %145 = icmp eq i64 %143, %144
  br i1 %145, label %146, label %196

146:                                              ; preds = %140
  %147 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %5, align 8
  %148 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %196

151:                                              ; preds = %146
  %152 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %5, align 8
  %153 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 8
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %190

156:                                              ; preds = %151
  store i32 0, i32* %7, align 4
  br label %157

157:                                              ; preds = %186, %156
  %158 = load i32, i32* %7, align 4
  %159 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %5, align 8
  %160 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 4
  %162 = icmp slt i32 %158, %161
  br i1 %162, label %163, label %189

163:                                              ; preds = %157
  %164 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %5, align 8
  %165 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %164, i32 0, i32 4
  %166 = load i64*, i64** %165, align 8
  %167 = load i32, i32* %7, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i64, i64* %166, i64 %168
  %170 = load i64, i64* %169, align 8
  store i64 %170, i64* %10, align 8
  %171 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %172 = load i64, i64* %10, align 8
  %173 = call i32 @is_jack_detectable(%struct.hda_codec* %171, i64 %172)
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %176, label %175

175:                                              ; preds = %163
  br label %186

176:                                              ; preds = %163
  %177 = load i64, i64* %10, align 8
  %178 = call i32 @snd_printdd(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i64 %177)
  %179 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %180 = load i64, i64* %10, align 8
  %181 = load i32, i32* @HDA_GEN_FRONT_EVENT, align 4
  %182 = load i32, i32* @call_line_automute, align 4
  %183 = call i32 @snd_hda_jack_detect_enable_callback(%struct.hda_codec* %179, i64 %180, i32 %181, i32 %182)
  %184 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %4, align 8
  %185 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %184, i32 0, i32 1
  store i32 1, i32* %185, align 4
  br label %186

186:                                              ; preds = %176, %175
  %187 = load i32, i32* %7, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %7, align 4
  br label %157

189:                                              ; preds = %157
  br label %190

190:                                              ; preds = %189, %151
  %191 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %4, align 8
  %192 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %4, align 8
  %195 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %194, i32 0, i32 2
  store i32 %193, i32* %195, align 8
  br label %196

196:                                              ; preds = %190, %146, %140
  %197 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %5, align 8
  %198 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 8
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %213

201:                                              ; preds = %196
  %202 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %4, align 8
  %203 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %211, label %206

206:                                              ; preds = %201
  %207 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %4, align 8
  %208 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 4
  %210 = icmp ne i32 %209, 0
  br label %211

211:                                              ; preds = %206, %201
  %212 = phi i1 [ true, %201 ], [ %210, %206 ]
  br label %213

213:                                              ; preds = %211, %196
  %214 = phi i1 [ false, %196 ], [ %212, %211 ]
  %215 = zext i1 %214 to i32
  %216 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %4, align 8
  %217 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %216, i32 0, i32 3
  store i32 %215, i32* %217, align 4
  %218 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %4, align 8
  %219 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %218, i32 0, i32 2
  %220 = load i32, i32* %219, align 8
  %221 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %4, align 8
  %222 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %221, i32 0, i32 4
  store i32 %220, i32* %222, align 8
  %223 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %4, align 8
  %224 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %223, i32 0, i32 3
  %225 = load i32, i32* %224, align 4
  %226 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %4, align 8
  %227 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %226, i32 0, i32 5
  store i32 %225, i32* %227, align 4
  %228 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %4, align 8
  %229 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %228, i32 0, i32 3
  %230 = load i32, i32* %229, align 4
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %237, label %232

232:                                              ; preds = %213
  %233 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %4, align 8
  %234 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %233, i32 0, i32 2
  %235 = load i32, i32* %234, align 8
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %245

237:                                              ; preds = %232, %213
  %238 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %239 = call i32 @add_automute_mode_enum(%struct.hda_codec* %238)
  store i32 %239, i32* %8, align 4
  %240 = load i32, i32* %8, align 4
  %241 = icmp slt i32 %240, 0
  br i1 %241, label %242, label %244

242:                                              ; preds = %237
  %243 = load i32, i32* %8, align 4
  store i32 %243, i32* %2, align 4
  br label %246

244:                                              ; preds = %237
  br label %245

245:                                              ; preds = %244, %232
  store i32 0, i32* %2, align 4
  br label %246

246:                                              ; preds = %245, %242, %54, %20
  %247 = load i32, i32* %2, align 4
  ret i32 %247
}

declare dso_local i32 @memcpy(i64*, i64*, i32) #1

declare dso_local i32 @is_jack_detectable(%struct.hda_codec*, i64) #1

declare dso_local i32 @snd_printdd(i8*, i64) #1

declare dso_local i32 @snd_hda_jack_detect_enable_callback(%struct.hda_codec*, i64, i32, i32) #1

declare dso_local i32 @add_automute_mode_enum(%struct.hda_codec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
