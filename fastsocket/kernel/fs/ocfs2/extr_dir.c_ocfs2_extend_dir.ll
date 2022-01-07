; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_dir.c_ocfs2_extend_dir.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_dir.c_ocfs2_extend_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_super = type { %struct.super_block* }
%struct.super_block = type { i32 }
%struct.inode = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }
%struct.buffer_head = type { i64 }
%struct.ocfs2_dir_lookup_result = type { %struct.buffer_head* }
%struct.ocfs2_dinode = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.ocfs2_extent_list }
%struct.ocfs2_extent_list = type { i32 }
%struct.ocfs2_alloc_context = type { i32 }
%struct.ocfs2_dir_entry = type { i8*, i64 }
%struct.ocfs2_extent_tree = type { i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i64 }

@OCFS2_INLINE_DATA_FL = common dso_local global i32 0, align 4
@OCFS2_SIMPLE_DIR_EXTEND_CREDITS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"extending dir %llu (i_size = %lld)\0A\00", align 1
@ENOSPC = common dso_local global i32 0, align 4
@OCFS2_JOURNAL_ACCESS_CREATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocfs2_super*, %struct.inode*, %struct.buffer_head*, i32, %struct.ocfs2_dir_lookup_result*, %struct.buffer_head**)* @ocfs2_extend_dir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_extend_dir(%struct.ocfs2_super* %0, %struct.inode* %1, %struct.buffer_head* %2, i32 %3, %struct.ocfs2_dir_lookup_result* %4, %struct.buffer_head** %5) #0 {
  %7 = alloca %struct.ocfs2_super*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.buffer_head*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.ocfs2_dir_lookup_result*, align 8
  %12 = alloca %struct.buffer_head**, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca %struct.ocfs2_dinode*, align 8
  %19 = alloca %struct.ocfs2_extent_list*, align 8
  %20 = alloca %struct.ocfs2_alloc_context*, align 8
  %21 = alloca %struct.ocfs2_alloc_context*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca %struct.buffer_head*, align 8
  %24 = alloca %struct.ocfs2_dir_entry*, align 8
  %25 = alloca %struct.super_block*, align 8
  %26 = alloca %struct.ocfs2_extent_tree, align 4
  %27 = alloca %struct.buffer_head*, align 8
  store %struct.ocfs2_super* %0, %struct.ocfs2_super** %7, align 8
  store %struct.inode* %1, %struct.inode** %8, align 8
  store %struct.buffer_head* %2, %struct.buffer_head** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.ocfs2_dir_lookup_result* %4, %struct.ocfs2_dir_lookup_result** %11, align 8
  store %struct.buffer_head** %5, %struct.buffer_head*** %12, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %16, align 4
  %28 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %29 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = inttoptr i64 %30 to %struct.ocfs2_dinode*
  store %struct.ocfs2_dinode* %31, %struct.ocfs2_dinode** %18, align 8
  %32 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %18, align 8
  %33 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  store %struct.ocfs2_extent_list* %34, %struct.ocfs2_extent_list** %19, align 8
  store %struct.ocfs2_alloc_context* null, %struct.ocfs2_alloc_context** %20, align 8
  store %struct.ocfs2_alloc_context* null, %struct.ocfs2_alloc_context** %21, align 8
  store i32* null, i32** %22, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %23, align 8
  %35 = load %struct.ocfs2_super*, %struct.ocfs2_super** %7, align 8
  %36 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %35, i32 0, i32 0
  %37 = load %struct.super_block*, %struct.super_block** %36, align 8
  store %struct.super_block* %37, %struct.super_block** %25, align 8
  %38 = load %struct.ocfs2_dir_lookup_result*, %struct.ocfs2_dir_lookup_result** %11, align 8
  %39 = getelementptr inbounds %struct.ocfs2_dir_lookup_result, %struct.ocfs2_dir_lookup_result* %38, i32 0, i32 0
  %40 = load %struct.buffer_head*, %struct.buffer_head** %39, align 8
  store %struct.buffer_head* %40, %struct.buffer_head** %27, align 8
  %41 = call i32 (...) @mlog_entry_void()
  %42 = load %struct.inode*, %struct.inode** %8, align 8
  %43 = call %struct.TYPE_6__* @OCFS2_I(%struct.inode* %42)
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @OCFS2_INLINE_DATA_FL, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %85

