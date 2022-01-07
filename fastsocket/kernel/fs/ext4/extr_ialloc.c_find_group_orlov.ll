; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_ialloc.c_find_group_orlov.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_ialloc.c_find_group_orlov.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.qstr = type { i32, i32 }
%struct.ext4_sb_info = type { i32, i32, i32, i32, i32 }
%struct.ext4_group_desc = type { i32 }
%struct.orlov_stats = type { i32, i32, i32 }
%struct.dx_hash_info = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@EXT4_INODE_TOPDIR = common dso_local global i32 0, align 4
@DX_HASH_HALF_MD4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, %struct.inode*, i32*, i32, %struct.qstr*)* @find_group_orlov to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_group_orlov(%struct.super_block* %0, %struct.inode* %1, i32* %2, i32 %3, %struct.qstr* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.super_block*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.qstr*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.ext4_sb_info*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca %struct.ext4_group_desc*, align 8
  %29 = alloca %struct.orlov_stats, align 4
  %30 = alloca i32, align 4
  %31 = alloca %struct.dx_hash_info, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %7, align 8
  store %struct.inode* %1, %struct.inode** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.qstr* %4, %struct.qstr** %11, align 8
  %34 = load %struct.inode*, %struct.inode** %8, align 8
  %35 = call %struct.TYPE_4__* @EXT4_I(%struct.inode* %34)
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %12, align 4
  %38 = load %struct.super_block*, %struct.super_block** %7, align 8
  %39 = call %struct.ext4_sb_info* @EXT4_SB(%struct.super_block* %38)
  store %struct.ext4_sb_info* %39, %struct.ext4_sb_info** %13, align 8
  %40 = load %struct.super_block*, %struct.super_block** %7, align 8
  %41 = call i32 @ext4_get_groups_count(%struct.super_block* %40)
  store i32 %41, i32* %14, align 4
  %42 = load %struct.super_block*, %struct.super_block** %7, align 8
  %43 = call i32 @EXT4_INODES_PER_GROUP(%struct.super_block* %42)
  store i32 %43, i32* %15, align 4
  %44 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %13, align 8
  %45 = call i32 @ext4_flex_bg_size(%struct.ext4_sb_info* %44)
  store i32 %45, i32* %30, align 4
  %46 = load i32, i32* %14, align 4
  store i32 %46, i32* %27, align 4
  %47 = load i32, i32* %30, align 4
  %48 = icmp sgt i32 %47, 1
  br i1 %48, label %49, label %63

49:                                               ; preds = %5
  %50 = load i32, i32* %14, align 4
  %51 = load i32, i32* %30, align 4
  %52 = add nsw i32 %50, %51
  %53 = sub nsw i32 %52, 1
  %54 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %13, align 8
  %55 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = ashr i32 %53, %56
  store i32 %57, i32* %27, align 4
  %58 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %13, align 8
  %59 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %12, align 4
  %62 = ashr i32 %61, %60
  store i32 %62, i32* %12, align 4
  br label %63

63:                                               ; preds = %49, %5
  %64 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %13, align 8
  %65 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %64, i32 0, i32 4
  %66 = call i8* @percpu_counter_read_positive(i32* %65)
  %67 = ptrtoint i8* %66 to i32
  store i32 %67, i32* %16, align 4
  %68 = load i32, i32* %16, align 4
  %69 = load i32, i32* %27, align 4
  %70 = udiv i32 %68, %69
  store i32 %70, i32* %17, align 4
  %71 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %13, align 8
  %72 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %71, i32 0, i32 3
  %73 = call i8* @percpu_counter_read_positive(i32* %72)
  %74 = ptrtoint i8* %73 to i32
  store i32 %74, i32* %18, align 4
  %75 = load i32, i32* %18, align 4
  store i32 %75, i32* %19, align 4
  %76 = load i32, i32* %19, align 4
  %77 = load i32, i32* %27, align 4
  %78 = call i32 @do_div(i32 %76, i32 %77)
  %79 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %13, align 8
  %80 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %79, i32 0, i32 2
  %81 = call i8* @percpu_counter_read_positive(i32* %80)
  %82 = ptrtoint i8* %81 to i32
  store i32 %82, i32* %20, align 4
  %83 = load i32, i32* %10, align 4
  %84 = call i64 @S_ISDIR(i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %217

86:                                               ; preds = %63
  %87 = load %struct.inode*, %struct.inode** %8, align 8
  %88 = load %struct.super_block*, %struct.super_block** %7, align 8
  %89 = getelementptr inbounds %struct.super_block, %struct.super_block* %88, i32 0, i32 0
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 0
  %92 = load %struct.inode*, %struct.inode** %91, align 8
  %93 = icmp eq %struct.inode* %87, %92
  br i1 %93, label %99, label %94

94:                                               ; preds = %86
  %95 = load %struct.inode*, %struct.inode** %8, align 8
  %96 = load i32, i32* @EXT4_INODE_TOPDIR, align 4
  %97 = call i64 @ext4_test_inode_flag(%struct.inode* %95, i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %217

99:                                               ; preds = %94, %86
  %100 = load i32, i32* %15, align 4
  store i32 %100, i32* %32, align 4
  store i32 -1, i32* %33, align 4
  %101 = load %struct.qstr*, %struct.qstr** %11, align 8
  %102 = icmp ne %struct.qstr* %101, null
  br i1 %102, label %103, label %119

103:                                              ; preds = %99
  %104 = load i32, i32* @DX_HASH_HALF_MD4, align 4
  %105 = getelementptr inbounds %struct.dx_hash_info, %struct.dx_hash_info* %31, i32 0, i32 2
  store i32 %104, i32* %105, align 4
  %106 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %13, align 8
  %107 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = getelementptr inbounds %struct.dx_hash_info, %struct.dx_hash_info* %31, i32 0, i32 1
  store i32 %108, i32* %109, align 4
  %110 = load %struct.qstr*, %struct.qstr** %11, align 8
  %111 = getelementptr inbounds %struct.qstr, %struct.qstr* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.qstr*, %struct.qstr** %11, align 8
  %114 = getelementptr inbounds %struct.qstr, %struct.qstr* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @ext4fs_dirhash(i32 %112, i32 %115, %struct.dx_hash_info* %31)
  %117 = getelementptr inbounds %struct.dx_hash_info, %struct.dx_hash_info* %31, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  store i32 %118, i32* %25, align 4
  br label %121

119:                                              ; preds = %99
  %120 = call i32 @get_random_bytes(i32* %25, i32 4)
  br label %121

121:                                              ; preds = %119, %103
  %122 = load i32, i32* %25, align 4
  %123 = load i32, i32* %27, align 4
  %124 = urem i32 %122, %123
  store i32 %124, i32* %12, align 4
  store i32 0, i32* %24, align 4
  br label %125

125:                                              ; preds = %165, %121
  %126 = load i32, i32* %24, align 4
  %127 = load i32, i32* %27, align 4
  %128 = icmp slt i32 %126, %127
  br i1 %128, label %129, label %168

129:                                              ; preds = %125
  %130 = load i32, i32* %12, align 4
  %131 = load i32, i32* %24, align 4
  %132 = add nsw i32 %130, %131
  %133 = load i32, i32* %27, align 4
  %134 = srem i32 %132, %133
  store i32 %134, i32* %26, align 4
  %135 = load %struct.super_block*, %struct.super_block** %7, align 8
  %136 = load i32, i32* %26, align 4
  %137 = load i32, i32* %30, align 4
  %138 = call i32 @get_orlov_stats(%struct.super_block* %135, i32 %136, i32 %137, %struct.orlov_stats* %29)
  %139 = getelementptr inbounds %struct.orlov_stats, %struct.orlov_stats* %29, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %143, label %142

142:                                              ; preds = %129
  br label %165

143:                                              ; preds = %129
  %144 = getelementptr inbounds %struct.orlov_stats, %struct.orlov_stats* %29, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* %32, align 4
  %147 = icmp sge i32 %145, %146
  br i1 %147, label %148, label %149

148:                                              ; preds = %143
  br label %165

149:                                              ; preds = %143
  %150 = getelementptr inbounds %struct.orlov_stats, %struct.orlov_stats* %29, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* %17, align 4
  %153 = icmp ult i32 %151, %152
  br i1 %153, label %154, label %155

154:                                              ; preds = %149
  br label %165

155:                                              ; preds = %149
  %156 = getelementptr inbounds %struct.orlov_stats, %struct.orlov_stats* %29, i32 0, i32 2
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* %19, align 4
  %159 = icmp slt i32 %157, %158
  br i1 %159, label %160, label %161

160:                                              ; preds = %155
  br label %165

161:                                              ; preds = %155
  %162 = load i32, i32* %26, align 4
  store i32 %162, i32* %25, align 4
  store i32 0, i32* %33, align 4
  %163 = getelementptr inbounds %struct.orlov_stats, %struct.orlov_stats* %29, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  store i32 %164, i32* %32, align 4
  br label %165

165:                                              ; preds = %161, %160, %154, %148, %142
  %166 = load i32, i32* %24, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %24, align 4
  br label %125

168:                                              ; preds = %125
  %169 = load i32, i32* %33, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %172

171:                                              ; preds = %168
  br label %297

172:                                              ; preds = %168
  br label %173

173:                                              ; preds = %292, %172
  %174 = load i32, i32* %30, align 4
  %175 = icmp eq i32 %174, 1
  br i1 %175, label %176, label %179

176:                                              ; preds = %173
  %177 = load i32, i32* %25, align 4
  %178 = load i32*, i32** %9, align 8
  store i32 %177, i32* %178, align 4
  store i32 0, i32* %6, align 4
  br label %345

179:                                              ; preds = %173
  %180 = load i32, i32* %30, align 4
  %181 = load i32, i32* %25, align 4
  %182 = mul nsw i32 %181, %180
  store i32 %182, i32* %25, align 4
  store i32 0, i32* %24, align 4
  br label %183

183:                                              ; preds = %213, %179
  %184 = load i32, i32* %24, align 4
  %185 = load i32, i32* %30, align 4
  %186 = icmp slt i32 %184, %185
  br i1 %186, label %187, label %216

187:                                              ; preds = %183
  %188 = load i32, i32* %25, align 4
  %189 = load i32, i32* %24, align 4
  %190 = add nsw i32 %188, %189
  %191 = load i32, i32* %14, align 4
  %192 = icmp sge i32 %190, %191
  br i1 %192, label %193, label %194

193:                                              ; preds = %187
  br label %216

194:                                              ; preds = %187
  %195 = load %struct.super_block*, %struct.super_block** %7, align 8
  %196 = load i32, i32* %25, align 4
  %197 = load i32, i32* %24, align 4
  %198 = add nsw i32 %196, %197
  %199 = call %struct.ext4_group_desc* @ext4_get_group_desc(%struct.super_block* %195, i32 %198, i32* null)
  store %struct.ext4_group_desc* %199, %struct.ext4_group_desc** %28, align 8
  %200 = load %struct.ext4_group_desc*, %struct.ext4_group_desc** %28, align 8
  %201 = icmp ne %struct.ext4_group_desc* %200, null
  br i1 %201, label %202, label %212

202:                                              ; preds = %194
  %203 = load %struct.super_block*, %struct.super_block** %7, align 8
  %204 = load %struct.ext4_group_desc*, %struct.ext4_group_desc** %28, align 8
  %205 = call i32 @ext4_free_inodes_count(%struct.super_block* %203, %struct.ext4_group_desc* %204)
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %212

207:                                              ; preds = %202
  %208 = load i32, i32* %25, align 4
  %209 = load i32, i32* %24, align 4
  %210 = add nsw i32 %208, %209
  %211 = load i32*, i32** %9, align 8
  store i32 %210, i32* %211, align 4
  store i32 0, i32* %6, align 4
  br label %345

212:                                              ; preds = %202, %194
  br label %213

213:                                              ; preds = %212
  %214 = load i32, i32* %24, align 4
  %215 = add nsw i32 %214, 1
  store i32 %215, i32* %24, align 4
  br label %183

216:                                              ; preds = %193, %183
  br label %297

217:                                              ; preds = %94, %63
  %218 = load i32, i32* %20, align 4
  %219 = load i32, i32* %27, align 4
  %220 = udiv i32 %218, %219
  %221 = load i32, i32* %15, align 4
  %222 = sdiv i32 %221, 16
  %223 = add i32 %220, %222
  store i32 %223, i32* %21, align 4
  %224 = load i32, i32* %17, align 4
  %225 = load i32, i32* %15, align 4
  %226 = load i32, i32* %30, align 4
  %227 = mul nsw i32 %225, %226
  %228 = sdiv i32 %227, 4
  %229 = sub i32 %224, %228
  store i32 %229, i32* %22, align 4
  %230 = load i32, i32* %22, align 4
  %231 = icmp slt i32 %230, 1
  br i1 %231, label %232, label %233

232:                                              ; preds = %217
  store i32 1, i32* %22, align 4
  br label %233

233:                                              ; preds = %232, %217
  %234 = load i32, i32* %19, align 4
  %235 = load %struct.super_block*, %struct.super_block** %7, align 8
  %236 = call i32 @EXT4_BLOCKS_PER_GROUP(%struct.super_block* %235)
  %237 = load i32, i32* %30, align 4
  %238 = mul nsw i32 %236, %237
  %239 = sdiv i32 %238, 4
  %240 = sub nsw i32 %234, %239
  store i32 %240, i32* %23, align 4
  %241 = load %struct.inode*, %struct.inode** %8, align 8
  %242 = call %struct.TYPE_4__* @EXT4_I(%struct.inode* %241)
  %243 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %242, i32 0, i32 1
  %244 = load i32, i32* %243, align 4
  %245 = icmp ne i32 %244, -1
  br i1 %245, label %246, label %260

246:                                              ; preds = %233
  %247 = load %struct.inode*, %struct.inode** %8, align 8
  %248 = call %struct.TYPE_4__* @EXT4_I(%struct.inode* %247)
  %249 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %248, i32 0, i32 1
  %250 = load i32, i32* %249, align 4
  store i32 %250, i32* %12, align 4
  %251 = load i32, i32* %30, align 4
  %252 = icmp sgt i32 %251, 1
  br i1 %252, label %253, label %259

253:                                              ; preds = %246
  %254 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %13, align 8
  %255 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %254, i32 0, i32 0
  %256 = load i32, i32* %255, align 4
  %257 = load i32, i32* %12, align 4
  %258 = ashr i32 %257, %256
  store i32 %258, i32* %12, align 4
  br label %259

259:                                              ; preds = %253, %246
  br label %260

260:                                              ; preds = %259, %233
  store i32 0, i32* %24, align 4
  br label %261

261:                                              ; preds = %293, %260
  %262 = load i32, i32* %24, align 4
  %263 = load i32, i32* %27, align 4
  %264 = icmp slt i32 %262, %263
  br i1 %264, label %265, label %296

265:                                              ; preds = %261
  %266 = load i32, i32* %12, align 4
  %267 = load i32, i32* %24, align 4
  %268 = add nsw i32 %266, %267
  %269 = load i32, i32* %27, align 4
  %270 = srem i32 %268, %269
  store i32 %270, i32* %25, align 4
  %271 = load %struct.super_block*, %struct.super_block** %7, align 8
  %272 = load i32, i32* %25, align 4
  %273 = load i32, i32* %30, align 4
  %274 = call i32 @get_orlov_stats(%struct.super_block* %271, i32 %272, i32 %273, %struct.orlov_stats* %29)
  %275 = getelementptr inbounds %struct.orlov_stats, %struct.orlov_stats* %29, i32 0, i32 1
  %276 = load i32, i32* %275, align 4
  %277 = load i32, i32* %21, align 4
  %278 = icmp sge i32 %276, %277
  br i1 %278, label %279, label %280

279:                                              ; preds = %265
  br label %293

280:                                              ; preds = %265
  %281 = getelementptr inbounds %struct.orlov_stats, %struct.orlov_stats* %29, i32 0, i32 0
  %282 = load i32, i32* %281, align 4
  %283 = load i32, i32* %22, align 4
  %284 = icmp ult i32 %282, %283
  br i1 %284, label %285, label %286

285:                                              ; preds = %280
  br label %293

286:                                              ; preds = %280
  %287 = getelementptr inbounds %struct.orlov_stats, %struct.orlov_stats* %29, i32 0, i32 2
  %288 = load i32, i32* %287, align 4
  %289 = load i32, i32* %23, align 4
  %290 = icmp slt i32 %288, %289
  br i1 %290, label %291, label %292

291:                                              ; preds = %286
  br label %293

292:                                              ; preds = %286
  br label %173

293:                                              ; preds = %291, %285, %279
  %294 = load i32, i32* %24, align 4
  %295 = add nsw i32 %294, 1
  store i32 %295, i32* %24, align 4
  br label %261

296:                                              ; preds = %261
  br label %297

297:                                              ; preds = %296, %216, %171
  %298 = load i32, i32* %14, align 4
  store i32 %298, i32* %27, align 4
  %299 = load i32, i32* %16, align 4
  %300 = load i32, i32* %27, align 4
  %301 = udiv i32 %299, %300
  store i32 %301, i32* %17, align 4
  br label %302

302:                                              ; preds = %343, %297
  %303 = load %struct.inode*, %struct.inode** %8, align 8
  %304 = call %struct.TYPE_4__* @EXT4_I(%struct.inode* %303)
  %305 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %304, i32 0, i32 0
  %306 = load i32, i32* %305, align 4
  store i32 %306, i32* %12, align 4
  store i32 0, i32* %24, align 4
  br label %307

307:                                              ; preds = %337, %302
  %308 = load i32, i32* %24, align 4
  %309 = load i32, i32* %27, align 4
  %310 = icmp slt i32 %308, %309
  br i1 %310, label %311, label %340

311:                                              ; preds = %307
  %312 = load i32, i32* %12, align 4
  %313 = load i32, i32* %24, align 4
  %314 = add nsw i32 %312, %313
  %315 = load i32, i32* %27, align 4
  %316 = srem i32 %314, %315
  store i32 %316, i32* %25, align 4
  %317 = load %struct.super_block*, %struct.super_block** %7, align 8
  %318 = load i32, i32* %25, align 4
  %319 = call %struct.ext4_group_desc* @ext4_get_group_desc(%struct.super_block* %317, i32 %318, i32* null)
  store %struct.ext4_group_desc* %319, %struct.ext4_group_desc** %28, align 8
  %320 = load %struct.ext4_group_desc*, %struct.ext4_group_desc** %28, align 8
  %321 = icmp ne %struct.ext4_group_desc* %320, null
  br i1 %321, label %322, label %336

322:                                              ; preds = %311
  %323 = load %struct.super_block*, %struct.super_block** %7, align 8
  %324 = load %struct.ext4_group_desc*, %struct.ext4_group_desc** %28, align 8
  %325 = call i32 @ext4_free_inodes_count(%struct.super_block* %323, %struct.ext4_group_desc* %324)
  %326 = icmp ne i32 %325, 0
  br i1 %326, label %327, label %336

327:                                              ; preds = %322
  %328 = load %struct.super_block*, %struct.super_block** %7, align 8
  %329 = load %struct.ext4_group_desc*, %struct.ext4_group_desc** %28, align 8
  %330 = call i32 @ext4_free_inodes_count(%struct.super_block* %328, %struct.ext4_group_desc* %329)
  %331 = load i32, i32* %17, align 4
  %332 = icmp uge i32 %330, %331
  br i1 %332, label %333, label %336

333:                                              ; preds = %327
  %334 = load i32, i32* %25, align 4
  %335 = load i32*, i32** %9, align 8
  store i32 %334, i32* %335, align 4
  store i32 0, i32* %6, align 4
  br label %345

336:                                              ; preds = %327, %322, %311
  br label %337

337:                                              ; preds = %336
  %338 = load i32, i32* %24, align 4
  %339 = add nsw i32 %338, 1
  store i32 %339, i32* %24, align 4
  br label %307

340:                                              ; preds = %307
  %341 = load i32, i32* %17, align 4
  %342 = icmp ne i32 %341, 0
  br i1 %342, label %343, label %344

343:                                              ; preds = %340
  store i32 0, i32* %17, align 4
  br label %302

344:                                              ; preds = %340
  store i32 -1, i32* %6, align 4
  br label %345

345:                                              ; preds = %344, %333, %207, %176
  %346 = load i32, i32* %6, align 4
  ret i32 %346
}

declare dso_local %struct.TYPE_4__* @EXT4_I(%struct.inode*) #1

declare dso_local %struct.ext4_sb_info* @EXT4_SB(%struct.super_block*) #1

declare dso_local i32 @ext4_get_groups_count(%struct.super_block*) #1

declare dso_local i32 @EXT4_INODES_PER_GROUP(%struct.super_block*) #1

declare dso_local i32 @ext4_flex_bg_size(%struct.ext4_sb_info*) #1

declare dso_local i8* @percpu_counter_read_positive(i32*) #1

declare dso_local i32 @do_div(i32, i32) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i64 @ext4_test_inode_flag(%struct.inode*, i32) #1

declare dso_local i32 @ext4fs_dirhash(i32, i32, %struct.dx_hash_info*) #1

declare dso_local i32 @get_random_bytes(i32*, i32) #1

declare dso_local i32 @get_orlov_stats(%struct.super_block*, i32, i32, %struct.orlov_stats*) #1

declare dso_local %struct.ext4_group_desc* @ext4_get_group_desc(%struct.super_block*, i32, i32*) #1

declare dso_local i32 @ext4_free_inodes_count(%struct.super_block*, %struct.ext4_group_desc*) #1

declare dso_local i32 @EXT4_BLOCKS_PER_GROUP(%struct.super_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
