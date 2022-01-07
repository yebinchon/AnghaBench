; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_attr_leaf.c_xfs_attr_leaf_toosmall.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_attr_leaf.c_xfs_attr_leaf_toosmall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i32, %struct.TYPE_17__, %struct.TYPE_17__, %struct.TYPE_21__* }
%struct.TYPE_17__ = type { i32, %struct.TYPE_24__* }
%struct.TYPE_24__ = type { i64, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { %struct.TYPE_25__* }
%struct.TYPE_25__ = type { i64, i64, i32 }
%struct.TYPE_21__ = type { i32, i32 }
%struct.TYPE_26__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i32, i32, %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_22__ = type { %struct.TYPE_26__* }

@XFS_ATTR_LEAF_MAGIC = common dso_local global i32 0, align 4
@XFS_ATTR_FORK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_attr_leaf_toosmall(%struct.TYPE_23__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_23__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_26__*, align 8
  %7 = alloca %struct.TYPE_24__*, align 8
  %8 = alloca %struct.TYPE_25__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca %struct.TYPE_22__*, align 8
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %4, align 8
  store i32* %1, i32** %5, align 8
  %17 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_24__*, %struct.TYPE_24__** %19, align 8
  %21 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = sub nsw i32 %24, 1
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %20, i64 %26
  store %struct.TYPE_24__* %27, %struct.TYPE_24__** %7, align 8
  %28 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_18__*, %struct.TYPE_18__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_25__*, %struct.TYPE_25__** %31, align 8
  store %struct.TYPE_25__* %32, %struct.TYPE_25__** %8, align 8
  %33 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @be16_to_cpu(i32 %35)
  %37 = load i32, i32* @XFS_ATTR_LEAF_MAGIC, align 4
  %38 = icmp eq i32 %36, %37
  %39 = zext i1 %38 to i32
  %40 = call i32 @ASSERT(i32 %39)
  %41 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %42 = bitcast %struct.TYPE_25__* %41 to %struct.TYPE_26__*
  store %struct.TYPE_26__* %42, %struct.TYPE_26__** %6, align 8
  %43 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @be16_to_cpu(i32 %46)
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* %9, align 4
  %49 = sext i32 %48 to i64
  %50 = mul i64 %49, 4
  %51 = add i64 4, %50
  %52 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @be16_to_cpu(i32 %55)
  %57 = sext i32 %56 to i64
  %58 = add i64 %51, %57
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %10, align 4
  %60 = load i32, i32* %10, align 4
  %61 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = ashr i32 %63, 1
  %65 = icmp sgt i32 %60, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %2
  %67 = load i32*, i32** %5, align 8
  store i32 0, i32* %67, align 4
  store i32 0, i32* %3, align 4
  br label %272

68:                                               ; preds = %2
  %69 = load i32, i32* %9, align 4
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %99

71:                                               ; preds = %68
  %72 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  %76 = zext i1 %75 to i32
  store i32 %76, i32* %11, align 4
  %77 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %77, i32 0, i32 2
  %79 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %79, i32 0, i32 1
  %81 = call i32 @memcpy(%struct.TYPE_17__* %78, %struct.TYPE_17__* %80, i32 16)
  %82 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %83 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %83, i32 0, i32 2
  %85 = load i32, i32* %11, align 4
  %86 = call i32 @xfs_da_path_shift(%struct.TYPE_23__* %82, %struct.TYPE_17__* %84, i32 %85, i32 0, i32* %13)
  store i32 %86, i32* %12, align 4
  %87 = load i32, i32* %12, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %71
  %90 = load i32, i32* %12, align 4
  store i32 %90, i32* %3, align 4
  br label %272

91:                                               ; preds = %71
  %92 = load i32, i32* %13, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %91
  %95 = load i32*, i32** %5, align 8
  store i32 0, i32* %95, align 4
  br label %98

96:                                               ; preds = %91
  %97 = load i32*, i32** %5, align 8
  store i32 2, i32* %97, align 4
  br label %98

98:                                               ; preds = %96, %94
  store i32 0, i32* %3, align 4
  br label %272

99:                                               ; preds = %68
  %100 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %101 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = call i64 @be32_to_cpu(i64 %102)
  %104 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %105 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = call i64 @be32_to_cpu(i64 %106)
  %108 = icmp slt i64 %103, %107
  %109 = zext i1 %108 to i32
  store i32 %109, i32* %11, align 4
  store i32 0, i32* %14, align 4
  br label %110

110:                                              ; preds = %224, %99
  %111 = load i32, i32* %14, align 4
  %112 = icmp slt i32 %111, 2
  br i1 %112, label %113, label %231

113:                                              ; preds = %110
  %114 = load i32, i32* %11, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %121

116:                                              ; preds = %113
  %117 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %118 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = call i64 @be32_to_cpu(i64 %119)
  store i64 %120, i64* %15, align 8
  br label %126

121:                                              ; preds = %113
  %122 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %123 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = call i64 @be32_to_cpu(i64 %124)
  store i64 %125, i64* %15, align 8
  br label %126

126:                                              ; preds = %121, %116
  %127 = load i64, i64* %15, align 8
  %128 = icmp eq i64 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %126
  br label %224

130:                                              ; preds = %126
  %131 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %132 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %131, i32 0, i32 3
  %133 = load %struct.TYPE_21__*, %struct.TYPE_21__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %137 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %136, i32 0, i32 3
  %138 = load %struct.TYPE_21__*, %struct.TYPE_21__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = load i64, i64* %15, align 8
  %142 = load i32, i32* @XFS_ATTR_FORK, align 4
  %143 = call i32 @xfs_da_read_buf(i32 %135, i32 %140, i64 %141, i32 -1, %struct.TYPE_22__** %16, i32 %142)
  store i32 %143, i32* %12, align 4
  %144 = load i32, i32* %12, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %148

146:                                              ; preds = %130
  %147 = load i32, i32* %12, align 4
  store i32 %147, i32* %3, align 4
  br label %272

148:                                              ; preds = %130
  %149 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %150 = icmp ne %struct.TYPE_22__* %149, null
  %151 = zext i1 %150 to i32
  %152 = call i32 @ASSERT(i32 %151)
  %153 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %154 = bitcast %struct.TYPE_25__* %153 to %struct.TYPE_26__*
  store %struct.TYPE_26__* %154, %struct.TYPE_26__** %6, align 8
  %155 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %156 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @be16_to_cpu(i32 %158)
  store i32 %159, i32* %9, align 4
  %160 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %161 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %164 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = ashr i32 %165, 2
  %167 = sub nsw i32 %162, %166
  store i32 %167, i32* %10, align 4
  %168 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %169 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = call i32 @be16_to_cpu(i32 %171)
  %173 = load i32, i32* %10, align 4
  %174 = sub nsw i32 %173, %172
  store i32 %174, i32* %10, align 4
  %175 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %176 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %175, i32 0, i32 0
  %177 = load %struct.TYPE_26__*, %struct.TYPE_26__** %176, align 8
  store %struct.TYPE_26__* %177, %struct.TYPE_26__** %6, align 8
  %178 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %179 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %179, i32 0, i32 2
  %181 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = call i32 @be16_to_cpu(i32 %182)
  %184 = load i32, i32* @XFS_ATTR_LEAF_MAGIC, align 4
  %185 = icmp eq i32 %183, %184
  %186 = zext i1 %185 to i32
  %187 = call i32 @ASSERT(i32 %186)
  %188 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %189 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  %192 = call i32 @be16_to_cpu(i32 %191)
  %193 = load i32, i32* %9, align 4
  %194 = add nsw i32 %193, %192
  store i32 %194, i32* %9, align 4
  %195 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %196 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  %199 = call i32 @be16_to_cpu(i32 %198)
  %200 = load i32, i32* %10, align 4
  %201 = sub nsw i32 %200, %199
  store i32 %201, i32* %10, align 4
  %202 = load i32, i32* %9, align 4
  %203 = sext i32 %202 to i64
  %204 = mul i64 %203, 4
  %205 = load i32, i32* %10, align 4
  %206 = sext i32 %205 to i64
  %207 = sub i64 %206, %204
  %208 = trunc i64 %207 to i32
  store i32 %208, i32* %10, align 4
  %209 = load i32, i32* %10, align 4
  %210 = sext i32 %209 to i64
  %211 = sub i64 %210, 4
  %212 = trunc i64 %211 to i32
  store i32 %212, i32* %10, align 4
  %213 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %214 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %213, i32 0, i32 3
  %215 = load %struct.TYPE_21__*, %struct.TYPE_21__** %214, align 8
  %216 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 4
  %218 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %219 = call i32 @xfs_da_brelse(i32 %217, %struct.TYPE_22__* %218)
  %220 = load i32, i32* %10, align 4
  %221 = icmp sge i32 %220, 0
  br i1 %221, label %222, label %223

222:                                              ; preds = %148
  br label %231

223:                                              ; preds = %148
  br label %224

224:                                              ; preds = %223, %129
  %225 = load i32, i32* %11, align 4
  %226 = icmp ne i32 %225, 0
  %227 = xor i1 %226, true
  %228 = zext i1 %227 to i32
  store i32 %228, i32* %11, align 4
  %229 = load i32, i32* %14, align 4
  %230 = add nsw i32 %229, 1
  store i32 %230, i32* %14, align 4
  br label %110

231:                                              ; preds = %222, %110
  %232 = load i32, i32* %14, align 4
  %233 = icmp sge i32 %232, 2
  br i1 %233, label %234, label %236

234:                                              ; preds = %231
  %235 = load i32*, i32** %5, align 8
  store i32 0, i32* %235, align 4
  store i32 0, i32* %3, align 4
  br label %272

236:                                              ; preds = %231
  %237 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %238 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %237, i32 0, i32 2
  %239 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %240 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %239, i32 0, i32 1
  %241 = call i32 @memcpy(%struct.TYPE_17__* %238, %struct.TYPE_17__* %240, i32 16)
  %242 = load i64, i64* %15, align 8
  %243 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %244 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %243, i32 0, i32 0
  %245 = load i64, i64* %244, align 8
  %246 = icmp slt i64 %242, %245
  br i1 %246, label %247, label %253

247:                                              ; preds = %236
  %248 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %249 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %250 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %249, i32 0, i32 2
  %251 = load i32, i32* %11, align 4
  %252 = call i32 @xfs_da_path_shift(%struct.TYPE_23__* %248, %struct.TYPE_17__* %250, i32 %251, i32 0, i32* %13)
  store i32 %252, i32* %12, align 4
  br label %259

253:                                              ; preds = %236
  %254 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %255 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %256 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %255, i32 0, i32 1
  %257 = load i32, i32* %11, align 4
  %258 = call i32 @xfs_da_path_shift(%struct.TYPE_23__* %254, %struct.TYPE_17__* %256, i32 %257, i32 0, i32* %13)
  store i32 %258, i32* %12, align 4
  br label %259

259:                                              ; preds = %253, %247
  %260 = load i32, i32* %12, align 4
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %262, label %264

262:                                              ; preds = %259
  %263 = load i32, i32* %12, align 4
  store i32 %263, i32* %3, align 4
  br label %272

264:                                              ; preds = %259
  %265 = load i32, i32* %13, align 4
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %267, label %269

267:                                              ; preds = %264
  %268 = load i32*, i32** %5, align 8
  store i32 0, i32* %268, align 4
  br label %271

269:                                              ; preds = %264
  %270 = load i32*, i32** %5, align 8
  store i32 1, i32* %270, align 4
  br label %271

271:                                              ; preds = %269, %267
  store i32 0, i32* %3, align 4
  br label %272

272:                                              ; preds = %271, %262, %234, %146, %98, %89, %66
  %273 = load i32, i32* %3, align 4
  ret i32 %273
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_17__*, %struct.TYPE_17__*, i32) #1

declare dso_local i32 @xfs_da_path_shift(%struct.TYPE_23__*, %struct.TYPE_17__*, i32, i32, i32*) #1

declare dso_local i64 @be32_to_cpu(i64) #1

declare dso_local i32 @xfs_da_read_buf(i32, i32, i64, i32, %struct.TYPE_22__**, i32) #1

declare dso_local i32 @xfs_da_brelse(i32, %struct.TYPE_22__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