49:                                               ; preds = %6
  %50 = load %struct.buffer_head*, %struct.buffer_head** %27, align 8
  %51 = call i32 @BUG_ON(%struct.buffer_head* %50)
  %52 = load %struct.inode*, %struct.inode** %8, align 8
  %53 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %54 = load i32, i32* %10, align 4
  %55 = load %struct.ocfs2_dir_lookup_result*, %struct.ocfs2_dir_lookup_result** %11, align 8
  %56 = call i32 @ocfs2_expand_inline_dir(%struct.inode* %52, %struct.buffer_head* %53, i32 %54, %struct.ocfs2_dir_lookup_result* %55, %struct.buffer_head** %23)
  store i32 %56, i32* %13, align 4
  %57 = load i32, i32* %13, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %49
  %60 = load i32, i32* %13, align 4
  %61 = call i32 @mlog_errno(i32 %60)
  br label %314

62:                                               ; preds = %49
  %63 = load %struct.ocfs2_dir_lookup_result*, %struct.ocfs2_dir_lookup_result** %11, align 8
  %64 = getelementptr inbounds %struct.ocfs2_dir_lookup_result, %struct.ocfs2_dir_lookup_result* %63, i32 0, i32 0
  %65 = load %struct.buffer_head*, %struct.buffer_head** %64, align 8
  store %struct.buffer_head* %65, %struct.buffer_head** %27, align 8
  %66 = load i32, i32* %10, align 4
  %67 = icmp eq i32 %66, 1
  br i1 %67, label %68, label %75

68:                                               ; preds = %62
  %69 = load %struct.buffer_head*, %struct.buffer_head** %23, align 8
  %70 = icmp eq %struct.buffer_head* %69, null
  %71 = zext i1 %70 to i32
  %72 = sext i32 %71 to i64
  %73 = inttoptr i64 %72 to %struct.buffer_head*
  %74 = call i32 @BUG_ON(%struct.buffer_head* %73)
  br label %308

75:                                               ; preds = %62
  %76 = load %struct.buffer_head*, %struct.buffer_head** %23, align 8
  %77 = call i32 @brelse(%struct.buffer_head* %76)
  store %struct.buffer_head* null, %struct.buffer_head** %23, align 8
  %78 = load %struct.inode*, %struct.inode** %8, align 8
  %79 = call %struct.TYPE_6__* @OCFS2_I(%struct.inode* %78)
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 1
  %81 = call i32 @down_write(i32* %80)
  store i32 1, i32* %16, align 4
  %82 = load %struct.inode*, %struct.inode** %8, align 8
  %83 = call i64 @i_size_read(%struct.inode* %82)
  store i64 %83, i64* %17, align 8
  %84 = load i32, i32* @OCFS2_SIMPLE_DIR_EXTEND_CREDITS, align 4
  store i32 %84, i32* %14, align 4
  br label %171

85:                                               ; preds = %6
  %86 = load %struct.inode*, %struct.inode** %8, align 8
  %87 = call %struct.TYPE_6__* @OCFS2_I(%struct.inode* %86)
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 1
  %89 = call i32 @down_write(i32* %88)
  store i32 1, i32* %16, align 4
  %90 = load %struct.inode*, %struct.inode** %8, align 8
  %91 = call i64 @i_size_read(%struct.inode* %90)
  store i64 %91, i64* %17, align 8
  %92 = load %struct.inode*, %struct.inode** %8, align 8
  %93 = call %struct.TYPE_6__* @OCFS2_I(%struct.inode* %92)
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 4
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* %17, align 8
  %97 = call i32 @mlog(i32 0, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i64 %95, i64 %96)
  %98 = load %struct.inode*, %struct.inode** %8, align 8
  %99 = call %struct.TYPE_6__* @OCFS2_I(%struct.inode* %98)
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 2
  %101 = call i32 @spin_lock(i32* %100)
  %102 = load i64, i64* %17, align 8
  %103 = load %struct.super_block*, %struct.super_block** %25, align 8
  %104 = load %struct.inode*, %struct.inode** %8, align 8
  %105 = call %struct.TYPE_6__* @OCFS2_I(%struct.inode* %104)
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 4
  %108 = call i64 @ocfs2_clusters_to_bytes(%struct.super_block* %103, i32 %107)
  %109 = icmp eq i64 %102, %108
  br i1 %109, label %110, label %164

