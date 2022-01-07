; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_ops_inode.c_gfs2_fallocate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_ops_inode.c_gfs2_fallocate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.gfs2_sbd = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.gfs2_inode = type { i32, i32 }
%struct.gfs2_alloc_parms = type { i32, i32 }

@UINT_MAX = common dso_local global i32 0, align 4
@FALLOC_FL_KEEP_SIZE = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i64 0, align 8
@LM_ST_EXCLUSIVE = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@RES_DINODE = common dso_local global i32 0, align 4
@RES_STATFS = common dso_local global i32 0, align 4
@RES_QUOTA = common dso_local global i32 0, align 4
@RES_RG_HDR = common dso_local global i32 0, align 4
@PAGE_CACHE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.inode*, i32, i32, i32)* @gfs2_fallocate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @gfs2_fallocate(%struct.inode* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.gfs2_sbd*, align 8
  %11 = alloca %struct.gfs2_inode*, align 8
  %12 = alloca %struct.gfs2_alloc_parms, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %23 = load %struct.inode*, %struct.inode** %6, align 8
  %24 = call %struct.gfs2_sbd* @GFS2_SB(%struct.inode* %23)
  store %struct.gfs2_sbd* %24, %struct.gfs2_sbd** %10, align 8
  %25 = load %struct.inode*, %struct.inode** %6, align 8
  %26 = call %struct.gfs2_inode* @GFS2_I(%struct.inode* %25)
  store %struct.gfs2_inode* %26, %struct.gfs2_inode** %11, align 8
  %27 = bitcast %struct.gfs2_alloc_parms* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %27, i8 0, i64 8, i1 false)
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %28 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %10, align 8
  %29 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = sub nsw i32 %31, 1
  %33 = xor i32 %32, -1
  store i32 %33, i32* %20, align 4
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* %9, align 4
  %36 = add nsw i32 %34, %35
  %37 = sub nsw i32 %36, 1
  %38 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %10, align 8
  %39 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = ashr i32 %37, %41
  store i32 %42, i32* %21, align 4
  %43 = load i32, i32* @UINT_MAX, align 4
  %44 = load i32, i32* %20, align 4
  %45 = and i32 %43, %44
  store i32 %45, i32* %22, align 4
  %46 = load i32, i32* %21, align 4
  %47 = add nsw i32 %46, 1
  %48 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %10, align 8
  %49 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = shl i32 %47, %51
  store i32 %52, i32* %21, align 4
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* @FALLOC_FL_KEEP_SIZE, align 4
  %55 = xor i32 %54, -1
  %56 = and i32 %53, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %4
  %59 = load i64, i64* @EOPNOTSUPP, align 8
  %60 = sub nsw i64 0, %59
  store i64 %60, i64* %5, align 8
  br label %290

61:                                               ; preds = %4
  %62 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %10, align 8
  %63 = call i32 @gfs2_rindex_update(%struct.gfs2_sbd* %62)
  store i32 %63, i32* %19, align 4
  %64 = load i32, i32* %19, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %61
  %67 = load i32, i32* %19, align 4
  %68 = sext i32 %67 to i64
  store i64 %68, i64* %5, align 8
  br label %290

69:                                               ; preds = %61
  %70 = load i32, i32* %20, align 4
  %71 = load i32, i32* %8, align 4
  %72 = and i32 %71, %70
  store i32 %72, i32* %8, align 4
  %73 = load i32, i32* %21, align 4
  %74 = load i32, i32* %8, align 4
  %75 = sub nsw i32 %73, %74
  store i32 %75, i32* %9, align 4
  %76 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %10, align 8
  %77 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %10, align 8
  %80 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = mul nsw i32 %78, %82
  %84 = sdiv i32 %83, 2
  store i32 %84, i32* %17, align 4
  %85 = load i32, i32* %17, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %89, label %87

87:                                               ; preds = %69
  %88 = load i32, i32* @UINT_MAX, align 4
  store i32 %88, i32* %17, align 4
  br label %89

89:                                               ; preds = %87, %69
  %90 = load i32, i32* %20, align 4
  %91 = load i32, i32* %17, align 4
  %92 = and i32 %91, %90
  store i32 %92, i32* %17, align 4
  %93 = load i32, i32* %17, align 4
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %100

95:                                               ; preds = %89
  %96 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %10, align 8
  %97 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  store i32 %99, i32* %17, align 4
  br label %100

