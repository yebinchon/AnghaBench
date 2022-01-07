; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_ctree.c_btrfs_next_old_leaf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_ctree.c_btrfs_next_old_leaf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_root = type { i32 }
%struct.btrfs_path = type { i32, i32, i32*, i32*, i32, %struct.extent_buffer** }
%struct.extent_buffer = type { i32 }
%struct.btrfs_key = type { i32 }

@BTRFS_MAX_LEVEL = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@BTRFS_READ_LOCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btrfs_next_old_leaf(%struct.btrfs_root* %0, %struct.btrfs_path* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.btrfs_root*, align 8
  %6 = alloca %struct.btrfs_path*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.extent_buffer*, align 8
  %11 = alloca %struct.extent_buffer*, align 8
  %12 = alloca %struct.btrfs_key, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.btrfs_root* %0, %struct.btrfs_root** %5, align 8
  store %struct.btrfs_path* %1, %struct.btrfs_path** %6, align 8
  store i64 %2, i64* %7, align 8
  %17 = load %struct.btrfs_path*, %struct.btrfs_path** %6, align 8
  %18 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %20 = load %struct.btrfs_path*, %struct.btrfs_path** %6, align 8
  %21 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %20, i32 0, i32 5
  %22 = load %struct.extent_buffer**, %struct.extent_buffer*** %21, align 8
  %23 = getelementptr inbounds %struct.extent_buffer*, %struct.extent_buffer** %22, i64 0
  %24 = load %struct.extent_buffer*, %struct.extent_buffer** %23, align 8
  %25 = call i32 @btrfs_header_nritems(%struct.extent_buffer* %24)
  store i32 %25, i32* %13, align 4
  %26 = load i32, i32* %13, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %321

29:                                               ; preds = %3
  %30 = load %struct.btrfs_path*, %struct.btrfs_path** %6, align 8
  %31 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %30, i32 0, i32 5
  %32 = load %struct.extent_buffer**, %struct.extent_buffer*** %31, align 8
  %33 = getelementptr inbounds %struct.extent_buffer*, %struct.extent_buffer** %32, i64 0
  %34 = load %struct.extent_buffer*, %struct.extent_buffer** %33, align 8
  %35 = load i32, i32* %13, align 4
  %36 = sub nsw i32 %35, 1
  %37 = call i32 @btrfs_item_key_to_cpu(%struct.extent_buffer* %34, %struct.btrfs_key* %12, i32 %36)
  br label %38

38:                                               ; preds = %278, %182, %162, %29
  store i32 1, i32* %9, align 4
  store %struct.extent_buffer* null, %struct.extent_buffer** %11, align 8
  store i32 0, i32* %16, align 4
  %39 = load %struct.btrfs_path*, %struct.btrfs_path** %6, align 8
  %40 = call i32 @btrfs_release_path(%struct.btrfs_path* %39)
  %41 = load %struct.btrfs_path*, %struct.btrfs_path** %6, align 8
  %42 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %41, i32 0, i32 1
  store i32 1, i32* %42, align 4
  %43 = load %struct.btrfs_path*, %struct.btrfs_path** %6, align 8
  %44 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %43, i32 0, i32 0
  store i32 1, i32* %44, align 8
  %45 = load i64, i64* %7, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %38
  %48 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %49 = load %struct.btrfs_path*, %struct.btrfs_path** %6, align 8
  %50 = load i64, i64* %7, align 8
  %51 = call i32 @btrfs_search_old_slot(%struct.btrfs_root* %48, %struct.btrfs_key* %12, %struct.btrfs_path* %49, i64 %50)
  store i32 %51, i32* %14, align 4
  br label %56

52:                                               ; preds = %38
  %53 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %54 = load %struct.btrfs_path*, %struct.btrfs_path** %6, align 8
  %55 = call i32 @btrfs_search_slot(i32* null, %struct.btrfs_root* %53, %struct.btrfs_key* %12, %struct.btrfs_path* %54, i32 0, i32 0)
  store i32 %55, i32* %14, align 4
  br label %56

56:                                               ; preds = %52, %47
  %57 = load %struct.btrfs_path*, %struct.btrfs_path** %6, align 8
  %58 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %57, i32 0, i32 1
  store i32 0, i32* %58, align 4
  %59 = load i32, i32* %14, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %56
  %62 = load i32, i32* %14, align 4
  store i32 %62, i32* %4, align 4
  br label %321

63:                                               ; preds = %56
  %64 = load %struct.btrfs_path*, %struct.btrfs_path** %6, align 8
  %65 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %64, i32 0, i32 5
  %66 = load %struct.extent_buffer**, %struct.extent_buffer*** %65, align 8
  %67 = getelementptr inbounds %struct.extent_buffer*, %struct.extent_buffer** %66, i64 0
  %68 = load %struct.extent_buffer*, %struct.extent_buffer** %67, align 8
  %69 = call i32 @btrfs_header_nritems(%struct.extent_buffer* %68)
  store i32 %69, i32* %13, align 4
  %70 = load i32, i32* %13, align 4
  %71 = icmp sgt i32 %70, 0
  br i1 %71, label %72, label %92

72:                                               ; preds = %63
  %73 = load %struct.btrfs_path*, %struct.btrfs_path** %6, align 8
  %74 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %73, i32 0, i32 2
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %13, align 4
  %79 = sub nsw i32 %78, 1
  %80 = icmp slt i32 %77, %79
  br i1 %80, label %81, label %92

81:                                               ; preds = %72
  %82 = load i32, i32* %14, align 4
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %91

84:                                               ; preds = %81
  %85 = load %struct.btrfs_path*, %struct.btrfs_path** %6, align 8
  %86 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %85, i32 0, i32 2
  %87 = load i32*, i32** %86, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 0
  %89 = load i32, i32* %88, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %88, align 4
  br label %91

91:                                               ; preds = %84, %81
  store i32 0, i32* %14, align 4
  br label %308

92:                                               ; preds = %72, %63
  br label %93

93:                                               ; preds = %134, %92
  %94 = load i32, i32* %9, align 4
  %95 = load i32, i32* @BTRFS_MAX_LEVEL, align 4
  %96 = icmp slt i32 %94, %95
  br i1 %96, label %97, label %201

97:                                               ; preds = %93
  %98 = load %struct.btrfs_path*, %struct.btrfs_path** %6, align 8
  %99 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %98, i32 0, i32 5
  %100 = load %struct.extent_buffer**, %struct.extent_buffer*** %99, align 8
  %101 = load i32, i32* %9, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.extent_buffer*, %struct.extent_buffer** %100, i64 %102
  %104 = load %struct.extent_buffer*, %struct.extent_buffer** %103, align 8
  %105 = icmp ne %struct.extent_buffer* %104, null
  br i1 %105, label %107, label %106

106:                                              ; preds = %97
  store i32 1, i32* %14, align 4
  br label %308

107:                                              ; preds = %97
  %108 = load %struct.btrfs_path*, %struct.btrfs_path** %6, align 8
  %109 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %108, i32 0, i32 2
  %110 = load i32*, i32** %109, align 8
  %111 = load i32, i32* %9, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %110, i64 %112
  %114 = load i32, i32* %113, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %8, align 4
  %116 = load %struct.btrfs_path*, %struct.btrfs_path** %6, align 8
  %117 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %116, i32 0, i32 5
  %118 = load %struct.extent_buffer**, %struct.extent_buffer*** %117, align 8
  %119 = load i32, i32* %9, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.extent_buffer*, %struct.extent_buffer** %118, i64 %120
  %122 = load %struct.extent_buffer*, %struct.extent_buffer** %121, align 8
  store %struct.extent_buffer* %122, %struct.extent_buffer** %10, align 8
  %123 = load i32, i32* %8, align 4
  %124 = load %struct.extent_buffer*, %struct.extent_buffer** %10, align 8
  %125 = call i32 @btrfs_header_nritems(%struct.extent_buffer* %124)
  %126 = icmp sge i32 %123, %125
  br i1 %126, label %127, label %135

127:                                              ; preds = %107
  %128 = load i32, i32* %9, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %9, align 4
  %130 = load i32, i32* %9, align 4
  %131 = load i32, i32* @BTRFS_MAX_LEVEL, align 4
  %132 = icmp eq i32 %130, %131
  br i1 %132, label %133, label %134

133:                                              ; preds = %127
  store i32 1, i32* %14, align 4
  br label %308

134:                                              ; preds = %127
  br label %93

135:                                              ; preds = %107
  %136 = load %struct.extent_buffer*, %struct.extent_buffer** %11, align 8
  %137 = icmp ne %struct.extent_buffer* %136, null
  br i1 %137, label %138, label %144

138:                                              ; preds = %135
  %139 = load %struct.extent_buffer*, %struct.extent_buffer** %11, align 8
  %140 = load i32, i32* %16, align 4
  %141 = call i32 @btrfs_tree_unlock_rw(%struct.extent_buffer* %139, i32 %140)
  %142 = load %struct.extent_buffer*, %struct.extent_buffer** %11, align 8
  %143 = call i32 @free_extent_buffer(%struct.extent_buffer* %142)
  br label %144

144:                                              ; preds = %138, %135
  %145 = load %struct.extent_buffer*, %struct.extent_buffer** %10, align 8
  store %struct.extent_buffer* %145, %struct.extent_buffer** %11, align 8
  %146 = load %struct.btrfs_path*, %struct.btrfs_path** %6, align 8
  %147 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %146, i32 0, i32 3
  %148 = load i32*, i32** %147, align 8
  %149 = load i32, i32* %9, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i32, i32* %148, i64 %150
  %152 = load i32, i32* %151, align 4
  store i32 %152, i32* %16, align 4
  %153 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %154 = load %struct.btrfs_path*, %struct.btrfs_path** %6, align 8
  %155 = load i32, i32* %9, align 4
  %156 = load i32, i32* %8, align 4
  %157 = call i32 @read_block_for_search(i32* null, %struct.btrfs_root* %153, %struct.btrfs_path* %154, %struct.extent_buffer** %11, i32 %155, i32 %156, %struct.btrfs_key* %12, i32 0)
  store i32 %157, i32* %14, align 4
  %158 = load i32, i32* %14, align 4
  %159 = load i32, i32* @EAGAIN, align 4
  %160 = sub nsw i32 0, %159
  %161 = icmp eq i32 %158, %160
  br i1 %161, label %162, label %163

162:                                              ; preds = %144
  br label %38

163:                                              ; preds = %144
  %164 = load i32, i32* %14, align 4
  %165 = icmp slt i32 %164, 0
  br i1 %165, label %166, label %169

166:                                              ; preds = %163
  %167 = load %struct.btrfs_path*, %struct.btrfs_path** %6, align 8
  %168 = call i32 @btrfs_release_path(%struct.btrfs_path* %167)
  br label %308

169:                                              ; preds = %163
  %170 = load %struct.btrfs_path*, %struct.btrfs_path** %6, align 8
  %171 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %170, i32 0, i32 4
  %172 = load i32, i32* %171, align 8
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %200, label %174

174:                                              ; preds = %169
  %175 = load %struct.extent_buffer*, %struct.extent_buffer** %11, align 8
  %176 = call i32 @btrfs_try_tree_read_lock(%struct.extent_buffer* %175)
  store i32 %176, i32* %14, align 4
  %177 = load i32, i32* %14, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %186, label %179

179:                                              ; preds = %174
  %180 = load i64, i64* %7, align 8
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %186

182:                                              ; preds = %179
  %183 = load %struct.btrfs_path*, %struct.btrfs_path** %6, align 8
  %184 = call i32 @btrfs_release_path(%struct.btrfs_path* %183)
  %185 = call i32 (...) @cond_resched()
  br label %38

186:                                              ; preds = %179, %174
  %187 = load i32, i32* %14, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %198, label %189

189:                                              ; preds = %186
  %190 = load %struct.btrfs_path*, %struct.btrfs_path** %6, align 8
  %191 = call i32 @btrfs_set_path_blocking(%struct.btrfs_path* %190)
  %192 = load %struct.extent_buffer*, %struct.extent_buffer** %11, align 8
  %193 = call i32 @btrfs_tree_read_lock(%struct.extent_buffer* %192)
  %194 = load %struct.btrfs_path*, %struct.btrfs_path** %6, align 8
  %195 = load %struct.extent_buffer*, %struct.extent_buffer** %11, align 8
  %196 = load i32, i32* @BTRFS_READ_LOCK, align 4
  %197 = call i32 @btrfs_clear_path_blocking(%struct.btrfs_path* %194, %struct.extent_buffer* %195, i32 %196)
  br label %198

198:                                              ; preds = %189, %186
  %199 = load i32, i32* @BTRFS_READ_LOCK, align 4
  store i32 %199, i32* %16, align 4
  br label %200

200:                                              ; preds = %198, %169
  br label %201

201:                                              ; preds = %200, %93
  %202 = load i32, i32* %8, align 4
  %203 = load %struct.btrfs_path*, %struct.btrfs_path** %6, align 8
  %204 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %203, i32 0, i32 2
  %205 = load i32*, i32** %204, align 8
  %206 = load i32, i32* %9, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i32, i32* %205, i64 %207
  store i32 %202, i32* %208, align 4
  br label %209

209:                                              ; preds = %201, %306
  %210 = load i32, i32* %9, align 4
  %211 = add nsw i32 %210, -1
  store i32 %211, i32* %9, align 4
  %212 = load %struct.btrfs_path*, %struct.btrfs_path** %6, align 8
  %213 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %212, i32 0, i32 5
  %214 = load %struct.extent_buffer**, %struct.extent_buffer*** %213, align 8
  %215 = load i32, i32* %9, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds %struct.extent_buffer*, %struct.extent_buffer** %214, i64 %216
  %218 = load %struct.extent_buffer*, %struct.extent_buffer** %217, align 8
  store %struct.extent_buffer* %218, %struct.extent_buffer** %10, align 8
  %219 = load %struct.btrfs_path*, %struct.btrfs_path** %6, align 8
  %220 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %219, i32 0, i32 3
  %221 = load i32*, i32** %220, align 8
  %222 = load i32, i32* %9, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds i32, i32* %221, i64 %223
  %225 = load i32, i32* %224, align 4
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %237

227:                                              ; preds = %209
  %228 = load %struct.extent_buffer*, %struct.extent_buffer** %10, align 8
  %229 = load %struct.btrfs_path*, %struct.btrfs_path** %6, align 8
  %230 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %229, i32 0, i32 3
  %231 = load i32*, i32** %230, align 8
  %232 = load i32, i32* %9, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds i32, i32* %231, i64 %233
  %235 = load i32, i32* %234, align 4
  %236 = call i32 @btrfs_tree_unlock_rw(%struct.extent_buffer* %228, i32 %235)
  br label %237

237:                                              ; preds = %227, %209
  %238 = load %struct.extent_buffer*, %struct.extent_buffer** %10, align 8
  %239 = call i32 @free_extent_buffer(%struct.extent_buffer* %238)
  %240 = load %struct.extent_buffer*, %struct.extent_buffer** %11, align 8
  %241 = load %struct.btrfs_path*, %struct.btrfs_path** %6, align 8
  %242 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %241, i32 0, i32 5
  %243 = load %struct.extent_buffer**, %struct.extent_buffer*** %242, align 8
  %244 = load i32, i32* %9, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds %struct.extent_buffer*, %struct.extent_buffer** %243, i64 %245
  store %struct.extent_buffer* %240, %struct.extent_buffer** %246, align 8
  %247 = load %struct.btrfs_path*, %struct.btrfs_path** %6, align 8
  %248 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %247, i32 0, i32 2
  %249 = load i32*, i32** %248, align 8
  %250 = load i32, i32* %9, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds i32, i32* %249, i64 %251
  store i32 0, i32* %252, align 4
  %253 = load %struct.btrfs_path*, %struct.btrfs_path** %6, align 8
  %254 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %253, i32 0, i32 4
  %255 = load i32, i32* %254, align 8
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %265, label %257

257:                                              ; preds = %237
  %258 = load i32, i32* %16, align 4
  %259 = load %struct.btrfs_path*, %struct.btrfs_path** %6, align 8
  %260 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %259, i32 0, i32 3
  %261 = load i32*, i32** %260, align 8
  %262 = load i32, i32* %9, align 4
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds i32, i32* %261, i64 %263
  store i32 %258, i32* %264, align 4
  br label %265

265:                                              ; preds = %257, %237
  %266 = load i32, i32* %9, align 4
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %269, label %268

268:                                              ; preds = %265
  br label %307

269:                                              ; preds = %265
  %270 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %271 = load %struct.btrfs_path*, %struct.btrfs_path** %6, align 8
  %272 = load i32, i32* %9, align 4
  %273 = call i32 @read_block_for_search(i32* null, %struct.btrfs_root* %270, %struct.btrfs_path* %271, %struct.extent_buffer** %11, i32 %272, i32 0, %struct.btrfs_key* %12, i32 0)
  store i32 %273, i32* %14, align 4
  %274 = load i32, i32* %14, align 4
  %275 = load i32, i32* @EAGAIN, align 4
  %276 = sub nsw i32 0, %275
  %277 = icmp eq i32 %274, %276
  br i1 %277, label %278, label %279

278:                                              ; preds = %269
  br label %38

279:                                              ; preds = %269
  %280 = load i32, i32* %14, align 4
  %281 = icmp slt i32 %280, 0
  br i1 %281, label %282, label %285

282:                                              ; preds = %279
  %283 = load %struct.btrfs_path*, %struct.btrfs_path** %6, align 8
  %284 = call i32 @btrfs_release_path(%struct.btrfs_path* %283)
  br label %308

285:                                              ; preds = %279
  %286 = load %struct.btrfs_path*, %struct.btrfs_path** %6, align 8
  %287 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %286, i32 0, i32 4
  %288 = load i32, i32* %287, align 8
  %289 = icmp ne i32 %288, 0
  br i1 %289, label %306, label %290

290:                                              ; preds = %285
  %291 = load %struct.extent_buffer*, %struct.extent_buffer** %11, align 8
  %292 = call i32 @btrfs_try_tree_read_lock(%struct.extent_buffer* %291)
  store i32 %292, i32* %14, align 4
  %293 = load i32, i32* %14, align 4
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %304, label %295

295:                                              ; preds = %290
  %296 = load %struct.btrfs_path*, %struct.btrfs_path** %6, align 8
  %297 = call i32 @btrfs_set_path_blocking(%struct.btrfs_path* %296)
  %298 = load %struct.extent_buffer*, %struct.extent_buffer** %11, align 8
  %299 = call i32 @btrfs_tree_read_lock(%struct.extent_buffer* %298)
  %300 = load %struct.btrfs_path*, %struct.btrfs_path** %6, align 8
  %301 = load %struct.extent_buffer*, %struct.extent_buffer** %11, align 8
  %302 = load i32, i32* @BTRFS_READ_LOCK, align 4
  %303 = call i32 @btrfs_clear_path_blocking(%struct.btrfs_path* %300, %struct.extent_buffer* %301, i32 %302)
  br label %304

304:                                              ; preds = %295, %290
  %305 = load i32, i32* @BTRFS_READ_LOCK, align 4
  store i32 %305, i32* %16, align 4
  br label %306

306:                                              ; preds = %304, %285
  br label %209

307:                                              ; preds = %268
  store i32 0, i32* %14, align 4
  br label %308

308:                                              ; preds = %307, %282, %166, %133, %106, %91
  %309 = load %struct.btrfs_path*, %struct.btrfs_path** %6, align 8
  %310 = call i32 @unlock_up(%struct.btrfs_path* %309, i32 0, i32 1, i32 0, i32* null)
  %311 = load i32, i32* %15, align 4
  %312 = load %struct.btrfs_path*, %struct.btrfs_path** %6, align 8
  %313 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %312, i32 0, i32 0
  store i32 %311, i32* %313, align 8
  %314 = load i32, i32* %15, align 4
  %315 = icmp ne i32 %314, 0
  br i1 %315, label %319, label %316

316:                                              ; preds = %308
  %317 = load %struct.btrfs_path*, %struct.btrfs_path** %6, align 8
  %318 = call i32 @btrfs_set_path_blocking(%struct.btrfs_path* %317)
  br label %319

319:                                              ; preds = %316, %308
  %320 = load i32, i32* %14, align 4
  store i32 %320, i32* %4, align 4
  br label %321

321:                                              ; preds = %319, %61, %28
  %322 = load i32, i32* %4, align 4
  ret i32 %322
}

