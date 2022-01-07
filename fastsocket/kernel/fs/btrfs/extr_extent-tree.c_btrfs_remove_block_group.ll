; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_extent-tree.c_btrfs_remove_block_group.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_extent-tree.c_btrfs_remove_block_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_trans_handle = type { i32 }
%struct.btrfs_root = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32, %struct.btrfs_free_cluster, %struct.btrfs_free_cluster, %struct.btrfs_root*, %struct.btrfs_root* }
%struct.btrfs_free_cluster = type { i32 }
%struct.btrfs_path = type { i32 }
%struct.btrfs_block_group_cache = type { i32, i64, %struct.TYPE_7__, %struct.TYPE_6__*, i32, i32, i32, i32*, i64, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32* }
%struct.btrfs_key = type { i64, i32, i32 }
%struct.inode = type { i32 }

@BTRFS_BLOCK_GROUP_DUP = common dso_local global i32 0, align 4
@BTRFS_BLOCK_GROUP_RAID1 = common dso_local global i32 0, align 4
@BTRFS_BLOCK_GROUP_RAID10 = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@BTRFS_FREE_SPACE_OBJECTID = common dso_local global i32 0, align 4
@BTRFS_CACHE_STARTED = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btrfs_remove_block_group(%struct.btrfs_trans_handle* %0, %struct.btrfs_root* %1, i32 %2) #0 {
  %4 = alloca %struct.btrfs_trans_handle*, align 8
  %5 = alloca %struct.btrfs_root*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.btrfs_path*, align 8
  %8 = alloca %struct.btrfs_block_group_cache*, align 8
  %9 = alloca %struct.btrfs_free_cluster*, align 8
  %10 = alloca %struct.btrfs_root*, align 8
  %11 = alloca %struct.btrfs_key, align 8
  %12 = alloca %struct.inode*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.btrfs_trans_handle* %0, %struct.btrfs_trans_handle** %4, align 8
  store %struct.btrfs_root* %1, %struct.btrfs_root** %5, align 8
  store i32 %2, i32* %6, align 4
  %16 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %17 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %16, i32 0, i32 0
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 5
  %20 = load %struct.btrfs_root*, %struct.btrfs_root** %19, align 8
  store %struct.btrfs_root* %20, %struct.btrfs_root** %10, align 8
  %21 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %22 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %21, i32 0, i32 0
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 4
  %25 = load %struct.btrfs_root*, %struct.btrfs_root** %24, align 8
  store %struct.btrfs_root* %25, %struct.btrfs_root** %5, align 8
  %26 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %27 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %26, i32 0, i32 0
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %27, align 8
  %29 = load i32, i32* %6, align 4
  %30 = call %struct.btrfs_block_group_cache* @btrfs_lookup_block_group(%struct.TYPE_8__* %28, i32 %29)
  store %struct.btrfs_block_group_cache* %30, %struct.btrfs_block_group_cache** %8, align 8
  %31 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %8, align 8
  %32 = icmp ne %struct.btrfs_block_group_cache* %31, null
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  %35 = call i32 @BUG_ON(i32 %34)
  %36 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %8, align 8
  %37 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %36, i32 0, i32 9
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  %42 = call i32 @BUG_ON(i32 %41)
  %43 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %44 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %8, align 8
  %45 = call i32 @free_excluded_extents(%struct.btrfs_root* %43, %struct.btrfs_block_group_cache* %44)
  %46 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %8, align 8
  %47 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %46, i32 0, i32 2
  %48 = call i32 @memcpy(%struct.btrfs_key* %11, %struct.TYPE_7__* %47, i32 16)
  %49 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %8, align 8
  %50 = call i32 @get_block_group_index(%struct.btrfs_block_group_cache* %49)
  store i32 %50, i32* %14, align 4
  %51 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %8, align 8
  %52 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @BTRFS_BLOCK_GROUP_DUP, align 4
  %55 = load i32, i32* @BTRFS_BLOCK_GROUP_RAID1, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* @BTRFS_BLOCK_GROUP_RAID10, align 4
  %58 = or i32 %56, %57
  %59 = and i32 %53, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %3
  store i32 2, i32* %15, align 4
  br label %63

62:                                               ; preds = %3
  store i32 1, i32* %15, align 4
  br label %63

