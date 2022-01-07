; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_inode-map.c_btrfs_save_ino_cache.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_inode-map.c_btrfs_save_ino_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_root = type { i64, %struct.TYPE_5__*, i32, i32, %struct.TYPE_4__, %struct.btrfs_free_space_ctl* }
%struct.TYPE_5__ = type { %struct.btrfs_block_rsv, %struct.btrfs_root* }
%struct.btrfs_block_rsv = type { i32 }
%struct.TYPE_4__ = type { i64 }
%struct.btrfs_free_space_ctl = type { i32, i32, i32 }
%struct.btrfs_trans_handle = type { i32, %struct.btrfs_block_rsv*, i32 }
%struct.btrfs_path = type { i32 }
%struct.inode = type { i32 }
%struct.TYPE_6__ = type { i64 }

@BTRFS_FS_TREE_OBJECTID = common dso_local global i64 0, align 8
@BTRFS_FIRST_FREE_OBJECTID = common dso_local global i64 0, align 8
@BTRFS_LAST_FREE_OBJECTID = common dso_local global i64 0, align 8
@INODE_MAP_CACHE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"ino_cache\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@BTRFS_CACHE_FINISHED = common dso_local global i64 0, align 8
@PAGE_CACHE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btrfs_save_ino_cache(%struct.btrfs_root* %0, %struct.btrfs_trans_handle* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.btrfs_root*, align 8
  %5 = alloca %struct.btrfs_trans_handle*, align 8
  %6 = alloca %struct.btrfs_free_space_ctl*, align 8
  %7 = alloca %struct.btrfs_path*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.btrfs_block_rsv*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.btrfs_root* %0, %struct.btrfs_root** %4, align 8
  store %struct.btrfs_trans_handle* %1, %struct.btrfs_trans_handle** %5, align 8
  %15 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %16 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %15, i32 0, i32 5
  %17 = load %struct.btrfs_free_space_ctl*, %struct.btrfs_free_space_ctl** %16, align 8
  store %struct.btrfs_free_space_ctl* %17, %struct.btrfs_free_space_ctl** %6, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %14, align 4
  %18 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %19 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %18, i32 0, i32 4
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @BTRFS_FS_TREE_OBJECTID, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %39

24:                                               ; preds = %2
  %25 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %26 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %25, i32 0, i32 4
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @BTRFS_FIRST_FREE_OBJECTID, align 8
  %30 = icmp slt i64 %28, %29
  br i1 %30, label %38, label %31

31:                                               ; preds = %24
  %32 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %33 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %32, i32 0, i32 4
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @BTRFS_LAST_FREE_OBJECTID, align 8
  %37 = icmp sgt i64 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %31, %24
  store i32 0, i32* %3, align 4
  br label %274

39:                                               ; preds = %31, %2
  %40 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %41 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %40, i32 0, i32 3
  %42 = call i64 @btrfs_root_refs(i32* %41)
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %53

44:                                               ; preds = %39
  %45 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %46 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %47 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %46, i32 0, i32 1
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 1
  %50 = load %struct.btrfs_root*, %struct.btrfs_root** %49, align 8
  %51 = icmp ne %struct.btrfs_root* %45, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %44
  store i32 0, i32* %3, align 4
  br label %274

53:                                               ; preds = %44, %39
  %54 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %55 = load i32, i32* @INODE_MAP_CACHE, align 4
  %56 = call i32 @btrfs_test_opt(%struct.btrfs_root* %54, i32 %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %53
  store i32 0, i32* %3, align 4
  br label %274

59:                                               ; preds = %53
  %60 = call %struct.btrfs_path* (...) @btrfs_alloc_path()
  store %struct.btrfs_path* %60, %struct.btrfs_path** %7, align 8
  %61 = load %struct.btrfs_path*, %struct.btrfs_path** %7, align 8
  %62 = icmp ne %struct.btrfs_path* %61, null
  br i1 %62, label %66, label %63

63:                                               ; preds = %59
  %64 = load i32, i32* @ENOMEM, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %3, align 4
  br label %274

66:                                               ; preds = %59
  %67 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %5, align 8
  %68 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %67, i32 0, i32 1
  %69 = load %struct.btrfs_block_rsv*, %struct.btrfs_block_rsv** %68, align 8
  store %struct.btrfs_block_rsv* %69, %struct.btrfs_block_rsv** %9, align 8
  %70 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %71 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %70, i32 0, i32 1
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  %74 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %5, align 8
  %75 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %74, i32 0, i32 1
  store %struct.btrfs_block_rsv* %73, %struct.btrfs_block_rsv** %75, align 8
  %76 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %5, align 8
  %77 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  store i32 %78, i32* %10, align 4
  %79 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %80 = call i32 @btrfs_calc_trans_metadata_size(%struct.btrfs_root* %79, i32 8)
  %81 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %5, align 8
  %82 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 8
  %83 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %84 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %5, align 8
  %85 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %84, i32 0, i32 1
  %86 = load %struct.btrfs_block_rsv*, %struct.btrfs_block_rsv** %85, align 8
  %87 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %5, align 8
  %88 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @btrfs_block_rsv_add_noflush(%struct.btrfs_root* %83, %struct.btrfs_block_rsv* %86, i32 %89)
  store i32 %90, i32* %12, align 4
  %91 = load i32, i32* %12, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %66
  br label %264

94:                                               ; preds = %66
  %95 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %96 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %95, i32 0, i32 1
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %96, align 8
  %98 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %5, align 8
  %99 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %5, align 8
  %102 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @trace_btrfs_space_reservation(%struct.TYPE_5__* %97, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %100, i32 %103, i32 1)
  br label %105

105:                                              ; preds = %138, %94
  %106 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %107 = load %struct.btrfs_path*, %struct.btrfs_path** %7, align 8
  %108 = call %struct.inode* @lookup_free_ino_inode(%struct.btrfs_root* %106, %struct.btrfs_path* %107)
  store %struct.inode* %108, %struct.inode** %8, align 8
  %109 = load %struct.inode*, %struct.inode** %8, align 8
  %110 = call i64 @IS_ERR(%struct.inode* %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %124

112:                                              ; preds = %105
  %113 = load %struct.inode*, %struct.inode** %8, align 8
  %114 = call i32 @PTR_ERR(%struct.inode* %113)
  %115 = load i32, i32* @ENOENT, align 4
  %116 = sub nsw i32 0, %115
  %117 = icmp ne i32 %114, %116
  br i1 %117, label %121, label %118

118:                                              ; preds = %112
  %119 = load i32, i32* %14, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %124

121:                                              ; preds = %118, %112
  %122 = load %struct.inode*, %struct.inode** %8, align 8
  %123 = call i32 @PTR_ERR(%struct.inode* %122)
  store i32 %123, i32* %12, align 4
  br label %245

124:                                              ; preds = %118, %105
  %125 = load %struct.inode*, %struct.inode** %8, align 8
  %126 = call i64 @IS_ERR(%struct.inode* %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %139

128:                                              ; preds = %124
  %129 = load i32, i32* %14, align 4
  %130 = call i32 @BUG_ON(i32 %129)
  store i32 1, i32* %14, align 4
  %131 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %132 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %5, align 8
  %133 = load %struct.btrfs_path*, %struct.btrfs_path** %7, align 8
  %134 = call i32 @create_free_ino_inode(%struct.btrfs_root* %131, %struct.btrfs_trans_handle* %132, %struct.btrfs_path* %133)
  store i32 %134, i32* %12, align 4
  %135 = load i32, i32* %12, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %128
  br label %245

138:                                              ; preds = %128
  br label %105

139:                                              ; preds = %124
  %140 = load %struct.inode*, %struct.inode** %8, align 8
  %141 = call %struct.TYPE_6__* @BTRFS_I(%struct.inode* %140)
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 0
  store i64 0, i64* %142, align 8
  %143 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %5, align 8
  %144 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %145 = load %struct.inode*, %struct.inode** %8, align 8
  %146 = call i32 @btrfs_update_inode(%struct.btrfs_trans_handle* %143, %struct.btrfs_root* %144, %struct.inode* %145)
  store i32 %146, i32* %12, align 4
  %147 = load i32, i32* %12, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %154

149:                                              ; preds = %139
  %150 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %5, align 8
  %151 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %152 = load i32, i32* %12, align 4
  %153 = call i32 @btrfs_abort_transaction(%struct.btrfs_trans_handle* %150, %struct.btrfs_root* %151, i32 %152)
  br label %242

154:                                              ; preds = %139
  %155 = load %struct.inode*, %struct.inode** %8, align 8
  %156 = call i64 @i_size_read(%struct.inode* %155)
  %157 = icmp sgt i64 %156, 0
  br i1 %157, label %158, label %172

158:                                              ; preds = %154
  %159 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %160 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %5, align 8
  %161 = load %struct.btrfs_path*, %struct.btrfs_path** %7, align 8
  %162 = load %struct.inode*, %struct.inode** %8, align 8
  %163 = call i32 @btrfs_truncate_free_space_cache(%struct.btrfs_root* %159, %struct.btrfs_trans_handle* %160, %struct.btrfs_path* %161, %struct.inode* %162)
  store i32 %163, i32* %12, align 4
  %164 = load i32, i32* %12, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %171

166:                                              ; preds = %158
  %167 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %5, align 8
  %168 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %169 = load i32, i32* %12, align 4
  %170 = call i32 @btrfs_abort_transaction(%struct.btrfs_trans_handle* %167, %struct.btrfs_root* %168, i32 %169)
  br label %242

171:                                              ; preds = %158
  br label %172

172:                                              ; preds = %171, %154
  %173 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %174 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %173, i32 0, i32 2
  %175 = call i32 @spin_lock(i32* %174)
  %176 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %177 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %176, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  %179 = load i64, i64* @BTRFS_CACHE_FINISHED, align 8
  %180 = icmp ne i64 %178, %179
  br i1 %180, label %181, label %185

181:                                              ; preds = %172
  store i32 -1, i32* %12, align 4
  %182 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %183 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %182, i32 0, i32 2
  %184 = call i32 @spin_unlock(i32* %183)
  br label %242

185:                                              ; preds = %172
  %186 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %187 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %186, i32 0, i32 2
  %188 = call i32 @spin_unlock(i32* %187)
  %189 = load %struct.btrfs_free_space_ctl*, %struct.btrfs_free_space_ctl** %6, align 8
  %190 = getelementptr inbounds %struct.btrfs_free_space_ctl, %struct.btrfs_free_space_ctl* %189, i32 0, i32 2
  %191 = call i32 @spin_lock(i32* %190)
  %192 = load %struct.btrfs_free_space_ctl*, %struct.btrfs_free_space_ctl** %6, align 8
  %193 = getelementptr inbounds %struct.btrfs_free_space_ctl, %struct.btrfs_free_space_ctl* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 4
  %195 = sext i32 %194 to i64
  %196 = mul i64 4, %195
  %197 = trunc i64 %196 to i32
  store i32 %197, i32* %13, align 4
  %198 = load i32, i32* %13, align 4
  %199 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %200 = call i32 @ALIGN(i32 %198, i32 %199)
  store i32 %200, i32* %13, align 4
  %201 = load %struct.btrfs_free_space_ctl*, %struct.btrfs_free_space_ctl** %6, align 8
  %202 = getelementptr inbounds %struct.btrfs_free_space_ctl, %struct.btrfs_free_space_ctl* %201, i32 0, i32 1
  %203 = load i32, i32* %202, align 4
  %204 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %205 = mul nsw i32 %203, %204
  %206 = load i32, i32* %13, align 4
  %207 = add nsw i32 %206, %205
  store i32 %207, i32* %13, align 4
  %208 = load %struct.btrfs_free_space_ctl*, %struct.btrfs_free_space_ctl** %6, align 8
  %209 = getelementptr inbounds %struct.btrfs_free_space_ctl, %struct.btrfs_free_space_ctl* %208, i32 0, i32 2
  %210 = call i32 @spin_unlock(i32* %209)
  %211 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %212 = mul nsw i32 8, %211
  %213 = load i32, i32* %13, align 4
  %214 = add nsw i32 %213, %212
  store i32 %214, i32* %13, align 4
  %215 = load %struct.inode*, %struct.inode** %8, align 8
  %216 = load i32, i32* %13, align 4
  %217 = call i32 @btrfs_delalloc_reserve_space(%struct.inode* %215, i32 %216)
  store i32 %217, i32* %12, align 4
  %218 = load i32, i32* %12, align 4
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %221

220:                                              ; preds = %185
  br label %242

221:                                              ; preds = %185
  %222 = load %struct.inode*, %struct.inode** %8, align 8
  %223 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %5, align 8
  %224 = load i32, i32* %13, align 4
  %225 = load i32, i32* %13, align 4
  %226 = load i32, i32* %13, align 4
  %227 = call i32 @btrfs_prealloc_file_range_trans(%struct.inode* %222, %struct.btrfs_trans_handle* %223, i32 0, i32 0, i32 %224, i32 %225, i32 %226, i32* %11)
  store i32 %227, i32* %12, align 4
  %228 = load i32, i32* %12, align 4
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %234

230:                                              ; preds = %221
  %231 = load %struct.inode*, %struct.inode** %8, align 8
  %232 = load i32, i32* %13, align 4
  %233 = call i32 @btrfs_delalloc_release_space(%struct.inode* %231, i32 %232)
  br label %242

234:                                              ; preds = %221
  %235 = load %struct.inode*, %struct.inode** %8, align 8
  %236 = load i32, i32* %13, align 4
  %237 = call i32 @btrfs_free_reserved_data_space(%struct.inode* %235, i32 %236)
  %238 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %239 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %5, align 8
  %240 = load %struct.btrfs_path*, %struct.btrfs_path** %7, align 8
  %241 = call i32 @btrfs_write_out_ino_cache(%struct.btrfs_root* %238, %struct.btrfs_trans_handle* %239, %struct.btrfs_path* %240)
  store i32 %241, i32* %12, align 4
  br label %242

242:                                              ; preds = %234, %230, %220, %181, %166, %149
  %243 = load %struct.inode*, %struct.inode** %8, align 8
  %244 = call i32 @iput(%struct.inode* %243)
  br label %245

245:                                              ; preds = %242, %137, %121
  %246 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %247 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %246, i32 0, i32 1
  %248 = load %struct.TYPE_5__*, %struct.TYPE_5__** %247, align 8
  %249 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %5, align 8
  %250 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %249, i32 0, i32 2
  %251 = load i32, i32* %250, align 8
  %252 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %5, align 8
  %253 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 8
  %255 = call i32 @trace_btrfs_space_reservation(%struct.TYPE_5__* %248, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %251, i32 %254, i32 0)
  %256 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %257 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %5, align 8
  %258 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %257, i32 0, i32 1
  %259 = load %struct.btrfs_block_rsv*, %struct.btrfs_block_rsv** %258, align 8
  %260 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %5, align 8
  %261 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 8
  %263 = call i32 @btrfs_block_rsv_release(%struct.btrfs_root* %256, %struct.btrfs_block_rsv* %259, i32 %262)
  br label %264

264:                                              ; preds = %245, %93
  %265 = load %struct.btrfs_block_rsv*, %struct.btrfs_block_rsv** %9, align 8
  %266 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %5, align 8
  %267 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %266, i32 0, i32 1
  store %struct.btrfs_block_rsv* %265, %struct.btrfs_block_rsv** %267, align 8
  %268 = load i32, i32* %10, align 4
  %269 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %5, align 8
  %270 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %269, i32 0, i32 0
  store i32 %268, i32* %270, align 8
  %271 = load %struct.btrfs_path*, %struct.btrfs_path** %7, align 8
  %272 = call i32 @btrfs_free_path(%struct.btrfs_path* %271)
  %273 = load i32, i32* %12, align 4
  store i32 %273, i32* %3, align 4
  br label %274

274:                                              ; preds = %264, %63, %58, %52, %38
  %275 = load i32, i32* %3, align 4
  ret i32 %275
}

declare dso_local i64 @btrfs_root_refs(i32*) #1

declare dso_local i32 @btrfs_test_opt(%struct.btrfs_root*, i32) #1

declare dso_local %struct.btrfs_path* @btrfs_alloc_path(...) #1

declare dso_local i32 @btrfs_calc_trans_metadata_size(%struct.btrfs_root*, i32) #1

declare dso_local i32 @btrfs_block_rsv_add_noflush(%struct.btrfs_root*, %struct.btrfs_block_rsv*, i32) #1

declare dso_local i32 @trace_btrfs_space_reservation(%struct.TYPE_5__*, i8*, i32, i32, i32) #1

declare dso_local %struct.inode* @lookup_free_ino_inode(%struct.btrfs_root*, %struct.btrfs_path*) #1

declare dso_local i64 @IS_ERR(%struct.inode*) #1

declare dso_local i32 @PTR_ERR(%struct.inode*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @create_free_ino_inode(%struct.btrfs_root*, %struct.btrfs_trans_handle*, %struct.btrfs_path*) #1

declare dso_local %struct.TYPE_6__* @BTRFS_I(%struct.inode*) #1

declare dso_local i32 @btrfs_update_inode(%struct.btrfs_trans_handle*, %struct.btrfs_root*, %struct.inode*) #1

declare dso_local i32 @btrfs_abort_transaction(%struct.btrfs_trans_handle*, %struct.btrfs_root*, i32) #1

declare dso_local i64 @i_size_read(%struct.inode*) #1

declare dso_local i32 @btrfs_truncate_free_space_cache(%struct.btrfs_root*, %struct.btrfs_trans_handle*, %struct.btrfs_path*, %struct.inode*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @btrfs_delalloc_reserve_space(%struct.inode*, i32) #1

declare dso_local i32 @btrfs_prealloc_file_range_trans(%struct.inode*, %struct.btrfs_trans_handle*, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @btrfs_delalloc_release_space(%struct.inode*, i32) #1

declare dso_local i32 @btrfs_free_reserved_data_space(%struct.inode*, i32) #1

declare dso_local i32 @btrfs_write_out_ino_cache(%struct.btrfs_root*, %struct.btrfs_trans_handle*, %struct.btrfs_path*) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local i32 @btrfs_block_rsv_release(%struct.btrfs_root*, %struct.btrfs_block_rsv*, i32) #1

declare dso_local i32 @btrfs_free_path(%struct.btrfs_path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
