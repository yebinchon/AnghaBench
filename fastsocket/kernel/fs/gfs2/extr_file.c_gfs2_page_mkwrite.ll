; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_file.c_gfs2_page_mkwrite.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_file.c_gfs2_page_mkwrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.inode* }
%struct.inode = type { i64, i32 }
%struct.vm_fault = type { %struct.page* }
%struct.page = type { i32, i64 }
%struct.gfs2_inode = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.gfs2_sbd = type { i32 }
%struct.gfs2_alloc_parms = type { i32, i32 }
%struct.gfs2_holder = type { i32 }

@PAGE_CACHE_SHIFT = common dso_local global i32 0, align 4
@LM_ST_EXCLUSIVE = common dso_local global i32 0, align 4
@GLF_DIRTY = common dso_local global i32 0, align 4
@GIF_SW_PAGED = common dso_local global i32 0, align 4
@PAGE_CACHE_SIZE = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@RES_DINODE = common dso_local global i32 0, align 4
@RES_STATFS = common dso_local global i64 0, align 8
@RES_QUOTA = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vm_area_struct*, %struct.vm_fault*)* @gfs2_page_mkwrite to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfs2_page_mkwrite(%struct.vm_area_struct* %0, %struct.vm_fault* %1) #0 {
  %3 = alloca %struct.vm_area_struct*, align 8
  %4 = alloca %struct.vm_fault*, align 8
  %5 = alloca %struct.page*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.gfs2_inode*, align 8
  %8 = alloca %struct.gfs2_sbd*, align 8
  %9 = alloca %struct.gfs2_alloc_parms, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.gfs2_holder, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %3, align 8
  store %struct.vm_fault* %1, %struct.vm_fault** %4, align 8
  %19 = load %struct.vm_fault*, %struct.vm_fault** %4, align 8
  %20 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %19, i32 0, i32 0
  %21 = load %struct.page*, %struct.page** %20, align 8
  store %struct.page* %21, %struct.page** %5, align 8
  %22 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %23 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %22, i32 0, i32 0
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load %struct.inode*, %struct.inode** %28, align 8
  store %struct.inode* %29, %struct.inode** %6, align 8
  %30 = load %struct.inode*, %struct.inode** %6, align 8
  %31 = call %struct.gfs2_inode* @GFS2_I(%struct.inode* %30)
  store %struct.gfs2_inode* %31, %struct.gfs2_inode** %7, align 8
  %32 = load %struct.inode*, %struct.inode** %6, align 8
  %33 = call %struct.gfs2_sbd* @GFS2_SB(%struct.inode* %32)
  store %struct.gfs2_sbd* %33, %struct.gfs2_sbd** %8, align 8
  %34 = bitcast %struct.gfs2_alloc_parms* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %34, i8 0, i64 8, i1 false)
  %35 = load %struct.page*, %struct.page** %5, align 8
  %36 = getelementptr inbounds %struct.page, %struct.page* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @PAGE_CACHE_SHIFT, align 4
  %39 = shl i32 %37, %38
  store i32 %39, i32* %11, align 4
  store i32 0, i32* %15, align 4
  %40 = load %struct.inode*, %struct.inode** %6, align 8
  %41 = getelementptr inbounds %struct.inode, %struct.inode* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @sb_start_pagefault(i32 %42)
  %44 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %45 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %44, i32 0, i32 0
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %45, align 8
  %47 = call i32 @file_update_time(%struct.TYPE_8__* %46)
  %48 = load %struct.inode*, %struct.inode** %6, align 8
  %49 = call i32 @get_write_access(%struct.inode* %48)
  store i32 %49, i32* %18, align 4
  %50 = load i32, i32* %18, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %2
  br label %268

53:                                               ; preds = %2
  %54 = load %struct.gfs2_inode*, %struct.gfs2_inode** %7, align 8
  %55 = call i32 @gfs2_rs_alloc(%struct.gfs2_inode* %54)
  store i32 %55, i32* %18, align 4
  %56 = load i32, i32* %18, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %53
  br label %265

