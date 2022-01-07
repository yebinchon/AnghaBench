; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_tree-log.c_btrfs_log_inode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_tree-log.c_btrfs_log_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_trans_handle = type { i32 }
%struct.btrfs_root = type { %struct.btrfs_root* }
%struct.inode = type { i32 }
%struct.btrfs_path = type { i32, i32*, %struct.extent_buffer** }
%struct.extent_buffer = type { i32 }
%struct.btrfs_key = type { i64, i64, i64 }
%struct.TYPE_2__ = type { i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@BTRFS_INODE_ITEM_KEY = common dso_local global i64 0, align 8
@LOG_INODE_ALL = common dso_local global i32 0, align 4
@LOG_INODE_EXISTS = common dso_local global i32 0, align 4
@BTRFS_XATTR_ITEM_KEY = common dso_local global i8* null, align 8
@BTRFS_DIR_LOG_INDEX_KEY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfs_trans_handle*, %struct.btrfs_root*, %struct.inode*, i32)* @btrfs_log_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btrfs_log_inode(%struct.btrfs_trans_handle* %0, %struct.btrfs_root* %1, %struct.inode* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.btrfs_trans_handle*, align 8
  %7 = alloca %struct.btrfs_root*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.btrfs_path*, align 8
  %11 = alloca %struct.btrfs_path*, align 8
  %12 = alloca %struct.btrfs_key, align 8
  %13 = alloca %struct.btrfs_key, align 8
  %14 = alloca %struct.btrfs_root*, align 8
  %15 = alloca %struct.extent_buffer*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  store %struct.btrfs_trans_handle* %0, %struct.btrfs_trans_handle** %6, align 8
  store %struct.btrfs_root* %1, %struct.btrfs_root** %7, align 8
  store %struct.inode* %2, %struct.inode** %8, align 8
  store i32 %3, i32* %9, align 4
  %23 = load %struct.btrfs_root*, %struct.btrfs_root** %7, align 8
  %24 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %23, i32 0, i32 0
  %25 = load %struct.btrfs_root*, %struct.btrfs_root** %24, align 8
  store %struct.btrfs_root* %25, %struct.btrfs_root** %14, align 8
  store %struct.extent_buffer* null, %struct.extent_buffer** %15, align 8
  store i32 0, i32* %16, align 4
  store i32 0, i32* %19, align 4
  %26 = load %struct.inode*, %struct.inode** %8, align 8
  %27 = call i64 @btrfs_ino(%struct.inode* %26)
  store i64 %27, i64* %21, align 8
  %28 = load %struct.btrfs_root*, %struct.btrfs_root** %7, align 8
  %29 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %28, i32 0, i32 0
  %30 = load %struct.btrfs_root*, %struct.btrfs_root** %29, align 8
  store %struct.btrfs_root* %30, %struct.btrfs_root** %14, align 8
  %31 = call %struct.btrfs_path* (...) @btrfs_alloc_path()
  store %struct.btrfs_path* %31, %struct.btrfs_path** %10, align 8
  %32 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %33 = icmp ne %struct.btrfs_path* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %4
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %5, align 4
  br label %343

37:                                               ; preds = %4
  %38 = call %struct.btrfs_path* (...) @btrfs_alloc_path()
  store %struct.btrfs_path* %38, %struct.btrfs_path** %11, align 8
  %39 = load %struct.btrfs_path*, %struct.btrfs_path** %11, align 8
  %40 = icmp ne %struct.btrfs_path* %39, null
  br i1 %40, label %46, label %41

41:                                               ; preds = %37
  %42 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %43 = call i32 @btrfs_free_path(%struct.btrfs_path* %42)
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %5, align 4
  br label %343

46:                                               ; preds = %37
  %47 = load i64, i64* %21, align 8
  %48 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %12, i32 0, i32 0
  store i64 %47, i64* %48, align 8
  %49 = load i64, i64* @BTRFS_INODE_ITEM_KEY, align 8
  %50 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %12, i32 0, i32 1
  store i64 %49, i64* %50, align 8
  %51 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %12, i32 0, i32 2
  store i64 0, i64* %51, align 8
  %52 = load i64, i64* %21, align 8
  %53 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %13, i32 0, i32 0
  store i64 %52, i64* %53, align 8
  %54 = load %struct.inode*, %struct.inode** %8, align 8
  %55 = getelementptr inbounds %struct.inode, %struct.inode* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i64 @S_ISDIR(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %61, label %59

59:                                               ; preds = %46
  %60 = load i32, i32* @LOG_INODE_ALL, align 4
  store i32 %60, i32* %9, align 4
  br label %61

61:                                               ; preds = %59, %46
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* @LOG_INODE_EXISTS, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %71, label %65

65:                                               ; preds = %61
  %66 = load %struct.inode*, %struct.inode** %8, align 8
  %67 = getelementptr inbounds %struct.inode, %struct.inode* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i64 @S_ISDIR(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %65, %61
  %72 = load i8*, i8** @BTRFS_XATTR_ITEM_KEY, align 8
  %73 = ptrtoint i8* %72 to i64
  %74 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %13, i32 0, i32 1
  store i64 %73, i64* %74, align 8
  br label %77

75:                                               ; preds = %65
  %76 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %13, i32 0, i32 1
  store i64 -1, i64* %76, align 8
  br label %77

77:                                               ; preds = %75, %71
  %78 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %13, i32 0, i32 2
  store i64 -1, i64* %78, align 8
  %79 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %6, align 8
  %80 = load %struct.inode*, %struct.inode** %8, align 8
  %81 = call i32 @btrfs_commit_inode_delayed_items(%struct.btrfs_trans_handle* %79, %struct.inode* %80)
  store i32 %81, i32* %17, align 4
  %82 = load i32, i32* %17, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %77
  %85 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %86 = call i32 @btrfs_free_path(%struct.btrfs_path* %85)
  %87 = load %struct.btrfs_path*, %struct.btrfs_path** %11, align 8
  %88 = call i32 @btrfs_free_path(%struct.btrfs_path* %87)
  %89 = load i32, i32* %17, align 4
  store i32 %89, i32* %5, align 4
  br label %343

90:                                               ; preds = %77
  %91 = load %struct.inode*, %struct.inode** %8, align 8
  %92 = call %struct.TYPE_2__* @BTRFS_I(%struct.inode* %91)
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  %94 = call i32 @mutex_lock(i32* %93)
  %95 = load %struct.inode*, %struct.inode** %8, align 8
  %96 = getelementptr inbounds %struct.inode, %struct.inode* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i64 @S_ISDIR(i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %115

100:                                              ; preds = %90
  %101 = load i32, i32* @BTRFS_DIR_LOG_INDEX_KEY, align 4
  store i32 %101, i32* %22, align 4
  %102 = load i32, i32* %9, align 4
  %103 = load i32, i32* @LOG_INODE_EXISTS, align 4
  %104 = icmp eq i32 %102, %103
  br i1 %104, label %105, label %108

105:                                              ; preds = %100
  %106 = load i8*, i8** @BTRFS_XATTR_ITEM_KEY, align 8
  %107 = ptrtoint i8* %106 to i32
  store i32 %107, i32* %22, align 4
  br label %108

108:                                              ; preds = %105, %100
  %109 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %6, align 8
  %110 = load %struct.btrfs_root*, %struct.btrfs_root** %14, align 8
  %111 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %112 = load i64, i64* %21, align 8
  %113 = load i32, i32* %22, align 4
  %114 = call i32 @drop_objectid_items(%struct.btrfs_trans_handle* %109, %struct.btrfs_root* %110, %struct.btrfs_path* %111, i64 %112, i32 %113)
  store i32 %114, i32* %17, align 4
  br label %120

115:                                              ; preds = %90
  %116 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %6, align 8
  %117 = load %struct.btrfs_root*, %struct.btrfs_root** %14, align 8
  %118 = load %struct.inode*, %struct.inode** %8, align 8
  %119 = call i32 @btrfs_truncate_inode_items(%struct.btrfs_trans_handle* %116, %struct.btrfs_root* %117, %struct.inode* %118, i32 0, i32 0)
  store i32 %119, i32* %17, align 4
  br label %120

120:                                              ; preds = %115, %108
  %121 = load i32, i32* %17, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %120
  %124 = load i32, i32* %17, align 4
  store i32 %124, i32* %16, align 4
  br label %333

125:                                              ; preds = %120
  %126 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %127 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %126, i32 0, i32 0
  store i32 1, i32* %127, align 8
  br label %128

128:                                              ; preds = %125, %280
  store i32 0, i32* %20, align 4
  %129 = load %struct.btrfs_root*, %struct.btrfs_root** %7, align 8
  %130 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %131 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %6, align 8
  %132 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @btrfs_search_forward(%struct.btrfs_root* %129, %struct.btrfs_key* %12, %struct.btrfs_key* %13, %struct.btrfs_path* %130, i32 0, i32 %133)
  store i32 %134, i32* %17, align 4
  %135 = load i32, i32* %17, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %128
  br label %281

138:                                              ; preds = %128
  br label %139

139:                                              ; preds = %222, %138
  %140 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %12, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = load i64, i64* %21, align 8
  %143 = icmp ne i64 %141, %142
  br i1 %143, label %144, label %145

144:                                              ; preds = %139
  br label %281

145:                                              ; preds = %139
  %146 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %12, i32 0, i32 1
  %147 = load i64, i64* %146, align 8
  %148 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %13, i32 0, i32 1
  %149 = load i64, i64* %148, align 8
  %150 = icmp sgt i64 %147, %149
  br i1 %150, label %151, label %152

151:                                              ; preds = %145
  br label %281

152:                                              ; preds = %145
  %153 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %154 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %153, i32 0, i32 2
  %155 = load %struct.extent_buffer**, %struct.extent_buffer*** %154, align 8
  %156 = getelementptr inbounds %struct.extent_buffer*, %struct.extent_buffer** %155, i64 0
  %157 = load %struct.extent_buffer*, %struct.extent_buffer** %156, align 8
  store %struct.extent_buffer* %157, %struct.extent_buffer** %15, align 8
  %158 = load i32, i32* %20, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %173

160:                                              ; preds = %152
  %161 = load i32, i32* %19, align 4
  %162 = load i32, i32* %20, align 4
  %163 = add nsw i32 %161, %162
  %164 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %165 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %164, i32 0, i32 1
  %166 = load i32*, i32** %165, align 8
  %167 = getelementptr inbounds i32, i32* %166, i64 0
  %168 = load i32, i32* %167, align 4
  %169 = icmp eq i32 %163, %168
  br i1 %169, label %170, label %173

170:                                              ; preds = %160
  %171 = load i32, i32* %20, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %20, align 4
  br label %202

173:                                              ; preds = %160, %152
  %174 = load i32, i32* %20, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %182, label %176

176:                                              ; preds = %173
  %177 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %178 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %177, i32 0, i32 1
  %179 = load i32*, i32** %178, align 8
  %180 = getelementptr inbounds i32, i32* %179, i64 0
  %181 = load i32, i32* %180, align 4
  store i32 %181, i32* %19, align 4
  store i32 1, i32* %20, align 4
  br label %202

182:                                              ; preds = %173
  br label %183

183:                                              ; preds = %182
  %184 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %6, align 8
  %185 = load %struct.btrfs_root*, %struct.btrfs_root** %14, align 8
  %186 = load %struct.btrfs_path*, %struct.btrfs_path** %11, align 8
  %187 = load %struct.extent_buffer*, %struct.extent_buffer** %15, align 8
  %188 = load i32, i32* %19, align 4
  %189 = load i32, i32* %20, align 4
  %190 = load i32, i32* %9, align 4
  %191 = call i32 @copy_items(%struct.btrfs_trans_handle* %184, %struct.btrfs_root* %185, %struct.btrfs_path* %186, %struct.extent_buffer* %187, i32 %188, i32 %189, i32 %190)
  store i32 %191, i32* %17, align 4
  %192 = load i32, i32* %17, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %196

194:                                              ; preds = %183
  %195 = load i32, i32* %17, align 4
  store i32 %195, i32* %16, align 4
  br label %333

196:                                              ; preds = %183
  store i32 1, i32* %20, align 4
  %197 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %198 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %197, i32 0, i32 1
  %199 = load i32*, i32** %198, align 8
  %200 = getelementptr inbounds i32, i32* %199, i64 0
  %201 = load i32, i32* %200, align 4
  store i32 %201, i32* %19, align 4
  br label %202

202:                                              ; preds = %196, %176, %170
  %203 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %204 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %203, i32 0, i32 2
  %205 = load %struct.extent_buffer**, %struct.extent_buffer*** %204, align 8
  %206 = getelementptr inbounds %struct.extent_buffer*, %struct.extent_buffer** %205, i64 0
  %207 = load %struct.extent_buffer*, %struct.extent_buffer** %206, align 8
  %208 = call i32 @btrfs_header_nritems(%struct.extent_buffer* %207)
  store i32 %208, i32* %18, align 4
  %209 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %210 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %209, i32 0, i32 1
  %211 = load i32*, i32** %210, align 8
  %212 = getelementptr inbounds i32, i32* %211, i64 0
  %213 = load i32, i32* %212, align 4
  %214 = add nsw i32 %213, 1
  store i32 %214, i32* %212, align 4
  %215 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %216 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %215, i32 0, i32 1
  %217 = load i32*, i32** %216, align 8
  %218 = getelementptr inbounds i32, i32* %217, i64 0
  %219 = load i32, i32* %218, align 4
  %220 = load i32, i32* %18, align 4
  %221 = icmp slt i32 %219, %220
  br i1 %221, label %222, label %234

222:                                              ; preds = %202
  %223 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %224 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %223, i32 0, i32 2
  %225 = load %struct.extent_buffer**, %struct.extent_buffer*** %224, align 8
  %226 = getelementptr inbounds %struct.extent_buffer*, %struct.extent_buffer** %225, i64 0
  %227 = load %struct.extent_buffer*, %struct.extent_buffer** %226, align 8
  %228 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %229 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %228, i32 0, i32 1
  %230 = load i32*, i32** %229, align 8
  %231 = getelementptr inbounds i32, i32* %230, i64 0
  %232 = load i32, i32* %231, align 4
  %233 = call i32 @btrfs_item_key_to_cpu(%struct.extent_buffer* %227, %struct.btrfs_key* %12, i32 %232)
  br label %139

234:                                              ; preds = %202
  %235 = load i32, i32* %20, align 4
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %251

237:                                              ; preds = %234
  %238 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %6, align 8
  %239 = load %struct.btrfs_root*, %struct.btrfs_root** %14, align 8
  %240 = load %struct.btrfs_path*, %struct.btrfs_path** %11, align 8
  %241 = load %struct.extent_buffer*, %struct.extent_buffer** %15, align 8
  %242 = load i32, i32* %19, align 4
  %243 = load i32, i32* %20, align 4
  %244 = load i32, i32* %9, align 4
  %245 = call i32 @copy_items(%struct.btrfs_trans_handle* %238, %struct.btrfs_root* %239, %struct.btrfs_path* %240, %struct.extent_buffer* %241, i32 %242, i32 %243, i32 %244)
  store i32 %245, i32* %17, align 4
  %246 = load i32, i32* %17, align 4
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %250

248:                                              ; preds = %237
  %249 = load i32, i32* %17, align 4
  store i32 %249, i32* %16, align 4
  br label %333

250:                                              ; preds = %237
  store i32 0, i32* %20, align 4
  br label %251

251:                                              ; preds = %250, %234
  %252 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %253 = call i32 @btrfs_release_path(%struct.btrfs_path* %252)
  %254 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %12, i32 0, i32 2
  %255 = load i64, i64* %254, align 8
  %256 = icmp slt i64 %255, -1
  br i1 %256, label %257, label %261

257:                                              ; preds = %251
  %258 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %12, i32 0, i32 2
  %259 = load i64, i64* %258, align 8
  %260 = add nsw i64 %259, 1
  store i64 %260, i64* %258, align 8
  br label %280

261:                                              ; preds = %251
  %262 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %12, i32 0, i32 1
  %263 = load i64, i64* %262, align 8
  %264 = icmp slt i64 %263, -1
  br i1 %264, label %265, label %269

265:                                              ; preds = %261
  %266 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %12, i32 0, i32 1
  %267 = load i64, i64* %266, align 8
  %268 = add nsw i64 %267, 1
  store i64 %268, i64* %266, align 8
  br label %279

269:                                              ; preds = %261
  %270 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %12, i32 0, i32 0
  %271 = load i64, i64* %270, align 8
  %272 = icmp slt i64 %271, -1
  br i1 %272, label %273, label %277

273:                                              ; preds = %269
  %274 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %12, i32 0, i32 0
  %275 = load i64, i64* %274, align 8
  %276 = add nsw i64 %275, 1
  store i64 %276, i64* %274, align 8
  br label %278

277:                                              ; preds = %269
  br label %281

278:                                              ; preds = %273
  br label %279

279:                                              ; preds = %278, %265
  br label %280

280:                                              ; preds = %279, %257
  br label %128

281:                                              ; preds = %277, %151, %144, %137
  %282 = load i32, i32* %20, align 4
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %284, label %298

284:                                              ; preds = %281
  %285 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %6, align 8
  %286 = load %struct.btrfs_root*, %struct.btrfs_root** %14, align 8
  %287 = load %struct.btrfs_path*, %struct.btrfs_path** %11, align 8
  %288 = load %struct.extent_buffer*, %struct.extent_buffer** %15, align 8
  %289 = load i32, i32* %19, align 4
  %290 = load i32, i32* %20, align 4
  %291 = load i32, i32* %9, align 4
  %292 = call i32 @copy_items(%struct.btrfs_trans_handle* %285, %struct.btrfs_root* %286, %struct.btrfs_path* %287, %struct.extent_buffer* %288, i32 %289, i32 %290, i32 %291)
  store i32 %292, i32* %17, align 4
  %293 = load i32, i32* %17, align 4
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %295, label %297

295:                                              ; preds = %284
  %296 = load i32, i32* %17, align 4
  store i32 %296, i32* %16, align 4
  br label %333

297:                                              ; preds = %284
  store i32 0, i32* %20, align 4
  br label %298

298:                                              ; preds = %297, %281
  %299 = load i32, i32* %20, align 4
  %300 = call i32 @WARN_ON(i32 %299)
  %301 = load i32, i32* %9, align 4
  %302 = load i32, i32* @LOG_INODE_ALL, align 4
  %303 = icmp eq i32 %301, %302
  br i1 %303, label %304, label %326

304:                                              ; preds = %298
  %305 = load %struct.inode*, %struct.inode** %8, align 8
  %306 = getelementptr inbounds %struct.inode, %struct.inode* %305, i32 0, i32 0
  %307 = load i32, i32* %306, align 4
  %308 = call i64 @S_ISDIR(i32 %307)
  %309 = icmp ne i64 %308, 0
  br i1 %309, label %310, label %326

310:                                              ; preds = %304
  %311 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %312 = call i32 @btrfs_release_path(%struct.btrfs_path* %311)
  %313 = load %struct.btrfs_path*, %struct.btrfs_path** %11, align 8
  %314 = call i32 @btrfs_release_path(%struct.btrfs_path* %313)
  %315 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %6, align 8
  %316 = load %struct.btrfs_root*, %struct.btrfs_root** %7, align 8
  %317 = load %struct.inode*, %struct.inode** %8, align 8
  %318 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %319 = load %struct.btrfs_path*, %struct.btrfs_path** %11, align 8
  %320 = call i32 @log_directory_changes(%struct.btrfs_trans_handle* %315, %struct.btrfs_root* %316, %struct.inode* %317, %struct.btrfs_path* %318, %struct.btrfs_path* %319)
  store i32 %320, i32* %17, align 4
  %321 = load i32, i32* %17, align 4
  %322 = icmp ne i32 %321, 0
  br i1 %322, label %323, label %325

323:                                              ; preds = %310
  %324 = load i32, i32* %17, align 4
  store i32 %324, i32* %16, align 4
  br label %333

325:                                              ; preds = %310
  br label %326

326:                                              ; preds = %325, %304, %298
  %327 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %6, align 8
  %328 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %327, i32 0, i32 0
  %329 = load i32, i32* %328, align 4
  %330 = load %struct.inode*, %struct.inode** %8, align 8
  %331 = call %struct.TYPE_2__* @BTRFS_I(%struct.inode* %330)
  %332 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %331, i32 0, i32 1
  store i32 %329, i32* %332, align 4
  br label %333

333:                                              ; preds = %326, %323, %295, %248, %194, %123
  %334 = load %struct.inode*, %struct.inode** %8, align 8
  %335 = call %struct.TYPE_2__* @BTRFS_I(%struct.inode* %334)
  %336 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %335, i32 0, i32 0
  %337 = call i32 @mutex_unlock(i32* %336)
  %338 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %339 = call i32 @btrfs_free_path(%struct.btrfs_path* %338)
  %340 = load %struct.btrfs_path*, %struct.btrfs_path** %11, align 8
  %341 = call i32 @btrfs_free_path(%struct.btrfs_path* %340)
  %342 = load i32, i32* %16, align 4
  store i32 %342, i32* %5, align 4
  br label %343

343:                                              ; preds = %333, %84, %41, %34
  %344 = load i32, i32* %5, align 4
  ret i32 %344
}

declare dso_local i64 @btrfs_ino(%struct.inode*) #1

declare dso_local %struct.btrfs_path* @btrfs_alloc_path(...) #1

declare dso_local i32 @btrfs_free_path(%struct.btrfs_path*) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i32 @btrfs_commit_inode_delayed_items(%struct.btrfs_trans_handle*, %struct.inode*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.TYPE_2__* @BTRFS_I(%struct.inode*) #1

declare dso_local i32 @drop_objectid_items(%struct.btrfs_trans_handle*, %struct.btrfs_root*, %struct.btrfs_path*, i64, i32) #1

declare dso_local i32 @btrfs_truncate_inode_items(%struct.btrfs_trans_handle*, %struct.btrfs_root*, %struct.inode*, i32, i32) #1

declare dso_local i32 @btrfs_search_forward(%struct.btrfs_root*, %struct.btrfs_key*, %struct.btrfs_key*, %struct.btrfs_path*, i32, i32) #1

declare dso_local i32 @copy_items(%struct.btrfs_trans_handle*, %struct.btrfs_root*, %struct.btrfs_path*, %struct.extent_buffer*, i32, i32, i32) #1

declare dso_local i32 @btrfs_header_nritems(%struct.extent_buffer*) #1

declare dso_local i32 @btrfs_item_key_to_cpu(%struct.extent_buffer*, %struct.btrfs_key*, i32) #1

declare dso_local i32 @btrfs_release_path(%struct.btrfs_path*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @log_directory_changes(%struct.btrfs_trans_handle*, %struct.btrfs_root*, %struct.inode*, %struct.btrfs_path*, %struct.btrfs_path*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