63:                                               ; preds = %62, %61
  %64 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %65 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %64, i32 0, i32 0
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 3
  store %struct.btrfs_free_cluster* %67, %struct.btrfs_free_cluster** %9, align 8
  %68 = load %struct.btrfs_free_cluster*, %struct.btrfs_free_cluster** %9, align 8
  %69 = getelementptr inbounds %struct.btrfs_free_cluster, %struct.btrfs_free_cluster* %68, i32 0, i32 0
  %70 = call i32 @spin_lock(i32* %69)
  %71 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %8, align 8
  %72 = load %struct.btrfs_free_cluster*, %struct.btrfs_free_cluster** %9, align 8
  %73 = call i32 @btrfs_return_cluster_to_free_space(%struct.btrfs_block_group_cache* %71, %struct.btrfs_free_cluster* %72)
  %74 = load %struct.btrfs_free_cluster*, %struct.btrfs_free_cluster** %9, align 8
  %75 = getelementptr inbounds %struct.btrfs_free_cluster, %struct.btrfs_free_cluster* %74, i32 0, i32 0
  %76 = call i32 @spin_unlock(i32* %75)
  %77 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %78 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %77, i32 0, i32 0
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 2
  store %struct.btrfs_free_cluster* %80, %struct.btrfs_free_cluster** %9, align 8
  %81 = load %struct.btrfs_free_cluster*, %struct.btrfs_free_cluster** %9, align 8
  %82 = getelementptr inbounds %struct.btrfs_free_cluster, %struct.btrfs_free_cluster* %81, i32 0, i32 0
  %83 = call i32 @spin_lock(i32* %82)
  %84 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %8, align 8
  %85 = load %struct.btrfs_free_cluster*, %struct.btrfs_free_cluster** %9, align 8
  %86 = call i32 @btrfs_return_cluster_to_free_space(%struct.btrfs_block_group_cache* %84, %struct.btrfs_free_cluster* %85)
  %87 = load %struct.btrfs_free_cluster*, %struct.btrfs_free_cluster** %9, align 8
  %88 = getelementptr inbounds %struct.btrfs_free_cluster, %struct.btrfs_free_cluster* %87, i32 0, i32 0
  %89 = call i32 @spin_unlock(i32* %88)
  %90 = call %struct.btrfs_path* (...) @btrfs_alloc_path()
  store %struct.btrfs_path* %90, %struct.btrfs_path** %7, align 8
  %91 = load %struct.btrfs_path*, %struct.btrfs_path** %7, align 8
  %92 = icmp ne %struct.btrfs_path* %91, null
  br i1 %92, label %96, label %93

93:                                               ; preds = %63
  %94 = load i32, i32* @ENOMEM, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %13, align 4
  br label %308

96:                                               ; preds = %63
  %97 = load %struct.btrfs_root*, %struct.btrfs_root** %10, align 8
  %98 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %8, align 8
  %99 = load %struct.btrfs_path*, %struct.btrfs_path** %7, align 8
  %100 = call %struct.inode* @lookup_free_space_inode(%struct.btrfs_root* %97, %struct.btrfs_block_group_cache* %98, %struct.btrfs_path* %99)
  store %struct.inode* %100, %struct.inode** %12, align 8
  %101 = load %struct.inode*, %struct.inode** %12, align 8
  %102 = call i32 @IS_ERR(%struct.inode* %101)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %140, label %104

104:                                              ; preds = %96
  %105 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %4, align 8
  %106 = load %struct.inode*, %struct.inode** %12, align 8
  %107 = call i32 @btrfs_orphan_add(%struct.btrfs_trans_handle* %105, %struct.inode* %106)
  store i32 %107, i32* %13, align 4
  %108 = load i32, i32* %13, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %104
  %111 = load %struct.inode*, %struct.inode** %12, align 8
  %112 = call i32 @btrfs_add_delayed_iput(%struct.inode* %111)
  br label %308

113:                                              ; preds = %104
  %114 = load %struct.inode*, %struct.inode** %12, align 8
  %115 = call i32 @clear_nlink(%struct.inode* %114)
  %116 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %8, align 8
  %117 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %116, i32 0, i32 6
  %118 = call i32 @spin_lock(i32* %117)
  %119 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %8, align 8
  %120 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %119, i32 0, i32 8
  %121 = load i64, i64* %120, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %133

