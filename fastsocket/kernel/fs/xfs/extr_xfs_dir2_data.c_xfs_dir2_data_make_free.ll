; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_dir2_data.c_xfs_dir2_data_make_free.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_dir2_data.c_xfs_dir2_data_make_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { %struct.TYPE_25__* }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_29__ = type { %struct.TYPE_27__* }
%struct.TYPE_27__ = type { %struct.TYPE_23__ }
%struct.TYPE_23__ = type { %struct.TYPE_28__*, i32 }
%struct.TYPE_28__ = type { i64 }
%struct.TYPE_26__ = type { i64, i64 }

@XFS_DIR2_DATA_MAGIC = common dso_local global i64 0, align 8
@XFS_DIR2_BLOCK_MAGIC = common dso_local global i64 0, align 8
@XFS_DIR2_DATA_FREE_TAG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xfs_dir2_data_make_free(%struct.TYPE_24__* %0, %struct.TYPE_29__* %1, i32 %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca %struct.TYPE_24__*, align 8
  %8 = alloca %struct.TYPE_29__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_27__*, align 8
  %14 = alloca %struct.TYPE_28__*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct.TYPE_25__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_26__*, align 8
  %19 = alloca %struct.TYPE_26__*, align 8
  %20 = alloca %struct.TYPE_26__*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i64*, align 8
  %23 = alloca %struct.TYPE_28__*, align 8
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %7, align 8
  store %struct.TYPE_29__* %1, %struct.TYPE_29__** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  %24 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_25__*, %struct.TYPE_25__** %25, align 8
  store %struct.TYPE_25__* %26, %struct.TYPE_25__** %16, align 8
  %27 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_27__*, %struct.TYPE_27__** %28, align 8
  store %struct.TYPE_27__* %29, %struct.TYPE_27__** %13, align 8
  %30 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %31 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = call i64 @be32_to_cpu(i32 %33)
  %35 = load i64, i64* @XFS_DIR2_DATA_MAGIC, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %45

37:                                               ; preds = %6
  %38 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %39 = bitcast %struct.TYPE_27__* %38 to i8*
  %40 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %41 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8, i8* %39, i64 %43
  store i8* %44, i8** %15, align 8
  br label %62

45:                                               ; preds = %6
  %46 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %47 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = call i64 @be32_to_cpu(i32 %49)
  %51 = load i64, i64* @XFS_DIR2_BLOCK_MAGIC, align 8
  %52 = icmp eq i64 %50, %51
  %53 = zext i1 %52 to i32
  %54 = call i32 @ASSERT(i32 %53)
  %55 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %56 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %57 = bitcast %struct.TYPE_27__* %56 to i32*
  %58 = call i32* @xfs_dir2_block_tail_p(%struct.TYPE_25__* %55, i32* %57)
  store i32* %58, i32** %21, align 8
  %59 = load i32*, i32** %21, align 8
  %60 = call i64 @xfs_dir2_block_leaf_p(i32* %59)
  %61 = inttoptr i64 %60 to i8*
  store i8* %61, i8** %15, align 8
  br label %62

62:                                               ; preds = %45, %37
  %63 = load i32, i32* %9, align 4
  %64 = sext i32 %63 to i64
  %65 = icmp ugt i64 %64, 16
  br i1 %65, label %66, label %90

66:                                               ; preds = %62
  %67 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %68 = bitcast %struct.TYPE_27__* %67 to i8*
  %69 = load i32, i32* %9, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8, i8* %68, i64 %70
  %72 = bitcast i8* %71 to i64*
  %73 = getelementptr inbounds i64, i64* %72, i64 -1
  store i64* %73, i64** %22, align 8
  %74 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %75 = bitcast %struct.TYPE_27__* %74 to i8*
  %76 = load i64*, i64** %22, align 8
  %77 = load i64, i64* %76, align 8
  %78 = call i32 @be16_to_cpu(i64 %77)
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8, i8* %75, i64 %79
  %81 = bitcast i8* %80 to %struct.TYPE_26__*
  store %struct.TYPE_26__* %81, %struct.TYPE_26__** %20, align 8
  %82 = load %struct.TYPE_26__*, %struct.TYPE_26__** %20, align 8
  %83 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = call i32 @be16_to_cpu(i64 %84)
  %86 = load i32, i32* @XFS_DIR2_DATA_FREE_TAG, align 4
  %87 = icmp ne i32 %85, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %66
  store %struct.TYPE_26__* null, %struct.TYPE_26__** %20, align 8
  br label %89

89:                                               ; preds = %88, %66
  br label %91

90:                                               ; preds = %62
  store %struct.TYPE_26__* null, %struct.TYPE_26__** %20, align 8
  br label %91

91:                                               ; preds = %90, %89
  %92 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %93 = bitcast %struct.TYPE_27__* %92 to i8*
  %94 = load i32, i32* %9, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i8, i8* %93, i64 %95
  %97 = load i32, i32* %10, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i8, i8* %96, i64 %98
  %100 = load i8*, i8** %15, align 8
  %101 = icmp ult i8* %99, %100
  br i1 %101, label %102, label %120

102:                                              ; preds = %91
  %103 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %104 = bitcast %struct.TYPE_27__* %103 to i8*
  %105 = load i32, i32* %9, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i8, i8* %104, i64 %106
  %108 = load i32, i32* %10, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i8, i8* %107, i64 %109
  %111 = bitcast i8* %110 to %struct.TYPE_26__*
  store %struct.TYPE_26__* %111, %struct.TYPE_26__** %19, align 8
  %112 = load %struct.TYPE_26__*, %struct.TYPE_26__** %19, align 8
  %113 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = call i32 @be16_to_cpu(i64 %114)
  %116 = load i32, i32* @XFS_DIR2_DATA_FREE_TAG, align 4
  %117 = icmp ne i32 %115, %116
  br i1 %117, label %118, label %119

118:                                              ; preds = %102
  store %struct.TYPE_26__* null, %struct.TYPE_26__** %19, align 8
  br label %119

119:                                              ; preds = %118, %102
  br label %121

120:                                              ; preds = %91
  store %struct.TYPE_26__* null, %struct.TYPE_26__** %19, align 8
  br label %121

121:                                              ; preds = %120, %119
  %122 = load i32*, i32** %12, align 8
  %123 = load i32, i32* %122, align 4
  %124 = icmp eq i32 %123, 0
  %125 = zext i1 %124 to i32
  %126 = call i32 @ASSERT(i32 %125)
  store i32 0, i32* %17, align 4
  %127 = load %struct.TYPE_26__*, %struct.TYPE_26__** %20, align 8
  %128 = icmp ne %struct.TYPE_26__* %127, null
  br i1 %128, label %129, label %255

129:                                              ; preds = %121
  %130 = load %struct.TYPE_26__*, %struct.TYPE_26__** %19, align 8
  %131 = icmp ne %struct.TYPE_26__* %130, null
  br i1 %131, label %132, label %255

132:                                              ; preds = %129
  %133 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %134 = load %struct.TYPE_26__*, %struct.TYPE_26__** %20, align 8
  %135 = call %struct.TYPE_28__* @xfs_dir2_data_freefind(%struct.TYPE_27__* %133, %struct.TYPE_26__* %134)
  store %struct.TYPE_28__* %135, %struct.TYPE_28__** %14, align 8
  %136 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %137 = load %struct.TYPE_26__*, %struct.TYPE_26__** %19, align 8
  %138 = call %struct.TYPE_28__* @xfs_dir2_data_freefind(%struct.TYPE_27__* %136, %struct.TYPE_26__* %137)
  store %struct.TYPE_28__* %138, %struct.TYPE_28__** %23, align 8
  %139 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %140 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %140, i32 0, i32 0
  %142 = load %struct.TYPE_28__*, %struct.TYPE_28__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %142, i64 2
  %144 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = icmp ne i64 %145, 0
  %147 = zext i1 %146 to i32
  store i32 %147, i32* %17, align 4
  %148 = load %struct.TYPE_26__*, %struct.TYPE_26__** %20, align 8
  %149 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %148, i32 0, i32 1
  %150 = load i32, i32* %10, align 4
  %151 = load %struct.TYPE_26__*, %struct.TYPE_26__** %19, align 8
  %152 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %151, i32 0, i32 1
  %153 = load i64, i64* %152, align 8
  %154 = call i32 @be16_to_cpu(i64 %153)
  %155 = add nsw i32 %150, %154
  %156 = call i32 @be16_add_cpu(i64* %149, i32 %155)
  %157 = load %struct.TYPE_26__*, %struct.TYPE_26__** %20, align 8
  %158 = bitcast %struct.TYPE_26__* %157 to i8*
  %159 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %160 = bitcast %struct.TYPE_27__* %159 to i8*
  %161 = ptrtoint i8* %158 to i64
  %162 = ptrtoint i8* %160 to i64
  %163 = sub i64 %161, %162
  %164 = trunc i64 %163 to i32
  %165 = call i8* @cpu_to_be16(i32 %164)
  %166 = load %struct.TYPE_26__*, %struct.TYPE_26__** %20, align 8
  %167 = call i8** @xfs_dir2_data_unused_tag_p(%struct.TYPE_26__* %166)
  store i8* %165, i8** %167, align 8
  %168 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %169 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %170 = load %struct.TYPE_26__*, %struct.TYPE_26__** %20, align 8
  %171 = call i32 @xfs_dir2_data_log_unused(%struct.TYPE_24__* %168, %struct.TYPE_29__* %169, %struct.TYPE_26__* %170)
  %172 = load i32, i32* %17, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %254, label %174

174:                                              ; preds = %132
  %175 = load %struct.TYPE_28__*, %struct.TYPE_28__** %14, align 8
  %176 = icmp ne %struct.TYPE_28__* %175, null
  br i1 %176, label %177, label %180

177:                                              ; preds = %174
  %178 = load %struct.TYPE_28__*, %struct.TYPE_28__** %23, align 8
  %179 = icmp ne %struct.TYPE_28__* %178, null
  br label %180

180:                                              ; preds = %177, %174
  %181 = phi i1 [ false, %174 ], [ %179, %177 ]
  %182 = zext i1 %181 to i32
  %183 = call i32 @ASSERT(i32 %182)
  %184 = load %struct.TYPE_28__*, %struct.TYPE_28__** %14, align 8
  %185 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %186 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %186, i32 0, i32 0
  %188 = load %struct.TYPE_28__*, %struct.TYPE_28__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %188, i64 1
  %190 = icmp eq %struct.TYPE_28__* %184, %189
  br i1 %190, label %191, label %207

191:                                              ; preds = %180
  %192 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %193 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %193, i32 0, i32 0
  %195 = load %struct.TYPE_28__*, %struct.TYPE_28__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %195, i64 0
  store %struct.TYPE_28__* %196, %struct.TYPE_28__** %14, align 8
  %197 = load %struct.TYPE_28__*, %struct.TYPE_28__** %23, align 8
  %198 = load %struct.TYPE_28__*, %struct.TYPE_28__** %14, align 8
  %199 = icmp eq %struct.TYPE_28__* %197, %198
  %200 = zext i1 %199 to i32
  %201 = call i32 @ASSERT(i32 %200)
  %202 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %203 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %202, i32 0, i32 0
  %204 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %203, i32 0, i32 0
  %205 = load %struct.TYPE_28__*, %struct.TYPE_28__** %204, align 8
  %206 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %205, i64 1
  store %struct.TYPE_28__* %206, %struct.TYPE_28__** %23, align 8
  br label %207

207:                                              ; preds = %191, %180
  %208 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %209 = load %struct.TYPE_28__*, %struct.TYPE_28__** %23, align 8
  %210 = load i32*, i32** %11, align 8
  %211 = call i32 @xfs_dir2_data_freeremove(%struct.TYPE_27__* %208, %struct.TYPE_28__* %209, i32* %210)
  %212 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %213 = load %struct.TYPE_28__*, %struct.TYPE_28__** %14, align 8
  %214 = load i32*, i32** %11, align 8
  %215 = call i32 @xfs_dir2_data_freeremove(%struct.TYPE_27__* %212, %struct.TYPE_28__* %213, i32* %214)
  %216 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %217 = load %struct.TYPE_26__*, %struct.TYPE_26__** %20, align 8
  %218 = load i32*, i32** %11, align 8
  %219 = call %struct.TYPE_28__* @xfs_dir2_data_freeinsert(%struct.TYPE_27__* %216, %struct.TYPE_26__* %217, i32* %218)
  store %struct.TYPE_28__* %219, %struct.TYPE_28__** %14, align 8
  %220 = load %struct.TYPE_28__*, %struct.TYPE_28__** %14, align 8
  %221 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %222 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %221, i32 0, i32 0
  %223 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %222, i32 0, i32 0
  %224 = load %struct.TYPE_28__*, %struct.TYPE_28__** %223, align 8
  %225 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %224, i64 0
  %226 = icmp eq %struct.TYPE_28__* %220, %225
  %227 = zext i1 %226 to i32
  %228 = call i32 @ASSERT(i32 %227)
  %229 = load %struct.TYPE_28__*, %struct.TYPE_28__** %14, align 8
  %230 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %229, i32 0, i32 0
  %231 = load i64, i64* %230, align 8
  %232 = load %struct.TYPE_26__*, %struct.TYPE_26__** %20, align 8
  %233 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %232, i32 0, i32 1
  %234 = load i64, i64* %233, align 8
  %235 = icmp eq i64 %231, %234
  %236 = zext i1 %235 to i32
  %237 = call i32 @ASSERT(i32 %236)
  %238 = load %struct.TYPE_28__*, %struct.TYPE_28__** %14, align 8
  %239 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %238, i64 1
  %240 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %239, i32 0, i32 0
  %241 = load i64, i64* %240, align 8
  %242 = icmp ne i64 %241, 0
  %243 = xor i1 %242, true
  %244 = zext i1 %243 to i32
  %245 = call i32 @ASSERT(i32 %244)
  %246 = load %struct.TYPE_28__*, %struct.TYPE_28__** %14, align 8
  %247 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %246, i64 2
  %248 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %247, i32 0, i32 0
  %249 = load i64, i64* %248, align 8
  %250 = icmp ne i64 %249, 0
  %251 = xor i1 %250, true
  %252 = zext i1 %251 to i32
  %253 = call i32 @ASSERT(i32 %252)
  br label %254

254:                                              ; preds = %207, %132
  br label %416

255:                                              ; preds = %129, %121
  %256 = load %struct.TYPE_26__*, %struct.TYPE_26__** %20, align 8
  %257 = icmp ne %struct.TYPE_26__* %256, null
  br i1 %257, label %258, label %308

258:                                              ; preds = %255
  %259 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %260 = load %struct.TYPE_26__*, %struct.TYPE_26__** %20, align 8
  %261 = call %struct.TYPE_28__* @xfs_dir2_data_freefind(%struct.TYPE_27__* %259, %struct.TYPE_26__* %260)
  store %struct.TYPE_28__* %261, %struct.TYPE_28__** %14, align 8
  %262 = load %struct.TYPE_26__*, %struct.TYPE_26__** %20, align 8
  %263 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %262, i32 0, i32 1
  %264 = load i32, i32* %10, align 4
  %265 = call i32 @be16_add_cpu(i64* %263, i32 %264)
  %266 = load %struct.TYPE_26__*, %struct.TYPE_26__** %20, align 8
  %267 = bitcast %struct.TYPE_26__* %266 to i8*
  %268 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %269 = bitcast %struct.TYPE_27__* %268 to i8*
  %270 = ptrtoint i8* %267 to i64
  %271 = ptrtoint i8* %269 to i64
  %272 = sub i64 %270, %271
  %273 = trunc i64 %272 to i32
  %274 = call i8* @cpu_to_be16(i32 %273)
  %275 = load %struct.TYPE_26__*, %struct.TYPE_26__** %20, align 8
  %276 = call i8** @xfs_dir2_data_unused_tag_p(%struct.TYPE_26__* %275)
  store i8* %274, i8** %276, align 8
  %277 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %278 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %279 = load %struct.TYPE_26__*, %struct.TYPE_26__** %20, align 8
  %280 = call i32 @xfs_dir2_data_log_unused(%struct.TYPE_24__* %277, %struct.TYPE_29__* %278, %struct.TYPE_26__* %279)
  %281 = load %struct.TYPE_28__*, %struct.TYPE_28__** %14, align 8
  %282 = icmp ne %struct.TYPE_28__* %281, null
  br i1 %282, label %283, label %292

283:                                              ; preds = %258
  %284 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %285 = load %struct.TYPE_28__*, %struct.TYPE_28__** %14, align 8
  %286 = load i32*, i32** %11, align 8
  %287 = call i32 @xfs_dir2_data_freeremove(%struct.TYPE_27__* %284, %struct.TYPE_28__* %285, i32* %286)
  %288 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %289 = load %struct.TYPE_26__*, %struct.TYPE_26__** %20, align 8
  %290 = load i32*, i32** %11, align 8
  %291 = call %struct.TYPE_28__* @xfs_dir2_data_freeinsert(%struct.TYPE_27__* %288, %struct.TYPE_26__* %289, i32* %290)
  br label %307

292:                                              ; preds = %258
  %293 = load %struct.TYPE_26__*, %struct.TYPE_26__** %20, align 8
  %294 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %293, i32 0, i32 1
  %295 = load i64, i64* %294, align 8
  %296 = call i32 @be16_to_cpu(i64 %295)
  %297 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %298 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %297, i32 0, i32 0
  %299 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %298, i32 0, i32 0
  %300 = load %struct.TYPE_28__*, %struct.TYPE_28__** %299, align 8
  %301 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %300, i64 2
  %302 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %301, i32 0, i32 0
  %303 = load i64, i64* %302, align 8
  %304 = call i32 @be16_to_cpu(i64 %303)
  %305 = icmp sgt i32 %296, %304
  %306 = zext i1 %305 to i32
  store i32 %306, i32* %17, align 4
  br label %307

307:                                              ; preds = %292, %283
  br label %415

308:                                              ; preds = %255
  %309 = load %struct.TYPE_26__*, %struct.TYPE_26__** %19, align 8
  %310 = icmp ne %struct.TYPE_26__* %309, null
  br i1 %310, label %311, label %378

311:                                              ; preds = %308
  %312 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %313 = load %struct.TYPE_26__*, %struct.TYPE_26__** %19, align 8
  %314 = call %struct.TYPE_28__* @xfs_dir2_data_freefind(%struct.TYPE_27__* %312, %struct.TYPE_26__* %313)
  store %struct.TYPE_28__* %314, %struct.TYPE_28__** %14, align 8
  %315 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %316 = bitcast %struct.TYPE_27__* %315 to i8*
  %317 = load i32, i32* %9, align 4
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds i8, i8* %316, i64 %318
  %320 = bitcast i8* %319 to %struct.TYPE_26__*
  store %struct.TYPE_26__* %320, %struct.TYPE_26__** %18, align 8
  %321 = load i32, i32* @XFS_DIR2_DATA_FREE_TAG, align 4
  %322 = call i8* @cpu_to_be16(i32 %321)
  %323 = ptrtoint i8* %322 to i64
  %324 = load %struct.TYPE_26__*, %struct.TYPE_26__** %18, align 8
  %325 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %324, i32 0, i32 0
  store i64 %323, i64* %325, align 8
  %326 = load i32, i32* %10, align 4
  %327 = load %struct.TYPE_26__*, %struct.TYPE_26__** %19, align 8
  %328 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %327, i32 0, i32 1
  %329 = load i64, i64* %328, align 8
  %330 = call i32 @be16_to_cpu(i64 %329)
  %331 = add nsw i32 %326, %330
  %332 = call i8* @cpu_to_be16(i32 %331)
  %333 = ptrtoint i8* %332 to i64
  %334 = load %struct.TYPE_26__*, %struct.TYPE_26__** %18, align 8
  %335 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %334, i32 0, i32 1
  store i64 %333, i64* %335, align 8
  %336 = load %struct.TYPE_26__*, %struct.TYPE_26__** %18, align 8
  %337 = bitcast %struct.TYPE_26__* %336 to i8*
  %338 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %339 = bitcast %struct.TYPE_27__* %338 to i8*
  %340 = ptrtoint i8* %337 to i64
  %341 = ptrtoint i8* %339 to i64
  %342 = sub i64 %340, %341
  %343 = trunc i64 %342 to i32
  %344 = call i8* @cpu_to_be16(i32 %343)
  %345 = load %struct.TYPE_26__*, %struct.TYPE_26__** %18, align 8
  %346 = call i8** @xfs_dir2_data_unused_tag_p(%struct.TYPE_26__* %345)
  store i8* %344, i8** %346, align 8
  %347 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %348 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %349 = load %struct.TYPE_26__*, %struct.TYPE_26__** %18, align 8
  %350 = call i32 @xfs_dir2_data_log_unused(%struct.TYPE_24__* %347, %struct.TYPE_29__* %348, %struct.TYPE_26__* %349)
  %351 = load %struct.TYPE_28__*, %struct.TYPE_28__** %14, align 8
  %352 = icmp ne %struct.TYPE_28__* %351, null
  br i1 %352, label %353, label %362

353:                                              ; preds = %311
  %354 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %355 = load %struct.TYPE_28__*, %struct.TYPE_28__** %14, align 8
  %356 = load i32*, i32** %11, align 8
  %357 = call i32 @xfs_dir2_data_freeremove(%struct.TYPE_27__* %354, %struct.TYPE_28__* %355, i32* %356)
  %358 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %359 = load %struct.TYPE_26__*, %struct.TYPE_26__** %18, align 8
  %360 = load i32*, i32** %11, align 8
  %361 = call %struct.TYPE_28__* @xfs_dir2_data_freeinsert(%struct.TYPE_27__* %358, %struct.TYPE_26__* %359, i32* %360)
  br label %377

362:                                              ; preds = %311
  %363 = load %struct.TYPE_26__*, %struct.TYPE_26__** %18, align 8
  %364 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %363, i32 0, i32 1
  %365 = load i64, i64* %364, align 8
  %366 = call i32 @be16_to_cpu(i64 %365)
  %367 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %368 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %367, i32 0, i32 0
  %369 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %368, i32 0, i32 0
  %370 = load %struct.TYPE_28__*, %struct.TYPE_28__** %369, align 8
  %371 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %370, i64 2
  %372 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %371, i32 0, i32 0
  %373 = load i64, i64* %372, align 8
  %374 = call i32 @be16_to_cpu(i64 %373)
  %375 = icmp sgt i32 %366, %374
  %376 = zext i1 %375 to i32
  store i32 %376, i32* %17, align 4
  br label %377

377:                                              ; preds = %362, %353
  br label %414

378:                                              ; preds = %308
  %379 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %380 = bitcast %struct.TYPE_27__* %379 to i8*
  %381 = load i32, i32* %9, align 4
  %382 = sext i32 %381 to i64
  %383 = getelementptr inbounds i8, i8* %380, i64 %382
  %384 = bitcast i8* %383 to %struct.TYPE_26__*
  store %struct.TYPE_26__* %384, %struct.TYPE_26__** %18, align 8
  %385 = load i32, i32* @XFS_DIR2_DATA_FREE_TAG, align 4
  %386 = call i8* @cpu_to_be16(i32 %385)
  %387 = ptrtoint i8* %386 to i64
  %388 = load %struct.TYPE_26__*, %struct.TYPE_26__** %18, align 8
  %389 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %388, i32 0, i32 0
  store i64 %387, i64* %389, align 8
  %390 = load i32, i32* %10, align 4
  %391 = call i8* @cpu_to_be16(i32 %390)
  %392 = ptrtoint i8* %391 to i64
  %393 = load %struct.TYPE_26__*, %struct.TYPE_26__** %18, align 8
  %394 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %393, i32 0, i32 1
  store i64 %392, i64* %394, align 8
  %395 = load %struct.TYPE_26__*, %struct.TYPE_26__** %18, align 8
  %396 = bitcast %struct.TYPE_26__* %395 to i8*
  %397 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %398 = bitcast %struct.TYPE_27__* %397 to i8*
  %399 = ptrtoint i8* %396 to i64
  %400 = ptrtoint i8* %398 to i64
  %401 = sub i64 %399, %400
  %402 = trunc i64 %401 to i32
  %403 = call i8* @cpu_to_be16(i32 %402)
  %404 = load %struct.TYPE_26__*, %struct.TYPE_26__** %18, align 8
  %405 = call i8** @xfs_dir2_data_unused_tag_p(%struct.TYPE_26__* %404)
  store i8* %403, i8** %405, align 8
  %406 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %407 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %408 = load %struct.TYPE_26__*, %struct.TYPE_26__** %18, align 8
  %409 = call i32 @xfs_dir2_data_log_unused(%struct.TYPE_24__* %406, %struct.TYPE_29__* %407, %struct.TYPE_26__* %408)
  %410 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %411 = load %struct.TYPE_26__*, %struct.TYPE_26__** %18, align 8
  %412 = load i32*, i32** %11, align 8
  %413 = call %struct.TYPE_28__* @xfs_dir2_data_freeinsert(%struct.TYPE_27__* %410, %struct.TYPE_26__* %411, i32* %412)
  br label %414

414:                                              ; preds = %378, %377
  br label %415

415:                                              ; preds = %414, %307
  br label %416

416:                                              ; preds = %415, %254
  %417 = load i32, i32* %17, align 4
  %418 = load i32*, i32** %12, align 8
  store i32 %417, i32* %418, align 4
  ret void
}

declare dso_local i64 @be32_to_cpu(i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32* @xfs_dir2_block_tail_p(%struct.TYPE_25__*, i32*) #1

declare dso_local i64 @xfs_dir2_block_leaf_p(i32*) #1

declare dso_local i32 @be16_to_cpu(i64) #1

declare dso_local %struct.TYPE_28__* @xfs_dir2_data_freefind(%struct.TYPE_27__*, %struct.TYPE_26__*) #1

declare dso_local i32 @be16_add_cpu(i64*, i32) #1

declare dso_local i8* @cpu_to_be16(i32) #1

declare dso_local i8** @xfs_dir2_data_unused_tag_p(%struct.TYPE_26__*) #1

declare dso_local i32 @xfs_dir2_data_log_unused(%struct.TYPE_24__*, %struct.TYPE_29__*, %struct.TYPE_26__*) #1

declare dso_local i32 @xfs_dir2_data_freeremove(%struct.TYPE_27__*, %struct.TYPE_28__*, i32*) #1

declare dso_local %struct.TYPE_28__* @xfs_dir2_data_freeinsert(%struct.TYPE_27__*, %struct.TYPE_26__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