110:                                              ; preds = %85
  %111 = load %struct.inode*, %struct.inode** %8, align 8
  %112 = call %struct.TYPE_6__* @OCFS2_I(%struct.inode* %111)
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 2
  %114 = call i32 @spin_unlock(i32* %113)
  %115 = load %struct.inode*, %struct.inode** %8, align 8
  %116 = call i32 @INODE_CACHE(%struct.inode* %115)
  %117 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %118 = call i32 @ocfs2_init_dinode_extent_tree(%struct.ocfs2_extent_tree* %26, i32 %116, %struct.buffer_head* %117)
  %119 = load %struct.ocfs2_super*, %struct.ocfs2_super** %7, align 8
  %120 = call i32 @ocfs2_num_free_extents(%struct.ocfs2_super* %119, %struct.ocfs2_extent_tree* %26)
  store i32 %120, i32* %15, align 4
  %121 = load i32, i32* %15, align 4
  %122 = icmp slt i32 %121, 0
  br i1 %122, label %123, label %127

123:                                              ; preds = %110
  %124 = load i32, i32* %15, align 4
  store i32 %124, i32* %13, align 4
  %125 = load i32, i32* %13, align 4
  %126 = call i32 @mlog_errno(i32 %125)
  br label %314

127:                                              ; preds = %110
  %128 = load i32, i32* %15, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %146, label %130

130:                                              ; preds = %127
  %131 = load %struct.ocfs2_super*, %struct.ocfs2_super** %7, align 8
  %132 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %19, align 8
  %133 = call i32 @ocfs2_reserve_new_metadata(%struct.ocfs2_super* %131, %struct.ocfs2_extent_list* %132, %struct.ocfs2_alloc_context** %21)
  store i32 %133, i32* %13, align 4
  %134 = load i32, i32* %13, align 4
  %135 = icmp slt i32 %134, 0
  br i1 %135, label %136, label %145

136:                                              ; preds = %130
  %137 = load i32, i32* %13, align 4
  %138 = load i32, i32* @ENOSPC, align 4
  %139 = sub nsw i32 0, %138
  %140 = icmp ne i32 %137, %139
  br i1 %140, label %141, label %144

141:                                              ; preds = %136
  %142 = load i32, i32* %13, align 4
  %143 = call i32 @mlog_errno(i32 %142)
  br label %144

144:                                              ; preds = %141, %136
  br label %314

145:                                              ; preds = %130
  br label %146

146:                                              ; preds = %145, %127
  %147 = load %struct.ocfs2_super*, %struct.ocfs2_super** %7, align 8
  %148 = call i32 @ocfs2_reserve_clusters(%struct.ocfs2_super* %147, i32 1, %struct.ocfs2_alloc_context** %20)
  store i32 %148, i32* %13, align 4
  %149 = load i32, i32* %13, align 4
  %150 = icmp slt i32 %149, 0
  br i1 %150, label %151, label %160

151:                                              ; preds = %146
  %152 = load i32, i32* %13, align 4
  %153 = load i32, i32* @ENOSPC, align 4
  %154 = sub nsw i32 0, %153
  %155 = icmp ne i32 %152, %154
  br i1 %155, label %156, label %159

156:                                              ; preds = %151
  %157 = load i32, i32* %13, align 4
  %158 = call i32 @mlog_errno(i32 %157)
  br label %159

159:                                              ; preds = %156, %151
  br label %314

160:                                              ; preds = %146
  %161 = load %struct.super_block*, %struct.super_block** %25, align 8
  %162 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %19, align 8
  %163 = call i32 @ocfs2_calc_extend_credits(%struct.super_block* %161, %struct.ocfs2_extent_list* %162, i32 1)
  store i32 %163, i32* %14, align 4
  br label %170