declare dso_local i32 @btrfs_header_nritems(%struct.extent_buffer*) #1

declare dso_local i32 @btrfs_item_key_to_cpu(%struct.extent_buffer*, %struct.btrfs_key*, i32) #1

declare dso_local i32 @btrfs_release_path(%struct.btrfs_path*) #1

declare dso_local i32 @btrfs_search_old_slot(%struct.btrfs_root*, %struct.btrfs_key*, %struct.btrfs_path*, i64) #1

declare dso_local i32 @btrfs_search_slot(i32*, %struct.btrfs_root*, %struct.btrfs_key*, %struct.btrfs_path*, i32, i32) #1

declare dso_local i32 @btrfs_tree_unlock_rw(%struct.extent_buffer*, i32) #1

declare dso_local i32 @free_extent_buffer(%struct.extent_buffer*) #1

declare dso_local i32 @read_block_for_search(i32*, %struct.btrfs_root*, %struct.btrfs_path*, %struct.extent_buffer**, i32, i32, %struct.btrfs_key*, i32) #1

declare dso_local i32 @btrfs_try_tree_read_lock(%struct.extent_buffer*) #1

declare dso_local i32 @cond_resched(...) #1

declare dso_local i32 @btrfs_set_path_blocking(%struct.btrfs_path*) #1

declare dso_local i32 @btrfs_tree_read_lock(%struct.extent_buffer*) #1

declare dso_local i32 @btrfs_clear_path_blocking(%struct.btrfs_path*, %struct.extent_buffer*, i32) #1

declare dso_local i32 @unlock_up(%struct.btrfs_path*, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
