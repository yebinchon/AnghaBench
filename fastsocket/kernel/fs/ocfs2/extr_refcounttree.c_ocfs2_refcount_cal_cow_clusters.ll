; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_refcounttree.c_ocfs2_refcount_cal_cow_clusters.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_refcounttree.c_ocfs2_refcount_cal_cow_clusters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32 }
%struct.ocfs2_extent_list = type { i64, %struct.ocfs2_extent_rec*, i64 }
%struct.ocfs2_extent_rec = type { i32, i32, i64 }
%struct.buffer_head = type { i64, i64 }
%struct.ocfs2_extent_block = type { %struct.ocfs2_extent_list, i64 }

@.str = private unnamed_addr constant [54 x i8] c"Inode %lu has non zero tree depth in leaf block %llu\0A\00", align 1
@EROFS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"Inode %lu has empty record in index %d\0A\00", align 1
@OCFS2_EXT_REFCOUNTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.ocfs2_extent_list*, i32, i32, i32, i32*, i32*)* @ocfs2_refcount_cal_cow_clusters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_refcount_cal_cow_clusters(%struct.inode* %0, %struct.ocfs2_extent_list* %1, i32 %2, i32 %3, i32 %4, i32* %5, i32* %6) #0 {
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.ocfs2_extent_list*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.buffer_head*, align 8
  %19 = alloca %struct.ocfs2_extent_block*, align 8
  %20 = alloca %struct.ocfs2_extent_rec*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %8, align 8
  store %struct.ocfs2_extent_list* %1, %struct.ocfs2_extent_list** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  store i32* %6, i32** %14, align 8
  store i32 0, i32* %15, align 4
  %25 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %9, align 8
  %26 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @le16_to_cpu(i64 %27)
  store i32 %28, i32* %16, align 4
  store %struct.buffer_head* null, %struct.buffer_head** %18, align 8
  store %struct.ocfs2_extent_block* null, %struct.ocfs2_extent_block** %19, align 8
  store i32 0, i32* %22, align 4
  %29 = load %struct.inode*, %struct.inode** %8, align 8
  %30 = getelementptr inbounds %struct.inode, %struct.inode* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @ocfs2_cow_contig_clusters(i32 %31)
  store i32 %32, i32* %23, align 4
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* %11, align 4
  %35 = add i32 %33, %34
  %36 = load i32, i32* %12, align 4
  %37 = icmp ugt i32 %35, %36
  %38 = zext i1 %37 to i32
  %39 = call i32 @BUG_ON(i32 %38)
  %40 = load i32, i32* %16, align 4
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %42, label %78

42:                                               ; preds = %7
  %43 = load %struct.inode*, %struct.inode** %8, align 8
  %44 = call i32 @INODE_CACHE(%struct.inode* %43)
  %45 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %9, align 8
  %46 = load i32, i32* %10, align 4
  %47 = call i32 @ocfs2_find_leaf(i32 %44, %struct.ocfs2_extent_list* %45, i32 %46, %struct.buffer_head** %18)
  store i32 %47, i32* %15, align 4
  %48 = load i32, i32* %15, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %42
  %51 = load i32, i32* %15, align 4
  %52 = call i32 @mlog_errno(i32 %51)
  br label %385

53:                                               ; preds = %42
  %54 = load %struct.buffer_head*, %struct.buffer_head** %18, align 8
  %55 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = inttoptr i64 %56 to %struct.ocfs2_extent_block*
  store %struct.ocfs2_extent_block* %57, %struct.ocfs2_extent_block** %19, align 8
  %58 = load %struct.ocfs2_extent_block*, %struct.ocfs2_extent_block** %19, align 8
  %59 = getelementptr inbounds %struct.ocfs2_extent_block, %struct.ocfs2_extent_block* %58, i32 0, i32 0
  store %struct.ocfs2_extent_list* %59, %struct.ocfs2_extent_list** %9, align 8
  %60 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %9, align 8
  %61 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %77

64:                                               ; preds = %53
  %65 = load %struct.inode*, %struct.inode** %8, align 8
  %66 = getelementptr inbounds %struct.inode, %struct.inode* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.inode*, %struct.inode** %8, align 8
  %69 = getelementptr inbounds %struct.inode, %struct.inode* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.buffer_head*, %struct.buffer_head** %18, align 8
  %72 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = call i32 @ocfs2_error(i32 %67, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %70, i64 %73)
  %75 = load i32, i32* @EROFS, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %15, align 4
  br label %385