59:                                               ; preds = %53
  %60 = load %struct.gfs2_inode*, %struct.gfs2_inode** %7, align 8
  %61 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %60, i32 0, i32 1
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %61, align 8
  %63 = load i32, i32* @LM_ST_EXCLUSIVE, align 4
  %64 = call i32 @gfs2_holder_init(%struct.TYPE_7__* %62, i32 %63, i32 0, %struct.gfs2_holder* %16)
  %65 = call i32 @gfs2_glock_nq(%struct.gfs2_holder* %16)
  store i32 %65, i32* %18, align 4
  %66 = load i32, i32* %18, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %59
  br label %255

69:                                               ; preds = %59
  %70 = load i32, i32* @GLF_DIRTY, align 4
  %71 = load %struct.gfs2_inode*, %struct.gfs2_inode** %7, align 8
  %72 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %71, i32 0, i32 1
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  %75 = call i32 @set_bit(i32 %70, i32* %74)
  %76 = load i32, i32* @GIF_SW_PAGED, align 4
  %77 = load %struct.gfs2_inode*, %struct.gfs2_inode** %7, align 8
  %78 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %77, i32 0, i32 0
  %79 = call i32 @set_bit(i32 %76, i32* %78)
  %80 = load %struct.inode*, %struct.inode** %6, align 8
  %81 = load i32, i32* %11, align 4
  %82 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %83 = call i32 @gfs2_size_hint(%struct.inode* %80, i32 %81, i32 %82)
  %84 = load %struct.gfs2_inode*, %struct.gfs2_inode** %7, align 8
  %85 = load i32, i32* %11, align 4
  %86 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %87 = call i32 @gfs2_write_alloc_required(%struct.gfs2_inode* %84, i32 %85, i32 %86, i32* %15)
  store i32 %87, i32* %18, align 4
  %88 = load i32, i32* %18, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %69
  br label %253

91:                                               ; preds = %69
  %92 = load i32, i32* %15, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %114, label %94

