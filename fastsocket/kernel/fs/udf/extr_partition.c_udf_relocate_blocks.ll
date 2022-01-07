; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/udf/extr_partition.c_udf_relocate_blocks.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/udf/extr_partition.c_udf_relocate_blocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.udf_sparing_data = type { i32, %struct.buffer_head** }
%struct.buffer_head = type { i64 }
%struct.sparingTable = type { %struct.sparingEntry*, i32 }
%struct.sparingEntry = type { i8*, i8* }
%struct.udf_sb_info = type { i32, %struct.udf_part_map* }
%struct.udf_part_map = type { i64, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.udf_sparing_data }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @udf_relocate_blocks(%struct.super_block* %0, i64 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.udf_sparing_data*, align 8
  %9 = alloca %struct.sparingTable*, align 8
  %10 = alloca %struct.sparingEntry, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.udf_sb_info*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.buffer_head*, align 8
  %19 = alloca %struct.udf_part_map*, align 8
  %20 = alloca %struct.sparingEntry*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.sparingEntry*, align 8
  %24 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  store %struct.sparingTable* null, %struct.sparingTable** %9, align 8
  %25 = load %struct.super_block*, %struct.super_block** %5, align 8
  %26 = call %struct.udf_sb_info* @UDF_SB(%struct.super_block* %25)
  store %struct.udf_sb_info* %26, %struct.udf_sb_info** %16, align 8
  store i32 0, i32* %12, align 4
  br label %27

27:                                               ; preds = %336, %3
  %28 = load i32, i32* %12, align 4
  %29 = load %struct.udf_sb_info*, %struct.udf_sb_info** %16, align 8
  %30 = getelementptr inbounds %struct.udf_sb_info, %struct.udf_sb_info* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp slt i32 %28, %31
  br i1 %32, label %33, label %339

33:                                               ; preds = %27
  %34 = load %struct.udf_sb_info*, %struct.udf_sb_info** %16, align 8
  %35 = getelementptr inbounds %struct.udf_sb_info, %struct.udf_sb_info* %34, i32 0, i32 1
  %36 = load %struct.udf_part_map*, %struct.udf_part_map** %35, align 8
  %37 = load i32, i32* %12, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.udf_part_map, %struct.udf_part_map* %36, i64 %38
  store %struct.udf_part_map* %39, %struct.udf_part_map** %19, align 8
  %40 = load i64, i64* %6, align 8
  %41 = load %struct.udf_part_map*, %struct.udf_part_map** %19, align 8
  %42 = getelementptr inbounds %struct.udf_part_map, %struct.udf_part_map* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp sgt i64 %40, %43
  br i1 %44, label %45, label %335

45:                                               ; preds = %33
  %46 = load i64, i64* %6, align 8
  %47 = load %struct.udf_part_map*, %struct.udf_part_map** %19, align 8
  %48 = getelementptr inbounds %struct.udf_part_map, %struct.udf_part_map* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.udf_part_map*, %struct.udf_part_map** %19, align 8
  %51 = getelementptr inbounds %struct.udf_part_map, %struct.udf_part_map* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = add nsw i64 %49, %52
  %54 = icmp slt i64 %46, %53
  br i1 %54, label %55, label %335

55:                                               ; preds = %45
  %56 = load %struct.udf_part_map*, %struct.udf_part_map** %19, align 8
  %57 = getelementptr inbounds %struct.udf_part_map, %struct.udf_part_map* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  store %struct.udf_sparing_data* %58, %struct.udf_sparing_data** %8, align 8
  %59 = load i64, i64* %6, align 8
  %60 = load %struct.udf_part_map*, %struct.udf_part_map** %19, align 8
  %61 = getelementptr inbounds %struct.udf_part_map, %struct.udf_part_map* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = sub nsw i64 %59, %62
  %64 = load %struct.udf_sparing_data*, %struct.udf_sparing_data** %8, align 8
  %65 = getelementptr inbounds %struct.udf_sparing_data, %struct.udf_sparing_data* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = sub nsw i32 %66, 1
  %68 = xor i32 %67, -1
  %69 = sext i32 %68 to i64
  %70 = and i64 %63, %69
  %71 = trunc i64 %70 to i32
  store i32 %71, i32* %11, align 4
  store i32 0, i32* %13, align 4
  br label %72

72:                                               ; preds = %96, %55
  %73 = load i32, i32* %13, align 4
  %74 = icmp slt i32 %73, 4
  br i1 %74, label %75, label %99

75:                                               ; preds = %72
  %76 = load %struct.udf_sparing_data*, %struct.udf_sparing_data** %8, align 8
  %77 = getelementptr inbounds %struct.udf_sparing_data, %struct.udf_sparing_data* %76, i32 0, i32 1
  %78 = load %struct.buffer_head**, %struct.buffer_head*** %77, align 8
  %79 = load i32, i32* %13, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %78, i64 %80
  %82 = load %struct.buffer_head*, %struct.buffer_head** %81, align 8
  %83 = icmp ne %struct.buffer_head* %82, null
  br i1 %83, label %84, label %95

84:                                               ; preds = %75
  %85 = load %struct.udf_sparing_data*, %struct.udf_sparing_data** %8, align 8
  %86 = getelementptr inbounds %struct.udf_sparing_data, %struct.udf_sparing_data* %85, i32 0, i32 1
  %87 = load %struct.buffer_head**, %struct.buffer_head*** %86, align 8
  %88 = load i32, i32* %13, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %87, i64 %89
  %91 = load %struct.buffer_head*, %struct.buffer_head** %90, align 8
  %92 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = inttoptr i64 %93 to %struct.sparingTable*
  store %struct.sparingTable* %94, %struct.sparingTable** %9, align 8
  br label %99

95:                                               ; preds = %75
  br label %96

96:                                               ; preds = %95
  %97 = load i32, i32* %13, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %13, align 4
  br label %72

99:                                               ; preds = %84, %72
  %100 = load %struct.sparingTable*, %struct.sparingTable** %9, align 8
  %101 = icmp ne %struct.sparingTable* %100, null
  br i1 %101, label %103, label %102

102:                                              ; preds = %99
  store i32 1, i32* %4, align 4
  br label %347

103:                                              ; preds = %99
  %104 = load %struct.sparingTable*, %struct.sparingTable** %9, align 8
  %105 = getelementptr inbounds %struct.sparingTable, %struct.sparingTable* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @le16_to_cpu(i32 %106)
  store i32 %107, i32* %17, align 4
  store i32 0, i32* %14, align 4
  br label %108

108:                                              ; preds = %212, %103
  %109 = load i32, i32* %14, align 4
  %110 = load i32, i32* %17, align 4
  %111 = icmp slt i32 %109, %110
  br i1 %111, label %112, label %215

112:                                              ; preds = %108
  %113 = load %struct.sparingTable*, %struct.sparingTable** %9, align 8
  %114 = getelementptr inbounds %struct.sparingTable, %struct.sparingTable* %113, i32 0, i32 0
  %115 = load %struct.sparingEntry*, %struct.sparingEntry** %114, align 8
  %116 = load i32, i32* %14, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.sparingEntry, %struct.sparingEntry* %115, i64 %117
  store %struct.sparingEntry* %118, %struct.sparingEntry** %20, align 8
  %119 = load %struct.sparingEntry*, %struct.sparingEntry** %20, align 8
  %120 = getelementptr inbounds %struct.sparingEntry, %struct.sparingEntry* %119, i32 0, i32 1
  %121 = load i8*, i8** %120, align 8
  %122 = call i64 @le32_to_cpu(i8* %121)
  %123 = trunc i64 %122 to i32
  store i32 %123, i32* %21, align 4
  %124 = load i32, i32* %21, align 4
  %125 = icmp eq i32 %124, -1
  br i1 %125, label %126, label %182

126:                                              ; preds = %112
  br label %127

127:                                              ; preds = %161, %126
  %128 = load i32, i32* %13, align 4
  %129 = icmp slt i32 %128, 4
  br i1 %129, label %130, label %164

130:                                              ; preds = %127
  %131 = load %struct.udf_sparing_data*, %struct.udf_sparing_data** %8, align 8
  %132 = getelementptr inbounds %struct.udf_sparing_data, %struct.udf_sparing_data* %131, i32 0, i32 1
  %133 = load %struct.buffer_head**, %struct.buffer_head*** %132, align 8
  %134 = load i32, i32* %13, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %133, i64 %135
  %137 = load %struct.buffer_head*, %struct.buffer_head** %136, align 8
  store %struct.buffer_head* %137, %struct.buffer_head** %18, align 8
  %138 = load %struct.buffer_head*, %struct.buffer_head** %18, align 8
  %139 = icmp ne %struct.buffer_head* %138, null
  br i1 %139, label %141, label %140

140:                                              ; preds = %130
  br label %161

141:                                              ; preds = %130
  %142 = load %struct.buffer_head*, %struct.buffer_head** %18, align 8
  %143 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = inttoptr i64 %144 to %struct.sparingTable*
  store %struct.sparingTable* %145, %struct.sparingTable** %9, align 8
  %146 = load i32, i32* %11, align 4
  %147 = call i8* @cpu_to_le32(i32 %146)
  %148 = load %struct.sparingEntry*, %struct.sparingEntry** %20, align 8
  %149 = getelementptr inbounds %struct.sparingEntry, %struct.sparingEntry* %148, i32 0, i32 1
  store i8* %147, i8** %149, align 8
  %150 = load i32, i32* %17, align 4
  %151 = sext i32 %150 to i64
  %152 = mul i64 %151, 16
  %153 = add i64 16, %152
  %154 = trunc i64 %153 to i32
  store i32 %154, i32* %22, align 4
  %155 = load %struct.sparingTable*, %struct.sparingTable** %9, align 8
  %156 = bitcast %struct.sparingTable* %155 to i8*
  %157 = load i32, i32* %22, align 4
  %158 = call i32 @udf_update_tag(i8* %156, i32 %157)
  %159 = load %struct.buffer_head*, %struct.buffer_head** %18, align 8
  %160 = call i32 @mark_buffer_dirty(%struct.buffer_head* %159)
  br label %161

161:                                              ; preds = %141, %140
  %162 = load i32, i32* %13, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %13, align 4
  br label %127

164:                                              ; preds = %127
  %165 = load %struct.sparingEntry*, %struct.sparingEntry** %20, align 8
  %166 = getelementptr inbounds %struct.sparingEntry, %struct.sparingEntry* %165, i32 0, i32 0
  %167 = load i8*, i8** %166, align 8
  %168 = call i64 @le32_to_cpu(i8* %167)
  %169 = load i64, i64* %6, align 8
  %170 = load %struct.udf_part_map*, %struct.udf_part_map** %19, align 8
  %171 = getelementptr inbounds %struct.udf_part_map, %struct.udf_part_map* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = sub nsw i64 %169, %172
  %174 = load %struct.udf_sparing_data*, %struct.udf_sparing_data** %8, align 8
  %175 = getelementptr inbounds %struct.udf_sparing_data, %struct.udf_sparing_data* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = sub nsw i32 %176, 1
  %178 = sext i32 %177 to i64
  %179 = and i64 %173, %178
  %180 = add nsw i64 %168, %179
  %181 = load i64*, i64** %7, align 8
  store i64 %180, i64* %181, align 8
  store i32 0, i32* %4, align 4
  br label %347

182:                                              ; preds = %112
  %183 = load i32, i32* %21, align 4
  %184 = load i32, i32* %11, align 4
  %185 = icmp eq i32 %183, %184
  br i1 %185, label %186, label %204

186:                                              ; preds = %182
  %187 = load %struct.sparingEntry*, %struct.sparingEntry** %20, align 8
  %188 = getelementptr inbounds %struct.sparingEntry, %struct.sparingEntry* %187, i32 0, i32 0
  %189 = load i8*, i8** %188, align 8
  %190 = call i64 @le32_to_cpu(i8* %189)
  %191 = load i64, i64* %6, align 8
  %192 = load %struct.udf_part_map*, %struct.udf_part_map** %19, align 8
  %193 = getelementptr inbounds %struct.udf_part_map, %struct.udf_part_map* %192, i32 0, i32 0
  %194 = load i64, i64* %193, align 8
  %195 = sub nsw i64 %191, %194
  %196 = load %struct.udf_sparing_data*, %struct.udf_sparing_data** %8, align 8
  %197 = getelementptr inbounds %struct.udf_sparing_data, %struct.udf_sparing_data* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = sub nsw i32 %198, 1
  %200 = sext i32 %199 to i64
  %201 = and i64 %195, %200
  %202 = add nsw i64 %190, %201
  %203 = load i64*, i64** %7, align 8
  store i64 %202, i64* %203, align 8
  store i32 0, i32* %4, align 4
  br label %347

204:                                              ; preds = %182
  %205 = load i32, i32* %21, align 4
  %206 = load i32, i32* %11, align 4
  %207 = icmp sgt i32 %205, %206
  br i1 %207, label %208, label %209

208:                                              ; preds = %204
  br label %215

209:                                              ; preds = %204
  br label %210

210:                                              ; preds = %209
  br label %211

211:                                              ; preds = %210
  br label %212

212:                                              ; preds = %211
  %213 = load i32, i32* %14, align 4
  %214 = add nsw i32 %213, 1
  store i32 %214, i32* %14, align 4
  br label %108

215:                                              ; preds = %208, %108
  %216 = load i32, i32* %14, align 4
  store i32 %216, i32* %15, align 4
  br label %217

217:                                              ; preds = %331, %215
  %218 = load i32, i32* %15, align 4
  %219 = load i32, i32* %17, align 4
  %220 = icmp slt i32 %218, %219
  br i1 %220, label %221, label %334

221:                                              ; preds = %217
  %222 = load %struct.sparingTable*, %struct.sparingTable** %9, align 8
  %223 = getelementptr inbounds %struct.sparingTable, %struct.sparingTable* %222, i32 0, i32 0
  %224 = load %struct.sparingEntry*, %struct.sparingEntry** %223, align 8
  %225 = load i32, i32* %15, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds %struct.sparingEntry, %struct.sparingEntry* %224, i64 %226
  store %struct.sparingEntry* %227, %struct.sparingEntry** %23, align 8
  %228 = load %struct.sparingEntry*, %struct.sparingEntry** %23, align 8
  %229 = getelementptr inbounds %struct.sparingEntry, %struct.sparingEntry* %228, i32 0, i32 1
  %230 = load i8*, i8** %229, align 8
  %231 = call i64 @le32_to_cpu(i8* %230)
  %232 = trunc i64 %231 to i32
  store i32 %232, i32* %24, align 4
  %233 = load i32, i32* %24, align 4
  %234 = icmp ne i32 %233, -1
  br i1 %234, label %235, label %236

235:                                              ; preds = %221
  br label %331

236:                                              ; preds = %221
  br label %237

237:                                              ; preds = %305, %236
  %238 = load i32, i32* %13, align 4
  %239 = icmp slt i32 %238, 4
  br i1 %239, label %240, label %308

240:                                              ; preds = %237
  %241 = load %struct.udf_sparing_data*, %struct.udf_sparing_data** %8, align 8
  %242 = getelementptr inbounds %struct.udf_sparing_data, %struct.udf_sparing_data* %241, i32 0, i32 1
  %243 = load %struct.buffer_head**, %struct.buffer_head*** %242, align 8
  %244 = load i32, i32* %13, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %243, i64 %245
  %247 = load %struct.buffer_head*, %struct.buffer_head** %246, align 8
  store %struct.buffer_head* %247, %struct.buffer_head** %18, align 8
  %248 = load %struct.buffer_head*, %struct.buffer_head** %18, align 8
  %249 = icmp ne %struct.buffer_head* %248, null
  br i1 %249, label %251, label %250

250:                                              ; preds = %240
  br label %305

251:                                              ; preds = %240
  %252 = load %struct.buffer_head*, %struct.buffer_head** %18, align 8
  %253 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %252, i32 0, i32 0
  %254 = load i64, i64* %253, align 8
  %255 = inttoptr i64 %254 to %struct.sparingTable*
  store %struct.sparingTable* %255, %struct.sparingTable** %9, align 8
  %256 = load %struct.sparingTable*, %struct.sparingTable** %9, align 8
  %257 = getelementptr inbounds %struct.sparingTable, %struct.sparingTable* %256, i32 0, i32 0
  %258 = load %struct.sparingEntry*, %struct.sparingEntry** %257, align 8
  %259 = load i32, i32* %15, align 4
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds %struct.sparingEntry, %struct.sparingEntry* %258, i64 %260
  %262 = bitcast %struct.sparingEntry* %10 to i8*
  %263 = bitcast %struct.sparingEntry* %261 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %262, i8* align 8 %263, i64 16, i1 false)
  %264 = load i32, i32* %11, align 4
  %265 = call i8* @cpu_to_le32(i32 %264)
  %266 = getelementptr inbounds %struct.sparingEntry, %struct.sparingEntry* %10, i32 0, i32 1
  store i8* %265, i8** %266, align 8
  %267 = load %struct.sparingTable*, %struct.sparingTable** %9, align 8
  %268 = getelementptr inbounds %struct.sparingTable, %struct.sparingTable* %267, i32 0, i32 0
  %269 = load %struct.sparingEntry*, %struct.sparingEntry** %268, align 8
  %270 = load i32, i32* %14, align 4
  %271 = add nsw i32 %270, 1
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds %struct.sparingEntry, %struct.sparingEntry* %269, i64 %272
  %274 = load %struct.sparingTable*, %struct.sparingTable** %9, align 8
  %275 = getelementptr inbounds %struct.sparingTable, %struct.sparingTable* %274, i32 0, i32 0
  %276 = load %struct.sparingEntry*, %struct.sparingEntry** %275, align 8
  %277 = load i32, i32* %14, align 4
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds %struct.sparingEntry, %struct.sparingEntry* %276, i64 %278
  %280 = load i32, i32* %15, align 4
  %281 = load i32, i32* %14, align 4
  %282 = sub nsw i32 %280, %281
  %283 = sext i32 %282 to i64
  %284 = mul i64 %283, 16
  %285 = trunc i64 %284 to i32
  %286 = call i32 @memmove(%struct.sparingEntry* %273, %struct.sparingEntry* %279, i32 %285)
  %287 = load %struct.sparingTable*, %struct.sparingTable** %9, align 8
  %288 = getelementptr inbounds %struct.sparingTable, %struct.sparingTable* %287, i32 0, i32 0
  %289 = load %struct.sparingEntry*, %struct.sparingEntry** %288, align 8
  %290 = load i32, i32* %14, align 4
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds %struct.sparingEntry, %struct.sparingEntry* %289, i64 %291
  %293 = bitcast %struct.sparingEntry* %292 to i8*
  %294 = bitcast %struct.sparingEntry* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %293, i8* align 8 %294, i64 16, i1 false)
  %295 = load %struct.sparingTable*, %struct.sparingTable** %9, align 8
  %296 = bitcast %struct.sparingTable* %295 to i8*
  %297 = load i32, i32* %17, align 4
  %298 = sext i32 %297 to i64
  %299 = mul i64 %298, 16
  %300 = add i64 16, %299
  %301 = trunc i64 %300 to i32
  %302 = call i32 @udf_update_tag(i8* %296, i32 %301)
  %303 = load %struct.buffer_head*, %struct.buffer_head** %18, align 8
  %304 = call i32 @mark_buffer_dirty(%struct.buffer_head* %303)
  br label %305

