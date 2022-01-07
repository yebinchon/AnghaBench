; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_alloc.c_ocfs2_do_truncate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_alloc.c_ocfs2_do_truncate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_super = type { i32 }
%struct.inode = type { i32, i32, i32 }
%struct.buffer_head = type { i64 }
%struct.ocfs2_truncate_context = type { i32 }
%struct.ocfs2_path = type { i32 }
%struct.ocfs2_alloc_context = type { i32 }
%struct.ocfs2_dinode = type { i64, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.ocfs2_extent_list }
%struct.ocfs2_extent_list = type { i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }
%struct.ocfs2_extent_block = type { i64, i64 }
%struct.TYPE_6__ = type { i32, i64 }

@OCFS2_JOURNAL_ACCESS_WRITE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"Inode %lu has an empty extent record, depth %u\0A\00", align 1
@EROFS = common dso_local global i32 0, align 4
@OCFS2_EXT_REFCOUNTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocfs2_super*, i32, %struct.inode*, %struct.buffer_head*, i32*, %struct.ocfs2_truncate_context*, %struct.ocfs2_path*, %struct.ocfs2_alloc_context*)* @ocfs2_do_truncate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_do_truncate(%struct.ocfs2_super* %0, i32 %1, %struct.inode* %2, %struct.buffer_head* %3, i32* %4, %struct.ocfs2_truncate_context* %5, %struct.ocfs2_path* %6, %struct.ocfs2_alloc_context* %7) #0 {
  %9 = alloca %struct.ocfs2_super*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.inode*, align 8
  %12 = alloca %struct.buffer_head*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.ocfs2_truncate_context*, align 8
  %15 = alloca %struct.ocfs2_path*, align 8
  %16 = alloca %struct.ocfs2_alloc_context*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.ocfs2_dinode*, align 8
  %19 = alloca %struct.ocfs2_extent_block*, align 8
  %20 = alloca %struct.ocfs2_extent_list*, align 8
  %21 = alloca %struct.buffer_head*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  store %struct.ocfs2_super* %0, %struct.ocfs2_super** %9, align 8
  store i32 %1, i32* %10, align 4
  store %struct.inode* %2, %struct.inode** %11, align 8
  store %struct.buffer_head* %3, %struct.buffer_head** %12, align 8
  store i32* %4, i32** %13, align 8
  store %struct.ocfs2_truncate_context* %5, %struct.ocfs2_truncate_context** %14, align 8
  store %struct.ocfs2_path* %6, %struct.ocfs2_path** %15, align 8
  store %struct.ocfs2_alloc_context* %7, %struct.ocfs2_alloc_context** %16, align 8
  store %struct.ocfs2_extent_block* null, %struct.ocfs2_extent_block** %19, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %21, align 8
  store i64 0, i64* %22, align 8
  %24 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %25 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to %struct.ocfs2_dinode*
  store %struct.ocfs2_dinode* %27, %struct.ocfs2_dinode** %18, align 8
  %28 = load %struct.inode*, %struct.inode** %11, align 8
  %29 = load i32, i32* %10, align 4
  %30 = load %struct.ocfs2_path*, %struct.ocfs2_path** %15, align 8
  %31 = call i32 @ocfs2_find_new_last_ext_blk(%struct.inode* %28, i32 %29, %struct.ocfs2_path* %30, %struct.buffer_head** %21)
  store i32 %31, i32* %17, align 4
  %32 = load i32, i32* %17, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %8
  %35 = load i32, i32* %17, align 4
  %36 = call i32 @mlog_errno(i32 %35)
  br label %224

37:                                               ; preds = %8
  %38 = load %struct.inode*, %struct.inode** %11, align 8
  %39 = call i32 @INODE_CACHE(%struct.inode* %38)
  %40 = load i32*, i32** %13, align 8
  %41 = load %struct.ocfs2_path*, %struct.ocfs2_path** %15, align 8
  %42 = call i32 @ocfs2_journal_access_path(i32 %39, i32* %40, %struct.ocfs2_path* %41)
  store i32 %42, i32* %17, align 4
  %43 = load i32, i32* %17, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %37
  %46 = load i32, i32* %17, align 4
  %47 = call i32 @mlog_errno(i32 %46)
  br label %224

