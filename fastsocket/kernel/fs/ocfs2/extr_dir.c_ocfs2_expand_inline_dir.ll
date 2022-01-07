; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_dir.c_ocfs2_expand_inline_dir.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_dir.c_ocfs2_expand_inline_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i64 }
%struct.inode = type { %struct.super_block*, i32, %struct.TYPE_6__, %struct.TYPE_6__ }
%struct.super_block = type { i32, i64 }
%struct.buffer_head = type { i64 }
%struct.ocfs2_dir_lookup_result = type { %struct.buffer_head*, %struct.buffer_head*, i32 }
%struct.ocfs2_super = type { %struct.super_block* }
%struct.ocfs2_inode_info = type { i32, i32, i32 }
%struct.ocfs2_alloc_context = type { i32 }
%struct.ocfs2_dinode = type { i32, i32, i8*, i8*, i8*, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.ocfs2_extent_tree = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@OCFS2_SUBALLOC_ALLOC = common dso_local global i64 0, align 8
@EDQUOT = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@OCFS2_JOURNAL_ACCESS_CREATE = common dso_local global i32 0, align 4
@OCFS2_INLINE_DATA_FL = common dso_local global i32 0, align 4
@CURRENT_TIME = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.buffer_head*, i32, %struct.ocfs2_dir_lookup_result*, %struct.buffer_head**)* @ocfs2_expand_inline_dir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_expand_inline_dir(%struct.inode* %0, %struct.buffer_head* %1, i32 %2, %struct.ocfs2_dir_lookup_result* %3, %struct.buffer_head** %4) #0 {
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.buffer_head*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ocfs2_dir_lookup_result*, align 8
  %10 = alloca %struct.buffer_head**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.super_block*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca %struct.ocfs2_super*, align 8
  %26 = alloca %struct.ocfs2_inode_info*, align 8
  %27 = alloca %struct.ocfs2_alloc_context*, align 8
  %28 = alloca %struct.ocfs2_alloc_context*, align 8
  %29 = alloca %struct.buffer_head*, align 8
  %30 = alloca %struct.buffer_head*, align 8
  %31 = alloca %struct.buffer_head**, align 8
  %32 = alloca %struct.ocfs2_dinode*, align 8
  %33 = alloca i32*, align 8
  %34 = alloca %struct.ocfs2_extent_tree, align 4
  %35 = alloca %struct.ocfs2_extent_tree, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.ocfs2_dir_lookup_result* %3, %struct.ocfs2_dir_lookup_result** %9, align 8
  store %struct.buffer_head** %4, %struct.buffer_head*** %10, align 8
  store i32 0, i32* %15, align 4
  %39 = load %struct.inode*, %struct.inode** %6, align 8
  %40 = getelementptr inbounds %struct.inode, %struct.inode* %39, i32 0, i32 0
  %41 = load %struct.super_block*, %struct.super_block** %40, align 8
  store %struct.super_block* %41, %struct.super_block** %16, align 8
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  %42 = load %struct.super_block*, %struct.super_block** %16, align 8
  %43 = call i32 @ocfs2_inline_to_extents_credits(%struct.super_block* %42)
  store i32 %43, i32* %21, align 4
  %44 = load i32, i32* %8, align 4
  %45 = load %struct.super_block*, %struct.super_block** %16, align 8
  %46 = getelementptr inbounds %struct.super_block, %struct.super_block* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = shl i32 %44, %47
  store i32 %48, i32* %24, align 4
  %49 = load %struct.inode*, %struct.inode** %6, align 8
  %50 = getelementptr inbounds %struct.inode, %struct.inode* %49, i32 0, i32 0
  %51 = load %struct.super_block*, %struct.super_block** %50, align 8
  %52 = call %struct.ocfs2_super* @OCFS2_SB(%struct.super_block* %51)
  store %struct.ocfs2_super* %52, %struct.ocfs2_super** %25, align 8
  %53 = load %struct.inode*, %struct.inode** %6, align 8
  %54 = call %struct.ocfs2_inode_info* @OCFS2_I(%struct.inode* %53)
  store %struct.ocfs2_inode_info* %54, %struct.ocfs2_inode_info** %26, align 8
  store %struct.ocfs2_alloc_context* null, %struct.ocfs2_alloc_context** %28, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %29, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %30, align 8
  store %struct.buffer_head** null, %struct.buffer_head*** %31, align 8
  %55 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %56 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = inttoptr i64 %57 to %struct.ocfs2_dinode*
  store %struct.ocfs2_dinode* %58, %struct.ocfs2_dinode** %32, align 8
  store i32 0, i32* %36, align 4
  store i32 0, i32* %37, align 4
  %59 = load %struct.inode*, %struct.inode** %6, align 8
  %60 = call i32 @INODE_CACHE(%struct.inode* %59)
  %61 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %62 = call i32 @ocfs2_init_dinode_extent_tree(%struct.ocfs2_extent_tree* %34, i32 %60, %struct.buffer_head* %61)
  %63 = load %struct.super_block*, %struct.super_block** %16, align 8
  %64 = load i32, i32* %24, align 4
  %65 = call i32 @ocfs2_clusters_for_bytes(%struct.super_block* %63, i32 %64)
  store i32 %65, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %66 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %26, align 8
  %67 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %66, i32 0, i32 0
  %68 = call i32 @down_write(i32* %67)
  %69 = load %struct.ocfs2_super*, %struct.ocfs2_super** %25, align 8
  %70 = call i64 @ocfs2_supports_indexed_dirs(%struct.ocfs2_super* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %106

72:                                               ; preds = %5
  %73 = load %struct.super_block*, %struct.super_block** %16, align 8
  %74 = call i64 @ocfs2_add_dir_index_credits(%struct.super_block* %73)
  %75 = load i32, i32* %21, align 4
  %76 = sext i32 %75 to i64
  %77 = add nsw i64 %76, %74
  %78 = trunc i64 %77 to i32
  store i32 %78, i32* %21, align 4
  %79 = load %struct.inode*, %struct.inode** %6, align 8
  %80 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %81 = call i32 @ocfs2_new_dx_should_be_inline(%struct.inode* %79, %struct.buffer_head* %80)
  store i32 %81, i32* %20, align 4
  %82 = load i32, i32* %20, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %97, label %84

84:                                               ; preds = %72
  %85 = load i32, i32* %12, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %12, align 4
  %87 = load %struct.super_block*, %struct.super_block** %16, align 8
  %88 = call %struct.buffer_head** @ocfs2_dx_dir_kmalloc_leaves(%struct.super_block* %87, i32* %19)
  store %struct.buffer_head** %88, %struct.buffer_head*** %31, align 8
  %89 = load %struct.buffer_head**, %struct.buffer_head*** %31, align 8
  %90 = icmp ne %struct.buffer_head** %89, null
  br i1 %90, label %96, label %91

91:                                               ; preds = %84
  %92 = load i32, i32* @ENOMEM, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %17, align 4
  %94 = load i32, i32* %17, align 4
  %95 = call i32 @mlog_errno(i32 %94)
  br label %518

96:                                               ; preds = %84
  br label %97

97:                                               ; preds = %96, %72
  %98 = load %struct.ocfs2_super*, %struct.ocfs2_super** %25, align 8
  %99 = call i32 @ocfs2_reserve_new_metadata_blocks(%struct.ocfs2_super* %98, i32 1, %struct.ocfs2_alloc_context** %28)
  store i32 %99, i32* %17, align 4
  %100 = load i32, i32* %17, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %97
  %103 = load i32, i32* %17, align 4
  %104 = call i32 @mlog_errno(i32 %103)
  br label %518

105:                                              ; preds = %97
  br label %106

106:                                              ; preds = %105, %5
  %107 = load i32, i32* %11, align 4
  %108 = icmp sgt i32 %107, 2
  %109 = zext i1 %108 to i32
  %110 = call i32 @BUG_ON(i32 %109)
  %111 = load %struct.ocfs2_super*, %struct.ocfs2_super** %25, align 8
  %112 = load i32, i32* %11, align 4
  %113 = load i32, i32* %12, align 4
  %114 = add nsw i32 %112, %113
  %115 = call i32 @ocfs2_reserve_clusters(%struct.ocfs2_super* %111, i32 %114, %struct.ocfs2_alloc_context** %27)
  store i32 %115, i32* %17, align 4
  %116 = load i32, i32* %17, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %106
  %119 = load i32, i32* %17, align 4
  %120 = call i32 @mlog_errno(i32 %119)
  br label %518

121:                                              ; preds = %106
  %122 = load i32, i32* %11, align 4
  %123 = icmp eq i32 %122, 2
  br i1 %123, label %124, label %130

124:                                              ; preds = %121
  %125 = load i64, i64* @OCFS2_SUBALLOC_ALLOC, align 8
  %126 = load i32, i32* %21, align 4
  %127 = sext i32 %126 to i64
  %128 = add nsw i64 %127, %125
  %129 = trunc i64 %128 to i32
  store i32 %129, i32* %21, align 4
  br label %130

130:                                              ; preds = %124, %121
  %131 = load %struct.ocfs2_super*, %struct.ocfs2_super** %25, align 8
  %132 = load i32, i32* %21, align 4
  %133 = call i32* @ocfs2_start_trans(%struct.ocfs2_super* %131, i32 %132)
  store i32* %133, i32** %33, align 8
  %134 = load i32*, i32** %33, align 8
  %135 = call i64 @IS_ERR(i32* %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %142

137:                                              ; preds = %130
  %138 = load i32*, i32** %33, align 8
  %139 = call i32 @PTR_ERR(i32* %138)
  store i32 %139, i32* %17, align 4
  %140 = load i32, i32* %17, align 4
  %141 = call i32 @mlog_errno(i32 %140)
  br label %518

142:                                              ; preds = %130
  %143 = load %struct.inode*, %struct.inode** %6, align 8
  %144 = load %struct.ocfs2_super*, %struct.ocfs2_super** %25, align 8
  %145 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %144, i32 0, i32 0
  %146 = load %struct.super_block*, %struct.super_block** %145, align 8
  %147 = load i32, i32* %11, align 4
  %148 = load i32, i32* %12, align 4
  %149 = add nsw i32 %147, %148
  %150 = call i32 @ocfs2_clusters_to_bytes(%struct.super_block* %146, i32 %149)
  %151 = call i64 @vfs_dq_alloc_space_nodirty(%struct.inode* %143, i32 %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %156

153:                                              ; preds = %142
  %154 = load i32, i32* @EDQUOT, align 4
  %155 = sub nsw i32 0, %154
  store i32 %155, i32* %17, align 4
  br label %504

156:                                              ; preds = %142
  store i32 1, i32* %36, align 4
  %157 = load %struct.ocfs2_super*, %struct.ocfs2_super** %25, align 8
  %158 = call i64 @ocfs2_supports_indexed_dirs(%struct.ocfs2_super* %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %182

160:                                              ; preds = %156
  %161 = load i32, i32* %20, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %182, label %163

163:                                              ; preds = %160
  %164 = load %struct.inode*, %struct.inode** %6, align 8
  %165 = load i32*, i32** %33, align 8
  %166 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %27, align 8
  %167 = load %struct.buffer_head**, %struct.buffer_head*** %31, align 8
  %168 = load i32, i32* %19, align 4
  %169 = call i32 @__ocfs2_dx_dir_new_cluster(%struct.inode* %164, i32 0, i32* %165, %struct.ocfs2_alloc_context* %166, %struct.buffer_head** %167, i32 %168, i32* %22)
  store i32 %169, i32* %17, align 4
  %170 = load i32, i32* %17, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %175

172:                                              ; preds = %163
  %173 = load i32, i32* %17, align 4
  %174 = call i32 @mlog_errno(i32 %173)
  br label %504

175:                                              ; preds = %163
  %176 = load %struct.inode*, %struct.inode** %6, align 8
  %177 = getelementptr inbounds %struct.inode, %struct.inode* %176, i32 0, i32 0
  %178 = load %struct.super_block*, %struct.super_block** %177, align 8
  %179 = call i32 @ocfs2_clusters_to_bytes(%struct.super_block* %178, i32 1)
  %180 = load i32, i32* %37, align 4
  %181 = add nsw i32 %180, %179
  store i32 %181, i32* %37, align 4
  br label %182

182:                                              ; preds = %175, %160, %156
  %183 = load %struct.ocfs2_super*, %struct.ocfs2_super** %25, align 8
  %184 = load i32*, i32** %33, align 8
  %185 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %27, align 8
  %186 = call i32 @ocfs2_claim_clusters(%struct.ocfs2_super* %183, i32* %184, %struct.ocfs2_alloc_context* %185, i32 1, i32* %13, i32* %14)
  store i32 %186, i32* %17, align 4
  %187 = load i32, i32* %17, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %192

189:                                              ; preds = %182
  %190 = load i32, i32* %17, align 4
  %191 = call i32 @mlog_errno(i32 %190)
  br label %504

192:                                              ; preds = %182
  %193 = load %struct.inode*, %struct.inode** %6, align 8
  %194 = getelementptr inbounds %struct.inode, %struct.inode* %193, i32 0, i32 0
  %195 = load %struct.super_block*, %struct.super_block** %194, align 8
  %196 = call i32 @ocfs2_clusters_to_bytes(%struct.super_block* %195, i32 1)
  %197 = load i32, i32* %37, align 4
  %198 = add nsw i32 %197, %196
  store i32 %198, i32* %37, align 4
  %199 = load %struct.inode*, %struct.inode** %6, align 8
  %200 = getelementptr inbounds %struct.inode, %struct.inode* %199, i32 0, i32 0
  %201 = load %struct.super_block*, %struct.super_block** %200, align 8
  %202 = load i32, i32* %13, align 4
  %203 = call i32 @ocfs2_clusters_to_blocks(%struct.super_block* %201, i32 %202)
  store i32 %203, i32* %23, align 4
  %204 = load %struct.super_block*, %struct.super_block** %16, align 8
  %205 = load i32, i32* %23, align 4
  %206 = call %struct.buffer_head* @sb_getblk(%struct.super_block* %204, i32 %205)
  store %struct.buffer_head* %206, %struct.buffer_head** %29, align 8
  %207 = load %struct.buffer_head*, %struct.buffer_head** %29, align 8
  %208 = icmp ne %struct.buffer_head* %207, null
  br i1 %208, label %214, label %209

209:                                              ; preds = %192
  %210 = load i32, i32* @EIO, align 4
  %211 = sub nsw i32 0, %210
  store i32 %211, i32* %17, align 4
  %212 = load i32, i32* %17, align 4
  %213 = call i32 @mlog_errno(i32 %212)
  br label %504

214:                                              ; preds = %192
  %215 = load %struct.inode*, %struct.inode** %6, align 8
  %216 = call i32 @INODE_CACHE(%struct.inode* %215)
  %217 = load %struct.buffer_head*, %struct.buffer_head** %29, align 8
  %218 = call i32 @ocfs2_set_new_buffer_uptodate(i32 %216, %struct.buffer_head* %217)
  %219 = load i32*, i32** %33, align 8
  %220 = load %struct.inode*, %struct.inode** %6, align 8
  %221 = call i32 @INODE_CACHE(%struct.inode* %220)
  %222 = load %struct.buffer_head*, %struct.buffer_head** %29, align 8
  %223 = load i32, i32* @OCFS2_JOURNAL_ACCESS_CREATE, align 4
  %224 = call i32 @ocfs2_journal_access_db(i32* %219, i32 %221, %struct.buffer_head* %222, i32 %223)
  store i32 %224, i32* %17, align 4
  %225 = load i32, i32* %17, align 4
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %230

227:                                              ; preds = %214
  %228 = load i32, i32* %17, align 4
  %229 = call i32 @mlog_errno(i32 %228)
  br label %504

230:                                              ; preds = %214
  %231 = load %struct.buffer_head*, %struct.buffer_head** %29, align 8
  %232 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %231, i32 0, i32 0
  %233 = load i64, i64* %232, align 8
  %234 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %32, align 8
  %235 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %234, i32 0, i32 6
  %236 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %235, i32 0, i32 0
  %237 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 4
  %239 = load %struct.inode*, %struct.inode** %6, align 8
  %240 = call i64 @i_size_read(%struct.inode* %239)
  %241 = call i32 @memcpy(i64 %233, i32 %238, i64 %240)
  %242 = load %struct.buffer_head*, %struct.buffer_head** %29, align 8
  %243 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %242, i32 0, i32 0
  %244 = load i64, i64* %243, align 8
  %245 = load %struct.inode*, %struct.inode** %6, align 8
  %246 = call i64 @i_size_read(%struct.inode* %245)
  %247 = add nsw i64 %244, %246
  %248 = load %struct.super_block*, %struct.super_block** %16, align 8
  %249 = getelementptr inbounds %struct.super_block, %struct.super_block* %248, i32 0, i32 1
  %250 = load i64, i64* %249, align 8
  %251 = load %struct.inode*, %struct.inode** %6, align 8
  %252 = call i64 @i_size_read(%struct.inode* %251)
  %253 = sub nsw i64 %250, %252
  %254 = call i32 @memset(i64 %247, i32 0, i64 %253)
  %255 = load %struct.buffer_head*, %struct.buffer_head** %29, align 8
  %256 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %255, i32 0, i32 0
  %257 = load i64, i64* %256, align 8
  %258 = load %struct.inode*, %struct.inode** %6, align 8
  %259 = call i64 @i_size_read(%struct.inode* %258)
  %260 = load %struct.inode*, %struct.inode** %6, align 8
  %261 = call i32 @ocfs2_expand_last_dirent(i64 %257, i64 %259, %struct.inode* %260)
  store i32 %261, i32* %18, align 4
  %262 = load %struct.inode*, %struct.inode** %6, align 8
  %263 = call i64 @ocfs2_new_dir_wants_trailer(%struct.inode* %262)
  %264 = icmp ne i64 %263, 0
  br i1 %264, label %265, label %270

265:                                              ; preds = %230
  %266 = load %struct.inode*, %struct.inode** %6, align 8
  %267 = load %struct.buffer_head*, %struct.buffer_head** %29, align 8
  %268 = load i32, i32* %18, align 4
  %269 = call i32 @ocfs2_init_dir_trailer(%struct.inode* %266, %struct.buffer_head* %267, i32 %268)
  br label %270

270:                                              ; preds = %265, %230
  %271 = load i32*, i32** %33, align 8
  %272 = load %struct.buffer_head*, %struct.buffer_head** %29, align 8
  %273 = call i32 @ocfs2_journal_dirty(i32* %271, %struct.buffer_head* %272)
  store i32 %273, i32* %17, align 4
  %274 = load i32, i32* %17, align 4
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %276, label %279

276:                                              ; preds = %270
  %277 = load i32, i32* %17, align 4
  %278 = call i32 @mlog_errno(i32 %277)
  br label %504

279:                                              ; preds = %270
  %280 = load %struct.ocfs2_super*, %struct.ocfs2_super** %25, align 8
  %281 = call i64 @ocfs2_supports_indexed_dirs(%struct.ocfs2_super* %280)
  %282 = icmp ne i64 %281, 0
  br i1 %282, label %283, label %299

283:                                              ; preds = %279
  %284 = load i32, i32* %20, align 4
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %299, label %286

286:                                              ; preds = %283
  %287 = load %struct.inode*, %struct.inode** %6, align 8
  %288 = load i32*, i32** %33, align 8
  %289 = load %struct.buffer_head**, %struct.buffer_head*** %31, align 8
  %290 = load i32, i32* %19, align 4
  %291 = load %struct.buffer_head*, %struct.buffer_head** %29, align 8
  %292 = call i32 @ocfs2_dx_dir_index_block(%struct.inode* %287, i32* %288, %struct.buffer_head** %289, i32 %290, i32* %15, %struct.buffer_head* %291)
  store i32 %292, i32* %17, align 4
  %293 = load i32, i32* %17, align 4
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %295, label %298

295:                                              ; preds = %286
  %296 = load i32, i32* %17, align 4
  %297 = call i32 @mlog_errno(i32 %296)
  br label %504

298:                                              ; preds = %286
  br label %299

299:                                              ; preds = %298, %283, %279
  %300 = load i32*, i32** %33, align 8
  %301 = load %struct.inode*, %struct.inode** %6, align 8
  %302 = call i32 @INODE_CACHE(%struct.inode* %301)
  %303 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %304 = load i32, i32* @OCFS2_JOURNAL_ACCESS_CREATE, align 4
  %305 = call i32 @ocfs2_journal_access_di(i32* %300, i32 %302, %struct.buffer_head* %303, i32 %304)
  store i32 %305, i32* %17, align 4
  %306 = load i32, i32* %17, align 4
  %307 = icmp ne i32 %306, 0
  br i1 %307, label %308, label %311

308:                                              ; preds = %299
  %309 = load i32, i32* %17, align 4
  %310 = call i32 @mlog_errno(i32 %309)
  br label %504

311:                                              ; preds = %299
  %312 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %26, align 8
  %313 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %312, i32 0, i32 1
  %314 = call i32 @spin_lock(i32* %313)
  %315 = load i32, i32* @OCFS2_INLINE_DATA_FL, align 4
  %316 = xor i32 %315, -1
  %317 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %26, align 8
  %318 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %317, i32 0, i32 2
  %319 = load i32, i32* %318, align 4
  %320 = and i32 %319, %316
  store i32 %320, i32* %318, align 4
  %321 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %26, align 8
  %322 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %321, i32 0, i32 2
  %323 = load i32, i32* %322, align 4
  %324 = call i32 @cpu_to_le16(i32 %323)
  %325 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %32, align 8
  %326 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %325, i32 0, i32 5
  store i32 %324, i32* %326, align 8
  %327 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %26, align 8
  %328 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %327, i32 0, i32 1
  %329 = call i32 @spin_unlock(i32* %328)
  %330 = load %struct.inode*, %struct.inode** %6, align 8
  %331 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %32, align 8
  %332 = call i32 @ocfs2_dinode_new_extent_list(%struct.inode* %330, %struct.ocfs2_dinode* %331)
  %333 = load %struct.inode*, %struct.inode** %6, align 8
  %334 = load %struct.super_block*, %struct.super_block** %16, align 8
  %335 = getelementptr inbounds %struct.super_block, %struct.super_block* %334, i32 0, i32 1
  %336 = load i64, i64* %335, align 8
  %337 = call i32 @i_size_write(%struct.inode* %333, i64 %336)
  %338 = load %struct.inode*, %struct.inode** %6, align 8
  %339 = getelementptr inbounds %struct.inode, %struct.inode* %338, i32 0, i32 3
  %340 = load %struct.inode*, %struct.inode** %6, align 8
  %341 = getelementptr inbounds %struct.inode, %struct.inode* %340, i32 0, i32 2
  %342 = bitcast %struct.TYPE_6__* %341 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %342, i8* align 8 bitcast (%struct.TYPE_6__* @CURRENT_TIME to i8*), i64 16, i1 false)
  %343 = bitcast %struct.TYPE_6__* %339 to i8*
  %344 = bitcast %struct.TYPE_6__* %341 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %343, i8* align 8 %344, i64 16, i1 false)
  %345 = load %struct.super_block*, %struct.super_block** %16, align 8
  %346 = getelementptr inbounds %struct.super_block, %struct.super_block* %345, i32 0, i32 1
  %347 = load i64, i64* %346, align 8
  %348 = call i8* @cpu_to_le64(i64 %347)
  %349 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %32, align 8
  %350 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %349, i32 0, i32 4
  store i8* %348, i8** %350, align 8
  %351 = load %struct.inode*, %struct.inode** %6, align 8
  %352 = getelementptr inbounds %struct.inode, %struct.inode* %351, i32 0, i32 2
  %353 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %352, i32 0, i32 1
  %354 = load i64, i64* %353, align 8
  %355 = call i8* @cpu_to_le64(i64 %354)
  %356 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %32, align 8
  %357 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %356, i32 0, i32 2
  store i8* %355, i8** %357, align 8
  %358 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %32, align 8
  %359 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %358, i32 0, i32 3
  store i8* %355, i8** %359, align 8
  %360 = load %struct.inode*, %struct.inode** %6, align 8
  %361 = getelementptr inbounds %struct.inode, %struct.inode* %360, i32 0, i32 2
  %362 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %361, i32 0, i32 0
  %363 = load i32, i32* %362, align 8
  %364 = call i32 @cpu_to_le32(i32 %363)
  %365 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %32, align 8
  %366 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %365, i32 0, i32 0
  store i32 %364, i32* %366, align 8
  %367 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %32, align 8
  %368 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %367, i32 0, i32 1
  store i32 %364, i32* %368, align 4
  %369 = load i32*, i32** %33, align 8
  %370 = load i32, i32* %23, align 4
  %371 = load i32, i32* %14, align 4
  %372 = call i32 @ocfs2_insert_extent(i32* %369, %struct.ocfs2_extent_tree* %34, i32 0, i32 %370, i32 %371, i32 0, i32* null)
  store i32 %372, i32* %17, align 4
  %373 = load i32, i32* %17, align 4
  %374 = icmp ne i32 %373, 0
  br i1 %374, label %375, label %378

375:                                              ; preds = %311
  %376 = load i32, i32* %17, align 4
  %377 = call i32 @mlog_errno(i32 %376)
  br label %504

378:                                              ; preds = %311
  %379 = load %struct.inode*, %struct.inode** %6, align 8
  %380 = call i32 @ocfs2_inode_sector_count(%struct.inode* %379)
  %381 = load %struct.inode*, %struct.inode** %6, align 8
  %382 = getelementptr inbounds %struct.inode, %struct.inode* %381, i32 0, i32 1
  store i32 %380, i32* %382, align 8
  %383 = load i32*, i32** %33, align 8
  %384 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %385 = call i32 @ocfs2_journal_dirty(i32* %383, %struct.buffer_head* %384)
  store i32 %385, i32* %17, align 4
  %386 = load i32, i32* %17, align 4
  %387 = icmp ne i32 %386, 0
  br i1 %387, label %388, label %391

388:                                              ; preds = %378
  %389 = load i32, i32* %17, align 4
  %390 = call i32 @mlog_errno(i32 %389)
  br label %504

391:                                              ; preds = %378
  %392 = load %struct.ocfs2_super*, %struct.ocfs2_super** %25, align 8
  %393 = call i64 @ocfs2_supports_indexed_dirs(%struct.ocfs2_super* %392)
  %394 = icmp ne i64 %393, 0
  br i1 %394, label %395, label %433

395:                                              ; preds = %391
  %396 = load %struct.ocfs2_super*, %struct.ocfs2_super** %25, align 8
  %397 = load i32*, i32** %33, align 8
  %398 = load %struct.inode*, %struct.inode** %6, align 8
  %399 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %400 = load %struct.buffer_head*, %struct.buffer_head** %29, align 8
  %401 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %28, align 8
  %402 = load i32, i32* %20, align 4
  %403 = load i32, i32* %15, align 4
  %404 = call i32 @ocfs2_dx_dir_attach_index(%struct.ocfs2_super* %396, i32* %397, %struct.inode* %398, %struct.buffer_head* %399, %struct.buffer_head* %400, %struct.ocfs2_alloc_context* %401, i32 %402, i32 %403, %struct.buffer_head** %30)
  store i32 %404, i32* %17, align 4
  %405 = load i32, i32* %17, align 4
  %406 = icmp ne i32 %405, 0
  br i1 %406, label %407, label %410

407:                                              ; preds = %395
  %408 = load i32, i32* %17, align 4
  %409 = call i32 @mlog_errno(i32 %408)
  br label %504

410:                                              ; preds = %395
  %411 = load i32, i32* %20, align 4
  %412 = icmp ne i32 %411, 0
  br i1 %412, label %413, label %418

413:                                              ; preds = %410
  %414 = load %struct.inode*, %struct.inode** %6, align 8
  %415 = load %struct.buffer_head*, %struct.buffer_head** %30, align 8
  %416 = load %struct.buffer_head*, %struct.buffer_head** %29, align 8
  %417 = call i32 @ocfs2_dx_dir_index_root_block(%struct.inode* %414, %struct.buffer_head* %415, %struct.buffer_head* %416)
  br label %432

418:                                              ; preds = %410
  %419 = load %struct.inode*, %struct.inode** %6, align 8
  %420 = call i32 @INODE_CACHE(%struct.inode* %419)
  %421 = load %struct.buffer_head*, %struct.buffer_head** %30, align 8
  %422 = call i32 @ocfs2_init_dx_root_extent_tree(%struct.ocfs2_extent_tree* %35, i32 %420, %struct.buffer_head* %421)
  %423 = load i32*, i32** %33, align 8
  %424 = load i32, i32* %22, align 4
  %425 = call i32 @ocfs2_insert_extent(i32* %423, %struct.ocfs2_extent_tree* %35, i32 0, i32 %424, i32 1, i32 0, i32* null)
  store i32 %425, i32* %17, align 4
  %426 = load i32, i32* %17, align 4
  %427 = icmp ne i32 %426, 0
  br i1 %427, label %428, label %431

428:                                              ; preds = %418
  %429 = load i32, i32* %17, align 4
  %430 = call i32 @mlog_errno(i32 %429)
  br label %431

431:                                              ; preds = %428, %418
  br label %432

432:                                              ; preds = %431, %413
  br label %433

433:                                              ; preds = %432, %391
  %434 = load i32, i32* %11, align 4
  %435 = load i32, i32* %14, align 4
  %436 = icmp sgt i32 %434, %435
  br i1 %436, label %437, label %469

437:                                              ; preds = %433
  %438 = load %struct.ocfs2_super*, %struct.ocfs2_super** %25, align 8
  %439 = load i32*, i32** %33, align 8
  %440 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %27, align 8
  %441 = call i32 @ocfs2_claim_clusters(%struct.ocfs2_super* %438, i32* %439, %struct.ocfs2_alloc_context* %440, i32 1, i32* %13, i32* %14)
  store i32 %441, i32* %17, align 4
  %442 = load i32, i32* %17, align 4
  %443 = icmp ne i32 %442, 0
  br i1 %443, label %444, label %447

444:                                              ; preds = %437
  %445 = load i32, i32* %17, align 4
  %446 = call i32 @mlog_errno(i32 %445)
  br label %504

447:                                              ; preds = %437
  %448 = load %struct.inode*, %struct.inode** %6, align 8
  %449 = getelementptr inbounds %struct.inode, %struct.inode* %448, i32 0, i32 0
  %450 = load %struct.super_block*, %struct.super_block** %449, align 8
  %451 = load i32, i32* %13, align 4
  %452 = call i32 @ocfs2_clusters_to_blocks(%struct.super_block* %450, i32 %451)
  store i32 %452, i32* %23, align 4
  %453 = load i32*, i32** %33, align 8
  %454 = load i32, i32* %23, align 4
  %455 = load i32, i32* %14, align 4
  %456 = call i32 @ocfs2_insert_extent(i32* %453, %struct.ocfs2_extent_tree* %34, i32 1, i32 %454, i32 %455, i32 0, i32* null)
  store i32 %456, i32* %17, align 4
  %457 = load i32, i32* %17, align 4
  %458 = icmp ne i32 %457, 0
  br i1 %458, label %459, label %462

459:                                              ; preds = %447
  %460 = load i32, i32* %17, align 4
  %461 = call i32 @mlog_errno(i32 %460)
  br label %504

462:                                              ; preds = %447
  %463 = load %struct.inode*, %struct.inode** %6, align 8
  %464 = getelementptr inbounds %struct.inode, %struct.inode* %463, i32 0, i32 0
  %465 = load %struct.super_block*, %struct.super_block** %464, align 8
  %466 = call i32 @ocfs2_clusters_to_bytes(%struct.super_block* %465, i32 1)
  %467 = load i32, i32* %37, align 4
  %468 = add nsw i32 %467, %466
  store i32 %468, i32* %37, align 4
  br label %469

469:                                              ; preds = %462, %433
  %470 = load %struct.buffer_head*, %struct.buffer_head** %29, align 8
  %471 = load %struct.buffer_head**, %struct.buffer_head*** %10, align 8
  store %struct.buffer_head* %470, %struct.buffer_head** %471, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %29, align 8
  %472 = load %struct.ocfs2_super*, %struct.ocfs2_super** %25, align 8
  %473 = call i64 @ocfs2_supports_indexed_dirs(%struct.ocfs2_super* %472)
  %474 = icmp ne i64 %473, 0
  br i1 %474, label %475, label %503

475:                                              ; preds = %469
  %476 = load i32, i32* %20, align 4
  %477 = icmp ne i32 %476, 0
  br i1 %477, label %499, label %478

478:                                              ; preds = %475
  %479 = load %struct.inode*, %struct.inode** %6, align 8
  %480 = getelementptr inbounds %struct.inode, %struct.inode* %479, i32 0, i32 0
  %481 = load %struct.super_block*, %struct.super_block** %480, align 8
  %482 = call %struct.ocfs2_super* @OCFS2_SB(%struct.super_block* %481)
  %483 = load %struct.ocfs2_dir_lookup_result*, %struct.ocfs2_dir_lookup_result** %9, align 8
  %484 = getelementptr inbounds %struct.ocfs2_dir_lookup_result, %struct.ocfs2_dir_lookup_result* %483, i32 0, i32 2
  %485 = call i32 @ocfs2_dx_dir_hash_idx(%struct.ocfs2_super* %482, i32* %484)
  store i32 %485, i32* %38, align 4
  %486 = load %struct.buffer_head**, %struct.buffer_head*** %31, align 8
  %487 = load i32, i32* %38, align 4
  %488 = zext i32 %487 to i64
  %489 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %486, i64 %488
  %490 = load %struct.buffer_head*, %struct.buffer_head** %489, align 8
  %491 = call i32 @get_bh(%struct.buffer_head* %490)
  %492 = load %struct.buffer_head**, %struct.buffer_head*** %31, align 8
  %493 = load i32, i32* %38, align 4
  %494 = zext i32 %493 to i64
  %495 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %492, i64 %494
  %496 = load %struct.buffer_head*, %struct.buffer_head** %495, align 8
  %497 = load %struct.ocfs2_dir_lookup_result*, %struct.ocfs2_dir_lookup_result** %9, align 8
  %498 = getelementptr inbounds %struct.ocfs2_dir_lookup_result, %struct.ocfs2_dir_lookup_result* %497, i32 0, i32 1
  store %struct.buffer_head* %496, %struct.buffer_head** %498, align 8
  br label %499

499:                                              ; preds = %478, %475
  %500 = load %struct.buffer_head*, %struct.buffer_head** %30, align 8
  %501 = load %struct.ocfs2_dir_lookup_result*, %struct.ocfs2_dir_lookup_result** %9, align 8
  %502 = getelementptr inbounds %struct.ocfs2_dir_lookup_result, %struct.ocfs2_dir_lookup_result* %501, i32 0, i32 0
  store %struct.buffer_head* %500, %struct.buffer_head** %502, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %30, align 8
  br label %503

503:                                              ; preds = %499, %469
  br label %504

504:                                              ; preds = %503, %459, %444, %407, %388, %375, %308, %295, %276, %227, %209, %189, %172, %153
  %505 = load i32, i32* %17, align 4
  %506 = icmp slt i32 %505, 0
  br i1 %506, label %507, label %514

507:                                              ; preds = %504
  %508 = load i32, i32* %36, align 4
  %509 = icmp ne i32 %508, 0
  br i1 %509, label %510, label %514

510:                                              ; preds = %507
  %511 = load %struct.inode*, %struct.inode** %6, align 8
  %512 = load i32, i32* %37, align 4
  %513 = call i32 @vfs_dq_free_space_nodirty(%struct.inode* %511, i32 %512)
  br label %514

514:                                              ; preds = %510, %507, %504
  %515 = load %struct.ocfs2_super*, %struct.ocfs2_super** %25, align 8
  %516 = load i32*, i32** %33, align 8
  %517 = call i32 @ocfs2_commit_trans(%struct.ocfs2_super* %515, i32* %516)
  br label %518

518:                                              ; preds = %514, %137, %118, %102, %91
  %519 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %26, align 8
  %520 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %519, i32 0, i32 0
  %521 = call i32 @up_write(i32* %520)
  %522 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %27, align 8
  %523 = icmp ne %struct.ocfs2_alloc_context* %522, null
  br i1 %523, label %524, label %527

524:                                              ; preds = %518
  %525 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %27, align 8
  %526 = call i32 @ocfs2_free_alloc_context(%struct.ocfs2_alloc_context* %525)
  br label %527

527:                                              ; preds = %524, %518
  %528 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %28, align 8
  %529 = icmp ne %struct.ocfs2_alloc_context* %528, null
  br i1 %529, label %530, label %533

530:                                              ; preds = %527
  %531 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %28, align 8
  %532 = call i32 @ocfs2_free_alloc_context(%struct.ocfs2_alloc_context* %531)
  br label %533

533:                                              ; preds = %530, %527
  %534 = load %struct.buffer_head**, %struct.buffer_head*** %31, align 8
  %535 = icmp ne %struct.buffer_head** %534, null
  br i1 %535, label %536, label %554

536:                                              ; preds = %533
  store i32 0, i32* %18, align 4
  br label %537

537:                                              ; preds = %548, %536
  %538 = load i32, i32* %18, align 4
  %539 = load i32, i32* %19, align 4
  %540 = icmp slt i32 %538, %539
  br i1 %540, label %541, label %551

541:                                              ; preds = %537
  %542 = load %struct.buffer_head**, %struct.buffer_head*** %31, align 8
  %543 = load i32, i32* %18, align 4
  %544 = sext i32 %543 to i64
  %545 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %542, i64 %544
  %546 = load %struct.buffer_head*, %struct.buffer_head** %545, align 8
  %547 = call i32 @brelse(%struct.buffer_head* %546)
  br label %548

548:                                              ; preds = %541
  %549 = load i32, i32* %18, align 4
  %550 = add nsw i32 %549, 1
  store i32 %550, i32* %18, align 4
  br label %537

551:                                              ; preds = %537
  %552 = load %struct.buffer_head**, %struct.buffer_head*** %31, align 8
  %553 = call i32 @kfree(%struct.buffer_head** %552)
  br label %554

554:                                              ; preds = %551, %533
  %555 = load %struct.buffer_head*, %struct.buffer_head** %29, align 8
  %556 = call i32 @brelse(%struct.buffer_head* %555)
  %557 = load %struct.buffer_head*, %struct.buffer_head** %30, align 8
  %558 = call i32 @brelse(%struct.buffer_head* %557)
  %559 = load i32, i32* %17, align 4
  ret i32 %559
}

declare dso_local i32 @ocfs2_inline_to_extents_credits(%struct.super_block*) #1

declare dso_local %struct.ocfs2_super* @OCFS2_SB(%struct.super_block*) #1

declare dso_local %struct.ocfs2_inode_info* @OCFS2_I(%struct.inode*) #1

declare dso_local i32 @ocfs2_init_dinode_extent_tree(%struct.ocfs2_extent_tree*, i32, %struct.buffer_head*) #1

declare dso_local i32 @INODE_CACHE(%struct.inode*) #1

declare dso_local i32 @ocfs2_clusters_for_bytes(%struct.super_block*, i32) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i64 @ocfs2_supports_indexed_dirs(%struct.ocfs2_super*) #1

declare dso_local i64 @ocfs2_add_dir_index_credits(%struct.super_block*) #1

declare dso_local i32 @ocfs2_new_dx_should_be_inline(%struct.inode*, %struct.buffer_head*) #1

declare dso_local %struct.buffer_head** @ocfs2_dx_dir_kmalloc_leaves(%struct.super_block*, i32*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_reserve_new_metadata_blocks(%struct.ocfs2_super*, i32, %struct.ocfs2_alloc_context**) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @ocfs2_reserve_clusters(%struct.ocfs2_super*, i32, %struct.ocfs2_alloc_context**) #1

declare dso_local i32* @ocfs2_start_trans(%struct.ocfs2_super*, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i64 @vfs_dq_alloc_space_nodirty(%struct.inode*, i32) #1

declare dso_local i32 @ocfs2_clusters_to_bytes(%struct.super_block*, i32) #1

declare dso_local i32 @__ocfs2_dx_dir_new_cluster(%struct.inode*, i32, i32*, %struct.ocfs2_alloc_context*, %struct.buffer_head**, i32, i32*) #1

declare dso_local i32 @ocfs2_claim_clusters(%struct.ocfs2_super*, i32*, %struct.ocfs2_alloc_context*, i32, i32*, i32*) #1

declare dso_local i32 @ocfs2_clusters_to_blocks(%struct.super_block*, i32) #1

declare dso_local %struct.buffer_head* @sb_getblk(%struct.super_block*, i32) #1

declare dso_local i32 @ocfs2_set_new_buffer_uptodate(i32, %struct.buffer_head*) #1

declare dso_local i32 @ocfs2_journal_access_db(i32*, i32, %struct.buffer_head*, i32) #1

declare dso_local i32 @memcpy(i64, i32, i64) #1

declare dso_local i64 @i_size_read(%struct.inode*) #1

declare dso_local i32 @memset(i64, i32, i64) #1

declare dso_local i32 @ocfs2_expand_last_dirent(i64, i64, %struct.inode*) #1

declare dso_local i64 @ocfs2_new_dir_wants_trailer(%struct.inode*) #1

declare dso_local i32 @ocfs2_init_dir_trailer(%struct.inode*, %struct.buffer_head*, i32) #1

declare dso_local i32 @ocfs2_journal_dirty(i32*, %struct.buffer_head*) #1

declare dso_local i32 @ocfs2_dx_dir_index_block(%struct.inode*, i32*, %struct.buffer_head**, i32, i32*, %struct.buffer_head*) #1

declare dso_local i32 @ocfs2_journal_access_di(i32*, i32, %struct.buffer_head*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @ocfs2_dinode_new_extent_list(%struct.inode*, %struct.ocfs2_dinode*) #1

declare dso_local i32 @i_size_write(%struct.inode*, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i8* @cpu_to_le64(i64) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @ocfs2_insert_extent(i32*, %struct.ocfs2_extent_tree*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @ocfs2_inode_sector_count(%struct.inode*) #1

declare dso_local i32 @ocfs2_dx_dir_attach_index(%struct.ocfs2_super*, i32*, %struct.inode*, %struct.buffer_head*, %struct.buffer_head*, %struct.ocfs2_alloc_context*, i32, i32, %struct.buffer_head**) #1

declare dso_local i32 @ocfs2_dx_dir_index_root_block(%struct.inode*, %struct.buffer_head*, %struct.buffer_head*) #1

declare dso_local i32 @ocfs2_init_dx_root_extent_tree(%struct.ocfs2_extent_tree*, i32, %struct.buffer_head*) #1

declare dso_local i32 @ocfs2_dx_dir_hash_idx(%struct.ocfs2_super*, i32*) #1

declare dso_local i32 @get_bh(%struct.buffer_head*) #1

declare dso_local i32 @vfs_dq_free_space_nodirty(%struct.inode*, i32) #1

declare dso_local i32 @ocfs2_commit_trans(%struct.ocfs2_super*, i32*) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @ocfs2_free_alloc_context(%struct.ocfs2_alloc_context*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @kfree(%struct.buffer_head**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
