; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/zpool/extr_zpool_vdev.c_get_replication.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/zpool/extr_zpool_vdev.c_get_replication.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i32, i64, i32 }
%struct.stat64 = type { i64 }

@ZPOOL_CONFIG_CHILDREN = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i64 0, align 8
@ZPOOL_CONFIG_IS_LOG = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_TYPE = common dso_local global i32 0, align 4
@VDEV_TYPE_RAIDZ = common dso_local global i8* null, align 8
@ZPOOL_CONFIG_NPARITY = common dso_local global i32 0, align 4
@VDEV_TYPE_REPLACING = common dso_local global i8* null, align 8
@VDEV_TYPE_SPARE = common dso_local global i8* null, align 8
@ZPOOL_CONFIG_PATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [66 x i8] c"mismatched replication level: %s contains both files and devices\0A\00", align 1
@B_TRUE = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@MAXOFFSET_T = common dso_local global i64 0, align 8
@ZPOOL_FUZZ = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [40 x i8] c"%s contains devices of different sizes\0A\00", align 1
@.str.2 = private unnamed_addr constant [64 x i8] c"mismatched replication level: both %s and %s vdevs are present\0A\00", align 1
@.str.3 = private unnamed_addr constant [85 x i8] c"mismatched replication level: both %llu and %llu device parity %s vdevs are present\0A\00", align 1
@.str.4 = private unnamed_addr constant [79 x i8] c"mismatched replication level: both %llu-way and %llu-way %s vdevs are present\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_5__* (i32*, i32)* @get_replication to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_5__* @get_replication(i32* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32**, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32**, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.TYPE_5__, align 8
  %15 = alloca %struct.TYPE_5__, align 8
  %16 = alloca %struct.TYPE_5__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca %struct.stat64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32**, align 8
  %30 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %31 = bitcast %struct.TYPE_5__* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %31, i8 0, i64 32, i1 false)
  %32 = call %struct.TYPE_5__* @safe_malloc(i32 32)
  store %struct.TYPE_5__* %32, %struct.TYPE_5__** %16, align 8
  %33 = load i32*, i32** %4, align 8
  %34 = load i32, i32* @ZPOOL_CONFIG_CHILDREN, align 4
  %35 = call i64 @nvlist_lookup_nvlist_array(i32* %33, i32 %34, i32*** %6, i64* %8)
  %36 = icmp eq i64 %35, 0
  %37 = zext i1 %36 to i32
  %38 = call i32 @verify(i32 %37)
  store i64 0, i64* %7, align 8
  br label %39

39:                                               ; preds = %366, %2
  %40 = load i64, i64* %7, align 8
  %41 = load i64, i64* %8, align 8
  %42 = icmp ult i64 %40, %41
  br i1 %42, label %43, label %369

43:                                               ; preds = %39
  %44 = load i64, i64* @B_FALSE, align 8
  store i64 %44, i64* %18, align 8
  %45 = load i32**, i32*** %6, align 8
  %46 = load i64, i64* %7, align 8
  %47 = getelementptr inbounds i32*, i32** %45, i64 %46
  %48 = load i32*, i32** %47, align 8
  store i32* %48, i32** %12, align 8
  %49 = load i32*, i32** %12, align 8
  %50 = load i32, i32* @ZPOOL_CONFIG_IS_LOG, align 4
  %51 = call i32 @nvlist_lookup_uint64(i32* %49, i32 %50, i64* %18)
  %52 = load i64, i64* %18, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %43
  br label %366

55:                                               ; preds = %43
  %56 = load i32*, i32** %12, align 8
  %57 = load i32, i32* @ZPOOL_CONFIG_TYPE, align 4
  %58 = call i64 @nvlist_lookup_string(i32* %56, i32 %57, i8** %13)
  %59 = icmp eq i64 %58, 0
  %60 = zext i1 %59 to i32
  %61 = call i32 @verify(i32 %60)
  %62 = load i32*, i32** %12, align 8
  %63 = load i32, i32* @ZPOOL_CONFIG_CHILDREN, align 4
  %64 = call i64 @nvlist_lookup_nvlist_array(i32* %62, i32 %63, i32*** %9, i64* %11)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %55
  %67 = load i8*, i8** %13, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  store i8* %67, i8** %68, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 1
  store i32 1, i32* %69, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 2
  store i64 0, i64* %70, align 8
  br label %279

