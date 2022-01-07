; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_aops.c_gfs2_write_begin.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_aops.c_gfs2_write_begin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.address_space = type { i32 }
%struct.page = type { i32 }
%struct.gfs2_inode = type { i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.gfs2_sbd = type { %struct.TYPE_4__*, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.gfs2_alloc_parms = type { i32, i32 }

@PAGE_CACHE_SHIFT = common dso_local global i32 0, align 4
@PAGE_CACHE_SIZE = common dso_local global i32 0, align 4
@LM_ST_EXCLUSIVE = common dso_local global i32 0, align 4
@GL_NOCACHE = common dso_local global i32 0, align 4
@RES_DINODE = common dso_local global i32 0, align 4
@RES_STATFS = common dso_local global i32 0, align 4
@RES_QUOTA = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@AOP_FLAG_NOFS = common dso_local global i32 0, align 4
@gfs2_block_map = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.address_space*, i32, i32, i32, %struct.page**, i8**)* @gfs2_write_begin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfs2_write_begin(%struct.file* %0, %struct.address_space* %1, i32 %2, i32 %3, i32 %4, %struct.page** %5, i8** %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.file*, align 8
  %10 = alloca %struct.address_space*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.page**, align 8
  %15 = alloca i8**, align 8
  %16 = alloca %struct.gfs2_inode*, align 8
  %17 = alloca %struct.gfs2_sbd*, align 8
  %18 = alloca %struct.gfs2_inode*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca %struct.page*, align 8
  %29 = alloca %struct.gfs2_alloc_parms, align 4
  store %struct.file* %0, %struct.file** %9, align 8
  store %struct.address_space* %1, %struct.address_space** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store %struct.page** %5, %struct.page*** %14, align 8
  store i8** %6, i8*** %15, align 8
  %30 = load %struct.address_space*, %struct.address_space** %10, align 8
  %31 = getelementptr inbounds %struct.address_space, %struct.address_space* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call %struct.gfs2_inode* @GFS2_I(i32 %32)
  store %struct.gfs2_inode* %33, %struct.gfs2_inode** %16, align 8
  %34 = load %struct.address_space*, %struct.address_space** %10, align 8
  %35 = getelementptr inbounds %struct.address_space, %struct.address_space* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call %struct.gfs2_sbd* @GFS2_SB(i32 %36)
  store %struct.gfs2_sbd* %37, %struct.gfs2_sbd** %17, align 8
  %38 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %17, align 8
  %39 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = call %struct.gfs2_inode* @GFS2_I(i32 %40)
  store %struct.gfs2_inode* %41, %struct.gfs2_inode** %18, align 8
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %22, align 4
  store i32 0, i32* %24, align 4
  %42 = load i32, i32* %11, align 4
  %43 = load i32, i32* @PAGE_CACHE_SHIFT, align 4
  %44 = ashr i32 %42, %43
  store i32 %44, i32* %25, align 4
  %45 = load i32, i32* %11, align 4
  %46 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %47 = sub nsw i32 %46, 1
  %48 = and i32 %45, %47
  store i32 %48, i32* %26, align 4
  %49 = load i32, i32* %26, align 4
  %50 = load i32, i32* %12, align 4
  %51 = add i32 %49, %50
  store i32 %51, i32* %27, align 4
  %52 = load %struct.gfs2_inode*, %struct.gfs2_inode** %16, align 8
  %53 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @LM_ST_EXCLUSIVE, align 4
  %56 = load %struct.gfs2_inode*, %struct.gfs2_inode** %16, align 8
  %57 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %56, i32 0, i32 0
  %58 = call i32 @gfs2_holder_init(i32 %54, i32 %55, i32 0, i32* %57)
  %59 = load %struct.gfs2_inode*, %struct.gfs2_inode** %16, align 8
  %60 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %59, i32 0, i32 0
  %61 = call i32 @gfs2_glock_nq(i32* %60)
  store i32 %61, i32* %24, align 4
  %62 = load i32, i32* %24, align 4
  %63 = call i64 @unlikely(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %7
  br label %314

66:                                               ; preds = %7
  %67 = load %struct.gfs2_inode*, %struct.gfs2_inode** %16, align 8
  %68 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %67, i32 0, i32 1
  %69 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %17, align 8
  %70 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %69, i32 0, i32 0
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = icmp eq %struct.TYPE_4__* %68, %71
  br i1 %72, label %73, label %90

73:                                               ; preds = %66
  %74 = load %struct.gfs2_inode*, %struct.gfs2_inode** %18, align 8
  %75 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @LM_ST_EXCLUSIVE, align 4
  %78 = load i32, i32* @GL_NOCACHE, align 4
  %79 = load %struct.gfs2_inode*, %struct.gfs2_inode** %18, align 8
  %80 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %79, i32 0, i32 0
  %81 = call i32 @gfs2_glock_nq_init(i32 %76, i32 %77, i32 %78, i32* %80)
  store i32 %81, i32* %24, align 4
  %82 = load i32, i32* %24, align 4
  %83 = call i64 @unlikely(i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %73
  %86 = load %struct.gfs2_inode*, %struct.gfs2_inode** %16, align 8
  %87 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %86, i32 0, i32 0
  %88 = call i32 @gfs2_glock_dq(i32* %87)
  br label %314

89:                                               ; preds = %73
  br label %90

90:                                               ; preds = %89, %66
  %91 = load %struct.gfs2_inode*, %struct.gfs2_inode** %16, align 8
  %92 = load i32, i32* %11, align 4
  %93 = load i32, i32* %12, align 4
  %94 = call i32 @gfs2_write_alloc_required(%struct.gfs2_inode* %91, i32 %92, i32 %93, i32* %23)
  store i32 %94, i32* %24, align 4
  %95 = load i32, i32* %24, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %90
  br label %296

98:                                               ; preds = %90
  %99 = load i32, i32* %23, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %105, label %101

101:                                              ; preds = %98
  %102 = load %struct.gfs2_inode*, %struct.gfs2_inode** %16, align 8
  %103 = call i64 @gfs2_is_jdata(%struct.gfs2_inode* %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %101, %98
  %106 = load %struct.gfs2_inode*, %struct.gfs2_inode** %16, align 8
  %107 = load i32, i32* %12, align 4
  %108 = call i32 @gfs2_write_calc_reserv(%struct.gfs2_inode* %106, i32 %107, i32* %19, i32* %20)
  br label %109

109:                                              ; preds = %105, %101
  %110 = load i32, i32* %23, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %131

112:                                              ; preds = %109
  %113 = bitcast %struct.gfs2_alloc_parms* %29 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %113, i8 0, i64 8, i1 false)
  %114 = load %struct.gfs2_inode*, %struct.gfs2_inode** %16, align 8
  %115 = call i32 @gfs2_quota_lock_check(%struct.gfs2_inode* %114)
  store i32 %115, i32* %24, align 4
  %116 = load i32, i32* %24, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %112
  br label %296

119:                                              ; preds = %112
  %120 = load i32, i32* %19, align 4
  %121 = load i32, i32* %20, align 4
  %122 = add i32 %120, %121
  store i32 %122, i32* %22, align 4
  %123 = load i32, i32* %22, align 4
  %124 = getelementptr inbounds %struct.gfs2_alloc_parms, %struct.gfs2_alloc_parms* %29, i32 0, i32 0
  store i32 %123, i32* %124, align 4
  %125 = load %struct.gfs2_inode*, %struct.gfs2_inode** %16, align 8
  %126 = call i32 @gfs2_inplace_reserve(%struct.gfs2_inode* %125, %struct.gfs2_alloc_parms* %29)
  store i32 %126, i32* %24, align 4
  %127 = load i32, i32* %24, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %119
  br label %292

130:                                              ; preds = %119
  br label %131

131:                                              ; preds = %130, %109
  %132 = load i32, i32* @RES_DINODE, align 4
  %133 = load i32, i32* %20, align 4
  %134 = add i32 %132, %133
  store i32 %134, i32* %21, align 4
  %135 = load %struct.gfs2_inode*, %struct.gfs2_inode** %16, align 8
  %136 = call i64 @gfs2_is_jdata(%struct.gfs2_inode* %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %148

138:                                              ; preds = %131
  %139 = load i32, i32* %19, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %143

141:                                              ; preds = %138
  %142 = load i32, i32* %19, align 4
  br label %144

143:                                              ; preds = %138
  br label %144

144:                                              ; preds = %143, %141
  %145 = phi i32 [ %142, %141 ], [ 1, %143 ]
  %146 = load i32, i32* %21, align 4
  %147 = add i32 %146, %145
  store i32 %147, i32* %21, align 4
  br label %148

148:                                              ; preds = %144, %131
  %149 = load i32, i32* %20, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %154, label %151

151:                                              ; preds = %148
  %152 = load i32, i32* %19, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %163

154:                                              ; preds = %151, %148
  %155 = load i32, i32* @RES_STATFS, align 4
  %156 = sext i32 %155 to i64
  %157 = load i64, i64* @RES_QUOTA, align 8
  %158 = add nsw i64 %156, %157
  %159 = load i32, i32* %21, align 4
  %160 = zext i32 %159 to i64
  %161 = add nsw i64 %160, %158
  %162 = trunc i64 %161 to i32
  store i32 %162, i32* %21, align 4
  br label %163

163:                                              ; preds = %154, %151
  %164 = load %struct.gfs2_inode*, %struct.gfs2_inode** %16, align 8
  %165 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %164, i32 0, i32 1
  %166 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %17, align 8
  %167 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %166, i32 0, i32 0
  %168 = load %struct.TYPE_4__*, %struct.TYPE_4__** %167, align 8
  %169 = icmp eq %struct.TYPE_4__* %165, %168
  br i1 %169, label %170, label %175

170:                                              ; preds = %163
  %171 = load i32, i32* @RES_STATFS, align 4
  %172 = mul nsw i32 2, %171
  %173 = load i32, i32* %21, align 4
  %174 = add i32 %173, %172
  store i32 %174, i32* %21, align 4
  br label %175

175:                                              ; preds = %170, %163
  %176 = load i32, i32* %23, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %186

178:                                              ; preds = %175
  %179 = load %struct.gfs2_inode*, %struct.gfs2_inode** %16, align 8
  %180 = load i32, i32* %22, align 4
  %181 = call i64 @gfs2_rg_blocks(%struct.gfs2_inode* %179, i32 %180)
  %182 = load i32, i32* %21, align 4
  %183 = zext i32 %182 to i64
  %184 = add nsw i64 %183, %181
  %185 = trunc i64 %184 to i32
  store i32 %185, i32* %21, align 4
  br label %186

186:                                              ; preds = %178, %175
  %187 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %17, align 8
  %188 = load i32, i32* %21, align 4
  %189 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %190 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %17, align 8
  %191 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %190, i32 0, i32 1
  %192 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = sdiv i32 %189, %193
  %195 = call i32 @gfs2_trans_begin(%struct.gfs2_sbd* %187, i32 %188, i32 %194)
  store i32 %195, i32* %24, align 4
  %196 = load i32, i32* %24, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %199

198:                                              ; preds = %186
  br label %286

199:                                              ; preds = %186
  %200 = load i32, i32* @ENOMEM, align 4
  %201 = sub nsw i32 0, %200
  store i32 %201, i32* %24, align 4
  %202 = load i32, i32* @AOP_FLAG_NOFS, align 4
  %203 = load i32, i32* %13, align 4
  %204 = or i32 %203, %202
  store i32 %204, i32* %13, align 4
  %205 = load %struct.address_space*, %struct.address_space** %10, align 8
  %206 = load i32, i32* %25, align 4
  %207 = load i32, i32* %13, align 4
  %208 = call %struct.page* @grab_cache_page_write_begin(%struct.address_space* %205, i32 %206, i32 %207)
  store %struct.page* %208, %struct.page** %28, align 8
  %209 = load %struct.page*, %struct.page** %28, align 8
  %210 = load %struct.page**, %struct.page*** %14, align 8
  store %struct.page* %209, %struct.page** %210, align 8
  %211 = load %struct.page*, %struct.page** %28, align 8
  %212 = icmp ne %struct.page* %211, null
  %213 = xor i1 %212, true
  %214 = zext i1 %213 to i32
  %215 = call i64 @unlikely(i32 %214)
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %218

217:                                              ; preds = %199
  br label %283

218:                                              ; preds = %199
  %219 = load %struct.gfs2_inode*, %struct.gfs2_inode** %16, align 8
  %220 = call i64 @gfs2_is_stuffed(%struct.gfs2_inode* %219)
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %222, label %252

222:                                              ; preds = %218
  store i32 0, i32* %24, align 4
  %223 = load i32, i32* %11, align 4
  %224 = load i32, i32* %12, align 4
  %225 = add i32 %223, %224
  %226 = zext i32 %225 to i64
  %227 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %17, align 8
  %228 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %227, i32 0, i32 1
  %229 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 8
  %231 = sext i32 %230 to i64
  %232 = sub i64 %231, 4
  %233 = icmp ugt i64 %226, %232
  br i1 %233, label %234, label %242

234:                                              ; preds = %222
  %235 = load %struct.gfs2_inode*, %struct.gfs2_inode** %16, align 8
  %236 = load %struct.page*, %struct.page** %28, align 8
  %237 = call i32 @gfs2_unstuff_dinode(%struct.gfs2_inode* %235, %struct.page* %236)
  store i32 %237, i32* %24, align 4
  %238 = load i32, i32* %24, align 4
  %239 = icmp eq i32 %238, 0
  br i1 %239, label %240, label %241

240:                                              ; preds = %234
  br label %253

241:                                              ; preds = %234
  br label %251

242:                                              ; preds = %222
  %243 = load %struct.page*, %struct.page** %28, align 8
  %244 = call i32 @PageUptodate(%struct.page* %243)
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %250, label %246

246:                                              ; preds = %242
  %247 = load %struct.gfs2_inode*, %struct.gfs2_inode** %16, align 8
  %248 = load %struct.page*, %struct.page** %28, align 8
  %249 = call i32 @stuffed_readpage(%struct.gfs2_inode* %247, %struct.page* %248)
  store i32 %249, i32* %24, align 4
  br label %250

250:                                              ; preds = %246, %242
  br label %251

251:                                              ; preds = %250, %241
  br label %259

252:                                              ; preds = %218
  br label %253

253:                                              ; preds = %252, %240
  %254 = load %struct.page*, %struct.page** %28, align 8
  %255 = load i32, i32* %26, align 4
  %256 = load i32, i32* %27, align 4
  %257 = load i32, i32* @gfs2_block_map, align 4
  %258 = call i32 @block_prepare_write(%struct.page* %254, i32 %255, i32 %256, i32 %257)
  store i32 %258, i32* %24, align 4
  br label %259

259:                                              ; preds = %253, %251
  %260 = load i32, i32* %24, align 4
  %261 = icmp eq i32 %260, 0
  br i1 %261, label %262, label %263

262:                                              ; preds = %259
  store i32 0, i32* %8, align 4
  br label %319

263:                                              ; preds = %259
  %264 = load %struct.page*, %struct.page** %28, align 8
  %265 = call i32 @unlock_page(%struct.page* %264)
  %266 = load %struct.page*, %struct.page** %28, align 8
  %267 = call i32 @page_cache_release(%struct.page* %266)
  %268 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %17, align 8
  %269 = call i32 @gfs2_trans_end(%struct.gfs2_sbd* %268)
  %270 = load i32, i32* %11, align 4
  %271 = load i32, i32* %12, align 4
  %272 = add i32 %270, %271
  %273 = load %struct.gfs2_inode*, %struct.gfs2_inode** %16, align 8
  %274 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %273, i32 0, i32 1
  %275 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %274, i32 0, i32 0
  %276 = load i32, i32* %275, align 4
  %277 = icmp ugt i32 %272, %276
  br i1 %277, label %278, label %282

278:                                              ; preds = %263
  %279 = load %struct.gfs2_inode*, %struct.gfs2_inode** %16, align 8
  %280 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %279, i32 0, i32 1
  %281 = call i32 @gfs2_trim_blocks(%struct.TYPE_4__* %280)
  br label %282

282:                                              ; preds = %278, %263
  br label %286

283:                                              ; preds = %217
  %284 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %17, align 8
  %285 = call i32 @gfs2_trans_end(%struct.gfs2_sbd* %284)
  br label %286

286:                                              ; preds = %283, %282, %198
  %287 = load i32, i32* %23, align 4
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %289, label %295

289:                                              ; preds = %286
  %290 = load %struct.gfs2_inode*, %struct.gfs2_inode** %16, align 8
  %291 = call i32 @gfs2_inplace_release(%struct.gfs2_inode* %290)
  br label %292

292:                                              ; preds = %289, %129
  %293 = load %struct.gfs2_inode*, %struct.gfs2_inode** %16, align 8
  %294 = call i32 @gfs2_quota_unlock(%struct.gfs2_inode* %293)
  br label %295

295:                                              ; preds = %292, %286
  br label %296

296:                                              ; preds = %295, %118, %97
  %297 = load %struct.gfs2_inode*, %struct.gfs2_inode** %16, align 8
  %298 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %297, i32 0, i32 1
  %299 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %17, align 8
  %300 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %299, i32 0, i32 0
  %301 = load %struct.TYPE_4__*, %struct.TYPE_4__** %300, align 8
  %302 = icmp eq %struct.TYPE_4__* %298, %301
  br i1 %302, label %303, label %310

303:                                              ; preds = %296
  %304 = load %struct.gfs2_inode*, %struct.gfs2_inode** %18, align 8
  %305 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %304, i32 0, i32 0
  %306 = call i32 @gfs2_glock_dq(i32* %305)
  %307 = load %struct.gfs2_inode*, %struct.gfs2_inode** %18, align 8
  %308 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %307, i32 0, i32 0
  %309 = call i32 @gfs2_holder_uninit(i32* %308)
  br label %310

310:                                              ; preds = %303, %296
  %311 = load %struct.gfs2_inode*, %struct.gfs2_inode** %16, align 8
  %312 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %311, i32 0, i32 0
  %313 = call i32 @gfs2_glock_dq(i32* %312)
  br label %314

314:                                              ; preds = %310, %85, %65
  %315 = load %struct.gfs2_inode*, %struct.gfs2_inode** %16, align 8
  %316 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %315, i32 0, i32 0
  %317 = call i32 @gfs2_holder_uninit(i32* %316)
  %318 = load i32, i32* %24, align 4
  store i32 %318, i32* %8, align 4
  br label %319

319:                                              ; preds = %314, %262
  %320 = load i32, i32* %8, align 4
  ret i32 %320
}

declare dso_local %struct.gfs2_inode* @GFS2_I(i32) #1

declare dso_local %struct.gfs2_sbd* @GFS2_SB(i32) #1

declare dso_local i32 @gfs2_holder_init(i32, i32, i32, i32*) #1

declare dso_local i32 @gfs2_glock_nq(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @gfs2_glock_nq_init(i32, i32, i32, i32*) #1

declare dso_local i32 @gfs2_glock_dq(i32*) #1

declare dso_local i32 @gfs2_write_alloc_required(%struct.gfs2_inode*, i32, i32, i32*) #1

declare dso_local i64 @gfs2_is_jdata(%struct.gfs2_inode*) #1

declare dso_local i32 @gfs2_write_calc_reserv(%struct.gfs2_inode*, i32, i32*, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @gfs2_quota_lock_check(%struct.gfs2_inode*) #1

declare dso_local i32 @gfs2_inplace_reserve(%struct.gfs2_inode*, %struct.gfs2_alloc_parms*) #1

declare dso_local i64 @gfs2_rg_blocks(%struct.gfs2_inode*, i32) #1

declare dso_local i32 @gfs2_trans_begin(%struct.gfs2_sbd*, i32, i32) #1

declare dso_local %struct.page* @grab_cache_page_write_begin(%struct.address_space*, i32, i32) #1

declare dso_local i64 @gfs2_is_stuffed(%struct.gfs2_inode*) #1

declare dso_local i32 @gfs2_unstuff_dinode(%struct.gfs2_inode*, %struct.page*) #1

declare dso_local i32 @PageUptodate(%struct.page*) #1

declare dso_local i32 @stuffed_readpage(%struct.gfs2_inode*, %struct.page*) #1

declare dso_local i32 @block_prepare_write(%struct.page*, i32, i32, i32) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @page_cache_release(%struct.page*) #1

declare dso_local i32 @gfs2_trans_end(%struct.gfs2_sbd*) #1

declare dso_local i32 @gfs2_trim_blocks(%struct.TYPE_4__*) #1

declare dso_local i32 @gfs2_inplace_release(%struct.gfs2_inode*) #1

declare dso_local i32 @gfs2_quota_unlock(%struct.gfs2_inode*) #1

declare dso_local i32 @gfs2_holder_uninit(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
