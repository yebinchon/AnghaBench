; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_dir.c___ocfs2_add_entry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_dir.c___ocfs2_add_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, i32, i32, %struct.super_block* }
%struct.super_block = type { i32 }
%struct.buffer_head = type { i8*, i64 }
%struct.ocfs2_dir_lookup_result = type { %struct.buffer_head*, %struct.buffer_head*, %struct.buffer_head* }
%struct.ocfs2_dir_entry = type { i32, i8*, i32, i64, i32 }
%struct.ocfs2_dinode = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8* }
%struct.TYPE_6__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@OCFS2_JOURNAL_ACCESS_WRITE = common dso_local global i32 0, align 4
@OCFS2_INLINE_DATA_FL = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [110 x i8] c"Hit dir trailer trying to insert %.*s (namelen %d) into directory %llu.  offset is %lu, trailer offset is %d\0A\00", align 1
@CURRENT_TIME = common dso_local global i32 0, align 4
@OCFS2_FT_UNKNOWN = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__ocfs2_add_entry(i32* %0, %struct.inode* %1, i8* %2, i32 %3, %struct.inode* %4, i64 %5, %struct.buffer_head* %6, %struct.ocfs2_dir_lookup_result* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.inode*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.inode*, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.buffer_head*, align 8
  %17 = alloca %struct.ocfs2_dir_lookup_result*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i16, align 2
  %20 = alloca %struct.ocfs2_dir_entry*, align 8
  %21 = alloca %struct.ocfs2_dir_entry*, align 8
  %22 = alloca %struct.ocfs2_dinode*, align 8
  %23 = alloca %struct.super_block*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca %struct.buffer_head*, align 8
  %28 = alloca i8*, align 8
  %29 = alloca %struct.buffer_head*, align 8
  store i32* %0, i32** %10, align 8
  store %struct.inode* %1, %struct.inode** %11, align 8
  store i8* %2, i8** %12, align 8
  store i32 %3, i32* %13, align 4
  store %struct.inode* %4, %struct.inode** %14, align 8
  store i64 %5, i64* %15, align 8
  store %struct.buffer_head* %6, %struct.buffer_head** %16, align 8
  store %struct.ocfs2_dir_lookup_result* %7, %struct.ocfs2_dir_lookup_result** %17, align 8
  %30 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %31 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = bitcast i8* %32 to %struct.ocfs2_dinode*
  store %struct.ocfs2_dinode* %33, %struct.ocfs2_dinode** %22, align 8
  %34 = load %struct.inode*, %struct.inode** %11, align 8
  %35 = getelementptr inbounds %struct.inode, %struct.inode* %34, i32 0, i32 4
  %36 = load %struct.super_block*, %struct.super_block** %35, align 8
  store %struct.super_block* %36, %struct.super_block** %23, align 8
  %37 = load %struct.super_block*, %struct.super_block** %23, align 8
  %38 = getelementptr inbounds %struct.super_block, %struct.super_block* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %26, align 4
  %40 = load %struct.ocfs2_dir_lookup_result*, %struct.ocfs2_dir_lookup_result** %17, align 8
  %41 = getelementptr inbounds %struct.ocfs2_dir_lookup_result, %struct.ocfs2_dir_lookup_result* %40, i32 0, i32 2
  %42 = load %struct.buffer_head*, %struct.buffer_head** %41, align 8
  store %struct.buffer_head* %42, %struct.buffer_head** %27, align 8
  %43 = load %struct.buffer_head*, %struct.buffer_head** %27, align 8
  %44 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  store i8* %45, i8** %28, align 8
  %46 = call i32 (...) @mlog_entry_void()
  %47 = load i32, i32* %13, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %8
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %9, align 4
  br label %323

52:                                               ; preds = %8
  %53 = load %struct.inode*, %struct.inode** %11, align 8
  %54 = call i64 @ocfs2_dir_indexed(%struct.inode* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %88

56:                                               ; preds = %52
  %57 = load %struct.ocfs2_dir_lookup_result*, %struct.ocfs2_dir_lookup_result** %17, align 8
  %58 = call i64 @ocfs2_free_list_at_root(%struct.ocfs2_dir_lookup_result* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %70

60:                                               ; preds = %56
  %61 = load %struct.ocfs2_dir_lookup_result*, %struct.ocfs2_dir_lookup_result** %17, align 8
  %62 = getelementptr inbounds %struct.ocfs2_dir_lookup_result, %struct.ocfs2_dir_lookup_result* %61, i32 0, i32 1
  %63 = load %struct.buffer_head*, %struct.buffer_head** %62, align 8
  store %struct.buffer_head* %63, %struct.buffer_head** %29, align 8
  %64 = load i32*, i32** %10, align 8
  %65 = load %struct.inode*, %struct.inode** %11, align 8
  %66 = call i32 @INODE_CACHE(%struct.inode* %65)
  %67 = load %struct.buffer_head*, %struct.buffer_head** %29, align 8
  %68 = load i32, i32* @OCFS2_JOURNAL_ACCESS_WRITE, align 4
  %69 = call i32 @ocfs2_journal_access_dr(i32* %64, i32 %66, %struct.buffer_head* %67, i32 %68)
  store i32 %69, i32* %24, align 4
  br label %80

70:                                               ; preds = %56
  %71 = load %struct.ocfs2_dir_lookup_result*, %struct.ocfs2_dir_lookup_result** %17, align 8
  %72 = getelementptr inbounds %struct.ocfs2_dir_lookup_result, %struct.ocfs2_dir_lookup_result* %71, i32 0, i32 0
  %73 = load %struct.buffer_head*, %struct.buffer_head** %72, align 8
  store %struct.buffer_head* %73, %struct.buffer_head** %29, align 8
  %74 = load i32*, i32** %10, align 8
  %75 = load %struct.inode*, %struct.inode** %11, align 8
  %76 = call i32 @INODE_CACHE(%struct.inode* %75)
  %77 = load %struct.buffer_head*, %struct.buffer_head** %29, align 8
  %78 = load i32, i32* @OCFS2_JOURNAL_ACCESS_WRITE, align 4
  %79 = call i32 @ocfs2_journal_access_db(i32* %74, i32 %76, %struct.buffer_head* %77, i32 %78)
  store i32 %79, i32* %24, align 4
  br label %80

80:                                               ; preds = %70, %60
  %81 = load i32, i32* %24, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %80
  %84 = load i32, i32* %24, align 4
  %85 = call i32 @mlog_errno(i32 %84)
  %86 = load i32, i32* %24, align 4
  store i32 %86, i32* %9, align 4
  br label %323

87:                                               ; preds = %80
  br label %110

88:                                               ; preds = %52
  %89 = load %struct.inode*, %struct.inode** %11, align 8
  %90 = call %struct.TYPE_6__* @OCFS2_I(%struct.inode* %89)
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @OCFS2_INLINE_DATA_FL, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %109

96:                                               ; preds = %88
  %97 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %22, align 8
  %98 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  %101 = load i8*, i8** %100, align 8
  store i8* %101, i8** %28, align 8
  %102 = load %struct.inode*, %struct.inode** %11, align 8
  %103 = call i32 @i_size_read(%struct.inode* %102)
  store i32 %103, i32* %26, align 4
  %104 = load %struct.buffer_head*, %struct.buffer_head** %27, align 8
  %105 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %106 = icmp ne %struct.buffer_head* %104, %105
  %107 = zext i1 %106 to i32
  %108 = call i32 @BUG_ON(i32 %107)
  br label %109

109:                                              ; preds = %96, %88
  br label %110

110:                                              ; preds = %109, %87
  %111 = load i32, i32* %13, align 4
  %112 = call i32 @OCFS2_DIR_REC_LEN(i32 %111)
  %113 = trunc i32 %112 to i16
  store i16 %113, i16* %19, align 2
  store i64 0, i64* %18, align 8
  %114 = load i8*, i8** %28, align 8
  %115 = bitcast i8* %114 to %struct.ocfs2_dir_entry*
  store %struct.ocfs2_dir_entry* %115, %struct.ocfs2_dir_entry** %20, align 8
  br label %116

116:                                              ; preds = %110, %302
  %117 = load %struct.ocfs2_dir_entry*, %struct.ocfs2_dir_entry** %20, align 8
  %118 = bitcast %struct.ocfs2_dir_entry* %117 to i8*
  %119 = load i32, i32* %26, align 4
  %120 = load i8*, i8** %28, align 8
  %121 = zext i32 %119 to i64
  %122 = getelementptr inbounds i8, i8* %120, i64 %121
  %123 = icmp uge i8* %118, %122
  %124 = zext i1 %123 to i32
  %125 = call i32 @BUG_ON(i32 %124)
  %126 = load %struct.inode*, %struct.inode** %11, align 8
  %127 = load %struct.ocfs2_dir_entry*, %struct.ocfs2_dir_entry** %20, align 8
  %128 = load %struct.buffer_head*, %struct.buffer_head** %27, align 8
  %129 = load i64, i64* %18, align 8
  %130 = call i32 @ocfs2_check_dir_entry(%struct.inode* %126, %struct.ocfs2_dir_entry* %127, %struct.buffer_head* %128, i64 %129)
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %135, label %132

132:                                              ; preds = %116
  %133 = load i32, i32* @ENOENT, align 4
  %134 = sub nsw i32 0, %133
  store i32 %134, i32* %24, align 4
  br label %319

135:                                              ; preds = %116
  %136 = load i32, i32* %13, align 4
  %137 = load i8*, i8** %12, align 8
  %138 = load %struct.ocfs2_dir_entry*, %struct.ocfs2_dir_entry** %20, align 8
  %139 = call i64 @ocfs2_match(i32 %136, i8* %137, %struct.ocfs2_dir_entry* %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %144

141:                                              ; preds = %135
  %142 = load i32, i32* @EEXIST, align 4
  %143 = sub nsw i32 0, %142
  store i32 %143, i32* %24, align 4
  br label %319

144:                                              ; preds = %135
  %145 = load %struct.inode*, %struct.inode** %11, align 8
  %146 = load %struct.ocfs2_dir_entry*, %struct.ocfs2_dir_entry** %20, align 8
  %147 = load i64, i64* %18, align 8
  %148 = load i32, i32* %26, align 4
  %149 = call i32 @ocfs2_skip_dir_trailer(%struct.inode* %145, %struct.ocfs2_dir_entry* %146, i64 %147, i32 %148)
  %150 = load i32, i32* %13, align 4
  %151 = load i8*, i8** %12, align 8
  %152 = load i32, i32* %13, align 4
  %153 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %154 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %153, i32 0, i32 1
  %155 = load i64, i64* %154, align 8
  %156 = load i64, i64* %18, align 8
  %157 = load %struct.inode*, %struct.inode** %11, align 8
  %158 = getelementptr inbounds %struct.inode, %struct.inode* %157, i32 0, i32 4
  %159 = load %struct.super_block*, %struct.super_block** %158, align 8
  %160 = call i32 @ocfs2_dir_trailer_blk_off(%struct.super_block* %159)
  %161 = call i32 @mlog_bug_on_msg(i32 %149, i8* getelementptr inbounds ([110 x i8], [110 x i8]* @.str, i64 0, i64 0), i32 %150, i8* %151, i32 %152, i64 %155, i64 %156, i32 %160)
  %162 = load %struct.ocfs2_dir_entry*, %struct.ocfs2_dir_entry** %20, align 8
  %163 = load i16, i16* %19, align 2
  %164 = call i64 @ocfs2_dirent_would_fit(%struct.ocfs2_dir_entry* %162, i16 zeroext %163)
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %302

166:                                              ; preds = %144
  %167 = load i32, i32* @CURRENT_TIME, align 4
  %168 = load %struct.inode*, %struct.inode** %11, align 8
  %169 = getelementptr inbounds %struct.inode, %struct.inode* %168, i32 0, i32 2
  store i32 %167, i32* %169, align 8
  %170 = load %struct.inode*, %struct.inode** %11, align 8
  %171 = getelementptr inbounds %struct.inode, %struct.inode* %170, i32 0, i32 3
  store i32 %167, i32* %171, align 4
  %172 = load i32*, i32** %10, align 8
  %173 = load %struct.inode*, %struct.inode** %11, align 8
  %174 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %175 = call i32 @ocfs2_mark_inode_dirty(i32* %172, %struct.inode* %173, %struct.buffer_head* %174)
  store i32 %175, i32* %24, align 4
  %176 = load i32, i32* %24, align 4
  %177 = icmp slt i32 %176, 0
  br i1 %177, label %178, label %181

178:                                              ; preds = %166
  %179 = load i32, i32* %24, align 4
  %180 = call i32 @mlog_errno(i32 %179)
  br label %319

181:                                              ; preds = %166
  %182 = load %struct.buffer_head*, %struct.buffer_head** %27, align 8
  %183 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %184 = icmp eq %struct.buffer_head* %182, %183
  br i1 %184, label %185, label %192

185:                                              ; preds = %181
  %186 = load i32*, i32** %10, align 8
  %187 = load %struct.inode*, %struct.inode** %11, align 8
  %188 = call i32 @INODE_CACHE(%struct.inode* %187)
  %189 = load %struct.buffer_head*, %struct.buffer_head** %27, align 8
  %190 = load i32, i32* @OCFS2_JOURNAL_ACCESS_WRITE, align 4
  %191 = call i32 @ocfs2_journal_access_di(i32* %186, i32 %188, %struct.buffer_head* %189, i32 %190)
  store i32 %191, i32* %25, align 4
  br label %214

192:                                              ; preds = %181
  %193 = load i32*, i32** %10, align 8
  %194 = load %struct.inode*, %struct.inode** %11, align 8
  %195 = call i32 @INODE_CACHE(%struct.inode* %194)
  %196 = load %struct.buffer_head*, %struct.buffer_head** %27, align 8
  %197 = load i32, i32* @OCFS2_JOURNAL_ACCESS_WRITE, align 4
  %198 = call i32 @ocfs2_journal_access_db(i32* %193, i32 %195, %struct.buffer_head* %196, i32 %197)
  store i32 %198, i32* %25, align 4
  %199 = load %struct.inode*, %struct.inode** %11, align 8
  %200 = call i64 @ocfs2_dir_indexed(%struct.inode* %199)
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %213

202:                                              ; preds = %192
  %203 = load %struct.inode*, %struct.inode** %11, align 8
  %204 = load i32*, i32** %10, align 8
  %205 = load %struct.ocfs2_dir_lookup_result*, %struct.ocfs2_dir_lookup_result** %17, align 8
  %206 = call i32 @ocfs2_dx_dir_insert(%struct.inode* %203, i32* %204, %struct.ocfs2_dir_lookup_result* %205)
  store i32 %206, i32* %25, align 4
  %207 = load i32, i32* %25, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %212

209:                                              ; preds = %202
  %210 = load i32, i32* %25, align 4
  %211 = call i32 @mlog_errno(i32 %210)
  br label %319

212:                                              ; preds = %202
  br label %213

213:                                              ; preds = %212, %192
  br label %214

214:                                              ; preds = %213, %185
  %215 = load %struct.ocfs2_dir_entry*, %struct.ocfs2_dir_entry** %20, align 8
  %216 = getelementptr inbounds %struct.ocfs2_dir_entry, %struct.ocfs2_dir_entry* %215, i32 0, i32 1
  %217 = load i8*, i8** %216, align 8
  %218 = call i32 @le16_to_cpu(i8* %217)
  %219 = sext i32 %218 to i64
  %220 = load i64, i64* %18, align 8
  %221 = add i64 %220, %219
  store i64 %221, i64* %18, align 8
  %222 = load %struct.ocfs2_dir_entry*, %struct.ocfs2_dir_entry** %20, align 8
  %223 = getelementptr inbounds %struct.ocfs2_dir_entry, %struct.ocfs2_dir_entry* %222, i32 0, i32 3
  %224 = load i64, i64* %223, align 8
  %225 = call i64 @le64_to_cpu(i64 %224)
  %226 = icmp ne i64 %225, 0
  br i1 %226, label %227, label %257

227:                                              ; preds = %214
  %228 = load %struct.ocfs2_dir_entry*, %struct.ocfs2_dir_entry** %20, align 8
  %229 = bitcast %struct.ocfs2_dir_entry* %228 to i8*
  %230 = load %struct.ocfs2_dir_entry*, %struct.ocfs2_dir_entry** %20, align 8
  %231 = getelementptr inbounds %struct.ocfs2_dir_entry, %struct.ocfs2_dir_entry* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 8
  %233 = call i32 @OCFS2_DIR_REC_LEN(i32 %232)
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds i8, i8* %229, i64 %234
  %236 = bitcast i8* %235 to %struct.ocfs2_dir_entry*
  store %struct.ocfs2_dir_entry* %236, %struct.ocfs2_dir_entry** %21, align 8
  %237 = load %struct.ocfs2_dir_entry*, %struct.ocfs2_dir_entry** %20, align 8
  %238 = getelementptr inbounds %struct.ocfs2_dir_entry, %struct.ocfs2_dir_entry* %237, i32 0, i32 1
  %239 = load i8*, i8** %238, align 8
  %240 = call i32 @le16_to_cpu(i8* %239)
  %241 = load %struct.ocfs2_dir_entry*, %struct.ocfs2_dir_entry** %20, align 8
  %242 = getelementptr inbounds %struct.ocfs2_dir_entry, %struct.ocfs2_dir_entry* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 8
  %244 = call i32 @OCFS2_DIR_REC_LEN(i32 %243)
  %245 = sub nsw i32 %240, %244
  %246 = call i8* @cpu_to_le16(i32 %245)
  %247 = load %struct.ocfs2_dir_entry*, %struct.ocfs2_dir_entry** %21, align 8
  %248 = getelementptr inbounds %struct.ocfs2_dir_entry, %struct.ocfs2_dir_entry* %247, i32 0, i32 1
  store i8* %246, i8** %248, align 8
  %249 = load %struct.ocfs2_dir_entry*, %struct.ocfs2_dir_entry** %20, align 8
  %250 = getelementptr inbounds %struct.ocfs2_dir_entry, %struct.ocfs2_dir_entry* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 8
  %252 = call i32 @OCFS2_DIR_REC_LEN(i32 %251)
  %253 = call i8* @cpu_to_le16(i32 %252)
  %254 = load %struct.ocfs2_dir_entry*, %struct.ocfs2_dir_entry** %20, align 8
  %255 = getelementptr inbounds %struct.ocfs2_dir_entry, %struct.ocfs2_dir_entry* %254, i32 0, i32 1
  store i8* %253, i8** %255, align 8
  %256 = load %struct.ocfs2_dir_entry*, %struct.ocfs2_dir_entry** %21, align 8
  store %struct.ocfs2_dir_entry* %256, %struct.ocfs2_dir_entry** %20, align 8
  br label %257

257:                                              ; preds = %227, %214
  %258 = load i32, i32* @OCFS2_FT_UNKNOWN, align 4
  %259 = load %struct.ocfs2_dir_entry*, %struct.ocfs2_dir_entry** %20, align 8
  %260 = getelementptr inbounds %struct.ocfs2_dir_entry, %struct.ocfs2_dir_entry* %259, i32 0, i32 4
  store i32 %258, i32* %260, align 8
  %261 = load i64, i64* %15, align 8
  %262 = icmp ne i64 %261, 0
  br i1 %262, label %263, label %273

263:                                              ; preds = %257
  %264 = load i64, i64* %15, align 8
  %265 = call i64 @cpu_to_le64(i64 %264)
  %266 = load %struct.ocfs2_dir_entry*, %struct.ocfs2_dir_entry** %20, align 8
  %267 = getelementptr inbounds %struct.ocfs2_dir_entry, %struct.ocfs2_dir_entry* %266, i32 0, i32 3
  store i64 %265, i64* %267, align 8
  %268 = load %struct.ocfs2_dir_entry*, %struct.ocfs2_dir_entry** %20, align 8
  %269 = load %struct.inode*, %struct.inode** %14, align 8
  %270 = getelementptr inbounds %struct.inode, %struct.inode* %269, i32 0, i32 1
  %271 = load i32, i32* %270, align 4
  %272 = call i32 @ocfs2_set_de_type(%struct.ocfs2_dir_entry* %268, i32 %271)
  br label %276

273:                                              ; preds = %257
  %274 = load %struct.ocfs2_dir_entry*, %struct.ocfs2_dir_entry** %20, align 8
  %275 = getelementptr inbounds %struct.ocfs2_dir_entry, %struct.ocfs2_dir_entry* %274, i32 0, i32 3
  store i64 0, i64* %275, align 8
  br label %276

276:                                              ; preds = %273, %263
  %277 = load i32, i32* %13, align 4
  %278 = load %struct.ocfs2_dir_entry*, %struct.ocfs2_dir_entry** %20, align 8
  %279 = getelementptr inbounds %struct.ocfs2_dir_entry, %struct.ocfs2_dir_entry* %278, i32 0, i32 0
  store i32 %277, i32* %279, align 8
  %280 = load %struct.ocfs2_dir_entry*, %struct.ocfs2_dir_entry** %20, align 8
  %281 = getelementptr inbounds %struct.ocfs2_dir_entry, %struct.ocfs2_dir_entry* %280, i32 0, i32 2
  %282 = load i32, i32* %281, align 8
  %283 = load i8*, i8** %12, align 8
  %284 = load i32, i32* %13, align 4
  %285 = call i32 @memcpy(i32 %282, i8* %283, i32 %284)
  %286 = load %struct.inode*, %struct.inode** %11, align 8
  %287 = call i64 @ocfs2_dir_indexed(%struct.inode* %286)
  %288 = icmp ne i64 %287, 0
  br i1 %288, label %289, label %294

289:                                              ; preds = %276
  %290 = load %struct.inode*, %struct.inode** %11, align 8
  %291 = load i32*, i32** %10, align 8
  %292 = load %struct.ocfs2_dir_lookup_result*, %struct.ocfs2_dir_lookup_result** %17, align 8
  %293 = call i32 @ocfs2_recalc_free_list(%struct.inode* %290, i32* %291, %struct.ocfs2_dir_lookup_result* %292)
  br label %294

294:                                              ; preds = %289, %276
  %295 = load %struct.inode*, %struct.inode** %11, align 8
  %296 = getelementptr inbounds %struct.inode, %struct.inode* %295, i32 0, i32 0
  %297 = load i32, i32* %296, align 8
  %298 = add nsw i32 %297, 1
  store i32 %298, i32* %296, align 8
  %299 = load i32*, i32** %10, align 8
  %300 = load %struct.buffer_head*, %struct.buffer_head** %27, align 8
  %301 = call i32 @ocfs2_journal_dirty(i32* %299, %struct.buffer_head* %300)
  store i32 %301, i32* %25, align 4
  store i32 0, i32* %24, align 4
  br label %319

302:                                              ; preds = %144
  %303 = load %struct.ocfs2_dir_entry*, %struct.ocfs2_dir_entry** %20, align 8
  %304 = getelementptr inbounds %struct.ocfs2_dir_entry, %struct.ocfs2_dir_entry* %303, i32 0, i32 1
  %305 = load i8*, i8** %304, align 8
  %306 = call i32 @le16_to_cpu(i8* %305)
  %307 = sext i32 %306 to i64
  %308 = load i64, i64* %18, align 8
  %309 = add i64 %308, %307
  store i64 %309, i64* %18, align 8
  %310 = load %struct.ocfs2_dir_entry*, %struct.ocfs2_dir_entry** %20, align 8
  %311 = bitcast %struct.ocfs2_dir_entry* %310 to i8*
  %312 = load %struct.ocfs2_dir_entry*, %struct.ocfs2_dir_entry** %20, align 8
  %313 = getelementptr inbounds %struct.ocfs2_dir_entry, %struct.ocfs2_dir_entry* %312, i32 0, i32 1
  %314 = load i8*, i8** %313, align 8
  %315 = call i32 @le16_to_cpu(i8* %314)
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds i8, i8* %311, i64 %316
  %318 = bitcast i8* %317 to %struct.ocfs2_dir_entry*
  store %struct.ocfs2_dir_entry* %318, %struct.ocfs2_dir_entry** %20, align 8
  br label %116

319:                                              ; preds = %294, %209, %178, %141, %132
  %320 = load i32, i32* %24, align 4
  %321 = call i32 @mlog_exit(i32 %320)
  %322 = load i32, i32* %24, align 4
  store i32 %322, i32* %9, align 4
  br label %323

323:                                              ; preds = %319, %83, %49
  %324 = load i32, i32* %9, align 4
  ret i32 %324
}

declare dso_local i32 @mlog_entry_void(...) #1

declare dso_local i64 @ocfs2_dir_indexed(%struct.inode*) #1

declare dso_local i64 @ocfs2_free_list_at_root(%struct.ocfs2_dir_lookup_result*) #1

declare dso_local i32 @ocfs2_journal_access_dr(i32*, i32, %struct.buffer_head*, i32) #1

declare dso_local i32 @INODE_CACHE(%struct.inode*) #1

declare dso_local i32 @ocfs2_journal_access_db(i32*, i32, %struct.buffer_head*, i32) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local %struct.TYPE_6__* @OCFS2_I(%struct.inode*) #1

declare dso_local i32 @i_size_read(%struct.inode*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @OCFS2_DIR_REC_LEN(i32) #1

declare dso_local i32 @ocfs2_check_dir_entry(%struct.inode*, %struct.ocfs2_dir_entry*, %struct.buffer_head*, i64) #1

declare dso_local i64 @ocfs2_match(i32, i8*, %struct.ocfs2_dir_entry*) #1

declare dso_local i32 @mlog_bug_on_msg(i32, i8*, i32, i8*, i32, i64, i64, i32) #1

declare dso_local i32 @ocfs2_skip_dir_trailer(%struct.inode*, %struct.ocfs2_dir_entry*, i64, i32) #1

declare dso_local i32 @ocfs2_dir_trailer_blk_off(%struct.super_block*) #1

declare dso_local i64 @ocfs2_dirent_would_fit(%struct.ocfs2_dir_entry*, i16 zeroext) #1

declare dso_local i32 @ocfs2_mark_inode_dirty(i32*, %struct.inode*, %struct.buffer_head*) #1

declare dso_local i32 @ocfs2_journal_access_di(i32*, i32, %struct.buffer_head*, i32) #1

declare dso_local i32 @ocfs2_dx_dir_insert(%struct.inode*, i32*, %struct.ocfs2_dir_lookup_result*) #1

declare dso_local i32 @le16_to_cpu(i8*) #1

declare dso_local i64 @le64_to_cpu(i64) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i64 @cpu_to_le64(i64) #1

declare dso_local i32 @ocfs2_set_de_type(%struct.ocfs2_dir_entry*, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @ocfs2_recalc_free_list(%struct.inode*, i32*, %struct.ocfs2_dir_lookup_result*) #1

declare dso_local i32 @ocfs2_journal_dirty(i32*, %struct.buffer_head*) #1

declare dso_local i32 @mlog_exit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
