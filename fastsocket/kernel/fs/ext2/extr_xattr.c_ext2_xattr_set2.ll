; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext2/extr_xattr.c_ext2_xattr_set2.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext2/extr_xattr.c_ext2_xattr_set2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, %struct.super_block* }
%struct.super_block = type { i32 }
%struct.buffer_head = type { i32, i32, i32, i32 }
%struct.ext2_xattr_header = type { i64 }
%struct.mb_cache_entry = type { i32 }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [19 x i8] c"keeping this block\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"reusing block\00", align 1
@EDQUOT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"refcount now=%d\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"creating block %d\00", align 1
@EIO = common dso_local global i32 0, align 4
@CURRENT_TIME_SEC = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@ext2_xattr_cache = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"freeing\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.buffer_head*, %struct.ext2_xattr_header*)* @ext2_xattr_set2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext2_xattr_set2(%struct.inode* %0, %struct.buffer_head* %1, %struct.ext2_xattr_header* %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.buffer_head*, align 8
  %6 = alloca %struct.ext2_xattr_header*, align 8
  %7 = alloca %struct.super_block*, align 8
  %8 = alloca %struct.buffer_head*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.mb_cache_entry*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %5, align 8
  store %struct.ext2_xattr_header* %2, %struct.ext2_xattr_header** %6, align 8
  %13 = load %struct.inode*, %struct.inode** %4, align 8
  %14 = getelementptr inbounds %struct.inode, %struct.inode* %13, i32 0, i32 1
  %15 = load %struct.super_block*, %struct.super_block** %14, align 8
  store %struct.super_block* %15, %struct.super_block** %7, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %8, align 8
  %16 = load %struct.ext2_xattr_header*, %struct.ext2_xattr_header** %6, align 8
  %17 = icmp ne %struct.ext2_xattr_header* %16, null
  br i1 %17, label %18, label %140

18:                                               ; preds = %3
  %19 = load %struct.inode*, %struct.inode** %4, align 8
  %20 = load %struct.ext2_xattr_header*, %struct.ext2_xattr_header** %6, align 8
  %21 = call %struct.buffer_head* @ext2_xattr_cache_find(%struct.inode* %19, %struct.ext2_xattr_header* %20)
  store %struct.buffer_head* %21, %struct.buffer_head** %8, align 8
  %22 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %23 = icmp ne %struct.buffer_head* %22, null
  br i1 %23, label %24, label %57

