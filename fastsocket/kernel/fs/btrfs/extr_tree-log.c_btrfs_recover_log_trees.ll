; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_tree-log.c_btrfs_recover_log_trees.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_tree-log.c_btrfs_recover_log_trees.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_root = type { %struct.btrfs_root*, i32, i32, %struct.btrfs_fs_info* }
%struct.btrfs_fs_info = type { i32, i32 }
%struct.btrfs_path = type { i64*, i32* }
%struct.btrfs_trans_handle = type { %struct.btrfs_trans_handle*, i32, i32, %struct.btrfs_fs_info* }
%struct.btrfs_key = type { i64, i64, i32 }
%struct.walk_control = type { i64, i32, i32, %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle* }

@process_one_buffer = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"Failed to pin buffers while recovering log root tree.\00", align 1
@BTRFS_TREE_LOG_OBJECTID = common dso_local global i64 0, align 8
@BTRFS_ROOT_ITEM_KEY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Couldn't find tree log root.\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"Couldn't read tree log root.\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"Couldn't read target root for tree log recovery.\00", align 1
@LOG_WALK_REPLAY_ALL = common dso_local global i64 0, align 8
@replay_one_buffer = common dso_local global i32 0, align 4
@LOG_WALK_REPLAY_INODES = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btrfs_recover_log_trees(%struct.btrfs_root* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.btrfs_root*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.btrfs_path*, align 8
  %6 = alloca %struct.btrfs_trans_handle*, align 8
  %7 = alloca %struct.btrfs_key, align 8
  %8 = alloca %struct.btrfs_key, align 8
  %9 = alloca %struct.btrfs_key, align 8
  %10 = alloca %struct.btrfs_root*, align 8
  %11 = alloca %struct.btrfs_fs_info*, align 8
  %12 = alloca %struct.walk_control, align 8
  store %struct.btrfs_root* %0, %struct.btrfs_root** %3, align 8
  %13 = load %struct.btrfs_root*, %struct.btrfs_root** %3, align 8
  %14 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %13, i32 0, i32 3
  %15 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %14, align 8
  store %struct.btrfs_fs_info* %15, %struct.btrfs_fs_info** %11, align 8
  %16 = getelementptr inbounds %struct.walk_control, %struct.walk_control* %12, i32 0, i32 0
  store i64 0, i64* %16, align 8
  %17 = getelementptr inbounds %struct.walk_control, %struct.walk_control* %12, i32 0, i32 1
  store i32 0, i32* %17, align 8
  %18 = getelementptr inbounds %struct.walk_control, %struct.walk_control* %12, i32 0, i32 2
  %19 = load i32, i32* @process_one_buffer, align 4
  store i32 %19, i32* %18, align 4
  %20 = getelementptr inbounds %struct.walk_control, %struct.walk_control* %12, i32 0, i32 3
  store %struct.btrfs_trans_handle* null, %struct.btrfs_trans_handle** %20, align 8
  %21 = getelementptr inbounds %struct.walk_control, %struct.walk_control* %12, i32 0, i32 4
  store %struct.btrfs_trans_handle* null, %struct.btrfs_trans_handle** %21, align 8
  %22 = call %struct.btrfs_path* (...) @btrfs_alloc_path()
  store %struct.btrfs_path* %22, %struct.btrfs_path** %5, align 8
  %23 = load %struct.btrfs_path*, %struct.btrfs_path** %5, align 8
  %24 = icmp ne %struct.btrfs_path* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %1
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %243

28:                                               ; preds = %1
  %29 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %11, align 8
  %30 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %29, i32 0, i32 0
  store i32 1, i32* %30, align 4
  %31 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %11, align 8
  %32 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call %struct.btrfs_trans_handle* @btrfs_start_transaction(i32 %33, i32 0)
  store %struct.btrfs_trans_handle* %34, %struct.btrfs_trans_handle** %6, align 8
  %35 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %6, align 8
  %36 = call i64 @IS_ERR(%struct.btrfs_trans_handle* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %28
  %39 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %6, align 8
  %40 = call i32 @PTR_ERR(%struct.btrfs_trans_handle* %39)
  store i32 %40, i32* %4, align 4
  br label %239

41:                                               ; preds = %28
  %42 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %6, align 8
  %43 = getelementptr inbounds %struct.walk_control, %struct.walk_control* %12, i32 0, i32 4
  store %struct.btrfs_trans_handle* %42, %struct.btrfs_trans_handle** %43, align 8
  %44 = getelementptr inbounds %struct.walk_control, %struct.walk_control* %12, i32 0, i32 1
  store i32 1, i32* %44, align 8
  %45 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %6, align 8
  %46 = load %struct.btrfs_root*, %struct.btrfs_root** %3, align 8
  %47 = bitcast %struct.btrfs_root* %46 to %struct.btrfs_trans_handle*
  %48 = call i32 @walk_log_tree(%struct.btrfs_trans_handle* %45, %struct.btrfs_trans_handle* %47, %struct.walk_control* %12)
  store i32 %48, i32* %4, align 4
  %49 = load i32, i32* %4, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %41
  %52 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %11, align 8
  %53 = load i32, i32* %4, align 4
  %54 = call i32 @btrfs_error(%struct.btrfs_fs_info* %52, i32 %53, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0))
  br label %239

55:                                               ; preds = %41
  br label %56

56:                                               ; preds = %216, %205, %55
  %57 = load i64, i64* @BTRFS_TREE_LOG_OBJECTID, align 8
  %58 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %7, i32 0, i32 0
  store i64 %57, i64* %58, align 8
  %59 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %7, i32 0, i32 1
  store i64 -1, i64* %59, align 8
  %60 = load i32, i32* @BTRFS_ROOT_ITEM_KEY, align 4
  %61 = call i32 @btrfs_set_key_type(%struct.btrfs_key* %7, i32 %60)
  br label %62

62:                                               ; preds = %56, %198
  %63 = load %struct.btrfs_root*, %struct.btrfs_root** %3, align 8
  %64 = bitcast %struct.btrfs_root* %63 to %struct.btrfs_trans_handle*
  %65 = load %struct.btrfs_path*, %struct.btrfs_path** %5, align 8
  %66 = call i32 @btrfs_search_slot(i32* null, %struct.btrfs_trans_handle* %64, %struct.btrfs_key* %7, %struct.btrfs_path* %65, i32 0, i32 0)
  store i32 %66, i32* %4, align 4
  %67 = load i32, i32* %4, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %62
  %70 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %11, align 8
  %71 = load i32, i32* %4, align 4
  %72 = call i32 @btrfs_error(%struct.btrfs_fs_info* %70, i32 %71, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %239

73:                                               ; preds = %62
  %74 = load i32, i32* %4, align 4
  %75 = icmp sgt i32 %74, 0
  br i1 %75, label %76, label %91

76:                                               ; preds = %73
  %77 = load %struct.btrfs_path*, %struct.btrfs_path** %5, align 8
  %78 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %77, i32 0, i32 0
  %79 = load i64*, i64** %78, align 8
  %80 = getelementptr inbounds i64, i64* %79, i64 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp eq i64 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %76
  br label %199

84:                                               ; preds = %76
  %85 = load %struct.btrfs_path*, %struct.btrfs_path** %5, align 8
  %86 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %85, i32 0, i32 0
  %87 = load i64*, i64** %86, align 8
  %88 = getelementptr inbounds i64, i64* %87, i64 0
  %89 = load i64, i64* %88, align 8
  %90 = add nsw i64 %89, -1
  store i64 %90, i64* %88, align 8
  br label %91

91:                                               ; preds = %84, %73
  %92 = load %struct.btrfs_path*, %struct.btrfs_path** %5, align 8
  %93 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %92, i32 0, i32 1
  %94 = load i32*, i32** %93, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 0
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.btrfs_path*, %struct.btrfs_path** %5, align 8
  %98 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %97, i32 0, i32 0
  %99 = load i64*, i64** %98, align 8
  %100 = getelementptr inbounds i64, i64* %99, i64 0
  %101 = load i64, i64* %100, align 8
  %102 = call i32 @btrfs_item_key_to_cpu(i32 %96, %struct.btrfs_key* %8, i64 %101)
  %103 = load %struct.btrfs_path*, %struct.btrfs_path** %5, align 8
  %104 = call i32 @btrfs_release_path(%struct.btrfs_path* %103)
  %105 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %8, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @BTRFS_TREE_LOG_OBJECTID, align 8
  %108 = icmp ne i64 %106, %107
  br i1 %108, label %109, label %110

109:                                              ; preds = %91
  br label %199

110:                                              ; preds = %91
  %111 = load %struct.btrfs_root*, %struct.btrfs_root** %3, align 8
  %112 = bitcast %struct.btrfs_root* %111 to %struct.btrfs_trans_handle*
  %113 = call %struct.btrfs_trans_handle* @btrfs_read_fs_root_no_radix(%struct.btrfs_trans_handle* %112, %struct.btrfs_key* %8)
  %114 = bitcast %struct.btrfs_trans_handle* %113 to %struct.btrfs_root*
  store %struct.btrfs_root* %114, %struct.btrfs_root** %10, align 8
  %115 = load %struct.btrfs_root*, %struct.btrfs_root** %10, align 8
  %116 = bitcast %struct.btrfs_root* %115 to %struct.btrfs_trans_handle*
  %117 = call i64 @IS_ERR(%struct.btrfs_trans_handle* %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %126

119:                                              ; preds = %110
  %120 = load %struct.btrfs_root*, %struct.btrfs_root** %10, align 8
  %121 = bitcast %struct.btrfs_root* %120 to %struct.btrfs_trans_handle*
  %122 = call i32 @PTR_ERR(%struct.btrfs_trans_handle* %121)
  store i32 %122, i32* %4, align 4
  %123 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %11, align 8
  %124 = load i32, i32* %4, align 4
  %125 = call i32 @btrfs_error(%struct.btrfs_fs_info* %123, i32 %124, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %239

126:                                              ; preds = %110
  %127 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %8, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %9, i32 0, i32 0
  store i64 %128, i64* %129, align 8
  %130 = load i32, i32* @BTRFS_ROOT_ITEM_KEY, align 4
  %131 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %9, i32 0, i32 2
  store i32 %130, i32* %131, align 8
  %132 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %9, i32 0, i32 1
  store i64 -1, i64* %132, align 8
  %133 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %11, align 8
  %134 = call %struct.btrfs_trans_handle* @btrfs_read_fs_root_no_name(%struct.btrfs_fs_info* %133, %struct.btrfs_key* %9)
  %135 = getelementptr inbounds %struct.walk_control, %struct.walk_control* %12, i32 0, i32 3
  store %struct.btrfs_trans_handle* %134, %struct.btrfs_trans_handle** %135, align 8
  %136 = getelementptr inbounds %struct.walk_control, %struct.walk_control* %12, i32 0, i32 3
  %137 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %136, align 8
  %138 = call i64 @IS_ERR(%struct.btrfs_trans_handle* %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %147

140:                                              ; preds = %126
  %141 = getelementptr inbounds %struct.walk_control, %struct.walk_control* %12, i32 0, i32 3
  %142 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %141, align 8
  %143 = call i32 @PTR_ERR(%struct.btrfs_trans_handle* %142)
  store i32 %143, i32* %4, align 4
  %144 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %11, align 8
  %145 = load i32, i32* %4, align 4
  %146 = call i32 @btrfs_error(%struct.btrfs_fs_info* %144, i32 %145, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0))
  br label %239

147:                                              ; preds = %126
  %148 = load %struct.btrfs_root*, %struct.btrfs_root** %10, align 8
  %149 = bitcast %struct.btrfs_root* %148 to %struct.btrfs_trans_handle*
  %150 = getelementptr inbounds %struct.walk_control, %struct.walk_control* %12, i32 0, i32 3
  %151 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %150, align 8
  %152 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %151, i32 0, i32 0
  store %struct.btrfs_trans_handle* %149, %struct.btrfs_trans_handle** %152, align 8
  %153 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %6, align 8
  %154 = getelementptr inbounds %struct.walk_control, %struct.walk_control* %12, i32 0, i32 3
  %155 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %154, align 8
  %156 = call i32 @btrfs_record_root_in_trans(%struct.btrfs_trans_handle* %153, %struct.btrfs_trans_handle* %155)
  %157 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %6, align 8
  %158 = load %struct.btrfs_root*, %struct.btrfs_root** %10, align 8
  %159 = bitcast %struct.btrfs_root* %158 to %struct.btrfs_trans_handle*
  %160 = call i32 @walk_log_tree(%struct.btrfs_trans_handle* %157, %struct.btrfs_trans_handle* %159, %struct.walk_control* %12)
  store i32 %160, i32* %4, align 4
  %161 = load i32, i32* %4, align 4
  %162 = call i32 @BUG_ON(i32 %161)
  %163 = getelementptr inbounds %struct.walk_control, %struct.walk_control* %12, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = load i64, i64* @LOG_WALK_REPLAY_ALL, align 8
  %166 = icmp eq i64 %164, %165
  br i1 %166, label %167, label %175

167:                                              ; preds = %147
  %168 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %6, align 8
  %169 = getelementptr inbounds %struct.walk_control, %struct.walk_control* %12, i32 0, i32 3
  %170 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %169, align 8
  %171 = load %struct.btrfs_path*, %struct.btrfs_path** %5, align 8
  %172 = call i32 @fixup_inode_link_counts(%struct.btrfs_trans_handle* %168, %struct.btrfs_trans_handle* %170, %struct.btrfs_path* %171)
  store i32 %172, i32* %4, align 4
  %173 = load i32, i32* %4, align 4
  %174 = call i32 @BUG_ON(i32 %173)
  br label %175

175:                                              ; preds = %167, %147
  %176 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %8, i32 0, i32 1
  %177 = load i64, i64* %176, align 8
  %178 = sub nsw i64 %177, 1
  %179 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %7, i32 0, i32 1
  store i64 %178, i64* %179, align 8
  %180 = getelementptr inbounds %struct.walk_control, %struct.walk_control* %12, i32 0, i32 3
  %181 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %180, align 8
  %182 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %181, i32 0, i32 0
  store %struct.btrfs_trans_handle* null, %struct.btrfs_trans_handle** %182, align 8
  %183 = load %struct.btrfs_root*, %struct.btrfs_root** %10, align 8
  %184 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 8
  %186 = call i32 @free_extent_buffer(i32 %185)
  %187 = load %struct.btrfs_root*, %struct.btrfs_root** %10, align 8
  %188 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %187, i32 0, i32 2
  %189 = load i32, i32* %188, align 4
  %190 = call i32 @free_extent_buffer(i32 %189)
  %191 = load %struct.btrfs_root*, %struct.btrfs_root** %10, align 8
  %192 = bitcast %struct.btrfs_root* %191 to %struct.btrfs_trans_handle*
  %193 = call i32 @kfree(%struct.btrfs_trans_handle* %192)
  %194 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %8, i32 0, i32 1
  %195 = load i64, i64* %194, align 8
  %196 = icmp eq i64 %195, 0
  br i1 %196, label %197, label %198

197:                                              ; preds = %175
  br label %199

198:                                              ; preds = %175
  br label %62

199:                                              ; preds = %197, %109, %83
  %200 = load %struct.btrfs_path*, %struct.btrfs_path** %5, align 8
  %201 = call i32 @btrfs_release_path(%struct.btrfs_path* %200)
  %202 = getelementptr inbounds %struct.walk_control, %struct.walk_control* %12, i32 0, i32 1
  %203 = load i32, i32* %202, align 8
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %211

205:                                              ; preds = %199
  %206 = getelementptr inbounds %struct.walk_control, %struct.walk_control* %12, i32 0, i32 1
  store i32 0, i32* %206, align 8
  %207 = load i32, i32* @replay_one_buffer, align 4
  %208 = getelementptr inbounds %struct.walk_control, %struct.walk_control* %12, i32 0, i32 2
  store i32 %207, i32* %208, align 4
  %209 = load i64, i64* @LOG_WALK_REPLAY_INODES, align 8
  %210 = getelementptr inbounds %struct.walk_control, %struct.walk_control* %12, i32 0, i32 0
  store i64 %209, i64* %210, align 8
  br label %56

211:                                              ; preds = %199
  %212 = getelementptr inbounds %struct.walk_control, %struct.walk_control* %12, i32 0, i32 0
  %213 = load i64, i64* %212, align 8
  %214 = load i64, i64* @LOG_WALK_REPLAY_ALL, align 8
  %215 = icmp slt i64 %213, %214
  br i1 %215, label %216, label %220

216:                                              ; preds = %211
  %217 = getelementptr inbounds %struct.walk_control, %struct.walk_control* %12, i32 0, i32 0
  %218 = load i64, i64* %217, align 8
  %219 = add nsw i64 %218, 1
  store i64 %219, i64* %217, align 8
  br label %56

220:                                              ; preds = %211
  %221 = load %struct.btrfs_path*, %struct.btrfs_path** %5, align 8
  %222 = call i32 @btrfs_free_path(%struct.btrfs_path* %221)
  %223 = load %struct.btrfs_root*, %struct.btrfs_root** %3, align 8
  %224 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %223, i32 0, i32 1
  %225 = load i32, i32* %224, align 8
  %226 = call i32 @free_extent_buffer(i32 %225)
  %227 = load %struct.btrfs_root*, %struct.btrfs_root** %3, align 8
  %228 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %227, i32 0, i32 0
  store %struct.btrfs_root* null, %struct.btrfs_root** %228, align 8
  %229 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %11, align 8
  %230 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %229, i32 0, i32 0
  store i32 0, i32* %230, align 4
  %231 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %6, align 8
  %232 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %11, align 8
  %233 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %232, i32 0, i32 1
  %234 = load i32, i32* %233, align 4
  %235 = call i32 @btrfs_commit_transaction(%struct.btrfs_trans_handle* %231, i32 %234)
  %236 = load %struct.btrfs_root*, %struct.btrfs_root** %3, align 8
  %237 = bitcast %struct.btrfs_root* %236 to %struct.btrfs_trans_handle*
  %238 = call i32 @kfree(%struct.btrfs_trans_handle* %237)
  store i32 0, i32* %2, align 4
  br label %243

239:                                              ; preds = %140, %119, %69, %51, %38
  %240 = load %struct.btrfs_path*, %struct.btrfs_path** %5, align 8
  %241 = call i32 @btrfs_free_path(%struct.btrfs_path* %240)
  %242 = load i32, i32* %4, align 4
  store i32 %242, i32* %2, align 4
  br label %243

243:                                              ; preds = %239, %220, %25
  %244 = load i32, i32* %2, align 4
  ret i32 %244
}

declare dso_local %struct.btrfs_path* @btrfs_alloc_path(...) #1

declare dso_local %struct.btrfs_trans_handle* @btrfs_start_transaction(i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.btrfs_trans_handle*) #1

declare dso_local i32 @PTR_ERR(%struct.btrfs_trans_handle*) #1

declare dso_local i32 @walk_log_tree(%struct.btrfs_trans_handle*, %struct.btrfs_trans_handle*, %struct.walk_control*) #1

declare dso_local i32 @btrfs_error(%struct.btrfs_fs_info*, i32, i8*) #1

declare dso_local i32 @btrfs_set_key_type(%struct.btrfs_key*, i32) #1

declare dso_local i32 @btrfs_search_slot(i32*, %struct.btrfs_trans_handle*, %struct.btrfs_key*, %struct.btrfs_path*, i32, i32) #1

declare dso_local i32 @btrfs_item_key_to_cpu(i32, %struct.btrfs_key*, i64) #1

declare dso_local i32 @btrfs_release_path(%struct.btrfs_path*) #1

declare dso_local %struct.btrfs_trans_handle* @btrfs_read_fs_root_no_radix(%struct.btrfs_trans_handle*, %struct.btrfs_key*) #1

declare dso_local %struct.btrfs_trans_handle* @btrfs_read_fs_root_no_name(%struct.btrfs_fs_info*, %struct.btrfs_key*) #1

declare dso_local i32 @btrfs_record_root_in_trans(%struct.btrfs_trans_handle*, %struct.btrfs_trans_handle*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @fixup_inode_link_counts(%struct.btrfs_trans_handle*, %struct.btrfs_trans_handle*, %struct.btrfs_path*) #1

declare dso_local i32 @free_extent_buffer(i32) #1

declare dso_local i32 @kfree(%struct.btrfs_trans_handle*) #1

declare dso_local i32 @btrfs_free_path(%struct.btrfs_path*) #1

declare dso_local i32 @btrfs_commit_transaction(%struct.btrfs_trans_handle*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
