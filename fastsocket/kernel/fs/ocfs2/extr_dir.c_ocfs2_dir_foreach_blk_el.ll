; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_dir.c_ocfs2_dir_foreach_blk_el.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_dir.c_ocfs2_dir_foreach_blk_el.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i64, %struct.super_block* }
%struct.super_block = type { i32, i32 }
%struct.buffer_head = type { i64 }
%struct.ocfs2_dir_entry = type { i64, i32, i32, i32, i32 }

@OCFS2_BH_READAHEAD = common dso_local global i32 0, align 4
@DT_UNKNOWN = common dso_local global i8 0, align 1
@OCFS2_FT_MAX = common dso_local global i64 0, align 8
@ocfs2_filetype_table = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i64*, i32*, i8*, i32 (i8*, i32, i32, i32, i64, i8)*, i32*)* @ocfs2_dir_foreach_blk_el to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_dir_foreach_blk_el(%struct.inode* %0, i64* %1, i32* %2, i8* %3, i32 (i8*, i32, i32, i32, i64, i8)* %4, i32* %5) #0 {
  %7 = alloca %struct.inode*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32 (i8*, i32, i32, i32, i64, i8)*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.buffer_head*, align 8
  %20 = alloca %struct.buffer_head*, align 8
  %21 = alloca %struct.ocfs2_dir_entry*, align 8
  %22 = alloca %struct.super_block*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i64, align 8
  %25 = alloca i8, align 1
  store %struct.inode* %0, %struct.inode** %7, align 8
  store i64* %1, i64** %8, align 8
  store i32* %2, i32** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 (i8*, i32, i32, i32, i64, i8)* %4, i32 (i8*, i32, i32, i32, i64, i8)** %11, align 8
  store i32* %5, i32** %12, align 8
  store i32 0, i32* %13, align 4
  store i64 0, i64* %16, align 8
  %26 = load %struct.inode*, %struct.inode** %7, align 8
  %27 = getelementptr inbounds %struct.inode, %struct.inode* %26, i32 0, i32 1
  %28 = load %struct.super_block*, %struct.super_block** %27, align 8
  store %struct.super_block* %28, %struct.super_block** %22, align 8
  store i32 16, i32* %23, align 4
  store i32 0, i32* %18, align 4
  store %struct.buffer_head* null, %struct.buffer_head** %19, align 8
  %29 = load i32*, i32** %9, align 8
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.super_block*, %struct.super_block** %22, align 8
  %32 = getelementptr inbounds %struct.super_block, %struct.super_block* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = sub nsw i32 %33, 1
  %35 = and i32 %30, %34
  %36 = sext i32 %35 to i64
  store i64 %36, i64* %14, align 8
  br label %37

37:                                               ; preds = %296, %63, %6
  %38 = load i32, i32* %13, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %49, label %40

40:                                               ; preds = %37
  %41 = load i32, i32* %18, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %49, label %43

43:                                               ; preds = %40
  %44 = load i32*, i32** %9, align 8
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.inode*, %struct.inode** %7, align 8
  %47 = call i32 @i_size_read(%struct.inode* %46)
  %48 = icmp slt i32 %45, %47
  br label %49

49:                                               ; preds = %43, %40, %37
  %50 = phi i1 [ false, %40 ], [ false, %37 ], [ %48, %43 ]
  br i1 %50, label %51, label %299

51:                                               ; preds = %49
  %52 = load i32*, i32** %9, align 8
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.super_block*, %struct.super_block** %22, align 8
  %55 = getelementptr inbounds %struct.super_block, %struct.super_block* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = ashr i32 %53, %56
  %58 = sext i32 %57 to i64
  store i64 %58, i64* %15, align 8
  %59 = load %struct.inode*, %struct.inode** %7, align 8
  %60 = load i64, i64* %15, align 8
  %61 = call i64 @ocfs2_read_dir_block(%struct.inode* %59, i64 %60, %struct.buffer_head** %19, i32 0)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %75