77:                                               ; preds = %53
  br label %78

78:                                               ; preds = %77, %7
  %79 = load i32*, i32** %14, align 8
  store i32 0, i32* %79, align 4
  store i32 0, i32* %17, align 4
  br label %80

80:                                               ; preds = %381, %78
  %81 = load i32, i32* %17, align 4
  %82 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %9, align 8
  %83 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = call i32 @le16_to_cpu(i64 %84)
  %86 = icmp slt i32 %81, %85
  br i1 %86, label %87, label %384

87:                                               ; preds = %80
  %88 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %9, align 8
  %89 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %88, i32 0, i32 1
  %90 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %89, align 8
  %91 = load i32, i32* %17, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %90, i64 %92
  store %struct.ocfs2_extent_rec* %93, %struct.ocfs2_extent_rec** %20, align 8
  %94 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %20, align 8
  %95 = call i64 @ocfs2_is_empty_extent(%struct.ocfs2_extent_rec* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %106

97:                                               ; preds = %87
  %98 = load i32, i32* %17, align 4
  %99 = icmp ne i32 %98, 0
  %100 = zext i1 %99 to i32
  %101 = load %struct.inode*, %struct.inode** %8, align 8
  %102 = getelementptr inbounds %struct.inode, %struct.inode* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* %17, align 4
  %105 = call i32 @mlog_bug_on_msg(i32 %100, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %103, i32 %104)
  br label %381

106:                                              ; preds = %87
  %107 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %20, align 8
  %108 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @le32_to_cpu(i32 %109)
  %111 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %20, align 8
  %112 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %111, i32 0, i32 2
  %113 = load i64, i64* %112, align 8
  %114 = call i32 @le16_to_cpu(i64 %113)
  %115 = add i32 %110, %114
  %116 = load i32, i32* %10, align 4
  %117 = icmp ule i32 %115, %116
  br i1 %117, label %118, label %119

118:                                              ; preds = %106
  br label %381

119:                                              ; preds = %106
  %120 = load i32*, i32** %14, align 8
  %121 = load i32, i32* %120, align 4
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %138

123:                                              ; preds = %119
  %124 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %20, align 8
  %125 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = load i32, i32* @OCFS2_EXT_REFCOUNTED, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  %130 = xor i1 %129, true
  %131 = zext i1 %130 to i32
  %132 = call i32 @BUG_ON(i32 %131)
  %133 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %20, align 8
  %134 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @le32_to_cpu(i32 %135)
  %137 = load i32*, i32** %13, align 8
  store i32 %136, i32* %137, align 4
  br label %138

138:                                              ; preds = %123, %119
  %139 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %20, align 8
  %140 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = load i32, i32* @OCFS2_EXT_REFCOUNTED, align 4
  %143 = and i32 %141, %142
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %163

145:                                              ; preds = %138
  %146 = load i32*, i32** %14, align 8
  %147 = load i32, i32* %146, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %156

149:                                              ; preds = %145
  %150 = load i32, i32* %22, align 4
  %151 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %20, align 8
  %152 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @le32_to_cpu(i32 %153)
  %155 = icmp ne i32 %150, %154
  br i1 %155, label %163, label %156

156:                                              ; preds = %149, %145
  %157 = load i32, i32* %12, align 4
  %158 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %20, align 8
  %159 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = call i32 @le32_to_cpu(i32 %160)
  %162 = icmp ule i32 %157, %161
  br i1 %162, label %163, label %164

163:                                              ; preds = %156, %149, %138
  br label %384

164:                                              ; preds = %156
  %165 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %20, align 8
  %166 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %165, i32 0, i32 2
  %167 = load i64, i64* %166, align 8
  %168 = call i32 @le16_to_cpu(i64 %167)
  store i32 %168, i32* %24, align 4
  %169 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %20, align 8
  %170 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = call i32 @le32_to_cpu(i32 %171)
  %173 = load i32, i32* %24, align 4
  %174 = add i32 %172, %173
  store i32 %174, i32* %22, align 4
  %175 = load i32, i32* %22, align 4
  %176 = load i32, i32* %12, align 4
  %177 = icmp ugt i32 %175, %176
  br i1 %177, label %178, label %186

178:                                              ; preds = %164
  %179 = load i32, i32* %12, align 4
  store i32 %179, i32* %22, align 4
  %180 = load i32, i32* %22, align 4
  %181 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %20, align 8
  %182 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = call i32 @le32_to_cpu(i32 %183)
  %185 = sub i32 %180, %184
  store i32 %185, i32* %24, align 4
  br label %186

186:                                              ; preds = %178, %164
  %187 = load i32*, i32** %14, align 8
  %188 = load i32, i32* %187, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %192, label %190

190:                                              ; preds = %186
  %191 = load i32, i32* %11, align 4
  store i32 %191, i32* %21, align 4
  br label %202

192:                                              ; preds = %186
  %193 = load i32, i32* %10, align 4
  %194 = load i32, i32* %11, align 4
  %195 = add i32 %193, %194
  %196 = load i32*, i32** %13, align 8
  %197 = load i32, i32* %196, align 4
  %198 = load i32*, i32** %14, align 8
  %199 = load i32, i32* %198, align 4
  %200 = add i32 %197, %199
  %201 = sub i32 %195, %200
  store i32 %201, i32* %21, align 4
  br label %202

202:                                              ; preds = %192, %190
  %203 = load i32, i32* %21, align 4
  %204 = load i32, i32* %23, align 4
  %205 = icmp ult i32 %203, %204
  br i1 %205, label %206, label %208

206:                                              ; preds = %202
  %207 = load i32, i32* %23, align 4
  store i32 %207, i32* %21, align 4
  br label %208

208:                                              ; preds = %206, %202
  %209 = load i32, i32* %24, align 4
  %210 = load i32, i32* %23, align 4
  %211 = icmp sle i32 %209, %210
  br i1 %211, label %212, label %217

212:                                              ; preds = %208
  %213 = load i32, i32* %24, align 4
  %214 = load i32*, i32** %14, align 8
  %215 = load i32, i32* %214, align 4
  %216 = add i32 %215, %213
  store i32 %216, i32* %214, align 4
  br label %331

217:                                              ; preds = %208
  %218 = load i32*, i32** %14, align 8
  %219 = load i32, i32* %218, align 4
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %226, label %221

221:                                              ; preds = %217
  %222 = load i32*, i32** %13, align 8
  %223 = load i32, i32* %222, align 4
  %224 = load i32, i32* %10, align 4
  %225 = icmp eq i32 %223, %224
  br i1 %225, label %226, label %246

226:                                              ; preds = %221, %217
  %227 = load %struct.inode*, %struct.inode** %8, align 8
  %228 = getelementptr inbounds %struct.inode, %struct.inode* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 4
  %230 = load i32, i32* %21, align 4
  %231 = call i32 @ocfs2_cow_align_length(i32 %229, i32 %230)
  store i32 %231, i32* %21, align 4
  %232 = load i32, i32* %24, align 4
  %233 = load i32, i32* %21, align 4
  %234 = icmp ult i32 %232, %233
  br i1 %234, label %235, label %240

235:                                              ; preds = %226
  %236 = load i32, i32* %24, align 4
  %237 = load i32*, i32** %14, align 8
  %238 = load i32, i32* %237, align 4
  %239 = add i32 %238, %236
  store i32 %239, i32* %237, align 4
  br label %245

240:                                              ; preds = %226
  %241 = load i32, i32* %21, align 4
  %242 = load i32*, i32** %14, align 8
  %243 = load i32, i32* %242, align 4
  %244 = add i32 %243, %241
  store i32 %244, i32* %242, align 4
  br label %245

245:                                              ; preds = %240, %235
  br label %330

246:                                              ; preds = %221
  %247 = load i32*, i32** %13, align 8
  %248 = load i32, i32* %247, align 4
  %249 = load i32, i32* %23, align 4
  %250 = add i32 %248, %249
  %251 = load i32, i32* %10, align 4
  %252 = load i32, i32* %11, align 4
  %253 = add i32 %251, %252
  %254 = icmp uge i32 %250, %253
  br i1 %254, label %255, label %258

255:                                              ; preds = %246
  %256 = load i32, i32* %23, align 4
  %257 = load i32*, i32** %14, align 8
  store i32 %256, i32* %257, align 4
  br label %329

258:                                              ; preds = %246
  %259 = load i32, i32* %22, align 4
  %260 = load i32, i32* %10, align 4
  %261 = sub i32 %259, %260
  %262 = load i32, i32* %23, align 4
  %263 = icmp ule i32 %261, %262
  br i1 %263, label %264, label %271

264:                                              ; preds = %258
  %265 = load i32, i32* %22, align 4
  %266 = load i32, i32* %23, align 4
  %267 = sub i32 %265, %266
  %268 = load i32*, i32** %13, align 8
  store i32 %267, i32* %268, align 4
  %269 = load i32, i32* %23, align 4
  %270 = load i32*, i32** %14, align 8
  store i32 %269, i32* %270, align 4
  br label %328

271:                                              ; preds = %258
  %272 = load i32, i32* %22, align 4
  %273 = load i32, i32* %10, align 4
  %274 = sub i32 %272, %273
  %275 = load i32, i32* %21, align 4
  %276 = icmp ule i32 %274, %275
  br i1 %276, label %277, label %291

277:                                              ; preds = %271
  %278 = load %struct.inode*, %struct.inode** %8, align 8
  %279 = getelementptr inbounds %struct.inode, %struct.inode* %278, i32 0, i32 0
  %280 = load i32, i32* %279, align 4
  %281 = load i32*, i32** %13, align 8
  %282 = load i32, i32* %281, align 4
  %283 = load i32, i32* %10, align 4
  %284 = call i32 @ocfs2_cow_align_start(i32 %280, i32 %282, i32 %283)
  %285 = load i32*, i32** %13, align 8
  store i32 %284, i32* %285, align 4
  %286 = load i32, i32* %22, align 4
  %287 = load i32*, i32** %13, align 8
  %288 = load i32, i32* %287, align 4
  %289 = sub i32 %286, %288
  %290 = load i32*, i32** %14, align 8
  store i32 %289, i32* %290, align 4
  br label %327

291:                                              ; preds = %271
  %292 = load %struct.inode*, %struct.inode** %8, align 8
  %293 = getelementptr inbounds %struct.inode, %struct.inode* %292, i32 0, i32 0
  %294 = load i32, i32* %293, align 4
  %295 = load i32*, i32** %13, align 8
  %296 = load i32, i32* %295, align 4
  %297 = load i32, i32* %10, align 4
  %298 = call i32 @ocfs2_cow_align_start(i32 %294, i32 %296, i32 %297)
  %299 = load i32*, i32** %13, align 8
  store i32 %298, i32* %299, align 4
  %300 = load i32, i32* %10, align 4
  %301 = load i32, i32* %11, align 4
  %302 = add i32 %300, %301
  %303 = load i32*, i32** %13, align 8
  %304 = load i32, i32* %303, align 4
  %305 = sub i32 %302, %304
  store i32 %305, i32* %21, align 4
  %306 = load %struct.inode*, %struct.inode** %8, align 8
  %307 = getelementptr inbounds %struct.inode, %struct.inode* %306, i32 0, i32 0
  %308 = load i32, i32* %307, align 4
  %309 = load i32, i32* %21, align 4
  %310 = call i32 @ocfs2_cow_align_length(i32 %308, i32 %309)
  store i32 %310, i32* %21, align 4
  %311 = load i32*, i32** %13, align 8
  %312 = load i32, i32* %311, align 4
  %313 = load i32, i32* %21, align 4
  %314 = add i32 %312, %313
  %315 = load i32, i32* %22, align 4
  %316 = icmp ule i32 %314, %315
  br i1 %316, label %317, label %320

317:                                              ; preds = %291
  %318 = load i32, i32* %21, align 4
  %319 = load i32*, i32** %14, align 8
  store i32 %318, i32* %319, align 4
  br label %326

320:                                              ; preds = %291
  %321 = load i32, i32* %22, align 4
  %322 = load i32*, i32** %13, align 8
  %323 = load i32, i32* %322, align 4
  %324 = sub i32 %321, %323
  %325 = load i32*, i32** %14, align 8
  store i32 %324, i32* %325, align 4
  br label %326

326:                                              ; preds = %320, %317
  br label %327

327:                                              ; preds = %326, %277
  br label %328

328:                                              ; preds = %327, %264
  br label %329

329:                                              ; preds = %328, %255
  br label %330

330:                                              ; preds = %329, %245
  br label %331

331:                                              ; preds = %330, %212
  %332 = load i32*, i32** %13, align 8
  %333 = load i32, i32* %332, align 4
  %334 = load i32*, i32** %14, align 8
  %335 = load i32, i32* %334, align 4
  %336 = add i32 %333, %335
  %337 = load i32, i32* %10, align 4
  %338 = load i32, i32* %11, align 4
  %339 = add i32 %337, %338
  %340 = icmp uge i32 %336, %339
  br i1 %340, label %341, label %342

341:                                              ; preds = %331
  br label %384

342:                                              ; preds = %331
  %343 = load i32, i32* %17, align 4
  %344 = add nsw i32 %343, 1
  %345 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %9, align 8
  %346 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %345, i32 0, i32 0
  %347 = load i64, i64* %346, align 8
  %348 = call i32 @le16_to_cpu(i64 %347)
  %349 = icmp eq i32 %344, %348
  br i1 %349, label %350, label %380

350:                                              ; preds = %342
  %351 = load %struct.ocfs2_extent_block*, %struct.ocfs2_extent_block** %19, align 8
  %352 = icmp ne %struct.ocfs2_extent_block* %351, null
  br i1 %352, label %353, label %380

353:                                              ; preds = %350
  %354 = load %struct.ocfs2_extent_block*, %struct.ocfs2_extent_block** %19, align 8
  %355 = getelementptr inbounds %struct.ocfs2_extent_block, %struct.ocfs2_extent_block* %354, i32 0, i32 1
  %356 = load i64, i64* %355, align 8
  %357 = icmp ne i64 %356, 0
  br i1 %357, label %358, label %380

358:                                              ; preds = %353
  %359 = load %struct.buffer_head*, %struct.buffer_head** %18, align 8
  %360 = call i32 @brelse(%struct.buffer_head* %359)
  store %struct.buffer_head* null, %struct.buffer_head** %18, align 8
  %361 = load %struct.inode*, %struct.inode** %8, align 8
  %362 = call i32 @INODE_CACHE(%struct.inode* %361)
  %363 = load %struct.ocfs2_extent_block*, %struct.ocfs2_extent_block** %19, align 8
  %364 = getelementptr inbounds %struct.ocfs2_extent_block, %struct.ocfs2_extent_block* %363, i32 0, i32 1
  %365 = load i64, i64* %364, align 8
  %366 = call i32 @le64_to_cpu(i64 %365)
  %367 = call i32 @ocfs2_read_extent_block(i32 %362, i32 %366, %struct.buffer_head** %18)
  store i32 %367, i32* %15, align 4
  %368 = load i32, i32* %15, align 4
  %369 = icmp ne i32 %368, 0
  br i1 %369, label %370, label %373

370:                                              ; preds = %358
  %371 = load i32, i32* %15, align 4
  %372 = call i32 @mlog_errno(i32 %371)
  br label %385

373:                                              ; preds = %358
  %374 = load %struct.buffer_head*, %struct.buffer_head** %18, align 8
  %375 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %374, i32 0, i32 0
  %376 = load i64, i64* %375, align 8
  %377 = inttoptr i64 %376 to %struct.ocfs2_extent_block*
  store %struct.ocfs2_extent_block* %377, %struct.ocfs2_extent_block** %19, align 8
  %378 = load %struct.ocfs2_extent_block*, %struct.ocfs2_extent_block** %19, align 8
  %379 = getelementptr inbounds %struct.ocfs2_extent_block, %struct.ocfs2_extent_block* %378, i32 0, i32 0
  store %struct.ocfs2_extent_list* %379, %struct.ocfs2_extent_list** %9, align 8
  store i32 -1, i32* %17, align 4
  br label %380

380:                                              ; preds = %373, %353, %350, %342
  br label %381

381:                                              ; preds = %380, %118, %97
  %382 = load i32, i32* %17, align 4
  %383 = add nsw i32 %382, 1
  store i32 %383, i32* %17, align 4
  br label %80

384:                                              ; preds = %341, %163, %80
  br label %385

385:                                              ; preds = %384, %370, %64, %50
  %386 = load %struct.buffer_head*, %struct.buffer_head** %18, align 8
  %387 = call i32 @brelse(%struct.buffer_head* %386)
  %388 = load i32, i32* %15, align 4
  ret i32 %388
}

declare dso_local i32 @le16_to_cpu(i64) #1

declare dso_local i32 @ocfs2_cow_contig_clusters(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @ocfs2_find_leaf(i32, %struct.ocfs2_extent_list*, i32, %struct.buffer_head**) #1

declare dso_local i32 @INODE_CACHE(%struct.inode*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_error(i32, i8*, i32, i64) #1

declare dso_local i64 @ocfs2_is_empty_extent(%struct.ocfs2_extent_rec*) #1

declare dso_local i32 @mlog_bug_on_msg(i32, i8*, i32, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @ocfs2_cow_align_length(i32, i32) #1

declare dso_local i32 @ocfs2_cow_align_start(i32, i32, i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @ocfs2_read_extent_block(i32, i32, %struct.buffer_head**) #1

declare dso_local i32 @le64_to_cpu(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
