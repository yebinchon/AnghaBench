; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ntfs/extr_runlist.c_ntfs_mapping_pairs_decompress.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ntfs/extr_runlist.c_ntfs_mapping_pairs_decompress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i32, i32, i32, i32 }
%struct.TYPE_24__ = type { %struct.TYPE_20__, i32, i32 }
%struct.TYPE_20__ = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i32, i32, i32, i32 }
%struct.TYPE_22__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [19 x i8] c"Corrupt attribute.\00", align 1
@EIO = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@LCN_RL_NOT_MAPPED = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [45 x i8] c"Missing length entry in mapping pairs array.\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"Invalid length in mapping pairs array.\00", align 1
@LCN_HOLE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [41 x i8] c"Invalid LCN < -1 in mapping pairs array.\00", align 1
@.str.4 = private unnamed_addr constant [55 x i8] c"Corrupt mapping pairs array in non-resident attribute.\00", align 1
@.str.5 = private unnamed_addr constant [64 x i8] c"More extents to follow; deltaxcn = 0x%llx, max_cluster = 0x%llx\00", align 1
@.str.6 = private unnamed_addr constant [60 x i8] c"Corrupt attribute.  deltaxcn = 0x%llx, max_cluster = 0x%llx\00", align 1
@LCN_ENOENT = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [47 x i8] c"Mapping pairs array successfully decompressed:\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"Failed to merge runlists.\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_22__* @ntfs_mapping_pairs_decompress(%struct.TYPE_23__* %0, %struct.TYPE_24__* %1, %struct.TYPE_22__* %2) #0 {
  %4 = alloca %struct.TYPE_22__*, align 8
  %5 = alloca %struct.TYPE_23__*, align 8
  %6 = alloca %struct.TYPE_24__*, align 8
  %7 = alloca %struct.TYPE_22__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_22__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_22__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %5, align 8
  store %struct.TYPE_24__* %1, %struct.TYPE_24__** %6, align 8
  store %struct.TYPE_22__* %2, %struct.TYPE_22__** %7, align 8
  %20 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @sle64_to_cpu(i32 %24)
  store i32 %25, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %26 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %27 = bitcast %struct.TYPE_24__* %26 to i32*
  %28 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @le16_to_cpu(i32 %32)
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %27, i64 %34
  store i32* %35, i32** %12, align 8
  %36 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %37 = bitcast %struct.TYPE_24__* %36 to i32*
  %38 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @le32_to_cpu(i32 %40)
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %37, i64 %42
  store i32* %43, i32** %13, align 8
  %44 = load i32*, i32** %12, align 8
  %45 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %46 = bitcast %struct.TYPE_24__* %45 to i32*
  %47 = icmp ult i32* %44, %46
  br i1 %47, label %52, label %48

48:                                               ; preds = %3
  %49 = load i32*, i32** %12, align 8
  %50 = load i32*, i32** %13, align 8
  %51 = icmp ugt i32* %49, %50
  br label %52

