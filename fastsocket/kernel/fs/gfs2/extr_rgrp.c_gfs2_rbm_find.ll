; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_rgrp.c_gfs2_rbm_find.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_rgrp.c_gfs2_rbm_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_rbm = type { i64, %struct.TYPE_2__*, %struct.gfs2_bitmap* }
%struct.TYPE_2__ = type { i32, i64, %struct.gfs2_bitmap* }
%struct.gfs2_bitmap = type { i32, i32, i32*, %struct.buffer_head* }
%struct.buffer_head = type { i32* }
%struct.gfs2_inode = type { i32 }
%struct.gfs2_alloc_parms = type { i32 }
%struct.gfs2_extent = type { i64, %struct.gfs2_rbm }

@GBF_FULL = common dso_local global i32 0, align 4
@GFS2_BLKST_FREE = common dso_local global i32 0, align 4
@GFS2_BLKST_UNLINKED = common dso_local global i32 0, align 4
@BFITNOENT = common dso_local global i64 0, align 8
@E2BIG = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gfs2_rbm*, i32, i64*, %struct.gfs2_inode*, i32, %struct.gfs2_alloc_parms*)* @gfs2_rbm_find to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfs2_rbm_find(%struct.gfs2_rbm* %0, i32 %1, i64* %2, %struct.gfs2_inode* %3, i32 %4, %struct.gfs2_alloc_parms* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.gfs2_rbm*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64*, align 8
  %11 = alloca %struct.gfs2_inode*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.gfs2_alloc_parms*, align 8
  %14 = alloca %struct.buffer_head*, align 8
  %15 = alloca %struct.gfs2_bitmap*, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.gfs2_bitmap*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca %struct.gfs2_extent, align 8
  store %struct.gfs2_rbm* %0, %struct.gfs2_rbm** %8, align 8
  store i32 %1, i32* %9, align 4
  store i64* %2, i64** %10, align 8
  store %struct.gfs2_inode* %3, %struct.gfs2_inode** %11, align 8
  store i32 %4, i32* %12, align 4
  store %struct.gfs2_alloc_parms* %5, %struct.gfs2_alloc_parms** %13, align 8
  %26 = load %struct.gfs2_rbm*, %struct.gfs2_rbm** %8, align 8
  %27 = getelementptr inbounds %struct.gfs2_rbm, %struct.gfs2_rbm* %26, i32 0, i32 2
  %28 = load %struct.gfs2_bitmap*, %struct.gfs2_bitmap** %27, align 8
  store %struct.gfs2_bitmap* %28, %struct.gfs2_bitmap** %17, align 8
  %29 = load %struct.gfs2_rbm*, %struct.gfs2_rbm** %8, align 8
  %30 = getelementptr inbounds %struct.gfs2_rbm, %struct.gfs2_rbm* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %18, align 8
  store i32 0, i32* %22, align 4
  %32 = load %struct.gfs2_rbm*, %struct.gfs2_rbm** %8, align 8
  %33 = getelementptr inbounds %struct.gfs2_rbm, %struct.gfs2_rbm* %32, i32 0, i32 1
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  store i32 %36, i32* %23, align 4
  %37 = bitcast %struct.gfs2_extent* %25 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %37, i8 0, i64 32, i1 false)
  %38 = getelementptr inbounds %struct.gfs2_extent, %struct.gfs2_extent* %25, i32 0, i32 1
  %39 = getelementptr inbounds %struct.gfs2_rbm, %struct.gfs2_rbm* %38, i32 0, i32 1
  %40 = load %struct.gfs2_rbm*, %struct.gfs2_rbm** %8, align 8
  %41 = getelementptr inbounds %struct.gfs2_rbm, %struct.gfs2_rbm* %40, i32 0, i32 1
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  store %struct.TYPE_2__* %42, %struct.TYPE_2__** %39, align 8
  %43 = load %struct.gfs2_rbm*, %struct.gfs2_rbm** %8, align 8
  %44 = getelementptr inbounds %struct.gfs2_rbm, %struct.gfs2_rbm* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %6
  %48 = load i32, i32* %23, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %23, align 4
  br label %50