123:                                              ; preds = %113
  %124 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %8, align 8
  %125 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %124, i32 0, i32 8
  store i64 0, i64* %125, align 8
  %126 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %8, align 8
  %127 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %126, i32 0, i32 7
  store i32* null, i32** %127, align 8
  %128 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %8, align 8
  %129 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %128, i32 0, i32 6
  %130 = call i32 @spin_unlock(i32* %129)
  %131 = load %struct.inode*, %struct.inode** %12, align 8
  %132 = call i32 @iput(%struct.inode* %131)
  br label %137

133:                                              ; preds = %113
  %134 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %8, align 8
  %135 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %134, i32 0, i32 6
  %136 = call i32 @spin_unlock(i32* %135)
  br label %137

137:                                              ; preds = %133, %123
  %138 = load %struct.inode*, %struct.inode** %12, align 8
  %139 = call i32 @btrfs_add_delayed_iput(%struct.inode* %138)
  br label %140

140:                                              ; preds = %137, %96
  %141 = load i32, i32* @BTRFS_FREE_SPACE_OBJECTID, align 4
  %142 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %11, i32 0, i32 2
  store i32 %141, i32* %142, align 4
  %143 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %8, align 8
  %144 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %143, i32 0, i32 2
  %145 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %11, i32 0, i32 1
  store i32 %146, i32* %147, align 8
  %148 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %11, i32 0, i32 0
  store i64 0, i64* %148, align 8
  %149 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %4, align 8
  %150 = load %struct.btrfs_root*, %struct.btrfs_root** %10, align 8
  %151 = load %struct.btrfs_path*, %struct.btrfs_path** %7, align 8
  %152 = call i32 @btrfs_search_slot(%struct.btrfs_trans_handle* %149, %struct.btrfs_root* %150, %struct.btrfs_key* %11, %struct.btrfs_path* %151, i32 -1, i32 1)
  store i32 %152, i32* %13, align 4
  %153 = load i32, i32* %13, align 4
  %154 = icmp slt i32 %153, 0
  br i1 %154, label %155, label %156

155:                                              ; preds = %140
  br label %308

156:                                              ; preds = %140
  %157 = load i32, i32* %13, align 4
  %158 = icmp sgt i32 %157, 0
  br i1 %158, label %159, label %162

159:                                              ; preds = %156
  %160 = load %struct.btrfs_path*, %struct.btrfs_path** %7, align 8
  %161 = call i32 @btrfs_release_path(%struct.btrfs_path* %160)
  br label %162

162:                                              ; preds = %159, %156
  %163 = load i32, i32* %13, align 4
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %165, label %176

165:                                              ; preds = %162
  %166 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %4, align 8
  %167 = load %struct.btrfs_root*, %struct.btrfs_root** %10, align 8
  %168 = load %struct.btrfs_path*, %struct.btrfs_path** %7, align 8
  %169 = call i32 @btrfs_del_item(%struct.btrfs_trans_handle* %166, %struct.btrfs_root* %167, %struct.btrfs_path* %168)
  store i32 %169, i32* %13, align 4
  %170 = load i32, i32* %13, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %173

172:                                              ; preds = %165
  br label %308

173:                                              ; preds = %165
  %174 = load %struct.btrfs_path*, %struct.btrfs_path** %7, align 8
  %175 = call i32 @btrfs_release_path(%struct.btrfs_path* %174)
  br label %176

176:                                              ; preds = %173, %162
  %177 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %178 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %177, i32 0, i32 0
  %179 = load %struct.TYPE_8__*, %struct.TYPE_8__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %179, i32 0, i32 0
  %181 = call i32 @spin_lock(i32* %180)
  %182 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %8, align 8
  %183 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %182, i32 0, i32 5
  %184 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %185 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %184, i32 0, i32 0
  %186 = load %struct.TYPE_8__*, %struct.TYPE_8__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %186, i32 0, i32 1
  %188 = call i32 @rb_erase(i32* %183, i32* %187)
  %189 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %190 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %189, i32 0, i32 0
  %191 = load %struct.TYPE_8__*, %struct.TYPE_8__** %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %191, i32 0, i32 0
  %193 = call i32 @spin_unlock(i32* %192)
  %194 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %8, align 8
  %195 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %194, i32 0, i32 3
  %196 = load %struct.TYPE_6__*, %struct.TYPE_6__** %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %196, i32 0, i32 4
  %198 = call i32 @down_write(i32* %197)
  %199 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %8, align 8
  %200 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %199, i32 0, i32 4
  %201 = call i32 @list_del_init(i32* %200)
  %202 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %8, align 8
  %203 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %202, i32 0, i32 3
  %204 = load %struct.TYPE_6__*, %struct.TYPE_6__** %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %204, i32 0, i32 5
  %206 = load i32*, i32** %205, align 8
  %207 = load i32, i32* %14, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i32, i32* %206, i64 %208
  %210 = call i64 @list_empty(i32* %209)
  %211 = icmp ne i64 %210, 0
  br i1 %211, label %212, label %220