52:                                               ; preds = %48, %3
  %53 = phi i1 [ true, %3 ], [ %51, %48 ]
  %54 = zext i1 %53 to i32
  %55 = call i64 @unlikely(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %65

57:                                               ; preds = %52
  %58 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = call i32 (i32, i8*, ...) @ntfs_error(i32 %60, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %62 = load i32, i32* @EIO, align 4
  %63 = sub nsw i32 0, %62
  %64 = call %struct.TYPE_22__* @ERR_PTR(i32 %63)
  store %struct.TYPE_22__* %64, %struct.TYPE_22__** %4, align 8
  br label %486

65:                                               ; preds = %52
  %66 = load i32, i32* %8, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %74, label %68

68:                                               ; preds = %65
  %69 = load i32*, i32** %12, align 8
  %70 = load i32, i32* %69, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %74, label %72

72:                                               ; preds = %68
  %73 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  store %struct.TYPE_22__* %73, %struct.TYPE_22__** %4, align 8
  br label %486

74:                                               ; preds = %68, %65
  store i32 0, i32* %15, align 4
  %75 = load i32, i32* @PAGE_SIZE, align 4
  store i32 %75, i32* %14, align 4
  %76 = call %struct.TYPE_22__* @ntfs_malloc_nofs(i32 %75)
  store %struct.TYPE_22__* %76, %struct.TYPE_22__** %11, align 8
  %77 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %78 = icmp ne %struct.TYPE_22__* %77, null
  %79 = xor i1 %78, true
  %80 = zext i1 %79 to i32
  %81 = call i64 @unlikely(i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %74
  %84 = load i32, i32* @ENOMEM, align 4
  %85 = sub nsw i32 0, %84
  %86 = call %struct.TYPE_22__* @ERR_PTR(i32 %85)
  store %struct.TYPE_22__* %86, %struct.TYPE_22__** %4, align 8
  br label %486

87:                                               ; preds = %74
  %88 = load i32, i32* %8, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %102

90:                                               ; preds = %87
  %91 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %92 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %91, i32 0, i32 0
  store i32 0, i32* %92, align 4
  %93 = load i8*, i8** @LCN_RL_NOT_MAPPED, align 8
  %94 = ptrtoint i8* %93 to i32
  %95 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %96 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %95, i32 0, i32 1
  store i32 %94, i32* %96, align 4
  %97 = load i32, i32* %8, align 4
  %98 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %99 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %98, i32 0, i32 2
  store i32 %97, i32* %99, align 4
  %100 = load i32, i32* %15, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %15, align 4
  br label %102

102:                                              ; preds = %90, %87
  br label %103

103:                                              ; preds = %293, %102
  %104 = load i32*, i32** %12, align 8
  %105 = load i32*, i32** %13, align 8
  %106 = icmp ult i32* %104, %105
  br i1 %106, label %107, label %111

107:                                              ; preds = %103
  %108 = load i32*, i32** %12, align 8
  %109 = load i32, i32* %108, align 4
  %110 = icmp ne i32 %109, 0
  br label %111

111:                                              ; preds = %107, %103
  %112 = phi i1 [ false, %103 ], [ %110, %107 ]
  br i1 %112, label %113, label %308

113:                                              ; preds = %111
  %114 = load i32, i32* %15, align 4
  %115 = add nsw i32 %114, 3
  %116 = sext i32 %115 to i64
  %117 = mul i64 %116, 12
  %118 = load i32, i32* %14, align 4
  %119 = sext i32 %118 to i64
  %120 = icmp ugt i64 %117, %119
  br i1 %120, label %121, label %149

121:                                              ; preds = %113
  %122 = load i32, i32* %14, align 4
  %123 = load i32, i32* @PAGE_SIZE, align 4
  %124 = add nsw i32 %122, %123
  %125 = call %struct.TYPE_22__* @ntfs_malloc_nofs(i32 %124)
  store %struct.TYPE_22__* %125, %struct.TYPE_22__** %17, align 8
  %126 = load %struct.TYPE_22__*, %struct.TYPE_22__** %17, align 8
  %127 = icmp ne %struct.TYPE_22__* %126, null
  %128 = xor i1 %127, true
  %129 = zext i1 %128 to i32
  %130 = call i64 @unlikely(i32 %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %138

132:                                              ; preds = %121
  %133 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %134 = call i32 @ntfs_free(%struct.TYPE_22__* %133)
  %135 = load i32, i32* @ENOMEM, align 4
  %136 = sub nsw i32 0, %135
  %137 = call %struct.TYPE_22__* @ERR_PTR(i32 %136)
  store %struct.TYPE_22__* %137, %struct.TYPE_22__** %4, align 8
  br label %486

138:                                              ; preds = %121
  %139 = load %struct.TYPE_22__*, %struct.TYPE_22__** %17, align 8
  %140 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %141 = load i32, i32* %14, align 4
  %142 = call i32 @memcpy(%struct.TYPE_22__* %139, %struct.TYPE_22__* %140, i32 %141)
  %143 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %144 = call i32 @ntfs_free(%struct.TYPE_22__* %143)
  %145 = load %struct.TYPE_22__*, %struct.TYPE_22__** %17, align 8
  store %struct.TYPE_22__* %145, %struct.TYPE_22__** %11, align 8
  %146 = load i32, i32* @PAGE_SIZE, align 4
  %147 = load i32, i32* %14, align 4
  %148 = add nsw i32 %147, %146
  store i32 %148, i32* %14, align 4
  br label %149

149:                                              ; preds = %138, %113
  %150 = load i32, i32* %8, align 4
  %151 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %152 = load i32, i32* %15, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %151, i64 %153
  %155 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %154, i32 0, i32 0
  store i32 %150, i32* %155, align 4
  %156 = load i32*, i32** %12, align 8
  %157 = load i32, i32* %156, align 4
  %158 = and i32 %157, 15
  store i32 %158, i32* %16, align 4
  %159 = load i32, i32* %16, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %195

161:                                              ; preds = %149
  %162 = load i32*, i32** %12, align 8
  %163 = load i32, i32* %16, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i32, i32* %162, i64 %164
  %166 = load i32*, i32** %13, align 8
  %167 = icmp ugt i32* %165, %166
  %168 = zext i1 %167 to i32
  %169 = call i64 @unlikely(i32 %168)
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %172

171:                                              ; preds = %161
  br label %475

172:                                              ; preds = %161
  %173 = load i32*, i32** %12, align 8
  %174 = load i32, i32* %16, align 4
  %175 = add nsw i32 %174, -1
  store i32 %175, i32* %16, align 4
  %176 = sext i32 %174 to i64
  %177 = getelementptr inbounds i32, i32* %173, i64 %176
  %178 = load i32, i32* %177, align 4
  store i32 %178, i32* %10, align 4
  br label %179

179:                                              ; preds = %191, %172
  %180 = load i32, i32* %16, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %194

182:                                              ; preds = %179
  %183 = load i32, i32* %10, align 4
  %184 = shl i32 %183, 8
  %185 = load i32*, i32** %12, align 8
  %186 = load i32, i32* %16, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i32, i32* %185, i64 %187
  %189 = load i32, i32* %188, align 4
  %190 = add nsw i32 %184, %189
  store i32 %190, i32* %10, align 4
  br label %191

191:                                              ; preds = %182
  %192 = load i32, i32* %16, align 4
  %193 = add nsw i32 %192, -1
  store i32 %193, i32* %16, align 4
  br label %179

194:                                              ; preds = %179
  br label %200

195:                                              ; preds = %149
  %196 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %197 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %196, i32 0, i32 3
  %198 = load i32, i32* %197, align 4
  %199 = call i32 (i32, i8*, ...) @ntfs_error(i32 %198, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %10, align 4
  br label %200

200:                                              ; preds = %195, %194
  %201 = load i32, i32* %10, align 4
  %202 = icmp slt i32 %201, 0
  %203 = zext i1 %202 to i32
  %204 = call i64 @unlikely(i32 %203)
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %206, label %211

206:                                              ; preds = %200
  %207 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %208 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %207, i32 0, i32 3
  %209 = load i32, i32* %208, align 4
  %210 = call i32 (i32, i8*, ...) @ntfs_error(i32 %209, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  br label %480

211:                                              ; preds = %200
  %212 = load i32, i32* %10, align 4
  %213 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %214 = load i32, i32* %15, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %213, i64 %215
  %217 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %216, i32 0, i32 2
  store i32 %212, i32* %217, align 4
  %218 = load i32, i32* %10, align 4
  %219 = load i32, i32* %8, align 4
  %220 = add nsw i32 %219, %218
  store i32 %220, i32* %8, align 4
  %221 = load i32*, i32** %12, align 8
  %222 = load i32, i32* %221, align 4
  %223 = and i32 %222, 240
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %232, label %225

225:                                              ; preds = %211
  %226 = load i32, i32* @LCN_HOLE, align 4
  %227 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %228 = load i32, i32* %15, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %227, i64 %229
  %231 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %230, i32 0, i32 1
  store i32 %226, i32* %231, align 4
  br label %293

232:                                              ; preds = %211
  %233 = load i32*, i32** %12, align 8
  %234 = load i32, i32* %233, align 4
  %235 = and i32 %234, 15
  store i32 %235, i32* %18, align 4
  %236 = load i32, i32* %18, align 4
  %237 = load i32*, i32** %12, align 8
  %238 = load i32, i32* %237, align 4
  %239 = ashr i32 %238, 4
  %240 = and i32 %239, 15
  %241 = add nsw i32 %236, %240
  store i32 %241, i32* %16, align 4
  %242 = load i32*, i32** %12, align 8
  %243 = load i32, i32* %16, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds i32, i32* %242, i64 %244
  %246 = load i32*, i32** %13, align 8
  %247 = icmp ugt i32* %245, %246
  br i1 %247, label %248, label %249

248:                                              ; preds = %232
  br label %475

249:                                              ; preds = %232
  %250 = load i32*, i32** %12, align 8
  %251 = load i32, i32* %16, align 4
  %252 = add nsw i32 %251, -1
  store i32 %252, i32* %16, align 4
  %253 = sext i32 %251 to i64
  %254 = getelementptr inbounds i32, i32* %250, i64 %253
  %255 = load i32, i32* %254, align 4
  store i32 %255, i32* %10, align 4
  br label %256

256:                                              ; preds = %269, %249
  %257 = load i32, i32* %16, align 4
  %258 = load i32, i32* %18, align 4
  %259 = icmp sgt i32 %257, %258
  br i1 %259, label %260, label %272

260:                                              ; preds = %256
  %261 = load i32, i32* %10, align 4
  %262 = shl i32 %261, 8
  %263 = load i32*, i32** %12, align 8
  %264 = load i32, i32* %16, align 4
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds i32, i32* %263, i64 %265
  %267 = load i32, i32* %266, align 4
  %268 = add nsw i32 %262, %267
  store i32 %268, i32* %10, align 4
  br label %269

269:                                              ; preds = %260
  %270 = load i32, i32* %16, align 4
  %271 = add nsw i32 %270, -1
  store i32 %271, i32* %16, align 4
  br label %256

272:                                              ; preds = %256
  %273 = load i32, i32* %10, align 4
  %274 = load i32, i32* %9, align 4
  %275 = add nsw i32 %274, %273
  store i32 %275, i32* %9, align 4
  %276 = load i32, i32* %9, align 4
  %277 = icmp slt i32 %276, -1
  %278 = zext i1 %277 to i32
  %279 = call i64 @unlikely(i32 %278)
  %280 = icmp ne i64 %279, 0
  br i1 %280, label %281, label %286

281:                                              ; preds = %272
  %282 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %283 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %282, i32 0, i32 3
  %284 = load i32, i32* %283, align 4
  %285 = call i32 (i32, i8*, ...) @ntfs_error(i32 %284, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  br label %480

286:                                              ; preds = %272
  %287 = load i32, i32* %9, align 4
  %288 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %289 = load i32, i32* %15, align 4
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %288, i64 %290
  %292 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %291, i32 0, i32 1
  store i32 %287, i32* %292, align 4
  br label %293

293:                                              ; preds = %286, %225
  %294 = load i32, i32* %15, align 4
  %295 = add nsw i32 %294, 1
  store i32 %295, i32* %15, align 4
  %296 = load i32*, i32** %12, align 8
  %297 = load i32, i32* %296, align 4
  %298 = and i32 %297, 15
  %299 = load i32*, i32** %12, align 8
  %300 = load i32, i32* %299, align 4
  %301 = ashr i32 %300, 4
  %302 = and i32 %301, 15
  %303 = add nsw i32 %298, %302
  %304 = add nsw i32 %303, 1
  %305 = load i32*, i32** %12, align 8
  %306 = sext i32 %304 to i64
  %307 = getelementptr inbounds i32, i32* %305, i64 %306
  store i32* %307, i32** %12, align 8
  br label %103

308:                                              ; preds = %111
  %309 = load i32*, i32** %12, align 8
  %310 = load i32*, i32** %13, align 8
  %311 = icmp uge i32* %309, %310
  %312 = zext i1 %311 to i32
  %313 = call i64 @unlikely(i32 %312)
  %314 = icmp ne i64 %313, 0
  br i1 %314, label %315, label %316

315:                                              ; preds = %308
  br label %475

316:                                              ; preds = %308
  %317 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %318 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %317, i32 0, i32 0
  %319 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %318, i32 0, i32 0
  %320 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %319, i32 0, i32 2
  %321 = load i32, i32* %320, align 4
  %322 = call i32 @sle64_to_cpu(i32 %321)
  store i32 %322, i32* %10, align 4
  %323 = load i32, i32* %10, align 4
  %324 = icmp ne i32 %323, 0
  br i1 %324, label %325, label %330

325:                                              ; preds = %316
  %326 = load i32, i32* %8, align 4
  %327 = sub nsw i32 %326, 1
  %328 = load i32, i32* %10, align 4
  %329 = icmp ne i32 %327, %328
  br label %330

330:                                              ; preds = %325, %316
  %331 = phi i1 [ false, %316 ], [ %329, %325 ]
  %332 = zext i1 %331 to i32
  %333 = call i64 @unlikely(i32 %332)
  %334 = icmp ne i64 %333, 0
  br i1 %334, label %335, label %341

335:                                              ; preds = %330
  br label %336

336:                                              ; preds = %409, %335
  %337 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %338 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %337, i32 0, i32 3
  %339 = load i32, i32* %338, align 4
  %340 = call i32 (i32, i8*, ...) @ntfs_error(i32 %339, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.4, i64 0, i64 0))
  br label %480

341:                                              ; preds = %330
  %342 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %343 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %342, i32 0, i32 0
  %344 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %343, i32 0, i32 0
  %345 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %344, i32 0, i32 1
  %346 = load i32, i32* %345, align 4
  %347 = icmp ne i32 %346, 0
  br i1 %347, label %427, label %348

348:                                              ; preds = %341
  %349 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %350 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %349, i32 0, i32 0
  %351 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %350, i32 0, i32 0
  %352 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %351, i32 0, i32 0
  %353 = load i32, i32* %352, align 4
  %354 = call i32 @sle64_to_cpu(i32 %353)
  %355 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %356 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %355, i32 0, i32 1
  %357 = load i32, i32* %356, align 4
  %358 = add nsw i32 %354, %357
  %359 = sub nsw i32 %358, 1
  %360 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %361 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %360, i32 0, i32 2
  %362 = load i32, i32* %361, align 4
  %363 = ashr i32 %359, %362
  %364 = sub nsw i32 %363, 1
  store i32 %364, i32* %19, align 4
  %365 = load i32, i32* %10, align 4
  %366 = icmp ne i32 %365, 0
  br i1 %366, label %367, label %420

367:                                              ; preds = %348
  %368 = load i32, i32* %10, align 4
  %369 = load i32, i32* %19, align 4
  %370 = icmp slt i32 %368, %369
  br i1 %370, label %371, label %402

371:                                              ; preds = %367
  %372 = load i32, i32* %10, align 4
  %373 = sext i32 %372 to i64
  %374 = load i32, i32* %19, align 4
  %375 = sext i32 %374 to i64
  %376 = call i32 (i8*, ...) @ntfs_debug(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.5, i64 0, i64 0), i64 %373, i64 %375)
  %377 = load i32, i32* %8, align 4
  %378 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %379 = load i32, i32* %15, align 4
  %380 = sext i32 %379 to i64
  %381 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %378, i64 %380
  %382 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %381, i32 0, i32 0
  store i32 %377, i32* %382, align 4
  %383 = load i32, i32* %19, align 4
  %384 = load i32, i32* %10, align 4
  %385 = sub nsw i32 %383, %384
  %386 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %387 = load i32, i32* %15, align 4
  %388 = sext i32 %387 to i64
  %389 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %386, i64 %388
  %390 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %389, i32 0, i32 2
  store i32 %385, i32* %390, align 4
  %391 = load i32, i32* %8, align 4
  %392 = add nsw i32 %391, %385
  store i32 %392, i32* %8, align 4
  %393 = load i8*, i8** @LCN_RL_NOT_MAPPED, align 8
  %394 = ptrtoint i8* %393 to i32
  %395 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %396 = load i32, i32* %15, align 4
  %397 = sext i32 %396 to i64
  %398 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %395, i64 %397
  %399 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %398, i32 0, i32 1
  store i32 %394, i32* %399, align 4
  %400 = load i32, i32* %15, align 4
  %401 = add nsw i32 %400, 1
  store i32 %401, i32* %15, align 4
  br label %419

402:                                              ; preds = %367
  %403 = load i32, i32* %10, align 4
  %404 = load i32, i32* %19, align 4
  %405 = icmp sgt i32 %403, %404
  %406 = zext i1 %405 to i32
  %407 = call i64 @unlikely(i32 %406)
  %408 = icmp ne i64 %407, 0
  br i1 %408, label %409, label %418

409:                                              ; preds = %402
  %410 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %411 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %410, i32 0, i32 3
  %412 = load i32, i32* %411, align 4
  %413 = load i32, i32* %10, align 4
  %414 = sext i32 %413 to i64
  %415 = load i32, i32* %19, align 4
  %416 = sext i32 %415 to i64
  %417 = call i32 (i32, i8*, ...) @ntfs_error(i32 %412, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.6, i64 0, i64 0), i64 %414, i64 %416)
  br label %336

418:                                              ; preds = %402
  br label %419

419:                                              ; preds = %418, %371
  br label %420

420:                                              ; preds = %419, %348
  %421 = load i32, i32* @LCN_ENOENT, align 4
  %422 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %423 = load i32, i32* %15, align 4
  %424 = sext i32 %423 to i64
  %425 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %422, i64 %424
  %426 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %425, i32 0, i32 1
  store i32 %421, i32* %426, align 4
  br label %435

427:                                              ; preds = %341
  %428 = load i8*, i8** @LCN_RL_NOT_MAPPED, align 8
  %429 = ptrtoint i8* %428 to i32
  %430 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %431 = load i32, i32* %15, align 4
  %432 = sext i32 %431 to i64
  %433 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %430, i64 %432
  %434 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %433, i32 0, i32 1
  store i32 %429, i32* %434, align 4
  br label %435

435:                                              ; preds = %427, %420
  %436 = load i32, i32* %8, align 4
  %437 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %438 = load i32, i32* %15, align 4
  %439 = sext i32 %438 to i64
  %440 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %437, i64 %439
  %441 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %440, i32 0, i32 0
  store i32 %436, i32* %441, align 4
  %442 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %443 = load i32, i32* %15, align 4
  %444 = sext i32 %443 to i64
  %445 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %442, i64 %444
  %446 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %445, i32 0, i32 2
  store i32 0, i32* %446, align 4
  %447 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %448 = icmp ne %struct.TYPE_22__* %447, null
  br i1 %448, label %454, label %449

449:                                              ; preds = %435
  %450 = call i32 (i8*, ...) @ntfs_debug(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.7, i64 0, i64 0))
  %451 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %452 = call i32 @ntfs_debug_dump_runlist(%struct.TYPE_22__* %451)
  %453 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  store %struct.TYPE_22__* %453, %struct.TYPE_22__** %4, align 8
  br label %486

454:                                              ; preds = %435
  %455 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %456 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %457 = call %struct.TYPE_22__* @ntfs_runlists_merge(%struct.TYPE_22__* %455, %struct.TYPE_22__* %456)
  store %struct.TYPE_22__* %457, %struct.TYPE_22__** %7, align 8
  %458 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %459 = call i32 @IS_ERR(%struct.TYPE_22__* %458)
  %460 = icmp ne i32 %459, 0
  %461 = xor i1 %460, true
  %462 = zext i1 %461 to i32
  %463 = call i64 @likely(i32 %462)
  %464 = icmp ne i64 %463, 0
  br i1 %464, label %465, label %467

465:                                              ; preds = %454
  %466 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  store %struct.TYPE_22__* %466, %struct.TYPE_22__** %4, align 8
  br label %486

467:                                              ; preds = %454
  %468 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %469 = call i32 @ntfs_free(%struct.TYPE_22__* %468)
  %470 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %471 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %470, i32 0, i32 3
  %472 = load i32, i32* %471, align 4
  %473 = call i32 (i32, i8*, ...) @ntfs_error(i32 %472, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0))
  %474 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  store %struct.TYPE_22__* %474, %struct.TYPE_22__** %4, align 8
  br label %486

475:                                              ; preds = %315, %248, %171
  %476 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %477 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %476, i32 0, i32 3
  %478 = load i32, i32* %477, align 4
  %479 = call i32 (i32, i8*, ...) @ntfs_error(i32 %478, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %480

480:                                              ; preds = %475, %336, %281, %206
  %481 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %482 = call i32 @ntfs_free(%struct.TYPE_22__* %481)
  %483 = load i32, i32* @EIO, align 4
  %484 = sub nsw i32 0, %483
  %485 = call %struct.TYPE_22__* @ERR_PTR(i32 %484)
  store %struct.TYPE_22__* %485, %struct.TYPE_22__** %4, align 8
  br label %486

486:                                              ; preds = %480, %467, %465, %449, %132, %83, %72, %57
  %487 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  ret %struct.TYPE_22__* %487
}

declare dso_local i32 @sle64_to_cpu(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ntfs_error(i32, i8*, ...) #1

declare dso_local %struct.TYPE_22__* @ERR_PTR(i32) #1

declare dso_local %struct.TYPE_22__* @ntfs_malloc_nofs(i32) #1

declare dso_local i32 @ntfs_free(%struct.TYPE_22__*) #1

declare dso_local i32 @memcpy(%struct.TYPE_22__*, %struct.TYPE_22__*, i32) #1

declare dso_local i32 @ntfs_debug(i8*, ...) #1

declare dso_local i32 @ntfs_debug_dump_runlist(%struct.TYPE_22__*) #1

declare dso_local %struct.TYPE_22__* @ntfs_runlists_merge(%struct.TYPE_22__*, %struct.TYPE_22__*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @IS_ERR(%struct.TYPE_22__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