100:                                              ; preds = %95, %89
  %101 = load %struct.gfs2_inode*, %struct.gfs2_inode** %11, align 8
  %102 = call i32 @gfs2_rs_alloc(%struct.gfs2_inode* %101)
  store i32 %102, i32* %19, align 4
  %103 = load i32, i32* %19, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %100
  %106 = load i32, i32* %19, align 4
  %107 = sext i32 %106 to i64
  store i64 %107, i64* %5, align 8
  br label %290

108:                                              ; preds = %100
  %109 = load %struct.gfs2_inode*, %struct.gfs2_inode** %11, align 8
  %110 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @LM_ST_EXCLUSIVE, align 4
  %113 = load %struct.gfs2_inode*, %struct.gfs2_inode** %11, align 8
  %114 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %113, i32 0, i32 0
  %115 = call i32 @gfs2_holder_init(i32 %111, i32 %112, i32 0, i32* %114)
  %116 = load %struct.gfs2_inode*, %struct.gfs2_inode** %11, align 8
  %117 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %116, i32 0, i32 0
  %118 = call i32 @gfs2_glock_nq(i32* %117)
  store i32 %118, i32* %19, align 4
  %119 = load i32, i32* %19, align 4
  %120 = call i64 @unlikely(i32 %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %108
  br label %284

123:                                              ; preds = %108
  %124 = load %struct.inode*, %struct.inode** %6, align 8
  %125 = load i32, i32* %8, align 4
  %126 = load i32, i32* %9, align 4
  %127 = call i32 @gfs2_size_hint(%struct.inode* %124, i32 %125, i32 %126)
  br label %128

128:                                              ; preds = %262, %144, %123
  %129 = load i32, i32* %9, align 4
  %130 = icmp sgt i32 %129, 0
  br i1 %130, label %131, label %273

131:                                              ; preds = %128
  %132 = load i32, i32* %9, align 4
  %133 = load i32, i32* %17, align 4
  %134 = icmp slt i32 %132, %133
  br i1 %134, label %135, label %137

135:                                              ; preds = %131
  %136 = load i32, i32* %9, align 4
  store i32 %136, i32* %17, align 4
  br label %137

137:                                              ; preds = %135, %131
  %138 = load %struct.gfs2_inode*, %struct.gfs2_inode** %11, align 8
  %139 = load i32, i32* %8, align 4
  %140 = load i32, i32* %17, align 4
  %141 = call i32 @gfs2_write_alloc_required(%struct.gfs2_inode* %138, i32 %139, i32 %140, i32* %13)
  %142 = load i32, i32* %13, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %151, label %144

144:                                              ; preds = %137
  %145 = load i32, i32* %17, align 4
  %146 = load i32, i32* %9, align 4
  %147 = sub nsw i32 %146, %145
  store i32 %147, i32* %9, align 4
  %148 = load i32, i32* %17, align 4
  %149 = load i32, i32* %8, align 4
  %150 = add nsw i32 %149, %148
  store i32 %150, i32* %8, align 4
  br label %128

151:                                              ; preds = %137
  %152 = load %struct.gfs2_inode*, %struct.gfs2_inode** %11, align 8
  %153 = call i32 @gfs2_quota_lock_check(%struct.gfs2_inode* %152)
  store i32 %153, i32* %19, align 4
  %154 = load i32, i32* %19, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %157

156:                                              ; preds = %151
  br label %280

157:                                              ; preds = %151
  br label %158

158:                                              ; preds = %195, %157
  %159 = load %struct.gfs2_inode*, %struct.gfs2_inode** %11, align 8
  %160 = load i32, i32* %17, align 4
  %161 = call i32 @gfs2_write_calc_reserv(%struct.gfs2_inode* %159, i32 %160, i32* %14, i32* %15)
  %162 = load i32, i32* %14, align 4
  %163 = load i32, i32* %15, align 4
  %164 = add i32 %162, %163
  %165 = getelementptr inbounds %struct.gfs2_alloc_parms, %struct.gfs2_alloc_parms* %12, i32 0, i32 0
  store i32 %164, i32* %165, align 4
  %166 = load %struct.gfs2_inode*, %struct.gfs2_inode** %11, align 8
  %167 = call i32 @gfs2_inplace_reserve(%struct.gfs2_inode* %166, %struct.gfs2_alloc_parms* %12)
  store i32 %167, i32* %19, align 4
  %168 = load i32, i32* %19, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %197

170:                                              ; preds = %158
  %171 = load i32, i32* %19, align 4
  %172 = load i32, i32* @ENOSPC, align 4
  %173 = sub nsw i32 0, %172
  %174 = icmp eq i32 %171, %173
  br i1 %174, label %175, label %196

175:                                              ; preds = %170
  %176 = load i32, i32* %17, align 4
  %177 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %10, align 8
  %178 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %177, i32 0, i32 1
  %179 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = icmp sgt i32 %176, %180
  br i1 %181, label %182, label %196

182:                                              ; preds = %175
  %183 = load i32, i32* %17, align 4
  %184 = ashr i32 %183, 1
  store i32 %184, i32* %17, align 4
  %185 = load i32, i32* %20, align 4
  %186 = load i32, i32* %17, align 4
  %187 = and i32 %186, %185
  store i32 %187, i32* %17, align 4
  %188 = load i32, i32* %17, align 4
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %190, label %195

190:                                              ; preds = %182
  %191 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %10, align 8
  %192 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %191, i32 0, i32 1
  %193 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 4
  store i32 %194, i32* %17, align 4
  br label %195

195:                                              ; preds = %190, %182
  br label %158

196:                                              ; preds = %175, %170
  br label %277

197:                                              ; preds = %158
  %198 = load i32, i32* %17, align 4
  store i32 %198, i32* %18, align 4
  %199 = load %struct.gfs2_inode*, %struct.gfs2_inode** %11, align 8
  %200 = load i32, i32* %9, align 4
  %201 = load i32, i32* %22, align 4
  %202 = icmp sgt i32 %200, %201
  br i1 %202, label %203, label %205

203:                                              ; preds = %197
  %204 = load i32, i32* %22, align 4
  br label %207

205:                                              ; preds = %197
  %206 = load i32, i32* %9, align 4
  br label %207

207:                                              ; preds = %205, %203
  %208 = phi i32 [ %204, %203 ], [ %206, %205 ]
  %209 = call i32 @calc_max_reserv(%struct.gfs2_inode* %199, i32 %208, i32* %18, i32* %14, i32* %15)
  %210 = load i32, i32* @RES_DINODE, align 4
  %211 = load i32, i32* %15, align 4
  %212 = add i32 %210, %211
  %213 = load i32, i32* @RES_STATFS, align 4
  %214 = add i32 %212, %213
  %215 = load i32, i32* @RES_QUOTA, align 4
  %216 = add i32 %214, %215
  %217 = load i32, i32* @RES_RG_HDR, align 4
  %218 = add i32 %216, %217
  %219 = load %struct.gfs2_inode*, %struct.gfs2_inode** %11, align 8
  %220 = load i32, i32* %14, align 4
  %221 = load i32, i32* %15, align 4
  %222 = add i32 %220, %221
  %223 = call i32 @gfs2_rg_blocks(%struct.gfs2_inode* %219, i32 %222)
  %224 = add i32 %218, %223
  store i32 %224, i32* %16, align 4
  %225 = load %struct.gfs2_inode*, %struct.gfs2_inode** %11, align 8
  %226 = call i64 @gfs2_is_jdata(%struct.gfs2_inode* %225)
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %228, label %238

228:                                              ; preds = %207
  %229 = load i32, i32* %14, align 4
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %233

231:                                              ; preds = %228
  %232 = load i32, i32* %14, align 4
  br label %234

233:                                              ; preds = %228
  br label %234

234:                                              ; preds = %233, %231
  %235 = phi i32 [ %232, %231 ], [ 1, %233 ]
  %236 = load i32, i32* %16, align 4
  %237 = add i32 %236, %235
  store i32 %237, i32* %16, align 4
  br label %238

238:                                              ; preds = %234, %207
  %239 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %10, align 8
  %240 = load i32, i32* %16, align 4
  %241 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %242 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %10, align 8
  %243 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %242, i32 0, i32 1
  %244 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 4
  %246 = sdiv i32 %241, %245
  %247 = call i32 @gfs2_trans_begin(%struct.gfs2_sbd* %239, i32 %240, i32 %246)
  store i32 %247, i32* %19, align 4
  %248 = load i32, i32* %19, align 4
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %251

250:                                              ; preds = %238
  br label %274

251:                                              ; preds = %238
  %252 = load %struct.inode*, %struct.inode** %6, align 8
  %253 = load i32, i32* %8, align 4
  %254 = load i32, i32* %18, align 4
  %255 = load i32, i32* %7, align 4
  %256 = call i32 @fallocate_chunk(%struct.inode* %252, i32 %253, i32 %254, i32 %255)
  store i32 %256, i32* %19, align 4
  %257 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %10, align 8
  %258 = call i32 @gfs2_trans_end(%struct.gfs2_sbd* %257)
  %259 = load i32, i32* %19, align 4
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %261, label %262

261:                                              ; preds = %251
  br label %274

262:                                              ; preds = %251
  %263 = load i32, i32* %18, align 4
  %264 = load i32, i32* %9, align 4
  %265 = sub nsw i32 %264, %263
  store i32 %265, i32* %9, align 4
  %266 = load i32, i32* %18, align 4
  %267 = load i32, i32* %8, align 4
  %268 = add nsw i32 %267, %266
  store i32 %268, i32* %8, align 4
  %269 = load %struct.gfs2_inode*, %struct.gfs2_inode** %11, align 8
  %270 = call i32 @gfs2_inplace_release(%struct.gfs2_inode* %269)
  %271 = load %struct.gfs2_inode*, %struct.gfs2_inode** %11, align 8
  %272 = call i32 @gfs2_quota_unlock(%struct.gfs2_inode* %271)
  br label %128

273:                                              ; preds = %128
  br label %280

274:                                              ; preds = %261, %250
  %275 = load %struct.gfs2_inode*, %struct.gfs2_inode** %11, align 8
  %276 = call i32 @gfs2_inplace_release(%struct.gfs2_inode* %275)
  br label %277

277:                                              ; preds = %274, %196
  %278 = load %struct.gfs2_inode*, %struct.gfs2_inode** %11, align 8
  %279 = call i32 @gfs2_quota_unlock(%struct.gfs2_inode* %278)
  br label %280

280:                                              ; preds = %277, %273, %156
  %281 = load %struct.gfs2_inode*, %struct.gfs2_inode** %11, align 8
  %282 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %281, i32 0, i32 0
  %283 = call i32 @gfs2_glock_dq(i32* %282)
  br label %284

284:                                              ; preds = %280, %122
  %285 = load %struct.gfs2_inode*, %struct.gfs2_inode** %11, align 8
  %286 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %285, i32 0, i32 0
  %287 = call i32 @gfs2_holder_uninit(i32* %286)
  %288 = load i32, i32* %19, align 4
  %289 = sext i32 %288 to i64
  store i64 %289, i64* %5, align 8
  br label %290

290:                                              ; preds = %284, %105, %66, %58
  %291 = load i64, i64* %5, align 8
  ret i64 %291
}