50:                                               ; preds = %47, %6
  br label %51

51:                                               ; preds = %50, %256
  %52 = load i32, i32* @GBF_FULL, align 4
  %53 = load %struct.gfs2_rbm*, %struct.gfs2_rbm** %8, align 8
  %54 = getelementptr inbounds %struct.gfs2_rbm, %struct.gfs2_rbm* %53, i32 0, i32 2
  %55 = load %struct.gfs2_bitmap*, %struct.gfs2_bitmap** %54, align 8
  %56 = getelementptr inbounds %struct.gfs2_bitmap, %struct.gfs2_bitmap* %55, i32 0, i32 1
  %57 = call i64 @test_bit(i32 %52, i32* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %51
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* @GFS2_BLKST_FREE, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %59
  br label %204

64:                                               ; preds = %59, %51
  %65 = load %struct.gfs2_rbm*, %struct.gfs2_rbm** %8, align 8
  %66 = getelementptr inbounds %struct.gfs2_rbm, %struct.gfs2_rbm* %65, i32 0, i32 2
  %67 = load %struct.gfs2_bitmap*, %struct.gfs2_bitmap** %66, align 8
  %68 = getelementptr inbounds %struct.gfs2_bitmap, %struct.gfs2_bitmap* %67, i32 0, i32 3
  %69 = load %struct.buffer_head*, %struct.buffer_head** %68, align 8
  store %struct.buffer_head* %69, %struct.buffer_head** %14, align 8
  %70 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %71 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = load %struct.gfs2_rbm*, %struct.gfs2_rbm** %8, align 8
  %74 = getelementptr inbounds %struct.gfs2_rbm, %struct.gfs2_rbm* %73, i32 0, i32 2
  %75 = load %struct.gfs2_bitmap*, %struct.gfs2_bitmap** %74, align 8
  %76 = getelementptr inbounds %struct.gfs2_bitmap, %struct.gfs2_bitmap* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %72, i64 %78
  store i32* %79, i32** %20, align 8
  %80 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %81 = call i32 @buffer_uptodate(%struct.buffer_head* %80)
  %82 = icmp ne i32 %81, 0
  %83 = xor i1 %82, true
  %84 = zext i1 %83 to i32
  %85 = call i32 @WARN_ON(i32 %84)
  %86 = load i32, i32* %9, align 4
  %87 = load i32, i32* @GFS2_BLKST_UNLINKED, align 4
  %88 = icmp ne i32 %86, %87
  br i1 %88, label %89, label %109

89:                                               ; preds = %64
  %90 = load %struct.gfs2_rbm*, %struct.gfs2_rbm** %8, align 8
  %91 = getelementptr inbounds %struct.gfs2_rbm, %struct.gfs2_rbm* %90, i32 0, i32 2
  %92 = load %struct.gfs2_bitmap*, %struct.gfs2_bitmap** %91, align 8
  %93 = getelementptr inbounds %struct.gfs2_bitmap, %struct.gfs2_bitmap* %92, i32 0, i32 2
  %94 = load i32*, i32** %93, align 8
  %95 = icmp ne i32* %94, null
  br i1 %95, label %96, label %109

96:                                               ; preds = %89
  %97 = load %struct.gfs2_rbm*, %struct.gfs2_rbm** %8, align 8
  %98 = getelementptr inbounds %struct.gfs2_rbm, %struct.gfs2_rbm* %97, i32 0, i32 2
  %99 = load %struct.gfs2_bitmap*, %struct.gfs2_bitmap** %98, align 8
  %100 = getelementptr inbounds %struct.gfs2_bitmap, %struct.gfs2_bitmap* %99, i32 0, i32 2
  %101 = load i32*, i32** %100, align 8
  %102 = load %struct.gfs2_rbm*, %struct.gfs2_rbm** %8, align 8
  %103 = getelementptr inbounds %struct.gfs2_rbm, %struct.gfs2_rbm* %102, i32 0, i32 2
  %104 = load %struct.gfs2_bitmap*, %struct.gfs2_bitmap** %103, align 8
  %105 = getelementptr inbounds %struct.gfs2_bitmap, %struct.gfs2_bitmap* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %101, i64 %107
  store i32* %108, i32** %20, align 8
  br label %109

109:                                              ; preds = %96, %89, %64
  %110 = load %struct.gfs2_rbm*, %struct.gfs2_rbm** %8, align 8
  %111 = getelementptr inbounds %struct.gfs2_rbm, %struct.gfs2_rbm* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  store i64 %112, i64* %16, align 8
  %113 = load i32*, i32** %20, align 8
  %114 = load %struct.gfs2_rbm*, %struct.gfs2_rbm** %8, align 8
  %115 = getelementptr inbounds %struct.gfs2_rbm, %struct.gfs2_rbm* %114, i32 0, i32 2
  %116 = load %struct.gfs2_bitmap*, %struct.gfs2_bitmap** %115, align 8
  %117 = load %struct.gfs2_rbm*, %struct.gfs2_rbm** %8, align 8
  %118 = getelementptr inbounds %struct.gfs2_rbm, %struct.gfs2_rbm* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load i32, i32* %9, align 4
  %121 = call i64 @gfs2_bitfit(i32* %113, %struct.gfs2_bitmap* %116, i64 %119, i32 %120)
  store i64 %121, i64* %19, align 8
  %122 = load i64, i64* %19, align 8
  %123 = load i64, i64* @BFITNOENT, align 8
  %124 = icmp eq i64 %122, %123
  br i1 %124, label %125, label %126

125:                                              ; preds = %109
  br label %189

126:                                              ; preds = %109
  %127 = load i64, i64* %19, align 8
  %128 = load %struct.gfs2_rbm*, %struct.gfs2_rbm** %8, align 8
  %129 = getelementptr inbounds %struct.gfs2_rbm, %struct.gfs2_rbm* %128, i32 0, i32 0
  store i64 %127, i64* %129, align 8
  %130 = load %struct.gfs2_inode*, %struct.gfs2_inode** %11, align 8
  %131 = icmp eq %struct.gfs2_inode* %130, null
  br i1 %131, label %132, label %133

132:                                              ; preds = %126
  store i32 0, i32* %7, align 4
  br label %309

133:                                              ; preds = %126
  %134 = load %struct.gfs2_rbm*, %struct.gfs2_rbm** %8, align 8
  %135 = getelementptr inbounds %struct.gfs2_rbm, %struct.gfs2_rbm* %134, i32 0, i32 2
  %136 = load %struct.gfs2_bitmap*, %struct.gfs2_bitmap** %135, align 8
  store %struct.gfs2_bitmap* %136, %struct.gfs2_bitmap** %15, align 8
  %137 = load %struct.gfs2_rbm*, %struct.gfs2_rbm** %8, align 8
  %138 = load %struct.gfs2_inode*, %struct.gfs2_inode** %11, align 8
  %139 = load i64*, i64** %10, align 8
  %140 = icmp ne i64* %139, null
  br i1 %140, label %141, label %144

141:                                              ; preds = %133
  %142 = load i64*, i64** %10, align 8
  %143 = load i64, i64* %142, align 8
  br label %145

144:                                              ; preds = %133
  br label %145

145:                                              ; preds = %144, %141
  %146 = phi i64 [ %143, %141 ], [ 0, %144 ]
  %147 = call i32 @gfs2_reservation_check_and_update(%struct.gfs2_rbm* %137, %struct.gfs2_inode* %138, i64 %146, %struct.gfs2_extent* %25)
  store i32 %147, i32* %24, align 4
  %148 = load i32, i32* %24, align 4
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %150, label %151

150:                                              ; preds = %145
  store i32 0, i32* %7, align 4
  br label %309

151:                                              ; preds = %145
  %152 = load i32, i32* %24, align 4
  %153 = icmp sgt i32 %152, 0
  br i1 %153, label %154, label %167

154:                                              ; preds = %151
  %155 = load %struct.gfs2_rbm*, %struct.gfs2_rbm** %8, align 8
  %156 = getelementptr inbounds %struct.gfs2_rbm, %struct.gfs2_rbm* %155, i32 0, i32 2
  %157 = load %struct.gfs2_bitmap*, %struct.gfs2_bitmap** %156, align 8
  %158 = load %struct.gfs2_bitmap*, %struct.gfs2_bitmap** %15, align 8
  %159 = ptrtoint %struct.gfs2_bitmap* %157 to i64
  %160 = ptrtoint %struct.gfs2_bitmap* %158 to i64
  %161 = sub i64 %159, %160
  %162 = sdiv exact i64 %161, 24
  %163 = load i32, i32* %22, align 4
  %164 = sext i32 %163 to i64
  %165 = add nsw i64 %164, %162
  %166 = trunc i64 %165 to i32
  store i32 %166, i32* %22, align 4
  br label %251

167:                                              ; preds = %151
  %168 = load i32, i32* %24, align 4
  %169 = load i32, i32* @E2BIG, align 4
  %170 = sub nsw i32 0, %169
  %171 = icmp eq i32 %168, %170
  br i1 %171, label %172, label %187

172:                                              ; preds = %167
  store i32 0, i32* %21, align 4
  %173 = load %struct.gfs2_rbm*, %struct.gfs2_rbm** %8, align 8
  %174 = getelementptr inbounds %struct.gfs2_rbm, %struct.gfs2_rbm* %173, i32 0, i32 0
  store i64 0, i64* %174, align 8
  %175 = load %struct.gfs2_rbm*, %struct.gfs2_rbm** %8, align 8
  %176 = getelementptr inbounds %struct.gfs2_rbm, %struct.gfs2_rbm* %175, i32 0, i32 2
  %177 = load %struct.gfs2_bitmap*, %struct.gfs2_bitmap** %176, align 8
  %178 = load %struct.gfs2_bitmap*, %struct.gfs2_bitmap** %15, align 8
  %179 = ptrtoint %struct.gfs2_bitmap* %177 to i64
  %180 = ptrtoint %struct.gfs2_bitmap* %178 to i64
  %181 = sub i64 %179, %180
  %182 = sdiv exact i64 %181, 24
  %183 = load i32, i32* %22, align 4
  %184 = sext i32 %183 to i64
  %185 = add nsw i64 %184, %182
  %186 = trunc i64 %185 to i32
  store i32 %186, i32* %22, align 4
  br label %231

187:                                              ; preds = %167
  %188 = load i32, i32* %24, align 4
  store i32 %188, i32* %7, align 4
  br label %309

189:                                              ; preds = %125
  %190 = load i32, i32* %9, align 4
  %191 = load i32, i32* @GFS2_BLKST_FREE, align 4
  %192 = icmp eq i32 %190, %191
  br i1 %192, label %193, label %203

193:                                              ; preds = %189
  %194 = load i64, i64* %16, align 8
  %195 = icmp eq i64 %194, 0
  br i1 %195, label %196, label %203

196:                                              ; preds = %193
  %197 = load i32, i32* @GBF_FULL, align 4
  %198 = load %struct.gfs2_rbm*, %struct.gfs2_rbm** %8, align 8
  %199 = getelementptr inbounds %struct.gfs2_rbm, %struct.gfs2_rbm* %198, i32 0, i32 2
  %200 = load %struct.gfs2_bitmap*, %struct.gfs2_bitmap** %199, align 8
  %201 = getelementptr inbounds %struct.gfs2_bitmap, %struct.gfs2_bitmap* %200, i32 0, i32 1
  %202 = call i32 @set_bit(i32 %197, i32* %201)
  br label %203

203:                                              ; preds = %196, %193, %189
  br label %204

204:                                              ; preds = %203, %63
  %205 = load %struct.gfs2_rbm*, %struct.gfs2_rbm** %8, align 8
  %206 = getelementptr inbounds %struct.gfs2_rbm, %struct.gfs2_rbm* %205, i32 0, i32 0
  store i64 0, i64* %206, align 8
  %207 = load %struct.gfs2_rbm*, %struct.gfs2_rbm** %8, align 8
  %208 = getelementptr inbounds %struct.gfs2_rbm, %struct.gfs2_rbm* %207, i32 0, i32 2
  %209 = load %struct.gfs2_bitmap*, %struct.gfs2_bitmap** %208, align 8
  %210 = load %struct.gfs2_rbm*, %struct.gfs2_rbm** %8, align 8
  %211 = getelementptr inbounds %struct.gfs2_rbm, %struct.gfs2_rbm* %210, i32 0, i32 1
  %212 = load %struct.TYPE_2__*, %struct.TYPE_2__** %211, align 8
  %213 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %212, i32 0, i32 2
  %214 = load %struct.gfs2_bitmap*, %struct.gfs2_bitmap** %213, align 8
  %215 = ptrtoint %struct.gfs2_bitmap* %209 to i64
  %216 = ptrtoint %struct.gfs2_bitmap* %214 to i64
  %217 = sub i64 %215, %216
  %218 = sdiv exact i64 %217, 24
  %219 = trunc i64 %218 to i32
  store i32 %219, i32* %21, align 4
  %220 = load i32, i32* %21, align 4
  %221 = add nsw i32 %220, 1
  store i32 %221, i32* %21, align 4
  %222 = load i32, i32* %21, align 4
  %223 = load %struct.gfs2_rbm*, %struct.gfs2_rbm** %8, align 8
  %224 = getelementptr inbounds %struct.gfs2_rbm, %struct.gfs2_rbm* %223, i32 0, i32 1
  %225 = load %struct.TYPE_2__*, %struct.TYPE_2__** %224, align 8
  %226 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 8
  %228 = icmp eq i32 %222, %227
  br i1 %228, label %229, label %230

229:                                              ; preds = %204
  store i32 0, i32* %21, align 4
  br label %230

230:                                              ; preds = %229, %204
  br label %231

231:                                              ; preds = %230, %172
  %232 = load %struct.gfs2_rbm*, %struct.gfs2_rbm** %8, align 8
  %233 = getelementptr inbounds %struct.gfs2_rbm, %struct.gfs2_rbm* %232, i32 0, i32 1
  %234 = load %struct.TYPE_2__*, %struct.TYPE_2__** %233, align 8
  %235 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %234, i32 0, i32 2
  %236 = load %struct.gfs2_bitmap*, %struct.gfs2_bitmap** %235, align 8
  %237 = load i32, i32* %21, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds %struct.gfs2_bitmap, %struct.gfs2_bitmap* %236, i64 %238
  %240 = load %struct.gfs2_rbm*, %struct.gfs2_rbm** %8, align 8
  %241 = getelementptr inbounds %struct.gfs2_rbm, %struct.gfs2_rbm* %240, i32 0, i32 2
  store %struct.gfs2_bitmap* %239, %struct.gfs2_bitmap** %241, align 8
  %242 = load i32, i32* %21, align 4
  %243 = icmp eq i32 %242, 0
  br i1 %243, label %244, label %248

244:                                              ; preds = %231
  %245 = load i32, i32* %12, align 4
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %248

247:                                              ; preds = %244
  br label %257

248:                                              ; preds = %244, %231
  %249 = load i32, i32* %22, align 4
  %250 = add nsw i32 %249, 1
  store i32 %250, i32* %22, align 4
  br label %251

251:                                              ; preds = %248, %154
  %252 = load i32, i32* %22, align 4
  %253 = load i32, i32* %23, align 4
  %254 = icmp sge i32 %252, %253
  br i1 %254, label %255, label %256

255:                                              ; preds = %251
  br label %257

256:                                              ; preds = %251
  br label %51

257:                                              ; preds = %255, %247
  %258 = load i64*, i64** %10, align 8
  %259 = icmp eq i64* %258, null
  br i1 %259, label %264, label %260

260:                                              ; preds = %257
  %261 = load i32, i32* %9, align 4
  %262 = load i32, i32* @GFS2_BLKST_FREE, align 4
  %263 = icmp ne i32 %261, %262
  br i1 %263, label %264, label %267

264:                                              ; preds = %260, %257
  %265 = load i32, i32* @ENOSPC, align 4
  %266 = sub nsw i32 0, %265
  store i32 %266, i32* %7, align 4
  br label %309

267:                                              ; preds = %260
  %268 = load i64, i64* %18, align 8
  %269 = icmp eq i64 %268, 0
  br i1 %269, label %270, label %294

270:                                              ; preds = %267
  %271 = load %struct.gfs2_bitmap*, %struct.gfs2_bitmap** %17, align 8
  %272 = load %struct.gfs2_rbm*, %struct.gfs2_rbm** %8, align 8
  %273 = getelementptr inbounds %struct.gfs2_rbm, %struct.gfs2_rbm* %272, i32 0, i32 1
  %274 = load %struct.TYPE_2__*, %struct.TYPE_2__** %273, align 8
  %275 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %274, i32 0, i32 2
  %276 = load %struct.gfs2_bitmap*, %struct.gfs2_bitmap** %275, align 8
  %277 = icmp eq %struct.gfs2_bitmap* %271, %276
  br i1 %277, label %278, label %294

278:                                              ; preds = %270
  %279 = load i64*, i64** %10, align 8
  %280 = load i64, i64* %279, align 8
  %281 = load %struct.gfs2_rbm*, %struct.gfs2_rbm** %8, align 8
  %282 = getelementptr inbounds %struct.gfs2_rbm, %struct.gfs2_rbm* %281, i32 0, i32 1
  %283 = load %struct.TYPE_2__*, %struct.TYPE_2__** %282, align 8
  %284 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %283, i32 0, i32 1
  %285 = load i64, i64* %284, align 8
  %286 = icmp slt i64 %280, %285
  br i1 %286, label %287, label %294

287:                                              ; preds = %278
  %288 = load i64*, i64** %10, align 8
  %289 = load i64, i64* %288, align 8
  %290 = load %struct.gfs2_rbm*, %struct.gfs2_rbm** %8, align 8
  %291 = getelementptr inbounds %struct.gfs2_rbm, %struct.gfs2_rbm* %290, i32 0, i32 1
  %292 = load %struct.TYPE_2__*, %struct.TYPE_2__** %291, align 8
  %293 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %292, i32 0, i32 1
  store i64 %289, i64* %293, align 8
  br label %294

294:                                              ; preds = %287, %278, %270, %267
  %295 = getelementptr inbounds %struct.gfs2_extent, %struct.gfs2_extent* %25, i32 0, i32 0
  %296 = load i64, i64* %295, align 8
  %297 = icmp ne i64 %296, 0
  br i1 %297, label %298, label %306

298:                                              ; preds = %294
  %299 = load %struct.gfs2_rbm*, %struct.gfs2_rbm** %8, align 8
  %300 = getelementptr inbounds %struct.gfs2_extent, %struct.gfs2_extent* %25, i32 0, i32 1
  %301 = bitcast %struct.gfs2_rbm* %299 to i8*
  %302 = bitcast %struct.gfs2_rbm* %300 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %301, i8* align 8 %302, i64 24, i1 false)
  %303 = getelementptr inbounds %struct.gfs2_extent, %struct.gfs2_extent* %25, i32 0, i32 0
  %304 = load i64, i64* %303, align 8
  %305 = load i64*, i64** %10, align 8
  store i64 %304, i64* %305, align 8
  store i32 0, i32* %7, align 4
  br label %309

306:                                              ; preds = %294
  %307 = load i32, i32* @ENOSPC, align 4
  %308 = sub nsw i32 0, %307
  store i32 %308, i32* %7, align 4
  br label %309

309:                                              ; preds = %306, %298, %264, %187, %150, %132
  %310 = load i32, i32* %7, align 4
  ret i32 %310
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @test_bit(i32, i32*) #2

declare dso_local i32 @WARN_ON(i32) #2

declare dso_local i32 @buffer_uptodate(%struct.buffer_head*) #2

declare dso_local i64 @gfs2_bitfit(i32*, %struct.gfs2_bitmap*, i64, i32) #2

declare dso_local i32 @gfs2_reservation_check_and_update(%struct.gfs2_rbm*, %struct.gfs2_inode*, i64, %struct.gfs2_extent*) #2

declare dso_local i32 @set_bit(i32, i32*) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