48:                                               ; preds = %37
  %49 = load %struct.buffer_head*, %struct.buffer_head** %21, align 8
  %50 = icmp ne %struct.buffer_head* %49, null
  br i1 %50, label %51, label %68

51:                                               ; preds = %48
  %52 = load i32*, i32** %13, align 8
  %53 = load %struct.inode*, %struct.inode** %11, align 8
  %54 = call i32 @INODE_CACHE(%struct.inode* %53)
  %55 = load %struct.buffer_head*, %struct.buffer_head** %21, align 8
  %56 = load i32, i32* @OCFS2_JOURNAL_ACCESS_WRITE, align 4
  %57 = call i32 @ocfs2_journal_access_eb(i32* %52, i32 %54, %struct.buffer_head* %55, i32 %56)
  store i32 %57, i32* %17, align 4
  %58 = load i32, i32* %17, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %51
  %61 = load i32, i32* %17, align 4
  %62 = call i32 @mlog_errno(i32 %61)
  br label %224

63:                                               ; preds = %51
  %64 = load %struct.buffer_head*, %struct.buffer_head** %21, align 8
  %65 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = inttoptr i64 %66 to %struct.ocfs2_extent_block*
  store %struct.ocfs2_extent_block* %67, %struct.ocfs2_extent_block** %19, align 8
  br label %68

68:                                               ; preds = %63, %48
  %69 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %18, align 8
  %70 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  store %struct.ocfs2_extent_list* %71, %struct.ocfs2_extent_list** %20, align 8
  %72 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %20, align 8
  %73 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %98

76:                                               ; preds = %68
  %77 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %20, align 8
  %78 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %77, i32 0, i32 1
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i64 0
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp eq i64 %82, 0
  br i1 %83, label %84, label %98

84:                                               ; preds = %76
  %85 = load %struct.inode*, %struct.inode** %11, align 8
  %86 = getelementptr inbounds %struct.inode, %struct.inode* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.inode*, %struct.inode** %11, align 8
  %89 = getelementptr inbounds %struct.inode, %struct.inode* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %20, align 8
  %92 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = call i32 @le16_to_cpu(i64 %93)
  %95 = call i32 @ocfs2_error(i32 %87, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %90, i32 %94)
  %96 = load i32, i32* @EROFS, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %17, align 4
  br label %224

98:                                               ; preds = %76, %68
  %99 = load %struct.inode*, %struct.inode** %11, align 8
  %100 = load %struct.ocfs2_super*, %struct.ocfs2_super** %9, align 8
  %101 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* %10, align 4
  %104 = call i32 @ocfs2_clusters_to_bytes(i32 %102, i32 %103)
  %105 = call i32 @vfs_dq_free_space_nodirty(%struct.inode* %99, i32 %104)
  %106 = load %struct.inode*, %struct.inode** %11, align 8
  %107 = call %struct.TYPE_6__* @OCFS2_I(%struct.inode* %106)
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 0
  %109 = call i32 @spin_lock(i32* %108)
  %110 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %18, align 8
  %111 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = call i64 @le32_to_cpu(i32 %112)
  %114 = load i32, i32* %10, align 4
  %115 = zext i32 %114 to i64
  %116 = sub nsw i64 %113, %115
  %117 = load %struct.inode*, %struct.inode** %11, align 8
  %118 = call %struct.TYPE_6__* @OCFS2_I(%struct.inode* %117)
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 1
  store i64 %116, i64* %119, align 8
  %120 = load %struct.inode*, %struct.inode** %11, align 8
  %121 = call %struct.TYPE_6__* @OCFS2_I(%struct.inode* %120)
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 0
  %123 = call i32 @spin_unlock(i32* %122)
  %124 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %18, align 8
  %125 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %124, i32 0, i32 1
  %126 = load i32, i32* %10, align 4
  %127 = sub i32 0, %126
  %128 = call i32 @le32_add_cpu(i32* %125, i32 %127)
  %129 = load %struct.inode*, %struct.inode** %11, align 8
  %130 = call i32 @ocfs2_inode_sector_count(%struct.inode* %129)
  %131 = load %struct.inode*, %struct.inode** %11, align 8
  %132 = getelementptr inbounds %struct.inode, %struct.inode* %131, i32 0, i32 0
  store i32 %130, i32* %132, align 4
  %133 = load %struct.inode*, %struct.inode** %11, align 8
  %134 = load %struct.ocfs2_path*, %struct.ocfs2_path** %15, align 8
  %135 = load i32*, i32** %13, align 8
  %136 = load %struct.ocfs2_truncate_context*, %struct.ocfs2_truncate_context** %14, align 8
  %137 = load i32, i32* %10, align 4
  %138 = call i32 @ocfs2_trim_tree(%struct.inode* %133, %struct.ocfs2_path* %134, i32* %135, %struct.ocfs2_truncate_context* %136, i32 %137, i64* %22, i32* %23)
  store i32 %138, i32* %17, align 4
  %139 = load i32, i32* %17, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %144