164:                                              ; preds = %85
  %165 = load %struct.inode*, %struct.inode** %8, align 8
  %166 = call %struct.TYPE_6__* @OCFS2_I(%struct.inode* %165)
  %167 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %166, i32 0, i32 2
  %168 = call i32 @spin_unlock(i32* %167)
  %169 = load i32, i32* @OCFS2_SIMPLE_DIR_EXTEND_CREDITS, align 4
  store i32 %169, i32* %14, align 4
  br label %170

170:                                              ; preds = %164, %160
  br label %171

171:                                              ; preds = %170, %75
  %172 = load %struct.inode*, %struct.inode** %8, align 8
  %173 = call i64 @ocfs2_dir_indexed(%struct.inode* %172)
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %178

175:                                              ; preds = %171
  %176 = load i32, i32* %14, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %14, align 4
  br label %178

178:                                              ; preds = %175, %171
  %179 = load %struct.ocfs2_super*, %struct.ocfs2_super** %7, align 8
  %180 = load i32, i32* %14, align 4
  %181 = call i32* @ocfs2_start_trans(%struct.ocfs2_super* %179, i32 %180)
  store i32* %181, i32** %22, align 8
  %182 = load i32*, i32** %22, align 8
  %183 = call i64 @IS_ERR(i32* %182)
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %190

185:                                              ; preds = %178
  %186 = load i32*, i32** %22, align 8
  %187 = call i32 @PTR_ERR(i32* %186)
  store i32 %187, i32* %13, align 4
  store i32* null, i32** %22, align 8
  %188 = load i32, i32* %13, align 4
  %189 = call i32 @mlog_errno(i32 %188)
  br label %314

190:                                              ; preds = %178
  %191 = load %struct.ocfs2_super*, %struct.ocfs2_super** %7, align 8
  %192 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %191, i32 0, i32 0
  %193 = load %struct.super_block*, %struct.super_block** %192, align 8
  %194 = load i32*, i32** %22, align 8
  %195 = load %struct.inode*, %struct.inode** %8, align 8
  %196 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %197 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %20, align 8
  %198 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %21, align 8
  %199 = call i32 @ocfs2_do_extend_dir(%struct.super_block* %193, i32* %194, %struct.inode* %195, %struct.buffer_head* %196, %struct.ocfs2_alloc_context* %197, %struct.ocfs2_alloc_context* %198, %struct.buffer_head** %23)
  store i32 %199, i32* %13, align 4
  %200 = load i32, i32* %13, align 4
  %201 = icmp slt i32 %200, 0
  br i1 %201, label %202, label %205

202:                                              ; preds = %190
  %203 = load i32, i32* %13, align 4
  %204 = call i32 @mlog_errno(i32 %203)
  br label %314

205:                                              ; preds = %190
  %206 = load %struct.inode*, %struct.inode** %8, align 8
  %207 = call i32 @INODE_CACHE(%struct.inode* %206)
  %208 = load %struct.buffer_head*, %struct.buffer_head** %23, align 8
  %209 = call i32 @ocfs2_set_new_buffer_uptodate(i32 %207, %struct.buffer_head* %208)
  %210 = load i32*, i32** %22, align 8
  %211 = load %struct.inode*, %struct.inode** %8, align 8
  %212 = call i32 @INODE_CACHE(%struct.inode* %211)
  %213 = load %struct.buffer_head*, %struct.buffer_head** %23, align 8
  %214 = load i32, i32* @OCFS2_JOURNAL_ACCESS_CREATE, align 4
  %215 = call i32 @ocfs2_journal_access_db(i32* %210, i32 %212, %struct.buffer_head* %213, i32 %214)
  store i32 %215, i32* %13, align 4
  %216 = load i32, i32* %13, align 4
  %217 = icmp slt i32 %216, 0
  br i1 %217, label %218, label %221

218:                                              ; preds = %205
  %219 = load i32, i32* %13, align 4
  %220 = call i32 @mlog_errno(i32 %219)
  br label %314

