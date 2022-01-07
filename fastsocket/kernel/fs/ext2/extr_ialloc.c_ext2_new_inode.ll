; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext2/extr_ialloc.c_ext2_new_inode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext2/extr_ialloc.c_ext2_new_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i64, i32, i64, i64, i32, i32, i32, i64, i32, i32, %struct.super_block* }
%struct.super_block = type { i32, i32 }
%struct.buffer_head = type { i64 }
%struct.ext2_group_desc = type { i32, i32 }
%struct.ext2_super_block = type { i32 }
%struct.ext2_inode_info = type { i32, i32, i32, i64, i32*, i64, i64, i64, i64, i64, i64, i32 }
%struct.ext2_sb_info = type { i32, i32*, i32, i32, i32, i32, %struct.ext2_super_block* }

@ENOMEM = common dso_local global i32 0, align 4
@OLDALLOC = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@MS_SYNCHRONOUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"ext2_new_inode\00", align 1
@.str.1 = private unnamed_addr constant [68 x i8] c"reserved inode or inode > inodes count - block_group = %d,inode=%lu\00", align 1
@GRPID = common dso_local global i32 0, align 4
@S_ISGID = common dso_local global i32 0, align 4
@CURRENT_TIME_SEC = common dso_local global i32 0, align 4
@EXT2_FL_INHERITED = common dso_local global i32 0, align 4
@EXT2_STATE_NEW = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EDQUOT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"allocating inode %lu\0A\00", align 1
@S_NOQUOTA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.inode* @ext2_new_inode(%struct.inode* %0, i32 %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca %struct.buffer_head*, align 8
  %8 = alloca %struct.buffer_head*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.inode*, align 8
  %13 = alloca %struct.ext2_group_desc*, align 8
  %14 = alloca %struct.ext2_super_block*, align 8
  %15 = alloca %struct.ext2_inode_info*, align 8
  %16 = alloca %struct.ext2_sb_info*, align 8
  %17 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.buffer_head* null, %struct.buffer_head** %7, align 8
  store i64 0, i64* %11, align 8
  %18 = load %struct.inode*, %struct.inode** %4, align 8
  %19 = getelementptr inbounds %struct.inode, %struct.inode* %18, i32 0, i32 11
  %20 = load %struct.super_block*, %struct.super_block** %19, align 8
  store %struct.super_block* %20, %struct.super_block** %6, align 8
  %21 = load %struct.super_block*, %struct.super_block** %6, align 8
  %22 = call %struct.inode* @new_inode(%struct.super_block* %21)
  store %struct.inode* %22, %struct.inode** %12, align 8
  %23 = load %struct.inode*, %struct.inode** %12, align 8
  %24 = icmp ne %struct.inode* %23, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %2
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  %28 = call %struct.inode* @ERR_PTR(i32 %27)
  store %struct.inode* %28, %struct.inode** %3, align 8
  br label %425

29:                                               ; preds = %2
  %30 = load %struct.inode*, %struct.inode** %12, align 8
  %31 = call %struct.ext2_inode_info* @EXT2_I(%struct.inode* %30)
  store %struct.ext2_inode_info* %31, %struct.ext2_inode_info** %15, align 8
  %32 = load %struct.super_block*, %struct.super_block** %6, align 8
  %33 = call %struct.ext2_sb_info* @EXT2_SB(%struct.super_block* %32)
  store %struct.ext2_sb_info* %33, %struct.ext2_sb_info** %16, align 8
  %34 = load %struct.ext2_sb_info*, %struct.ext2_sb_info** %16, align 8
  %35 = getelementptr inbounds %struct.ext2_sb_info, %struct.ext2_sb_info* %34, i32 0, i32 6
  %36 = load %struct.ext2_super_block*, %struct.ext2_super_block** %35, align 8
  store %struct.ext2_super_block* %36, %struct.ext2_super_block** %14, align 8
  %37 = load i32, i32* %5, align 4
  %38 = call i64 @S_ISDIR(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %54

40:                                               ; preds = %29
  %41 = load %struct.super_block*, %struct.super_block** %6, align 8
  %42 = load i32, i32* @OLDALLOC, align 4
  %43 = call i64 @test_opt(%struct.super_block* %41, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %40
  %46 = load %struct.super_block*, %struct.super_block** %6, align 8
  %47 = load %struct.inode*, %struct.inode** %4, align 8
  %48 = call i32 @find_group_dir(%struct.super_block* %46, %struct.inode* %47)
  store i32 %48, i32* %9, align 4
  br label %53

49:                                               ; preds = %40
  %50 = load %struct.super_block*, %struct.super_block** %6, align 8
  %51 = load %struct.inode*, %struct.inode** %4, align 8
  %52 = call i32 @find_group_orlov(%struct.super_block* %50, %struct.inode* %51)
  store i32 %52, i32* %9, align 4
  br label %53

53:                                               ; preds = %49, %45
  br label %58

54:                                               ; preds = %29
  %55 = load %struct.super_block*, %struct.super_block** %6, align 8
  %56 = load %struct.inode*, %struct.inode** %4, align 8
  %57 = call i32 @find_group_other(%struct.super_block* %55, %struct.inode* %56)
  store i32 %57, i32* %9, align 4
  br label %58

58:                                               ; preds = %54, %53
  %59 = load i32, i32* %9, align 4
  %60 = icmp eq i32 %59, -1
  br i1 %60, label %61, label %64

61:                                               ; preds = %58
  %62 = load i32, i32* @ENOSPC, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %17, align 4
  br label %418

64:                                               ; preds = %58
  store i32 0, i32* %10, align 4
  br label %65

65:                                               ; preds = %137, %64
  %66 = load i32, i32* %10, align 4
  %67 = load %struct.ext2_sb_info*, %struct.ext2_sb_info** %16, align 8
  %68 = getelementptr inbounds %struct.ext2_sb_info, %struct.ext2_sb_info* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = icmp slt i32 %66, %69
  br i1 %70, label %71, label %140

71:                                               ; preds = %65
  %72 = load %struct.super_block*, %struct.super_block** %6, align 8
  %73 = load i32, i32* %9, align 4
  %74 = call %struct.ext2_group_desc* @ext2_get_group_desc(%struct.super_block* %72, i32 %73, %struct.buffer_head** %8)
  store %struct.ext2_group_desc* %74, %struct.ext2_group_desc** %13, align 8
  %75 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %76 = call i32 @brelse(%struct.buffer_head* %75)
  %77 = load %struct.super_block*, %struct.super_block** %6, align 8
  %78 = load i32, i32* %9, align 4
  %79 = call %struct.buffer_head* @read_inode_bitmap(%struct.super_block* %77, i32 %78)
  store %struct.buffer_head* %79, %struct.buffer_head** %7, align 8
  %80 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %81 = icmp ne %struct.buffer_head* %80, null
  br i1 %81, label %85, label %82

82:                                               ; preds = %71
  %83 = load i32, i32* @EIO, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %17, align 4
  br label %418

85:                                               ; preds = %71
  store i64 0, i64* %11, align 8
  br label %86

86:                                               ; preds = %135, %85
  %87 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %88 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = inttoptr i64 %89 to i64*
  %91 = load %struct.super_block*, %struct.super_block** %6, align 8
  %92 = call i32 @EXT2_INODES_PER_GROUP(%struct.super_block* %91)
  %93 = load i64, i64* %11, align 8
  %94 = call i64 @ext2_find_next_zero_bit(i64* %90, i32 %92, i64 %93)
  store i64 %94, i64* %11, align 8
  %95 = load i64, i64* %11, align 8
  %96 = load %struct.super_block*, %struct.super_block** %6, align 8
  %97 = call i32 @EXT2_INODES_PER_GROUP(%struct.super_block* %96)
  %98 = sext i32 %97 to i64
  %99 = icmp sge i64 %95, %98
  br i1 %99, label %100, label %109

100:                                              ; preds = %86
  %101 = load i32, i32* %9, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %9, align 4
  %103 = load %struct.ext2_sb_info*, %struct.ext2_sb_info** %16, align 8
  %104 = getelementptr inbounds %struct.ext2_sb_info, %struct.ext2_sb_info* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = icmp eq i32 %102, %105
  br i1 %106, label %107, label %108

107:                                              ; preds = %100
  store i32 0, i32* %9, align 4
  br label %108

108:                                              ; preds = %107, %100
  br label %137

109:                                              ; preds = %86
  %110 = load %struct.ext2_sb_info*, %struct.ext2_sb_info** %16, align 8
  %111 = load i32, i32* %9, align 4
  %112 = call i32* @sb_bgl_lock(%struct.ext2_sb_info* %110, i32 %111)
  %113 = load i64, i64* %11, align 8
  %114 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %115 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = call i64 @ext2_set_bit_atomic(i32* %112, i64 %113, i64 %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %136

119:                                              ; preds = %109
  %120 = load i64, i64* %11, align 8
  %121 = add nsw i64 %120, 1
  store i64 %121, i64* %11, align 8
  %122 = load %struct.super_block*, %struct.super_block** %6, align 8
  %123 = call i32 @EXT2_INODES_PER_GROUP(%struct.super_block* %122)
  %124 = sext i32 %123 to i64
  %125 = icmp sge i64 %121, %124
  br i1 %125, label %126, label %135

126:                                              ; preds = %119
  %127 = load i32, i32* %9, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %9, align 4
  %129 = load %struct.ext2_sb_info*, %struct.ext2_sb_info** %16, align 8
  %130 = getelementptr inbounds %struct.ext2_sb_info, %struct.ext2_sb_info* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = icmp eq i32 %128, %131
  br i1 %132, label %133, label %134

133:                                              ; preds = %126
  store i32 0, i32* %9, align 4
  br label %134

134:                                              ; preds = %133, %126
  br label %137

135:                                              ; preds = %119
  br label %86

136:                                              ; preds = %109
  br label %143

137:                                              ; preds = %134, %108
  %138 = load i32, i32* %10, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %10, align 4
  br label %65

140:                                              ; preds = %65
  %141 = load i32, i32* @ENOSPC, align 4
  %142 = sub nsw i32 0, %141
  store i32 %142, i32* %17, align 4
  br label %418

143:                                              ; preds = %136
  %144 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %145 = call i32 @mark_buffer_dirty(%struct.buffer_head* %144)
  %146 = load %struct.super_block*, %struct.super_block** %6, align 8
  %147 = getelementptr inbounds %struct.super_block, %struct.super_block* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* @MS_SYNCHRONOUS, align 4
  %150 = and i32 %148, %149
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %155

152:                                              ; preds = %143
  %153 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %154 = call i32 @sync_dirty_buffer(%struct.buffer_head* %153)
  br label %155

155:                                              ; preds = %152, %143
  %156 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %157 = call i32 @brelse(%struct.buffer_head* %156)
  %158 = load i32, i32* %9, align 4
  %159 = load %struct.super_block*, %struct.super_block** %6, align 8
  %160 = call i32 @EXT2_INODES_PER_GROUP(%struct.super_block* %159)
  %161 = mul nsw i32 %158, %160
  %162 = add nsw i32 %161, 1
  %163 = sext i32 %162 to i64
  %164 = load i64, i64* %11, align 8
  %165 = add nsw i64 %164, %163
  store i64 %165, i64* %11, align 8
  %166 = load i64, i64* %11, align 8
  %167 = load %struct.super_block*, %struct.super_block** %6, align 8
  %168 = call i64 @EXT2_FIRST_INO(%struct.super_block* %167)
  %169 = icmp slt i64 %166, %168
  br i1 %169, label %177, label %170

170:                                              ; preds = %155
  %171 = load i64, i64* %11, align 8
  %172 = load %struct.ext2_super_block*, %struct.ext2_super_block** %14, align 8
  %173 = getelementptr inbounds %struct.ext2_super_block, %struct.ext2_super_block* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = call i64 @le32_to_cpu(i32 %174)
  %176 = icmp sgt i64 %171, %175
  br i1 %176, label %177, label %184

177:                                              ; preds = %170, %155
  %178 = load %struct.super_block*, %struct.super_block** %6, align 8
  %179 = load i32, i32* %9, align 4
  %180 = load i64, i64* %11, align 8
  %181 = call i32 @ext2_error(%struct.super_block* %178, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.1, i64 0, i64 0), i32 %179, i64 %180)
  %182 = load i32, i32* @EIO, align 4
  %183 = sub nsw i32 0, %182
  store i32 %183, i32* %17, align 4
  br label %418

184:                                              ; preds = %170
  %185 = load %struct.ext2_sb_info*, %struct.ext2_sb_info** %16, align 8
  %186 = getelementptr inbounds %struct.ext2_sb_info, %struct.ext2_sb_info* %185, i32 0, i32 5
  %187 = call i32 @percpu_counter_add(i32* %186, i32 -1)
  %188 = load i32, i32* %5, align 4
  %189 = call i64 @S_ISDIR(i32 %188)
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %195

191:                                              ; preds = %184
  %192 = load %struct.ext2_sb_info*, %struct.ext2_sb_info** %16, align 8
  %193 = getelementptr inbounds %struct.ext2_sb_info, %struct.ext2_sb_info* %192, i32 0, i32 4
  %194 = call i32 @percpu_counter_inc(i32* %193)
  br label %195

195:                                              ; preds = %191, %184
  %196 = load %struct.ext2_sb_info*, %struct.ext2_sb_info** %16, align 8
  %197 = load i32, i32* %9, align 4
  %198 = call i32* @sb_bgl_lock(%struct.ext2_sb_info* %196, i32 %197)
  %199 = call i32 @spin_lock(i32* %198)
  %200 = load %struct.ext2_group_desc*, %struct.ext2_group_desc** %13, align 8
  %201 = getelementptr inbounds %struct.ext2_group_desc, %struct.ext2_group_desc* %200, i32 0, i32 1
  %202 = call i32 @le16_add_cpu(i32* %201, i32 -1)
  %203 = load i32, i32* %5, align 4
  %204 = call i64 @S_ISDIR(i32 %203)
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %206, label %228

206:                                              ; preds = %195
  %207 = load %struct.ext2_sb_info*, %struct.ext2_sb_info** %16, align 8
  %208 = getelementptr inbounds %struct.ext2_sb_info, %struct.ext2_sb_info* %207, i32 0, i32 1
  %209 = load i32*, i32** %208, align 8
  %210 = load i32, i32* %9, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i32, i32* %209, i64 %211
  %213 = load i32, i32* %212, align 4
  %214 = icmp slt i32 %213, 255
  br i1 %214, label %215, label %224

215:                                              ; preds = %206
  %216 = load %struct.ext2_sb_info*, %struct.ext2_sb_info** %16, align 8
  %217 = getelementptr inbounds %struct.ext2_sb_info, %struct.ext2_sb_info* %216, i32 0, i32 1
  %218 = load i32*, i32** %217, align 8
  %219 = load i32, i32* %9, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds i32, i32* %218, i64 %220
  %222 = load i32, i32* %221, align 4
  %223 = add nsw i32 %222, 1
  store i32 %223, i32* %221, align 4
  br label %224

224:                                              ; preds = %215, %206
  %225 = load %struct.ext2_group_desc*, %struct.ext2_group_desc** %13, align 8
  %226 = getelementptr inbounds %struct.ext2_group_desc, %struct.ext2_group_desc* %225, i32 0, i32 0
  %227 = call i32 @le16_add_cpu(i32* %226, i32 1)
  br label %247

228:                                              ; preds = %195
  %229 = load %struct.ext2_sb_info*, %struct.ext2_sb_info** %16, align 8
  %230 = getelementptr inbounds %struct.ext2_sb_info, %struct.ext2_sb_info* %229, i32 0, i32 1
  %231 = load i32*, i32** %230, align 8
  %232 = load i32, i32* %9, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds i32, i32* %231, i64 %233
  %235 = load i32, i32* %234, align 4
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %246

237:                                              ; preds = %228
  %238 = load %struct.ext2_sb_info*, %struct.ext2_sb_info** %16, align 8
  %239 = getelementptr inbounds %struct.ext2_sb_info, %struct.ext2_sb_info* %238, i32 0, i32 1
  %240 = load i32*, i32** %239, align 8
  %241 = load i32, i32* %9, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds i32, i32* %240, i64 %242
  %244 = load i32, i32* %243, align 4
  %245 = add nsw i32 %244, -1
  store i32 %245, i32* %243, align 4
  br label %246

246:                                              ; preds = %237, %228
  br label %247

247:                                              ; preds = %246, %224
  %248 = load %struct.ext2_sb_info*, %struct.ext2_sb_info** %16, align 8
  %249 = load i32, i32* %9, align 4
  %250 = call i32* @sb_bgl_lock(%struct.ext2_sb_info* %248, i32 %249)
  %251 = call i32 @spin_unlock(i32* %250)
  %252 = load %struct.super_block*, %struct.super_block** %6, align 8
  %253 = getelementptr inbounds %struct.super_block, %struct.super_block* %252, i32 0, i32 1
  store i32 1, i32* %253, align 4
  %254 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %255 = call i32 @mark_buffer_dirty(%struct.buffer_head* %254)
  %256 = call i32 (...) @current_fsuid()
  %257 = load %struct.inode*, %struct.inode** %12, align 8
  %258 = getelementptr inbounds %struct.inode, %struct.inode* %257, i32 0, i32 10
  store i32 %256, i32* %258, align 4
  %259 = load %struct.super_block*, %struct.super_block** %6, align 8
  %260 = load i32, i32* @GRPID, align 4
  %261 = call i64 @test_opt(%struct.super_block* %259, i32 %260)
  %262 = icmp ne i64 %261, 0
  br i1 %262, label %263, label %269

263:                                              ; preds = %247
  %264 = load %struct.inode*, %struct.inode** %4, align 8
  %265 = getelementptr inbounds %struct.inode, %struct.inode* %264, i32 0, i32 9
  %266 = load i32, i32* %265, align 8
  %267 = load %struct.inode*, %struct.inode** %12, align 8
  %268 = getelementptr inbounds %struct.inode, %struct.inode* %267, i32 0, i32 9
  store i32 %266, i32* %268, align 8
  br label %295

269:                                              ; preds = %247
  %270 = load %struct.inode*, %struct.inode** %4, align 8
  %271 = getelementptr inbounds %struct.inode, %struct.inode* %270, i32 0, i32 0
  %272 = load i32, i32* %271, align 8
  %273 = load i32, i32* @S_ISGID, align 4
  %274 = and i32 %272, %273
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %276, label %290

276:                                              ; preds = %269
  %277 = load %struct.inode*, %struct.inode** %4, align 8
  %278 = getelementptr inbounds %struct.inode, %struct.inode* %277, i32 0, i32 9
  %279 = load i32, i32* %278, align 8
  %280 = load %struct.inode*, %struct.inode** %12, align 8
  %281 = getelementptr inbounds %struct.inode, %struct.inode* %280, i32 0, i32 9
  store i32 %279, i32* %281, align 8
  %282 = load i32, i32* %5, align 4
  %283 = call i64 @S_ISDIR(i32 %282)
  %284 = icmp ne i64 %283, 0
  br i1 %284, label %285, label %289

285:                                              ; preds = %276
  %286 = load i32, i32* @S_ISGID, align 4
  %287 = load i32, i32* %5, align 4
  %288 = or i32 %287, %286
  store i32 %288, i32* %5, align 4
  br label %289

289:                                              ; preds = %285, %276
  br label %294

290:                                              ; preds = %269
  %291 = call i32 (...) @current_fsgid()
  %292 = load %struct.inode*, %struct.inode** %12, align 8
  %293 = getelementptr inbounds %struct.inode, %struct.inode* %292, i32 0, i32 9
  store i32 %291, i32* %293, align 8
  br label %294

294:                                              ; preds = %290, %289
  br label %295

295:                                              ; preds = %294, %263
  %296 = load i32, i32* %5, align 4
  %297 = load %struct.inode*, %struct.inode** %12, align 8
  %298 = getelementptr inbounds %struct.inode, %struct.inode* %297, i32 0, i32 0
  store i32 %296, i32* %298, align 8
  %299 = load i64, i64* %11, align 8
  %300 = load %struct.inode*, %struct.inode** %12, align 8
  %301 = getelementptr inbounds %struct.inode, %struct.inode* %300, i32 0, i32 3
  store i64 %299, i64* %301, align 8
  %302 = load %struct.inode*, %struct.inode** %12, align 8
  %303 = getelementptr inbounds %struct.inode, %struct.inode* %302, i32 0, i32 8
  store i64 0, i64* %303, align 8
  %304 = load i32, i32* @CURRENT_TIME_SEC, align 4
  %305 = load %struct.inode*, %struct.inode** %12, align 8
  %306 = getelementptr inbounds %struct.inode, %struct.inode* %305, i32 0, i32 5
  store i32 %304, i32* %306, align 8
  %307 = load %struct.inode*, %struct.inode** %12, align 8
  %308 = getelementptr inbounds %struct.inode, %struct.inode* %307, i32 0, i32 6
  store i32 %304, i32* %308, align 4
  %309 = load %struct.inode*, %struct.inode** %12, align 8
  %310 = getelementptr inbounds %struct.inode, %struct.inode* %309, i32 0, i32 7
  store i32 %304, i32* %310, align 8
  %311 = load %struct.ext2_inode_info*, %struct.ext2_inode_info** %15, align 8
  %312 = getelementptr inbounds %struct.ext2_inode_info, %struct.ext2_inode_info* %311, i32 0, i32 11
  %313 = load i32, i32* %312, align 8
  %314 = call i32 @memset(i32 %313, i32 0, i32 4)
  %315 = load i32, i32* %5, align 4
  %316 = load %struct.inode*, %struct.inode** %4, align 8
  %317 = call %struct.ext2_inode_info* @EXT2_I(%struct.inode* %316)
  %318 = getelementptr inbounds %struct.ext2_inode_info, %struct.ext2_inode_info* %317, i32 0, i32 0
  %319 = load i32, i32* %318, align 8
  %320 = load i32, i32* @EXT2_FL_INHERITED, align 4
  %321 = and i32 %319, %320
  %322 = call i32 @ext2_mask_flags(i32 %315, i32 %321)
  %323 = load %struct.ext2_inode_info*, %struct.ext2_inode_info** %15, align 8
  %324 = getelementptr inbounds %struct.ext2_inode_info, %struct.ext2_inode_info* %323, i32 0, i32 0
  store i32 %322, i32* %324, align 8
  %325 = load %struct.ext2_inode_info*, %struct.ext2_inode_info** %15, align 8
  %326 = getelementptr inbounds %struct.ext2_inode_info, %struct.ext2_inode_info* %325, i32 0, i32 10
  store i64 0, i64* %326, align 8
  %327 = load %struct.ext2_inode_info*, %struct.ext2_inode_info** %15, align 8
  %328 = getelementptr inbounds %struct.ext2_inode_info, %struct.ext2_inode_info* %327, i32 0, i32 9
  store i64 0, i64* %328, align 8
  %329 = load %struct.ext2_inode_info*, %struct.ext2_inode_info** %15, align 8
  %330 = getelementptr inbounds %struct.ext2_inode_info, %struct.ext2_inode_info* %329, i32 0, i32 8
  store i64 0, i64* %330, align 8
  %331 = load %struct.ext2_inode_info*, %struct.ext2_inode_info** %15, align 8
  %332 = getelementptr inbounds %struct.ext2_inode_info, %struct.ext2_inode_info* %331, i32 0, i32 7
  store i64 0, i64* %332, align 8
  %333 = load %struct.ext2_inode_info*, %struct.ext2_inode_info** %15, align 8
  %334 = getelementptr inbounds %struct.ext2_inode_info, %struct.ext2_inode_info* %333, i32 0, i32 6
  store i64 0, i64* %334, align 8
  %335 = load %struct.ext2_inode_info*, %struct.ext2_inode_info** %15, align 8
  %336 = getelementptr inbounds %struct.ext2_inode_info, %struct.ext2_inode_info* %335, i32 0, i32 5
  store i64 0, i64* %336, align 8
  %337 = load %struct.ext2_inode_info*, %struct.ext2_inode_info** %15, align 8
  %338 = getelementptr inbounds %struct.ext2_inode_info, %struct.ext2_inode_info* %337, i32 0, i32 4
  store i32* null, i32** %338, align 8
  %339 = load i32, i32* %9, align 4
  %340 = load %struct.ext2_inode_info*, %struct.ext2_inode_info** %15, align 8
  %341 = getelementptr inbounds %struct.ext2_inode_info, %struct.ext2_inode_info* %340, i32 0, i32 1
  store i32 %339, i32* %341, align 4
  %342 = load %struct.ext2_inode_info*, %struct.ext2_inode_info** %15, align 8
  %343 = getelementptr inbounds %struct.ext2_inode_info, %struct.ext2_inode_info* %342, i32 0, i32 3
  store i64 0, i64* %343, align 8
  %344 = load i32, i32* @EXT2_STATE_NEW, align 4
  %345 = load %struct.ext2_inode_info*, %struct.ext2_inode_info** %15, align 8
  %346 = getelementptr inbounds %struct.ext2_inode_info, %struct.ext2_inode_info* %345, i32 0, i32 2
  store i32 %344, i32* %346, align 8
  %347 = load %struct.inode*, %struct.inode** %12, align 8
  %348 = call i32 @ext2_set_inode_flags(%struct.inode* %347)
  %349 = load %struct.ext2_sb_info*, %struct.ext2_sb_info** %16, align 8
  %350 = getelementptr inbounds %struct.ext2_sb_info, %struct.ext2_sb_info* %349, i32 0, i32 2
  %351 = call i32 @spin_lock(i32* %350)
  %352 = load %struct.ext2_sb_info*, %struct.ext2_sb_info** %16, align 8
  %353 = getelementptr inbounds %struct.ext2_sb_info, %struct.ext2_sb_info* %352, i32 0, i32 3
  %354 = load i32, i32* %353, align 4
  %355 = add nsw i32 %354, 1
  store i32 %355, i32* %353, align 4
  %356 = sext i32 %354 to i64
  %357 = load %struct.inode*, %struct.inode** %12, align 8
  %358 = getelementptr inbounds %struct.inode, %struct.inode* %357, i32 0, i32 4
  store i64 %356, i64* %358, align 8
  %359 = load %struct.ext2_sb_info*, %struct.ext2_sb_info** %16, align 8
  %360 = getelementptr inbounds %struct.ext2_sb_info, %struct.ext2_sb_info* %359, i32 0, i32 2
  %361 = call i32 @spin_unlock(i32* %360)
  %362 = load %struct.inode*, %struct.inode** %12, align 8
  %363 = call i64 @insert_inode_locked(%struct.inode* %362)
  %364 = icmp slt i64 %363, 0
  br i1 %364, label %365, label %368

365:                                              ; preds = %295
  %366 = load i32, i32* @EINVAL, align 4
  %367 = sub nsw i32 0, %366
  store i32 %367, i32* %17, align 4
  br label %402

368:                                              ; preds = %295
  %369 = load %struct.inode*, %struct.inode** %12, align 8
  %370 = call i64 @vfs_dq_alloc_inode(%struct.inode* %369)
  %371 = icmp ne i64 %370, 0
  br i1 %371, label %372, label %375

372:                                              ; preds = %368
  %373 = load i32, i32* @EDQUOT, align 4
  %374 = sub nsw i32 0, %373
  store i32 %374, i32* %17, align 4
  br label %402

375:                                              ; preds = %368
  %376 = load %struct.inode*, %struct.inode** %12, align 8
  %377 = load %struct.inode*, %struct.inode** %4, align 8
  %378 = call i32 @ext2_init_acl(%struct.inode* %376, %struct.inode* %377)
  store i32 %378, i32* %17, align 4
  %379 = load i32, i32* %17, align 4
  %380 = icmp ne i32 %379, 0
  br i1 %380, label %381, label %382

381:                                              ; preds = %375
  br label %399

382:                                              ; preds = %375
  %383 = load %struct.inode*, %struct.inode** %12, align 8
  %384 = load %struct.inode*, %struct.inode** %4, align 8
  %385 = call i32 @ext2_init_security(%struct.inode* %383, %struct.inode* %384)
  store i32 %385, i32* %17, align 4
  %386 = load i32, i32* %17, align 4
  %387 = icmp ne i32 %386, 0
  br i1 %387, label %388, label %389

388:                                              ; preds = %382
  br label %399

389:                                              ; preds = %382
  %390 = load %struct.inode*, %struct.inode** %12, align 8
  %391 = call i32 @mark_inode_dirty(%struct.inode* %390)
  %392 = load %struct.inode*, %struct.inode** %12, align 8
  %393 = getelementptr inbounds %struct.inode, %struct.inode* %392, i32 0, i32 3
  %394 = load i64, i64* %393, align 8
  %395 = call i32 @ext2_debug(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i64 %394)
  %396 = load %struct.inode*, %struct.inode** %12, align 8
  %397 = call i32 @ext2_preread_inode(%struct.inode* %396)
  %398 = load %struct.inode*, %struct.inode** %12, align 8
  store %struct.inode* %398, %struct.inode** %3, align 8
  br label %425

399:                                              ; preds = %388, %381
  %400 = load %struct.inode*, %struct.inode** %12, align 8
  %401 = call i32 @vfs_dq_free_inode(%struct.inode* %400)
  br label %402

402:                                              ; preds = %399, %372, %365
  %403 = load %struct.inode*, %struct.inode** %12, align 8
  %404 = call i32 @vfs_dq_drop(%struct.inode* %403)
  %405 = load i32, i32* @S_NOQUOTA, align 4
  %406 = load %struct.inode*, %struct.inode** %12, align 8
  %407 = getelementptr inbounds %struct.inode, %struct.inode* %406, i32 0, i32 2
  %408 = load i32, i32* %407, align 8
  %409 = or i32 %408, %405
  store i32 %409, i32* %407, align 8
  %410 = load %struct.inode*, %struct.inode** %12, align 8
  %411 = getelementptr inbounds %struct.inode, %struct.inode* %410, i32 0, i32 1
  store i64 0, i64* %411, align 8
  %412 = load %struct.inode*, %struct.inode** %12, align 8
  %413 = call i32 @unlock_new_inode(%struct.inode* %412)
  %414 = load %struct.inode*, %struct.inode** %12, align 8
  %415 = call i32 @iput(%struct.inode* %414)
  %416 = load i32, i32* %17, align 4
  %417 = call %struct.inode* @ERR_PTR(i32 %416)
  store %struct.inode* %417, %struct.inode** %3, align 8
  br label %425

418:                                              ; preds = %177, %140, %82, %61
  %419 = load %struct.inode*, %struct.inode** %12, align 8
  %420 = call i32 @make_bad_inode(%struct.inode* %419)
  %421 = load %struct.inode*, %struct.inode** %12, align 8
  %422 = call i32 @iput(%struct.inode* %421)
  %423 = load i32, i32* %17, align 4
  %424 = call %struct.inode* @ERR_PTR(i32 %423)
  store %struct.inode* %424, %struct.inode** %3, align 8
  br label %425

425:                                              ; preds = %418, %402, %389, %25
  %426 = load %struct.inode*, %struct.inode** %3, align 8
  ret %struct.inode* %426
}

declare dso_local %struct.inode* @new_inode(%struct.super_block*) #1

declare dso_local %struct.inode* @ERR_PTR(i32) #1

declare dso_local %struct.ext2_inode_info* @EXT2_I(%struct.inode*) #1

declare dso_local %struct.ext2_sb_info* @EXT2_SB(%struct.super_block*) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i64 @test_opt(%struct.super_block*, i32) #1

declare dso_local i32 @find_group_dir(%struct.super_block*, %struct.inode*) #1

declare dso_local i32 @find_group_orlov(%struct.super_block*, %struct.inode*) #1

declare dso_local i32 @find_group_other(%struct.super_block*, %struct.inode*) #1

declare dso_local %struct.ext2_group_desc* @ext2_get_group_desc(%struct.super_block*, i32, %struct.buffer_head**) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local %struct.buffer_head* @read_inode_bitmap(%struct.super_block*, i32) #1

declare dso_local i64 @ext2_find_next_zero_bit(i64*, i32, i64) #1

declare dso_local i32 @EXT2_INODES_PER_GROUP(%struct.super_block*) #1

declare dso_local i64 @ext2_set_bit_atomic(i32*, i64, i64) #1

declare dso_local i32* @sb_bgl_lock(%struct.ext2_sb_info*, i32) #1

declare dso_local i32 @mark_buffer_dirty(%struct.buffer_head*) #1

declare dso_local i32 @sync_dirty_buffer(%struct.buffer_head*) #1

declare dso_local i64 @EXT2_FIRST_INO(%struct.super_block*) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @ext2_error(%struct.super_block*, i8*, i8*, i32, i64) #1

declare dso_local i32 @percpu_counter_add(i32*, i32) #1

declare dso_local i32 @percpu_counter_inc(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @le16_add_cpu(i32*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @current_fsuid(...) #1

declare dso_local i32 @current_fsgid(...) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @ext2_mask_flags(i32, i32) #1

declare dso_local i32 @ext2_set_inode_flags(%struct.inode*) #1

declare dso_local i64 @insert_inode_locked(%struct.inode*) #1

declare dso_local i64 @vfs_dq_alloc_inode(%struct.inode*) #1

declare dso_local i32 @ext2_init_acl(%struct.inode*, %struct.inode*) #1

declare dso_local i32 @ext2_init_security(%struct.inode*, %struct.inode*) #1

declare dso_local i32 @mark_inode_dirty(%struct.inode*) #1

declare dso_local i32 @ext2_debug(i8*, i64) #1

declare dso_local i32 @ext2_preread_inode(%struct.inode*) #1

declare dso_local i32 @vfs_dq_free_inode(%struct.inode*) #1

declare dso_local i32 @vfs_dq_drop(%struct.inode*) #1

declare dso_local i32 @unlock_new_inode(%struct.inode*) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local i32 @make_bad_inode(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
