; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_balloc.c_ext4_init_block_bitmap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_balloc.c_ext4_init_block_bitmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.buffer_head = type { i32 }
%struct.ext4_group_desc = type { i32 }
%struct.ext4_sb_info = type { i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [26 x i8] c"Checksum bad for group %u\00", align 1
@EXT4_FEATURE_INCOMPAT_META_BG = common dso_local global i32 0, align 4
@EXT4_FEATURE_INCOMPAT_FLEX_BG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext4_init_block_bitmap(%struct.super_block* %0, %struct.buffer_head* %1, i32 %2, %struct.ext4_group_desc* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca %struct.buffer_head*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ext4_group_desc*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.ext4_sb_info*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %6, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.ext4_group_desc* %3, %struct.ext4_group_desc** %9, align 8
  %19 = load %struct.super_block*, %struct.super_block** %6, align 8
  %20 = call i32 @ext4_get_groups_count(%struct.super_block* %19)
  store i32 %20, i32* %12, align 4
  %21 = load %struct.super_block*, %struct.super_block** %6, align 8
  %22 = call %struct.ext4_sb_info* @EXT4_SB(%struct.super_block* %21)
  store %struct.ext4_sb_info* %22, %struct.ext4_sb_info** %15, align 8
  %23 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %24 = icmp ne %struct.buffer_head* %23, null
  br i1 %24, label %25, label %63

25:                                               ; preds = %4
  %26 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %27 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %28 = call i32 @buffer_locked(%struct.buffer_head* %27)
  %29 = call i32 @J_ASSERT_BH(%struct.buffer_head* %26, i32 %28)
  %30 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %15, align 8
  %31 = load i32, i32* %8, align 4
  %32 = load %struct.ext4_group_desc*, %struct.ext4_group_desc** %9, align 8
  %33 = call i32 @ext4_group_desc_csum_verify(%struct.ext4_sb_info* %30, i32 %31, %struct.ext4_group_desc* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %55, label %35

35:                                               ; preds = %25
  %36 = load %struct.super_block*, %struct.super_block** %6, align 8
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @ext4_error(%struct.super_block* %36, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %37)
  %39 = load %struct.super_block*, %struct.super_block** %6, align 8
  %40 = load %struct.ext4_group_desc*, %struct.ext4_group_desc** %9, align 8
  %41 = call i32 @ext4_free_blks_set(%struct.super_block* %39, %struct.ext4_group_desc* %40, i32 0)
  %42 = load %struct.super_block*, %struct.super_block** %6, align 8
  %43 = load %struct.ext4_group_desc*, %struct.ext4_group_desc** %9, align 8
  %44 = call i32 @ext4_free_inodes_set(%struct.super_block* %42, %struct.ext4_group_desc* %43, i32 0)
  %45 = load %struct.super_block*, %struct.super_block** %6, align 8
  %46 = load %struct.ext4_group_desc*, %struct.ext4_group_desc** %9, align 8
  %47 = call i32 @ext4_itable_unused_set(%struct.super_block* %45, %struct.ext4_group_desc* %46, i32 0)
  %48 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %49 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.super_block*, %struct.super_block** %6, align 8
  %52 = getelementptr inbounds %struct.super_block, %struct.super_block* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @memset(i32 %50, i32 255, i32 %53)
  store i32 0, i32* %5, align 4
  br label %262

55:                                               ; preds = %25
  %56 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %57 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.super_block*, %struct.super_block** %6, align 8
  %60 = getelementptr inbounds %struct.super_block, %struct.super_block* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @memset(i32 %58, i32 0, i32 %61)
  br label %63

63:                                               ; preds = %55, %4
  %64 = load %struct.super_block*, %struct.super_block** %6, align 8
  %65 = load i32, i32* %8, align 4
  %66 = call i32 @ext4_bg_has_super(%struct.super_block* %64, i32 %65)
  store i32 %66, i32* %11, align 4
  %67 = load %struct.super_block*, %struct.super_block** %6, align 8
  %68 = load i32, i32* @EXT4_FEATURE_INCOMPAT_META_BG, align 4
  %69 = call i64 @EXT4_HAS_INCOMPAT_FEATURE(%struct.super_block* %67, i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %84

71:                                               ; preds = %63
  %72 = load i32, i32* %8, align 4
  %73 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %15, align 8
  %74 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %73, i32 0, i32 2
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @le32_to_cpu(i32 %77)
  %79 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %15, align 8
  %80 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = mul nsw i32 %78, %81
  %83 = icmp slt i32 %72, %82
  br i1 %83, label %84, label %106

84:                                               ; preds = %71, %63
  %85 = load i32, i32* %11, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %105

87:                                               ; preds = %84
  %88 = load %struct.super_block*, %struct.super_block** %6, align 8
  %89 = load i32, i32* %8, align 4
  %90 = call i64 @ext4_bg_num_gdb(%struct.super_block* %88, i32 %89)
  %91 = load i32, i32* %11, align 4
  %92 = sext i32 %91 to i64
  %93 = add nsw i64 %92, %90
  %94 = trunc i64 %93 to i32
  store i32 %94, i32* %11, align 4
  %95 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %15, align 8
  %96 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %95, i32 0, i32 2
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = call i64 @le16_to_cpu(i32 %99)
  %101 = load i32, i32* %11, align 4
  %102 = sext i32 %101 to i64
  %103 = add nsw i64 %102, %100
  %104 = trunc i64 %103 to i32
  store i32 %104, i32* %11, align 4
  br label %105

105:                                              ; preds = %87, %84
  br label %114

106:                                              ; preds = %71
  %107 = load %struct.super_block*, %struct.super_block** %6, align 8
  %108 = load i32, i32* %8, align 4
  %109 = call i64 @ext4_bg_num_gdb(%struct.super_block* %107, i32 %108)
  %110 = load i32, i32* %11, align 4
  %111 = sext i32 %110 to i64
  %112 = add nsw i64 %111, %109
  %113 = trunc i64 %112 to i32
  store i32 %113, i32* %11, align 4
  br label %114

114:                                              ; preds = %106, %105
  %115 = load i32, i32* %8, align 4
  %116 = load i32, i32* %12, align 4
  %117 = sub nsw i32 %116, 1
  %118 = icmp eq i32 %115, %117
  br i1 %118, label %119, label %137

119:                                              ; preds = %114
  %120 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %15, align 8
  %121 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %120, i32 0, i32 2
  %122 = load %struct.TYPE_2__*, %struct.TYPE_2__** %121, align 8
  %123 = call i32 @ext4_blocks_count(%struct.TYPE_2__* %122)
  %124 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %15, align 8
  %125 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %124, i32 0, i32 2
  %126 = load %struct.TYPE_2__*, %struct.TYPE_2__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @le32_to_cpu(i32 %128)
  %130 = sub nsw i32 %123, %129
  %131 = load %struct.super_block*, %struct.super_block** %6, align 8
  %132 = call i32 @EXT4_BLOCKS_PER_GROUP(%struct.super_block* %131)
  %133 = load i32, i32* %12, align 4
  %134 = sub nsw i32 %133, 1
  %135 = mul nsw i32 %132, %134
  %136 = sub nsw i32 %130, %135
  store i32 %136, i32* %14, align 4
  br label %140

137:                                              ; preds = %114
  %138 = load %struct.super_block*, %struct.super_block** %6, align 8
  %139 = call i32 @EXT4_BLOCKS_PER_GROUP(%struct.super_block* %138)
  store i32 %139, i32* %14, align 4
  br label %140

140:                                              ; preds = %137, %119
  %141 = load i32, i32* %14, align 4
  %142 = load i32, i32* %11, align 4
  %143 = sub i32 %141, %142
  store i32 %143, i32* %13, align 4
  %144 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %145 = icmp ne %struct.buffer_head* %144, null
  br i1 %145, label %146, label %255

146:                                              ; preds = %140
  store i32 0, i32* %18, align 4
  store i32 0, i32* %10, align 4
  br label %147

147:                                              ; preds = %158, %146
  %148 = load i32, i32* %10, align 4
  %149 = load i32, i32* %11, align 4
  %150 = icmp slt i32 %148, %149
  br i1 %150, label %151, label %161

151:                                              ; preds = %147
  %152 = load i32, i32* %10, align 4
  %153 = sext i32 %152 to i64
  %154 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %155 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @ext4_set_bit(i64 %153, i32 %156)
  br label %158

158:                                              ; preds = %151
  %159 = load i32, i32* %10, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %10, align 4
  br label %147

161:                                              ; preds = %147
  %162 = load %struct.super_block*, %struct.super_block** %6, align 8
  %163 = load i32, i32* %8, align 4
  %164 = call i64 @ext4_group_first_block_no(%struct.super_block* %162, i32 %163)
  store i64 %164, i64* %16, align 8
  %165 = load %struct.super_block*, %struct.super_block** %6, align 8
  %166 = load i32, i32* @EXT4_FEATURE_INCOMPAT_FLEX_BG, align 4
  %167 = call i64 @EXT4_HAS_INCOMPAT_FEATURE(%struct.super_block* %165, i32 %166)
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %170

169:                                              ; preds = %161
  store i32 1, i32* %18, align 4
  br label %170

170:                                              ; preds = %169, %161
  %171 = load %struct.super_block*, %struct.super_block** %6, align 8
  %172 = load %struct.ext4_group_desc*, %struct.ext4_group_desc** %9, align 8
  %173 = call i64 @ext4_block_bitmap(%struct.super_block* %171, %struct.ext4_group_desc* %172)
  store i64 %173, i64* %17, align 8
  %174 = load i32, i32* %18, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %182

176:                                              ; preds = %170
  %177 = load %struct.super_block*, %struct.super_block** %6, align 8
  %178 = load i64, i64* %17, align 8
  %179 = load i32, i32* %8, align 4
  %180 = call i64 @ext4_block_in_group(%struct.super_block* %177, i64 %178, i32 %179)
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %190

182:                                              ; preds = %176, %170
  %183 = load i64, i64* %17, align 8
  %184 = load i64, i64* %16, align 8
  %185 = sub nsw i64 %183, %184
  %186 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %187 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  %189 = call i32 @ext4_set_bit(i64 %185, i32 %188)
  br label %190

190:                                              ; preds = %182, %176
  %191 = load %struct.super_block*, %struct.super_block** %6, align 8
  %192 = load %struct.ext4_group_desc*, %struct.ext4_group_desc** %9, align 8
  %193 = call i64 @ext4_inode_bitmap(%struct.super_block* %191, %struct.ext4_group_desc* %192)
  store i64 %193, i64* %17, align 8
  %194 = load i32, i32* %18, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %202

196:                                              ; preds = %190
  %197 = load %struct.super_block*, %struct.super_block** %6, align 8
  %198 = load i64, i64* %17, align 8
  %199 = load i32, i32* %8, align 4
  %200 = call i64 @ext4_block_in_group(%struct.super_block* %197, i64 %198, i32 %199)
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %210

202:                                              ; preds = %196, %190
  %203 = load i64, i64* %17, align 8
  %204 = load i64, i64* %16, align 8
  %205 = sub nsw i64 %203, %204
  %206 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %207 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 4
  %209 = call i32 @ext4_set_bit(i64 %205, i32 %208)
  br label %210

210:                                              ; preds = %202, %196
  %211 = load %struct.super_block*, %struct.super_block** %6, align 8
  %212 = load %struct.ext4_group_desc*, %struct.ext4_group_desc** %9, align 8
  %213 = call i64 @ext4_inode_table(%struct.super_block* %211, %struct.ext4_group_desc* %212)
  store i64 %213, i64* %17, align 8
  br label %214

214:                                              ; preds = %242, %210
  %215 = load i64, i64* %17, align 8
  %216 = load %struct.super_block*, %struct.super_block** %6, align 8
  %217 = load %struct.ext4_group_desc*, %struct.ext4_group_desc** %9, align 8
  %218 = call i64 @ext4_inode_table(%struct.super_block* %216, %struct.ext4_group_desc* %217)
  %219 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %15, align 8
  %220 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %219, i32 0, i32 1
  %221 = load i64, i64* %220, align 8
  %222 = add nsw i64 %218, %221
  %223 = icmp slt i64 %215, %222
  br i1 %223, label %224, label %245

224:                                              ; preds = %214
  %225 = load i32, i32* %18, align 4
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %233

227:                                              ; preds = %224
  %228 = load %struct.super_block*, %struct.super_block** %6, align 8
  %229 = load i64, i64* %17, align 8
  %230 = load i32, i32* %8, align 4
  %231 = call i64 @ext4_block_in_group(%struct.super_block* %228, i64 %229, i32 %230)
  %232 = icmp ne i64 %231, 0
  br i1 %232, label %233, label %241

233:                                              ; preds = %227, %224
  %234 = load i64, i64* %17, align 8
  %235 = load i64, i64* %16, align 8
  %236 = sub nsw i64 %234, %235
  %237 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %238 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 4
  %240 = call i32 @ext4_set_bit(i64 %236, i32 %239)
  br label %241

241:                                              ; preds = %233, %227
  br label %242

242:                                              ; preds = %241
  %243 = load i64, i64* %17, align 8
  %244 = add nsw i64 %243, 1
  store i64 %244, i64* %17, align 8
  br label %214

245:                                              ; preds = %214
  %246 = load i32, i32* %14, align 4
  %247 = load %struct.super_block*, %struct.super_block** %6, align 8
  %248 = getelementptr inbounds %struct.super_block, %struct.super_block* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 4
  %250 = mul nsw i32 %249, 8
  %251 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %252 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 4
  %254 = call i32 @mark_bitmap_end(i32 %246, i32 %250, i32 %253)
  br label %255

255:                                              ; preds = %245, %140
  %256 = load i32, i32* %13, align 4
  %257 = load %struct.super_block*, %struct.super_block** %6, align 8
  %258 = load i32, i32* %8, align 4
  %259 = load %struct.ext4_group_desc*, %struct.ext4_group_desc** %9, align 8
  %260 = call i32 @ext4_group_used_meta_blocks(%struct.super_block* %257, i32 %258, %struct.ext4_group_desc* %259)
  %261 = sub i32 %256, %260
  store i32 %261, i32* %5, align 4
  br label %262

262:                                              ; preds = %255, %35
  %263 = load i32, i32* %5, align 4
  ret i32 %263
}

declare dso_local i32 @ext4_get_groups_count(%struct.super_block*) #1

declare dso_local %struct.ext4_sb_info* @EXT4_SB(%struct.super_block*) #1

declare dso_local i32 @J_ASSERT_BH(%struct.buffer_head*, i32) #1

declare dso_local i32 @buffer_locked(%struct.buffer_head*) #1

declare dso_local i32 @ext4_group_desc_csum_verify(%struct.ext4_sb_info*, i32, %struct.ext4_group_desc*) #1

declare dso_local i32 @ext4_error(%struct.super_block*, i8*, i32) #1

declare dso_local i32 @ext4_free_blks_set(%struct.super_block*, %struct.ext4_group_desc*, i32) #1

declare dso_local i32 @ext4_free_inodes_set(%struct.super_block*, %struct.ext4_group_desc*, i32) #1

declare dso_local i32 @ext4_itable_unused_set(%struct.super_block*, %struct.ext4_group_desc*, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @ext4_bg_has_super(%struct.super_block*, i32) #1

declare dso_local i64 @EXT4_HAS_INCOMPAT_FEATURE(%struct.super_block*, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i64 @ext4_bg_num_gdb(%struct.super_block*, i32) #1

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i32 @ext4_blocks_count(%struct.TYPE_2__*) #1

declare dso_local i32 @EXT4_BLOCKS_PER_GROUP(%struct.super_block*) #1

declare dso_local i32 @ext4_set_bit(i64, i32) #1

declare dso_local i64 @ext4_group_first_block_no(%struct.super_block*, i32) #1

declare dso_local i64 @ext4_block_bitmap(%struct.super_block*, %struct.ext4_group_desc*) #1

declare dso_local i64 @ext4_block_in_group(%struct.super_block*, i64, i32) #1

declare dso_local i64 @ext4_inode_bitmap(%struct.super_block*, %struct.ext4_group_desc*) #1

declare dso_local i64 @ext4_inode_table(%struct.super_block*, %struct.ext4_group_desc*) #1

declare dso_local i32 @mark_bitmap_end(i32, i32, i32) #1

declare dso_local i32 @ext4_group_used_meta_blocks(%struct.super_block*, i32, %struct.ext4_group_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
