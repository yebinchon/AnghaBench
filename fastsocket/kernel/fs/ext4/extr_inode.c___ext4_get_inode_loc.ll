; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_inode.c___ext4_get_inode_loc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_inode.c___ext4_get_inode_loc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, %struct.super_block* }
%struct.super_block = type { i32 }
%struct.ext4_iloc = type { i32, i32, %struct.buffer_head* }
%struct.buffer_head = type { i32, i32, i32 }
%struct.ext4_group_desc = type { i32 }
%struct.TYPE_2__ = type { i32 }

@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"unable to read inode block - inode=%lu, block=%llu\00", align 1
@EXT4_FEATURE_RO_COMPAT_GDT_CSUM = common dso_local global i32 0, align 4
@end_buffer_read_sync = common dso_local global i32 0, align 4
@READ_META = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.ext4_iloc*, i32)* @__ext4_get_inode_loc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__ext4_get_inode_loc(%struct.inode* %0, %struct.ext4_iloc* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.ext4_iloc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ext4_group_desc*, align 8
  %9 = alloca %struct.buffer_head*, align 8
  %10 = alloca %struct.super_block*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.buffer_head*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.ext4_iloc* %1, %struct.ext4_iloc** %6, align 8
  store i32 %2, i32* %7, align 4
  %21 = load %struct.inode*, %struct.inode** %5, align 8
  %22 = getelementptr inbounds %struct.inode, %struct.inode* %21, i32 0, i32 1
  %23 = load %struct.super_block*, %struct.super_block** %22, align 8
  store %struct.super_block* %23, %struct.super_block** %10, align 8
  %24 = load %struct.ext4_iloc*, %struct.ext4_iloc** %6, align 8
  %25 = getelementptr inbounds %struct.ext4_iloc, %struct.ext4_iloc* %24, i32 0, i32 2
  store %struct.buffer_head* null, %struct.buffer_head** %25, align 8
  %26 = load %struct.super_block*, %struct.super_block** %10, align 8
  %27 = load %struct.inode*, %struct.inode** %5, align 8
  %28 = getelementptr inbounds %struct.inode, %struct.inode* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @ext4_valid_inum(%struct.super_block* %26, i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %3
  %33 = load i32, i32* @EIO, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %289

35:                                               ; preds = %3
  %36 = load %struct.inode*, %struct.inode** %5, align 8
  %37 = getelementptr inbounds %struct.inode, %struct.inode* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = sub nsw i32 %38, 1
  %40 = load %struct.super_block*, %struct.super_block** %10, align 8
  %41 = call i32 @EXT4_INODES_PER_GROUP(%struct.super_block* %40)
  %42 = sdiv i32 %39, %41
  %43 = load %struct.ext4_iloc*, %struct.ext4_iloc** %6, align 8
  %44 = getelementptr inbounds %struct.ext4_iloc, %struct.ext4_iloc* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  %45 = load %struct.super_block*, %struct.super_block** %10, align 8
  %46 = load %struct.ext4_iloc*, %struct.ext4_iloc** %6, align 8
  %47 = getelementptr inbounds %struct.ext4_iloc, %struct.ext4_iloc* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call %struct.ext4_group_desc* @ext4_get_group_desc(%struct.super_block* %45, i32 %48, i32* null)
  store %struct.ext4_group_desc* %49, %struct.ext4_group_desc** %8, align 8
  %50 = load %struct.ext4_group_desc*, %struct.ext4_group_desc** %8, align 8
  %51 = icmp ne %struct.ext4_group_desc* %50, null
  br i1 %51, label %55, label %52

52:                                               ; preds = %35
  %53 = load i32, i32* @EIO, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %4, align 4
  br label %289

55:                                               ; preds = %35
  %56 = load %struct.super_block*, %struct.super_block** %10, align 8
  %57 = call i32 @EXT4_BLOCK_SIZE(%struct.super_block* %56)
  %58 = load %struct.super_block*, %struct.super_block** %10, align 8
  %59 = call i32 @EXT4_INODE_SIZE(%struct.super_block* %58)
  %60 = sdiv i32 %57, %59
  store i32 %60, i32* %12, align 4
  %61 = load %struct.inode*, %struct.inode** %5, align 8
  %62 = getelementptr inbounds %struct.inode, %struct.inode* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = sub nsw i32 %63, 1
  %65 = load %struct.super_block*, %struct.super_block** %10, align 8
  %66 = call i32 @EXT4_INODES_PER_GROUP(%struct.super_block* %65)
  %67 = srem i32 %64, %66
  store i32 %67, i32* %13, align 4
  %68 = load %struct.super_block*, %struct.super_block** %10, align 8
  %69 = load %struct.ext4_group_desc*, %struct.ext4_group_desc** %8, align 8
  %70 = call i32 @ext4_inode_table(%struct.super_block* %68, %struct.ext4_group_desc* %69)
  %71 = load i32, i32* %13, align 4
  %72 = load i32, i32* %12, align 4
  %73 = sdiv i32 %71, %72
  %74 = add nsw i32 %70, %73
  store i32 %74, i32* %11, align 4
  %75 = load i32, i32* %13, align 4
  %76 = load i32, i32* %12, align 4
  %77 = srem i32 %75, %76
  %78 = load %struct.super_block*, %struct.super_block** %10, align 8
  %79 = call i32 @EXT4_INODE_SIZE(%struct.super_block* %78)
  %80 = mul nsw i32 %77, %79
  %81 = load %struct.ext4_iloc*, %struct.ext4_iloc** %6, align 8
  %82 = getelementptr inbounds %struct.ext4_iloc, %struct.ext4_iloc* %81, i32 0, i32 1
  store i32 %80, i32* %82, align 4
  %83 = load %struct.super_block*, %struct.super_block** %10, align 8
  %84 = load i32, i32* %11, align 4
  %85 = call %struct.buffer_head* @sb_getblk(%struct.super_block* %83, i32 %84)
  store %struct.buffer_head* %85, %struct.buffer_head** %9, align 8
  %86 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %87 = icmp ne %struct.buffer_head* %86, null
  br i1 %87, label %97, label %88

88:                                               ; preds = %55
  %89 = load %struct.super_block*, %struct.super_block** %10, align 8
  %90 = load %struct.inode*, %struct.inode** %5, align 8
  %91 = getelementptr inbounds %struct.inode, %struct.inode* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* %11, align 4
  %94 = call i32 @ext4_error(%struct.super_block* %89, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %92, i32 %93)
  %95 = load i32, i32* @EIO, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %4, align 4
  br label %289

97:                                               ; preds = %55
  %98 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %99 = call i64 @buffer_uptodate(%struct.buffer_head* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %284, label %101

101:                                              ; preds = %97
  %102 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %103 = call i32 @lock_buffer(%struct.buffer_head* %102)
  %104 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %105 = call i64 @buffer_write_io_error(%struct.buffer_head* %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %114

107:                                              ; preds = %101
  %108 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %109 = call i64 @buffer_uptodate(%struct.buffer_head* %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %114, label %111

111:                                              ; preds = %107
  %112 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %113 = call i32 @set_buffer_uptodate(%struct.buffer_head* %112)
  br label %114

114:                                              ; preds = %111, %107, %101
  %115 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %116 = call i64 @buffer_uptodate(%struct.buffer_head* %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %114
  %119 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %120 = call i32 @unlock_buffer(%struct.buffer_head* %119)
  br label %285

121:                                              ; preds = %114
  %122 = load i32, i32* %7, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %191

124:                                              ; preds = %121
  %125 = load i32, i32* %13, align 4
  %126 = load i32, i32* %12, align 4
  %127 = sub nsw i32 %126, 1
  %128 = xor i32 %127, -1
  %129 = and i32 %125, %128
  store i32 %129, i32* %16, align 4
  %130 = load %struct.super_block*, %struct.super_block** %10, align 8
  %131 = load %struct.super_block*, %struct.super_block** %10, align 8
  %132 = load %struct.ext4_group_desc*, %struct.ext4_group_desc** %8, align 8
  %133 = call i32 @ext4_inode_bitmap(%struct.super_block* %131, %struct.ext4_group_desc* %132)
  %134 = call %struct.buffer_head* @sb_getblk(%struct.super_block* %130, i32 %133)
  store %struct.buffer_head* %134, %struct.buffer_head** %14, align 8
  %135 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %136 = icmp ne %struct.buffer_head* %135, null
  br i1 %136, label %138, label %137

137:                                              ; preds = %124
  br label %192

138:                                              ; preds = %124
  %139 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %140 = call i64 @buffer_uptodate(%struct.buffer_head* %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %145, label %142

142:                                              ; preds = %138
  %143 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %144 = call i32 @brelse(%struct.buffer_head* %143)
  br label %192

145:                                              ; preds = %138
  %146 = load i32, i32* %16, align 4
  store i32 %146, i32* %15, align 4
  br label %147

147:                                              ; preds = %167, %145
  %148 = load i32, i32* %15, align 4
  %149 = load i32, i32* %16, align 4
  %150 = load i32, i32* %12, align 4
  %151 = add nsw i32 %149, %150
  %152 = icmp slt i32 %148, %151
  br i1 %152, label %153, label %170

153:                                              ; preds = %147
  %154 = load i32, i32* %15, align 4
  %155 = load i32, i32* %13, align 4
  %156 = icmp eq i32 %154, %155
  br i1 %156, label %157, label %158

157:                                              ; preds = %153
  br label %167

158:                                              ; preds = %153
  %159 = load i32, i32* %15, align 4
  %160 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %161 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 4
  %163 = call i64 @ext4_test_bit(i32 %159, i32 %162)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %166

165:                                              ; preds = %158
  br label %170

166:                                              ; preds = %158
  br label %167

167:                                              ; preds = %166, %157
  %168 = load i32, i32* %15, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %15, align 4
  br label %147

170:                                              ; preds = %165, %147
  %171 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %172 = call i32 @brelse(%struct.buffer_head* %171)
  %173 = load i32, i32* %15, align 4
  %174 = load i32, i32* %16, align 4
  %175 = load i32, i32* %12, align 4
  %176 = add nsw i32 %174, %175
  %177 = icmp eq i32 %173, %176
  br i1 %177, label %178, label %190

178:                                              ; preds = %170
  %179 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %180 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %179, i32 0, i32 2
  %181 = load i32, i32* %180, align 4
  %182 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %183 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = call i32 @memset(i32 %181, i32 0, i32 %184)
  %186 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %187 = call i32 @set_buffer_uptodate(%struct.buffer_head* %186)
  %188 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %189 = call i32 @unlock_buffer(%struct.buffer_head* %188)
  br label %285

190:                                              ; preds = %170
  br label %191

191:                                              ; preds = %190, %121
  br label %192

192:                                              ; preds = %191, %142, %137
  %193 = load %struct.super_block*, %struct.super_block** %10, align 8
  %194 = call %struct.TYPE_2__* @EXT4_SB(%struct.super_block* %193)
  %195 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %258

198:                                              ; preds = %192
  %199 = load %struct.super_block*, %struct.super_block** %10, align 8
  %200 = load %struct.ext4_group_desc*, %struct.ext4_group_desc** %8, align 8
  %201 = call i32 @ext4_inode_table(%struct.super_block* %199, %struct.ext4_group_desc* %200)
  store i32 %201, i32* %19, align 4
  %202 = load i32, i32* %11, align 4
  %203 = load %struct.super_block*, %struct.super_block** %10, align 8
  %204 = call %struct.TYPE_2__* @EXT4_SB(%struct.super_block* %203)
  %205 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 4
  %207 = sub nsw i32 %206, 1
  %208 = xor i32 %207, -1
  %209 = and i32 %202, %208
  store i32 %209, i32* %17, align 4
  %210 = load i32, i32* %19, align 4
  %211 = load i32, i32* %17, align 4
  %212 = icmp sgt i32 %210, %211
  br i1 %212, label %213, label %215

213:                                              ; preds = %198
  %214 = load i32, i32* %19, align 4
  store i32 %214, i32* %17, align 4
  br label %215

215:                                              ; preds = %213, %198
  %216 = load i32, i32* %17, align 4
  %217 = load %struct.super_block*, %struct.super_block** %10, align 8
  %218 = call %struct.TYPE_2__* @EXT4_SB(%struct.super_block* %217)
  %219 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 4
  %221 = add nsw i32 %216, %220
  store i32 %221, i32* %18, align 4
  %222 = load %struct.super_block*, %struct.super_block** %10, align 8
  %223 = call i32 @EXT4_INODES_PER_GROUP(%struct.super_block* %222)
  store i32 %223, i32* %20, align 4
  %224 = load %struct.super_block*, %struct.super_block** %10, align 8
  %225 = load i32, i32* @EXT4_FEATURE_RO_COMPAT_GDT_CSUM, align 4
  %226 = call i64 @EXT4_HAS_RO_COMPAT_FEATURE(%struct.super_block* %224, i32 %225)
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %228, label %236

228:                                              ; preds = %215
  %229 = load %struct.super_block*, %struct.super_block** %10, align 8
  %230 = load %struct.ext4_group_desc*, %struct.ext4_group_desc** %8, align 8
  %231 = call i64 @ext4_itable_unused_count(%struct.super_block* %229, %struct.ext4_group_desc* %230)
  %232 = load i32, i32* %20, align 4
  %233 = zext i32 %232 to i64
  %234 = sub nsw i64 %233, %231
  %235 = trunc i64 %234 to i32
  store i32 %235, i32* %20, align 4
  br label %236

236:                                              ; preds = %228, %215
  %237 = load i32, i32* %20, align 4
  %238 = load i32, i32* %12, align 4
  %239 = udiv i32 %237, %238
  %240 = load i32, i32* %19, align 4
  %241 = add i32 %240, %239
  store i32 %241, i32* %19, align 4
  %242 = load i32, i32* %18, align 4
  %243 = load i32, i32* %19, align 4
  %244 = icmp sgt i32 %242, %243
  br i1 %244, label %245, label %247

245:                                              ; preds = %236
  %246 = load i32, i32* %19, align 4
  store i32 %246, i32* %18, align 4
  br label %247

247:                                              ; preds = %245, %236
  br label %248

248:                                              ; preds = %252, %247
  %249 = load i32, i32* %17, align 4
  %250 = load i32, i32* %18, align 4
  %251 = icmp sle i32 %249, %250
  br i1 %251, label %252, label %257

252:                                              ; preds = %248
  %253 = load %struct.super_block*, %struct.super_block** %10, align 8
  %254 = load i32, i32* %17, align 4
  %255 = add nsw i32 %254, 1
  store i32 %255, i32* %17, align 4
  %256 = call i32 @sb_breadahead(%struct.super_block* %253, i32 %254)
  br label %248

257:                                              ; preds = %248
  br label %258

258:                                              ; preds = %257, %192
  %259 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %260 = call i32 @get_bh(%struct.buffer_head* %259)
  %261 = load i32, i32* @end_buffer_read_sync, align 4
  %262 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %263 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %262, i32 0, i32 0
  store i32 %261, i32* %263, align 4
  %264 = load i32, i32* @READ_META, align 4
  %265 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %266 = call i32 @submit_bh(i32 %264, %struct.buffer_head* %265)
  %267 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %268 = call i32 @wait_on_buffer(%struct.buffer_head* %267)
  %269 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %270 = call i64 @buffer_uptodate(%struct.buffer_head* %269)
  %271 = icmp ne i64 %270, 0
  br i1 %271, label %283, label %272

272:                                              ; preds = %258
  %273 = load %struct.super_block*, %struct.super_block** %10, align 8
  %274 = load %struct.inode*, %struct.inode** %5, align 8
  %275 = getelementptr inbounds %struct.inode, %struct.inode* %274, i32 0, i32 0
  %276 = load i32, i32* %275, align 8
  %277 = load i32, i32* %11, align 4
  %278 = call i32 @ext4_error(%struct.super_block* %273, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %276, i32 %277)
  %279 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %280 = call i32 @brelse(%struct.buffer_head* %279)
  %281 = load i32, i32* @EIO, align 4
  %282 = sub nsw i32 0, %281
  store i32 %282, i32* %4, align 4
  br label %289

283:                                              ; preds = %258
  br label %284

284:                                              ; preds = %283, %97
  br label %285

285:                                              ; preds = %284, %178, %118
  %286 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %287 = load %struct.ext4_iloc*, %struct.ext4_iloc** %6, align 8
  %288 = getelementptr inbounds %struct.ext4_iloc, %struct.ext4_iloc* %287, i32 0, i32 2
  store %struct.buffer_head* %286, %struct.buffer_head** %288, align 8
  store i32 0, i32* %4, align 4
  br label %289

289:                                              ; preds = %285, %272, %88, %52, %32
  %290 = load i32, i32* %4, align 4
  ret i32 %290
}

declare dso_local i32 @ext4_valid_inum(%struct.super_block*, i32) #1

declare dso_local i32 @EXT4_INODES_PER_GROUP(%struct.super_block*) #1

declare dso_local %struct.ext4_group_desc* @ext4_get_group_desc(%struct.super_block*, i32, i32*) #1

declare dso_local i32 @EXT4_BLOCK_SIZE(%struct.super_block*) #1

declare dso_local i32 @EXT4_INODE_SIZE(%struct.super_block*) #1

declare dso_local i32 @ext4_inode_table(%struct.super_block*, %struct.ext4_group_desc*) #1

declare dso_local %struct.buffer_head* @sb_getblk(%struct.super_block*, i32) #1

declare dso_local i32 @ext4_error(%struct.super_block*, i8*, i32, i32) #1

declare dso_local i64 @buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i32 @lock_buffer(%struct.buffer_head*) #1

declare dso_local i64 @buffer_write_io_error(%struct.buffer_head*) #1

declare dso_local i32 @set_buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i32 @unlock_buffer(%struct.buffer_head*) #1

declare dso_local i32 @ext4_inode_bitmap(%struct.super_block*, %struct.ext4_group_desc*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i64 @ext4_test_bit(i32, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local %struct.TYPE_2__* @EXT4_SB(%struct.super_block*) #1

declare dso_local i64 @EXT4_HAS_RO_COMPAT_FEATURE(%struct.super_block*, i32) #1

declare dso_local i64 @ext4_itable_unused_count(%struct.super_block*, %struct.ext4_group_desc*) #1

declare dso_local i32 @sb_breadahead(%struct.super_block*, i32) #1

declare dso_local i32 @get_bh(%struct.buffer_head*) #1

declare dso_local i32 @submit_bh(i32, %struct.buffer_head*) #1

declare dso_local i32 @wait_on_buffer(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