63:                                               ; preds = %51
  %64 = load %struct.super_block*, %struct.super_block** %22, align 8
  %65 = getelementptr inbounds %struct.super_block, %struct.super_block* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = sext i32 %66 to i64
  %68 = load i64, i64* %14, align 8
  %69 = sub i64 %67, %68
  %70 = load i32*, i32** %9, align 8
  %71 = load i32, i32* %70, align 4
  %72 = sext i32 %71 to i64
  %73 = add i64 %72, %69
  %74 = trunc i64 %73 to i32
  store i32 %74, i32* %70, align 4
  br label %37

75:                                               ; preds = %51
  %76 = load i64, i64* %16, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %87

78:                                               ; preds = %75
  %79 = load i64, i64* %16, align 8
  %80 = load i64, i64* %15, align 8
  %81 = sub i64 %79, %80
  %82 = shl i64 %81, 9
  %83 = load i32, i32* %23, align 4
  %84 = udiv i32 %83, 2
  %85 = zext i32 %84 to i64
  %86 = icmp ule i64 %82, %85
  br i1 %86, label %87, label %113

87:                                               ; preds = %78, %75
  %88 = load i32, i32* %23, align 4
  %89 = load %struct.super_block*, %struct.super_block** %22, align 8
  %90 = getelementptr inbounds %struct.super_block, %struct.super_block* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = sub nsw i32 %91, 9
  %93 = lshr i32 %88, %92
  store i32 %93, i32* %17, align 4
  br label %94

94:                                               ; preds = %108, %87
  %95 = load i32, i32* %17, align 4
  %96 = icmp sgt i32 %95, 0
  br i1 %96, label %97, label %111

