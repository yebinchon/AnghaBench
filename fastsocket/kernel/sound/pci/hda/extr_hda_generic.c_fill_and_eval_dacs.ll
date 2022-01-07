; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_generic.c_fill_and_eval_dacs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_generic.c_fill_and_eval_dacs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.hda_gen_spec* }
%struct.hda_gen_spec = type { i32, i32, i32, i8**, %struct.TYPE_4__, i8**, i64, %struct.TYPE_3__*, i8**, i8**, i8**, i64, i32, i32, i8*, i8**, i8**, i8**, i32, %struct.auto_pin_cfg }
%struct.TYPE_4__ = type { i32, i8**, i8**, i8** }
%struct.TYPE_3__ = type { i8* }
%struct.auto_pin_cfg = type { i32, i32, i32, i64, i32*, i32*, i32* }

@AUTO_PIN_SPEAKER_OUT = common dso_local global i64 0, align 8
@AUTO_PIN_HP_OUT = common dso_local global i64 0, align 8
@BAD_MULTI_IO = common dso_local global i64 0, align 8
@BAD_NO_INDEP_HP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*, i32, i32)* @fill_and_eval_dacs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fill_and_eval_dacs(%struct.hda_codec* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hda_codec*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.hda_gen_spec*, align 8
  %9 = alloca %struct.auto_pin_cfg*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %14 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %15 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %14, i32 0, i32 0
  %16 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %15, align 8
  store %struct.hda_gen_spec* %16, %struct.hda_gen_spec** %8, align 8
  %17 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %8, align 8
  %18 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %17, i32 0, i32 19
  store %struct.auto_pin_cfg* %18, %struct.auto_pin_cfg** %9, align 8
  %19 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %9, align 8
  %20 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %8, align 8
  %23 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %22, i32 0, i32 4
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  store i32 %21, i32* %24, align 8
  %25 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %8, align 8
  %26 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %25, i32 0, i32 8
  %27 = load i8**, i8*** %26, align 8
  %28 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %8, align 8
  %29 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %28, i32 0, i32 4
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 3
  store i8** %27, i8*** %30, align 8
  %31 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %8, align 8
  %32 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %31, i32 0, i32 8
  %33 = load i8**, i8*** %32, align 8
  %34 = call i32 @memset(i8** %33, i32 0, i32 8)
  %35 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %8, align 8
  %36 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %35, i32 0, i32 4
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 2
  %38 = load i8**, i8*** %37, align 8
  %39 = call i32 @memset(i8** %38, i32 0, i32 8)
  %40 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %8, align 8
  %41 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %40, i32 0, i32 4
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = load i8**, i8*** %42, align 8
  %44 = call i32 @memset(i8** %43, i32 0, i32 8)
  %45 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %8, align 8
  %46 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %45, i32 0, i32 0
  store i32 0, i32* %46, align 8
  %47 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %8, align 8
  %48 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %47, i32 0, i32 18
  %49 = call i32 @snd_array_free(i32* %48)
  %50 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %8, align 8
  %51 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %50, i32 0, i32 10
  %52 = load i8**, i8*** %51, align 8
  %53 = call i32 @memset(i8** %52, i32 0, i32 8)
  %54 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %8, align 8
  %55 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %54, i32 0, i32 5
  %56 = load i8**, i8*** %55, align 8
  %57 = call i32 @memset(i8** %56, i32 0, i32 8)
  %58 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %8, align 8
  %59 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %58, i32 0, i32 3
  %60 = load i8**, i8*** %59, align 8
  %61 = call i32 @memset(i8** %60, i32 0, i32 8)
  %62 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %8, align 8
  %63 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %62, i32 0, i32 9
  %64 = load i8**, i8*** %63, align 8
  %65 = call i32 @memset(i8** %64, i32 0, i32 8)
  %66 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %8, align 8
  %67 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %66, i32 0, i32 17
  %68 = load i8**, i8*** %67, align 8
  %69 = call i32 @memset(i8** %68, i32 0, i32 8)
  %70 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %8, align 8
  %71 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %70, i32 0, i32 16
  %72 = load i8**, i8*** %71, align 8
  %73 = call i32 @memset(i8** %72, i32 0, i32 8)
  %74 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %8, align 8
  %75 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %74, i32 0, i32 15
  %76 = load i8**, i8*** %75, align 8
  %77 = call i32 @memset(i8** %76, i32 0, i32 8)
  %78 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %8, align 8
  %79 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %78, i32 0, i32 14
  %80 = call i32 @memset(i8** %79, i32 0, i32 8)
  store i32 0, i32* %12, align 4
  %81 = load i32, i32* %6, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %163

83:                                               ; preds = %3
  br label %84

84:                                               ; preds = %159, %83
  %85 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %86 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %9, align 8
  %87 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %9, align 8
  %90 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %89, i32 0, i32 5
  %91 = load i32*, i32** %90, align 8
  %92 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %8, align 8
  %93 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %92, i32 0, i32 8
  %94 = load i8**, i8*** %93, align 8
  %95 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %8, align 8
  %96 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %95, i32 0, i32 10
  %97 = load i8**, i8*** %96, align 8
  %98 = call i32 @map_singles(%struct.hda_codec* %85, i32 %88, i32* %91, i8** %94, i8** %97)
  store i32 %98, i32* %13, align 4
  %99 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %100 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %9, align 8
  %101 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %9, align 8
  %104 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %103, i32 0, i32 4
  %105 = load i32*, i32** %104, align 8
  %106 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %8, align 8
  %107 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %106, i32 0, i32 4
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 2
  %109 = load i8**, i8*** %108, align 8
  %110 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %8, align 8
  %111 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %110, i32 0, i32 5
  %112 = load i8**, i8*** %111, align 8
  %113 = call i32 @map_singles(%struct.hda_codec* %99, i32 %102, i32* %105, i8** %109, i8** %112)
  %114 = load i32, i32* %13, align 4
  %115 = or i32 %114, %113
  store i32 %115, i32* %13, align 4
  %116 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %117 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %9, align 8
  %118 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %9, align 8
  %121 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %120, i32 0, i32 6
  %122 = load i32*, i32** %121, align 8
  %123 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %8, align 8
  %124 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %123, i32 0, i32 4
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 1
  %126 = load i8**, i8*** %125, align 8
  %127 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %8, align 8
  %128 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %127, i32 0, i32 3
  %129 = load i8**, i8*** %128, align 8
  %130 = call i32 @map_singles(%struct.hda_codec* %116, i32 %119, i32* %122, i8** %126, i8** %129)
  %131 = load i32, i32* %13, align 4
  %132 = or i32 %131, %130
  store i32 %132, i32* %13, align 4
  %133 = load i32, i32* %7, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %158

135:                                              ; preds = %84
  %136 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %9, align 8
  %137 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = icmp eq i32 %138, 1
  br i1 %139, label %140, label %158

140:                                              ; preds = %135
  %141 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %9, align 8
  %142 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %141, i32 0, i32 3
  %143 = load i64, i64* %142, align 8
  %144 = load i64, i64* @AUTO_PIN_SPEAKER_OUT, align 8
  %145 = icmp ne i64 %143, %144
  br i1 %145, label %146, label %158

146:                                              ; preds = %140
  %147 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %148 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %9, align 8
  %149 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %148, i32 0, i32 5
  %150 = load i32*, i32** %149, align 8
  %151 = getelementptr inbounds i32, i32* %150, i64 0
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @fill_multi_ios(%struct.hda_codec* %147, i32 %152, i32 1)
  store i32 %153, i32* %11, align 4
  %154 = load i32, i32* %11, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %157, label %156

156:                                              ; preds = %146
  store i32 1, i32* %13, align 4
  br label %157

157:                                              ; preds = %156, %146
  br label %158

158:                                              ; preds = %157, %140, %135, %84
  br label %159

159:                                              ; preds = %158
  %160 = load i32, i32* %13, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %84, label %162

162:                                              ; preds = %159
  br label %163

163:                                              ; preds = %162, %3
  %164 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %165 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %9, align 8
  %166 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %9, align 8
  %169 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %168, i32 0, i32 5
  %170 = load i32*, i32** %169, align 8
  %171 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %8, align 8
  %172 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %171, i32 0, i32 8
  %173 = load i8**, i8*** %172, align 8
  %174 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %8, align 8
  %175 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %174, i32 0, i32 10
  %176 = load i8**, i8*** %175, align 8
  %177 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %8, align 8
  %178 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %177, i32 0, i32 13
  %179 = load i32, i32* %178, align 4
  %180 = call i32 @try_assign_dacs(%struct.hda_codec* %164, i32 %167, i32* %170, i8** %173, i8** %176, i32 %179)
  %181 = load i32, i32* %12, align 4
  %182 = add nsw i32 %181, %180
  store i32 %182, i32* %12, align 4
  %183 = load i32, i32* %7, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %209

185:                                              ; preds = %163
  %186 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %9, align 8
  %187 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = icmp eq i32 %188, 1
  br i1 %189, label %190, label %209

190:                                              ; preds = %185
  %191 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %9, align 8
  %192 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %191, i32 0, i32 3
  %193 = load i64, i64* %192, align 8
  %194 = load i64, i64* @AUTO_PIN_SPEAKER_OUT, align 8
  %195 = icmp ne i64 %193, %194
  br i1 %195, label %196, label %209

196:                                              ; preds = %190
  %197 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %198 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %9, align 8
  %199 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %198, i32 0, i32 5
  %200 = load i32*, i32** %199, align 8
  %201 = getelementptr inbounds i32, i32* %200, i64 0
  %202 = load i32, i32* %201, align 4
  %203 = call i32 @fill_multi_ios(%struct.hda_codec* %197, i32 %202, i32 0)
  store i32 %203, i32* %11, align 4
  %204 = load i32, i32* %11, align 4
  %205 = icmp slt i32 %204, 0
  br i1 %205, label %206, label %208

206:                                              ; preds = %196
  %207 = load i32, i32* %11, align 4
  store i32 %207, i32* %4, align 4
  br label %551

208:                                              ; preds = %196
  br label %209

209:                                              ; preds = %208, %190, %185, %163
  %210 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %9, align 8
  %211 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %210, i32 0, i32 3
  %212 = load i64, i64* %211, align 8
  %213 = load i64, i64* @AUTO_PIN_HP_OUT, align 8
  %214 = icmp ne i64 %212, %213
  br i1 %214, label %215, label %242

215:                                              ; preds = %209
  %216 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %217 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %9, align 8
  %218 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 4
  %220 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %9, align 8
  %221 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %220, i32 0, i32 4
  %222 = load i32*, i32** %221, align 8
  %223 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %8, align 8
  %224 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %223, i32 0, i32 4
  %225 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %224, i32 0, i32 2
  %226 = load i8**, i8*** %225, align 8
  %227 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %8, align 8
  %228 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %227, i32 0, i32 5
  %229 = load i8**, i8*** %228, align 8
  %230 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %8, align 8
  %231 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %230, i32 0, i32 12
  %232 = load i32, i32* %231, align 8
  %233 = call i32 @try_assign_dacs(%struct.hda_codec* %216, i32 %219, i32* %222, i8** %226, i8** %229, i32 %232)
  store i32 %233, i32* %11, align 4
  %234 = load i32, i32* %11, align 4
  %235 = icmp slt i32 %234, 0
  br i1 %235, label %236, label %238

236:                                              ; preds = %215
  %237 = load i32, i32* %11, align 4
  store i32 %237, i32* %4, align 4
  br label %551

238:                                              ; preds = %215
  %239 = load i32, i32* %11, align 4
  %240 = load i32, i32* %12, align 4
  %241 = add nsw i32 %240, %239
  store i32 %241, i32* %12, align 4
  br label %242

242:                                              ; preds = %238, %209
  %243 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %9, align 8
  %244 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %243, i32 0, i32 3
  %245 = load i64, i64* %244, align 8
  %246 = load i64, i64* @AUTO_PIN_SPEAKER_OUT, align 8
  %247 = icmp ne i64 %245, %246
  br i1 %247, label %248, label %275

248:                                              ; preds = %242
  %249 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %250 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %9, align 8
  %251 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %250, i32 0, i32 2
  %252 = load i32, i32* %251, align 8
  %253 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %9, align 8
  %254 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %253, i32 0, i32 6
  %255 = load i32*, i32** %254, align 8
  %256 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %8, align 8
  %257 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %256, i32 0, i32 4
  %258 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %257, i32 0, i32 1
  %259 = load i8**, i8*** %258, align 8
  %260 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %8, align 8
  %261 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %260, i32 0, i32 3
  %262 = load i8**, i8*** %261, align 8
  %263 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %8, align 8
  %264 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %263, i32 0, i32 12
  %265 = load i32, i32* %264, align 8
  %266 = call i32 @try_assign_dacs(%struct.hda_codec* %249, i32 %252, i32* %255, i8** %259, i8** %262, i32 %265)
  store i32 %266, i32* %11, align 4
  %267 = load i32, i32* %11, align 4
  %268 = icmp slt i32 %267, 0
  br i1 %268, label %269, label %271

269:                                              ; preds = %248
  %270 = load i32, i32* %11, align 4
  store i32 %270, i32* %4, align 4
  br label %551

271:                                              ; preds = %248
  %272 = load i32, i32* %11, align 4
  %273 = load i32, i32* %12, align 4
  %274 = add nsw i32 %273, %272
  store i32 %274, i32* %12, align 4
  br label %275

275:                                              ; preds = %271, %242
  %276 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %9, align 8
  %277 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %276, i32 0, i32 0
  %278 = load i32, i32* %277, align 8
  %279 = icmp eq i32 %278, 1
  br i1 %279, label %280, label %302

280:                                              ; preds = %275
  %281 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %9, align 8
  %282 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %281, i32 0, i32 3
  %283 = load i64, i64* %282, align 8
  %284 = load i64, i64* @AUTO_PIN_SPEAKER_OUT, align 8
  %285 = icmp ne i64 %283, %284
  br i1 %285, label %286, label %302

286:                                              ; preds = %280
  %287 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %288 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %9, align 8
  %289 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %288, i32 0, i32 5
  %290 = load i32*, i32** %289, align 8
  %291 = getelementptr inbounds i32, i32* %290, i64 0
  %292 = load i32, i32* %291, align 4
  %293 = call i32 @fill_multi_ios(%struct.hda_codec* %287, i32 %292, i32 0)
  store i32 %293, i32* %11, align 4
  %294 = load i32, i32* %11, align 4
  %295 = icmp slt i32 %294, 0
  br i1 %295, label %296, label %298

296:                                              ; preds = %286
  %297 = load i32, i32* %11, align 4
  store i32 %297, i32* %4, align 4
  br label %551

298:                                              ; preds = %286
  %299 = load i32, i32* %11, align 4
  %300 = load i32, i32* %12, align 4
  %301 = add nsw i32 %300, %299
  store i32 %301, i32* %12, align 4
  br label %302

302:                                              ; preds = %298, %280, %275
  %303 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %8, align 8
  %304 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %303, i32 0, i32 11
  %305 = load i64, i64* %304, align 8
  %306 = icmp ne i64 %305, 0
  br i1 %306, label %307, label %355

307:                                              ; preds = %302
  %308 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %309 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %8, align 8
  %310 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %309, i32 0, i32 10
  %311 = load i8**, i8*** %310, align 8
  %312 = getelementptr inbounds i8*, i8** %311, i64 0
  %313 = load i8*, i8** %312, align 8
  %314 = call i8* @check_aamix_out_path(%struct.hda_codec* %308, i8* %313)
  %315 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %8, align 8
  %316 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %315, i32 0, i32 9
  %317 = load i8**, i8*** %316, align 8
  %318 = getelementptr inbounds i8*, i8** %317, i64 0
  store i8* %314, i8** %318, align 8
  %319 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %9, align 8
  %320 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %319, i32 0, i32 3
  %321 = load i64, i64* %320, align 8
  %322 = load i64, i64* @AUTO_PIN_HP_OUT, align 8
  %323 = icmp ne i64 %321, %322
  br i1 %323, label %324, label %336

324:                                              ; preds = %307
  %325 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %326 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %8, align 8
  %327 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %326, i32 0, i32 5
  %328 = load i8**, i8*** %327, align 8
  %329 = getelementptr inbounds i8*, i8** %328, i64 0
  %330 = load i8*, i8** %329, align 8
  %331 = call i8* @check_aamix_out_path(%struct.hda_codec* %325, i8* %330)
  %332 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %8, align 8
  %333 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %332, i32 0, i32 9
  %334 = load i8**, i8*** %333, align 8
  %335 = getelementptr inbounds i8*, i8** %334, i64 1
  store i8* %331, i8** %335, align 8
  br label %336

336:                                              ; preds = %324, %307
  %337 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %9, align 8
  %338 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %337, i32 0, i32 3
  %339 = load i64, i64* %338, align 8
  %340 = load i64, i64* @AUTO_PIN_SPEAKER_OUT, align 8
  %341 = icmp ne i64 %339, %340
  br i1 %341, label %342, label %354

342:                                              ; preds = %336
  %343 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %344 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %8, align 8
  %345 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %344, i32 0, i32 3
  %346 = load i8**, i8*** %345, align 8
  %347 = getelementptr inbounds i8*, i8** %346, i64 0
  %348 = load i8*, i8** %347, align 8
  %349 = call i8* @check_aamix_out_path(%struct.hda_codec* %343, i8* %348)
  %350 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %8, align 8
  %351 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %350, i32 0, i32 9
  %352 = load i8**, i8*** %351, align 8
  %353 = getelementptr inbounds i8*, i8** %352, i64 2
  store i8* %349, i8** %353, align 8
  br label %354

354:                                              ; preds = %342, %336
  br label %355

355:                                              ; preds = %354, %302
  %356 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %9, align 8
  %357 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %356, i32 0, i32 1
  %358 = load i32, i32* %357, align 4
  %359 = icmp ne i32 %358, 0
  br i1 %359, label %360, label %379

360:                                              ; preds = %355
  %361 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %9, align 8
  %362 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %361, i32 0, i32 3
  %363 = load i64, i64* %362, align 8
  %364 = load i64, i64* @AUTO_PIN_SPEAKER_OUT, align 8
  %365 = icmp eq i64 %363, %364
  br i1 %365, label %366, label %379

366:                                              ; preds = %360
  %367 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %368 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %9, align 8
  %369 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %368, i32 0, i32 4
  %370 = load i32*, i32** %369, align 8
  %371 = getelementptr inbounds i32, i32* %370, i64 0
  %372 = load i32, i32* %371, align 4
  %373 = call i32 @count_multiio_pins(%struct.hda_codec* %367, i32 %372)
  %374 = icmp sge i32 %373, 2
  br i1 %374, label %375, label %378

375:                                              ; preds = %366
  %376 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %8, align 8
  %377 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %376, i32 0, i32 0
  store i32 1, i32* %377, align 8
  br label %378

378:                                              ; preds = %375, %366
  br label %379

379:                                              ; preds = %378, %360, %355
  %380 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %8, align 8
  %381 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %380, i32 0, i32 4
  %382 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %381, i32 0, i32 0
  store i32 0, i32* %382, align 8
  store i32 0, i32* %10, align 4
  br label %383

383:                                              ; preds = %438, %379
  %384 = load i32, i32* %10, align 4
  %385 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %9, align 8
  %386 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %385, i32 0, i32 0
  %387 = load i32, i32* %386, align 8
  %388 = icmp slt i32 %384, %387
  br i1 %388, label %389, label %441

389:                                              ; preds = %383
  %390 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %8, align 8
  %391 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %390, i32 0, i32 8
  %392 = load i8**, i8*** %391, align 8
  %393 = load i32, i32* %10, align 4
  %394 = sext i32 %393 to i64
  %395 = getelementptr inbounds i8*, i8** %392, i64 %394
  %396 = load i8*, i8** %395, align 8
  %397 = icmp ne i8* %396, null
  br i1 %397, label %398, label %404

398:                                              ; preds = %389
  %399 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %8, align 8
  %400 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %399, i32 0, i32 4
  %401 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %400, i32 0, i32 0
  %402 = load i32, i32* %401, align 8
  %403 = add nsw i32 %402, 1
  store i32 %403, i32* %401, align 8
  br label %437

404:                                              ; preds = %389
  %405 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %8, align 8
  %406 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %405, i32 0, i32 8
  %407 = load i8**, i8*** %406, align 8
  %408 = load i32, i32* %10, align 4
  %409 = sext i32 %408 to i64
  %410 = getelementptr inbounds i8*, i8** %407, i64 %409
  %411 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %8, align 8
  %412 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %411, i32 0, i32 8
  %413 = load i8**, i8*** %412, align 8
  %414 = load i32, i32* %10, align 4
  %415 = sext i32 %414 to i64
  %416 = getelementptr inbounds i8*, i8** %413, i64 %415
  %417 = getelementptr inbounds i8*, i8** %416, i64 1
  %418 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %9, align 8
  %419 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %418, i32 0, i32 0
  %420 = load i32, i32* %419, align 8
  %421 = load i32, i32* %10, align 4
  %422 = sub nsw i32 %420, %421
  %423 = sub nsw i32 %422, 1
  %424 = sext i32 %423 to i64
  %425 = mul i64 4, %424
  %426 = trunc i64 %425 to i32
  %427 = call i32 @memmove(i8** %410, i8** %417, i32 %426)
  %428 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %8, align 8
  %429 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %428, i32 0, i32 8
  %430 = load i8**, i8*** %429, align 8
  %431 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %9, align 8
  %432 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %431, i32 0, i32 0
  %433 = load i32, i32* %432, align 8
  %434 = sub nsw i32 %433, 1
  %435 = sext i32 %434 to i64
  %436 = getelementptr inbounds i8*, i8** %430, i64 %435
  store i8* null, i8** %436, align 8
  br label %437

437:                                              ; preds = %404, %398
  br label %438

438:                                              ; preds = %437
  %439 = load i32, i32* %10, align 4
  %440 = add nsw i32 %439, 1
  store i32 %440, i32* %10, align 4
  br label %383

441:                                              ; preds = %383
  %442 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %8, align 8
  %443 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %442, i32 0, i32 4
  %444 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %443, i32 0, i32 0
  %445 = load i32, i32* %444, align 8
  %446 = mul nsw i32 %445, 2
  %447 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %8, align 8
  %448 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %447, i32 0, i32 2
  store i32 %446, i32* %448, align 8
  %449 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %8, align 8
  %450 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %449, i32 0, i32 1
  store i32 %446, i32* %450, align 4
  %451 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %8, align 8
  %452 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %451, i32 0, i32 0
  %453 = load i32, i32* %452, align 8
  %454 = icmp eq i32 %453, 2
  br i1 %454, label %455, label %482

455:                                              ; preds = %441
  store i32 0, i32* %10, align 4
  br label %456

456:                                              ; preds = %478, %455
  %457 = load i32, i32* %10, align 4
  %458 = icmp slt i32 %457, 2
  br i1 %458, label %459, label %481

459:                                              ; preds = %456
  %460 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %8, align 8
  %461 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %460, i32 0, i32 7
  %462 = load %struct.TYPE_3__*, %struct.TYPE_3__** %461, align 8
  %463 = load i32, i32* %10, align 4
  %464 = sext i32 %463 to i64
  %465 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %462, i64 %464
  %466 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %465, i32 0, i32 0
  %467 = load i8*, i8** %466, align 8
  %468 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %8, align 8
  %469 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %468, i32 0, i32 8
  %470 = load i8**, i8*** %469, align 8
  %471 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %8, align 8
  %472 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %471, i32 0, i32 4
  %473 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %472, i32 0, i32 0
  %474 = load i32, i32* %473, align 8
  %475 = add nsw i32 %474, 1
  store i32 %475, i32* %473, align 8
  %476 = sext i32 %474 to i64
  %477 = getelementptr inbounds i8*, i8** %470, i64 %476
  store i8* %467, i8** %477, align 8
  br label %478

478:                                              ; preds = %459
  %479 = load i32, i32* %10, align 4
  %480 = add nsw i32 %479, 1
  store i32 %480, i32* %10, align 4
  br label %456

481:                                              ; preds = %456
  br label %496

482:                                              ; preds = %441
  %483 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %8, align 8
  %484 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %483, i32 0, i32 0
  %485 = load i32, i32* %484, align 8
  %486 = icmp ne i32 %485, 0
  br i1 %486, label %487, label %495

487:                                              ; preds = %482
  %488 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %8, align 8
  %489 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %488, i32 0, i32 0
  store i32 0, i32* %489, align 8
  %490 = load i64, i64* @BAD_MULTI_IO, align 8
  %491 = load i32, i32* %12, align 4
  %492 = sext i32 %491 to i64
  %493 = add nsw i64 %492, %490
  %494 = trunc i64 %493 to i32
  store i32 %494, i32* %12, align 4
  br label %495

495:                                              ; preds = %487, %482
  br label %496

496:                                              ; preds = %495, %481
  %497 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %8, align 8
  %498 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %497, i32 0, i32 6
  %499 = load i64, i64* %498, align 8
  %500 = icmp ne i64 %499, 0
  br i1 %500, label %501, label %511

501:                                              ; preds = %496
  %502 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %503 = call i32 @indep_hp_possible(%struct.hda_codec* %502)
  %504 = icmp ne i32 %503, 0
  br i1 %504, label %511, label %505

505:                                              ; preds = %501
  %506 = load i64, i64* @BAD_NO_INDEP_HP, align 8
  %507 = load i32, i32* %12, align 4
  %508 = sext i32 %507 to i64
  %509 = add nsw i64 %508, %506
  %510 = trunc i64 %509 to i32
  store i32 %510, i32* %12, align 4
  br label %511

511:                                              ; preds = %505, %501, %496
  %512 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %9, align 8
  %513 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %512, i32 0, i32 3
  %514 = load i64, i64* %513, align 8
  %515 = load i64, i64* @AUTO_PIN_HP_OUT, align 8
  %516 = icmp ne i64 %514, %515
  br i1 %516, label %517, label %530

517:                                              ; preds = %511
  %518 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %519 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %9, align 8
  %520 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %519, i32 0, i32 1
  %521 = load i32, i32* %520, align 4
  %522 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %8, align 8
  %523 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %522, i32 0, i32 4
  %524 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %523, i32 0, i32 2
  %525 = load i8**, i8*** %524, align 8
  %526 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %8, align 8
  %527 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %526, i32 0, i32 5
  %528 = load i8**, i8*** %527, align 8
  %529 = call i32 @refill_shared_dacs(%struct.hda_codec* %518, i32 %521, i8** %525, i8** %528)
  br label %530

530:                                              ; preds = %517, %511
  %531 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %9, align 8
  %532 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %531, i32 0, i32 3
  %533 = load i64, i64* %532, align 8
  %534 = load i64, i64* @AUTO_PIN_SPEAKER_OUT, align 8
  %535 = icmp ne i64 %533, %534
  br i1 %535, label %536, label %549

536:                                              ; preds = %530
  %537 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %538 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %9, align 8
  %539 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %538, i32 0, i32 2
  %540 = load i32, i32* %539, align 8
  %541 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %8, align 8
  %542 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %541, i32 0, i32 4
  %543 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %542, i32 0, i32 1
  %544 = load i8**, i8*** %543, align 8
  %545 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %8, align 8
  %546 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %545, i32 0, i32 3
  %547 = load i8**, i8*** %546, align 8
  %548 = call i32 @refill_shared_dacs(%struct.hda_codec* %537, i32 %540, i8** %544, i8** %547)
  br label %549

549:                                              ; preds = %536, %530
  %550 = load i32, i32* %12, align 4
  store i32 %550, i32* %4, align 4
  br label %551

551:                                              ; preds = %549, %296, %269, %236, %206
  %552 = load i32, i32* %4, align 4
  ret i32 %552
}

declare dso_local i32 @memset(i8**, i32, i32) #1

declare dso_local i32 @snd_array_free(i32*) #1

declare dso_local i32 @map_singles(%struct.hda_codec*, i32, i32*, i8**, i8**) #1

declare dso_local i32 @fill_multi_ios(%struct.hda_codec*, i32, i32) #1

declare dso_local i32 @try_assign_dacs(%struct.hda_codec*, i32, i32*, i8**, i8**, i32) #1

declare dso_local i8* @check_aamix_out_path(%struct.hda_codec*, i8*) #1

declare dso_local i32 @count_multiio_pins(%struct.hda_codec*, i32) #1

declare dso_local i32 @memmove(i8**, i8**, i32) #1

declare dso_local i32 @indep_hp_possible(%struct.hda_codec*) #1

declare dso_local i32 @refill_shared_dacs(%struct.hda_codec*, i32, i8**, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
