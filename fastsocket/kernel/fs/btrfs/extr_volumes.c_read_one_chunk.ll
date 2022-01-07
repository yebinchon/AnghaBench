; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_volumes.c_read_one_chunk.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_volumes.c_read_one_chunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_root = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.btrfs_mapping_tree }
%struct.btrfs_mapping_tree = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.btrfs_key = type { i64 }
%struct.extent_buffer = type { i32 }
%struct.btrfs_chunk = type { i32 }
%struct.map_lookup = type { i32, %struct.TYPE_8__*, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_10__*, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.extent_map = type { i64, i64, i64, i64, %struct.block_device* }
%struct.block_device = type { i32 }

@BTRFS_UUID_SIZE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@DEGRADED = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfs_root*, %struct.btrfs_key*, %struct.extent_buffer*, %struct.btrfs_chunk*)* @read_one_chunk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_one_chunk(%struct.btrfs_root* %0, %struct.btrfs_key* %1, %struct.extent_buffer* %2, %struct.btrfs_chunk* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.btrfs_root*, align 8
  %7 = alloca %struct.btrfs_key*, align 8
  %8 = alloca %struct.extent_buffer*, align 8
  %9 = alloca %struct.btrfs_chunk*, align 8
  %10 = alloca %struct.btrfs_mapping_tree*, align 8
  %11 = alloca %struct.map_lookup*, align 8
  %12 = alloca %struct.extent_map*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.btrfs_root* %0, %struct.btrfs_root** %6, align 8
  store %struct.btrfs_key* %1, %struct.btrfs_key** %7, align 8
  store %struct.extent_buffer* %2, %struct.extent_buffer** %8, align 8
  store %struct.btrfs_chunk* %3, %struct.btrfs_chunk** %9, align 8
  %22 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %23 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %22, i32 0, i32 0
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  store %struct.btrfs_mapping_tree* %25, %struct.btrfs_mapping_tree** %10, align 8
  %26 = load i32, i32* @BTRFS_UUID_SIZE, align 4
  %27 = zext i32 %26 to i64
  %28 = call i8* @llvm.stacksave()
  store i8* %28, i8** %16, align 8
  %29 = alloca i32, i64 %27, align 16
  store i64 %27, i64* %17, align 8
  %30 = load %struct.btrfs_key*, %struct.btrfs_key** %7, align 8
  %31 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %13, align 8
  %33 = load %struct.extent_buffer*, %struct.extent_buffer** %8, align 8
  %34 = load %struct.btrfs_chunk*, %struct.btrfs_chunk** %9, align 8
  %35 = call i64 @btrfs_chunk_length(%struct.extent_buffer* %33, %struct.btrfs_chunk* %34)
  store i64 %35, i64* %14, align 8
  %36 = load %struct.btrfs_mapping_tree*, %struct.btrfs_mapping_tree** %10, align 8
  %37 = getelementptr inbounds %struct.btrfs_mapping_tree, %struct.btrfs_mapping_tree* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  %39 = call i32 @read_lock(i32* %38)
  %40 = load %struct.btrfs_mapping_tree*, %struct.btrfs_mapping_tree** %10, align 8
  %41 = getelementptr inbounds %struct.btrfs_mapping_tree, %struct.btrfs_mapping_tree* %40, i32 0, i32 0
  %42 = load i64, i64* %13, align 8
  %43 = call %struct.extent_map* @lookup_extent_mapping(%struct.TYPE_9__* %41, i64 %42, i32 1)
  store %struct.extent_map* %43, %struct.extent_map** %12, align 8
  %44 = load %struct.btrfs_mapping_tree*, %struct.btrfs_mapping_tree** %10, align 8
  %45 = getelementptr inbounds %struct.btrfs_mapping_tree, %struct.btrfs_mapping_tree* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  %47 = call i32 @read_unlock(i32* %46)
  %48 = load %struct.extent_map*, %struct.extent_map** %12, align 8
  %49 = icmp ne %struct.extent_map* %48, null
  br i1 %49, label %50, label %69

50:                                               ; preds = %4
  %51 = load %struct.extent_map*, %struct.extent_map** %12, align 8
  %52 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* %13, align 8
  %55 = icmp sle i64 %53, %54
  br i1 %55, label %56, label %69

56:                                               ; preds = %50
  %57 = load %struct.extent_map*, %struct.extent_map** %12, align 8
  %58 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.extent_map*, %struct.extent_map** %12, align 8
  %61 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = add nsw i64 %59, %62
  %64 = load i64, i64* %13, align 8
  %65 = icmp sgt i64 %63, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %56
  %67 = load %struct.extent_map*, %struct.extent_map** %12, align 8
  %68 = call i32 @free_extent_map(%struct.extent_map* %67)
  store i32 0, i32* %5, align 4
  store i32 1, i32* %21, align 4
  br label %274

69:                                               ; preds = %56, %50, %4
  %70 = load %struct.extent_map*, %struct.extent_map** %12, align 8
  %71 = icmp ne %struct.extent_map* %70, null
  br i1 %71, label %72, label %75

72:                                               ; preds = %69
  %73 = load %struct.extent_map*, %struct.extent_map** %12, align 8
  %74 = call i32 @free_extent_map(%struct.extent_map* %73)
  br label %75

75:                                               ; preds = %72, %69
  br label %76

76:                                               ; preds = %75
  %77 = call %struct.extent_map* (...) @alloc_extent_map()
  store %struct.extent_map* %77, %struct.extent_map** %12, align 8
  %78 = load %struct.extent_map*, %struct.extent_map** %12, align 8
  %79 = icmp ne %struct.extent_map* %78, null
  br i1 %79, label %83, label %80

80:                                               ; preds = %76
  %81 = load i32, i32* @ENOMEM, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %5, align 4
  store i32 1, i32* %21, align 4
  br label %274

83:                                               ; preds = %76
  %84 = load %struct.extent_buffer*, %struct.extent_buffer** %8, align 8
  %85 = load %struct.btrfs_chunk*, %struct.btrfs_chunk** %9, align 8
  %86 = call i32 @btrfs_chunk_num_stripes(%struct.extent_buffer* %84, %struct.btrfs_chunk* %85)
  store i32 %86, i32* %18, align 4
  %87 = load i32, i32* %18, align 4
  %88 = call i32 @map_lookup_size(i32 %87)
  %89 = load i32, i32* @GFP_NOFS, align 4
  %90 = call %struct.map_lookup* @kmalloc(i32 %88, i32 %89)
  store %struct.map_lookup* %90, %struct.map_lookup** %11, align 8
  %91 = load %struct.map_lookup*, %struct.map_lookup** %11, align 8
  %92 = icmp ne %struct.map_lookup* %91, null
  br i1 %92, label %98, label %93

93:                                               ; preds = %83
  %94 = load %struct.extent_map*, %struct.extent_map** %12, align 8
  %95 = call i32 @free_extent_map(%struct.extent_map* %94)
  %96 = load i32, i32* @ENOMEM, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %5, align 4
  store i32 1, i32* %21, align 4
  br label %274

98:                                               ; preds = %83
  %99 = load %struct.map_lookup*, %struct.map_lookup** %11, align 8
  %100 = bitcast %struct.map_lookup* %99 to %struct.block_device*
  %101 = load %struct.extent_map*, %struct.extent_map** %12, align 8
  %102 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %101, i32 0, i32 4
  store %struct.block_device* %100, %struct.block_device** %102, align 8
  %103 = load i64, i64* %13, align 8
  %104 = load %struct.extent_map*, %struct.extent_map** %12, align 8
  %105 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %104, i32 0, i32 0
  store i64 %103, i64* %105, align 8
  %106 = load i64, i64* %14, align 8
  %107 = load %struct.extent_map*, %struct.extent_map** %12, align 8
  %108 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %107, i32 0, i32 1
  store i64 %106, i64* %108, align 8
  %109 = load %struct.extent_map*, %struct.extent_map** %12, align 8
  %110 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %109, i32 0, i32 3
  store i64 0, i64* %110, align 8
  %111 = load %struct.extent_map*, %struct.extent_map** %12, align 8
  %112 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = load %struct.extent_map*, %struct.extent_map** %12, align 8
  %115 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %114, i32 0, i32 2
  store i64 %113, i64* %115, align 8
  %116 = load i32, i32* %18, align 4
  %117 = load %struct.map_lookup*, %struct.map_lookup** %11, align 8
  %118 = getelementptr inbounds %struct.map_lookup, %struct.map_lookup* %117, i32 0, i32 0
  store i32 %116, i32* %118, align 8
  %119 = load %struct.extent_buffer*, %struct.extent_buffer** %8, align 8
  %120 = load %struct.btrfs_chunk*, %struct.btrfs_chunk** %9, align 8
  %121 = call i32 @btrfs_chunk_io_width(%struct.extent_buffer* %119, %struct.btrfs_chunk* %120)
  %122 = load %struct.map_lookup*, %struct.map_lookup** %11, align 8
  %123 = getelementptr inbounds %struct.map_lookup, %struct.map_lookup* %122, i32 0, i32 7
  store i32 %121, i32* %123, align 4
  %124 = load %struct.extent_buffer*, %struct.extent_buffer** %8, align 8
  %125 = load %struct.btrfs_chunk*, %struct.btrfs_chunk** %9, align 8
  %126 = call i32 @btrfs_chunk_io_align(%struct.extent_buffer* %124, %struct.btrfs_chunk* %125)
  %127 = load %struct.map_lookup*, %struct.map_lookup** %11, align 8
  %128 = getelementptr inbounds %struct.map_lookup, %struct.map_lookup* %127, i32 0, i32 6
  store i32 %126, i32* %128, align 8
  %129 = load %struct.extent_buffer*, %struct.extent_buffer** %8, align 8
  %130 = load %struct.btrfs_chunk*, %struct.btrfs_chunk** %9, align 8
  %131 = call i32 @btrfs_chunk_sector_size(%struct.extent_buffer* %129, %struct.btrfs_chunk* %130)
  %132 = load %struct.map_lookup*, %struct.map_lookup** %11, align 8
  %133 = getelementptr inbounds %struct.map_lookup, %struct.map_lookup* %132, i32 0, i32 5
  store i32 %131, i32* %133, align 4
  %134 = load %struct.extent_buffer*, %struct.extent_buffer** %8, align 8
  %135 = load %struct.btrfs_chunk*, %struct.btrfs_chunk** %9, align 8
  %136 = call i32 @btrfs_chunk_stripe_len(%struct.extent_buffer* %134, %struct.btrfs_chunk* %135)
  %137 = load %struct.map_lookup*, %struct.map_lookup** %11, align 8
  %138 = getelementptr inbounds %struct.map_lookup, %struct.map_lookup* %137, i32 0, i32 4
  store i32 %136, i32* %138, align 8
  %139 = load %struct.extent_buffer*, %struct.extent_buffer** %8, align 8
  %140 = load %struct.btrfs_chunk*, %struct.btrfs_chunk** %9, align 8
  %141 = call i32 @btrfs_chunk_type(%struct.extent_buffer* %139, %struct.btrfs_chunk* %140)
  %142 = load %struct.map_lookup*, %struct.map_lookup** %11, align 8
  %143 = getelementptr inbounds %struct.map_lookup, %struct.map_lookup* %142, i32 0, i32 3
  store i32 %141, i32* %143, align 4
  %144 = load %struct.extent_buffer*, %struct.extent_buffer** %8, align 8
  %145 = load %struct.btrfs_chunk*, %struct.btrfs_chunk** %9, align 8
  %146 = call i32 @btrfs_chunk_sub_stripes(%struct.extent_buffer* %144, %struct.btrfs_chunk* %145)
  %147 = load %struct.map_lookup*, %struct.map_lookup** %11, align 8
  %148 = getelementptr inbounds %struct.map_lookup, %struct.map_lookup* %147, i32 0, i32 2
  store i32 %146, i32* %148, align 8
  store i32 0, i32* %20, align 4
  br label %149

149:                                              ; preds = %254, %98
  %150 = load i32, i32* %20, align 4
  %151 = load i32, i32* %18, align 4
  %152 = icmp slt i32 %150, %151
  br i1 %152, label %153, label %257

153:                                              ; preds = %149
  %154 = load %struct.extent_buffer*, %struct.extent_buffer** %8, align 8
  %155 = load %struct.btrfs_chunk*, %struct.btrfs_chunk** %9, align 8
  %156 = load i32, i32* %20, align 4
  %157 = call i32 @btrfs_stripe_offset_nr(%struct.extent_buffer* %154, %struct.btrfs_chunk* %155, i32 %156)
  %158 = load %struct.map_lookup*, %struct.map_lookup** %11, align 8
  %159 = getelementptr inbounds %struct.map_lookup, %struct.map_lookup* %158, i32 0, i32 1
  %160 = load %struct.TYPE_8__*, %struct.TYPE_8__** %159, align 8
  %161 = load i32, i32* %20, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %160, i64 %162
  %164 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %163, i32 0, i32 1
  store i32 %157, i32* %164, align 8
  %165 = load %struct.extent_buffer*, %struct.extent_buffer** %8, align 8
  %166 = load %struct.btrfs_chunk*, %struct.btrfs_chunk** %9, align 8
  %167 = load i32, i32* %20, align 4
  %168 = call i64 @btrfs_stripe_devid_nr(%struct.extent_buffer* %165, %struct.btrfs_chunk* %166, i32 %167)
  store i64 %168, i64* %15, align 8
  %169 = load %struct.extent_buffer*, %struct.extent_buffer** %8, align 8
  %170 = load %struct.btrfs_chunk*, %struct.btrfs_chunk** %9, align 8
  %171 = load i32, i32* %20, align 4
  %172 = call i64 @btrfs_stripe_dev_uuid_nr(%struct.btrfs_chunk* %170, i32 %171)
  %173 = load i32, i32* @BTRFS_UUID_SIZE, align 4
  %174 = call i32 @read_extent_buffer(%struct.extent_buffer* %169, i32* %29, i64 %172, i32 %173)
  %175 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %176 = load i64, i64* %15, align 8
  %177 = call %struct.TYPE_10__* @btrfs_find_device(%struct.btrfs_root* %175, i64 %176, i32* %29, i32* null)
  %178 = load %struct.map_lookup*, %struct.map_lookup** %11, align 8
  %179 = getelementptr inbounds %struct.map_lookup, %struct.map_lookup* %178, i32 0, i32 1
  %180 = load %struct.TYPE_8__*, %struct.TYPE_8__** %179, align 8
  %181 = load i32, i32* %20, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %180, i64 %182
  %184 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %183, i32 0, i32 0
  store %struct.TYPE_10__* %177, %struct.TYPE_10__** %184, align 8
  %185 = load %struct.map_lookup*, %struct.map_lookup** %11, align 8
  %186 = getelementptr inbounds %struct.map_lookup, %struct.map_lookup* %185, i32 0, i32 1
  %187 = load %struct.TYPE_8__*, %struct.TYPE_8__** %186, align 8
  %188 = load i32, i32* %20, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %187, i64 %189
  %191 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %190, i32 0, i32 0
  %192 = load %struct.TYPE_10__*, %struct.TYPE_10__** %191, align 8
  %193 = icmp ne %struct.TYPE_10__* %192, null
  br i1 %193, label %206, label %194

194:                                              ; preds = %153
  %195 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %196 = load i32, i32* @DEGRADED, align 4
  %197 = call i32 @btrfs_test_opt(%struct.btrfs_root* %195, i32 %196)
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %206, label %199

199:                                              ; preds = %194
  %200 = load %struct.map_lookup*, %struct.map_lookup** %11, align 8
  %201 = call i32 @kfree(%struct.map_lookup* %200)
  %202 = load %struct.extent_map*, %struct.extent_map** %12, align 8
  %203 = call i32 @free_extent_map(%struct.extent_map* %202)
  %204 = load i32, i32* @EIO, align 4
  %205 = sub nsw i32 0, %204
  store i32 %205, i32* %5, align 4
  store i32 1, i32* %21, align 4
  br label %274

206:                                              ; preds = %194, %153
  %207 = load %struct.map_lookup*, %struct.map_lookup** %11, align 8
  %208 = getelementptr inbounds %struct.map_lookup, %struct.map_lookup* %207, i32 0, i32 1
  %209 = load %struct.TYPE_8__*, %struct.TYPE_8__** %208, align 8
  %210 = load i32, i32* %20, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %209, i64 %211
  %213 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %212, i32 0, i32 0
  %214 = load %struct.TYPE_10__*, %struct.TYPE_10__** %213, align 8
  %215 = icmp ne %struct.TYPE_10__* %214, null
  br i1 %215, label %244, label %216

216:                                              ; preds = %206
  %217 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %218 = load i64, i64* %15, align 8
  %219 = call %struct.TYPE_10__* @add_missing_dev(%struct.btrfs_root* %217, i64 %218, i32* %29)
  %220 = load %struct.map_lookup*, %struct.map_lookup** %11, align 8
  %221 = getelementptr inbounds %struct.map_lookup, %struct.map_lookup* %220, i32 0, i32 1
  %222 = load %struct.TYPE_8__*, %struct.TYPE_8__** %221, align 8
  %223 = load i32, i32* %20, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %222, i64 %224
  %226 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %225, i32 0, i32 0
  store %struct.TYPE_10__* %219, %struct.TYPE_10__** %226, align 8
  %227 = load %struct.map_lookup*, %struct.map_lookup** %11, align 8
  %228 = getelementptr inbounds %struct.map_lookup, %struct.map_lookup* %227, i32 0, i32 1
  %229 = load %struct.TYPE_8__*, %struct.TYPE_8__** %228, align 8
  %230 = load i32, i32* %20, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %229, i64 %231
  %233 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %232, i32 0, i32 0
  %234 = load %struct.TYPE_10__*, %struct.TYPE_10__** %233, align 8
  %235 = icmp ne %struct.TYPE_10__* %234, null
  br i1 %235, label %243, label %236

236:                                              ; preds = %216
  %237 = load %struct.map_lookup*, %struct.map_lookup** %11, align 8
  %238 = call i32 @kfree(%struct.map_lookup* %237)
  %239 = load %struct.extent_map*, %struct.extent_map** %12, align 8
  %240 = call i32 @free_extent_map(%struct.extent_map* %239)
  %241 = load i32, i32* @EIO, align 4
  %242 = sub nsw i32 0, %241
  store i32 %242, i32* %5, align 4
  store i32 1, i32* %21, align 4
  br label %274

243:                                              ; preds = %216
  br label %244

244:                                              ; preds = %243, %206
  %245 = load %struct.map_lookup*, %struct.map_lookup** %11, align 8
  %246 = getelementptr inbounds %struct.map_lookup, %struct.map_lookup* %245, i32 0, i32 1
  %247 = load %struct.TYPE_8__*, %struct.TYPE_8__** %246, align 8
  %248 = load i32, i32* %20, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %247, i64 %249
  %251 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %250, i32 0, i32 0
  %252 = load %struct.TYPE_10__*, %struct.TYPE_10__** %251, align 8
  %253 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %252, i32 0, i32 0
  store i32 1, i32* %253, align 4
  br label %254

254:                                              ; preds = %244
  %255 = load i32, i32* %20, align 4
  %256 = add nsw i32 %255, 1
  store i32 %256, i32* %20, align 4
  br label %149

257:                                              ; preds = %149
  %258 = load %struct.btrfs_mapping_tree*, %struct.btrfs_mapping_tree** %10, align 8
  %259 = getelementptr inbounds %struct.btrfs_mapping_tree, %struct.btrfs_mapping_tree* %258, i32 0, i32 0
  %260 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %259, i32 0, i32 0
  %261 = call i32 @write_lock(i32* %260)
  %262 = load %struct.btrfs_mapping_tree*, %struct.btrfs_mapping_tree** %10, align 8
  %263 = getelementptr inbounds %struct.btrfs_mapping_tree, %struct.btrfs_mapping_tree* %262, i32 0, i32 0
  %264 = load %struct.extent_map*, %struct.extent_map** %12, align 8
  %265 = call i32 @add_extent_mapping(%struct.TYPE_9__* %263, %struct.extent_map* %264)
  store i32 %265, i32* %19, align 4
  %266 = load %struct.btrfs_mapping_tree*, %struct.btrfs_mapping_tree** %10, align 8
  %267 = getelementptr inbounds %struct.btrfs_mapping_tree, %struct.btrfs_mapping_tree* %266, i32 0, i32 0
  %268 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %267, i32 0, i32 0
  %269 = call i32 @write_unlock(i32* %268)
  %270 = load i32, i32* %19, align 4
  %271 = call i32 @BUG_ON(i32 %270)
  %272 = load %struct.extent_map*, %struct.extent_map** %12, align 8
  %273 = call i32 @free_extent_map(%struct.extent_map* %272)
  store i32 0, i32* %5, align 4
  store i32 1, i32* %21, align 4
  br label %274

274:                                              ; preds = %257, %236, %199, %93, %80, %66
  %275 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %275)
  %276 = load i32, i32* %5, align 4
  ret i32 %276
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @btrfs_chunk_length(%struct.extent_buffer*, %struct.btrfs_chunk*) #2