221:                                              ; preds = %205
  %222 = load %struct.buffer_head*, %struct.buffer_head** %23, align 8
  %223 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %222, i32 0, i32 0
  %224 = load i64, i64* %223, align 8
  %225 = load %struct.super_block*, %struct.super_block** %25, align 8
  %226 = getelementptr inbounds %struct.super_block, %struct.super_block* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 4
  %228 = call i32 @memset(i64 %224, i32 0, i32 %227)
  %229 = load %struct.buffer_head*, %struct.buffer_head** %23, align 8
  %230 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %229, i32 0, i32 0
  %231 = load i64, i64* %230, align 8
  %232 = inttoptr i64 %231 to %struct.ocfs2_dir_entry*
  store %struct.ocfs2_dir_entry* %232, %struct.ocfs2_dir_entry** %24, align 8
  %233 = load %struct.ocfs2_dir_entry*, %struct.ocfs2_dir_entry** %24, align 8
  %234 = getelementptr inbounds %struct.ocfs2_dir_entry, %struct.ocfs2_dir_entry* %233, i32 0, i32 1
  store i64 0, i64* %234, align 8
  %235 = load %struct.inode*, %struct.inode** %8, align 8
  %236 = call i64 @ocfs2_supports_dir_trailer(%struct.inode* %235)
  %237 = icmp ne i64 %236, 0
  br i1 %237, label %238, label %267

238:                                              ; preds = %221
  %239 = load %struct.super_block*, %struct.super_block** %25, align 8
  %240 = call i32 @ocfs2_dir_trailer_blk_off(%struct.super_block* %239)
  %241 = call i8* @cpu_to_le16(i32 %240)
  %242 = load %struct.ocfs2_dir_entry*, %struct.ocfs2_dir_entry** %24, align 8
  %243 = getelementptr inbounds %struct.ocfs2_dir_entry, %struct.ocfs2_dir_entry* %242, i32 0, i32 0
  store i8* %241, i8** %243, align 8
  %244 = load %struct.inode*, %struct.inode** %8, align 8
  %245 = load %struct.buffer_head*, %struct.buffer_head** %23, align 8
  %246 = load %struct.ocfs2_dir_entry*, %struct.ocfs2_dir_entry** %24, align 8
  %247 = getelementptr inbounds %struct.ocfs2_dir_entry, %struct.ocfs2_dir_entry* %246, i32 0, i32 0
  %248 = load i8*, i8** %247, align 8
  %249 = call i32 @le16_to_cpu(i8* %248)
  %250 = call i32 @ocfs2_init_dir_trailer(%struct.inode* %244, %struct.buffer_head* %245, i32 %249)
  %251 = load %struct.inode*, %struct.inode** %8, align 8
  %252 = call i64 @ocfs2_dir_indexed(%struct.inode* %251)
  %253 = icmp ne i64 %252, 0
  br i1 %253, label %254, label %266

254:                                              ; preds = %238
  %255 = load %struct.inode*, %struct.inode** %8, align 8
  %256 = load i32*, i32** %22, align 8
  %257 = load %struct.buffer_head*, %struct.buffer_head** %27, align 8
  %258 = load %struct.buffer_head*, %struct.buffer_head** %23, align 8
  %259 = call i32 @ocfs2_dx_dir_link_trailer(%struct.inode* %255, i32* %256, %struct.buffer_head* %257, %struct.buffer_head* %258)
  store i32 %259, i32* %13, align 4
  %260 = load i32, i32* %13, align 4
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %262, label %265

262:                                              ; preds = %254
  %263 = load i32, i32* %13, align 4
  %264 = call i32 @mlog_errno(i32 %263)
  br label %314

265:                                              ; preds = %254
  br label %266

266:                                              ; preds = %265, %238
  br label %274

267:                                              ; preds = %221
  %268 = load %struct.super_block*, %struct.super_block** %25, align 8
  %269 = getelementptr inbounds %struct.super_block, %struct.super_block* %268, i32 0, i32 0
  %270 = load i32, i32* %269, align 4
  %271 = call i8* @cpu_to_le16(i32 %270)
  %272 = load %struct.ocfs2_dir_entry*, %struct.ocfs2_dir_entry** %24, align 8
  %273 = getelementptr inbounds %struct.ocfs2_dir_entry, %struct.ocfs2_dir_entry* %272, i32 0, i32 0
  store i8* %271, i8** %273, align 8
  br label %274