71:                                               ; preds = %55
  %72 = load i8*, i8** %13, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  store i8* %72, i8** %73, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 1
  store i32 0, i32* %74, align 8
  %75 = load i8*, i8** %13, align 8
  %76 = load i8*, i8** @VDEV_TYPE_RAIDZ, align 8
  %77 = call i64 @strcmp(i8* %75, i8* %76)
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %79, label %92

79:                                               ; preds = %71
  %80 = load i32*, i32** %12, align 8
  %81 = load i32, i32* @ZPOOL_CONFIG_NPARITY, align 4
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 2
  %83 = call i32 @nvlist_lookup_uint64(i32* %80, i32 %81, i64* %82)
  %84 = icmp eq i32 %83, 0
  %85 = zext i1 %84 to i32
  %86 = call i32 @verify(i32 %85)
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  %90 = zext i1 %89 to i32
  %91 = call i32 @assert(i32 %90)
  br label %94

92:                                               ; preds = %71
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 2
  store i64 0, i64* %93, align 8
  br label %94

94:                                               ; preds = %92, %79
  store i8* null, i8** %13, align 8
  store i32 0, i32* %17, align 4
  store i64 -1, i64* %19, align 8
  store i64 0, i64* %10, align 8
  br label %95

95:                                               ; preds = %275, %94
  %96 = load i64, i64* %10, align 8
  %97 = load i64, i64* %11, align 8
  %98 = icmp ult i64 %96, %97
  br i1 %98, label %99, label %278

99:                                               ; preds = %95
  %100 = load i32**, i32*** %9, align 8
  %101 = load i64, i64* %10, align 8
  %102 = getelementptr inbounds i32*, i32** %100, i64 %101
  %103 = load i32*, i32** %102, align 8
  store i32* %103, i32** %22, align 8
  store i64 -1, i64* %25, align 8
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %104, align 8
  %107 = load i32*, i32** %22, align 8
  %108 = load i32, i32* @ZPOOL_CONFIG_TYPE, align 4
  %109 = call i64 @nvlist_lookup_string(i32* %107, i32 %108, i8** %26)
  %110 = icmp eq i64 %109, 0
  %111 = zext i1 %110 to i32
  %112 = call i32 @verify(i32 %111)
  %113 = load i8*, i8** %26, align 8
  %114 = load i8*, i8** @VDEV_TYPE_REPLACING, align 8
  %115 = call i64 @strcmp(i8* %113, i8* %114)
  %116 = icmp eq i64 %115, 0
  %117 = zext i1 %116 to i32
  store i32 %117, i32* %20, align 4
  %118 = load i8*, i8** %26, align 8
  %119 = load i8*, i8** @VDEV_TYPE_SPARE, align 8
  %120 = call i64 @strcmp(i8* %118, i8* %119)
  %121 = icmp eq i64 %120, 0
  %122 = zext i1 %121 to i32
  store i32 %122, i32* %21, align 4
  %123 = load i32, i32* %20, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %128, label %125

125:                                              ; preds = %99
  %126 = load i32, i32* %21, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %180

128:                                              ; preds = %125, %99
  %129 = load i32*, i32** %22, align 8
  %130 = load i32, i32* @ZPOOL_CONFIG_CHILDREN, align 4
  %131 = call i64 @nvlist_lookup_nvlist_array(i32* %129, i32 %130, i32*** %29, i64* %30)
  %132 = icmp eq i64 %131, 0
  %133 = zext i1 %132 to i32
  %134 = call i32 @verify(i32 %133)
  %135 = load i32, i32* %20, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %140

137:                                              ; preds = %128
  %138 = load i64, i64* %30, align 8
  %139 = icmp eq i64 %138, 2
  br i1 %139, label %148, label %140

140:                                              ; preds = %137, %128
  %141 = load i32, i32* %21, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %146

143:                                              ; preds = %140
  %144 = load i64, i64* %30, align 8
  %145 = icmp uge i64 %144, 2
  br label %146

146:                                              ; preds = %143, %140
  %147 = phi i1 [ false, %140 ], [ %145, %143 ]
  br label %148

