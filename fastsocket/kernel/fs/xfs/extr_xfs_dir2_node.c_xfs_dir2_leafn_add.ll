; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_dir2_node.c_xfs_dir2_leafn_add.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_dir2_node.c_xfs_dir2_leafn_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { %struct.TYPE_17__, %struct.TYPE_20__* }
%struct.TYPE_17__ = type { i64, i64 }
%struct.TYPE_20__ = type { i8*, i8* }
%struct.TYPE_22__ = type { i64, i32, i32, i32, i32*, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32* }

@EFSCORRUPTED = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@XFS_DA_OP_JUSTCHECK = common dso_local global i32 0, align 4
@XFS_DIR2_NULL_DATAPTR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_21__*, %struct.TYPE_22__*, i32)* @xfs_dir2_leafn_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xfs_dir2_leafn_add(%struct.TYPE_21__* %0, %struct.TYPE_22__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca %struct.TYPE_22__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_18__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_19__*, align 8
  %12 = alloca %struct.TYPE_20__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %5, align 8
  store %struct.TYPE_22__* %1, %struct.TYPE_22__** %6, align 8
  store i32 %2, i32* %7, align 4
  %18 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @trace_xfs_dir2_leafn_add(%struct.TYPE_22__* %18, i32 %19)
  %21 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %21, i32 0, i32 5
  %23 = load %struct.TYPE_18__*, %struct.TYPE_18__** %22, align 8
  store %struct.TYPE_18__* %23, %struct.TYPE_18__** %9, align 8
  %24 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  store i32* %26, i32** %16, align 8
  %27 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %27, i32 0, i32 4
  %29 = load i32*, i32** %28, align 8
  store i32* %29, i32** %17, align 8
  %30 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_19__*, %struct.TYPE_19__** %31, align 8
  store %struct.TYPE_19__* %32, %struct.TYPE_19__** %11, align 8
  %33 = load i32, i32* %7, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %3
  %36 = load i32, i32* @EFSCORRUPTED, align 4
  %37 = call i32 @XFS_ERROR(i32 %36)
  store i32 %37, i32* %4, align 4
  br label %429

38:                                               ; preds = %3
  %39 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %40 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @be16_to_cpu(i64 %42)
  %44 = load i32*, i32** %16, align 8
  %45 = call i32 @xfs_dir2_max_leaf_ents(i32* %44)
  %46 = icmp eq i32 %43, %45
  br i1 %46, label %47, label %64

47:                                               ; preds = %38
  %48 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %49 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %47
  %54 = load i32, i32* @ENOSPC, align 4
  %55 = call i32 @XFS_ERROR(i32 %54)
  store i32 %55, i32* %4, align 4
  br label %429

56:                                               ; preds = %47
  %57 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %58 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = call i32 @be16_to_cpu(i64 %60)
  %62 = icmp sgt i32 %61, 1
  %63 = zext i1 %62 to i32
  store i32 %63, i32* %8, align 4
  br label %65

64:                                               ; preds = %38
  store i32 0, i32* %8, align 4
  br label %65

65:                                               ; preds = %64, %56
  %66 = load i32, i32* %7, align 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %83, label %68

68:                                               ; preds = %65
  %69 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %70 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %69, i32 0, i32 1
  %71 = load %struct.TYPE_20__*, %struct.TYPE_20__** %70, align 8
  %72 = load i32, i32* %7, align 4
  %73 = sub nsw i32 %72, 1
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %71, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %75, i32 0, i32 1
  %77 = load i8*, i8** %76, align 8
  %78 = call i64 @be32_to_cpu(i8* %77)
  %79 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp sle i64 %78, %81
  br label %83

83:                                               ; preds = %68, %65
  %84 = phi i1 [ true, %65 ], [ %82, %68 ]
  %85 = zext i1 %84 to i32
  %86 = call i32 @ASSERT(i32 %85)
  %87 = load i32, i32* %7, align 4
  %88 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %89 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = call i32 @be16_to_cpu(i64 %91)
  %93 = icmp eq i32 %87, %92
  br i1 %93, label %108, label %94

94:                                               ; preds = %83
  %95 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %96 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %95, i32 0, i32 1
  %97 = load %struct.TYPE_20__*, %struct.TYPE_20__** %96, align 8
  %98 = load i32, i32* %7, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %97, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %100, i32 0, i32 1
  %102 = load i8*, i8** %101, align 8
  %103 = call i64 @be32_to_cpu(i8* %102)
  %104 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = icmp sge i64 %103, %106
  br label %108

108:                                              ; preds = %94, %83
  %109 = phi i1 [ true, %83 ], [ %107, %94 ]
  %110 = zext i1 %109 to i32
  %111 = call i32 @ASSERT(i32 %110)
  %112 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* @XFS_DA_OP_JUSTCHECK, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %108
  store i32 0, i32* %4, align 4
  br label %429

119:                                              ; preds = %108
  %120 = load i32, i32* %8, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %119
  %123 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %124 = call i32 @xfs_dir2_leaf_compact_x1(%struct.TYPE_21__* %123, i32* %7, i32* %15, i32* %10, i32* %14, i32* %13)
  br label %138

125:                                              ; preds = %119
  %126 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %127 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %137

131:                                              ; preds = %125
  %132 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %133 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %133, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = call i32 @be16_to_cpu(i64 %135)
  store i32 %136, i32* %14, align 4
  store i32 -1, i32* %13, align 4
  br label %137

137:                                              ; preds = %131, %125
  br label %138

138:                                              ; preds = %137, %122
  %139 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %140 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %184, label %144

144:                                              ; preds = %138
  %145 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %146 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %145, i32 0, i32 1
  %147 = load %struct.TYPE_20__*, %struct.TYPE_20__** %146, align 8
  %148 = load i32, i32* %7, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %147, i64 %149
  store %struct.TYPE_20__* %150, %struct.TYPE_20__** %12, align 8
  %151 = load i32, i32* %7, align 4
  %152 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %153 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %153, i32 0, i32 1
  %155 = load i64, i64* %154, align 8
  %156 = call i32 @be16_to_cpu(i64 %155)
  %157 = icmp slt i32 %151, %156
  br i1 %157, label %158, label %173

158:                                              ; preds = %144
  %159 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %160 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %159, i64 1
  %161 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %162 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %163 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %163, i32 0, i32 1
  %165 = load i64, i64* %164, align 8
  %166 = call i32 @be16_to_cpu(i64 %165)
  %167 = load i32, i32* %7, align 4
  %168 = sub nsw i32 %166, %167
  %169 = sext i32 %168 to i64
  %170 = mul i64 %169, 16
  %171 = trunc i64 %170 to i32
  %172 = call i32 @memmove(%struct.TYPE_20__* %160, %struct.TYPE_20__* %161, i32 %171)
  br label %173

173:                                              ; preds = %158, %144
  %174 = load i32, i32* %7, align 4
  store i32 %174, i32* %14, align 4
  %175 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %176 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %176, i32 0, i32 1
  %178 = load i64, i64* %177, align 8
  %179 = call i32 @be16_to_cpu(i64 %178)
  store i32 %179, i32* %13, align 4
  %180 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %181 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %181, i32 0, i32 1
  %183 = call i32 @be16_add_cpu(i64* %182, i32 1)
  br label %400

184:                                              ; preds = %138
  %185 = load i32, i32* %8, align 4
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %187, label %254

187:                                              ; preds = %184
  %188 = load i32, i32* %7, align 4
  %189 = sub nsw i32 %188, 1
  store i32 %189, i32* %15, align 4
  br label %190

190:                                              ; preds = %208, %187
  %191 = load i32, i32* %15, align 4
  %192 = icmp sge i32 %191, 0
  br i1 %192, label %193, label %205

193:                                              ; preds = %190
  %194 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %195 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %194, i32 0, i32 1
  %196 = load %struct.TYPE_20__*, %struct.TYPE_20__** %195, align 8
  %197 = load i32, i32* %15, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %196, i64 %198
  %200 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %199, i32 0, i32 0
  %201 = load i8*, i8** %200, align 8
  %202 = call i64 @be32_to_cpu(i8* %201)
  %203 = load i64, i64* @XFS_DIR2_NULL_DATAPTR, align 8
  %204 = icmp ne i64 %202, %203
  br label %205

205:                                              ; preds = %193, %190
  %206 = phi i1 [ false, %190 ], [ %204, %193 ]
  br i1 %206, label %207, label %211

207:                                              ; preds = %205
  br label %208

208:                                              ; preds = %207
  %209 = load i32, i32* %15, align 4
  %210 = add nsw i32 %209, -1
  store i32 %210, i32* %15, align 4
  br label %190

211:                                              ; preds = %205
  %212 = load i32, i32* %7, align 4
  store i32 %212, i32* %10, align 4
  br label %213

213:                                              ; preds = %250, %211
  %214 = load i32, i32* %10, align 4
  %215 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %216 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %215, i32 0, i32 0
  %217 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %216, i32 0, i32 1
  %218 = load i64, i64* %217, align 8
  %219 = call i32 @be16_to_cpu(i64 %218)
  %220 = icmp slt i32 %214, %219
  br i1 %220, label %221, label %247

221:                                              ; preds = %213
  %222 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %223 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %222, i32 0, i32 1
  %224 = load %struct.TYPE_20__*, %struct.TYPE_20__** %223, align 8
  %225 = load i32, i32* %10, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %224, i64 %226
  %228 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %227, i32 0, i32 0
  %229 = load i8*, i8** %228, align 8
  %230 = call i64 @be32_to_cpu(i8* %229)
  %231 = load i64, i64* @XFS_DIR2_NULL_DATAPTR, align 8
  %232 = icmp ne i64 %230, %231
  br i1 %232, label %233, label %247

233:                                              ; preds = %221
  %234 = load i32, i32* %15, align 4
  %235 = icmp slt i32 %234, 0
  br i1 %235, label %245, label %236

236:                                              ; preds = %233
  %237 = load i32, i32* %7, align 4
  %238 = load i32, i32* %15, align 4
  %239 = sub nsw i32 %237, %238
  %240 = sub nsw i32 %239, 1
  %241 = load i32, i32* %10, align 4
  %242 = load i32, i32* %7, align 4
  %243 = sub nsw i32 %241, %242
  %244 = icmp sge i32 %240, %243
  br label %245

245:                                              ; preds = %236, %233
  %246 = phi i1 [ true, %233 ], [ %244, %236 ]
  br label %247

247:                                              ; preds = %245, %221, %213
  %248 = phi i1 [ false, %221 ], [ false, %213 ], [ %246, %245 ]
  br i1 %248, label %249, label %253

249:                                              ; preds = %247
  br label %250

250:                                              ; preds = %249
  %251 = load i32, i32* %10, align 4
  %252 = add nsw i32 %251, 1
  store i32 %252, i32* %10, align 4
  br label %213

253:                                              ; preds = %247
  br label %254

254:                                              ; preds = %253, %184
  %255 = load i32, i32* %15, align 4
  %256 = icmp sge i32 %255, 0
  br i1 %256, label %257, label %337

257:                                              ; preds = %254
  %258 = load i32, i32* %10, align 4
  %259 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %260 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %259, i32 0, i32 0
  %261 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %260, i32 0, i32 1
  %262 = load i64, i64* %261, align 8
  %263 = call i32 @be16_to_cpu(i64 %262)
  %264 = icmp eq i32 %258, %263
  br i1 %264, label %274, label %265

265:                                              ; preds = %257
  %266 = load i32, i32* %7, align 4
  %267 = load i32, i32* %15, align 4
  %268 = sub nsw i32 %266, %267
  %269 = sub nsw i32 %268, 1
  %270 = load i32, i32* %10, align 4
  %271 = load i32, i32* %7, align 4
  %272 = sub nsw i32 %270, %271
  %273 = icmp slt i32 %269, %272
  br i1 %273, label %274, label %337

274:                                              ; preds = %265, %257
  %275 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %276 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %275, i32 0, i32 1
  %277 = load %struct.TYPE_20__*, %struct.TYPE_20__** %276, align 8
  %278 = load i32, i32* %15, align 4
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %277, i64 %279
  %281 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %280, i32 0, i32 0
  %282 = load i8*, i8** %281, align 8
  %283 = call i64 @be32_to_cpu(i8* %282)
  %284 = load i64, i64* @XFS_DIR2_NULL_DATAPTR, align 8
  %285 = icmp eq i64 %283, %284
  %286 = zext i1 %285 to i32
  %287 = call i32 @ASSERT(i32 %286)
  %288 = load i32, i32* %7, align 4
  %289 = load i32, i32* %15, align 4
  %290 = sub nsw i32 %288, %289
  %291 = sub nsw i32 %290, 1
  %292 = icmp sge i32 %291, 0
  %293 = zext i1 %292 to i32
  %294 = call i32 @ASSERT(i32 %293)
  %295 = load i32, i32* %7, align 4
  %296 = load i32, i32* %15, align 4
  %297 = sub nsw i32 %295, %296
  %298 = sub nsw i32 %297, 1
  %299 = icmp sgt i32 %298, 0
  br i1 %299, label %300, label %322

300:                                              ; preds = %274
  %301 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %302 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %301, i32 0, i32 1
  %303 = load %struct.TYPE_20__*, %struct.TYPE_20__** %302, align 8
  %304 = load i32, i32* %15, align 4
  %305 = sext i32 %304 to i64
  %306 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %303, i64 %305
  %307 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %308 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %307, i32 0, i32 1
  %309 = load %struct.TYPE_20__*, %struct.TYPE_20__** %308, align 8
  %310 = load i32, i32* %15, align 4
  %311 = add nsw i32 %310, 1
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %309, i64 %312
  %314 = load i32, i32* %7, align 4
  %315 = load i32, i32* %15, align 4
  %316 = sub nsw i32 %314, %315
  %317 = sub nsw i32 %316, 1
  %318 = sext i32 %317 to i64
  %319 = mul i64 %318, 16
  %320 = trunc i64 %319 to i32
  %321 = call i32 @memmove(%struct.TYPE_20__* %306, %struct.TYPE_20__* %313, i32 %320)
  br label %322

322:                                              ; preds = %300, %274
  %323 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %324 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %323, i32 0, i32 1
  %325 = load %struct.TYPE_20__*, %struct.TYPE_20__** %324, align 8
  %326 = load i32, i32* %7, align 4
  %327 = sub nsw i32 %326, 1
  %328 = sext i32 %327 to i64
  %329 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %325, i64 %328
  store %struct.TYPE_20__* %329, %struct.TYPE_20__** %12, align 8
  %330 = load i32, i32* %15, align 4
  %331 = load i32, i32* %14, align 4
  %332 = call i32 @MIN(i32 %330, i32 %331)
  store i32 %332, i32* %14, align 4
  %333 = load i32, i32* %7, align 4
  %334 = sub nsw i32 %333, 1
  %335 = load i32, i32* %13, align 4
  %336 = call i32 @MAX(i32 %334, i32 %335)
  store i32 %336, i32* %13, align 4
  br label %395

337:                                              ; preds = %265, %254
  %338 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %339 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %338, i32 0, i32 1
  %340 = load %struct.TYPE_20__*, %struct.TYPE_20__** %339, align 8
  %341 = load i32, i32* %10, align 4
  %342 = sext i32 %341 to i64
  %343 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %340, i64 %342
  %344 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %343, i32 0, i32 0
  %345 = load i8*, i8** %344, align 8
  %346 = call i64 @be32_to_cpu(i8* %345)
  %347 = load i64, i64* @XFS_DIR2_NULL_DATAPTR, align 8
  %348 = icmp eq i64 %346, %347
  %349 = zext i1 %348 to i32
  %350 = call i32 @ASSERT(i32 %349)
  %351 = load i32, i32* %10, align 4
  %352 = load i32, i32* %7, align 4
  %353 = sub nsw i32 %351, %352
  %354 = icmp sge i32 %353, 0
  %355 = zext i1 %354 to i32
  %356 = call i32 @ASSERT(i32 %355)
  %357 = load i32, i32* %10, align 4
  %358 = load i32, i32* %7, align 4
  %359 = sub nsw i32 %357, %358
  %360 = icmp sgt i32 %359, 0
  br i1 %360, label %361, label %382

361:                                              ; preds = %337
  %362 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %363 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %362, i32 0, i32 1
  %364 = load %struct.TYPE_20__*, %struct.TYPE_20__** %363, align 8
  %365 = load i32, i32* %7, align 4
  %366 = add nsw i32 %365, 1
  %367 = sext i32 %366 to i64
  %368 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %364, i64 %367
  %369 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %370 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %369, i32 0, i32 1
  %371 = load %struct.TYPE_20__*, %struct.TYPE_20__** %370, align 8
  %372 = load i32, i32* %7, align 4
  %373 = sext i32 %372 to i64
  %374 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %371, i64 %373
  %375 = load i32, i32* %10, align 4
  %376 = load i32, i32* %7, align 4
  %377 = sub nsw i32 %375, %376
  %378 = sext i32 %377 to i64
  %379 = mul i64 %378, 16
  %380 = trunc i64 %379 to i32
  %381 = call i32 @memmove(%struct.TYPE_20__* %368, %struct.TYPE_20__* %374, i32 %380)
  br label %382

382:                                              ; preds = %361, %337
  %383 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %384 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %383, i32 0, i32 1
  %385 = load %struct.TYPE_20__*, %struct.TYPE_20__** %384, align 8
  %386 = load i32, i32* %7, align 4
  %387 = sext i32 %386 to i64
  %388 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %385, i64 %387
  store %struct.TYPE_20__* %388, %struct.TYPE_20__** %12, align 8
  %389 = load i32, i32* %7, align 4
  %390 = load i32, i32* %14, align 4
  %391 = call i32 @MIN(i32 %389, i32 %390)
  store i32 %391, i32* %14, align 4
  %392 = load i32, i32* %10, align 4
  %393 = load i32, i32* %13, align 4
  %394 = call i32 @MAX(i32 %392, i32 %393)
  store i32 %394, i32* %13, align 4
  br label %395

395:                                              ; preds = %382, %322
  %396 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %397 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %396, i32 0, i32 0
  %398 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %397, i32 0, i32 0
  %399 = call i32 @be16_add_cpu(i64* %398, i32 -1)
  br label %400

400:                                              ; preds = %395, %173
  %401 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %402 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %401, i32 0, i32 0
  %403 = load i64, i64* %402, align 8
  %404 = call i8* @cpu_to_be32(i64 %403)
  %405 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %406 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %405, i32 0, i32 1
  store i8* %404, i8** %406, align 8
  %407 = load i32*, i32** %16, align 8
  %408 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %409 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %408, i32 0, i32 3
  %410 = load i32, i32* %409, align 8
  %411 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %412 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %411, i32 0, i32 2
  %413 = load i32, i32* %412, align 4
  %414 = call i64 @xfs_dir2_db_off_to_dataptr(i32* %407, i32 %410, i32 %413)
  %415 = call i8* @cpu_to_be32(i64 %414)
  %416 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %417 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %416, i32 0, i32 0
  store i8* %415, i8** %417, align 8
  %418 = load i32*, i32** %17, align 8
  %419 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %420 = call i32 @xfs_dir2_leaf_log_header(i32* %418, %struct.TYPE_21__* %419)
  %421 = load i32*, i32** %17, align 8
  %422 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %423 = load i32, i32* %14, align 4
  %424 = load i32, i32* %13, align 4
  %425 = call i32 @xfs_dir2_leaf_log_ents(i32* %421, %struct.TYPE_21__* %422, i32 %423, i32 %424)
  %426 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %427 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %428 = call i32 @xfs_dir2_leafn_check(%struct.TYPE_18__* %426, %struct.TYPE_21__* %427)
  store i32 0, i32* %4, align 4
  br label %429

429:                                              ; preds = %400, %118, %53, %35
  %430 = load i32, i32* %4, align 4
  ret i32 %430
}

declare dso_local i32 @trace_xfs_dir2_leafn_add(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @XFS_ERROR(i32) #1

declare dso_local i32 @be16_to_cpu(i64) #1

declare dso_local i32 @xfs_dir2_max_leaf_ents(i32*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @be32_to_cpu(i8*) #1

declare dso_local i32 @xfs_dir2_leaf_compact_x1(%struct.TYPE_21__*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @memmove(%struct.TYPE_20__*, %struct.TYPE_20__*, i32) #1

declare dso_local i32 @be16_add_cpu(i64*, i32) #1

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i32 @MAX(i32, i32) #1

declare dso_local i8* @cpu_to_be32(i64) #1

declare dso_local i64 @xfs_dir2_db_off_to_dataptr(i32*, i32, i32) #1

declare dso_local i32 @xfs_dir2_leaf_log_header(i32*, %struct.TYPE_21__*) #1

declare dso_local i32 @xfs_dir2_leaf_log_ents(i32*, %struct.TYPE_21__*, i32, i32) #1

declare dso_local i32 @xfs_dir2_leafn_check(%struct.TYPE_18__*, %struct.TYPE_21__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
