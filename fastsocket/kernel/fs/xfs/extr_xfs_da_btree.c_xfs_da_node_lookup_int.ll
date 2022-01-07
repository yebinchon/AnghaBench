; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_da_btree.c_xfs_da_node_lookup_int.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_da_btree.c_xfs_da_node_lookup_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { %struct.TYPE_20__, %struct.TYPE_21__*, %struct.TYPE_27__* }
%struct.TYPE_20__ = type { i32, %struct.TYPE_24__* }
%struct.TYPE_24__ = type { i64, i64, i32, i64, %struct.TYPE_28__* }
%struct.TYPE_28__ = type { %struct.TYPE_26__* }
%struct.TYPE_26__ = type { %struct.TYPE_25__*, %struct.TYPE_22__, i32 }
%struct.TYPE_25__ = type { i32, i32 }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_21__ = type { i64 }
%struct.TYPE_27__ = type { i64, i64, i32, i64, i32, i32 }

@XFS_DATA_FORK = common dso_local global i64 0, align 8
@XFS_DA_NODE_MAXDEPTH = common dso_local global i32 0, align 4
@XFS_DA_NODE_MAGIC = common dso_local global i64 0, align 8
@XFS_DIR2_LEAFN_MAGIC = common dso_local global i64 0, align 8
@XFS_ATTR_LEAF_MAGIC = common dso_local global i64 0, align 8
@EFSCORRUPTED = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@ENOATTR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_da_node_lookup_int(%struct.TYPE_23__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_23__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_24__*, align 8
  %7 = alloca %struct.TYPE_26__*, align 8
  %8 = alloca %struct.TYPE_26__*, align 8
  %9 = alloca %struct.TYPE_25__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.TYPE_27__*, align 8
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %4, align 8
  store i32* %1, i32** %5, align 8
  %19 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %19, i32 0, i32 2
  %21 = load %struct.TYPE_27__*, %struct.TYPE_27__** %20, align 8
  store %struct.TYPE_27__* %21, %struct.TYPE_27__** %18, align 8
  %22 = load %struct.TYPE_27__*, %struct.TYPE_27__** %18, align 8
  %23 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @XFS_DATA_FORK, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %33

27:                                               ; preds = %2
  %28 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_21__*, %struct.TYPE_21__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  br label %34

33:                                               ; preds = %2
  br label %34

34:                                               ; preds = %33, %27
  %35 = phi i64 [ %32, %27 ], [ 0, %33 ]
  store i64 %35, i64* %10, align 8
  %36 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_24__*, %struct.TYPE_24__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %39, i64 0
  store %struct.TYPE_24__* %40, %struct.TYPE_24__** %6, align 8
  %41 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %42, i32 0, i32 0
  store i32 1, i32* %43, align 8
  br label %44

44:                                               ; preds = %305, %34
  %45 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @XFS_DA_NODE_MAXDEPTH, align 4
  %50 = icmp sle i32 %48, %49
  br i1 %50, label %51, label %313

51:                                               ; preds = %44
  %52 = load i64, i64* %10, align 8
  %53 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %53, i32 0, i32 3
  store i64 %52, i64* %54, align 8
  %55 = load %struct.TYPE_27__*, %struct.TYPE_27__** %18, align 8
  %56 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %55, i32 0, i32 5
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.TYPE_27__*, %struct.TYPE_27__** %18, align 8
  %59 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 8
  %61 = load i64, i64* %10, align 8
  %62 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %62, i32 0, i32 4
  %64 = load %struct.TYPE_27__*, %struct.TYPE_27__** %18, align 8
  %65 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = call i32 @xfs_da_read_buf(i32 %57, i32 %60, i64 %61, i32 -1, %struct.TYPE_28__** %63, i64 %66)
  store i32 %67, i32* %14, align 4
  %68 = load i32, i32* %14, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %79

70:                                               ; preds = %51
  %71 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %71, i32 0, i32 3
  store i64 0, i64* %72, align 8
  %73 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = add nsw i32 %76, -1
  store i32 %77, i32* %75, align 8
  %78 = load i32, i32* %14, align 4
  store i32 %78, i32* %3, align 4
  br label %400

79:                                               ; preds = %51
  %80 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %80, i32 0, i32 4
  %82 = load %struct.TYPE_28__*, %struct.TYPE_28__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_26__*, %struct.TYPE_26__** %83, align 8
  store %struct.TYPE_26__* %84, %struct.TYPE_26__** %7, align 8
  %85 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %86 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = call i8* @be16_to_cpu(i32 %87)
  %89 = ptrtoint i8* %88 to i64
  %90 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %90, i32 0, i32 0
  store i64 %89, i64* %91, align 8
  %92 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @XFS_DA_NODE_MAGIC, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %109, label %97

97:                                               ; preds = %79
  %98 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @XFS_DIR2_LEAFN_MAGIC, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %109, label %103

103:                                              ; preds = %97
  %104 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @XFS_ATTR_LEAF_MAGIC, align 8
  %108 = icmp eq i64 %106, %107
  br label %109

109:                                              ; preds = %103, %97, %79
  %110 = phi i1 [ true, %97 ], [ true, %79 ], [ %108, %103 ]
  %111 = zext i1 %110 to i32
  %112 = call i32 @ASSERT(i32 %111)
  %113 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @XFS_DA_NODE_MAGIC, align 8
  %117 = icmp eq i64 %115, %116
  br i1 %117, label %118, label %276

118:                                              ; preds = %109
  %119 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %120 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %119, i32 0, i32 4
  %121 = load %struct.TYPE_28__*, %struct.TYPE_28__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %121, i32 0, i32 0
  %123 = load %struct.TYPE_26__*, %struct.TYPE_26__** %122, align 8
  store %struct.TYPE_26__* %123, %struct.TYPE_26__** %8, align 8
  %124 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %125 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = call i8* @be16_to_cpu(i32 %127)
  %129 = ptrtoint i8* %128 to i32
  store i32 %129, i32* %13, align 4
  %130 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %131 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %130, i32 0, i32 0
  %132 = load %struct.TYPE_25__*, %struct.TYPE_25__** %131, align 8
  %133 = load i32, i32* %13, align 4
  %134 = sub nsw i32 %133, 1
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %132, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = call i64 @be32_to_cpu(i32 %138)
  %140 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %141 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %140, i32 0, i32 1
  store i64 %139, i64* %141, align 8
  %142 = load i32, i32* %13, align 4
  %143 = sdiv i32 %142, 2
  store i32 %143, i32* %12, align 4
  store i32 %143, i32* %11, align 4
  %144 = load %struct.TYPE_27__*, %struct.TYPE_27__** %18, align 8
  %145 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %144, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  store i64 %146, i64* %16, align 8
  %147 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %148 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %147, i32 0, i32 0
  %149 = load %struct.TYPE_25__*, %struct.TYPE_25__** %148, align 8
  %150 = load i32, i32* %11, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %149, i64 %151
  store %struct.TYPE_25__* %152, %struct.TYPE_25__** %9, align 8
  br label %153

153:                                              ; preds = %181, %118
  %154 = load i32, i32* %12, align 4
  %155 = icmp sgt i32 %154, 4
  br i1 %155, label %156, label %188

156:                                              ; preds = %153
  %157 = load i32, i32* %12, align 4
  %158 = sdiv i32 %157, 2
  store i32 %158, i32* %12, align 4
  %159 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %160 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = call i64 @be32_to_cpu(i32 %161)
  store i64 %162, i64* %17, align 8
  %163 = load i64, i64* %17, align 8
  %164 = load i64, i64* %16, align 8
  %165 = icmp slt i64 %163, %164
  br i1 %165, label %166, label %170

166:                                              ; preds = %156
  %167 = load i32, i32* %12, align 4
  %168 = load i32, i32* %11, align 4
  %169 = add nsw i32 %168, %167
  store i32 %169, i32* %11, align 4
  br label %180

170:                                              ; preds = %156
  %171 = load i64, i64* %17, align 8
  %172 = load i64, i64* %16, align 8
  %173 = icmp sgt i64 %171, %172
  br i1 %173, label %174, label %178

174:                                              ; preds = %170
  %175 = load i32, i32* %12, align 4
  %176 = load i32, i32* %11, align 4
  %177 = sub nsw i32 %176, %175
  store i32 %177, i32* %11, align 4
  br label %179

178:                                              ; preds = %170
  br label %188

179:                                              ; preds = %174
  br label %180

180:                                              ; preds = %179, %166
  br label %181

181:                                              ; preds = %180
  %182 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %183 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %182, i32 0, i32 0
  %184 = load %struct.TYPE_25__*, %struct.TYPE_25__** %183, align 8
  %185 = load i32, i32* %11, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %184, i64 %186
  store %struct.TYPE_25__* %187, %struct.TYPE_25__** %9, align 8
  br label %153

188:                                              ; preds = %178, %153
  %189 = load i32, i32* %11, align 4
  %190 = icmp sge i32 %189, 0
  br i1 %190, label %191, label %195

191:                                              ; preds = %188
  %192 = load i32, i32* %11, align 4
  %193 = load i32, i32* %13, align 4
  %194 = icmp slt i32 %192, %193
  br label %195

195:                                              ; preds = %191, %188
  %196 = phi i1 [ false, %188 ], [ %194, %191 ]
  %197 = zext i1 %196 to i32
  %198 = call i32 @ASSERT(i32 %197)
  %199 = load i32, i32* %12, align 4
  %200 = icmp sle i32 %199, 4
  br i1 %200, label %208, label %201

201:                                              ; preds = %195
  %202 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %203 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 4
  %205 = call i64 @be32_to_cpu(i32 %204)
  %206 = load i64, i64* %16, align 8
  %207 = icmp eq i64 %205, %206
  br label %208

208:                                              ; preds = %201, %195
  %209 = phi i1 [ true, %195 ], [ %207, %201 ]
  %210 = zext i1 %209 to i32
  %211 = call i32 @ASSERT(i32 %210)
  br label %212

212:                                              ; preds = %224, %208
  %213 = load i32, i32* %11, align 4
  %214 = icmp sgt i32 %213, 0
  br i1 %214, label %215, label %222

215:                                              ; preds = %212
  %216 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %217 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %216, i32 0, i32 1
  %218 = load i32, i32* %217, align 4
  %219 = call i64 @be32_to_cpu(i32 %218)
  %220 = load i64, i64* %16, align 8
  %221 = icmp sge i64 %219, %220
  br label %222

222:                                              ; preds = %215, %212
  %223 = phi i1 [ false, %212 ], [ %221, %215 ]
  br i1 %223, label %224, label %229

224:                                              ; preds = %222
  %225 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %226 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %225, i32 -1
  store %struct.TYPE_25__* %226, %struct.TYPE_25__** %9, align 8
  %227 = load i32, i32* %11, align 4
  %228 = add nsw i32 %227, -1
  store i32 %228, i32* %11, align 4
  br label %212

229:                                              ; preds = %222
  br label %230

230:                                              ; preds = %243, %229
  %231 = load i32, i32* %11, align 4
  %232 = load i32, i32* %13, align 4
  %233 = icmp slt i32 %231, %232
  br i1 %233, label %234, label %241

234:                                              ; preds = %230
  %235 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %236 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %235, i32 0, i32 1
  %237 = load i32, i32* %236, align 4
  %238 = call i64 @be32_to_cpu(i32 %237)
  %239 = load i64, i64* %16, align 8
  %240 = icmp slt i64 %238, %239
  br label %241

241:                                              ; preds = %234, %230
  %242 = phi i1 [ false, %230 ], [ %240, %234 ]
  br i1 %242, label %243, label %248

243:                                              ; preds = %241
  %244 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %245 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %244, i32 1
  store %struct.TYPE_25__* %245, %struct.TYPE_25__** %9, align 8
  %246 = load i32, i32* %11, align 4
  %247 = add nsw i32 %246, 1
  store i32 %247, i32* %11, align 4
  br label %230

248:                                              ; preds = %241
  %249 = load i32, i32* %11, align 4
  %250 = load i32, i32* %13, align 4
  %251 = icmp eq i32 %249, %250
  br i1 %251, label %252, label %267

252:                                              ; preds = %248
  %253 = load i32, i32* %13, align 4
  %254 = sub nsw i32 %253, 1
  %255 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %256 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %255, i32 0, i32 2
  store i32 %254, i32* %256, align 8
  %257 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %258 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %257, i32 0, i32 0
  %259 = load %struct.TYPE_25__*, %struct.TYPE_25__** %258, align 8
  %260 = load i32, i32* %13, align 4
  %261 = sub nsw i32 %260, 1
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %259, i64 %262
  %264 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %263, i32 0, i32 0
  %265 = load i32, i32* %264, align 4
  %266 = call i64 @be32_to_cpu(i32 %265)
  store i64 %266, i64* %10, align 8
  br label %275

267:                                              ; preds = %248
  %268 = load i32, i32* %11, align 4
  %269 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %270 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %269, i32 0, i32 2
  store i32 %268, i32* %270, align 8
  %271 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %272 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %271, i32 0, i32 0
  %273 = load i32, i32* %272, align 4
  %274 = call i64 @be32_to_cpu(i32 %273)
  store i64 %274, i64* %10, align 8
  br label %275

275:                                              ; preds = %267, %252
  br label %304

276:                                              ; preds = %109
  %277 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %278 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %277, i32 0, i32 0
  %279 = load i64, i64* %278, align 8
  %280 = load i64, i64* @XFS_ATTR_LEAF_MAGIC, align 8
  %281 = icmp eq i64 %279, %280
  br i1 %281, label %282, label %289

282:                                              ; preds = %276
  %283 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %284 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %283, i32 0, i32 4
  %285 = load %struct.TYPE_28__*, %struct.TYPE_28__** %284, align 8
  %286 = call i64 @xfs_attr_leaf_lasthash(%struct.TYPE_28__* %285, i32* null)
  %287 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %288 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %287, i32 0, i32 1
  store i64 %286, i64* %288, align 8
  br label %313

289:                                              ; preds = %276
  %290 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %291 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %290, i32 0, i32 0
  %292 = load i64, i64* %291, align 8
  %293 = load i64, i64* @XFS_DIR2_LEAFN_MAGIC, align 8
  %294 = icmp eq i64 %292, %293
  br i1 %294, label %295, label %302

295:                                              ; preds = %289
  %296 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %297 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %296, i32 0, i32 4
  %298 = load %struct.TYPE_28__*, %struct.TYPE_28__** %297, align 8
  %299 = call i64 @xfs_dir2_leafn_lasthash(%struct.TYPE_28__* %298, i32* null)
  %300 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %301 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %300, i32 0, i32 1
  store i64 %299, i64* %301, align 8
  br label %313

302:                                              ; preds = %289
  br label %303

303:                                              ; preds = %302
  br label %304

304:                                              ; preds = %303, %275
  br label %305

305:                                              ; preds = %304
  %306 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %307 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %306, i32 1
  store %struct.TYPE_24__* %307, %struct.TYPE_24__** %6, align 8
  %308 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %309 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %308, i32 0, i32 0
  %310 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %309, i32 0, i32 0
  %311 = load i32, i32* %310, align 8
  %312 = add nsw i32 %311, 1
  store i32 %312, i32* %310, align 8
  br label %44

313:                                              ; preds = %295, %282, %44
  br label %314

314:                                              ; preds = %384, %313
  %315 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %316 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %315, i32 0, i32 0
  %317 = load i64, i64* %316, align 8
  %318 = load i64, i64* @XFS_DIR2_LEAFN_MAGIC, align 8
  %319 = icmp eq i64 %317, %318
  br i1 %319, label %320, label %329

320:                                              ; preds = %314
  %321 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %322 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %321, i32 0, i32 4
  %323 = load %struct.TYPE_28__*, %struct.TYPE_28__** %322, align 8
  %324 = load %struct.TYPE_27__*, %struct.TYPE_27__** %18, align 8
  %325 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %326 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %325, i32 0, i32 2
  %327 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %328 = call i32 @xfs_dir2_leafn_lookup_int(%struct.TYPE_28__* %323, %struct.TYPE_27__* %324, i32* %326, %struct.TYPE_23__* %327)
  store i32 %328, i32* %15, align 4
  br label %356

329:                                              ; preds = %314
  %330 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %331 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %330, i32 0, i32 0
  %332 = load i64, i64* %331, align 8
  %333 = load i64, i64* @XFS_ATTR_LEAF_MAGIC, align 8
  %334 = icmp eq i64 %332, %333
  br i1 %334, label %335, label %351

335:                                              ; preds = %329
  %336 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %337 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %336, i32 0, i32 4
  %338 = load %struct.TYPE_28__*, %struct.TYPE_28__** %337, align 8
  %339 = load %struct.TYPE_27__*, %struct.TYPE_27__** %18, align 8
  %340 = call i32 @xfs_attr_leaf_lookup_int(%struct.TYPE_28__* %338, %struct.TYPE_27__* %339)
  store i32 %340, i32* %15, align 4
  %341 = load %struct.TYPE_27__*, %struct.TYPE_27__** %18, align 8
  %342 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %341, i32 0, i32 2
  %343 = load i32, i32* %342, align 8
  %344 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %345 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %344, i32 0, i32 2
  store i32 %343, i32* %345, align 8
  %346 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %347 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %346, i32 0, i32 3
  %348 = load i64, i64* %347, align 8
  %349 = load %struct.TYPE_27__*, %struct.TYPE_27__** %18, align 8
  %350 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %349, i32 0, i32 3
  store i64 %348, i64* %350, align 8
  br label %355

351:                                              ; preds = %329
  %352 = call i32 @ASSERT(i32 0)
  %353 = load i32, i32* @EFSCORRUPTED, align 4
  %354 = call i32 @XFS_ERROR(i32 %353)
  store i32 %354, i32* %3, align 4
  br label %400

355:                                              ; preds = %335
  br label %356

356:                                              ; preds = %355, %320
  %357 = load i32, i32* %15, align 4
  %358 = load i32, i32* @ENOENT, align 4
  %359 = icmp eq i32 %357, %358
  br i1 %359, label %364, label %360

360:                                              ; preds = %356
  %361 = load i32, i32* %15, align 4
  %362 = load i32, i32* @ENOATTR, align 4
  %363 = icmp eq i32 %361, %362
  br i1 %363, label %364, label %396

364:                                              ; preds = %360, %356
  %365 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %366 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %365, i32 0, i32 1
  %367 = load i64, i64* %366, align 8
  %368 = load %struct.TYPE_27__*, %struct.TYPE_27__** %18, align 8
  %369 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %368, i32 0, i32 1
  %370 = load i64, i64* %369, align 8
  %371 = icmp eq i64 %367, %370
  br i1 %371, label %372, label %396

372:                                              ; preds = %364
  %373 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %374 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %375 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %374, i32 0, i32 0
  %376 = call i32 @xfs_da_path_shift(%struct.TYPE_23__* %373, %struct.TYPE_20__* %375, i32 1, i32 1, i32* %15)
  store i32 %376, i32* %14, align 4
  %377 = load i32, i32* %14, align 4
  %378 = icmp ne i32 %377, 0
  br i1 %378, label %379, label %381

379:                                              ; preds = %372
  %380 = load i32, i32* %14, align 4
  store i32 %380, i32* %3, align 4
  br label %400

381:                                              ; preds = %372
  %382 = load i32, i32* %15, align 4
  %383 = icmp eq i32 %382, 0
  br i1 %383, label %384, label %385

384:                                              ; preds = %381
  br label %314

385:                                              ; preds = %381
  %386 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %387 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %386, i32 0, i32 0
  %388 = load i64, i64* %387, align 8
  %389 = load i64, i64* @XFS_ATTR_LEAF_MAGIC, align 8
  %390 = icmp eq i64 %388, %389
  br i1 %390, label %391, label %394

391:                                              ; preds = %385
  %392 = load i32, i32* @ENOATTR, align 4
  %393 = call i32 @XFS_ERROR(i32 %392)
  store i32 %393, i32* %15, align 4
  br label %394

394:                                              ; preds = %391, %385
  br label %395

395:                                              ; preds = %394
  br label %396

396:                                              ; preds = %395, %364, %360
  br label %397

397:                                              ; preds = %396
  %398 = load i32, i32* %15, align 4
  %399 = load i32*, i32** %5, align 8
  store i32 %398, i32* %399, align 4
  store i32 0, i32* %3, align 4
  br label %400

400:                                              ; preds = %397, %379, %351, %70
  %401 = load i32, i32* %3, align 4
  ret i32 %401
}

declare dso_local i32 @xfs_da_read_buf(i32, i32, i64, i32, %struct.TYPE_28__**, i64) #1

declare dso_local i8* @be16_to_cpu(i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @be32_to_cpu(i32) #1

declare dso_local i64 @xfs_attr_leaf_lasthash(%struct.TYPE_28__*, i32*) #1

declare dso_local i64 @xfs_dir2_leafn_lasthash(%struct.TYPE_28__*, i32*) #1

declare dso_local i32 @xfs_dir2_leafn_lookup_int(%struct.TYPE_28__*, %struct.TYPE_27__*, i32*, %struct.TYPE_23__*) #1

declare dso_local i32 @xfs_attr_leaf_lookup_int(%struct.TYPE_28__*, %struct.TYPE_27__*) #1

declare dso_local i32 @XFS_ERROR(i32) #1

declare dso_local i32 @xfs_da_path_shift(%struct.TYPE_23__*, %struct.TYPE_20__*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
