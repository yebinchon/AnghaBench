; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_inode.c_btrfs_get_blocks_direct.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_inode.c_btrfs_get_blocks_direct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i64 }
%struct.buffer_head = type { i64, i32, i64 }
%struct.extent_map = type { i64, i64, i64, i32, i32 }
%struct.btrfs_root = type { i64 }
%struct.btrfs_trans_handle = type { i64, i64, i64, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, %struct.btrfs_root* }

@EXTENT_FLAG_COMPRESSED = common dso_local global i32 0, align 4
@EXTENT_MAP_INLINE = common dso_local global i64 0, align 8
@ENOTBLK = common dso_local global i32 0, align 4
@EXTENT_MAP_HOLE = common dso_local global i64 0, align 8
@EXTENT_FLAG_PREALLOC = common dso_local global i32 0, align 4
@BTRFS_INODE_NODATACOW = common dso_local global i32 0, align 4
@BTRFS_ORDERED_PREALLOC = common dso_local global i32 0, align 4
@BTRFS_ORDERED_NOCOW = common dso_local global i32 0, align 4
@EXTENT_LOCKED = common dso_local global i32 0, align 4
@EXTENT_DELALLOC = common dso_local global i32 0, align 4
@EXTENT_DIRTY = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i64, %struct.buffer_head*, i32)* @btrfs_get_blocks_direct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btrfs_get_blocks_direct(%struct.inode* %0, i64 %1, %struct.buffer_head* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.buffer_head*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.extent_map*, align 8
  %11 = alloca %struct.btrfs_root*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.btrfs_trans_handle*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  store %struct.inode* %0, %struct.inode** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.buffer_head* %2, %struct.buffer_head** %8, align 8
  store i32 %3, i32* %9, align 4
  %18 = load %struct.inode*, %struct.inode** %6, align 8
  %19 = call %struct.TYPE_2__* @BTRFS_I(%struct.inode* %18)
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 2
  %21 = load %struct.btrfs_root*, %struct.btrfs_root** %20, align 8
  store %struct.btrfs_root* %21, %struct.btrfs_root** %11, align 8
  %22 = load i64, i64* %7, align 8
  %23 = load %struct.inode*, %struct.inode** %6, align 8
  %24 = getelementptr inbounds %struct.inode, %struct.inode* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = shl i64 %22, %25
  store i64 %26, i64* %12, align 8
  %27 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %28 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %13, align 8
  %30 = load %struct.inode*, %struct.inode** %6, align 8
  %31 = load i64, i64* %12, align 8
  %32 = load i64, i64* %13, align 8
  %33 = call %struct.extent_map* @btrfs_get_extent(%struct.inode* %30, i32* null, i32 0, i64 %31, i64 %32, i32 0)
  store %struct.extent_map* %33, %struct.extent_map** %10, align 8
  %34 = load %struct.extent_map*, %struct.extent_map** %10, align 8
  %35 = call i64 @IS_ERR(%struct.extent_map* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %4
  %38 = load %struct.extent_map*, %struct.extent_map** %10, align 8
  %39 = call i32 @PTR_ERR(%struct.extent_map* %38)
  store i32 %39, i32* %5, align 4
  br label %288

40:                                               ; preds = %4
  %41 = load i32, i32* @EXTENT_FLAG_COMPRESSED, align 4
  %42 = load %struct.extent_map*, %struct.extent_map** %10, align 8
  %43 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %42, i32 0, i32 3
  %44 = call i64 @test_bit(i32 %41, i32* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %52, label %46

46:                                               ; preds = %40
  %47 = load %struct.extent_map*, %struct.extent_map** %10, align 8
  %48 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @EXTENT_MAP_INLINE, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %57

52:                                               ; preds = %46, %40
  %53 = load %struct.extent_map*, %struct.extent_map** %10, align 8
  %54 = call i32 @free_extent_map(%struct.extent_map* %53)
  %55 = load i32, i32* @ENOTBLK, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %5, align 4
  br label %288

57:                                               ; preds = %46
  %58 = load i32, i32* %9, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %86, label %60

60:                                               ; preds = %57
  %61 = load %struct.extent_map*, %struct.extent_map** %10, align 8
  %62 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @EXTENT_MAP_HOLE, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %72, label %66

66:                                               ; preds = %60
  %67 = load i32, i32* @EXTENT_FLAG_PREALLOC, align 4
  %68 = load %struct.extent_map*, %struct.extent_map** %10, align 8
  %69 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %68, i32 0, i32 3
  %70 = call i64 @test_bit(i32 %67, i32* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %86

72:                                               ; preds = %66, %60
  %73 = load %struct.extent_map*, %struct.extent_map** %10, align 8
  %74 = call i32 @free_extent_map(%struct.extent_map* %73)
  %75 = load %struct.inode*, %struct.inode** %6, align 8
  %76 = call %struct.TYPE_2__* @BTRFS_I(%struct.inode* %75)
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 1
  %78 = load i64, i64* %12, align 8
  %79 = load i64, i64* %12, align 8
  %80 = load %struct.btrfs_root*, %struct.btrfs_root** %11, align 8
  %81 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = add nsw i64 %79, %82
  %84 = sub nsw i64 %83, 1
  %85 = call i32 @unlock_extent(i32* %77, i64 %78, i64 %84)
  store i32 0, i32* %5, align 4
  br label %288

86:                                               ; preds = %66, %57
  %87 = load i32, i32* %9, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %99, label %89

89:                                               ; preds = %86
  %90 = load %struct.extent_map*, %struct.extent_map** %10, align 8
  %91 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* %12, align 8
  %94 = load %struct.extent_map*, %struct.extent_map** %10, align 8
  %95 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %94, i32 0, i32 2
  %96 = load i64, i64* %95, align 8
  %97 = sub nsw i64 %93, %96
  %98 = sub nsw i64 %92, %97
  store i64 %98, i64* %13, align 8
  br label %234

99:                                               ; preds = %86
  %100 = load i32, i32* @EXTENT_FLAG_PREALLOC, align 4
  %101 = load %struct.extent_map*, %struct.extent_map** %10, align 8
  %102 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %101, i32 0, i32 3
  %103 = call i64 @test_bit(i32 %100, i32* %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %119, label %105

105:                                              ; preds = %99
  %106 = load %struct.inode*, %struct.inode** %6, align 8
  %107 = call %struct.TYPE_2__* @BTRFS_I(%struct.inode* %106)
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* @BTRFS_INODE_NODATACOW, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %190

113:                                              ; preds = %105
  %114 = load %struct.extent_map*, %struct.extent_map** %10, align 8
  %115 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @EXTENT_MAP_HOLE, align 8
  %118 = icmp ne i64 %116, %117
  br i1 %118, label %119, label %190

119:                                              ; preds = %113, %99
  %120 = load i32, i32* @EXTENT_FLAG_PREALLOC, align 4
  %121 = load %struct.extent_map*, %struct.extent_map** %10, align 8
  %122 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %121, i32 0, i32 3
  %123 = call i64 @test_bit(i32 %120, i32* %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %119
  %126 = load i32, i32* @BTRFS_ORDERED_PREALLOC, align 4
  store i32 %126, i32* %15, align 4
  br label %129

127:                                              ; preds = %119
  %128 = load i32, i32* @BTRFS_ORDERED_NOCOW, align 4
  store i32 %128, i32* %15, align 4
  br label %129

129:                                              ; preds = %127, %125
  %130 = load i64, i64* %13, align 8
  %131 = load %struct.extent_map*, %struct.extent_map** %10, align 8
  %132 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* %12, align 8
  %135 = load %struct.extent_map*, %struct.extent_map** %10, align 8
  %136 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %135, i32 0, i32 2
  %137 = load i64, i64* %136, align 8
  %138 = sub nsw i64 %134, %137
  %139 = sub nsw i64 %133, %138
  %140 = call i64 @min(i64 %130, i64 %139)
  store i64 %140, i64* %13, align 8
  %141 = load %struct.extent_map*, %struct.extent_map** %10, align 8
  %142 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = load i64, i64* %12, align 8
  %145 = load %struct.extent_map*, %struct.extent_map** %10, align 8
  %146 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %145, i32 0, i32 2
  %147 = load i64, i64* %146, align 8
  %148 = sub nsw i64 %144, %147
  %149 = add nsw i64 %143, %148
  store i64 %149, i64* %17, align 8
  %150 = load %struct.btrfs_root*, %struct.btrfs_root** %11, align 8
  %151 = call %struct.extent_map* @btrfs_join_transaction(%struct.btrfs_root* %150)
  %152 = bitcast %struct.extent_map* %151 to %struct.btrfs_trans_handle*
  store %struct.btrfs_trans_handle* %152, %struct.btrfs_trans_handle** %14, align 8
  %153 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %14, align 8
  %154 = bitcast %struct.btrfs_trans_handle* %153 to %struct.extent_map*
  %155 = call i64 @IS_ERR(%struct.extent_map* %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %129
  br label %191

158:                                              ; preds = %129
  %159 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %14, align 8
  %160 = bitcast %struct.btrfs_trans_handle* %159 to %struct.extent_map*
  %161 = load %struct.inode*, %struct.inode** %6, align 8
  %162 = load i64, i64* %12, align 8
  %163 = load i64, i64* %13, align 8
  %164 = call i32 @can_nocow_odirect(%struct.extent_map* %160, %struct.inode* %161, i64 %162, i64 %163)
  %165 = icmp eq i32 %164, 1
  br i1 %165, label %166, label %185

166:                                              ; preds = %158
  %167 = load %struct.inode*, %struct.inode** %6, align 8
  %168 = load i64, i64* %12, align 8
  %169 = load i64, i64* %17, align 8
  %170 = load i64, i64* %13, align 8
  %171 = load i64, i64* %13, align 8
  %172 = load i32, i32* %15, align 4
  %173 = call i32 @btrfs_add_ordered_extent_dio(%struct.inode* %167, i64 %168, i64 %169, i64 %170, i64 %171, i32 %172)
  store i32 %173, i32* %16, align 4
  %174 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %14, align 8
  %175 = bitcast %struct.btrfs_trans_handle* %174 to %struct.extent_map*
  %176 = load %struct.btrfs_root*, %struct.btrfs_root** %11, align 8
  %177 = call i32 @btrfs_end_transaction(%struct.extent_map* %175, %struct.btrfs_root* %176)
  %178 = load i32, i32* %16, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %184

180:                                              ; preds = %166
  %181 = load %struct.extent_map*, %struct.extent_map** %10, align 8
  %182 = call i32 @free_extent_map(%struct.extent_map* %181)
  %183 = load i32, i32* %16, align 4
  store i32 %183, i32* %5, align 4
  br label %288

184:                                              ; preds = %166
  br label %218

185:                                              ; preds = %158
  %186 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %14, align 8
  %187 = bitcast %struct.btrfs_trans_handle* %186 to %struct.extent_map*
  %188 = load %struct.btrfs_root*, %struct.btrfs_root** %11, align 8
  %189 = call i32 @btrfs_end_transaction(%struct.extent_map* %187, %struct.btrfs_root* %188)
  br label %190

190:                                              ; preds = %185, %113, %105
  br label %191

191:                                              ; preds = %190, %157
  %192 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %193 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %192, i32 0, i32 0
  %194 = load i64, i64* %193, align 8
  store i64 %194, i64* %13, align 8
  %195 = load %struct.inode*, %struct.inode** %6, align 8
  %196 = load %struct.extent_map*, %struct.extent_map** %10, align 8
  %197 = load i64, i64* %12, align 8
  %198 = load i64, i64* %13, align 8
  %199 = call %struct.extent_map* @btrfs_new_extent_direct(%struct.inode* %195, %struct.extent_map* %196, i64 %197, i64 %198)
  store %struct.extent_map* %199, %struct.extent_map** %10, align 8
  %200 = load %struct.extent_map*, %struct.extent_map** %10, align 8
  %201 = call i64 @IS_ERR(%struct.extent_map* %200)
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %206

203:                                              ; preds = %191
  %204 = load %struct.extent_map*, %struct.extent_map** %10, align 8
  %205 = call i32 @PTR_ERR(%struct.extent_map* %204)
  store i32 %205, i32* %5, align 4
  br label %288

206:                                              ; preds = %191
  %207 = load i64, i64* %13, align 8
  %208 = load %struct.extent_map*, %struct.extent_map** %10, align 8
  %209 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %208, i32 0, i32 1
  %210 = load i64, i64* %209, align 8
  %211 = load i64, i64* %12, align 8
  %212 = load %struct.extent_map*, %struct.extent_map** %10, align 8
  %213 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %212, i32 0, i32 2
  %214 = load i64, i64* %213, align 8
  %215 = sub nsw i64 %211, %214
  %216 = sub nsw i64 %210, %215
  %217 = call i64 @min(i64 %207, i64 %216)
  store i64 %217, i64* %13, align 8
  br label %218

218:                                              ; preds = %206, %184
  %219 = load %struct.inode*, %struct.inode** %6, align 8
  %220 = call %struct.TYPE_2__* @BTRFS_I(%struct.inode* %219)
  %221 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %220, i32 0, i32 1
  %222 = load i64, i64* %12, align 8
  %223 = load i64, i64* %12, align 8
  %224 = load i64, i64* %13, align 8
  %225 = add nsw i64 %223, %224
  %226 = sub nsw i64 %225, 1
  %227 = load i32, i32* @EXTENT_LOCKED, align 4
  %228 = load i32, i32* @EXTENT_DELALLOC, align 4
  %229 = or i32 %227, %228
  %230 = load i32, i32* @EXTENT_DIRTY, align 4
  %231 = or i32 %229, %230
  %232 = load i32, i32* @GFP_NOFS, align 4
  %233 = call i32 @clear_extent_bit(i32* %221, i64 %222, i64 %226, i32 %231, i32 1, i32 0, i32* null, i32 %232)
  br label %234

234:                                              ; preds = %218, %89
  %235 = load %struct.extent_map*, %struct.extent_map** %10, align 8
  %236 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %235, i32 0, i32 0
  %237 = load i64, i64* %236, align 8
  %238 = load i64, i64* %12, align 8
  %239 = load %struct.extent_map*, %struct.extent_map** %10, align 8
  %240 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %239, i32 0, i32 2
  %241 = load i64, i64* %240, align 8
  %242 = sub nsw i64 %238, %241
  %243 = add nsw i64 %237, %242
  %244 = load %struct.inode*, %struct.inode** %6, align 8
  %245 = getelementptr inbounds %struct.inode, %struct.inode* %244, i32 0, i32 0
  %246 = load i64, i64* %245, align 8
  %247 = ashr i64 %243, %246
  %248 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %249 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %248, i32 0, i32 2
  store i64 %247, i64* %249, align 8
  %250 = load i64, i64* %13, align 8
  %251 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %252 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %251, i32 0, i32 0
  store i64 %250, i64* %252, align 8
  %253 = load %struct.extent_map*, %struct.extent_map** %10, align 8
  %254 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %253, i32 0, i32 4
  %255 = load i32, i32* %254, align 4
  %256 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %257 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %256, i32 0, i32 1
  store i32 %255, i32* %257, align 8
  %258 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %259 = call i32 @set_buffer_mapped(%struct.buffer_head* %258)
  %260 = load i32, i32* %9, align 4
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %262, label %285

262:                                              ; preds = %234
  %263 = load i32, i32* @EXTENT_FLAG_PREALLOC, align 4
  %264 = load %struct.extent_map*, %struct.extent_map** %10, align 8
  %265 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %264, i32 0, i32 3
  %266 = call i64 @test_bit(i32 %263, i32* %265)
  %267 = icmp ne i64 %266, 0
  br i1 %267, label %271, label %268

268:                                              ; preds = %262
  %269 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %270 = call i32 @set_buffer_new(%struct.buffer_head* %269)
  br label %271

271:                                              ; preds = %268, %262
  %272 = load i64, i64* %12, align 8
  %273 = load i64, i64* %13, align 8
  %274 = add nsw i64 %272, %273
  %275 = load %struct.inode*, %struct.inode** %6, align 8
  %276 = call i64 @i_size_read(%struct.inode* %275)
  %277 = icmp sgt i64 %274, %276
  br i1 %277, label %278, label %284

278:                                              ; preds = %271
  %279 = load %struct.inode*, %struct.inode** %6, align 8
  %280 = load i64, i64* %12, align 8
  %281 = load i64, i64* %13, align 8
  %282 = add nsw i64 %280, %281
  %283 = call i32 @i_size_write(%struct.inode* %279, i64 %282)
  br label %284

284:                                              ; preds = %278, %271
  br label %285

285:                                              ; preds = %284, %234
  %286 = load %struct.extent_map*, %struct.extent_map** %10, align 8
  %287 = call i32 @free_extent_map(%struct.extent_map* %286)
  store i32 0, i32* %5, align 4
  br label %288

288:                                              ; preds = %285, %203, %180, %72, %52, %37
  %289 = load i32, i32* %5, align 4
  ret i32 %289
}

declare dso_local %struct.TYPE_2__* @BTRFS_I(%struct.inode*) #1

declare dso_local %struct.extent_map* @btrfs_get_extent(%struct.inode*, i32*, i32, i64, i64, i32) #1

declare dso_local i64 @IS_ERR(%struct.extent_map*) #1

declare dso_local i32 @PTR_ERR(%struct.extent_map*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @free_extent_map(%struct.extent_map*) #1

declare dso_local i32 @unlock_extent(i32*, i64, i64) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local %struct.extent_map* @btrfs_join_transaction(%struct.btrfs_root*) #1

declare dso_local i32 @can_nocow_odirect(%struct.extent_map*, %struct.inode*, i64, i64) #1

declare dso_local i32 @btrfs_add_ordered_extent_dio(%struct.inode*, i64, i64, i64, i64, i32) #1

declare dso_local i32 @btrfs_end_transaction(%struct.extent_map*, %struct.btrfs_root*) #1

declare dso_local %struct.extent_map* @btrfs_new_extent_direct(%struct.inode*, %struct.extent_map*, i64, i64) #1

declare dso_local i32 @clear_extent_bit(i32*, i64, i64, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @set_buffer_mapped(%struct.buffer_head*) #1

declare dso_local i32 @set_buffer_new(%struct.buffer_head*) #1

declare dso_local i64 @i_size_read(%struct.inode*) #1

declare dso_local i32 @i_size_write(%struct.inode*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