148:                                              ; preds = %146, %137
  %149 = phi i1 [ true, %137 ], [ %147, %146 ]
  %150 = zext i1 %149 to i32
  %151 = call i32 @assert(i32 %150)
  %152 = load i32**, i32*** %29, align 8
  %153 = getelementptr inbounds i32*, i32** %152, i64 0
  %154 = load i32*, i32** %153, align 8
  store i32* %154, i32** %22, align 8
  %155 = load i32*, i32** %22, align 8
  %156 = load i32, i32* @ZPOOL_CONFIG_TYPE, align 4
  %157 = call i64 @nvlist_lookup_string(i32* %155, i32 %156, i8** %26)
  %158 = icmp eq i64 %157, 0
  %159 = zext i1 %158 to i32
  %160 = call i32 @verify(i32 %159)
  %161 = load i8*, i8** %26, align 8
  %162 = load i8*, i8** @VDEV_TYPE_SPARE, align 8
  %163 = call i64 @strcmp(i8* %161, i8* %162)
  %164 = icmp eq i64 %163, 0
  br i1 %164, label %165, label %179

165:                                              ; preds = %148
  %166 = load i32*, i32** %22, align 8
  %167 = load i32, i32* @ZPOOL_CONFIG_CHILDREN, align 4
  %168 = call i64 @nvlist_lookup_nvlist_array(i32* %166, i32 %167, i32*** %29, i64* %30)
  %169 = icmp eq i64 %168, 0
  %170 = zext i1 %169 to i32
  %171 = call i32 @verify(i32 %170)
  %172 = load i64, i64* %30, align 8
  %173 = icmp uge i64 %172, 2
  %174 = zext i1 %173 to i32
  %175 = call i32 @assert(i32 %174)
  %176 = load i32**, i32*** %29, align 8
  %177 = getelementptr inbounds i32*, i32** %176, i64 0
  %178 = load i32*, i32** %177, align 8
  store i32* %178, i32** %22, align 8
  br label %179

179:                                              ; preds = %165, %148
  br label %180

180:                                              ; preds = %179, %125
  %181 = load i32*, i32** %22, align 8
  %182 = load i32, i32* @ZPOOL_CONFIG_PATH, align 4
  %183 = call i64 @nvlist_lookup_string(i32* %181, i32 %182, i8** %23)
  %184 = icmp eq i64 %183, 0
  %185 = zext i1 %184 to i32
  %186 = call i32 @verify(i32 %185)
  %187 = load i32, i32* %17, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %214, label %189

189:                                              ; preds = %180
  %190 = load i8*, i8** %13, align 8
  %191 = icmp ne i8* %190, null
  br i1 %191, label %192, label %214

192:                                              ; preds = %189
  %193 = load i8*, i8** %13, align 8
  %194 = load i8*, i8** %26, align 8
  %195 = call i64 @strcmp(i8* %193, i8* %194)
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %214

197:                                              ; preds = %192
  %198 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %199 = icmp ne %struct.TYPE_5__* %198, null
  br i1 %199, label %200, label %203

200:                                              ; preds = %197
  %201 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %202 = call i32 @free(%struct.TYPE_5__* %201)
  br label %203

203:                                              ; preds = %200, %197
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %16, align 8
  %204 = load i32, i32* %5, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %211

206:                                              ; preds = %203
  %207 = call i32 @gettext(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0))
  %208 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %209 = load i8*, i8** %208, align 8
  %210 = call i32 (i32, ...) @vdev_error(i32 %207, i8* %209)
  br label %212

211:                                              ; preds = %203
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %3, align 8
  br label %378

212:                                              ; preds = %206
  %213 = load i32, i32* @B_TRUE, align 4
  store i32 %213, i32* %17, align 4
  br label %214

214:                                              ; preds = %212, %192, %189, %180
  %215 = load i8*, i8** %23, align 8
  %216 = load i32, i32* @O_RDONLY, align 4
  %217 = call i32 @open(i8* %215, i32 %216)
  store i32 %217, i32* %27, align 4
  %218 = icmp sge i32 %217, 0
  br i1 %218, label %219, label %224

219:                                              ; preds = %214
  %220 = load i32, i32* %27, align 4
  %221 = call i32 @fstat64(i32 %220, %struct.stat64* %24)
  store i32 %221, i32* %28, align 4
  %222 = load i32, i32* %27, align 4
  %223 = call i32 @close(i32 %222)
  br label %227

224:                                              ; preds = %214
  %225 = load i8*, i8** %23, align 8
  %226 = call i32 @stat64(i8* %225, %struct.stat64* %24)
  store i32 %226, i32* %28, align 4
  br label %227

227:                                              ; preds = %224, %219
  %228 = load i32, i32* %28, align 4
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %239, label %230

230:                                              ; preds = %227
  %231 = getelementptr inbounds %struct.stat64, %struct.stat64* %24, i32 0, i32 0
  %232 = load i64, i64* %231, align 8
  %233 = icmp eq i64 %232, 0
  br i1 %233, label %239, label %234

