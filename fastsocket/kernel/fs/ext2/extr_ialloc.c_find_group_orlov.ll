; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext2/extr_ialloc.c_find_group_orlov.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext2/extr_ialloc.c_find_group_orlov.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.ext2_sb_info = type { i32, i32*, i32, i32, i32, %struct.ext2_super_block* }
%struct.ext2_super_block = type { i32 }
%struct.ext2_group_desc = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@EXT2_TOPDIR_FL = common dso_local global i32 0, align 4
@BLOCK_COST = common dso_local global i32 0, align 4
@INODE_COST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, %struct.inode*)* @find_group_orlov to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_group_orlov(%struct.super_block* %0, %struct.inode* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ext2_sb_info*, align 8
  %8 = alloca %struct.ext2_super_block*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.ext2_group_desc*, align 8
  %24 = alloca %struct.ext2_group_desc*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store %struct.inode* %1, %struct.inode** %5, align 8
  %27 = load %struct.inode*, %struct.inode** %5, align 8
  %28 = call %struct.TYPE_4__* @EXT2_I(%struct.inode* %27)
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %6, align 4
  %31 = load %struct.super_block*, %struct.super_block** %4, align 8
  %32 = call %struct.ext2_sb_info* @EXT2_SB(%struct.super_block* %31)
  store %struct.ext2_sb_info* %32, %struct.ext2_sb_info** %7, align 8
  %33 = load %struct.ext2_sb_info*, %struct.ext2_sb_info** %7, align 8
  %34 = getelementptr inbounds %struct.ext2_sb_info, %struct.ext2_sb_info* %33, i32 0, i32 5
  %35 = load %struct.ext2_super_block*, %struct.ext2_super_block** %34, align 8
  store %struct.ext2_super_block* %35, %struct.ext2_super_block** %8, align 8
  %36 = load %struct.ext2_sb_info*, %struct.ext2_sb_info** %7, align 8
  %37 = getelementptr inbounds %struct.ext2_sb_info, %struct.ext2_sb_info* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  store i32 %38, i32* %9, align 4
  %39 = load %struct.super_block*, %struct.super_block** %4, align 8
  %40 = call i32 @EXT2_INODES_PER_GROUP(%struct.super_block* %39)
  store i32 %40, i32* %10, align 4
  store i32 -1, i32* %21, align 4
  %41 = load %struct.ext2_sb_info*, %struct.ext2_sb_info** %7, align 8
  %42 = getelementptr inbounds %struct.ext2_sb_info, %struct.ext2_sb_info* %41, i32 0, i32 4
  %43 = call i32 @percpu_counter_read_positive(i32* %42)
  store i32 %43, i32* %11, align 4
  %44 = load i32, i32* %11, align 4
  %45 = load i32, i32* %9, align 4
  %46 = sdiv i32 %44, %45
  store i32 %46, i32* %12, align 4
  %47 = load %struct.ext2_sb_info*, %struct.ext2_sb_info** %7, align 8
  %48 = getelementptr inbounds %struct.ext2_sb_info, %struct.ext2_sb_info* %47, i32 0, i32 3
  %49 = call i32 @percpu_counter_read_positive(i32* %48)
  store i32 %49, i32* %13, align 4
  %50 = load i32, i32* %13, align 4
  %51 = load i32, i32* %9, align 4
  %52 = sdiv i32 %50, %51
  store i32 %52, i32* %14, align 4
  %53 = load %struct.ext2_sb_info*, %struct.ext2_sb_info** %7, align 8
  %54 = getelementptr inbounds %struct.ext2_sb_info, %struct.ext2_sb_info* %53, i32 0, i32 2
  %55 = call i32 @percpu_counter_read_positive(i32* %54)
  store i32 %55, i32* %16, align 4
  %56 = load %struct.inode*, %struct.inode** %5, align 8
  %57 = load %struct.super_block*, %struct.super_block** %4, align 8
  %58 = getelementptr inbounds %struct.super_block, %struct.super_block* %57, i32 0, i32 0
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load %struct.inode*, %struct.inode** %60, align 8
  %62 = icmp eq %struct.inode* %56, %61
  br i1 %62, label %71, label %63

63:                                               ; preds = %2
  %64 = load %struct.inode*, %struct.inode** %5, align 8
  %65 = call %struct.TYPE_4__* @EXT2_I(%struct.inode* %64)
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @EXT2_TOPDIR_FL, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %139

71:                                               ; preds = %63, %2
  store %struct.ext2_group_desc* null, %struct.ext2_group_desc** %24, align 8
  %72 = load i32, i32* %10, align 4
  store i32 %72, i32* %25, align 4
  store i32 -1, i32* %26, align 4
  %73 = call i32 @get_random_bytes(i32* %21, i32 4)
  %74 = load i32, i32* %21, align 4
  %75 = load i32, i32* %9, align 4
  %76 = urem i32 %74, %75
  store i32 %76, i32* %6, align 4
  store i32 0, i32* %22, align 4
  br label %77

77:                                               ; preds = %129, %71
  %78 = load i32, i32* %22, align 4
  %79 = load i32, i32* %9, align 4
  %80 = icmp slt i32 %78, %79
  br i1 %80, label %81, label %132

81:                                               ; preds = %77
  %82 = load i32, i32* %6, align 4
  %83 = load i32, i32* %22, align 4
  %84 = add nsw i32 %82, %83
  %85 = load i32, i32* %9, align 4
  %86 = srem i32 %84, %85
  store i32 %86, i32* %21, align 4
  %87 = load %struct.super_block*, %struct.super_block** %4, align 8
  %88 = load i32, i32* %21, align 4
  %89 = call %struct.ext2_group_desc* @ext2_get_group_desc(%struct.super_block* %87, i32 %88, i32* null)
  store %struct.ext2_group_desc* %89, %struct.ext2_group_desc** %23, align 8
  %90 = load %struct.ext2_group_desc*, %struct.ext2_group_desc** %23, align 8
  %91 = icmp ne %struct.ext2_group_desc* %90, null
  br i1 %91, label %92, label %97

92:                                               ; preds = %81
  %93 = load %struct.ext2_group_desc*, %struct.ext2_group_desc** %23, align 8
  %94 = getelementptr inbounds %struct.ext2_group_desc, %struct.ext2_group_desc* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %98, label %97

97:                                               ; preds = %92, %81
  br label %129

98:                                               ; preds = %92
  %99 = load %struct.ext2_group_desc*, %struct.ext2_group_desc** %23, align 8
  %100 = getelementptr inbounds %struct.ext2_group_desc, %struct.ext2_group_desc* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @le16_to_cpu(i32 %101)
  %103 = load i32, i32* %25, align 4
  %104 = icmp sge i32 %102, %103
  br i1 %104, label %105, label %106

105:                                              ; preds = %98
  br label %129

106:                                              ; preds = %98
  %107 = load %struct.ext2_group_desc*, %struct.ext2_group_desc** %23, align 8
  %108 = getelementptr inbounds %struct.ext2_group_desc, %struct.ext2_group_desc* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @le16_to_cpu(i32 %109)
  %111 = load i32, i32* %12, align 4
  %112 = icmp slt i32 %110, %111
  br i1 %112, label %113, label %114

113:                                              ; preds = %106
  br label %129

114:                                              ; preds = %106
  %115 = load %struct.ext2_group_desc*, %struct.ext2_group_desc** %23, align 8
  %116 = getelementptr inbounds %struct.ext2_group_desc, %struct.ext2_group_desc* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @le16_to_cpu(i32 %117)
  %119 = load i32, i32* %14, align 4
  %120 = icmp slt i32 %118, %119
  br i1 %120, label %121, label %122

121:                                              ; preds = %114
  br label %129

122:                                              ; preds = %114
  %123 = load i32, i32* %21, align 4
  store i32 %123, i32* %26, align 4
  %124 = load %struct.ext2_group_desc*, %struct.ext2_group_desc** %23, align 8
  %125 = getelementptr inbounds %struct.ext2_group_desc, %struct.ext2_group_desc* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @le16_to_cpu(i32 %126)
  store i32 %127, i32* %25, align 4
  %128 = load %struct.ext2_group_desc*, %struct.ext2_group_desc** %23, align 8
  store %struct.ext2_group_desc* %128, %struct.ext2_group_desc** %24, align 8
  br label %129

129:                                              ; preds = %122, %121, %113, %105, %97
  %130 = load i32, i32* %22, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %22, align 4
  br label %77

132:                                              ; preds = %77
  %133 = load i32, i32* %26, align 4
  %134 = icmp sge i32 %133, 0
  br i1 %134, label %135, label %138

135:                                              ; preds = %132
  %136 = load %struct.ext2_group_desc*, %struct.ext2_group_desc** %24, align 8
  store %struct.ext2_group_desc* %136, %struct.ext2_group_desc** %23, align 8
  %137 = load i32, i32* %26, align 4
  store i32 %137, i32* %21, align 4
  br label %291

138:                                              ; preds = %132
  br label %252

139:                                              ; preds = %63
  %140 = load i32, i32* %16, align 4
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %139
  store i32 1, i32* %16, align 4
  br label %143

143:                                              ; preds = %142, %139
  %144 = load %struct.ext2_super_block*, %struct.ext2_super_block** %8, align 8
  %145 = getelementptr inbounds %struct.ext2_super_block, %struct.ext2_super_block* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @le32_to_cpu(i32 %146)
  %148 = load i32, i32* %13, align 4
  %149 = sub nsw i32 %147, %148
  %150 = load i32, i32* %16, align 4
  %151 = sdiv i32 %149, %150
  store i32 %151, i32* %15, align 4
  %152 = load i32, i32* %16, align 4
  %153 = load i32, i32* %9, align 4
  %154 = sdiv i32 %152, %153
  %155 = load i32, i32* %10, align 4
  %156 = sdiv i32 %155, 16
  %157 = add nsw i32 %154, %156
  store i32 %157, i32* %18, align 4
  %158 = load i32, i32* %12, align 4
  %159 = load i32, i32* %10, align 4
  %160 = sdiv i32 %159, 4
  %161 = sub nsw i32 %158, %160
  store i32 %161, i32* %20, align 4
  %162 = load i32, i32* %14, align 4
  %163 = load %struct.super_block*, %struct.super_block** %4, align 8
  %164 = call i32 @EXT2_BLOCKS_PER_GROUP(%struct.super_block* %163)
  %165 = sdiv i32 %164, 4
  %166 = sub nsw i32 %162, %165
  store i32 %166, i32* %19, align 4
  %167 = load %struct.super_block*, %struct.super_block** %4, align 8
  %168 = call i32 @EXT2_BLOCKS_PER_GROUP(%struct.super_block* %167)
  %169 = load i32, i32* %15, align 4
  %170 = load i32, i32* @BLOCK_COST, align 4
  %171 = call i32 @max(i32 %169, i32 %170)
  %172 = sdiv i32 %168, %171
  store i32 %172, i32* %17, align 4
  %173 = load i32, i32* %17, align 4
  %174 = load i32, i32* @INODE_COST, align 4
  %175 = mul nsw i32 %173, %174
  %176 = load i32, i32* %10, align 4
  %177 = icmp sgt i32 %175, %176
  br i1 %177, label %178, label %182

178:                                              ; preds = %143
  %179 = load i32, i32* %10, align 4
  %180 = load i32, i32* @INODE_COST, align 4
  %181 = sdiv i32 %179, %180
  store i32 %181, i32* %17, align 4
  br label %182

182:                                              ; preds = %178, %143
  %183 = load i32, i32* %17, align 4
  %184 = icmp sgt i32 %183, 255
  br i1 %184, label %185, label %186

185:                                              ; preds = %182
  store i32 255, i32* %17, align 4
  br label %186

186:                                              ; preds = %185, %182
  %187 = load i32, i32* %17, align 4
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %189, label %190

189:                                              ; preds = %186
  store i32 1, i32* %17, align 4
  br label %190

190:                                              ; preds = %189, %186
  store i32 0, i32* %22, align 4
  br label %191

191:                                              ; preds = %248, %190
  %192 = load i32, i32* %22, align 4
  %193 = load i32, i32* %9, align 4
  %194 = icmp slt i32 %192, %193
  br i1 %194, label %195, label %251

195:                                              ; preds = %191
  %196 = load i32, i32* %6, align 4
  %197 = load i32, i32* %22, align 4
  %198 = add nsw i32 %196, %197
  %199 = load i32, i32* %9, align 4
  %200 = srem i32 %198, %199
  store i32 %200, i32* %21, align 4
  %201 = load %struct.super_block*, %struct.super_block** %4, align 8
  %202 = load i32, i32* %21, align 4
  %203 = call %struct.ext2_group_desc* @ext2_get_group_desc(%struct.super_block* %201, i32 %202, i32* null)
  store %struct.ext2_group_desc* %203, %struct.ext2_group_desc** %23, align 8
  %204 = load %struct.ext2_group_desc*, %struct.ext2_group_desc** %23, align 8
  %205 = icmp ne %struct.ext2_group_desc* %204, null
  br i1 %205, label %206, label %211

206:                                              ; preds = %195
  %207 = load %struct.ext2_group_desc*, %struct.ext2_group_desc** %23, align 8
  %208 = getelementptr inbounds %struct.ext2_group_desc, %struct.ext2_group_desc* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %212, label %211

211:                                              ; preds = %206, %195
  br label %248

212:                                              ; preds = %206
  %213 = load %struct.ext2_sb_info*, %struct.ext2_sb_info** %7, align 8
  %214 = getelementptr inbounds %struct.ext2_sb_info, %struct.ext2_sb_info* %213, i32 0, i32 1
  %215 = load i32*, i32** %214, align 8
  %216 = load i32, i32* %21, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds i32, i32* %215, i64 %217
  %219 = load i32, i32* %218, align 4
  %220 = load i32, i32* %17, align 4
  %221 = icmp sge i32 %219, %220
  br i1 %221, label %222, label %223

222:                                              ; preds = %212
  br label %248

223:                                              ; preds = %212
  %224 = load %struct.ext2_group_desc*, %struct.ext2_group_desc** %23, align 8
  %225 = getelementptr inbounds %struct.ext2_group_desc, %struct.ext2_group_desc* %224, i32 0, i32 2
  %226 = load i32, i32* %225, align 4
  %227 = call i32 @le16_to_cpu(i32 %226)
  %228 = load i32, i32* %18, align 4
  %229 = icmp sge i32 %227, %228
  br i1 %229, label %230, label %231

230:                                              ; preds = %223
  br label %248

231:                                              ; preds = %223
  %232 = load %struct.ext2_group_desc*, %struct.ext2_group_desc** %23, align 8
  %233 = getelementptr inbounds %struct.ext2_group_desc, %struct.ext2_group_desc* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 4
  %235 = call i32 @le16_to_cpu(i32 %234)
  %236 = load i32, i32* %20, align 4
  %237 = icmp slt i32 %235, %236
  br i1 %237, label %238, label %239

238:                                              ; preds = %231
  br label %248

239:                                              ; preds = %231
  %240 = load %struct.ext2_group_desc*, %struct.ext2_group_desc** %23, align 8
  %241 = getelementptr inbounds %struct.ext2_group_desc, %struct.ext2_group_desc* %240, i32 0, i32 1
  %242 = load i32, i32* %241, align 4
  %243 = call i32 @le16_to_cpu(i32 %242)
  %244 = load i32, i32* %19, align 4
  %245 = icmp slt i32 %243, %244
  br i1 %245, label %246, label %247

246:                                              ; preds = %239
  br label %248

247:                                              ; preds = %239
  br label %291

248:                                              ; preds = %246, %238, %230, %222, %211
  %249 = load i32, i32* %22, align 4
  %250 = add nsw i32 %249, 1
  store i32 %250, i32* %22, align 4
  br label %191

251:                                              ; preds = %191
  br label %252

252:                                              ; preds = %289, %251, %138
  store i32 0, i32* %22, align 4
  br label %253

253:                                              ; preds = %283, %252
  %254 = load i32, i32* %22, align 4
  %255 = load i32, i32* %9, align 4
  %256 = icmp slt i32 %254, %255
  br i1 %256, label %257, label %286

257:                                              ; preds = %253
  %258 = load i32, i32* %6, align 4
  %259 = load i32, i32* %22, align 4
  %260 = add nsw i32 %258, %259
  %261 = load i32, i32* %9, align 4
  %262 = srem i32 %260, %261
  store i32 %262, i32* %21, align 4
  %263 = load %struct.super_block*, %struct.super_block** %4, align 8
  %264 = load i32, i32* %21, align 4
  %265 = call %struct.ext2_group_desc* @ext2_get_group_desc(%struct.super_block* %263, i32 %264, i32* null)
  store %struct.ext2_group_desc* %265, %struct.ext2_group_desc** %23, align 8
  %266 = load %struct.ext2_group_desc*, %struct.ext2_group_desc** %23, align 8
  %267 = icmp ne %struct.ext2_group_desc* %266, null
  br i1 %267, label %268, label %273

268:                                              ; preds = %257
  %269 = load %struct.ext2_group_desc*, %struct.ext2_group_desc** %23, align 8
  %270 = getelementptr inbounds %struct.ext2_group_desc, %struct.ext2_group_desc* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 4
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %274, label %273

273:                                              ; preds = %268, %257
  br label %283

274:                                              ; preds = %268
  %275 = load %struct.ext2_group_desc*, %struct.ext2_group_desc** %23, align 8
  %276 = getelementptr inbounds %struct.ext2_group_desc, %struct.ext2_group_desc* %275, i32 0, i32 0
  %277 = load i32, i32* %276, align 4
  %278 = call i32 @le16_to_cpu(i32 %277)
  %279 = load i32, i32* %12, align 4
  %280 = icmp sge i32 %278, %279
  br i1 %280, label %281, label %282

281:                                              ; preds = %274
  br label %291

282:                                              ; preds = %274
  br label %283

283:                                              ; preds = %282, %273
  %284 = load i32, i32* %22, align 4
  %285 = add nsw i32 %284, 1
  store i32 %285, i32* %22, align 4
  br label %253

286:                                              ; preds = %253
  %287 = load i32, i32* %12, align 4
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %289, label %290

289:                                              ; preds = %286
  store i32 0, i32* %12, align 4
  br label %252

290:                                              ; preds = %286
  store i32 -1, i32* %3, align 4
  br label %293

291:                                              ; preds = %281, %247, %135
  %292 = load i32, i32* %21, align 4
  store i32 %292, i32* %3, align 4
  br label %293

293:                                              ; preds = %291, %290
  %294 = load i32, i32* %3, align 4
  ret i32 %294
}

declare dso_local %struct.TYPE_4__* @EXT2_I(%struct.inode*) #1

declare dso_local %struct.ext2_sb_info* @EXT2_SB(%struct.super_block*) #1

declare dso_local i32 @EXT2_INODES_PER_GROUP(%struct.super_block*) #1

declare dso_local i32 @percpu_counter_read_positive(i32*) #1

declare dso_local i32 @get_random_bytes(i32*, i32) #1

declare dso_local %struct.ext2_group_desc* @ext2_get_group_desc(%struct.super_block*, i32, i32*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @EXT2_BLOCKS_PER_GROUP(%struct.super_block*) #1

declare dso_local i32 @max(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