141:                                              ; preds = %98
  %142 = load i32, i32* %17, align 4
  %143 = call i32 @mlog_errno(i32 %142)
  br label %224

144:                                              ; preds = %98
  %145 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %18, align 8
  %146 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 8
  %148 = call i64 @le32_to_cpu(i32 %147)
  %149 = icmp eq i64 %148, 0
  br i1 %149, label %150, label %155

150:                                              ; preds = %144
  %151 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %20, align 8
  %152 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %151, i32 0, i32 0
  store i64 0, i64* %152, align 8
  %153 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %18, align 8
  %154 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %153, i32 0, i32 0
  store i64 0, i64* %154, align 8
  br label %165

155:                                              ; preds = %144
  %156 = load %struct.ocfs2_extent_block*, %struct.ocfs2_extent_block** %19, align 8
  %157 = icmp ne %struct.ocfs2_extent_block* %156, null
  br i1 %157, label %158, label %164

158:                                              ; preds = %155
  %159 = load %struct.ocfs2_extent_block*, %struct.ocfs2_extent_block** %19, align 8
  %160 = getelementptr inbounds %struct.ocfs2_extent_block, %struct.ocfs2_extent_block* %159, i32 0, i32 1
  %161 = load i64, i64* %160, align 8
  %162 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %18, align 8
  %163 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %162, i32 0, i32 0
  store i64 %161, i64* %163, align 8
  br label %164

164:                                              ; preds = %158, %155
  br label %165

165:                                              ; preds = %164, %150
  %166 = load i32*, i32** %13, align 8
  %167 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %168 = call i32 @ocfs2_journal_dirty(i32* %166, %struct.buffer_head* %167)
  store i32 %168, i32* %17, align 4
  %169 = load i32, i32* %17, align 4
  %170 = icmp slt i32 %169, 0
  br i1 %170, label %171, label %174

171:                                              ; preds = %165
  %172 = load i32, i32* %17, align 4
  %173 = call i32 @mlog_errno(i32 %172)
  br label %224

174:                                              ; preds = %165
  %175 = load %struct.ocfs2_extent_block*, %struct.ocfs2_extent_block** %19, align 8
  %176 = icmp ne %struct.ocfs2_extent_block* %175, null
  br i1 %176, label %177, label %189

177:                                              ; preds = %174
  %178 = load %struct.ocfs2_extent_block*, %struct.ocfs2_extent_block** %19, align 8
  %179 = getelementptr inbounds %struct.ocfs2_extent_block, %struct.ocfs2_extent_block* %178, i32 0, i32 0
  store i64 0, i64* %179, align 8
  %180 = load i32*, i32** %13, align 8
  %181 = load %struct.buffer_head*, %struct.buffer_head** %21, align 8
  %182 = call i32 @ocfs2_journal_dirty(i32* %180, %struct.buffer_head* %181)
  store i32 %182, i32* %17, align 4
  %183 = load i32, i32* %17, align 4
  %184 = icmp slt i32 %183, 0
  br i1 %184, label %185, label %188

185:                                              ; preds = %177
  %186 = load i32, i32* %17, align 4
  %187 = call i32 @mlog_errno(i32 %186)
  br label %224

188:                                              ; preds = %177
  br label %189

189:                                              ; preds = %188, %174
  %190 = load i64, i64* %22, align 8
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %223