274:                                              ; preds = %267, %266
  %275 = load i32*, i32** %22, align 8
  %276 = load %struct.buffer_head*, %struct.buffer_head** %23, align 8
  %277 = call i32 @ocfs2_journal_dirty(i32* %275, %struct.buffer_head* %276)
  store i32 %277, i32* %13, align 4
  %278 = load i32, i32* %13, align 4
  %279 = icmp slt i32 %278, 0
  br i1 %279, label %280, label %283

280:                                              ; preds = %274
  %281 = load i32, i32* %13, align 4
  %282 = call i32 @mlog_errno(i32 %281)
  br label %314

283:                                              ; preds = %274
  %284 = load %struct.inode*, %struct.inode** %8, align 8
  %285 = getelementptr inbounds %struct.inode, %struct.inode* %284, i32 0, i32 1
  %286 = load %struct.TYPE_5__*, %struct.TYPE_5__** %285, align 8
  %287 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %286, i32 0, i32 0
  %288 = load i64, i64* %287, align 8
  %289 = load i64, i64* %17, align 8
  %290 = add nsw i64 %289, %288
  store i64 %290, i64* %17, align 8
  %291 = load %struct.inode*, %struct.inode** %8, align 8
  %292 = load i64, i64* %17, align 8
  %293 = call i32 @i_size_write(%struct.inode* %291, i64 %292)
  %294 = load %struct.inode*, %struct.inode** %8, align 8
  %295 = call i32 @ocfs2_inode_sector_count(%struct.inode* %294)
  %296 = load %struct.inode*, %struct.inode** %8, align 8
  %297 = getelementptr inbounds %struct.inode, %struct.inode* %296, i32 0, i32 0
  store i32 %295, i32* %297, align 8
  %298 = load i32*, i32** %22, align 8
  %299 = load %struct.inode*, %struct.inode** %8, align 8
  %300 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %301 = call i32 @ocfs2_mark_inode_dirty(i32* %298, %struct.inode* %299, %struct.buffer_head* %300)
  store i32 %301, i32* %13, align 4
  %302 = load i32, i32* %13, align 4
  %303 = icmp slt i32 %302, 0
  br i1 %303, label %304, label %307

304:                                              ; preds = %283
  %305 = load i32, i32* %13, align 4
  %306 = call i32 @mlog_errno(i32 %305)
  br label %314

307:                                              ; preds = %283
  br label %308

308:                                              ; preds = %307, %68
  %309 = load %struct.buffer_head*, %struct.buffer_head** %23, align 8
  %310 = load %struct.buffer_head**, %struct.buffer_head*** %12, align 8
  store %struct.buffer_head* %309, %struct.buffer_head** %310, align 8
  %311 = load %struct.buffer_head**, %struct.buffer_head*** %12, align 8
  %312 = load %struct.buffer_head*, %struct.buffer_head** %311, align 8
  %313 = call i32 @get_bh(%struct.buffer_head* %312)
  br label %314

314:                                              ; preds = %308, %304, %280, %262, %218, %202, %185, %159, %144, %123, %59
  %315 = load i32*, i32** %22, align 8
  %316 = icmp ne i32* %315, null
  br i1 %316, label %317, label %321

317:                                              ; preds = %314
  %318 = load %struct.ocfs2_super*, %struct.ocfs2_super** %7, align 8
  %319 = load i32*, i32** %22, align 8
  %320 = call i32 @ocfs2_commit_trans(%struct.ocfs2_super* %318, i32* %319)
  br label %321

321:                                              ; preds = %317, %314
  %322 = load i32, i32* %16, align 4
  %323 = icmp ne i32 %322, 0
  br i1 %323, label %324, label %329

324:                                              ; preds = %321
  %325 = load %struct.inode*, %struct.inode** %8, align 8
  %326 = call %struct.TYPE_6__* @OCFS2_I(%struct.inode* %325)
  %327 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %326, i32 0, i32 1
  %328 = call i32 @up_write(i32* %327)
  br label %329

329:                                              ; preds = %324, %321
  %330 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %20, align 8
  %331 = icmp ne %struct.ocfs2_alloc_context* %330, null
  br i1 %331, label %332, label %335