212:                                              ; preds = %176
  %213 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %214 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %213, i32 0, i32 0
  %215 = load %struct.TYPE_8__*, %struct.TYPE_8__** %214, align 8
  %216 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %8, align 8
  %217 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 8
  %219 = call i32 @clear_avail_alloc_bits(%struct.TYPE_8__* %215, i32 %218)
  br label %220

220:                                              ; preds = %212, %176
  %221 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %8, align 8
  %222 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %221, i32 0, i32 3
  %223 = load %struct.TYPE_6__*, %struct.TYPE_6__** %222, align 8
  %224 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %223, i32 0, i32 4
  %225 = call i32 @up_write(i32* %224)
  %226 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %8, align 8
  %227 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %226, i32 0, i32 1
  %228 = load i64, i64* %227, align 8
  %229 = load i64, i64* @BTRFS_CACHE_STARTED, align 8
  %230 = icmp eq i64 %228, %229
  br i1 %230, label %231, label %234

231:                                              ; preds = %220
  %232 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %8, align 8
  %233 = call i32 @wait_block_group_cache_done(%struct.btrfs_block_group_cache* %232)
  br label %234

234:                                              ; preds = %231, %220
  %235 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %8, align 8
  %236 = call i32 @btrfs_remove_free_space_cache(%struct.btrfs_block_group_cache* %235)
  %237 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %8, align 8
  %238 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %237, i32 0, i32 3
  %239 = load %struct.TYPE_6__*, %struct.TYPE_6__** %238, align 8
  %240 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %239, i32 0, i32 3
  %241 = call i32 @spin_lock(i32* %240)
  %242 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %8, align 8
  %243 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %242, i32 0, i32 2
  %244 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 8
  %246 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %8, align 8
  %247 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %246, i32 0, i32 3
  %248 = load %struct.TYPE_6__*, %struct.TYPE_6__** %247, align 8
  %249 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 8
  %251 = sub nsw i32 %250, %245
  store i32 %251, i32* %249, align 8
  %252 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %8, align 8
  %253 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %252, i32 0, i32 2
  %254 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 8
  %256 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %8, align 8
  %257 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %256, i32 0, i32 3
  %258 = load %struct.TYPE_6__*, %struct.TYPE_6__** %257, align 8
  %259 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %258, i32 0, i32 1
  %260 = load i32, i32* %259, align 4
  %261 = sub nsw i32 %260, %255
  store i32 %261, i32* %259, align 4
  %262 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %8, align 8
  %263 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %262, i32 0, i32 2
  %264 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %263, i32 0, i32 0
  %265 = load i32, i32* %264, align 8
  %266 = load i32, i32* %15, align 4
  %267 = mul nsw i32 %265, %266
  %268 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %8, align 8
  %269 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %268, i32 0, i32 3
  %270 = load %struct.TYPE_6__*, %struct.TYPE_6__** %269, align 8
  %271 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %270, i32 0, i32 2
  %272 = load i32, i32* %271, align 8
  %273 = sub nsw i32 %272, %267
  store i32 %273, i32* %271, align 8
  %274 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %8, align 8
  %275 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %274, i32 0, i32 3
  %276 = load %struct.TYPE_6__*, %struct.TYPE_6__** %275, align 8
  %277 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %276, i32 0, i32 3
  %278 = call i32 @spin_unlock(i32* %277)
  %279 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %8, align 8
  %280 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %279, i32 0, i32 2
  %281 = call i32 @memcpy(%struct.btrfs_key* %11, %struct.TYPE_7__* %280, i32 16)
  %282 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %283 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %282, i32 0, i32 0
  %284 = load %struct.TYPE_8__*, %struct.TYPE_8__** %283, align 8
  %285 = call i32 @btrfs_clear_space_info_full(%struct.TYPE_8__* %284)
  %286 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %8, align 8
  %287 = call i32 @btrfs_put_block_group(%struct.btrfs_block_group_cache* %286)
  %288 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %8, align 8
  %289 = call i32 @btrfs_put_block_group(%struct.btrfs_block_group_cache* %288)
  %290 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %4, align 8
  %291 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %292 = load %struct.btrfs_path*, %struct.btrfs_path** %7, align 8
  %293 = call i32 @btrfs_search_slot(%struct.btrfs_trans_handle* %290, %struct.btrfs_root* %291, %struct.btrfs_key* %11, %struct.btrfs_path* %292, i32 -1, i32 1)
  store i32 %293, i32* %13, align 4
  %294 = load i32, i32* %13, align 4
  %295 = icmp sgt i32 %294, 0
  br i1 %295, label %296, label %299

