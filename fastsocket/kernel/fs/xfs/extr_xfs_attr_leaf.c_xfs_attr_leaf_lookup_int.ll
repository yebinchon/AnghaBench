; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_attr_leaf.c_xfs_attr_leaf_lookup_int.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_attr_leaf.c_xfs_attr_leaf_lookup_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { %struct.TYPE_22__* }
%struct.TYPE_22__ = type { %struct.TYPE_18__, %struct.TYPE_25__* }
%struct.TYPE_18__ = type { i32, %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_25__ = type { i32, i32 }
%struct.TYPE_21__ = type { i64, i32, i32, i64, %struct.TYPE_19__*, i32, i64, i32 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_24__ = type { i64, i64 }
%struct.TYPE_23__ = type { i64, i32, i32, i64 }

@XFS_ATTR_LEAF_MAGIC = common dso_local global i32 0, align 4
@ENOATTR = common dso_local global i32 0, align 4
@XFS_ATTR_INCOMPLETE = common dso_local global i32 0, align 4
@XFS_ATTR_LOCAL = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_attr_leaf_lookup_int(%struct.TYPE_20__* %0, %struct.TYPE_21__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_20__*, align 8
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca %struct.TYPE_22__*, align 8
  %7 = alloca %struct.TYPE_25__*, align 8
  %8 = alloca %struct.TYPE_24__*, align 8
  %9 = alloca %struct.TYPE_23__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %4, align 8
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %5, align 8
  %13 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %14 = call i32 @trace_xfs_attr_leaf_lookup(%struct.TYPE_21__* %13)
  %15 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  store %struct.TYPE_22__* %17, %struct.TYPE_22__** %6, align 8
  %18 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @be16_to_cpu(i32 %22)
  %24 = load i32, i32* @XFS_ATTR_LEAF_MAGIC, align 4
  %25 = icmp eq i32 %23, %24
  %26 = zext i1 %25 to i32
  %27 = call i32 @ASSERT(i32 %26)
  %28 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @be16_to_cpu(i32 %31)
  %33 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %33, i32 0, i32 4
  %35 = load %struct.TYPE_19__*, %struct.TYPE_19__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @XFS_LBSIZE(i32 %37)
  %39 = sdiv i32 %38, 8
  %40 = icmp slt i32 %32, %39
  %41 = zext i1 %40 to i32
  %42 = call i32 @ASSERT(i32 %41)
  %43 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  store i64 %45, i64* %12, align 8
  %46 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @be16_to_cpu(i32 %49)
  %51 = sdiv i32 %50, 2
  store i32 %51, i32* %11, align 4
  store i32 %51, i32* %10, align 4
  %52 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %52, i32 0, i32 1
  %54 = load %struct.TYPE_25__*, %struct.TYPE_25__** %53, align 8
  %55 = load i32, i32* %10, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %54, i64 %56
  store %struct.TYPE_25__* %57, %struct.TYPE_25__** %7, align 8
  br label %58

58:                                               ; preds = %88, %2
  %59 = load i32, i32* %11, align 4
  %60 = icmp sgt i32 %59, 4
  br i1 %60, label %61, label %95

61:                                               ; preds = %58
  %62 = load i32, i32* %11, align 4
  %63 = sdiv i32 %62, 2
  store i32 %63, i32* %11, align 4
  %64 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i64 @be32_to_cpu(i32 %66)
  %68 = load i64, i64* %12, align 8
  %69 = icmp slt i64 %67, %68
  br i1 %69, label %70, label %74

70:                                               ; preds = %61
  %71 = load i32, i32* %11, align 4
  %72 = load i32, i32* %10, align 4
  %73 = add nsw i32 %72, %71
  store i32 %73, i32* %10, align 4
  br label %87

74:                                               ; preds = %61
  %75 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i64 @be32_to_cpu(i32 %77)
  %79 = load i64, i64* %12, align 8
  %80 = icmp sgt i64 %78, %79
  br i1 %80, label %81, label %85

81:                                               ; preds = %74
  %82 = load i32, i32* %11, align 4
  %83 = load i32, i32* %10, align 4
  %84 = sub nsw i32 %83, %82
  store i32 %84, i32* %10, align 4
  br label %86

85:                                               ; preds = %74
  br label %95

86:                                               ; preds = %81
  br label %87

87:                                               ; preds = %86, %70
  br label %88

88:                                               ; preds = %87
  %89 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %89, i32 0, i32 1
  %91 = load %struct.TYPE_25__*, %struct.TYPE_25__** %90, align 8
  %92 = load i32, i32* %10, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %91, i64 %93
  store %struct.TYPE_25__* %94, %struct.TYPE_25__** %7, align 8
  br label %58

95:                                               ; preds = %85, %58
  %96 = load i32, i32* %10, align 4
  %97 = icmp sge i32 %96, 0
  br i1 %97, label %98, label %114

98:                                               ; preds = %95
  %99 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %112

104:                                              ; preds = %98
  %105 = load i32, i32* %10, align 4
  %106 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @be16_to_cpu(i32 %109)
  %111 = icmp slt i32 %105, %110
  br label %112

112:                                              ; preds = %104, %98
  %113 = phi i1 [ true, %98 ], [ %111, %104 ]
  br label %114

114:                                              ; preds = %112, %95
  %115 = phi i1 [ false, %95 ], [ %113, %112 ]
  %116 = zext i1 %115 to i32
  %117 = call i32 @ASSERT(i32 %116)
  %118 = load i32, i32* %11, align 4
  %119 = icmp sle i32 %118, 4
  br i1 %119, label %127, label %120

120:                                              ; preds = %114
  %121 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %122 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = call i64 @be32_to_cpu(i32 %123)
  %125 = load i64, i64* %12, align 8
  %126 = icmp eq i64 %124, %125
  br label %127

127:                                              ; preds = %120, %114
  %128 = phi i1 [ true, %114 ], [ %126, %120 ]
  %129 = zext i1 %128 to i32
  %130 = call i32 @ASSERT(i32 %129)
  br label %131

131:                                              ; preds = %143, %127
  %132 = load i32, i32* %10, align 4
  %133 = icmp sgt i32 %132, 0
  br i1 %133, label %134, label %141

134:                                              ; preds = %131
  %135 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %136 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = call i64 @be32_to_cpu(i32 %137)
  %139 = load i64, i64* %12, align 8
  %140 = icmp sge i64 %138, %139
  br label %141

141:                                              ; preds = %134, %131
  %142 = phi i1 [ false, %131 ], [ %140, %134 ]
  br i1 %142, label %143, label %148

143:                                              ; preds = %141
  %144 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %145 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %144, i32 -1
  store %struct.TYPE_25__* %145, %struct.TYPE_25__** %7, align 8
  %146 = load i32, i32* %10, align 4
  %147 = add nsw i32 %146, -1
  store i32 %147, i32* %10, align 4
  br label %131

148:                                              ; preds = %141
  br label %149

149:                                              ; preds = %166, %148
  %150 = load i32, i32* %10, align 4
  %151 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %152 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = call i32 @be16_to_cpu(i32 %154)
  %156 = icmp slt i32 %150, %155
  br i1 %156, label %157, label %164

157:                                              ; preds = %149
  %158 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %159 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = call i64 @be32_to_cpu(i32 %160)
  %162 = load i64, i64* %12, align 8
  %163 = icmp slt i64 %161, %162
  br label %164

164:                                              ; preds = %157, %149
  %165 = phi i1 [ false, %149 ], [ %163, %157 ]
  br i1 %165, label %166, label %171

166:                                              ; preds = %164
  %167 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %168 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %167, i32 1
  store %struct.TYPE_25__* %168, %struct.TYPE_25__** %7, align 8
  %169 = load i32, i32* %10, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %10, align 4
  br label %149

171:                                              ; preds = %164
  %172 = load i32, i32* %10, align 4
  %173 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %174 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = call i32 @be16_to_cpu(i32 %176)
  %178 = icmp eq i32 %172, %177
  br i1 %178, label %186, label %179

179:                                              ; preds = %171
  %180 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %181 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  %183 = call i64 @be32_to_cpu(i32 %182)
  %184 = load i64, i64* %12, align 8
  %185 = icmp ne i64 %183, %184
  br i1 %185, label %186, label %192

186:                                              ; preds = %179, %171
  %187 = load i32, i32* %10, align 4
  %188 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %189 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %188, i32 0, i32 1
  store i32 %187, i32* %189, align 8
  %190 = load i32, i32* @ENOATTR, align 4
  %191 = call i32 @XFS_ERROR(i32 %190)
  store i32 %191, i32* %3, align 4
  br label %343

192:                                              ; preds = %179
  br label %193

193:                                              ; preds = %332, %192
  %194 = load i32, i32* %10, align 4
  %195 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %196 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = call i32 @be16_to_cpu(i32 %198)
  %200 = icmp slt i32 %194, %199
  br i1 %200, label %201, label %208

201:                                              ; preds = %193
  %202 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %203 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 4
  %205 = call i64 @be32_to_cpu(i32 %204)
  %206 = load i64, i64* %12, align 8
  %207 = icmp eq i64 %205, %206
  br label %208

208:                                              ; preds = %201, %193
  %209 = phi i1 [ false, %193 ], [ %207, %201 ]
  br i1 %209, label %210, label %337

210:                                              ; preds = %208
  %211 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %212 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %211, i32 0, i32 2
  %213 = load i32, i32* %212, align 4
  %214 = load i32, i32* @XFS_ATTR_INCOMPLETE, align 4
  %215 = and i32 %213, %214
  %216 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %217 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 4
  %219 = load i32, i32* @XFS_ATTR_INCOMPLETE, align 4
  %220 = and i32 %218, %219
  %221 = icmp ne i32 %215, %220
  br i1 %221, label %222, label %223

222:                                              ; preds = %210
  br label %332

223:                                              ; preds = %210
  %224 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %225 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 4
  %227 = load i32, i32* @XFS_ATTR_LOCAL, align 4
  %228 = and i32 %226, %227
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %272

230:                                              ; preds = %223
  %231 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %232 = load i32, i32* %10, align 4
  %233 = call %struct.TYPE_24__* @xfs_attr_leaf_name_local(%struct.TYPE_22__* %231, i32 %232)
  store %struct.TYPE_24__* %233, %struct.TYPE_24__** %8, align 8
  %234 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %235 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %234, i32 0, i32 0
  %236 = load i64, i64* %235, align 8
  %237 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %238 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %237, i32 0, i32 3
  %239 = load i64, i64* %238, align 8
  %240 = icmp ne i64 %236, %239
  br i1 %240, label %241, label %242

241:                                              ; preds = %230
  br label %332

242:                                              ; preds = %230
  %243 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %244 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %243, i32 0, i32 7
  %245 = load i32, i32* %244, align 8
  %246 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %247 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %246, i32 0, i32 1
  %248 = load i64, i64* %247, align 8
  %249 = inttoptr i64 %248 to i8*
  %250 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %251 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %250, i32 0, i32 3
  %252 = load i64, i64* %251, align 8
  %253 = call i64 @memcmp(i32 %245, i8* %249, i64 %252)
  %254 = icmp ne i64 %253, 0
  br i1 %254, label %255, label %256

255:                                              ; preds = %242
  br label %332

256:                                              ; preds = %242
  %257 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %258 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %257, i32 0, i32 2
  %259 = load i32, i32* %258, align 4
  %260 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %261 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 4
  %263 = call i32 @xfs_attr_namesp_match(i32 %259, i32 %262)
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %266, label %265

265:                                              ; preds = %256
  br label %332

266:                                              ; preds = %256
  %267 = load i32, i32* %10, align 4
  %268 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %269 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %268, i32 0, i32 1
  store i32 %267, i32* %269, align 8
  %270 = load i32, i32* @EEXIST, align 4
  %271 = call i32 @XFS_ERROR(i32 %270)
  store i32 %271, i32* %3, align 4
  br label %343

272:                                              ; preds = %223
  %273 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %274 = load i32, i32* %10, align 4
  %275 = call %struct.TYPE_23__* @xfs_attr_leaf_name_remote(%struct.TYPE_22__* %273, i32 %274)
  store %struct.TYPE_23__* %275, %struct.TYPE_23__** %9, align 8
  %276 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %277 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %276, i32 0, i32 0
  %278 = load i64, i64* %277, align 8
  %279 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %280 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %279, i32 0, i32 3
  %281 = load i64, i64* %280, align 8
  %282 = icmp ne i64 %278, %281
  br i1 %282, label %283, label %284

283:                                              ; preds = %272
  br label %332

284:                                              ; preds = %272
  %285 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %286 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %285, i32 0, i32 7
  %287 = load i32, i32* %286, align 8
  %288 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %289 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %288, i32 0, i32 3
  %290 = load i64, i64* %289, align 8
  %291 = inttoptr i64 %290 to i8*
  %292 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %293 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %292, i32 0, i32 3
  %294 = load i64, i64* %293, align 8
  %295 = call i64 @memcmp(i32 %287, i8* %291, i64 %294)
  %296 = icmp ne i64 %295, 0
  br i1 %296, label %297, label %298

297:                                              ; preds = %284
  br label %332

298:                                              ; preds = %284
  %299 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %300 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %299, i32 0, i32 2
  %301 = load i32, i32* %300, align 4
  %302 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %303 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %302, i32 0, i32 0
  %304 = load i32, i32* %303, align 4
  %305 = call i32 @xfs_attr_namesp_match(i32 %301, i32 %304)
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %308, label %307

307:                                              ; preds = %298
  br label %332

308:                                              ; preds = %298
  %309 = load i32, i32* %10, align 4
  %310 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %311 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %310, i32 0, i32 1
  store i32 %309, i32* %311, align 8
  %312 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %313 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %312, i32 0, i32 2
  %314 = load i32, i32* %313, align 4
  %315 = call i64 @be32_to_cpu(i32 %314)
  %316 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %317 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %316, i32 0, i32 6
  store i64 %315, i64* %317, align 8
  %318 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %319 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %318, i32 0, i32 4
  %320 = load %struct.TYPE_19__*, %struct.TYPE_19__** %319, align 8
  %321 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %320, i32 0, i32 0
  %322 = load i32, i32* %321, align 4
  %323 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %324 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %323, i32 0, i32 1
  %325 = load i32, i32* %324, align 8
  %326 = call i64 @be32_to_cpu(i32 %325)
  %327 = call i32 @XFS_B_TO_FSB(i32 %322, i64 %326)
  %328 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %329 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %328, i32 0, i32 5
  store i32 %327, i32* %329, align 8
  %330 = load i32, i32* @EEXIST, align 4
  %331 = call i32 @XFS_ERROR(i32 %330)
  store i32 %331, i32* %3, align 4
  br label %343

332:                                              ; preds = %307, %297, %283, %265, %255, %241, %222
  %333 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %334 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %333, i32 1
  store %struct.TYPE_25__* %334, %struct.TYPE_25__** %7, align 8
  %335 = load i32, i32* %10, align 4
  %336 = add nsw i32 %335, 1
  store i32 %336, i32* %10, align 4
  br label %193

337:                                              ; preds = %208
  %338 = load i32, i32* %10, align 4
  %339 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %340 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %339, i32 0, i32 1
  store i32 %338, i32* %340, align 8
  %341 = load i32, i32* @ENOATTR, align 4
  %342 = call i32 @XFS_ERROR(i32 %341)
  store i32 %342, i32* %3, align 4
  br label %343

343:                                              ; preds = %337, %308, %266, %186
  %344 = load i32, i32* %3, align 4
  ret i32 %344
}

declare dso_local i32 @trace_xfs_attr_leaf_lookup(%struct.TYPE_21__*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @XFS_LBSIZE(i32) #1

declare dso_local i64 @be32_to_cpu(i32) #1

declare dso_local i32 @XFS_ERROR(i32) #1

declare dso_local %struct.TYPE_24__* @xfs_attr_leaf_name_local(%struct.TYPE_22__*, i32) #1

declare dso_local i64 @memcmp(i32, i8*, i64) #1

declare dso_local i32 @xfs_attr_namesp_match(i32, i32) #1

declare dso_local %struct.TYPE_23__* @xfs_attr_leaf_name_remote(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @XFS_B_TO_FSB(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