332:                                              ; preds = %329
  %333 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %20, align 8
  %334 = call i32 @ocfs2_free_alloc_context(%struct.ocfs2_alloc_context* %333)
  br label %335

335:                                              ; preds = %332, %329
  %336 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %21, align 8
  %337 = icmp ne %struct.ocfs2_alloc_context* %336, null
  br i1 %337, label %338, label %341

338:                                              ; preds = %335
  %339 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %21, align 8
  %340 = call i32 @ocfs2_free_alloc_context(%struct.ocfs2_alloc_context* %339)
  br label %341

341:                                              ; preds = %338, %335
  %342 = load %struct.buffer_head*, %struct.buffer_head** %23, align 8
  %343 = call i32 @brelse(%struct.buffer_head* %342)
  %344 = load i32, i32* %13, align 4
  %345 = call i32 @mlog_exit(i32 %344)
  %346 = load i32, i32* %13, align 4
  ret i32 %346
}

declare dso_local i32 @mlog_entry_void(...) #1

declare dso_local %struct.TYPE_6__* @OCFS2_I(%struct.inode*) #1

declare dso_local i32 @BUG_ON(%struct.buffer_head*) #1

declare dso_local i32 @ocfs2_expand_inline_dir(%struct.inode*, %struct.buffer_head*, i32, %struct.ocfs2_dir_lookup_result*, %struct.buffer_head**) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i64 @i_size_read(%struct.inode*) #1

declare dso_local i32 @mlog(i32, i8*, i64, i64) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @ocfs2_clusters_to_bytes(%struct.super_block*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @ocfs2_init_dinode_extent_tree(%struct.ocfs2_extent_tree*, i32, %struct.buffer_head*) #1

declare dso_local i32 @INODE_CACHE(%struct.inode*) #1

declare dso_local i32 @ocfs2_num_free_extents(%struct.ocfs2_super*, %struct.ocfs2_extent_tree*) #1

declare dso_local i32 @ocfs2_reserve_new_metadata(%struct.ocfs2_super*, %struct.ocfs2_extent_list*, %struct.ocfs2_alloc_context**) #1

declare dso_local i32 @ocfs2_reserve_clusters(%struct.ocfs2_super*, i32, %struct.ocfs2_alloc_context**) #1

declare dso_local i32 @ocfs2_calc_extend_credits(%struct.super_block*, %struct.ocfs2_extent_list*, i32) #1

declare dso_local i64 @ocfs2_dir_indexed(%struct.inode*) #1

declare dso_local i32* @ocfs2_start_trans(%struct.ocfs2_super*, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @ocfs2_do_extend_dir(%struct.super_block*, i32*, %struct.inode*, %struct.buffer_head*, %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context*, %struct.buffer_head**) #1

declare dso_local i32 @ocfs2_set_new_buffer_uptodate(i32, %struct.buffer_head*) #1

declare dso_local i32 @ocfs2_journal_access_db(i32*, i32, %struct.buffer_head*, i32) #1

declare dso_local i32 @memset(i64, i32, i32) #1

declare dso_local i64 @ocfs2_supports_dir_trailer(%struct.inode*) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @ocfs2_dir_trailer_blk_off(%struct.super_block*) #1

declare dso_local i32 @ocfs2_init_dir_trailer(%struct.inode*, %struct.buffer_head*, i32) #1

declare dso_local i32 @le16_to_cpu(i8*) #1

declare dso_local i32 @ocfs2_dx_dir_link_trailer(%struct.inode*, i32*, %struct.buffer_head*, %struct.buffer_head*) #1

declare dso_local i32 @ocfs2_journal_dirty(i32*, %struct.buffer_head*) #1

declare dso_local i32 @i_size_write(%struct.inode*, i64) #1

declare dso_local i32 @ocfs2_inode_sector_count(%struct.inode*) #1

declare dso_local i32 @ocfs2_mark_inode_dirty(i32*, %struct.inode*, %struct.buffer_head*) #1

declare dso_local i32 @get_bh(%struct.buffer_head*) #1

declare dso_local i32 @ocfs2_commit_trans(%struct.ocfs2_super*, i32*) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @ocfs2_free_alloc_context(%struct.ocfs2_alloc_context*) #1

declare dso_local i32 @mlog_exit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
