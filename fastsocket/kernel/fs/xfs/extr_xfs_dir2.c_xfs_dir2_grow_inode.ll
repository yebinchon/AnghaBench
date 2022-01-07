; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_dir2.c_xfs_dir2_grow_inode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_dir2.c_xfs_dir2_grow_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32, i32, i32*, i32*, %struct.TYPE_19__* }
%struct.TYPE_19__ = type { %struct.TYPE_17__, %struct.TYPE_18__* }
%struct.TYPE_17__ = type { i64, i64 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_21__ = type { i64, i64 }

@XFS_DIR2_SPACE_SIZE = common dso_local global i32 0, align 4
@XFS_DATA_FORK = common dso_local global i32 0, align 4
@XFS_BMAPI_WRITE = common dso_local global i32 0, align 4
@XFS_BMAPI_METADATA = common dso_local global i32 0, align 4
@XFS_BMAPI_CONTIG = common dso_local global i32 0, align 4
@KM_SLEEP = common dso_local global i32 0, align 4
@XFS_BMAP_MAX_NMAP = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@XFS_DIR2_DATA_SPACE = common dso_local global i32 0, align 4
@XFS_ILOG_CORE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_dir2_grow_inode(%struct.TYPE_20__* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_19__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_21__, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_21__*, align 8
  %17 = alloca %struct.TYPE_18__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca i64, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %24 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @trace_xfs_dir2_grow_inode(%struct.TYPE_20__* %24, i32 %25)
  %27 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %27, i32 0, i32 4
  %29 = load %struct.TYPE_19__*, %struct.TYPE_19__** %28, align 8
  store %struct.TYPE_19__* %29, %struct.TYPE_19__** %10, align 8
  %30 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %30, i32 0, i32 3
  %32 = load i32*, i32** %31, align 8
  store i32* %32, i32** %19, align 8
  %33 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_18__*, %struct.TYPE_18__** %34, align 8
  store %struct.TYPE_18__* %35, %struct.TYPE_18__** %17, align 8
  %36 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* %20, align 8
  %40 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* @XFS_DIR2_SPACE_SIZE, align 4
  %43 = mul nsw i32 %41, %42
  %44 = call i64 @XFS_B_TO_FSBT(%struct.TYPE_18__* %40, i32 %43)
  store i64 %44, i64* %8, align 8
  %45 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %46 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %9, align 4
  %48 = load i32*, i32** %19, align 8
  %49 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* @XFS_DATA_FORK, align 4
  %52 = call i32 @xfs_bmap_first_unused(i32* %48, %struct.TYPE_19__* %49, i32 %50, i64* %8, i32 %51)
  store i32 %52, i32* %11, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %3
  %55 = load i32, i32* %11, align 4
  store i32 %55, i32* %4, align 4
  br label %288

56:                                               ; preds = %3
  store i32 1, i32* %18, align 4
  %57 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %57, i32 0, i32 2
  %59 = load i32*, i32** %58, align 8
  %60 = icmp ne i32* %59, null
  %61 = zext i1 %60 to i32
  %62 = call i32 @ASSERT(i32 %61)
  %63 = load i32*, i32** %19, align 8
  %64 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %65 = load i64, i64* %8, align 8
  %66 = load i32, i32* %9, align 4
  %67 = load i32, i32* @XFS_BMAPI_WRITE, align 4
  %68 = load i32, i32* @XFS_BMAPI_METADATA, align 4
  %69 = or i32 %67, %68
  %70 = load i32, i32* @XFS_BMAPI_CONTIG, align 4
  %71 = or i32 %69, %70
  %72 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %72, i32 0, i32 2
  %74 = load i32*, i32** %73, align 8
  %75 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @xfs_bmapi(i32* %63, %struct.TYPE_19__* %64, i64 %65, i32 %66, i32 %71, i32* %74, i32 %77, %struct.TYPE_21__* %14, i32* %18, i32 %80)
  store i32 %81, i32* %11, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %56
  %84 = load i32, i32* %11, align 4
  store i32 %84, i32* %4, align 4
  br label %288

85:                                               ; preds = %56
  %86 = load i32, i32* %18, align 4
  %87 = icmp sle i32 %86, 1
  %88 = zext i1 %87 to i32
  %89 = call i32 @ASSERT(i32 %88)
  %90 = load i32, i32* %18, align 4
  %91 = icmp eq i32 %90, 1
  br i1 %91, label %92, label %93

92:                                               ; preds = %85
  store %struct.TYPE_21__* %14, %struct.TYPE_21__** %16, align 8
  store i32 1, i32* %15, align 4
  br label %177

93:                                               ; preds = %85
  %94 = load i32, i32* %18, align 4
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %175

96:                                               ; preds = %93
  %97 = load i32, i32* %9, align 4
  %98 = icmp sgt i32 %97, 1
  br i1 %98, label %99, label %175

99:                                               ; preds = %96
  %100 = load i32, i32* %9, align 4
  %101 = sext i32 %100 to i64
  %102 = mul i64 16, %101
  %103 = trunc i64 %102 to i32
  %104 = load i32, i32* @KM_SLEEP, align 4
  %105 = call %struct.TYPE_21__* @kmem_alloc(i32 %103, i32 %104)
  store %struct.TYPE_21__* %105, %struct.TYPE_21__** %16, align 8
  %106 = load i64, i64* %8, align 8
  store i64 %106, i64* %21, align 8
  store i32 0, i32* %15, align 4
  br label %107

107:                                              ; preds = %155, %99
  %108 = load i64, i64* %21, align 8
  %109 = load i64, i64* %8, align 8
  %110 = load i32, i32* %9, align 4
  %111 = sext i32 %110 to i64
  %112 = add nsw i64 %109, %111
  %113 = icmp slt i64 %108, %112
  br i1 %113, label %114, label %174

114:                                              ; preds = %107
  %115 = load i32, i32* @XFS_BMAP_MAX_NMAP, align 4
  %116 = load i32, i32* %9, align 4
  %117 = call i32 @MIN(i32 %115, i32 %116)
  store i32 %117, i32* %18, align 4
  %118 = load i64, i64* %8, align 8
  %119 = load i32, i32* %9, align 4
  %120 = sext i32 %119 to i64
  %121 = add nsw i64 %118, %120
  %122 = load i64, i64* %21, align 8
  %123 = sub nsw i64 %121, %122
  %124 = trunc i64 %123 to i32
  store i32 %124, i32* %22, align 4
  %125 = load i32*, i32** %19, align 8
  %126 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %127 = load i64, i64* %21, align 8
  %128 = load i32, i32* %22, align 4
  %129 = load i32, i32* @XFS_BMAPI_WRITE, align 4
  %130 = load i32, i32* @XFS_BMAPI_METADATA, align 4
  %131 = or i32 %129, %130
  %132 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %133 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %132, i32 0, i32 2
  %134 = load i32*, i32** %133, align 8
  %135 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %139 = load i32, i32* %15, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %138, i64 %140
  %142 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %143 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @xfs_bmapi(i32* %125, %struct.TYPE_19__* %126, i64 %127, i32 %128, i32 %131, i32* %134, i32 %137, %struct.TYPE_21__* %141, i32* %18, i32 %144)
  store i32 %145, i32* %11, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %151

147:                                              ; preds = %114
  %148 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %149 = call i32 @kmem_free(%struct.TYPE_21__* %148)
  %150 = load i32, i32* %11, align 4
  store i32 %150, i32* %4, align 4
  br label %288

151:                                              ; preds = %114
  %152 = load i32, i32* %18, align 4
  %153 = icmp slt i32 %152, 1
  br i1 %153, label %154, label %155

154:                                              ; preds = %151
  br label %174

155:                                              ; preds = %151
  %156 = load i32, i32* %18, align 4
  %157 = load i32, i32* %15, align 4
  %158 = add nsw i32 %157, %156
  store i32 %158, i32* %15, align 4
  %159 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %160 = load i32, i32* %15, align 4
  %161 = sub nsw i32 %160, 1
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %159, i64 %162
  %164 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %167 = load i32, i32* %15, align 4
  %168 = sub nsw i32 %167, 1
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %166, i64 %169
  %171 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %170, i32 0, i32 1
  %172 = load i64, i64* %171, align 8
  %173 = add nsw i64 %165, %172
  store i64 %173, i64* %21, align 8
  br label %107

174:                                              ; preds = %154, %107
  br label %176

175:                                              ; preds = %96, %93
  store i32 0, i32* %15, align 4
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %16, align 8
  br label %176

176:                                              ; preds = %175, %174
  br label %177

177:                                              ; preds = %176, %92
  store i32 0, i32* %13, align 4
  store i32 0, i32* %12, align 4
  br label %178

178:                                              ; preds = %193, %177
  %179 = load i32, i32* %13, align 4
  %180 = load i32, i32* %15, align 4
  %181 = icmp slt i32 %179, %180
  br i1 %181, label %182, label %196

182:                                              ; preds = %178
  %183 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %184 = load i32, i32* %13, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %183, i64 %185
  %187 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %186, i32 0, i32 1
  %188 = load i64, i64* %187, align 8
  %189 = load i32, i32* %12, align 4
  %190 = sext i32 %189 to i64
  %191 = add nsw i64 %190, %188
  %192 = trunc i64 %191 to i32
  store i32 %192, i32* %12, align 4
  br label %193

193:                                              ; preds = %182
  %194 = load i32, i32* %13, align 4
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* %13, align 4
  br label %178

196:                                              ; preds = %178
  %197 = load i32, i32* %12, align 4
  %198 = load i32, i32* %9, align 4
  %199 = icmp ne i32 %197, %198
  br i1 %199, label %228, label %200

200:                                              ; preds = %196
  %201 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %202 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %201, i64 0
  %203 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %202, i32 0, i32 0
  %204 = load i64, i64* %203, align 8
  %205 = load i64, i64* %8, align 8
  %206 = icmp ne i64 %204, %205
  br i1 %206, label %228, label %207

207:                                              ; preds = %200
  %208 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %209 = load i32, i32* %15, align 4
  %210 = sub nsw i32 %209, 1
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %208, i64 %211
  %213 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %212, i32 0, i32 0
  %214 = load i64, i64* %213, align 8
  %215 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %216 = load i32, i32* %15, align 4
  %217 = sub nsw i32 %216, 1
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %215, i64 %218
  %220 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %219, i32 0, i32 1
  %221 = load i64, i64* %220, align 8
  %222 = add nsw i64 %214, %221
  %223 = load i64, i64* %8, align 8
  %224 = load i32, i32* %9, align 4
  %225 = sext i32 %224 to i64
  %226 = add nsw i64 %223, %225
  %227 = icmp ne i64 %222, %226
  br i1 %227, label %228, label %237

228:                                              ; preds = %207, %200, %196
  %229 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %230 = icmp ne %struct.TYPE_21__* %229, %14
  br i1 %230, label %231, label %234

231:                                              ; preds = %228
  %232 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %233 = call i32 @kmem_free(%struct.TYPE_21__* %232)
  br label %234

234:                                              ; preds = %231, %228
  %235 = load i32, i32* @ENOSPC, align 4
  %236 = call i32 @XFS_ERROR(i32 %235)
  store i32 %236, i32* %4, align 4
  br label %288

237:                                              ; preds = %207
  %238 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %239 = icmp ne %struct.TYPE_21__* %238, %14
  br i1 %239, label %240, label %243

240:                                              ; preds = %237
  %241 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %242 = call i32 @kmem_free(%struct.TYPE_21__* %241)
  br label %243

243:                                              ; preds = %240, %237
  %244 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %245 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %244, i32 0, i32 0
  %246 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %245, i32 0, i32 1
  %247 = load i64, i64* %246, align 8
  %248 = load i64, i64* %20, align 8
  %249 = sub nsw i64 %247, %248
  %250 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %251 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %250, i32 0, i32 0
  %252 = load i32, i32* %251, align 8
  %253 = sext i32 %252 to i64
  %254 = sub nsw i64 %253, %249
  %255 = trunc i64 %254 to i32
  store i32 %255, i32* %251, align 8
  %256 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %257 = load i64, i64* %8, align 8
  %258 = trunc i64 %257 to i32
  %259 = call i32 @xfs_dir2_da_to_db(%struct.TYPE_18__* %256, i32 %258)
  %260 = load i32*, i32** %7, align 8
  store i32 %259, i32* %260, align 4
  %261 = load i32, i32* %6, align 4
  %262 = load i32, i32* @XFS_DIR2_DATA_SPACE, align 4
  %263 = icmp eq i32 %261, %262
  br i1 %263, label %264, label %287

264:                                              ; preds = %243
  %265 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %266 = load i64, i64* %8, align 8
  %267 = load i32, i32* %9, align 4
  %268 = sext i32 %267 to i64
  %269 = add nsw i64 %266, %268
  %270 = call i64 @XFS_FSB_TO_B(%struct.TYPE_18__* %265, i64 %269)
  store i64 %270, i64* %23, align 8
  %271 = load i64, i64* %23, align 8
  %272 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %273 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %272, i32 0, i32 0
  %274 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %273, i32 0, i32 0
  %275 = load i64, i64* %274, align 8
  %276 = icmp sgt i64 %271, %275
  br i1 %276, label %277, label %286

277:                                              ; preds = %264
  %278 = load i64, i64* %23, align 8
  %279 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %280 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %279, i32 0, i32 0
  %281 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %280, i32 0, i32 0
  store i64 %278, i64* %281, align 8
  %282 = load i32*, i32** %19, align 8
  %283 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %284 = load i32, i32* @XFS_ILOG_CORE, align 4
  %285 = call i32 @xfs_trans_log_inode(i32* %282, %struct.TYPE_19__* %283, i32 %284)
  br label %286

286:                                              ; preds = %277, %264
  br label %287

287:                                              ; preds = %286, %243
  store i32 0, i32* %4, align 4
  br label %288

288:                                              ; preds = %287, %234, %147, %83, %54
  %289 = load i32, i32* %4, align 4
  ret i32 %289
}

declare dso_local i32 @trace_xfs_dir2_grow_inode(%struct.TYPE_20__*, i32) #1

declare dso_local i64 @XFS_B_TO_FSBT(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @xfs_bmap_first_unused(i32*, %struct.TYPE_19__*, i32, i64*, i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @xfs_bmapi(i32*, %struct.TYPE_19__*, i64, i32, i32, i32*, i32, %struct.TYPE_21__*, i32*, i32) #1

declare dso_local %struct.TYPE_21__* @kmem_alloc(i32, i32) #1

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i32 @kmem_free(%struct.TYPE_21__*) #1

declare dso_local i32 @XFS_ERROR(i32) #1

declare dso_local i32 @xfs_dir2_da_to_db(%struct.TYPE_18__*, i32) #1

declare dso_local i64 @XFS_FSB_TO_B(%struct.TYPE_18__*, i64) #1

declare dso_local i32 @xfs_trans_log_inode(i32*, %struct.TYPE_19__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