94:                                               ; preds = %91
  %95 = load %struct.page*, %struct.page** %5, align 8
  %96 = call i32 @lock_page(%struct.page* %95)
  %97 = load %struct.page*, %struct.page** %5, align 8
  %98 = call i32 @PageUptodate(%struct.page* %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %108

100:                                              ; preds = %94
  %101 = load %struct.page*, %struct.page** %5, align 8
  %102 = getelementptr inbounds %struct.page, %struct.page* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = load %struct.inode*, %struct.inode** %6, align 8
  %105 = getelementptr inbounds %struct.inode, %struct.inode* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %103, %106
  br i1 %107, label %108, label %113

108:                                              ; preds = %100, %94
  %109 = load i32, i32* @EAGAIN, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %18, align 4
  %111 = load %struct.page*, %struct.page** %5, align 8
  %112 = call i32 @unlock_page(%struct.page* %111)
  br label %113

113:                                              ; preds = %108, %100
  br label %253

114:                                              ; preds = %91
  %115 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %8, align 8
  %116 = call i32 @gfs2_rindex_update(%struct.gfs2_sbd* %115)
  store i32 %116, i32* %18, align 4
  %117 = load i32, i32* %18, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %114
  br label %253

120:                                              ; preds = %114
  %121 = load %struct.gfs2_inode*, %struct.gfs2_inode** %7, align 8
  %122 = call i32 @gfs2_quota_lock_check(%struct.gfs2_inode* %121)
  store i32 %122, i32* %18, align 4
  %123 = load i32, i32* %18, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %120
  br label %253

126:                                              ; preds = %120
  %127 = load %struct.gfs2_inode*, %struct.gfs2_inode** %7, align 8
  %128 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %129 = call i32 @gfs2_write_calc_reserv(%struct.gfs2_inode* %127, i32 %128, i32* %12, i32* %13)
  %130 = load i32, i32* %12, align 4
  %131 = load i32, i32* %13, align 4
  %132 = add i32 %130, %131
  %133 = getelementptr inbounds %struct.gfs2_alloc_parms, %struct.gfs2_alloc_parms* %9, i32 0, i32 0
  store i32 %132, i32* %133, align 4
  %134 = load %struct.gfs2_inode*, %struct.gfs2_inode** %7, align 8
  %135 = call i32 @gfs2_inplace_reserve(%struct.gfs2_inode* %134, %struct.gfs2_alloc_parms* %9)
  store i32 %135, i32* %18, align 4
  %136 = load i32, i32* %18, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %126
  br label %250

139:                                              ; preds = %126
  %140 = load i32, i32* @RES_DINODE, align 4
  %141 = load i32, i32* %13, align 4
  %142 = add i32 %140, %141
  store i32 %142, i32* %14, align 4
  %143 = load %struct.gfs2_inode*, %struct.gfs2_inode** %7, align 8
  %144 = call i64 @gfs2_is_jdata(%struct.gfs2_inode* %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %156

146:                                              ; preds = %139
  %147 = load i32, i32* %12, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %151

149:                                              ; preds = %146
  %150 = load i32, i32* %12, align 4
  br label %152

151:                                              ; preds = %146
  br label %152

152:                                              ; preds = %151, %149
  %153 = phi i32 [ %150, %149 ], [ 1, %151 ]
  %154 = load i32, i32* %14, align 4
  %155 = add i32 %154, %153
  store i32 %155, i32* %14, align 4
  br label %156

156:                                              ; preds = %152, %139
  %157 = load i32, i32* %13, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %162, label %159

159:                                              ; preds = %156
  %160 = load i32, i32* %12, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %179

162:                                              ; preds = %159, %156
  %163 = load i64, i64* @RES_STATFS, align 8
  %164 = load i64, i64* @RES_QUOTA, align 8
  %165 = add nsw i64 %163, %164
  %166 = load i32, i32* %14, align 4
  %167 = zext i32 %166 to i64
  %168 = add nsw i64 %167, %165
  %169 = trunc i64 %168 to i32
  store i32 %169, i32* %14, align 4
  %170 = load %struct.gfs2_inode*, %struct.gfs2_inode** %7, align 8
  %171 = load i32, i32* %12, align 4
  %172 = load i32, i32* %13, align 4
  %173 = add i32 %171, %172
  %174 = call i64 @gfs2_rg_blocks(%struct.gfs2_inode* %170, i32 %173)
  %175 = load i32, i32* %14, align 4
  %176 = zext i32 %175 to i64
  %177 = add nsw i64 %176, %174
  %178 = trunc i64 %177 to i32
  store i32 %178, i32* %14, align 4
  br label %179

179:                                              ; preds = %162, %159
  %180 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %8, align 8
  %181 = load i32, i32* %14, align 4
  %182 = call i32 @gfs2_trans_begin(%struct.gfs2_sbd* %180, i32 %181, i32 0)
  store i32 %182, i32* %18, align 4
  %183 = load i32, i32* %18, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %186

185:                                              ; preds = %179
  br label %247

186:                                              ; preds = %179
  %187 = load %struct.page*, %struct.page** %5, align 8
  %188 = call i32 @lock_page(%struct.page* %187)
  %189 = load i32, i32* @EINVAL, align 4
  %190 = sub nsw i32 0, %189
  store i32 %190, i32* %18, align 4
  %191 = load %struct.inode*, %struct.inode** %6, align 8
  %192 = call i32 @i_size_read(%struct.inode* %191)
  store i32 %192, i32* %17, align 4
  %193 = load i32, i32* %17, align 4
  %194 = sub nsw i32 %193, 1
  %195 = load i32, i32* @PAGE_CACHE_SHIFT, align 4
  %196 = ashr i32 %194, %195
  %197 = sext i32 %196 to i64
  store i64 %197, i64* %10, align 8
  %198 = load i32, i32* %17, align 4
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %207, label %200

200:                                              ; preds = %186
  %201 = load %struct.page*, %struct.page** %5, align 8
  %202 = getelementptr inbounds %struct.page, %struct.page* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = sext i32 %203 to i64
  %205 = load i64, i64* %10, align 8
  %206 = icmp ugt i64 %204, %205
  br i1 %206, label %207, label %208

207:                                              ; preds = %200, %186
  br label %238

208:                                              ; preds = %200
  %209 = load i32, i32* @EAGAIN, align 4
  %210 = sub nsw i32 0, %209
  store i32 %210, i32* %18, align 4
  %211 = load %struct.page*, %struct.page** %5, align 8
  %212 = call i32 @PageUptodate(%struct.page* %211)
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %222

214:                                              ; preds = %208
  %215 = load %struct.page*, %struct.page** %5, align 8
  %216 = getelementptr inbounds %struct.page, %struct.page* %215, i32 0, i32 1
  %217 = load i64, i64* %216, align 8
  %218 = load %struct.inode*, %struct.inode** %6, align 8
  %219 = getelementptr inbounds %struct.inode, %struct.inode* %218, i32 0, i32 0
  %220 = load i64, i64* %219, align 8
  %221 = icmp ne i64 %217, %220
  br i1 %221, label %222, label %223

222:                                              ; preds = %214, %208
  br label %238

223:                                              ; preds = %214
  store i32 0, i32* %18, align 4
  %224 = load %struct.gfs2_inode*, %struct.gfs2_inode** %7, align 8
  %225 = call i64 @gfs2_is_stuffed(%struct.gfs2_inode* %224)
  %226 = icmp ne i64 %225, 0
  br i1 %226, label %227, label %231

227:                                              ; preds = %223
  %228 = load %struct.gfs2_inode*, %struct.gfs2_inode** %7, align 8
  %229 = load %struct.page*, %struct.page** %5, align 8
  %230 = call i32 @gfs2_unstuff_dinode(%struct.gfs2_inode* %228, %struct.page* %229)
  store i32 %230, i32* %18, align 4
  br label %231

231:                                              ; preds = %227, %223
  %232 = load i32, i32* %18, align 4
  %233 = icmp eq i32 %232, 0
  br i1 %233, label %234, label %237

234:                                              ; preds = %231
  %235 = load %struct.page*, %struct.page** %5, align 8
  %236 = call i32 @gfs2_allocate_page_backing(%struct.page* %235)
  store i32 %236, i32* %18, align 4
  br label %237

237:                                              ; preds = %234, %231
  br label %238

238:                                              ; preds = %237, %222, %207
  %239 = load i32, i32* %18, align 4
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %244

241:                                              ; preds = %238
  %242 = load %struct.page*, %struct.page** %5, align 8
  %243 = call i32 @unlock_page(%struct.page* %242)
  br label %244

244:                                              ; preds = %241, %238
  %245 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %8, align 8
  %246 = call i32 @gfs2_trans_end(%struct.gfs2_sbd* %245)
  br label %247

247:                                              ; preds = %244, %185
  %248 = load %struct.gfs2_inode*, %struct.gfs2_inode** %7, align 8
  %249 = call i32 @gfs2_inplace_release(%struct.gfs2_inode* %248)
  br label %250

250:                                              ; preds = %247, %138
  %251 = load %struct.gfs2_inode*, %struct.gfs2_inode** %7, align 8
  %252 = call i32 @gfs2_quota_unlock(%struct.gfs2_inode* %251)
  br label %253

253:                                              ; preds = %250, %125, %119, %113, %90
  %254 = call i32 @gfs2_glock_dq(%struct.gfs2_holder* %16)
  br label %255

255:                                              ; preds = %253, %68
  %256 = call i32 @gfs2_holder_uninit(%struct.gfs2_holder* %16)
  %257 = load i32, i32* %18, align 4
  %258 = icmp eq i32 %257, 0
  br i1 %258, label %259, label %264

259:                                              ; preds = %255
  %260 = load %struct.page*, %struct.page** %5, align 8
  %261 = call i32 @set_page_dirty(%struct.page* %260)
  %262 = load %struct.page*, %struct.page** %5, align 8
  %263 = call i32 @wait_for_stable_page(%struct.page* %262)
  br label %264

264:                                              ; preds = %259, %255
  br label %265

265:                                              ; preds = %264, %58
  %266 = load %struct.inode*, %struct.inode** %6, align 8
  %267 = call i32 @put_write_access(%struct.inode* %266)
  br label %268

268:                                              ; preds = %265, %52
  %269 = load %struct.inode*, %struct.inode** %6, align 8
  %270 = getelementptr inbounds %struct.inode, %struct.inode* %269, i32 0, i32 1
  %271 = load i32, i32* %270, align 8
  %272 = call i32 @sb_end_pagefault(i32 %271)
  %273 = load i32, i32* %18, align 4
  %274 = call i32 @block_page_mkwrite_return(i32 %273)
  ret i32 %274
}

declare dso_local %struct.gfs2_inode* @GFS2_I(%struct.inode*) #1

declare dso_local %struct.gfs2_sbd* @GFS2_SB(%struct.inode*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @sb_start_pagefault(i32) #1

declare dso_local i32 @file_update_time(%struct.TYPE_8__*) #1

declare dso_local i32 @get_write_access(%struct.inode*) #1

declare dso_local i32 @gfs2_rs_alloc(%struct.gfs2_inode*) #1

declare dso_local i32 @gfs2_holder_init(%struct.TYPE_7__*, i32, i32, %struct.gfs2_holder*) #1

declare dso_local i32 @gfs2_glock_nq(%struct.gfs2_holder*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @gfs2_size_hint(%struct.inode*, i32, i32) #1

declare dso_local i32 @gfs2_write_alloc_required(%struct.gfs2_inode*, i32, i32, i32*) #1

declare dso_local i32 @lock_page(%struct.page*) #1

declare dso_local i32 @PageUptodate(%struct.page*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @gfs2_rindex_update(%struct.gfs2_sbd*) #1

declare dso_local i32 @gfs2_quota_lock_check(%struct.gfs2_inode*) #1

declare dso_local i32 @gfs2_write_calc_reserv(%struct.gfs2_inode*, i32, i32*, i32*) #1

declare dso_local i32 @gfs2_inplace_reserve(%struct.gfs2_inode*, %struct.gfs2_alloc_parms*) #1

declare dso_local i64 @gfs2_is_jdata(%struct.gfs2_inode*) #1

declare dso_local i64 @gfs2_rg_blocks(%struct.gfs2_inode*, i32) #1

declare dso_local i32 @gfs2_trans_begin(%struct.gfs2_sbd*, i32, i32) #1

declare dso_local i32 @i_size_read(%struct.inode*) #1

declare dso_local i64 @gfs2_is_stuffed(%struct.gfs2_inode*) #1

declare dso_local i32 @gfs2_unstuff_dinode(%struct.gfs2_inode*, %struct.page*) #1

declare dso_local i32 @gfs2_allocate_page_backing(%struct.page*) #1

declare dso_local i32 @gfs2_trans_end(%struct.gfs2_sbd*) #1

declare dso_local i32 @gfs2_inplace_release(%struct.gfs2_inode*) #1

declare dso_local i32 @gfs2_quota_unlock(%struct.gfs2_inode*) #1

declare dso_local i32 @gfs2_glock_dq(%struct.gfs2_holder*) #1

declare dso_local i32 @gfs2_holder_uninit(%struct.gfs2_holder*) #1

declare dso_local i32 @set_page_dirty(%struct.page*) #1

declare dso_local i32 @wait_for_stable_page(%struct.page*) #1

declare dso_local i32 @put_write_access(%struct.inode*) #1

declare dso_local i32 @sb_end_pagefault(i32) #1

declare dso_local i32 @block_page_mkwrite_return(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