97:                                               ; preds = %94
  store %struct.buffer_head* null, %struct.buffer_head** %20, align 8
  %98 = load %struct.inode*, %struct.inode** %7, align 8
  %99 = load i64, i64* %15, align 8
  %100 = add i64 %99, 1
  store i64 %100, i64* %15, align 8
  %101 = load i32, i32* @OCFS2_BH_READAHEAD, align 4
  %102 = call i64 @ocfs2_read_dir_block(%struct.inode* %98, i64 %100, %struct.buffer_head** %20, i32 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %107, label %104

104:                                              ; preds = %97
  %105 = load %struct.buffer_head*, %struct.buffer_head** %20, align 8
  %106 = call i32 @brelse(%struct.buffer_head* %105)
  br label %107

107:                                              ; preds = %104, %97
  br label %108

108:                                              ; preds = %107
  %109 = load i32, i32* %17, align 4
  %110 = add nsw i32 %109, -1
  store i32 %110, i32* %17, align 4
  br label %94

111:                                              ; preds = %94
  %112 = load i64, i64* %15, align 8
  store i64 %112, i64* %16, align 8
  store i32 8, i32* %23, align 4
  br label %113

113:                                              ; preds = %111, %78
  br label %114

114:                                              ; preds = %282, %113
  %115 = load i64*, i64** %8, align 8
  %116 = load i64, i64* %115, align 8
  %117 = load %struct.inode*, %struct.inode** %7, align 8
  %118 = getelementptr inbounds %struct.inode, %struct.inode* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %116, %119
  br i1 %120, label %121, label %179

121:                                              ; preds = %114
  store i32 0, i32* %17, align 4
  br label %122

122:                                              ; preds = %150, %121
  %123 = load i32, i32* %17, align 4
  %124 = load %struct.super_block*, %struct.super_block** %22, align 8
  %125 = getelementptr inbounds %struct.super_block, %struct.super_block* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = icmp slt i32 %123, %126
  br i1 %127, label %128, label %133

128:                                              ; preds = %122
  %129 = load i32, i32* %17, align 4
  %130 = sext i32 %129 to i64
  %131 = load i64, i64* %14, align 8
  %132 = icmp ult i64 %130, %131
  br label %133

133:                                              ; preds = %128, %122
  %134 = phi i1 [ false, %122 ], [ %132, %128 ]
  br i1 %134, label %135, label %159

135:                                              ; preds = %133
  %136 = load %struct.buffer_head*, %struct.buffer_head** %19, align 8
  %137 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = load i32, i32* %17, align 4
  %140 = sext i32 %139 to i64
  %141 = add nsw i64 %138, %140
  %142 = inttoptr i64 %141 to %struct.ocfs2_dir_entry*
  store %struct.ocfs2_dir_entry* %142, %struct.ocfs2_dir_entry** %21, align 8
  %143 = load %struct.ocfs2_dir_entry*, %struct.ocfs2_dir_entry** %21, align 8
  %144 = getelementptr inbounds %struct.ocfs2_dir_entry, %struct.ocfs2_dir_entry* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 8
  %146 = call i64 @le16_to_cpu(i32 %145)
  %147 = call i64 @OCFS2_DIR_REC_LEN(i32 1)
  %148 = icmp slt i64 %146, %147
  br i1 %148, label %149, label %150

149:                                              ; preds = %135
  br label %159

150:                                              ; preds = %135
  %151 = load %struct.ocfs2_dir_entry*, %struct.ocfs2_dir_entry** %21, align 8
  %152 = getelementptr inbounds %struct.ocfs2_dir_entry, %struct.ocfs2_dir_entry* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 8
  %154 = call i64 @le16_to_cpu(i32 %153)
  %155 = load i32, i32* %17, align 4
  %156 = sext i32 %155 to i64
  %157 = add nsw i64 %156, %154
  %158 = trunc i64 %157 to i32
  store i32 %158, i32* %17, align 4
  br label %122

159:                                              ; preds = %149, %133
  %160 = load i32, i32* %17, align 4
  %161 = sext i32 %160 to i64
  store i64 %161, i64* %14, align 8
  %162 = load i32*, i32** %9, align 8
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.super_block*, %struct.super_block** %22, align 8
  %165 = getelementptr inbounds %struct.super_block, %struct.super_block* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = sub nsw i32 %166, 1
  %168 = xor i32 %167, -1
  %169 = and i32 %163, %168
  %170 = sext i32 %169 to i64
  %171 = load i64, i64* %14, align 8
  %172 = or i64 %170, %171
  %173 = trunc i64 %172 to i32
  %174 = load i32*, i32** %9, align 8
  store i32 %173, i32* %174, align 4
  %175 = load %struct.inode*, %struct.inode** %7, align 8
  %176 = getelementptr inbounds %struct.inode, %struct.inode* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = load i64*, i64** %8, align 8
  store i64 %177, i64* %178, align 8
  br label %179

179:                                              ; preds = %159, %114
  br label %180

180:                                              ; preds = %286, %179
  %181 = load i32, i32* %13, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %196, label %183

183:                                              ; preds = %180
  %184 = load i32*, i32** %9, align 8
  %185 = load i32, i32* %184, align 4
  %186 = load %struct.inode*, %struct.inode** %7, align 8
  %187 = call i32 @i_size_read(%struct.inode* %186)
  %188 = icmp slt i32 %185, %187
  br i1 %188, label %189, label %196

189:                                              ; preds = %183
  %190 = load i64, i64* %14, align 8
  %191 = load %struct.super_block*, %struct.super_block** %22, align 8
  %192 = getelementptr inbounds %struct.super_block, %struct.super_block* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = sext i32 %193 to i64
  %195 = icmp ult i64 %190, %194
  br label %196

196:                                              ; preds = %189, %183, %180
  %197 = phi i1 [ false, %183 ], [ false, %180 ], [ %195, %189 ]
  br i1 %197, label %198, label %296

198:                                              ; preds = %196
  %199 = load %struct.buffer_head*, %struct.buffer_head** %19, align 8
  %200 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %199, i32 0, i32 0
  %201 = load i64, i64* %200, align 8
  %202 = load i64, i64* %14, align 8
  %203 = add i64 %201, %202
  %204 = inttoptr i64 %203 to %struct.ocfs2_dir_entry*
  store %struct.ocfs2_dir_entry* %204, %struct.ocfs2_dir_entry** %21, align 8
  %205 = load %struct.inode*, %struct.inode** %7, align 8
  %206 = load %struct.ocfs2_dir_entry*, %struct.ocfs2_dir_entry** %21, align 8
  %207 = load %struct.buffer_head*, %struct.buffer_head** %19, align 8
  %208 = load i64, i64* %14, align 8
  %209 = call i32 @ocfs2_check_dir_entry(%struct.inode* %205, %struct.ocfs2_dir_entry* %206, %struct.buffer_head* %207, i64 %208)
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %223, label %211

211:                                              ; preds = %198
  %212 = load i32*, i32** %9, align 8
  %213 = load i32, i32* %212, align 4
  %214 = load %struct.super_block*, %struct.super_block** %22, align 8
  %215 = getelementptr inbounds %struct.super_block, %struct.super_block* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 4
  %217 = sub nsw i32 %216, 1
  %218 = or i32 %213, %217
  %219 = add nsw i32 %218, 1
  %220 = load i32*, i32** %9, align 8
  store i32 %219, i32* %220, align 4
  %221 = load %struct.buffer_head*, %struct.buffer_head** %19, align 8
  %222 = call i32 @brelse(%struct.buffer_head* %221)
  br label %300

223:                                              ; preds = %198
  %224 = load %struct.ocfs2_dir_entry*, %struct.ocfs2_dir_entry** %21, align 8
  %225 = getelementptr inbounds %struct.ocfs2_dir_entry, %struct.ocfs2_dir_entry* %224, i32 0, i32 1
  %226 = load i32, i32* %225, align 8
  %227 = call i64 @le16_to_cpu(i32 %226)
  %228 = load i64, i64* %14, align 8
  %229 = add i64 %228, %227
  store i64 %229, i64* %14, align 8
  %230 = load %struct.ocfs2_dir_entry*, %struct.ocfs2_dir_entry** %21, align 8
  %231 = getelementptr inbounds %struct.ocfs2_dir_entry, %struct.ocfs2_dir_entry* %230, i32 0, i32 2
  %232 = load i32, i32* %231, align 4
  %233 = call i64 @le64_to_cpu(i32 %232)
  %234 = icmp ne i64 %233, 0
  br i1 %234, label %235, label %286

235:                                              ; preds = %223
  %236 = load i64*, i64** %8, align 8
  %237 = load i64, i64* %236, align 8
  store i64 %237, i64* %24, align 8
  %238 = load i8, i8* @DT_UNKNOWN, align 1
  store i8 %238, i8* %25, align 1
  %239 = load %struct.ocfs2_dir_entry*, %struct.ocfs2_dir_entry** %21, align 8
  %240 = getelementptr inbounds %struct.ocfs2_dir_entry, %struct.ocfs2_dir_entry* %239, i32 0, i32 0
  %241 = load i64, i64* %240, align 8
  %242 = load i64, i64* @OCFS2_FT_MAX, align 8
  %243 = icmp ult i64 %241, %242
  br i1 %243, label %244, label %251

244:                                              ; preds = %235
  %245 = load i8*, i8** @ocfs2_filetype_table, align 8
  %246 = load %struct.ocfs2_dir_entry*, %struct.ocfs2_dir_entry** %21, align 8
  %247 = getelementptr inbounds %struct.ocfs2_dir_entry, %struct.ocfs2_dir_entry* %246, i32 0, i32 0
  %248 = load i64, i64* %247, align 8
  %249 = getelementptr inbounds i8, i8* %245, i64 %248
  %250 = load i8, i8* %249, align 1
  store i8 %250, i8* %25, align 1
  br label %251

251:                                              ; preds = %244, %235
  %252 = load i32 (i8*, i32, i32, i32, i64, i8)*, i32 (i8*, i32, i32, i32, i64, i8)** %11, align 8
  %253 = load i8*, i8** %10, align 8
  %254 = load %struct.ocfs2_dir_entry*, %struct.ocfs2_dir_entry** %21, align 8
  %255 = getelementptr inbounds %struct.ocfs2_dir_entry, %struct.ocfs2_dir_entry* %254, i32 0, i32 4
  %256 = load i32, i32* %255, align 4
  %257 = load %struct.ocfs2_dir_entry*, %struct.ocfs2_dir_entry** %21, align 8
  %258 = getelementptr inbounds %struct.ocfs2_dir_entry, %struct.ocfs2_dir_entry* %257, i32 0, i32 3
  %259 = load i32, i32* %258, align 8
  %260 = load i32*, i32** %9, align 8
  %261 = load i32, i32* %260, align 4
  %262 = load %struct.ocfs2_dir_entry*, %struct.ocfs2_dir_entry** %21, align 8
  %263 = getelementptr inbounds %struct.ocfs2_dir_entry, %struct.ocfs2_dir_entry* %262, i32 0, i32 2
  %264 = load i32, i32* %263, align 4
  %265 = call i64 @le64_to_cpu(i32 %264)
  %266 = load i8, i8* %25, align 1
  %267 = call i32 %252(i8* %253, i32 %256, i32 %259, i32 %261, i64 %265, i8 zeroext %266)
  store i32 %267, i32* %13, align 4
  %268 = load i32, i32* %13, align 4
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %270, label %277

270:                                              ; preds = %251
  %271 = load i32*, i32** %12, align 8
  %272 = icmp ne i32* %271, null
  br i1 %272, label %273, label %276

273:                                              ; preds = %270
  %274 = load i32, i32* %13, align 4
  %275 = load i32*, i32** %12, align 8
  store i32 %274, i32* %275, align 4
  br label %276

276:                                              ; preds = %273, %270
  br label %296

277:                                              ; preds = %251
  %278 = load i64, i64* %24, align 8
  %279 = load i64*, i64** %8, align 8
  %280 = load i64, i64* %279, align 8
  %281 = icmp ne i64 %278, %280
  br i1 %281, label %282, label %283

282:                                              ; preds = %277
  br label %114

283:                                              ; preds = %277
  %284 = load i32, i32* %18, align 4
  %285 = add nsw i32 %284, 1
  store i32 %285, i32* %18, align 4
  br label %286

286:                                              ; preds = %283, %223
  %287 = load %struct.ocfs2_dir_entry*, %struct.ocfs2_dir_entry** %21, align 8
  %288 = getelementptr inbounds %struct.ocfs2_dir_entry, %struct.ocfs2_dir_entry* %287, i32 0, i32 1
  %289 = load i32, i32* %288, align 8
  %290 = call i64 @le16_to_cpu(i32 %289)
  %291 = load i32*, i32** %9, align 8
  %292 = load i32, i32* %291, align 4
  %293 = sext i32 %292 to i64
  %294 = add nsw i64 %293, %290
  %295 = trunc i64 %294 to i32
  store i32 %295, i32* %291, align 4
  br label %180

296:                                              ; preds = %276, %196
  store i64 0, i64* %14, align 8
  %297 = load %struct.buffer_head*, %struct.buffer_head** %19, align 8
  %298 = call i32 @brelse(%struct.buffer_head* %297)
  store %struct.buffer_head* null, %struct.buffer_head** %19, align 8
  br label %37

299:                                              ; preds = %49
  store i32 0, i32* %18, align 4
  br label %300

300:                                              ; preds = %299, %211
  %301 = load i32, i32* %18, align 4
  ret i32 %301
}

declare dso_local i32 @i_size_read(%struct.inode*) #1

declare dso_local i64 @ocfs2_read_dir_block(%struct.inode*, i64, %struct.buffer_head**, i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i64 @OCFS2_DIR_REC_LEN(i32) #1

declare dso_local i32 @ocfs2_check_dir_entry(%struct.inode*, %struct.ocfs2_dir_entry*, %struct.buffer_head*, i64) #1

declare dso_local i64 @le64_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
