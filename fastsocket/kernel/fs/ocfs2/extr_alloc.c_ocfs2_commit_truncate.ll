; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_alloc.c_ocfs2_commit_truncate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_alloc.c_ocfs2_commit_truncate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_super = type { i32, %struct.inode* }
%struct.inode = type { i32, i32 }
%struct.buffer_head = type { i64 }
%struct.ocfs2_truncate_context = type { i32 }
%struct.ocfs2_extent_list = type { %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.ocfs2_path = type { i64 }
%struct.ocfs2_dinode = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.ocfs2_alloc_context = type { i32 }
%struct.ocfs2_refcount_tree = type { i32 }
%struct.TYPE_9__ = type { i64, i32, i64 }
%struct.TYPE_7__ = type { i64 }

@ocfs2_journal_access_di = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@UINT_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"inode->ip_clusters = %u, tree_depth = %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"Inode %llu has empty extent block at %llu\0A\00", align 1
@EROFS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [50 x i8] c"clusters_to_del = %u in this pass, tail blk=%llu\0A\00", align 1
@OCFS2_EXT_REFCOUNTED = common dso_local global i32 0, align 4
@OCFS2_HAS_REFCOUNT_FL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_commit_truncate(%struct.ocfs2_super* %0, %struct.inode* %1, %struct.buffer_head* %2, %struct.ocfs2_truncate_context* %3) #0 {
  %5 = alloca %struct.ocfs2_super*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.buffer_head*, align 8
  %8 = alloca %struct.ocfs2_truncate_context*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.ocfs2_extent_list*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca %struct.inode*, align 8
  %20 = alloca %struct.ocfs2_path*, align 8
  %21 = alloca %struct.ocfs2_dinode*, align 8
  %22 = alloca %struct.ocfs2_alloc_context*, align 8
  %23 = alloca %struct.ocfs2_refcount_tree*, align 8
  store %struct.ocfs2_super* %0, %struct.ocfs2_super** %5, align 8
  store %struct.inode* %1, %struct.inode** %6, align 8
  store %struct.buffer_head* %2, %struct.buffer_head** %7, align 8
  store %struct.ocfs2_truncate_context* %3, %struct.ocfs2_truncate_context** %8, align 8
  store i32 0, i32* %12, align 4
  store i64 0, i64* %16, align 8
  store i32* null, i32** %18, align 8
  %24 = load %struct.ocfs2_super*, %struct.ocfs2_super** %5, align 8
  %25 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %24, i32 0, i32 1
  %26 = load %struct.inode*, %struct.inode** %25, align 8
  store %struct.inode* %26, %struct.inode** %19, align 8
  store %struct.ocfs2_path* null, %struct.ocfs2_path** %20, align 8
  %27 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %28 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to %struct.ocfs2_dinode*
  store %struct.ocfs2_dinode* %30, %struct.ocfs2_dinode** %21, align 8
  store %struct.ocfs2_alloc_context* null, %struct.ocfs2_alloc_context** %22, align 8
  store %struct.ocfs2_refcount_tree* null, %struct.ocfs2_refcount_tree** %23, align 8
  %31 = call i32 (...) @mlog_entry_void()
  %32 = load %struct.ocfs2_super*, %struct.ocfs2_super** %5, align 8
  %33 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.inode*, %struct.inode** %6, align 8
  %36 = call i32 @i_size_read(%struct.inode* %35)
  %37 = call i64 @ocfs2_clusters_for_bytes(i32 %34, i32 %36)
  store i64 %37, i64* %14, align 8
  %38 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %39 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %21, align 8
  %40 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i32, i32* @ocfs2_journal_access_di, align 4
  %43 = call %struct.ocfs2_path* @ocfs2_new_path(%struct.buffer_head* %38, i32* %41, i32 %42)
  store %struct.ocfs2_path* %43, %struct.ocfs2_path** %20, align 8
  %44 = load %struct.ocfs2_path*, %struct.ocfs2_path** %20, align 8
  %45 = icmp ne %struct.ocfs2_path* %44, null
  br i1 %45, label %51, label %46

46:                                               ; preds = %4
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %9, align 4
  %50 = call i32 @mlog_errno(i32 %49)
  br label %356

51:                                               ; preds = %4
  %52 = load %struct.inode*, %struct.inode** %6, align 8
  %53 = load i64, i64* %14, align 8
  %54 = call i32 @ocfs2_extent_map_trunc(%struct.inode* %52, i64 %53)
  br label %55

55:                                               ; preds = %355, %51
  %56 = load %struct.inode*, %struct.inode** %6, align 8
  %57 = call %struct.TYPE_9__* @OCFS2_I(%struct.inode* %56)
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %55
  store i32 0, i32* %9, align 4
  br label %356

62:                                               ; preds = %55
  store i32 0, i32* %11, align 4
  %63 = load %struct.inode*, %struct.inode** %6, align 8
  %64 = call i32 @INODE_CACHE(%struct.inode* %63)
  %65 = load %struct.ocfs2_path*, %struct.ocfs2_path** %20, align 8
  %66 = load i32, i32* @UINT_MAX, align 4
  %67 = call i32 @ocfs2_find_path(i32 %64, %struct.ocfs2_path* %65, i32 %66)
  store i32 %67, i32* %9, align 4
  %68 = load i32, i32* %9, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %62
  %71 = load i32, i32* %9, align 4
  %72 = call i32 @mlog_errno(i32 %71)
  br label %356

73:                                               ; preds = %62
  %74 = load %struct.inode*, %struct.inode** %6, align 8
  %75 = call %struct.TYPE_9__* @OCFS2_I(%struct.inode* %74)
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.ocfs2_path*, %struct.ocfs2_path** %20, align 8
  %79 = getelementptr inbounds %struct.ocfs2_path, %struct.ocfs2_path* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = call i32 @mlog(i32 0, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i64 %77, i64 %80)
  %82 = load %struct.ocfs2_path*, %struct.ocfs2_path** %20, align 8
  %83 = call %struct.ocfs2_extent_list* @path_leaf_el(%struct.ocfs2_path* %82)
  store %struct.ocfs2_extent_list* %83, %struct.ocfs2_extent_list** %17, align 8
  %84 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %17, align 8
  %85 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @le16_to_cpu(i32 %86)
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %104

89:                                               ; preds = %73
  %90 = load %struct.inode*, %struct.inode** %6, align 8
  %91 = getelementptr inbounds %struct.inode, %struct.inode* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.inode*, %struct.inode** %6, align 8
  %94 = call %struct.TYPE_9__* @OCFS2_I(%struct.inode* %93)
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 2
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.ocfs2_path*, %struct.ocfs2_path** %20, align 8
  %98 = call %struct.TYPE_7__* @path_leaf_bh(%struct.ocfs2_path* %97)
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = call i32 @ocfs2_error(i32 %92, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i64 %96, i64 %100)
  %102 = load i32, i32* @EROFS, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %9, align 4
  br label %356

104:                                              ; preds = %73
  %105 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %17, align 8
  %106 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @le16_to_cpu(i32 %107)
  %109 = sub nsw i32 %108, 1
  store i32 %109, i32* %10, align 4
  %110 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %17, align 8
  %111 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %110, i32 0, i32 0
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %111, align 8
  %113 = load i32, i32* %10, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 4
  %118 = call i64 @le32_to_cpu(i32 %117)
  %119 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %17, align 8
  %120 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %17, align 8
  %121 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %120, i32 0, i32 0
  %122 = load %struct.TYPE_8__*, %struct.TYPE_8__** %121, align 8
  %123 = load i32, i32* %10, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i64 %124
  %126 = call i64 @ocfs2_rec_clusters(%struct.ocfs2_extent_list* %119, %struct.TYPE_8__* %125)
  %127 = add nsw i64 %118, %126
  store i64 %127, i64* %15, align 8
  %128 = load i32, i32* %10, align 4
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %140

130:                                              ; preds = %104
  %131 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %17, align 8
  %132 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %131, i32 0, i32 0
  %133 = load %struct.TYPE_8__*, %struct.TYPE_8__** %132, align 8
  %134 = load i32, i32* %10, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i64 %135
  %137 = call i64 @ocfs2_is_empty_extent(%struct.TYPE_8__* %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %130
  store i64 0, i64* %13, align 8
  br label %222

140:                                              ; preds = %130, %104
  %141 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %17, align 8
  %142 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %141, i32 0, i32 0
  %143 = load %struct.TYPE_8__*, %struct.TYPE_8__** %142, align 8
  %144 = load i32, i32* %10, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i64 %145
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 4
  %149 = call i64 @le32_to_cpu(i32 %148)
  %150 = load i64, i64* %14, align 8
  %151 = icmp sge i64 %149, %150
  br i1 %151, label %152, label %170

152:                                              ; preds = %140
  %153 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %17, align 8
  %154 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %17, align 8
  %155 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %154, i32 0, i32 0
  %156 = load %struct.TYPE_8__*, %struct.TYPE_8__** %155, align 8
  %157 = load i32, i32* %10, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %156, i64 %158
  %160 = call i64 @ocfs2_rec_clusters(%struct.ocfs2_extent_list* %153, %struct.TYPE_8__* %159)
  store i64 %160, i64* %13, align 8
  %161 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %17, align 8
  %162 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %161, i32 0, i32 0
  %163 = load %struct.TYPE_8__*, %struct.TYPE_8__** %162, align 8
  %164 = load i32, i32* %10, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %163, i64 %165
  %167 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = call i64 @le64_to_cpu(i32 %168)
  store i64 %169, i64* %16, align 8
  br label %221

170:                                              ; preds = %140
  %171 = load i64, i64* %15, align 8
  %172 = load i64, i64* %14, align 8
  %173 = icmp sgt i64 %171, %172
  br i1 %173, label %174, label %219

174:                                              ; preds = %170
  %175 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %17, align 8
  %176 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %17, align 8
  %177 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %176, i32 0, i32 0
  %178 = load %struct.TYPE_8__*, %struct.TYPE_8__** %177, align 8
  %179 = load i32, i32* %10, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %178, i64 %180
  %182 = call i64 @ocfs2_rec_clusters(%struct.ocfs2_extent_list* %175, %struct.TYPE_8__* %181)
  %183 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %17, align 8
  %184 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %183, i32 0, i32 0
  %185 = load %struct.TYPE_8__*, %struct.TYPE_8__** %184, align 8
  %186 = load i32, i32* %10, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %185, i64 %187
  %189 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %188, i32 0, i32 2
  %190 = load i32, i32* %189, align 4
  %191 = call i64 @le32_to_cpu(i32 %190)
  %192 = add nsw i64 %182, %191
  %193 = load i64, i64* %14, align 8
  %194 = sub nsw i64 %192, %193
  store i64 %194, i64* %13, align 8
  %195 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %17, align 8
  %196 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %195, i32 0, i32 0
  %197 = load %struct.TYPE_8__*, %struct.TYPE_8__** %196, align 8
  %198 = load i32, i32* %10, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %197, i64 %199
  %201 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 4
  %203 = call i64 @le64_to_cpu(i32 %202)
  %204 = load %struct.inode*, %struct.inode** %6, align 8
  %205 = getelementptr inbounds %struct.inode, %struct.inode* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 4
  %207 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %17, align 8
  %208 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %17, align 8
  %209 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %208, i32 0, i32 0
  %210 = load %struct.TYPE_8__*, %struct.TYPE_8__** %209, align 8
  %211 = load i32, i32* %10, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %210, i64 %212
  %214 = call i64 @ocfs2_rec_clusters(%struct.ocfs2_extent_list* %207, %struct.TYPE_8__* %213)
  %215 = load i64, i64* %13, align 8
  %216 = sub nsw i64 %214, %215
  %217 = call i64 @ocfs2_clusters_to_blocks(i32 %206, i64 %216)
  %218 = add nsw i64 %203, %217
  store i64 %218, i64* %16, align 8
  br label %220

219:                                              ; preds = %170
  store i32 0, i32* %9, align 4
  br label %356

220:                                              ; preds = %174
  br label %221

221:                                              ; preds = %220, %152
  br label %222

222:                                              ; preds = %221, %139
  %223 = load i64, i64* %13, align 8
  %224 = load %struct.ocfs2_path*, %struct.ocfs2_path** %20, align 8
  %225 = call %struct.TYPE_7__* @path_leaf_bh(%struct.ocfs2_path* %224)
  %226 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %225, i32 0, i32 0
  %227 = load i64, i64* %226, align 8
  %228 = call i32 @mlog(i32 0, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i64 %223, i64 %227)
  %229 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %17, align 8
  %230 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %229, i32 0, i32 0
  %231 = load %struct.TYPE_8__*, %struct.TYPE_8__** %230, align 8
  %232 = load i32, i32* %10, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %231, i64 %233
  %235 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 4
  %237 = load i32, i32* @OCFS2_EXT_REFCOUNTED, align 4
  %238 = and i32 %236, %237
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %277

240:                                              ; preds = %222
  %241 = load i64, i64* %13, align 8
  %242 = icmp ne i64 %241, 0
  br i1 %242, label %243, label %277

243:                                              ; preds = %240
  %244 = load %struct.inode*, %struct.inode** %6, align 8
  %245 = call %struct.TYPE_9__* @OCFS2_I(%struct.inode* %244)
  %246 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %245, i32 0, i32 1
  %247 = load i32, i32* %246, align 8
  %248 = load i32, i32* @OCFS2_HAS_REFCOUNT_FL, align 4
  %249 = and i32 %247, %248
  %250 = icmp ne i32 %249, 0
  %251 = xor i1 %250, true
  %252 = zext i1 %251 to i32
  %253 = call i32 @BUG_ON(i32 %252)
  %254 = load %struct.ocfs2_super*, %struct.ocfs2_super** %5, align 8
  %255 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %21, align 8
  %256 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 4
  %258 = call i64 @le64_to_cpu(i32 %257)
  %259 = call i32 @ocfs2_lock_refcount_tree(%struct.ocfs2_super* %254, i64 %258, i32 1, %struct.ocfs2_refcount_tree** %23, i32* null)
  store i32 %259, i32* %9, align 4
  %260 = load i32, i32* %9, align 4
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %262, label %265

262:                                              ; preds = %243
  %263 = load i32, i32* %9, align 4
  %264 = call i32 @mlog_errno(i32 %263)
  br label %356

265:                                              ; preds = %243
  %266 = load %struct.inode*, %struct.inode** %6, align 8
  %267 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %268 = load i64, i64* %16, align 8
  %269 = load i64, i64* %13, align 8
  %270 = call i32 @ocfs2_prepare_refcount_change_for_del(%struct.inode* %266, %struct.buffer_head* %267, i64 %268, i64 %269, i32* %11, %struct.ocfs2_alloc_context** %22)
  store i32 %270, i32* %9, align 4
  %271 = load i32, i32* %9, align 4
  %272 = icmp slt i32 %271, 0
  br i1 %272, label %273, label %276

273:                                              ; preds = %265
  %274 = load i32, i32* %9, align 4
  %275 = call i32 @mlog_errno(i32 %274)
  br label %356

276:                                              ; preds = %265
  br label %277

277:                                              ; preds = %276, %240, %222
  %278 = load %struct.inode*, %struct.inode** %19, align 8
  %279 = getelementptr inbounds %struct.inode, %struct.inode* %278, i32 0, i32 0
  %280 = call i32 @mutex_lock(i32* %279)
  store i32 1, i32* %12, align 4
  %281 = load %struct.ocfs2_super*, %struct.ocfs2_super** %5, align 8
  %282 = call i64 @ocfs2_truncate_log_needs_flush(%struct.ocfs2_super* %281)
  %283 = icmp ne i64 %282, 0
  br i1 %283, label %284, label %293

284:                                              ; preds = %277
  %285 = load %struct.ocfs2_super*, %struct.ocfs2_super** %5, align 8
  %286 = call i32 @__ocfs2_flush_truncate_log(%struct.ocfs2_super* %285)
  store i32 %286, i32* %9, align 4
  %287 = load i32, i32* %9, align 4
  %288 = icmp slt i32 %287, 0
  br i1 %288, label %289, label %292

289:                                              ; preds = %284
  %290 = load i32, i32* %9, align 4
  %291 = call i32 @mlog_errno(i32 %290)
  br label %356

292:                                              ; preds = %284
  br label %293

293:                                              ; preds = %292, %277
  %294 = load %struct.ocfs2_super*, %struct.ocfs2_super** %5, align 8
  %295 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %294, i32 0, i32 0
  %296 = load i32, i32* %295, align 8
  %297 = load i64, i64* %13, align 8
  %298 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %299 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %298, i32 0, i32 0
  %300 = load i64, i64* %299, align 8
  %301 = inttoptr i64 %300 to %struct.ocfs2_dinode*
  %302 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %17, align 8
  %303 = call i64 @ocfs2_calc_tree_trunc_credits(i32 %296, i64 %297, %struct.ocfs2_dinode* %301, %struct.ocfs2_extent_list* %302)
  %304 = load i32, i32* %11, align 4
  %305 = sext i32 %304 to i64
  %306 = add nsw i64 %305, %303
  %307 = trunc i64 %306 to i32
  store i32 %307, i32* %11, align 4
  %308 = load %struct.ocfs2_super*, %struct.ocfs2_super** %5, align 8
  %309 = load i32, i32* %11, align 4
  %310 = call i32* @ocfs2_start_trans(%struct.ocfs2_super* %308, i32 %309)
  store i32* %310, i32** %18, align 8
  %311 = load i32*, i32** %18, align 8
  %312 = call i64 @IS_ERR(i32* %311)
  %313 = icmp ne i64 %312, 0
  br i1 %313, label %314, label %319

314:                                              ; preds = %293
  %315 = load i32*, i32** %18, align 8
  %316 = call i32 @PTR_ERR(i32* %315)
  store i32 %316, i32* %9, align 4
  store i32* null, i32** %18, align 8
  %317 = load i32, i32* %9, align 4
  %318 = call i32 @mlog_errno(i32 %317)
  br label %356

319:                                              ; preds = %293
  %320 = load %struct.ocfs2_super*, %struct.ocfs2_super** %5, align 8
  %321 = load i64, i64* %13, align 8
  %322 = load %struct.inode*, %struct.inode** %6, align 8
  %323 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %324 = load i32*, i32** %18, align 8
  %325 = load %struct.ocfs2_truncate_context*, %struct.ocfs2_truncate_context** %8, align 8
  %326 = load %struct.ocfs2_path*, %struct.ocfs2_path** %20, align 8
  %327 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %22, align 8
  %328 = call i32 @ocfs2_do_truncate(%struct.ocfs2_super* %320, i64 %321, %struct.inode* %322, %struct.buffer_head* %323, i32* %324, %struct.ocfs2_truncate_context* %325, %struct.ocfs2_path* %326, %struct.ocfs2_alloc_context* %327)
  store i32 %328, i32* %9, align 4
  %329 = load i32, i32* %9, align 4
  %330 = icmp slt i32 %329, 0
  br i1 %330, label %331, label %334

331:                                              ; preds = %319
  %332 = load i32, i32* %9, align 4
  %333 = call i32 @mlog_errno(i32 %332)
  br label %356

334:                                              ; preds = %319
  %335 = load %struct.inode*, %struct.inode** %19, align 8
  %336 = getelementptr inbounds %struct.inode, %struct.inode* %335, i32 0, i32 0
  %337 = call i32 @mutex_unlock(i32* %336)
  store i32 0, i32* %12, align 4
  %338 = load %struct.ocfs2_super*, %struct.ocfs2_super** %5, align 8
  %339 = load i32*, i32** %18, align 8
  %340 = call i32 @ocfs2_commit_trans(%struct.ocfs2_super* %338, i32* %339)
  store i32* null, i32** %18, align 8
  %341 = load %struct.ocfs2_path*, %struct.ocfs2_path** %20, align 8
  %342 = call i32 @ocfs2_reinit_path(%struct.ocfs2_path* %341, i32 1)
  %343 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %22, align 8
  %344 = icmp ne %struct.ocfs2_alloc_context* %343, null
  br i1 %344, label %345, label %348

345:                                              ; preds = %334
  %346 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %22, align 8
  %347 = call i32 @ocfs2_free_alloc_context(%struct.ocfs2_alloc_context* %346)
  store %struct.ocfs2_alloc_context* null, %struct.ocfs2_alloc_context** %22, align 8
  br label %348

348:                                              ; preds = %345, %334
  %349 = load %struct.ocfs2_refcount_tree*, %struct.ocfs2_refcount_tree** %23, align 8
  %350 = icmp ne %struct.ocfs2_refcount_tree* %349, null
  br i1 %350, label %351, label %355

351:                                              ; preds = %348
  %352 = load %struct.ocfs2_super*, %struct.ocfs2_super** %5, align 8
  %353 = load %struct.ocfs2_refcount_tree*, %struct.ocfs2_refcount_tree** %23, align 8
  %354 = call i32 @ocfs2_unlock_refcount_tree(%struct.ocfs2_super* %352, %struct.ocfs2_refcount_tree* %353, i32 1)
  store %struct.ocfs2_refcount_tree* null, %struct.ocfs2_refcount_tree** %23, align 8
  br label %355

355:                                              ; preds = %351, %348
  br label %55

356:                                              ; preds = %331, %314, %289, %273, %262, %219, %89, %70, %61, %46
  %357 = load %struct.ocfs2_super*, %struct.ocfs2_super** %5, align 8
  %358 = call i32 @ocfs2_schedule_truncate_log_flush(%struct.ocfs2_super* %357, i32 1)
  %359 = load i32, i32* %12, align 4
  %360 = icmp ne i32 %359, 0
  br i1 %360, label %361, label %365

361:                                              ; preds = %356
  %362 = load %struct.inode*, %struct.inode** %19, align 8
  %363 = getelementptr inbounds %struct.inode, %struct.inode* %362, i32 0, i32 0
  %364 = call i32 @mutex_unlock(i32* %363)
  br label %365

365:                                              ; preds = %361, %356
  %366 = load i32*, i32** %18, align 8
  %367 = icmp ne i32* %366, null
  br i1 %367, label %368, label %372

368:                                              ; preds = %365
  %369 = load %struct.ocfs2_super*, %struct.ocfs2_super** %5, align 8
  %370 = load i32*, i32** %18, align 8
  %371 = call i32 @ocfs2_commit_trans(%struct.ocfs2_super* %369, i32* %370)
  br label %372

372:                                              ; preds = %368, %365
  %373 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %22, align 8
  %374 = icmp ne %struct.ocfs2_alloc_context* %373, null
  br i1 %374, label %375, label %378

375:                                              ; preds = %372
  %376 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %22, align 8
  %377 = call i32 @ocfs2_free_alloc_context(%struct.ocfs2_alloc_context* %376)
  br label %378

378:                                              ; preds = %375, %372
  %379 = load %struct.ocfs2_refcount_tree*, %struct.ocfs2_refcount_tree** %23, align 8
  %380 = icmp ne %struct.ocfs2_refcount_tree* %379, null
  br i1 %380, label %381, label %385

381:                                              ; preds = %378
  %382 = load %struct.ocfs2_super*, %struct.ocfs2_super** %5, align 8
  %383 = load %struct.ocfs2_refcount_tree*, %struct.ocfs2_refcount_tree** %23, align 8
  %384 = call i32 @ocfs2_unlock_refcount_tree(%struct.ocfs2_super* %382, %struct.ocfs2_refcount_tree* %383, i32 1)
  br label %385

385:                                              ; preds = %381, %378
  %386 = load %struct.ocfs2_super*, %struct.ocfs2_super** %5, align 8
  %387 = load %struct.ocfs2_truncate_context*, %struct.ocfs2_truncate_context** %8, align 8
  %388 = getelementptr inbounds %struct.ocfs2_truncate_context, %struct.ocfs2_truncate_context* %387, i32 0, i32 0
  %389 = call i32 @ocfs2_run_deallocs(%struct.ocfs2_super* %386, i32* %388)
  %390 = load %struct.ocfs2_path*, %struct.ocfs2_path** %20, align 8
  %391 = call i32 @ocfs2_free_path(%struct.ocfs2_path* %390)
  %392 = load %struct.ocfs2_truncate_context*, %struct.ocfs2_truncate_context** %8, align 8
  %393 = call i32 @ocfs2_free_truncate_context(%struct.ocfs2_truncate_context* %392)
  %394 = load i32, i32* %9, align 4
  %395 = call i32 @mlog_exit(i32 %394)
  %396 = load i32, i32* %9, align 4
  ret i32 %396
}

declare dso_local i32 @mlog_entry_void(...) #1

declare dso_local i64 @ocfs2_clusters_for_bytes(i32, i32) #1

declare dso_local i32 @i_size_read(%struct.inode*) #1

declare dso_local %struct.ocfs2_path* @ocfs2_new_path(%struct.buffer_head*, i32*, i32) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_extent_map_trunc(%struct.inode*, i64) #1

declare dso_local %struct.TYPE_9__* @OCFS2_I(%struct.inode*) #1

declare dso_local i32 @ocfs2_find_path(i32, %struct.ocfs2_path*, i32) #1

declare dso_local i32 @INODE_CACHE(%struct.inode*) #1

declare dso_local i32 @mlog(i32, i8*, i64, i64) #1

declare dso_local %struct.ocfs2_extent_list* @path_leaf_el(%struct.ocfs2_path*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @ocfs2_error(i32, i8*, i64, i64) #1

declare dso_local %struct.TYPE_7__* @path_leaf_bh(%struct.ocfs2_path*) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i64 @ocfs2_rec_clusters(%struct.ocfs2_extent_list*, %struct.TYPE_8__*) #1

declare dso_local i64 @ocfs2_is_empty_extent(%struct.TYPE_8__*) #1

declare dso_local i64 @le64_to_cpu(i32) #1

declare dso_local i64 @ocfs2_clusters_to_blocks(i32, i64) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @ocfs2_lock_refcount_tree(%struct.ocfs2_super*, i64, i32, %struct.ocfs2_refcount_tree**, i32*) #1

declare dso_local i32 @ocfs2_prepare_refcount_change_for_del(%struct.inode*, %struct.buffer_head*, i64, i64, i32*, %struct.ocfs2_alloc_context**) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @ocfs2_truncate_log_needs_flush(%struct.ocfs2_super*) #1

declare dso_local i32 @__ocfs2_flush_truncate_log(%struct.ocfs2_super*) #1

declare dso_local i64 @ocfs2_calc_tree_trunc_credits(i32, i64, %struct.ocfs2_dinode*, %struct.ocfs2_extent_list*) #1

declare dso_local i32* @ocfs2_start_trans(%struct.ocfs2_super*, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @ocfs2_do_truncate(%struct.ocfs2_super*, i64, %struct.inode*, %struct.buffer_head*, i32*, %struct.ocfs2_truncate_context*, %struct.ocfs2_path*, %struct.ocfs2_alloc_context*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @ocfs2_commit_trans(%struct.ocfs2_super*, i32*) #1

declare dso_local i32 @ocfs2_reinit_path(%struct.ocfs2_path*, i32) #1

declare dso_local i32 @ocfs2_free_alloc_context(%struct.ocfs2_alloc_context*) #1

declare dso_local i32 @ocfs2_unlock_refcount_tree(%struct.ocfs2_super*, %struct.ocfs2_refcount_tree*, i32) #1

declare dso_local i32 @ocfs2_schedule_truncate_log_flush(%struct.ocfs2_super*, i32) #1

declare dso_local i32 @ocfs2_run_deallocs(%struct.ocfs2_super*, i32*) #1

declare dso_local i32 @ocfs2_free_path(%struct.ocfs2_path*) #1

declare dso_local i32 @ocfs2_free_truncate_context(%struct.ocfs2_truncate_context*) #1

declare dso_local i32 @mlog_exit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