declare dso_local i32 @read_lock(i32*) #2

declare dso_local %struct.extent_map* @lookup_extent_mapping(%struct.TYPE_9__*, i64, i32) #2

declare dso_local i32 @read_unlock(i32*) #2

declare dso_local i32 @free_extent_map(%struct.extent_map*) #2

declare dso_local %struct.extent_map* @alloc_extent_map(...) #2

declare dso_local i32 @btrfs_chunk_num_stripes(%struct.extent_buffer*, %struct.btrfs_chunk*) #2

declare dso_local %struct.map_lookup* @kmalloc(i32, i32) #2

declare dso_local i32 @map_lookup_size(i32) #2

declare dso_local i32 @btrfs_chunk_io_width(%struct.extent_buffer*, %struct.btrfs_chunk*) #2

declare dso_local i32 @btrfs_chunk_io_align(%struct.extent_buffer*, %struct.btrfs_chunk*) #2

declare dso_local i32 @btrfs_chunk_sector_size(%struct.extent_buffer*, %struct.btrfs_chunk*) #2

declare dso_local i32 @btrfs_chunk_stripe_len(%struct.extent_buffer*, %struct.btrfs_chunk*) #2

declare dso_local i32 @btrfs_chunk_type(%struct.extent_buffer*, %struct.btrfs_chunk*) #2