234:                                              ; preds = %230
  %235 = getelementptr inbounds %struct.stat64, %struct.stat64* %24, i32 0, i32 0
  %236 = load i64, i64* %235, align 8
  %237 = load i64, i64* @MAXOFFSET_T, align 8
  %238 = icmp eq i64 %236, %237
  br i1 %238, label %239, label %240

239:                                              ; preds = %234, %230, %227
  br label %275

240:                                              ; preds = %234
  %241 = getelementptr inbounds %struct.stat64, %struct.stat64* %24, i32 0, i32 0
  %242 = load i64, i64* %241, align 8
  store i64 %242, i64* %25, align 8
  %243 = load i32, i32* %17, align 4
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %272, label %245

245:                                              ; preds = %240
  %246 = load i64, i64* %19, align 8
  %247 = icmp ne i64 %246, -1
  br i1 %247, label %248, label %272

248:                                              ; preds = %245
  %249 = load i64, i64* %25, align 8
  %250 = load i64, i64* %19, align 8
  %251 = sub i64 %249, %250
  %252 = call i64 @labs(i64 %251)
  %253 = load i64, i64* @ZPOOL_FUZZ, align 8
  %254 = icmp sgt i64 %252, %253
  br i1 %254, label %255, label %272

255:                                              ; preds = %248
  %256 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %257 = icmp ne %struct.TYPE_5__* %256, null
  br i1 %257, label %258, label %261

258:                                              ; preds = %255
  %259 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %260 = call i32 @free(%struct.TYPE_5__* %259)
  br label %261

261:                                              ; preds = %258, %255
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %16, align 8
  %262 = load i32, i32* %5, align 4
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %264, label %269

264:                                              ; preds = %261
  %265 = call i32 @gettext(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %266 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %267 = load i8*, i8** %266, align 8
  %268 = call i32 (i32, ...) @vdev_error(i32 %265, i8* %267)
  br label %270

269:                                              ; preds = %261
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %3, align 8
  br label %378

270:                                              ; preds = %264
  %271 = load i32, i32* @B_TRUE, align 4
  store i32 %271, i32* %17, align 4
  br label %272

272:                                              ; preds = %270, %248, %245, %240
  %273 = load i8*, i8** %26, align 8
  store i8* %273, i8** %13, align 8
  %274 = load i64, i64* %25, align 8
  store i64 %274, i64* %19, align 8
  br label %275

275:                                              ; preds = %272, %239
  %276 = load i64, i64* %10, align 8
  %277 = add i64 %276, 1
  store i64 %277, i64* %10, align 8
  br label %95

278:                                              ; preds = %95
  br label %279

279:                                              ; preds = %278, %66
  %280 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %281 = load i8*, i8** %280, align 8
  %282 = icmp ne i8* %281, null
  br i1 %282, label %283, label %363

283:                                              ; preds = %279
  %284 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %285 = load i8*, i8** %284, align 8
  %286 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %287 = load i8*, i8** %286, align 8
  %288 = call i64 @strcmp(i8* %285, i8* %287)
  %289 = icmp ne i64 %288, 0
  br i1 %289, label %290, label %308

290:                                              ; preds = %283
  %291 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %292 = icmp ne %struct.TYPE_5__* %291, null
  br i1 %292, label %293, label %296

293:                                              ; preds = %290
  %294 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %295 = call i32 @free(%struct.TYPE_5__* %294)
  br label %296

296:                                              ; preds = %293, %290
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %16, align 8
  %297 = load i32, i32* %5, align 4
  %298 = icmp ne i32 %297, 0
  br i1 %298, label %299, label %306

299:                                              ; preds = %296
  %300 = call i32 @gettext(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.2, i64 0, i64 0))
  %301 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %302 = load i8*, i8** %301, align 8
  %303 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %304 = load i8*, i8** %303, align 8
  %305 = call i32 (i32, ...) @vdev_error(i32 %300, i8* %302, i8* %304)
  br label %307

306:                                              ; preds = %296
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %3, align 8
  br label %378

307:                                              ; preds = %299
  br label %362

308:                                              ; preds = %283
  %309 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 2
  %310 = load i64, i64* %309, align 8
  %311 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 2
  %312 = load i64, i64* %311, align 8
  %313 = icmp ne i64 %310, %312
  br i1 %313, label %314, label %334