24:                                               ; preds = %18
  %25 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %26 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %27 = icmp eq %struct.buffer_head* %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  %29 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %30 = call i32 (%struct.buffer_head*, i8*, ...) @ea_bdebug(%struct.buffer_head* %29, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %54

31:                                               ; preds = %24
  %32 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %33 = call i32 (%struct.buffer_head*, i8*, ...) @ea_bdebug(%struct.buffer_head* %32, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %34 = load i32, i32* @EDQUOT, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %9, align 4
  %36 = load %struct.inode*, %struct.inode** %4, align 8
  %37 = call i64 @vfs_dq_alloc_block(%struct.inode* %36, i32 1)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %31
  %40 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %41 = call i32 @unlock_buffer(%struct.buffer_head* %40)
  br label %252

42:                                               ; preds = %31
  %43 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %44 = call %struct.ext2_xattr_header* @HDR(%struct.buffer_head* %43)
  %45 = getelementptr inbounds %struct.ext2_xattr_header, %struct.ext2_xattr_header* %44, i32 0, i32 0
  %46 = call i32 @le32_add_cpu(i64* %45, i32 1)
  %47 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %48 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %49 = call %struct.ext2_xattr_header* @HDR(%struct.buffer_head* %48)
  %50 = getelementptr inbounds %struct.ext2_xattr_header, %struct.ext2_xattr_header* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @le32_to_cpu(i64 %51)
  %53 = call i32 (%struct.buffer_head*, i8*, ...) @ea_bdebug(%struct.buffer_head* %47, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %52)
  br label %54

54:                                               ; preds = %42, %28
  %55 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %56 = call i32 @unlock_buffer(%struct.buffer_head* %55)
  br label %119

57:                                               ; preds = %18
  %58 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %59 = icmp ne %struct.buffer_head* %58, null
  br i1 %59, label %60, label %71

60:                                               ; preds = %57
  %61 = load %struct.ext2_xattr_header*, %struct.ext2_xattr_header** %6, align 8
  %62 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %63 = call %struct.ext2_xattr_header* @HDR(%struct.buffer_head* %62)
  %64 = icmp eq %struct.ext2_xattr_header* %61, %63
  br i1 %64, label %65, label %71

65:                                               ; preds = %60
  %66 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  store %struct.buffer_head* %66, %struct.buffer_head** %8, align 8
  %67 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %68 = call i32 @get_bh(%struct.buffer_head* %67)
  %69 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %70 = call i32 @ext2_xattr_cache_insert(%struct.buffer_head* %69)
  br label %118

71:                                               ; preds = %60, %57
  %72 = load %struct.super_block*, %struct.super_block** %7, align 8
  %73 = load %struct.inode*, %struct.inode** %4, align 8
  %74 = call %struct.TYPE_2__* @EXT2_I(%struct.inode* %73)
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @ext2_group_first_block_no(%struct.super_block* %72, i32 %76)
  store i32 %77, i32* %10, align 4
  %78 = load %struct.inode*, %struct.inode** %4, align 8
  %79 = load i32, i32* %10, align 4
  %80 = call i32 @ext2_new_block(%struct.inode* %78, i32 %79, i32* %9)
  store i32 %80, i32* %11, align 4
  %81 = load i32, i32* %9, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %71
  br label %252

84:                                               ; preds = %71
  %85 = load %struct.inode*, %struct.inode** %4, align 8
  %86 = load i32, i32* %11, align 4
  %87 = call i32 @ea_idebug(%struct.inode* %85, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %86)
  %88 = load %struct.super_block*, %struct.super_block** %7, align 8
  %89 = load i32, i32* %11, align 4
  %90 = call %struct.buffer_head* @sb_getblk(%struct.super_block* %88, i32 %89)
  store %struct.buffer_head* %90, %struct.buffer_head** %8, align 8
  %91 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %92 = icmp ne %struct.buffer_head* %91, null
  br i1 %92, label %99, label %93

93:                                               ; preds = %84
  %94 = load %struct.inode*, %struct.inode** %4, align 8
  %95 = load i32, i32* %11, align 4
  %96 = call i32 @ext2_free_blocks(%struct.inode* %94, i32 %95, i32 1)
  %97 = load i32, i32* @EIO, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %9, align 4
  br label %252

99:                                               ; preds = %84
  %100 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %101 = call i32 @lock_buffer(%struct.buffer_head* %100)
  %102 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %103 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.ext2_xattr_header*, %struct.ext2_xattr_header** %6, align 8
  %106 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %107 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @memcpy(i32 %104, %struct.ext2_xattr_header* %105, i32 %108)
  %110 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %111 = call i32 @set_buffer_uptodate(%struct.buffer_head* %110)
  %112 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %113 = call i32 @unlock_buffer(%struct.buffer_head* %112)
  %114 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %115 = call i32 @ext2_xattr_cache_insert(%struct.buffer_head* %114)
  %116 = load %struct.super_block*, %struct.super_block** %7, align 8
  %117 = call i32 @ext2_xattr_update_super_block(%struct.super_block* %116)
  br label %118

118:                                              ; preds = %99, %65
  br label %119

119:                                              ; preds = %118, %54
  %120 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %121 = call i32 @mark_buffer_dirty(%struct.buffer_head* %120)
  %122 = load %struct.inode*, %struct.inode** %4, align 8
  %123 = call i64 @IS_SYNC(%struct.inode* %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %139

125:                                              ; preds = %119
  %126 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %127 = call i32 @sync_dirty_buffer(%struct.buffer_head* %126)
  %128 = load i32, i32* @EIO, align 4
  %129 = sub nsw i32 0, %128
  store i32 %129, i32* %9, align 4
  %130 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %131 = call i64 @buffer_req(%struct.buffer_head* %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %138

133:                                              ; preds = %125
  %134 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %135 = call i32 @buffer_uptodate(%struct.buffer_head* %134)
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %138, label %137

137:                                              ; preds = %133
  br label %252

138:                                              ; preds = %133, %125
  br label %139

139:                                              ; preds = %138, %119
  br label %140

140:                                              ; preds = %139, %3
  %141 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %142 = icmp ne %struct.buffer_head* %141, null
  br i1 %142, label %143, label %147

143:                                              ; preds = %140
  %144 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %145 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  br label %148

147:                                              ; preds = %140
  br label %148

148:                                              ; preds = %147, %143
  %149 = phi i32 [ %146, %143 ], [ 0, %147 ]
  %150 = load %struct.inode*, %struct.inode** %4, align 8
  %151 = call %struct.TYPE_2__* @EXT2_I(%struct.inode* %150)
  %152 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %151, i32 0, i32 0
  store i32 %149, i32* %152, align 4
  %153 = load i32, i32* @CURRENT_TIME_SEC, align 4
  %154 = load %struct.inode*, %struct.inode** %4, align 8
  %155 = getelementptr inbounds %struct.inode, %struct.inode* %154, i32 0, i32 0
  store i32 %153, i32* %155, align 8
  %156 = load %struct.inode*, %struct.inode** %4, align 8
  %157 = call i64 @IS_SYNC(%struct.inode* %156)
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %181

159:                                              ; preds = %148
  %160 = load %struct.inode*, %struct.inode** %4, align 8
  %161 = call i32 @ext2_sync_inode(%struct.inode* %160)
  store i32 %161, i32* %9, align 4
  %162 = load i32, i32* %9, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %180

164:                                              ; preds = %159
  %165 = load i32, i32* %9, align 4
  %166 = load i32, i32* @ENOSPC, align 4
  %167 = sub nsw i32 0, %166
  %168 = icmp ne i32 %165, %167
  br i1 %168, label %169, label %180

169:                                              ; preds = %164
  %170 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %171 = icmp ne %struct.buffer_head* %170, null
  br i1 %171, label %172, label %179

172:                                              ; preds = %169
  %173 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %174 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %175 = icmp ne %struct.buffer_head* %173, %174
  br i1 %175, label %176, label %179

176:                                              ; preds = %172
  %177 = load %struct.inode*, %struct.inode** %4, align 8
  %178 = call i32 @vfs_dq_free_block(%struct.inode* %177, i32 1)
  br label %179

179:                                              ; preds = %176, %172, %169
  br label %252

180:                                              ; preds = %164, %159
  br label %184

181:                                              ; preds = %148
  %182 = load %struct.inode*, %struct.inode** %4, align 8
  %183 = call i32 @mark_inode_dirty(%struct.inode* %182)
  br label %184

184:                                              ; preds = %181, %180
  store i32 0, i32* %9, align 4
  %185 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %186 = icmp ne %struct.buffer_head* %185, null
  br i1 %186, label %187, label %251

187:                                              ; preds = %184
  %188 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %189 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %190 = icmp ne %struct.buffer_head* %188, %189
  br i1 %190, label %191, label %251

191:                                              ; preds = %187
  %192 = load i32, i32* @ext2_xattr_cache, align 4
  %193 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %194 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  %196 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %197 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  %199 = call %struct.mb_cache_entry* @mb_cache_entry_get(i32 %192, i32 %195, i32 %198)
  store %struct.mb_cache_entry* %199, %struct.mb_cache_entry** %12, align 8
  %200 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %201 = call i32 @lock_buffer(%struct.buffer_head* %200)
  %202 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %203 = call %struct.ext2_xattr_header* @HDR(%struct.buffer_head* %202)
  %204 = getelementptr inbounds %struct.ext2_xattr_header, %struct.ext2_xattr_header* %203, i32 0, i32 0
  %205 = load i64, i64* %204, align 8
  %206 = call i64 @cpu_to_le32(i32 1)
  %207 = icmp eq i64 %205, %206
  br i1 %207, label %208, label %226

208:                                              ; preds = %191
  %209 = load %struct.mb_cache_entry*, %struct.mb_cache_entry** %12, align 8
  %210 = icmp ne %struct.mb_cache_entry* %209, null
  br i1 %210, label %211, label %214

211:                                              ; preds = %208
  %212 = load %struct.mb_cache_entry*, %struct.mb_cache_entry** %12, align 8
  %213 = call i32 @mb_cache_entry_free(%struct.mb_cache_entry* %212)
  br label %214

214:                                              ; preds = %211, %208
  %215 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %216 = call i32 (%struct.buffer_head*, i8*, ...) @ea_bdebug(%struct.buffer_head* %215, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %217 = load %struct.inode*, %struct.inode** %4, align 8
  %218 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %219 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 4
  %221 = call i32 @ext2_free_blocks(%struct.inode* %217, i32 %220, i32 1)
  %222 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %223 = call i32 @get_bh(%struct.buffer_head* %222)
  %224 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %225 = call i32 @bforget(%struct.buffer_head* %224)
  br label %248

226:                                              ; preds = %191
  %227 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %228 = call %struct.ext2_xattr_header* @HDR(%struct.buffer_head* %227)
  %229 = getelementptr inbounds %struct.ext2_xattr_header, %struct.ext2_xattr_header* %228, i32 0, i32 0
  %230 = call i32 @le32_add_cpu(i64* %229, i32 -1)
  %231 = load %struct.mb_cache_entry*, %struct.mb_cache_entry** %12, align 8
  %232 = icmp ne %struct.mb_cache_entry* %231, null
  br i1 %232, label %233, label %236

233:                                              ; preds = %226
  %234 = load %struct.mb_cache_entry*, %struct.mb_cache_entry** %12, align 8
  %235 = call i32 @mb_cache_entry_release(%struct.mb_cache_entry* %234)
  br label %236

236:                                              ; preds = %233, %226
  %237 = load %struct.inode*, %struct.inode** %4, align 8
  %238 = call i32 @vfs_dq_free_block(%struct.inode* %237, i32 1)
  %239 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %240 = call i32 @mark_buffer_dirty(%struct.buffer_head* %239)
  %241 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %242 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %243 = call %struct.ext2_xattr_header* @HDR(%struct.buffer_head* %242)
  %244 = getelementptr inbounds %struct.ext2_xattr_header, %struct.ext2_xattr_header* %243, i32 0, i32 0
  %245 = load i64, i64* %244, align 8
  %246 = call i32 @le32_to_cpu(i64 %245)
  %247 = call i32 (%struct.buffer_head*, i8*, ...) @ea_bdebug(%struct.buffer_head* %241, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %246)
  br label %248

248:                                              ; preds = %236, %214
  %249 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %250 = call i32 @unlock_buffer(%struct.buffer_head* %249)
  br label %251

251:                                              ; preds = %248, %187, %184
  br label %252

252:                                              ; preds = %251, %179, %137, %93, %83, %39
  %253 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %254 = call i32 @brelse(%struct.buffer_head* %253)
  %255 = load i32, i32* %9, align 4
  ret i32 %255
}

declare dso_local %struct.buffer_head* @ext2_xattr_cache_find(%struct.inode*, %struct.ext2_xattr_header*) #1

declare dso_local i32 @ea_bdebug(%struct.buffer_head*, i8*, ...) #1

declare dso_local i64 @vfs_dq_alloc_block(%struct.inode*, i32) #1

declare dso_local i32 @unlock_buffer(%struct.buffer_head*) #1

declare dso_local i32 @le32_add_cpu(i64*, i32) #1

declare dso_local %struct.ext2_xattr_header* @HDR(%struct.buffer_head*) #1

declare dso_local i32 @le32_to_cpu(i64) #1

declare dso_local i32 @get_bh(%struct.buffer_head*) #1

declare dso_local i32 @ext2_xattr_cache_insert(%struct.buffer_head*) #1

declare dso_local i32 @ext2_group_first_block_no(%struct.super_block*, i32) #1

declare dso_local %struct.TYPE_2__* @EXT2_I(%struct.inode*) #1

declare dso_local i32 @ext2_new_block(%struct.inode*, i32, i32*) #1

declare dso_local i32 @ea_idebug(%struct.inode*, i8*, i32) #1

declare dso_local %struct.buffer_head* @sb_getblk(%struct.super_block*, i32) #1

declare dso_local i32 @ext2_free_blocks(%struct.inode*, i32, i32) #1

declare dso_local i32 @lock_buffer(%struct.buffer_head*) #1

declare dso_local i32 @memcpy(i32, %struct.ext2_xattr_header*, i32) #1

declare dso_local i32 @set_buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i32 @ext2_xattr_update_super_block(%struct.super_block*) #1

declare dso_local i32 @mark_buffer_dirty(%struct.buffer_head*) #1

declare dso_local i64 @IS_SYNC(%struct.inode*) #1

declare dso_local i32 @sync_dirty_buffer(%struct.buffer_head*) #1

declare dso_local i64 @buffer_req(%struct.buffer_head*) #1

declare dso_local i32 @buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i32 @ext2_sync_inode(%struct.inode*) #1

declare dso_local i32 @vfs_dq_free_block(%struct.inode*, i32) #1

declare dso_local i32 @mark_inode_dirty(%struct.inode*) #1

declare dso_local %struct.mb_cache_entry* @mb_cache_entry_get(i32, i32, i32) #1

declare dso_local i64 @cpu_to_le32(i32) #1

declare dso_local i32 @mb_cache_entry_free(%struct.mb_cache_entry*) #1

declare dso_local i32 @bforget(%struct.buffer_head*) #1

declare dso_local i32 @mb_cache_entry_release(%struct.mb_cache_entry*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