declare dso_local i32 @btrfs_chunk_sub_stripes(%struct.extent_buffer*, %struct.btrfs_chunk*) #2

declare dso_local i32 @btrfs_stripe_offset_nr(%struct.extent_buffer*, %struct.btrfs_chunk*, i32) #2

declare dso_local i64 @btrfs_stripe_devid_nr(%struct.extent_buffer*, %struct.btrfs_chunk*, i32) #2

declare dso_local i32 @read_extent_buffer(%struct.extent_buffer*, i32*, i64, i32) #2

declare dso_local i64 @btrfs_stripe_dev_uuid_nr(%struct.btrfs_chunk*, i32) #2

declare dso_local %struct.TYPE_10__* @btrfs_find_device(%struct.btrfs_root*, i64, i32*, i32*) #2

declare dso_local i32 @btrfs_test_opt(%struct.btrfs_root*, i32) #2

declare dso_local i32 @kfree(%struct.map_lookup*) #2

declare dso_local %struct.TYPE_10__* @add_missing_dev(%struct.btrfs_root*, i64, i32*) #2

declare dso_local i32 @write_lock(i32*) #2

declare dso_local i32 @add_extent_mapping(%struct.TYPE_9__*, %struct.extent_map*) #2

declare dso_local i32 @write_unlock(i32*) #2

declare dso_local i32 @BUG_ON(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