305:                                              ; preds = %251, %250
  %306 = load i32, i32* %13, align 4
  %307 = add nsw i32 %306, 1
  store i32 %307, i32* %13, align 4
  br label %237

308:                                              ; preds = %237
  %309 = load %struct.sparingTable*, %struct.sparingTable** %9, align 8
  %310 = getelementptr inbounds %struct.sparingTable, %struct.sparingTable* %309, i32 0, i32 0
  %311 = load %struct.sparingEntry*, %struct.sparingEntry** %310, align 8
  %312 = load i32, i32* %14, align 4
  %313 = sext i32 %312 to i64
  %314 = getelementptr inbounds %struct.sparingEntry, %struct.sparingEntry* %311, i64 %313
  %315 = getelementptr inbounds %struct.sparingEntry, %struct.sparingEntry* %314, i32 0, i32 0
  %316 = load i8*, i8** %315, align 8
  %317 = call i64 @le32_to_cpu(i8* %316)
  %318 = load i64, i64* %6, align 8
  %319 = load %struct.udf_part_map*, %struct.udf_part_map** %19, align 8
  %320 = getelementptr inbounds %struct.udf_part_map, %struct.udf_part_map* %319, i32 0, i32 0
  %321 = load i64, i64* %320, align 8
  %322 = sub nsw i64 %318, %321
  %323 = load %struct.udf_sparing_data*, %struct.udf_sparing_data** %8, align 8
  %324 = getelementptr inbounds %struct.udf_sparing_data, %struct.udf_sparing_data* %323, i32 0, i32 0
  %325 = load i32, i32* %324, align 8
  %326 = sub nsw i32 %325, 1
  %327 = sext i32 %326 to i64
  %328 = and i64 %322, %327
  %329 = add nsw i64 %317, %328
  %330 = load i64*, i64** %7, align 8
  store i64 %329, i64* %330, align 8
  store i32 0, i32* %4, align 4
  br label %347