declare dso_local %struct.gfs2_sbd* @GFS2_SB(%struct.inode*) #1

declare dso_local %struct.gfs2_inode* @GFS2_I(%struct.inode*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @gfs2_rindex_update(%struct.gfs2_sbd*) #1

declare dso_local i32 @gfs2_rs_alloc(%struct.gfs2_inode*) #1

declare dso_local i32 @gfs2_holder_init(i32, i32, i32, i32*) #1

declare dso_local i32 @gfs2_glock_nq(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @gfs2_size_hint(%struct.inode*, i32, i32) #1

declare dso_local i32 @gfs2_write_alloc_required(%struct.gfs2_inode*, i32, i32, i32*) #1

declare dso_local i32 @gfs2_quota_lock_check(%struct.gfs2_inode*) #1

declare dso_local i32 @gfs2_write_calc_reserv(%struct.gfs2_inode*, i32, i32*, i32*) #1

declare dso_local i32 @gfs2_inplace_reserve(%struct.gfs2_inode*, %struct.gfs2_alloc_parms*) #1

declare dso_local i32 @calc_max_reserv(%struct.gfs2_inode*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @gfs2_rg_blocks(%struct.gfs2_inode*, i32) #1

declare dso_local i64 @gfs2_is_jdata(%struct.gfs2_inode*) #1

declare dso_local i32 @gfs2_trans_begin(%struct.gfs2_sbd*, i32, i32) #1

declare dso_local i32 @fallocate_chunk(%struct.inode*, i32, i32, i32) #1

declare dso_local i32 @gfs2_trans_end(%struct.gfs2_sbd*) #1

declare dso_local i32 @gfs2_inplace_release(%struct.gfs2_inode*) #1

declare dso_local i32 @gfs2_quota_unlock(%struct.gfs2_inode*) #1

declare dso_local i32 @gfs2_glock_dq(i32*) #1

declare dso_local i32 @gfs2_holder_uninit(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
