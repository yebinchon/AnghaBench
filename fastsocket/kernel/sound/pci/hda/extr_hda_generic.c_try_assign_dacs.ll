; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_generic.c_try_assign_dacs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_generic.c_try_assign_dacs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.hda_gen_spec* }
%struct.hda_gen_spec = type { i32, i32* }
%struct.badness_table = type { i64, i64, i64, i64, i64, i64 }
%struct.nid_path = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*, i32, i32*, i32*, i32*, %struct.badness_table*)* @try_assign_dacs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @try_assign_dacs(%struct.hda_codec* %0, i32 %1, i32* %2, i32* %3, i32* %4, %struct.badness_table* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.hda_codec*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.badness_table*, align 8
  %14 = alloca %struct.hda_gen_spec*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.nid_path*, align 8
  %20 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store %struct.badness_table* %5, %struct.badness_table** %13, align 8
  %21 = load %struct.hda_codec*, %struct.hda_codec** %8, align 8
  %22 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %21, i32 0, i32 0
  %23 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %22, align 8
  store %struct.hda_gen_spec* %23, %struct.hda_gen_spec** %14, align 8
  store i32 0, i32* %17, align 4
  %24 = load i32, i32* %9, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  br label %299

27:                                               ; preds = %6
  store i32 0, i32* %15, align 4
  br label %28

28:                                               ; preds = %294, %27
  %29 = load i32, i32* %15, align 4
  %30 = load i32, i32* %9, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %297

32:                                               ; preds = %28
  %33 = load i32*, i32** %10, align 8
  %34 = load i32, i32* %15, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %20, align 4
  %38 = load %struct.hda_codec*, %struct.hda_codec** %8, align 8
  %39 = load i32*, i32** %12, align 8
  %40 = load i32, i32* %15, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = call %struct.nid_path* @snd_hda_get_path_from_idx(%struct.hda_codec* %38, i32 %43)
  store %struct.nid_path* %44, %struct.nid_path** %19, align 8
  %45 = load %struct.nid_path*, %struct.nid_path** %19, align 8
  %46 = icmp ne %struct.nid_path* %45, null
  br i1 %46, label %47, label %55

47:                                               ; preds = %32
  %48 = load %struct.hda_codec*, %struct.hda_codec** %8, align 8
  %49 = load %struct.nid_path*, %struct.nid_path** %19, align 8
  %50 = call i64 @assign_out_path_ctls(%struct.hda_codec* %48, %struct.nid_path* %49)
  %51 = load i32, i32* %17, align 4
  %52 = sext i32 %51 to i64
  %53 = add nsw i64 %52, %50
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %17, align 4
  br label %294

55:                                               ; preds = %32
  %56 = load %struct.hda_codec*, %struct.hda_codec** %8, align 8
  %57 = load i32, i32* %20, align 4
  %58 = call i32 @look_for_dac(%struct.hda_codec* %56, i32 %57, i32 0)
  %59 = load i32*, i32** %11, align 8
  %60 = load i32, i32* %15, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  store i32 %58, i32* %62, align 4
  %63 = load i32*, i32** %11, align 8
  %64 = load i32, i32* %15, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %115, label %69

69:                                               ; preds = %55
  %70 = load i32, i32* %15, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %115, label %72

72:                                               ; preds = %69
  store i32 1, i32* %16, align 4
  br label %73

73:                                               ; preds = %111, %72
  %74 = load i32, i32* %16, align 4
  %75 = load i32, i32* %9, align 4
  %76 = icmp slt i32 %74, %75
  br i1 %76, label %77, label %114

77:                                               ; preds = %73
  %78 = load %struct.hda_codec*, %struct.hda_codec** %8, align 8
  %79 = load i32*, i32** %11, align 8
  %80 = load i32, i32* %16, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* %20, align 4
  %85 = call i64 @is_reachable_path(%struct.hda_codec* %78, i32 %83, i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %110

87:                                               ; preds = %77
  %88 = load i32*, i32** %11, align 8
  %89 = load i32, i32* %16, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = load i32*, i32** %11, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 0
  store i32 %92, i32* %94, align 4
  %95 = load i32*, i32** %11, align 8
  %96 = load i32, i32* %16, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  store i32 0, i32* %98, align 4
  %99 = load %struct.hda_codec*, %struct.hda_codec** %8, align 8
  %100 = load i32*, i32** %12, align 8
  %101 = load i32, i32* %16, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @invalidate_nid_path(%struct.hda_codec* %99, i32 %104)
  %106 = load i32*, i32** %12, align 8
  %107 = load i32, i32* %16, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  store i32 0, i32* %109, align 4
  br label %114

110:                                              ; preds = %77
  br label %111

111:                                              ; preds = %110
  %112 = load i32, i32* %16, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %16, align 4
  br label %73

114:                                              ; preds = %87, %73
  br label %115

115:                                              ; preds = %114, %69, %55
  %116 = load i32*, i32** %11, align 8
  %117 = load i32, i32* %15, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %116, i64 %118
  %120 = load i32, i32* %119, align 4
  store i32 %120, i32* %18, align 4
  %121 = load i32, i32* %18, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %233, label %123

123:                                              ; preds = %115
  %124 = load i32, i32* %9, align 4
  %125 = icmp sgt i32 %124, 2
  br i1 %125, label %126, label %133

126:                                              ; preds = %123
  %127 = load %struct.hda_codec*, %struct.hda_codec** %8, align 8
  %128 = load %struct.hda_codec*, %struct.hda_codec** %8, align 8
  %129 = load i32, i32* %15, align 4
  %130 = call i32 @get_primary_out(%struct.hda_codec* %128, i32 %129)
  %131 = load i32, i32* %20, align 4
  %132 = call i32 @try_dac(%struct.hda_codec* %127, i32 %130, i32 %131)
  store i32 %132, i32* %18, align 4
  br label %133

133:                                              ; preds = %126, %123
  %134 = load i32, i32* %18, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %143, label %136

136:                                              ; preds = %133
  %137 = load %struct.hda_codec*, %struct.hda_codec** %8, align 8
  %138 = load i32*, i32** %11, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 0
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* %20, align 4
  %142 = call i32 @try_dac(%struct.hda_codec* %137, i32 %140, i32 %141)
  store i32 %142, i32* %18, align 4
  br label %143

143:                                              ; preds = %136, %133
  %144 = load i32, i32* %18, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %153, label %146

146:                                              ; preds = %143
  %147 = load %struct.hda_codec*, %struct.hda_codec** %8, align 8
  %148 = load %struct.hda_codec*, %struct.hda_codec** %8, align 8
  %149 = load i32, i32* %15, align 4
  %150 = call i32 @get_primary_out(%struct.hda_codec* %148, i32 %149)
  %151 = load i32, i32* %20, align 4
  %152 = call i32 @try_dac(%struct.hda_codec* %147, i32 %150, i32 %151)
  store i32 %152, i32* %18, align 4
  br label %153

153:                                              ; preds = %146, %143
  %154 = load i32, i32* %18, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %188

156:                                              ; preds = %153
  %157 = load i32, i32* %15, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %167, label %159

159:                                              ; preds = %156
  %160 = load %struct.badness_table*, %struct.badness_table** %13, align 8
  %161 = getelementptr inbounds %struct.badness_table, %struct.badness_table* %160, i32 0, i32 5
  %162 = load i64, i64* %161, align 8
  %163 = load i32, i32* %17, align 4
  %164 = sext i32 %163 to i64
  %165 = add nsw i64 %164, %162
  %166 = trunc i64 %165 to i32
  store i32 %166, i32* %17, align 4
  br label %187

167:                                              ; preds = %156
  %168 = load i32, i32* %15, align 4
  %169 = icmp eq i32 %168, 1
  br i1 %169, label %170, label %178

170:                                              ; preds = %167
  %171 = load %struct.badness_table*, %struct.badness_table** %13, align 8
  %172 = getelementptr inbounds %struct.badness_table, %struct.badness_table* %171, i32 0, i32 4
  %173 = load i64, i64* %172, align 8
  %174 = load i32, i32* %17, align 4
  %175 = sext i32 %174 to i64
  %176 = add nsw i64 %175, %173
  %177 = trunc i64 %176 to i32
  store i32 %177, i32* %17, align 4
  br label %186

178:                                              ; preds = %167
  %179 = load %struct.badness_table*, %struct.badness_table** %13, align 8
  %180 = getelementptr inbounds %struct.badness_table, %struct.badness_table* %179, i32 0, i32 3
  %181 = load i64, i64* %180, align 8
  %182 = load i32, i32* %17, align 4
  %183 = sext i32 %182 to i64
  %184 = add nsw i64 %183, %181
  %185 = trunc i64 %184 to i32
  store i32 %185, i32* %17, align 4
  br label %186

186:                                              ; preds = %178, %170
  br label %187

187:                                              ; preds = %186, %159
  br label %232

188:                                              ; preds = %153
  %189 = load %struct.hda_codec*, %struct.hda_codec** %8, align 8
  %190 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %14, align 8
  %191 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %190, i32 0, i32 1
  %192 = load i32*, i32** %191, align 8
  %193 = getelementptr inbounds i32, i32* %192, i64 0
  %194 = load i32, i32* %193, align 4
  %195 = load i32, i32* %20, align 4
  %196 = call i64 @is_reachable_path(%struct.hda_codec* %189, i32 %194, i32 %195)
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %211

198:                                              ; preds = %188
  %199 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %14, align 8
  %200 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %199, i32 0, i32 1
  %201 = load i32*, i32** %200, align 8
  %202 = getelementptr inbounds i32, i32* %201, i64 0
  %203 = load i32, i32* %202, align 4
  store i32 %203, i32* %18, align 4
  %204 = load %struct.badness_table*, %struct.badness_table** %13, align 8
  %205 = getelementptr inbounds %struct.badness_table, %struct.badness_table* %204, i32 0, i32 2
  %206 = load i64, i64* %205, align 8
  %207 = load i32, i32* %17, align 4
  %208 = sext i32 %207 to i64
  %209 = add nsw i64 %208, %206
  %210 = trunc i64 %209 to i32
  store i32 %210, i32* %17, align 4
  br label %231

211:                                              ; preds = %188
  %212 = load i32, i32* %15, align 4
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %222, label %214

214:                                              ; preds = %211
  %215 = load %struct.badness_table*, %struct.badness_table** %13, align 8
  %216 = getelementptr inbounds %struct.badness_table, %struct.badness_table* %215, i32 0, i32 1
  %217 = load i64, i64* %216, align 8
  %218 = load i32, i32* %17, align 4
  %219 = sext i32 %218 to i64
  %220 = add nsw i64 %219, %217
  %221 = trunc i64 %220 to i32
  store i32 %221, i32* %17, align 4
  br label %230

222:                                              ; preds = %211
  %223 = load %struct.badness_table*, %struct.badness_table** %13, align 8
  %224 = getelementptr inbounds %struct.badness_table, %struct.badness_table* %223, i32 0, i32 0
  %225 = load i64, i64* %224, align 8
  %226 = load i32, i32* %17, align 4
  %227 = sext i32 %226 to i64
  %228 = add nsw i64 %227, %225
  %229 = trunc i64 %228 to i32
  store i32 %229, i32* %17, align 4
  br label %230

230:                                              ; preds = %222, %214
  br label %231

231:                                              ; preds = %230, %198
  br label %232

232:                                              ; preds = %231, %187
  br label %233

233:                                              ; preds = %232, %115
  %234 = load i32, i32* %18, align 4
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %237, label %236

236:                                              ; preds = %233
  br label %294

237:                                              ; preds = %233
  %238 = load %struct.hda_codec*, %struct.hda_codec** %8, align 8
  %239 = load i32, i32* %18, align 4
  %240 = load i32, i32* %20, align 4
  %241 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %14, align 8
  %242 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 8
  %244 = sub nsw i32 0, %243
  %245 = call %struct.nid_path* @snd_hda_add_new_path(%struct.hda_codec* %238, i32 %239, i32 %240, i32 %244)
  store %struct.nid_path* %245, %struct.nid_path** %19, align 8
  %246 = load %struct.nid_path*, %struct.nid_path** %19, align 8
  %247 = icmp ne %struct.nid_path* %246, null
  br i1 %247, label %261, label %248

248:                                              ; preds = %237
  %249 = load i32, i32* %15, align 4
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %261, label %251

251:                                              ; preds = %248
  %252 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %14, align 8
  %253 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 8
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %256, label %261

256:                                              ; preds = %251
  %257 = load %struct.hda_codec*, %struct.hda_codec** %8, align 8
  %258 = load i32, i32* %18, align 4
  %259 = load i32, i32* %20, align 4
  %260 = call %struct.nid_path* @snd_hda_add_new_path(%struct.hda_codec* %257, i32 %258, i32 %259, i32 0)
  store %struct.nid_path* %260, %struct.nid_path** %19, align 8
  br label %261

261:                                              ; preds = %256, %251, %248, %237
  %262 = load %struct.nid_path*, %struct.nid_path** %19, align 8
  %263 = icmp ne %struct.nid_path* %262, null
  br i1 %263, label %276, label %264

264:                                              ; preds = %261
  %265 = load i32*, i32** %11, align 8
  %266 = load i32, i32* %15, align 4
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds i32, i32* %265, i64 %267
  store i32 0, i32* %268, align 4
  store i32 0, i32* %18, align 4
  %269 = load %struct.badness_table*, %struct.badness_table** %13, align 8
  %270 = getelementptr inbounds %struct.badness_table, %struct.badness_table* %269, i32 0, i32 0
  %271 = load i64, i64* %270, align 8
  %272 = load i32, i32* %17, align 4
  %273 = sext i32 %272 to i64
  %274 = add nsw i64 %273, %271
  %275 = trunc i64 %274 to i32
  store i32 %275, i32* %17, align 4
  br label %293

276:                                              ; preds = %261
  %277 = load %struct.nid_path*, %struct.nid_path** %19, align 8
  %278 = getelementptr inbounds %struct.nid_path, %struct.nid_path* %277, i32 0, i32 0
  store i32 1, i32* %278, align 4
  %279 = load %struct.hda_codec*, %struct.hda_codec** %8, align 8
  %280 = load %struct.nid_path*, %struct.nid_path** %19, align 8
  %281 = call i32 @snd_hda_get_path_idx(%struct.hda_codec* %279, %struct.nid_path* %280)
  %282 = load i32*, i32** %12, align 8
  %283 = load i32, i32* %15, align 4
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds i32, i32* %282, i64 %284
  store i32 %281, i32* %285, align 4
  %286 = load %struct.hda_codec*, %struct.hda_codec** %8, align 8
  %287 = load %struct.nid_path*, %struct.nid_path** %19, align 8
  %288 = call i64 @assign_out_path_ctls(%struct.hda_codec* %286, %struct.nid_path* %287)
  %289 = load i32, i32* %17, align 4
  %290 = sext i32 %289 to i64
  %291 = add nsw i64 %290, %288
  %292 = trunc i64 %291 to i32
  store i32 %292, i32* %17, align 4
  br label %293

293:                                              ; preds = %276, %264
  br label %294

294:                                              ; preds = %293, %236, %47
  %295 = load i32, i32* %15, align 4
  %296 = add nsw i32 %295, 1
  store i32 %296, i32* %15, align 4
  br label %28

297:                                              ; preds = %28
  %298 = load i32, i32* %17, align 4
  store i32 %298, i32* %7, align 4
  br label %299

299:                                              ; preds = %297, %26
  %300 = load i32, i32* %7, align 4
  ret i32 %300
}

declare dso_local %struct.nid_path* @snd_hda_get_path_from_idx(%struct.hda_codec*, i32) #1

declare dso_local i64 @assign_out_path_ctls(%struct.hda_codec*, %struct.nid_path*) #1

declare dso_local i32 @look_for_dac(%struct.hda_codec*, i32, i32) #1

declare dso_local i64 @is_reachable_path(%struct.hda_codec*, i32, i32) #1

declare dso_local i32 @invalidate_nid_path(%struct.hda_codec*, i32) #1

declare dso_local i32 @try_dac(%struct.hda_codec*, i32, i32) #1

declare dso_local i32 @get_primary_out(%struct.hda_codec*, i32) #1

declare dso_local %struct.nid_path* @snd_hda_add_new_path(%struct.hda_codec*, i32, i32, i32) #1

declare dso_local i32 @snd_hda_get_path_idx(%struct.hda_codec*, %struct.nid_path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