331:                                              ; preds = %235
  %332 = load i32, i32* %15, align 4
  %333 = add nsw i32 %332, 1
  store i32 %333, i32* %15, align 4
  br label %217

334:                                              ; preds = %217
  store i32 1, i32* %4, align 4
  br label %347

335:                                              ; preds = %45, %33
  br label %336

336:                                              ; preds = %335
  %337 = load i32, i32* %12, align 4
  %338 = add nsw i32 %337, 1
  store i32 %338, i32* %12, align 4
  br label %27

339:                                              ; preds = %27
  %340 = load i32, i32* %12, align 4
  %341 = load %struct.udf_sb_info*, %struct.udf_sb_info** %16, align 8
  %342 = getelementptr inbounds %struct.udf_sb_info, %struct.udf_sb_info* %341, i32 0, i32 0
  %343 = load i32, i32* %342, align 8
  %344 = icmp eq i32 %340, %343
  br i1 %344, label %345, label %346

345:                                              ; preds = %339
  store i32 1, i32* %4, align 4
  br label %347

346:                                              ; preds = %339
  store i32 0, i32* %4, align 4
  br label %347

347:                                              ; preds = %346, %345, %334, %308, %186, %164, %102
  %348 = load i32, i32* %4, align 4
  ret i32 %348
}

declare dso_local %struct.udf_sb_info* @UDF_SB(%struct.super_block*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i64 @le32_to_cpu(i8*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @udf_update_tag(i8*, i32) #1

declare dso_local i32 @mark_buffer_dirty(%struct.buffer_head*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @memmove(%struct.sparingEntry*, %struct.sparingEntry*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