192:                                              ; preds = %189
  %193 = load i32, i32* %23, align 4
  %194 = load i32, i32* @OCFS2_EXT_REFCOUNTED, align 4
  %195 = and i32 %193, %194
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %210

197:                                              ; preds = %192
  %198 = load %struct.inode*, %struct.inode** %11, align 8
  %199 = load i32*, i32** %13, align 8
  %200 = load %struct.ocfs2_super*, %struct.ocfs2_super** %9, align 8
  %201 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 4
  %203 = load i64, i64* %22, align 8
  %204 = call i32 @ocfs2_blocks_to_clusters(i32 %202, i64 %203)
  %205 = load i32, i32* %10, align 4
  %206 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %16, align 8
  %207 = load %struct.ocfs2_truncate_context*, %struct.ocfs2_truncate_context** %14, align 8
  %208 = getelementptr inbounds %struct.ocfs2_truncate_context, %struct.ocfs2_truncate_context* %207, i32 0, i32 0
  %209 = call i32 @ocfs2_decrease_refcount(%struct.inode* %198, i32* %199, i32 %204, i32 %205, %struct.ocfs2_alloc_context* %206, i32* %208, i32 1)
  store i32 %209, i32* %17, align 4
  br label %216

210:                                              ; preds = %192
  %211 = load %struct.ocfs2_super*, %struct.ocfs2_super** %9, align 8
  %212 = load i32*, i32** %13, align 8
  %213 = load i64, i64* %22, align 8
  %214 = load i32, i32* %10, align 4
  %215 = call i32 @ocfs2_truncate_log_append(%struct.ocfs2_super* %211, i32* %212, i64 %213, i32 %214)
  store i32 %215, i32* %17, align 4
  br label %216

216:                                              ; preds = %210, %197
  %217 = load i32, i32* %17, align 4
  %218 = icmp slt i32 %217, 0
  br i1 %218, label %219, label %222

219:                                              ; preds = %216
  %220 = load i32, i32* %17, align 4
  %221 = call i32 @mlog_errno(i32 %220)
  br label %224

222:                                              ; preds = %216
  br label %223

223:                                              ; preds = %222, %189
  store i32 0, i32* %17, align 4
  br label %224

224:                                              ; preds = %223, %219, %185, %171, %141, %84, %60, %45, %34
  %225 = load %struct.buffer_head*, %struct.buffer_head** %21, align 8
  %226 = call i32 @brelse(%struct.buffer_head* %225)
  %227 = load i32, i32* %17, align 4
  %228 = call i32 @mlog_exit(i32 %227)
  %229 = load i32, i32* %17, align 4
  ret i32 %229
}

declare dso_local i32 @ocfs2_find_new_last_ext_blk(%struct.inode*, i32, %struct.ocfs2_path*, %struct.buffer_head**) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_journal_access_path(i32, i32*, %struct.ocfs2_path*) #1

declare dso_local i32 @INODE_CACHE(%struct.inode*) #1

declare dso_local i32 @ocfs2_journal_access_eb(i32*, i32, %struct.buffer_head*, i32) #1

declare dso_local i32 @ocfs2_error(i32, i8*, i32, i32) #1

declare dso_local i32 @le16_to_cpu(i64) #1

declare dso_local i32 @vfs_dq_free_space_nodirty(%struct.inode*, i32) #1

declare dso_local i32 @ocfs2_clusters_to_bytes(i32, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.TYPE_6__* @OCFS2_I(%struct.inode*) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @le32_add_cpu(i32*, i32) #1

declare dso_local i32 @ocfs2_inode_sector_count(%struct.inode*) #1

declare dso_local i32 @ocfs2_trim_tree(%struct.inode*, %struct.ocfs2_path*, i32*, %struct.ocfs2_truncate_context*, i32, i64*, i32*) #1

declare dso_local i32 @ocfs2_journal_dirty(i32*, %struct.buffer_head*) #1

declare dso_local i32 @ocfs2_decrease_refcount(%struct.inode*, i32*, i32, i32, %struct.ocfs2_alloc_context*, i32*, i32) #1

declare dso_local i32 @ocfs2_blocks_to_clusters(i32, i64) #1

declare dso_local i32 @ocfs2_truncate_log_append(%struct.ocfs2_super*, i32*, i64, i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @mlog_exit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
