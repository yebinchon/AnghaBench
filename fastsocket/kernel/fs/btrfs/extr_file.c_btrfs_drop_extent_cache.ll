; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_file.c_btrfs_drop_extent_cache.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_file.c_btrfs_drop_extent_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.extent_map = type { i64, i64, i64, i64, i64, i64, i32, i32 }
%struct.extent_map_tree = type { i32 }
%struct.TYPE_2__ = type { %struct.extent_map_tree }

@EXTENT_FLAG_PINNED = common dso_local global i32 0, align 4
@EXTENT_FLAG_COMPRESSED = common dso_local global i32 0, align 4
@EXTENT_MAP_LAST_BYTE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btrfs_drop_extent_cache(%struct.inode* %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.extent_map*, align 8
  %10 = alloca %struct.extent_map*, align 8
  %11 = alloca %struct.extent_map*, align 8
  %12 = alloca %struct.extent_map_tree*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  store %struct.inode* %0, %struct.inode** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  store %struct.extent_map* null, %struct.extent_map** %10, align 8
  store %struct.extent_map* null, %struct.extent_map** %11, align 8
  %19 = load %struct.inode*, %struct.inode** %5, align 8
  %20 = call %struct.TYPE_2__* @BTRFS_I(%struct.inode* %19)
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  store %struct.extent_map_tree* %21, %struct.extent_map_tree** %12, align 8
  %22 = load i64, i64* %7, align 8
  %23 = load i64, i64* %6, align 8
  %24 = sub nsw i64 %22, %23
  %25 = add nsw i64 %24, 1
  store i64 %25, i64* %13, align 8
  store i32 1, i32* %15, align 4
  store i32 0, i32* %17, align 4
  %26 = load i64, i64* %7, align 8
  %27 = load i64, i64* %6, align 8
  %28 = icmp slt i64 %26, %27
  %29 = zext i1 %28 to i32
  %30 = call i32 @WARN_ON(i32 %29)
  %31 = load i64, i64* %7, align 8
  %32 = icmp eq i64 %31, -1
  br i1 %32, label %33, label %34

33:                                               ; preds = %4
  store i64 -1, i64* %13, align 8
  store i32 0, i32* %15, align 4
  br label %34

34:                                               ; preds = %33, %4
  br label %35

35:                                               ; preds = %34, %124, %316
  %36 = load %struct.extent_map*, %struct.extent_map** %10, align 8
  %37 = icmp ne %struct.extent_map* %36, null
  br i1 %37, label %40, label %38

38:                                               ; preds = %35
  %39 = call %struct.extent_map* (...) @alloc_extent_map()
  store %struct.extent_map* %39, %struct.extent_map** %10, align 8
  br label %40

40:                                               ; preds = %38, %35
  %41 = load %struct.extent_map*, %struct.extent_map** %11, align 8
  %42 = icmp ne %struct.extent_map* %41, null
  br i1 %42, label %45, label %43

43:                                               ; preds = %40
  %44 = call %struct.extent_map* (...) @alloc_extent_map()
  store %struct.extent_map* %44, %struct.extent_map** %11, align 8
  br label %45

45:                                               ; preds = %43, %40
  %46 = load %struct.extent_map*, %struct.extent_map** %10, align 8
  %47 = icmp ne %struct.extent_map* %46, null
  br i1 %47, label %48, label %52

48:                                               ; preds = %45
  %49 = load %struct.extent_map*, %struct.extent_map** %11, align 8
  %50 = icmp ne %struct.extent_map* %49, null
  %51 = xor i1 %50, true
  br label %52

52:                                               ; preds = %48, %45
  %53 = phi i1 [ true, %45 ], [ %51, %48 ]
  %54 = zext i1 %53 to i32
  %55 = call i32 @BUG_ON(i32 %54)
  %56 = load %struct.extent_map_tree*, %struct.extent_map_tree** %12, align 8
  %57 = getelementptr inbounds %struct.extent_map_tree, %struct.extent_map_tree* %56, i32 0, i32 0
  %58 = call i32 @write_lock(i32* %57)
  %59 = load %struct.extent_map_tree*, %struct.extent_map_tree** %12, align 8
  %60 = load i64, i64* %6, align 8
  %61 = load i64, i64* %13, align 8
  %62 = call %struct.extent_map* @lookup_extent_mapping(%struct.extent_map_tree* %59, i64 %60, i64 %61)
  store %struct.extent_map* %62, %struct.extent_map** %9, align 8
  %63 = load %struct.extent_map*, %struct.extent_map** %9, align 8
  %64 = icmp ne %struct.extent_map* %63, null
  br i1 %64, label %69, label %65

65:                                               ; preds = %52
  %66 = load %struct.extent_map_tree*, %struct.extent_map_tree** %12, align 8
  %67 = getelementptr inbounds %struct.extent_map_tree, %struct.extent_map_tree* %66, i32 0, i32 0
  %68 = call i32 @write_unlock(i32* %67)
  br label %324

69:                                               ; preds = %52
  %70 = load %struct.extent_map*, %struct.extent_map** %9, align 8
  %71 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  store i64 %72, i64* %16, align 8
  %73 = load i32, i32* %8, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %130

75:                                               ; preds = %69
  %76 = load i32, i32* @EXTENT_FLAG_PINNED, align 4
  %77 = load %struct.extent_map*, %struct.extent_map** %9, align 8
  %78 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %77, i32 0, i32 0
  %79 = call i32 @test_bit(i32 %76, i64* %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %130

81:                                               ; preds = %75
  %82 = load i32, i32* %15, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %102

84:                                               ; preds = %81
  %85 = load %struct.extent_map*, %struct.extent_map** %9, align 8
  %86 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.extent_map*, %struct.extent_map** %9, align 8
  %89 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %88, i32 0, i32 2
  %90 = load i64, i64* %89, align 8
  %91 = add nsw i64 %87, %90
  %92 = load i64, i64* %6, align 8
  %93 = load i64, i64* %13, align 8
  %94 = add nsw i64 %92, %93
  %95 = icmp sge i64 %91, %94
  br i1 %95, label %96, label %102

96:                                               ; preds = %84
  %97 = load %struct.extent_map*, %struct.extent_map** %9, align 8
  %98 = call i32 @free_extent_map(%struct.extent_map* %97)
  %99 = load %struct.extent_map_tree*, %struct.extent_map_tree** %12, align 8
  %100 = getelementptr inbounds %struct.extent_map_tree, %struct.extent_map_tree* %99, i32 0, i32 0
  %101 = call i32 @write_unlock(i32* %100)
  br label %324

102:                                              ; preds = %84, %81
  %103 = load %struct.extent_map*, %struct.extent_map** %9, align 8
  %104 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = load %struct.extent_map*, %struct.extent_map** %9, align 8
  %107 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %106, i32 0, i32 2
  %108 = load i64, i64* %107, align 8
  %109 = add nsw i64 %105, %108
  store i64 %109, i64* %6, align 8
  %110 = load i32, i32* %15, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %124

112:                                              ; preds = %102
  %113 = load i64, i64* %6, align 8
  %114 = load i64, i64* %13, align 8
  %115 = add nsw i64 %113, %114
  %116 = load %struct.extent_map*, %struct.extent_map** %9, align 8
  %117 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = load %struct.extent_map*, %struct.extent_map** %9, align 8
  %120 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %119, i32 0, i32 2
  %121 = load i64, i64* %120, align 8
  %122 = add nsw i64 %118, %121
  %123 = sub nsw i64 %115, %122
  store i64 %123, i64* %13, align 8
  br label %124

124:                                              ; preds = %112, %102
  %125 = load %struct.extent_map*, %struct.extent_map** %9, align 8
  %126 = call i32 @free_extent_map(%struct.extent_map* %125)
  %127 = load %struct.extent_map_tree*, %struct.extent_map_tree** %12, align 8
  %128 = getelementptr inbounds %struct.extent_map_tree, %struct.extent_map_tree* %127, i32 0, i32 0
  %129 = call i32 @write_unlock(i32* %128)
  br label %35

130:                                              ; preds = %75, %69
  %131 = load i32, i32* @EXTENT_FLAG_COMPRESSED, align 4
  %132 = load %struct.extent_map*, %struct.extent_map** %9, align 8
  %133 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %132, i32 0, i32 0
  %134 = call i32 @test_bit(i32 %131, i64* %133)
  store i32 %134, i32* %17, align 4
  %135 = load i32, i32* @EXTENT_FLAG_PINNED, align 4
  %136 = load %struct.extent_map*, %struct.extent_map** %9, align 8
  %137 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %136, i32 0, i32 0
  %138 = call i32 @clear_bit(i32 %135, i64* %137)
  %139 = load %struct.extent_map_tree*, %struct.extent_map_tree** %12, align 8
  %140 = load %struct.extent_map*, %struct.extent_map** %9, align 8
  %141 = call i32 @remove_extent_mapping(%struct.extent_map_tree* %139, %struct.extent_map* %140)
  %142 = load %struct.extent_map*, %struct.extent_map** %9, align 8
  %143 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %142, i32 0, i32 3
  %144 = load i64, i64* %143, align 8
  %145 = load i64, i64* @EXTENT_MAP_LAST_BYTE, align 8
  %146 = icmp slt i64 %144, %145
  br i1 %146, label %147, label %212

147:                                              ; preds = %130
  %148 = load %struct.extent_map*, %struct.extent_map** %9, align 8
  %149 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %148, i32 0, i32 1
  %150 = load i64, i64* %149, align 8
  %151 = load i64, i64* %6, align 8
  %152 = icmp slt i64 %150, %151
  br i1 %152, label %153, label %212

153:                                              ; preds = %147
  %154 = load %struct.extent_map*, %struct.extent_map** %9, align 8
  %155 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %154, i32 0, i32 1
  %156 = load i64, i64* %155, align 8
  %157 = load %struct.extent_map*, %struct.extent_map** %10, align 8
  %158 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %157, i32 0, i32 1
  store i64 %156, i64* %158, align 8
  %159 = load i64, i64* %6, align 8
  %160 = load %struct.extent_map*, %struct.extent_map** %9, align 8
  %161 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %160, i32 0, i32 1
  %162 = load i64, i64* %161, align 8
  %163 = sub nsw i64 %159, %162
  %164 = load %struct.extent_map*, %struct.extent_map** %10, align 8
  %165 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %164, i32 0, i32 2
  store i64 %163, i64* %165, align 8
  %166 = load %struct.extent_map*, %struct.extent_map** %9, align 8
  %167 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %166, i32 0, i32 4
  %168 = load i64, i64* %167, align 8
  %169 = load %struct.extent_map*, %struct.extent_map** %10, align 8
  %170 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %169, i32 0, i32 4
  store i64 %168, i64* %170, align 8
  %171 = load %struct.extent_map*, %struct.extent_map** %9, align 8
  %172 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %171, i32 0, i32 3
  %173 = load i64, i64* %172, align 8
  %174 = load %struct.extent_map*, %struct.extent_map** %10, align 8
  %175 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %174, i32 0, i32 3
  store i64 %173, i64* %175, align 8
  %176 = load i32, i32* %17, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %184

178:                                              ; preds = %153
  %179 = load %struct.extent_map*, %struct.extent_map** %9, align 8
  %180 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %179, i32 0, i32 5
  %181 = load i64, i64* %180, align 8
  %182 = load %struct.extent_map*, %struct.extent_map** %10, align 8
  %183 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %182, i32 0, i32 5
  store i64 %181, i64* %183, align 8
  br label %190

184:                                              ; preds = %153
  %185 = load %struct.extent_map*, %struct.extent_map** %10, align 8
  %186 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %185, i32 0, i32 2
  %187 = load i64, i64* %186, align 8
  %188 = load %struct.extent_map*, %struct.extent_map** %10, align 8
  %189 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %188, i32 0, i32 5
  store i64 %187, i64* %189, align 8
  br label %190

190:                                              ; preds = %184, %178
  %191 = load %struct.extent_map*, %struct.extent_map** %9, align 8
  %192 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %191, i32 0, i32 7
  %193 = load i32, i32* %192, align 4
  %194 = load %struct.extent_map*, %struct.extent_map** %10, align 8
  %195 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %194, i32 0, i32 7
  store i32 %193, i32* %195, align 4
  %196 = load i64, i64* %16, align 8
  %197 = load %struct.extent_map*, %struct.extent_map** %10, align 8
  %198 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %197, i32 0, i32 0
  store i64 %196, i64* %198, align 8
  %199 = load %struct.extent_map*, %struct.extent_map** %9, align 8
  %200 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %199, i32 0, i32 6
  %201 = load i32, i32* %200, align 8
  %202 = load %struct.extent_map*, %struct.extent_map** %10, align 8
  %203 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %202, i32 0, i32 6
  store i32 %201, i32* %203, align 8
  %204 = load %struct.extent_map_tree*, %struct.extent_map_tree** %12, align 8
  %205 = load %struct.extent_map*, %struct.extent_map** %10, align 8
  %206 = call i32 @add_extent_mapping(%struct.extent_map_tree* %204, %struct.extent_map* %205)
  store i32 %206, i32* %14, align 4
  %207 = load i32, i32* %14, align 4
  %208 = call i32 @BUG_ON(i32 %207)
  %209 = load %struct.extent_map*, %struct.extent_map** %10, align 8
  %210 = call i32 @free_extent_map(%struct.extent_map* %209)
  %211 = load %struct.extent_map*, %struct.extent_map** %11, align 8
  store %struct.extent_map* %211, %struct.extent_map** %10, align 8
  store %struct.extent_map* null, %struct.extent_map** %11, align 8
  br label %212

212:                                              ; preds = %190, %147, %130
  %213 = load %struct.extent_map*, %struct.extent_map** %9, align 8
  %214 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %213, i32 0, i32 3
  %215 = load i64, i64* %214, align 8
  %216 = load i64, i64* @EXTENT_MAP_LAST_BYTE, align 8
  %217 = icmp slt i64 %215, %216
  br i1 %217, label %218, label %316

218:                                              ; preds = %212
  %219 = load i32, i32* %15, align 4
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %316

221:                                              ; preds = %218
  %222 = load %struct.extent_map*, %struct.extent_map** %9, align 8
  %223 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %222, i32 0, i32 1
  %224 = load i64, i64* %223, align 8
  %225 = load %struct.extent_map*, %struct.extent_map** %9, align 8
  %226 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %225, i32 0, i32 2
  %227 = load i64, i64* %226, align 8
  %228 = add nsw i64 %224, %227
  %229 = load i64, i64* %6, align 8
  %230 = load i64, i64* %13, align 8
  %231 = add nsw i64 %229, %230
  %232 = icmp sgt i64 %228, %231
  br i1 %232, label %233, label %316

233:                                              ; preds = %221
  %234 = load i64, i64* %6, align 8
  %235 = load i64, i64* %13, align 8
  %236 = add nsw i64 %234, %235
  %237 = load %struct.extent_map*, %struct.extent_map** %9, align 8
  %238 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %237, i32 0, i32 1
  %239 = load i64, i64* %238, align 8
  %240 = sub nsw i64 %236, %239
  store i64 %240, i64* %18, align 8
  %241 = load i64, i64* %6, align 8
  %242 = load i64, i64* %13, align 8
  %243 = add nsw i64 %241, %242
  %244 = load %struct.extent_map*, %struct.extent_map** %10, align 8
  %245 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %244, i32 0, i32 1
  store i64 %243, i64* %245, align 8
  %246 = load %struct.extent_map*, %struct.extent_map** %9, align 8
  %247 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %246, i32 0, i32 1
  %248 = load i64, i64* %247, align 8
  %249 = load %struct.extent_map*, %struct.extent_map** %9, align 8
  %250 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %249, i32 0, i32 2
  %251 = load i64, i64* %250, align 8
  %252 = add nsw i64 %248, %251
  %253 = load i64, i64* %6, align 8
  %254 = load i64, i64* %13, align 8
  %255 = add nsw i64 %253, %254
  %256 = sub nsw i64 %252, %255
  %257 = load %struct.extent_map*, %struct.extent_map** %10, align 8
  %258 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %257, i32 0, i32 2
  store i64 %256, i64* %258, align 8
  %259 = load %struct.extent_map*, %struct.extent_map** %9, align 8
  %260 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %259, i32 0, i32 7
  %261 = load i32, i32* %260, align 4
  %262 = load %struct.extent_map*, %struct.extent_map** %10, align 8
  %263 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %262, i32 0, i32 7
  store i32 %261, i32* %263, align 4
  %264 = load i64, i64* %16, align 8
  %265 = load %struct.extent_map*, %struct.extent_map** %10, align 8
  %266 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %265, i32 0, i32 0
  store i64 %264, i64* %266, align 8
  %267 = load %struct.extent_map*, %struct.extent_map** %9, align 8
  %268 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %267, i32 0, i32 6
  %269 = load i32, i32* %268, align 8
  %270 = load %struct.extent_map*, %struct.extent_map** %10, align 8
  %271 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %270, i32 0, i32 6
  store i32 %269, i32* %271, align 8
  %272 = load i32, i32* %17, align 4
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %274, label %290

274:                                              ; preds = %233
  %275 = load %struct.extent_map*, %struct.extent_map** %9, align 8
  %276 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %275, i32 0, i32 5
  %277 = load i64, i64* %276, align 8
  %278 = load %struct.extent_map*, %struct.extent_map** %10, align 8
  %279 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %278, i32 0, i32 5
  store i64 %277, i64* %279, align 8
  %280 = load %struct.extent_map*, %struct.extent_map** %9, align 8
  %281 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %280, i32 0, i32 3
  %282 = load i64, i64* %281, align 8
  %283 = load %struct.extent_map*, %struct.extent_map** %10, align 8
  %284 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %283, i32 0, i32 3
  store i64 %282, i64* %284, align 8
  %285 = load %struct.extent_map*, %struct.extent_map** %9, align 8
  %286 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %285, i32 0, i32 4
  %287 = load i64, i64* %286, align 8
  %288 = load %struct.extent_map*, %struct.extent_map** %10, align 8
  %289 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %288, i32 0, i32 4
  store i64 %287, i64* %289, align 8
  br label %308

290:                                              ; preds = %233
  %291 = load %struct.extent_map*, %struct.extent_map** %10, align 8
  %292 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %291, i32 0, i32 2
  %293 = load i64, i64* %292, align 8
  %294 = load %struct.extent_map*, %struct.extent_map** %10, align 8
  %295 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %294, i32 0, i32 5
  store i64 %293, i64* %295, align 8
  %296 = load %struct.extent_map*, %struct.extent_map** %9, align 8
  %297 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %296, i32 0, i32 3
  %298 = load i64, i64* %297, align 8
  %299 = load i64, i64* %18, align 8
  %300 = add nsw i64 %298, %299
  %301 = load %struct.extent_map*, %struct.extent_map** %10, align 8
  %302 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %301, i32 0, i32 3
  store i64 %300, i64* %302, align 8
  %303 = load %struct.extent_map*, %struct.extent_map** %10, align 8
  %304 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %303, i32 0, i32 1
  %305 = load i64, i64* %304, align 8
  %306 = load %struct.extent_map*, %struct.extent_map** %10, align 8
  %307 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %306, i32 0, i32 4
  store i64 %305, i64* %307, align 8
  br label %308

308:                                              ; preds = %290, %274
  %309 = load %struct.extent_map_tree*, %struct.extent_map_tree** %12, align 8
  %310 = load %struct.extent_map*, %struct.extent_map** %10, align 8
  %311 = call i32 @add_extent_mapping(%struct.extent_map_tree* %309, %struct.extent_map* %310)
  store i32 %311, i32* %14, align 4
  %312 = load i32, i32* %14, align 4
  %313 = call i32 @BUG_ON(i32 %312)
  %314 = load %struct.extent_map*, %struct.extent_map** %10, align 8
  %315 = call i32 @free_extent_map(%struct.extent_map* %314)
  store %struct.extent_map* null, %struct.extent_map** %10, align 8
  br label %316

316:                                              ; preds = %308, %221, %218, %212
  %317 = load %struct.extent_map_tree*, %struct.extent_map_tree** %12, align 8
  %318 = getelementptr inbounds %struct.extent_map_tree, %struct.extent_map_tree* %317, i32 0, i32 0
  %319 = call i32 @write_unlock(i32* %318)
  %320 = load %struct.extent_map*, %struct.extent_map** %9, align 8
  %321 = call i32 @free_extent_map(%struct.extent_map* %320)
  %322 = load %struct.extent_map*, %struct.extent_map** %9, align 8
  %323 = call i32 @free_extent_map(%struct.extent_map* %322)
  br label %35

324:                                              ; preds = %96, %65
  %325 = load %struct.extent_map*, %struct.extent_map** %10, align 8
  %326 = icmp ne %struct.extent_map* %325, null
  br i1 %326, label %327, label %330

327:                                              ; preds = %324
  %328 = load %struct.extent_map*, %struct.extent_map** %10, align 8
  %329 = call i32 @free_extent_map(%struct.extent_map* %328)
  br label %330

330:                                              ; preds = %327, %324
  %331 = load %struct.extent_map*, %struct.extent_map** %11, align 8
  %332 = icmp ne %struct.extent_map* %331, null
  br i1 %332, label %333, label %336

333:                                              ; preds = %330
  %334 = load %struct.extent_map*, %struct.extent_map** %11, align 8
  %335 = call i32 @free_extent_map(%struct.extent_map* %334)
  br label %336

336:                                              ; preds = %333, %330
  ret i32 0
}

declare dso_local %struct.TYPE_2__* @BTRFS_I(%struct.inode*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local %struct.extent_map* @alloc_extent_map(...) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @write_lock(i32*) #1

declare dso_local %struct.extent_map* @lookup_extent_mapping(%struct.extent_map_tree*, i64, i64) #1

declare dso_local i32 @write_unlock(i32*) #1

declare dso_local i32 @test_bit(i32, i64*) #1

declare dso_local i32 @free_extent_map(%struct.extent_map*) #1

declare dso_local i32 @clear_bit(i32, i64*) #1

declare dso_local i32 @remove_extent_mapping(%struct.extent_map_tree*, %struct.extent_map*) #1

declare dso_local i32 @add_extent_mapping(%struct.extent_map_tree*, %struct.extent_map*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