314:                                              ; preds = %308
  %315 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %316 = icmp ne %struct.TYPE_5__* %315, null
  br i1 %316, label %317, label %320

317:                                              ; preds = %314
  %318 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %319 = call i32 @free(%struct.TYPE_5__* %318)
  br label %320

320:                                              ; preds = %317, %314
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %16, align 8
  %321 = load i32, i32* %5, align 4
  %322 = icmp ne i32 %321, 0
  br i1 %322, label %323, label %332

323:                                              ; preds = %320
  %324 = call i32 @gettext(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.3, i64 0, i64 0))
  %325 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 2
  %326 = load i64, i64* %325, align 8
  %327 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 2
  %328 = load i64, i64* %327, align 8
  %329 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %330 = load i8*, i8** %329, align 8
  %331 = call i32 (i32, ...) @vdev_error(i32 %324, i64 %326, i64 %328, i8* %330)
  br label %333

332:                                              ; preds = %320
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %3, align 8
  br label %378

333:                                              ; preds = %323
  br label %361

334:                                              ; preds = %308
  %335 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 1
  %336 = load i32, i32* %335, align 8
  %337 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 1
  %338 = load i32, i32* %337, align 8
  %339 = icmp ne i32 %336, %338
  br i1 %339, label %340, label %360

340:                                              ; preds = %334
  %341 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %342 = icmp ne %struct.TYPE_5__* %341, null
  br i1 %342, label %343, label %346

343:                                              ; preds = %340
  %344 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %345 = call i32 @free(%struct.TYPE_5__* %344)
  br label %346

346:                                              ; preds = %343, %340
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %16, align 8
  %347 = load i32, i32* %5, align 4
  %348 = icmp ne i32 %347, 0
  br i1 %348, label %349, label %358

349:                                              ; preds = %346
  %350 = call i32 @gettext(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.4, i64 0, i64 0))
  %351 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 1
  %352 = load i32, i32* %351, align 8
  %353 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 1
  %354 = load i32, i32* %353, align 8
  %355 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %356 = load i8*, i8** %355, align 8
  %357 = call i32 (i32, ...) @vdev_error(i32 %350, i32 %352, i32 %354, i8* %356)
  br label %359

358:                                              ; preds = %346
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %3, align 8
  br label %378

359:                                              ; preds = %349
  br label %360

360:                                              ; preds = %359, %334
  br label %361

361:                                              ; preds = %360, %333
  br label %362

362:                                              ; preds = %361, %307
  br label %363

363:                                              ; preds = %362, %279
  %364 = bitcast %struct.TYPE_5__* %14 to i8*
  %365 = bitcast %struct.TYPE_5__* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %364, i8* align 8 %365, i64 32, i1 false)
  br label %366

366:                                              ; preds = %363, %54
  %367 = load i64, i64* %7, align 8
  %368 = add i64 %367, 1
  store i64 %368, i64* %7, align 8
  br label %39

369:                                              ; preds = %39
  %370 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %371 = icmp ne %struct.TYPE_5__* %370, null
  br i1 %371, label %372, label %376

372:                                              ; preds = %369
  %373 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %374 = bitcast %struct.TYPE_5__* %373 to i8*
  %375 = bitcast %struct.TYPE_5__* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %374, i8* align 8 %375, i64 32, i1 false)
  br label %376

376:                                              ; preds = %372, %369
  %377 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  store %struct.TYPE_5__* %377, %struct.TYPE_5__** %3, align 8
  br label %378

378:                                              ; preds = %376, %358, %332, %306, %269, %211
  %379 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  ret %struct.TYPE_5__* %379
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.TYPE_5__* @safe_malloc(i32) #2

declare dso_local i32 @verify(i32) #2

declare dso_local i64 @nvlist_lookup_nvlist_array(i32*, i32, i32***, i64*) #2

declare dso_local i32 @nvlist_lookup_uint64(i32*, i32, i64*) #2

declare dso_local i64 @nvlist_lookup_string(i32*, i32, i8**) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @free(%struct.TYPE_5__*) #2

declare dso_local i32 @vdev_error(i32, ...) #2

declare dso_local i32 @gettext(i8*) #2

declare dso_local i32 @open(i8*, i32) #2

declare dso_local i32 @fstat64(i32, %struct.stat64*) #2

declare dso_local i32 @close(i32) #2

declare dso_local i32 @stat64(i8*, %struct.stat64*) #2

declare dso_local i64 @labs(i64) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