296:                                              ; preds = %234
  %297 = load i32, i32* @EIO, align 4
  %298 = sub nsw i32 0, %297
  store i32 %298, i32* %13, align 4
  br label %299

299:                                              ; preds = %296, %234
  %300 = load i32, i32* %13, align 4
  %301 = icmp slt i32 %300, 0
  br i1 %301, label %302, label %303

302:                                              ; preds = %299
  br label %308

303:                                              ; preds = %299
  %304 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %4, align 8
  %305 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %306 = load %struct.btrfs_path*, %struct.btrfs_path** %7, align 8
  %307 = call i32 @btrfs_del_item(%struct.btrfs_trans_handle* %304, %struct.btrfs_root* %305, %struct.btrfs_path* %306)
  store i32 %307, i32* %13, align 4
  br label %308

308:                                              ; preds = %303, %302, %172, %155, %110, %93
  %309 = load %struct.btrfs_path*, %struct.btrfs_path** %7, align 8
  %310 = call i32 @btrfs_free_path(%struct.btrfs_path* %309)
  %311 = load i32, i32* %13, align 4
  ret i32 %311
}

declare dso_local %struct.btrfs_block_group_cache* @btrfs_lookup_block_group(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @free_excluded_extents(%struct.btrfs_root*, %struct.btrfs_block_group_cache*) #1

declare dso_local i32 @memcpy(%struct.btrfs_key*, %struct.TYPE_7__*, i32) #1

declare dso_local i32 @get_block_group_index(%struct.btrfs_block_group_cache*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @btrfs_return_cluster_to_free_space(%struct.btrfs_block_group_cache*, %struct.btrfs_free_cluster*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local %struct.btrfs_path* @btrfs_alloc_path(...) #1

declare dso_local %struct.inode* @lookup_free_space_inode(%struct.btrfs_root*, %struct.btrfs_block_group_cache*, %struct.btrfs_path*) #1

declare dso_local i32 @IS_ERR(%struct.inode*) #1

declare dso_local i32 @btrfs_orphan_add(%struct.btrfs_trans_handle*, %struct.inode*) #1

declare dso_local i32 @btrfs_add_delayed_iput(%struct.inode*) #1

declare dso_local i32 @clear_nlink(%struct.inode*) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local i32 @btrfs_search_slot(%struct.btrfs_trans_handle*, %struct.btrfs_root*, %struct.btrfs_key*, %struct.btrfs_path*, i32, i32) #1

declare dso_local i32 @btrfs_release_path(%struct.btrfs_path*) #1

declare dso_local i32 @btrfs_del_item(%struct.btrfs_trans_handle*, %struct.btrfs_root*, %struct.btrfs_path*) #1

declare dso_local i32 @rb_erase(i32*, i32*) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @clear_avail_alloc_bits(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @wait_block_group_cache_done(%struct.btrfs_block_group_cache*) #1

declare dso_local i32 @btrfs_remove_free_space_cache(%struct.btrfs_block_group_cache*) #1

declare dso_local i32 @btrfs_clear_space_info_full(%struct.TYPE_8__*) #1

declare dso_local i32 @btrfs_put_block_group(%struct.btrfs_block_group_cache*) #1

declare dso_local i32 @btrfs_free_path(%struct.btrfs_path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
