; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_extent-tree.c_btrfs_drop_snapshot.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_extent-tree.c_btrfs_drop_snapshot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_root = type { i32*, i32, i32, i64, i32, i32, %struct.TYPE_12__*, i32, i32, i64, %struct.TYPE_10__, i32, i64, i32*, i32, %struct.btrfs_root_item }
%struct.TYPE_12__ = type { %struct.walk_control* }
%struct.walk_control = type { i32*, i32, i32, i64, i32, i32, %struct.TYPE_12__*, i32, i32, i64, %struct.TYPE_10__, i32, i64, i32*, i32, %struct.btrfs_root_item }
%struct.TYPE_10__ = type { i32 }
%struct.btrfs_root_item = type { i32, i32 }
%struct.btrfs_block_rsv = type { i32 }
%struct.btrfs_path = type { i32, i64*, %struct.TYPE_11__**, i32* }
%struct.TYPE_11__ = type { i32, i32 }
%struct.btrfs_trans_handle = type { %struct.btrfs_block_rsv* }
%struct.btrfs_key = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@BTRFS_WRITE_LOCK_BLOCKING = common dso_local global i32 0, align 4
@DROP_REFERENCE = common dso_local global i64 0, align 8
@BTRFS_MAX_LEVEL = common dso_local global i32 0, align 4
@BTRFS_TREE_RELOC_OBJECTID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btrfs_drop_snapshot(%struct.btrfs_root* %0, %struct.btrfs_block_rsv* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.btrfs_root*, align 8
  %6 = alloca %struct.btrfs_block_rsv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.btrfs_path*, align 8
  %10 = alloca %struct.btrfs_trans_handle*, align 8
  %11 = alloca %struct.btrfs_root*, align 8
  %12 = alloca %struct.btrfs_root_item*, align 8
  %13 = alloca %struct.walk_control*, align 8
  %14 = alloca %struct.btrfs_key, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.btrfs_root* %0, %struct.btrfs_root** %5, align 8
  store %struct.btrfs_block_rsv* %1, %struct.btrfs_block_rsv** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %18 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %19 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %18, i32 0, i32 6
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 0
  %22 = load %struct.walk_control*, %struct.walk_control** %21, align 8
  %23 = bitcast %struct.walk_control* %22 to %struct.btrfs_root*
  store %struct.btrfs_root* %23, %struct.btrfs_root** %11, align 8
  %24 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %25 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %24, i32 0, i32 15
  store %struct.btrfs_root_item* %25, %struct.btrfs_root_item** %12, align 8
  store i32 0, i32* %15, align 4
  %26 = call %struct.btrfs_path* (...) @btrfs_alloc_path()
  store %struct.btrfs_path* %26, %struct.btrfs_path** %9, align 8
  %27 = load %struct.btrfs_path*, %struct.btrfs_path** %9, align 8
  %28 = icmp ne %struct.btrfs_path* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %4
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %15, align 4
  br label %466

32:                                               ; preds = %4
  %33 = load i32, i32* @GFP_NOFS, align 4
  %34 = call %struct.walk_control* @kzalloc(i32 96, i32 %33)
  store %struct.walk_control* %34, %struct.walk_control** %13, align 8
  %35 = load %struct.walk_control*, %struct.walk_control** %13, align 8
  %36 = icmp ne %struct.walk_control* %35, null
  br i1 %36, label %42, label %37

37:                                               ; preds = %32
  %38 = load %struct.btrfs_path*, %struct.btrfs_path** %9, align 8
  %39 = call i32 @btrfs_free_path(%struct.btrfs_path* %38)
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %15, align 4
  br label %466

42:                                               ; preds = %32
  %43 = load %struct.btrfs_root*, %struct.btrfs_root** %11, align 8
  %44 = bitcast %struct.btrfs_root* %43 to %struct.walk_control*
  %45 = call %struct.btrfs_trans_handle* @btrfs_start_transaction(%struct.walk_control* %44, i32 0)
  store %struct.btrfs_trans_handle* %45, %struct.btrfs_trans_handle** %10, align 8
  %46 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %10, align 8
  %47 = call i64 @IS_ERR(%struct.btrfs_trans_handle* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %42
  %50 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %10, align 8
  %51 = call i32 @PTR_ERR(%struct.btrfs_trans_handle* %50)
  store i32 %51, i32* %15, align 4
  br label %461

52:                                               ; preds = %42
  %53 = load %struct.btrfs_block_rsv*, %struct.btrfs_block_rsv** %6, align 8
  %54 = icmp ne %struct.btrfs_block_rsv* %53, null
  br i1 %54, label %55, label %59

55:                                               ; preds = %52
  %56 = load %struct.btrfs_block_rsv*, %struct.btrfs_block_rsv** %6, align 8
  %57 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %10, align 8
  %58 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %57, i32 0, i32 0
  store %struct.btrfs_block_rsv* %56, %struct.btrfs_block_rsv** %58, align 8
  br label %59

59:                                               ; preds = %55, %52
  %60 = load %struct.btrfs_root_item*, %struct.btrfs_root_item** %12, align 8
  %61 = getelementptr inbounds %struct.btrfs_root_item, %struct.btrfs_root_item* %60, i32 0, i32 1
  %62 = call i64 @btrfs_disk_key_objectid(i32* %61)
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %102

64:                                               ; preds = %59
  %65 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %66 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %65, i32 0, i32 8
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @btrfs_header_level(i32 %67)
  store i32 %68, i32* %17, align 4
  %69 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %70 = bitcast %struct.btrfs_root* %69 to %struct.walk_control*
  %71 = call %struct.TYPE_11__* @btrfs_lock_root_node(%struct.walk_control* %70)
  %72 = load %struct.btrfs_path*, %struct.btrfs_path** %9, align 8
  %73 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %72, i32 0, i32 2
  %74 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %73, align 8
  %75 = load i32, i32* %17, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %74, i64 %76
  store %struct.TYPE_11__* %71, %struct.TYPE_11__** %77, align 8
  %78 = load %struct.btrfs_path*, %struct.btrfs_path** %9, align 8
  %79 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %78, i32 0, i32 2
  %80 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %79, align 8
  %81 = load i32, i32* %17, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %80, i64 %82
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %83, align 8
  %85 = call i32 @btrfs_set_lock_blocking(%struct.TYPE_11__* %84)
  %86 = load %struct.btrfs_path*, %struct.btrfs_path** %9, align 8
  %87 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %86, i32 0, i32 1
  %88 = load i64*, i64** %87, align 8
  %89 = load i32, i32* %17, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i64, i64* %88, i64 %90
  store i64 0, i64* %91, align 8
  %92 = load i32, i32* @BTRFS_WRITE_LOCK_BLOCKING, align 4
  %93 = load %struct.btrfs_path*, %struct.btrfs_path** %9, align 8
  %94 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %93, i32 0, i32 3
  %95 = load i32*, i32** %94, align 8
  %96 = load i32, i32* %17, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  store i32 %92, i32* %98, align 4
  %99 = load %struct.walk_control*, %struct.walk_control** %13, align 8
  %100 = getelementptr inbounds %struct.walk_control, %struct.walk_control* %99, i32 0, i32 14
  %101 = call i32 @memset(i32* %100, i32 0, i32 4)
  br label %234

102:                                              ; preds = %59
  %103 = load %struct.btrfs_root_item*, %struct.btrfs_root_item** %12, align 8
  %104 = getelementptr inbounds %struct.btrfs_root_item, %struct.btrfs_root_item* %103, i32 0, i32 1
  %105 = call i32 @btrfs_disk_key_to_cpu(%struct.btrfs_key* %14, i32* %104)
  %106 = load %struct.walk_control*, %struct.walk_control** %13, align 8
  %107 = getelementptr inbounds %struct.walk_control, %struct.walk_control* %106, i32 0, i32 14
  %108 = call i32 @memcpy(i32* %107, %struct.btrfs_key* %14, i32 4)
  %109 = load %struct.btrfs_root_item*, %struct.btrfs_root_item** %12, align 8
  %110 = getelementptr inbounds %struct.btrfs_root_item, %struct.btrfs_root_item* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  store i32 %111, i32* %17, align 4
  %112 = load i32, i32* %17, align 4
  %113 = icmp eq i32 %112, 0
  %114 = zext i1 %113 to i32
  %115 = call i32 @BUG_ON(i32 %114)
  %116 = load i32, i32* %17, align 4
  %117 = load %struct.btrfs_path*, %struct.btrfs_path** %9, align 8
  %118 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %117, i32 0, i32 0
  store i32 %116, i32* %118, align 8
  %119 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %120 = bitcast %struct.btrfs_root* %119 to %struct.walk_control*
  %121 = load %struct.btrfs_path*, %struct.btrfs_path** %9, align 8
  %122 = call i32 @btrfs_search_slot(i32* null, %struct.walk_control* %120, %struct.btrfs_key* %14, %struct.btrfs_path* %121, i32 0, i32 0)
  store i32 %122, i32* %16, align 4
  %123 = load %struct.btrfs_path*, %struct.btrfs_path** %9, align 8
  %124 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %123, i32 0, i32 0
  store i32 0, i32* %124, align 8
  %125 = load i32, i32* %16, align 4
  %126 = icmp slt i32 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %102
  %128 = load i32, i32* %16, align 4
  store i32 %128, i32* %15, align 4
  br label %456

129:                                              ; preds = %102
  %130 = load i32, i32* %16, align 4
  %131 = icmp sgt i32 %130, 0
  %132 = zext i1 %131 to i32
  %133 = call i32 @WARN_ON(i32 %132)
  %134 = load %struct.btrfs_path*, %struct.btrfs_path** %9, align 8
  %135 = call i32 @btrfs_unlock_up_safe(%struct.btrfs_path* %134, i32 0)
  %136 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %137 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %136, i32 0, i32 8
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @btrfs_header_level(i32 %138)
  store i32 %139, i32* %17, align 4
  br label %140

140:                                              ; preds = %129, %212
  %141 = load %struct.btrfs_path*, %struct.btrfs_path** %9, align 8
  %142 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %141, i32 0, i32 2
  %143 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %142, align 8
  %144 = load i32, i32* %17, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %143, i64 %145
  %147 = load %struct.TYPE_11__*, %struct.TYPE_11__** %146, align 8
  %148 = call i32 @btrfs_tree_lock(%struct.TYPE_11__* %147)
  %149 = load %struct.btrfs_path*, %struct.btrfs_path** %9, align 8
  %150 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %149, i32 0, i32 2
  %151 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %150, align 8
  %152 = load i32, i32* %17, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %151, i64 %153
  %155 = load %struct.TYPE_11__*, %struct.TYPE_11__** %154, align 8
  %156 = call i32 @btrfs_set_lock_blocking(%struct.TYPE_11__* %155)
  %157 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %10, align 8
  %158 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %159 = bitcast %struct.btrfs_root* %158 to %struct.walk_control*
  %160 = load %struct.btrfs_path*, %struct.btrfs_path** %9, align 8
  %161 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %160, i32 0, i32 2
  %162 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %161, align 8
  %163 = load i32, i32* %17, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %162, i64 %164
  %166 = load %struct.TYPE_11__*, %struct.TYPE_11__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = load %struct.btrfs_path*, %struct.btrfs_path** %9, align 8
  %170 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %169, i32 0, i32 2
  %171 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %170, align 8
  %172 = load i32, i32* %17, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %171, i64 %173
  %175 = load %struct.TYPE_11__*, %struct.TYPE_11__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = load %struct.walk_control*, %struct.walk_control** %13, align 8
  %179 = getelementptr inbounds %struct.walk_control, %struct.walk_control* %178, i32 0, i32 0
  %180 = load i32*, i32** %179, align 8
  %181 = load i32, i32* %17, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i32, i32* %180, i64 %182
  %184 = load %struct.walk_control*, %struct.walk_control** %13, align 8
  %185 = getelementptr inbounds %struct.walk_control, %struct.walk_control* %184, i32 0, i32 13
  %186 = load i32*, i32** %185, align 8
  %187 = load i32, i32* %17, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i32, i32* %186, i64 %188
  %190 = call i32 @btrfs_lookup_extent_info(%struct.btrfs_trans_handle* %157, %struct.walk_control* %159, i32 %168, i32 %177, i32* %183, i32* %189)
  store i32 %190, i32* %16, align 4
  %191 = load i32, i32* %16, align 4
  %192 = icmp slt i32 %191, 0
  br i1 %192, label %193, label %195

193:                                              ; preds = %140
  %194 = load i32, i32* %16, align 4
  store i32 %194, i32* %15, align 4
  br label %456

195:                                              ; preds = %140
  %196 = load %struct.walk_control*, %struct.walk_control** %13, align 8
  %197 = getelementptr inbounds %struct.walk_control, %struct.walk_control* %196, i32 0, i32 0
  %198 = load i32*, i32** %197, align 8
  %199 = load i32, i32* %17, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i32, i32* %198, i64 %200
  %202 = load i32, i32* %201, align 4
  %203 = icmp eq i32 %202, 0
  %204 = zext i1 %203 to i32
  %205 = call i32 @BUG_ON(i32 %204)
  %206 = load i32, i32* %17, align 4
  %207 = load %struct.btrfs_root_item*, %struct.btrfs_root_item** %12, align 8
  %208 = getelementptr inbounds %struct.btrfs_root_item, %struct.btrfs_root_item* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 4
  %210 = icmp eq i32 %206, %209
  br i1 %210, label %211, label %212

211:                                              ; preds = %195
  br label %233

212:                                              ; preds = %195
  %213 = load %struct.btrfs_path*, %struct.btrfs_path** %9, align 8
  %214 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %213, i32 0, i32 2
  %215 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %214, align 8
  %216 = load i32, i32* %17, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %215, i64 %217
  %219 = load %struct.TYPE_11__*, %struct.TYPE_11__** %218, align 8
  %220 = call i32 @btrfs_tree_unlock(%struct.TYPE_11__* %219)
  %221 = load %struct.walk_control*, %struct.walk_control** %13, align 8
  %222 = getelementptr inbounds %struct.walk_control, %struct.walk_control* %221, i32 0, i32 0
  %223 = load i32*, i32** %222, align 8
  %224 = load i32, i32* %17, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds i32, i32* %223, i64 %225
  %227 = load i32, i32* %226, align 4
  %228 = icmp ne i32 %227, 1
  %229 = zext i1 %228 to i32
  %230 = call i32 @WARN_ON(i32 %229)
  %231 = load i32, i32* %17, align 4
  %232 = add nsw i32 %231, -1
  store i32 %232, i32* %17, align 4
  br label %140

233:                                              ; preds = %211
  br label %234

234:                                              ; preds = %233, %64
  %235 = load i32, i32* %17, align 4
  %236 = load %struct.walk_control*, %struct.walk_control** %13, align 8
  %237 = getelementptr inbounds %struct.walk_control, %struct.walk_control* %236, i32 0, i32 1
  store i32 %235, i32* %237, align 8
  %238 = load %struct.walk_control*, %struct.walk_control** %13, align 8
  %239 = getelementptr inbounds %struct.walk_control, %struct.walk_control* %238, i32 0, i32 2
  store i32 -1, i32* %239, align 4
  %240 = load i64, i64* @DROP_REFERENCE, align 8
  %241 = load %struct.walk_control*, %struct.walk_control** %13, align 8
  %242 = getelementptr inbounds %struct.walk_control, %struct.walk_control* %241, i32 0, i32 3
  store i64 %240, i64* %242, align 8
  %243 = load i32, i32* %7, align 4
  %244 = load %struct.walk_control*, %struct.walk_control** %13, align 8
  %245 = getelementptr inbounds %struct.walk_control, %struct.walk_control* %244, i32 0, i32 4
  store i32 %243, i32* %245, align 8
  %246 = load %struct.walk_control*, %struct.walk_control** %13, align 8
  %247 = getelementptr inbounds %struct.walk_control, %struct.walk_control* %246, i32 0, i32 12
  store i64 0, i64* %247, align 8
  %248 = load i32, i32* %8, align 4
  %249 = load %struct.walk_control*, %struct.walk_control** %13, align 8
  %250 = getelementptr inbounds %struct.walk_control, %struct.walk_control* %249, i32 0, i32 5
  store i32 %248, i32* %250, align 4
  %251 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %252 = bitcast %struct.btrfs_root* %251 to %struct.walk_control*
  %253 = call i32 @BTRFS_NODEPTRS_PER_BLOCK(%struct.walk_control* %252)
  %254 = load %struct.walk_control*, %struct.walk_control** %13, align 8
  %255 = getelementptr inbounds %struct.walk_control, %struct.walk_control* %254, i32 0, i32 11
  store i32 %253, i32* %255, align 4
  br label %256

256:                                              ; preds = %234, %371
  %257 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %10, align 8
  %258 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %259 = bitcast %struct.btrfs_root* %258 to %struct.walk_control*
  %260 = load %struct.btrfs_path*, %struct.btrfs_path** %9, align 8
  %261 = load %struct.walk_control*, %struct.walk_control** %13, align 8
  %262 = call i32 @walk_down_tree(%struct.btrfs_trans_handle* %257, %struct.walk_control* %259, %struct.btrfs_path* %260, %struct.walk_control* %261)
  store i32 %262, i32* %16, align 4
  %263 = load i32, i32* %16, align 4
  %264 = icmp slt i32 %263, 0
  br i1 %264, label %265, label %267

265:                                              ; preds = %256
  %266 = load i32, i32* %16, align 4
  store i32 %266, i32* %15, align 4
  br label %372

267:                                              ; preds = %256
  %268 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %10, align 8
  %269 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %270 = bitcast %struct.btrfs_root* %269 to %struct.walk_control*
  %271 = load %struct.btrfs_path*, %struct.btrfs_path** %9, align 8
  %272 = load %struct.walk_control*, %struct.walk_control** %13, align 8
  %273 = load i32, i32* @BTRFS_MAX_LEVEL, align 4
  %274 = call i32 @walk_up_tree(%struct.btrfs_trans_handle* %268, %struct.walk_control* %270, %struct.btrfs_path* %271, %struct.walk_control* %272, i32 %273)
  store i32 %274, i32* %16, align 4
  %275 = load i32, i32* %16, align 4
  %276 = icmp slt i32 %275, 0
  br i1 %276, label %277, label %279

277:                                              ; preds = %267
  %278 = load i32, i32* %16, align 4
  store i32 %278, i32* %15, align 4
  br label %372

279:                                              ; preds = %267
  %280 = load i32, i32* %16, align 4
  %281 = icmp sgt i32 %280, 0
  br i1 %281, label %282, label %290

282:                                              ; preds = %279
  %283 = load %struct.walk_control*, %struct.walk_control** %13, align 8
  %284 = getelementptr inbounds %struct.walk_control, %struct.walk_control* %283, i32 0, i32 3
  %285 = load i64, i64* %284, align 8
  %286 = load i64, i64* @DROP_REFERENCE, align 8
  %287 = icmp ne i64 %285, %286
  %288 = zext i1 %287 to i32
  %289 = call i32 @BUG_ON(i32 %288)
  br label %372

290:                                              ; preds = %279
  %291 = load %struct.walk_control*, %struct.walk_control** %13, align 8
  %292 = getelementptr inbounds %struct.walk_control, %struct.walk_control* %291, i32 0, i32 3
  %293 = load i64, i64* %292, align 8
  %294 = load i64, i64* @DROP_REFERENCE, align 8
  %295 = icmp eq i64 %293, %294
  br i1 %295, label %296, label %320

296:                                              ; preds = %290
  %297 = load %struct.walk_control*, %struct.walk_control** %13, align 8
  %298 = getelementptr inbounds %struct.walk_control, %struct.walk_control* %297, i32 0, i32 1
  %299 = load i32, i32* %298, align 8
  store i32 %299, i32* %17, align 4
  %300 = load %struct.btrfs_path*, %struct.btrfs_path** %9, align 8
  %301 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %300, i32 0, i32 2
  %302 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %301, align 8
  %303 = load i32, i32* %17, align 4
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %302, i64 %304
  %306 = load %struct.TYPE_11__*, %struct.TYPE_11__** %305, align 8
  %307 = load %struct.btrfs_root_item*, %struct.btrfs_root_item** %12, align 8
  %308 = getelementptr inbounds %struct.btrfs_root_item, %struct.btrfs_root_item* %307, i32 0, i32 1
  %309 = load %struct.btrfs_path*, %struct.btrfs_path** %9, align 8
  %310 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %309, i32 0, i32 1
  %311 = load i64*, i64** %310, align 8
  %312 = load i32, i32* %17, align 4
  %313 = sext i32 %312 to i64
  %314 = getelementptr inbounds i64, i64* %311, i64 %313
  %315 = load i64, i64* %314, align 8
  %316 = call i32 @btrfs_node_key(%struct.TYPE_11__* %306, i32* %308, i64 %315)
  %317 = load i32, i32* %17, align 4
  %318 = load %struct.btrfs_root_item*, %struct.btrfs_root_item** %12, align 8
  %319 = getelementptr inbounds %struct.btrfs_root_item, %struct.btrfs_root_item* %318, i32 0, i32 0
  store i32 %317, i32* %319, align 4
  br label %320

320:                                              ; preds = %296, %290
  %321 = load %struct.walk_control*, %struct.walk_control** %13, align 8
  %322 = getelementptr inbounds %struct.walk_control, %struct.walk_control* %321, i32 0, i32 1
  %323 = load i32, i32* %322, align 8
  %324 = icmp eq i32 %323, 0
  %325 = zext i1 %324 to i32
  %326 = call i32 @BUG_ON(i32 %325)
  %327 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %10, align 8
  %328 = load %struct.btrfs_root*, %struct.btrfs_root** %11, align 8
  %329 = bitcast %struct.btrfs_root* %328 to %struct.walk_control*
  %330 = call i64 @btrfs_should_end_transaction(%struct.btrfs_trans_handle* %327, %struct.walk_control* %329)
  %331 = icmp ne i64 %330, 0
  br i1 %331, label %332, label %371

332:                                              ; preds = %320
  %333 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %10, align 8
  %334 = load %struct.btrfs_root*, %struct.btrfs_root** %11, align 8
  %335 = bitcast %struct.btrfs_root* %334 to %struct.walk_control*
  %336 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %337 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %336, i32 0, i32 10
  %338 = load %struct.btrfs_root_item*, %struct.btrfs_root_item** %12, align 8
  %339 = call i32 @btrfs_update_root(%struct.btrfs_trans_handle* %333, %struct.walk_control* %335, %struct.TYPE_10__* %337, %struct.btrfs_root_item* %338)
  store i32 %339, i32* %16, align 4
  %340 = load i32, i32* %16, align 4
  %341 = icmp ne i32 %340, 0
  br i1 %341, label %342, label %349

342:                                              ; preds = %332
  %343 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %10, align 8
  %344 = load %struct.btrfs_root*, %struct.btrfs_root** %11, align 8
  %345 = bitcast %struct.btrfs_root* %344 to %struct.walk_control*
  %346 = load i32, i32* %16, align 4
  %347 = call i32 @btrfs_abort_transaction(%struct.btrfs_trans_handle* %343, %struct.walk_control* %345, i32 %346)
  %348 = load i32, i32* %16, align 4
  store i32 %348, i32* %15, align 4
  br label %456

349:                                              ; preds = %332
  %350 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %10, align 8
  %351 = load %struct.btrfs_root*, %struct.btrfs_root** %11, align 8
  %352 = bitcast %struct.btrfs_root* %351 to %struct.walk_control*
  %353 = call i32 @btrfs_end_transaction_throttle(%struct.btrfs_trans_handle* %350, %struct.walk_control* %352)
  %354 = load %struct.btrfs_root*, %struct.btrfs_root** %11, align 8
  %355 = bitcast %struct.btrfs_root* %354 to %struct.walk_control*
  %356 = call %struct.btrfs_trans_handle* @btrfs_start_transaction(%struct.walk_control* %355, i32 0)
  store %struct.btrfs_trans_handle* %356, %struct.btrfs_trans_handle** %10, align 8
  %357 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %10, align 8
  %358 = call i64 @IS_ERR(%struct.btrfs_trans_handle* %357)
  %359 = icmp ne i64 %358, 0
  br i1 %359, label %360, label %363

360:                                              ; preds = %349
  %361 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %10, align 8
  %362 = call i32 @PTR_ERR(%struct.btrfs_trans_handle* %361)
  store i32 %362, i32* %15, align 4
  br label %461

363:                                              ; preds = %349
  %364 = load %struct.btrfs_block_rsv*, %struct.btrfs_block_rsv** %6, align 8
  %365 = icmp ne %struct.btrfs_block_rsv* %364, null
  br i1 %365, label %366, label %370

366:                                              ; preds = %363
  %367 = load %struct.btrfs_block_rsv*, %struct.btrfs_block_rsv** %6, align 8
  %368 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %10, align 8
  %369 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %368, i32 0, i32 0
  store %struct.btrfs_block_rsv* %367, %struct.btrfs_block_rsv** %369, align 8
  br label %370

370:                                              ; preds = %366, %363
  br label %371

371:                                              ; preds = %370, %320
  br label %256

372:                                              ; preds = %282, %277, %265
  %373 = load %struct.btrfs_path*, %struct.btrfs_path** %9, align 8
  %374 = call i32 @btrfs_release_path(%struct.btrfs_path* %373)
  %375 = load i32, i32* %15, align 4
  %376 = icmp ne i32 %375, 0
  br i1 %376, label %377, label %378

377:                                              ; preds = %372
  br label %456

378:                                              ; preds = %372
  %379 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %10, align 8
  %380 = load %struct.btrfs_root*, %struct.btrfs_root** %11, align 8
  %381 = bitcast %struct.btrfs_root* %380 to %struct.walk_control*
  %382 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %383 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %382, i32 0, i32 10
  %384 = call i32 @btrfs_del_root(%struct.btrfs_trans_handle* %379, %struct.walk_control* %381, %struct.TYPE_10__* %383)
  store i32 %384, i32* %16, align 4
  %385 = load i32, i32* %16, align 4
  %386 = icmp ne i32 %385, 0
  br i1 %386, label %387, label %393

387:                                              ; preds = %378
  %388 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %10, align 8
  %389 = load %struct.btrfs_root*, %struct.btrfs_root** %11, align 8
  %390 = bitcast %struct.btrfs_root* %389 to %struct.walk_control*
  %391 = load i32, i32* %16, align 4
  %392 = call i32 @btrfs_abort_transaction(%struct.btrfs_trans_handle* %388, %struct.walk_control* %390, i32 %391)
  br label %456

393:                                              ; preds = %378
  %394 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %395 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %394, i32 0, i32 10
  %396 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %395, i32 0, i32 0
  %397 = load i32, i32* %396, align 8
  %398 = load i32, i32* @BTRFS_TREE_RELOC_OBJECTID, align 4
  %399 = icmp ne i32 %397, %398
  br i1 %399, label %400, label %431

400:                                              ; preds = %393
  %401 = load %struct.btrfs_root*, %struct.btrfs_root** %11, align 8
  %402 = bitcast %struct.btrfs_root* %401 to %struct.walk_control*
  %403 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %404 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %403, i32 0, i32 10
  %405 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %404, i32 0, i32 0
  %406 = load i32, i32* %405, align 8
  %407 = call i32 @btrfs_find_last_root(%struct.walk_control* %402, i32 %406, i32* null, i32* null)
  store i32 %407, i32* %16, align 4
  %408 = load i32, i32* %16, align 4
  %409 = icmp slt i32 %408, 0
  br i1 %409, label %410, label %417

410:                                              ; preds = %400
  %411 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %10, align 8
  %412 = load %struct.btrfs_root*, %struct.btrfs_root** %11, align 8
  %413 = bitcast %struct.btrfs_root* %412 to %struct.walk_control*
  %414 = load i32, i32* %16, align 4
  %415 = call i32 @btrfs_abort_transaction(%struct.btrfs_trans_handle* %411, %struct.walk_control* %413, i32 %414)
  %416 = load i32, i32* %16, align 4
  store i32 %416, i32* %15, align 4
  br label %456

417:                                              ; preds = %400
  %418 = load i32, i32* %16, align 4
  %419 = icmp sgt i32 %418, 0
  br i1 %419, label %420, label %429

420:                                              ; preds = %417
  %421 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %10, align 8
  %422 = load %struct.btrfs_root*, %struct.btrfs_root** %11, align 8
  %423 = bitcast %struct.btrfs_root* %422 to %struct.walk_control*
  %424 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %425 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %424, i32 0, i32 10
  %426 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %425, i32 0, i32 0
  %427 = load i32, i32* %426, align 8
  %428 = call i32 @btrfs_del_orphan_item(%struct.btrfs_trans_handle* %421, %struct.walk_control* %423, i32 %427)
  br label %429

429:                                              ; preds = %420, %417
  br label %430

430:                                              ; preds = %429
  br label %431

431:                                              ; preds = %430, %393
  %432 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %433 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %432, i32 0, i32 9
  %434 = load i64, i64* %433, align 8
  %435 = icmp ne i64 %434, 0
  br i1 %435, label %436, label %443

436:                                              ; preds = %431
  %437 = load %struct.btrfs_root*, %struct.btrfs_root** %11, align 8
  %438 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %437, i32 0, i32 6
  %439 = load %struct.TYPE_12__*, %struct.TYPE_12__** %438, align 8
  %440 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %441 = bitcast %struct.btrfs_root* %440 to %struct.walk_control*
  %442 = call i32 @btrfs_free_fs_root(%struct.TYPE_12__* %439, %struct.walk_control* %441)
  br label %455

443:                                              ; preds = %431
  %444 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %445 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %444, i32 0, i32 8
  %446 = load i32, i32* %445, align 4
  %447 = call i32 @free_extent_buffer(i32 %446)
  %448 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %449 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %448, i32 0, i32 7
  %450 = load i32, i32* %449, align 8
  %451 = call i32 @free_extent_buffer(i32 %450)
  %452 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %453 = bitcast %struct.btrfs_root* %452 to %struct.walk_control*
  %454 = call i32 @kfree(%struct.walk_control* %453)
  br label %455

455:                                              ; preds = %443, %436
  br label %456

456:                                              ; preds = %455, %410, %387, %377, %342, %193, %127
  %457 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %10, align 8
  %458 = load %struct.btrfs_root*, %struct.btrfs_root** %11, align 8
  %459 = bitcast %struct.btrfs_root* %458 to %struct.walk_control*
  %460 = call i32 @btrfs_end_transaction_throttle(%struct.btrfs_trans_handle* %457, %struct.walk_control* %459)
  br label %461

461:                                              ; preds = %456, %360, %49
  %462 = load %struct.walk_control*, %struct.walk_control** %13, align 8
  %463 = call i32 @kfree(%struct.walk_control* %462)
  %464 = load %struct.btrfs_path*, %struct.btrfs_path** %9, align 8
  %465 = call i32 @btrfs_free_path(%struct.btrfs_path* %464)
  br label %466

466:                                              ; preds = %461, %37, %29
  %467 = load i32, i32* %15, align 4
  %468 = icmp ne i32 %467, 0
  br i1 %468, label %469, label %475

469:                                              ; preds = %466
  %470 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %471 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %470, i32 0, i32 6
  %472 = load %struct.TYPE_12__*, %struct.TYPE_12__** %471, align 8
  %473 = load i32, i32* %15, align 4
  %474 = call i32 @btrfs_std_error(%struct.TYPE_12__* %472, i32 %473)
  br label %475

475:                                              ; preds = %469, %466
  %476 = load i32, i32* %15, align 4
  ret i32 %476
}

declare dso_local %struct.btrfs_path* @btrfs_alloc_path(...) #1

declare dso_local %struct.walk_control* @kzalloc(i32, i32) #1

declare dso_local i32 @btrfs_free_path(%struct.btrfs_path*) #1

declare dso_local %struct.btrfs_trans_handle* @btrfs_start_transaction(%struct.walk_control*, i32) #1

declare dso_local i64 @IS_ERR(%struct.btrfs_trans_handle*) #1

declare dso_local i32 @PTR_ERR(%struct.btrfs_trans_handle*) #1

declare dso_local i64 @btrfs_disk_key_objectid(i32*) #1

declare dso_local i32 @btrfs_header_level(i32) #1

declare dso_local %struct.TYPE_11__* @btrfs_lock_root_node(%struct.walk_control*) #1

declare dso_local i32 @btrfs_set_lock_blocking(%struct.TYPE_11__*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @btrfs_disk_key_to_cpu(%struct.btrfs_key*, i32*) #1

declare dso_local i32 @memcpy(i32*, %struct.btrfs_key*, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @btrfs_search_slot(i32*, %struct.walk_control*, %struct.btrfs_key*, %struct.btrfs_path*, i32, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @btrfs_unlock_up_safe(%struct.btrfs_path*, i32) #1

declare dso_local i32 @btrfs_tree_lock(%struct.TYPE_11__*) #1

declare dso_local i32 @btrfs_lookup_extent_info(%struct.btrfs_trans_handle*, %struct.walk_control*, i32, i32, i32*, i32*) #1

declare dso_local i32 @btrfs_tree_unlock(%struct.TYPE_11__*) #1

declare dso_local i32 @BTRFS_NODEPTRS_PER_BLOCK(%struct.walk_control*) #1

declare dso_local i32 @walk_down_tree(%struct.btrfs_trans_handle*, %struct.walk_control*, %struct.btrfs_path*, %struct.walk_control*) #1

declare dso_local i32 @walk_up_tree(%struct.btrfs_trans_handle*, %struct.walk_control*, %struct.btrfs_path*, %struct.walk_control*, i32) #1

declare dso_local i32 @btrfs_node_key(%struct.TYPE_11__*, i32*, i64) #1

declare dso_local i64 @btrfs_should_end_transaction(%struct.btrfs_trans_handle*, %struct.walk_control*) #1

declare dso_local i32 @btrfs_update_root(%struct.btrfs_trans_handle*, %struct.walk_control*, %struct.TYPE_10__*, %struct.btrfs_root_item*) #1

declare dso_local i32 @btrfs_abort_transaction(%struct.btrfs_trans_handle*, %struct.walk_control*, i32) #1

declare dso_local i32 @btrfs_end_transaction_throttle(%struct.btrfs_trans_handle*, %struct.walk_control*) #1

declare dso_local i32 @btrfs_release_path(%struct.btrfs_path*) #1

declare dso_local i32 @btrfs_del_root(%struct.btrfs_trans_handle*, %struct.walk_control*, %struct.TYPE_10__*) #1

declare dso_local i32 @btrfs_find_last_root(%struct.walk_control*, i32, i32*, i32*) #1

declare dso_local i32 @btrfs_del_orphan_item(%struct.btrfs_trans_handle*, %struct.walk_control*, i32) #1

declare dso_local i32 @btrfs_free_fs_root(%struct.TYPE_12__*, %struct.walk_control*) #1

declare dso_local i32 @free_extent_buffer(i32) #1

declare dso_local i32 @kfree(%struct.walk_control*) #1

declare dso_local i32 @btrfs_std_error(%struct.TYPE_12__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
