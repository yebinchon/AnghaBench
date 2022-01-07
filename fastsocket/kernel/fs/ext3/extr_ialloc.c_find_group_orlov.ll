; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext3/extr_ialloc.c_find_group_orlov.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext3/extr_ialloc.c_find_group_orlov.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.ext3_sb_info = type { i32, i32, i32, i32, %struct.ext3_super_block* }
%struct.ext3_super_block = type { i32 }
%struct.ext3_group_desc = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@EXT3_TOPDIR_FL = common dso_local global i32 0, align 4
@BLOCK_COST = common dso_local global i64 0, align 8
@INODE_COST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, %struct.inode*)* @find_group_orlov to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_group_orlov(%struct.super_block* %0, %struct.inode* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ext3_sb_info*, align 8
  %8 = alloca %struct.ext3_super_block*, align 8
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
  %23 = alloca %struct.ext3_group_desc*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store %struct.inode* %1, %struct.inode** %5, align 8
  %26 = load %struct.inode*, %struct.inode** %5, align 8
  %27 = call %struct.TYPE_4__* @EXT3_I(%struct.inode* %26)
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %6, align 4
  %30 = load %struct.super_block*, %struct.super_block** %4, align 8
  %31 = call %struct.ext3_sb_info* @EXT3_SB(%struct.super_block* %30)
  store %struct.ext3_sb_info* %31, %struct.ext3_sb_info** %7, align 8
  %32 = load %struct.ext3_sb_info*, %struct.ext3_sb_info** %7, align 8
  %33 = getelementptr inbounds %struct.ext3_sb_info, %struct.ext3_sb_info* %32, i32 0, i32 4
  %34 = load %struct.ext3_super_block*, %struct.ext3_super_block** %33, align 8
  store %struct.ext3_super_block* %34, %struct.ext3_super_block** %8, align 8
  %35 = load %struct.ext3_sb_info*, %struct.ext3_sb_info** %7, align 8
  %36 = getelementptr inbounds %struct.ext3_sb_info, %struct.ext3_sb_info* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  store i32 %37, i32* %9, align 4
  %38 = load %struct.super_block*, %struct.super_block** %4, align 8
  %39 = call i32 @EXT3_INODES_PER_GROUP(%struct.super_block* %38)
  store i32 %39, i32* %10, align 4
  store i32 -1, i32* %21, align 4
  %40 = load %struct.ext3_sb_info*, %struct.ext3_sb_info** %7, align 8
  %41 = getelementptr inbounds %struct.ext3_sb_info, %struct.ext3_sb_info* %40, i32 0, i32 3
  %42 = call i8* @percpu_counter_read_positive(i32* %41)
  %43 = ptrtoint i8* %42 to i32
  store i32 %43, i32* %11, align 4
  %44 = load i32, i32* %11, align 4
  %45 = load i32, i32* %9, align 4
  %46 = udiv i32 %44, %45
  store i32 %46, i32* %12, align 4
  %47 = load %struct.ext3_sb_info*, %struct.ext3_sb_info** %7, align 8
  %48 = getelementptr inbounds %struct.ext3_sb_info, %struct.ext3_sb_info* %47, i32 0, i32 2
  %49 = call i8* @percpu_counter_read_positive(i32* %48)
  %50 = ptrtoint i8* %49 to i32
  store i32 %50, i32* %13, align 4
  %51 = load i32, i32* %13, align 4
  %52 = load i32, i32* %9, align 4
  %53 = sdiv i32 %51, %52
  store i32 %53, i32* %14, align 4
  %54 = load %struct.ext3_sb_info*, %struct.ext3_sb_info** %7, align 8
  %55 = getelementptr inbounds %struct.ext3_sb_info, %struct.ext3_sb_info* %54, i32 0, i32 1
  %56 = call i8* @percpu_counter_read_positive(i32* %55)
  %57 = ptrtoint i8* %56 to i32
  store i32 %57, i32* %16, align 4
  %58 = load %struct.inode*, %struct.inode** %5, align 8
  %59 = load %struct.super_block*, %struct.super_block** %4, align 8
  %60 = getelementptr inbounds %struct.super_block, %struct.super_block* %59, i32 0, i32 0
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load %struct.inode*, %struct.inode** %62, align 8
  %64 = icmp eq %struct.inode* %58, %63
  br i1 %64, label %73, label %65

65:                                               ; preds = %2
  %66 = load %struct.inode*, %struct.inode** %5, align 8
  %67 = call %struct.TYPE_4__* @EXT3_I(%struct.inode* %66)
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @EXT3_TOPDIR_FL, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %139

73:                                               ; preds = %65, %2
  %74 = load i32, i32* %10, align 4
  store i32 %74, i32* %24, align 4
  store i32 -1, i32* %25, align 4
  %75 = call i32 @get_random_bytes(i32* %21, i32 4)
  %76 = load i32, i32* %21, align 4
  %77 = load i32, i32* %9, align 4
  %78 = urem i32 %76, %77
  store i32 %78, i32* %6, align 4
  store i32 0, i32* %22, align 4
  br label %79

79:                                               ; preds = %130, %73
  %80 = load i32, i32* %22, align 4
  %81 = load i32, i32* %9, align 4
  %82 = icmp slt i32 %80, %81
  br i1 %82, label %83, label %133

83:                                               ; preds = %79
  %84 = load i32, i32* %6, align 4
  %85 = load i32, i32* %22, align 4
  %86 = add nsw i32 %84, %85
  %87 = load i32, i32* %9, align 4
  %88 = srem i32 %86, %87
  store i32 %88, i32* %21, align 4
  %89 = load %struct.super_block*, %struct.super_block** %4, align 8
  %90 = load i32, i32* %21, align 4
  %91 = call %struct.ext3_group_desc* @ext3_get_group_desc(%struct.super_block* %89, i32 %90, i32* null)
  store %struct.ext3_group_desc* %91, %struct.ext3_group_desc** %23, align 8
  %92 = load %struct.ext3_group_desc*, %struct.ext3_group_desc** %23, align 8
  %93 = icmp ne %struct.ext3_group_desc* %92, null
  br i1 %93, label %94, label %99

94:                                               ; preds = %83
  %95 = load %struct.ext3_group_desc*, %struct.ext3_group_desc** %23, align 8
  %96 = getelementptr inbounds %struct.ext3_group_desc, %struct.ext3_group_desc* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %100, label %99

99:                                               ; preds = %94, %83
  br label %130

100:                                              ; preds = %94
  %101 = load %struct.ext3_group_desc*, %struct.ext3_group_desc** %23, align 8
  %102 = getelementptr inbounds %struct.ext3_group_desc, %struct.ext3_group_desc* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @le16_to_cpu(i32 %103)
  %105 = load i32, i32* %24, align 4
  %106 = icmp uge i32 %104, %105
  br i1 %106, label %107, label %108

107:                                              ; preds = %100
  br label %130

108:                                              ; preds = %100
  %109 = load %struct.ext3_group_desc*, %struct.ext3_group_desc** %23, align 8
  %110 = getelementptr inbounds %struct.ext3_group_desc, %struct.ext3_group_desc* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @le16_to_cpu(i32 %111)
  %113 = load i32, i32* %12, align 4
  %114 = icmp ult i32 %112, %113
  br i1 %114, label %115, label %116

115:                                              ; preds = %108
  br label %130

116:                                              ; preds = %108
  %117 = load %struct.ext3_group_desc*, %struct.ext3_group_desc** %23, align 8
  %118 = getelementptr inbounds %struct.ext3_group_desc, %struct.ext3_group_desc* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @le16_to_cpu(i32 %119)
  %121 = load i32, i32* %14, align 4
  %122 = icmp ult i32 %120, %121
  br i1 %122, label %123, label %124

123:                                              ; preds = %116
  br label %130

124:                                              ; preds = %116
  %125 = load i32, i32* %21, align 4
  store i32 %125, i32* %25, align 4
  %126 = load %struct.ext3_group_desc*, %struct.ext3_group_desc** %23, align 8
  %127 = getelementptr inbounds %struct.ext3_group_desc, %struct.ext3_group_desc* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @le16_to_cpu(i32 %128)
  store i32 %129, i32* %24, align 4
  br label %130

130:                                              ; preds = %124, %123, %115, %107, %99
  %131 = load i32, i32* %22, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %22, align 4
  br label %79

133:                                              ; preds = %79
  %134 = load i32, i32* %25, align 4
  %135 = icmp sge i32 %134, 0
  br i1 %135, label %136, label %138

136:                                              ; preds = %133
  %137 = load i32, i32* %25, align 4
  store i32 %137, i32* %3, align 4
  br label %279

138:                                              ; preds = %133
  br label %239

139:                                              ; preds = %65
  %140 = load %struct.ext3_super_block*, %struct.ext3_super_block** %8, align 8
  %141 = getelementptr inbounds %struct.ext3_super_block, %struct.ext3_super_block* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @le32_to_cpu(i32 %142)
  %144 = load i32, i32* %13, align 4
  %145 = sub nsw i32 %143, %144
  %146 = load i32, i32* %16, align 4
  %147 = udiv i32 %145, %146
  store i32 %147, i32* %15, align 4
  %148 = load i32, i32* %16, align 4
  %149 = load i32, i32* %9, align 4
  %150 = udiv i32 %148, %149
  %151 = load i32, i32* %10, align 4
  %152 = sdiv i32 %151, 16
  %153 = add i32 %150, %152
  store i32 %153, i32* %18, align 4
  %154 = load i32, i32* %12, align 4
  %155 = load i32, i32* %10, align 4
  %156 = sdiv i32 %155, 4
  %157 = sub i32 %154, %156
  store i32 %157, i32* %19, align 4
  %158 = load i32, i32* %14, align 4
  %159 = load %struct.super_block*, %struct.super_block** %4, align 8
  %160 = call i32 @EXT3_BLOCKS_PER_GROUP(%struct.super_block* %159)
  %161 = sdiv i32 %160, 4
  %162 = sub nsw i32 %158, %161
  store i32 %162, i32* %20, align 4
  %163 = load %struct.super_block*, %struct.super_block** %4, align 8
  %164 = call i32 @EXT3_BLOCKS_PER_GROUP(%struct.super_block* %163)
  %165 = load i32, i32* %15, align 4
  %166 = load i64, i64* @BLOCK_COST, align 8
  %167 = trunc i64 %166 to i32
  %168 = call i32 @max(i32 %165, i32 %167)
  %169 = sdiv i32 %164, %168
  store i32 %169, i32* %17, align 4
  %170 = load i32, i32* %17, align 4
  %171 = load i32, i32* @INODE_COST, align 4
  %172 = mul nsw i32 %170, %171
  %173 = load i32, i32* %10, align 4
  %174 = icmp sgt i32 %172, %173
  br i1 %174, label %175, label %179

175:                                              ; preds = %139
  %176 = load i32, i32* %10, align 4
  %177 = load i32, i32* @INODE_COST, align 4
  %178 = sdiv i32 %176, %177
  store i32 %178, i32* %17, align 4
  br label %179

179:                                              ; preds = %175, %139
  %180 = load i32, i32* %17, align 4
  %181 = icmp sgt i32 %180, 255
  br i1 %181, label %182, label %183

182:                                              ; preds = %179
  store i32 255, i32* %17, align 4
  br label %183

183:                                              ; preds = %182, %179
  %184 = load i32, i32* %17, align 4
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %186, label %187

186:                                              ; preds = %183
  store i32 1, i32* %17, align 4
  br label %187

187:                                              ; preds = %186, %183
  store i32 0, i32* %22, align 4
  br label %188

188:                                              ; preds = %235, %187
  %189 = load i32, i32* %22, align 4
  %190 = load i32, i32* %9, align 4
  %191 = icmp slt i32 %189, %190
  br i1 %191, label %192, label %238

192:                                              ; preds = %188
  %193 = load i32, i32* %6, align 4
  %194 = load i32, i32* %22, align 4
  %195 = add nsw i32 %193, %194
  %196 = load i32, i32* %9, align 4
  %197 = srem i32 %195, %196
  store i32 %197, i32* %21, align 4
  %198 = load %struct.super_block*, %struct.super_block** %4, align 8
  %199 = load i32, i32* %21, align 4
  %200 = call %struct.ext3_group_desc* @ext3_get_group_desc(%struct.super_block* %198, i32 %199, i32* null)
  store %struct.ext3_group_desc* %200, %struct.ext3_group_desc** %23, align 8
  %201 = load %struct.ext3_group_desc*, %struct.ext3_group_desc** %23, align 8
  %202 = icmp ne %struct.ext3_group_desc* %201, null
  br i1 %202, label %203, label %208

203:                                              ; preds = %192
  %204 = load %struct.ext3_group_desc*, %struct.ext3_group_desc** %23, align 8
  %205 = getelementptr inbounds %struct.ext3_group_desc, %struct.ext3_group_desc* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 4
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %209, label %208

208:                                              ; preds = %203, %192
  br label %235

209:                                              ; preds = %203
  %210 = load %struct.ext3_group_desc*, %struct.ext3_group_desc** %23, align 8
  %211 = getelementptr inbounds %struct.ext3_group_desc, %struct.ext3_group_desc* %210, i32 0, i32 2
  %212 = load i32, i32* %211, align 4
  %213 = call i32 @le16_to_cpu(i32 %212)
  %214 = load i32, i32* %18, align 4
  %215 = icmp uge i32 %213, %214
  br i1 %215, label %216, label %217

216:                                              ; preds = %209
  br label %235

217:                                              ; preds = %209
  %218 = load %struct.ext3_group_desc*, %struct.ext3_group_desc** %23, align 8
  %219 = getelementptr inbounds %struct.ext3_group_desc, %struct.ext3_group_desc* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 4
  %221 = call i32 @le16_to_cpu(i32 %220)
  %222 = load i32, i32* %19, align 4
  %223 = icmp ult i32 %221, %222
  br i1 %223, label %224, label %225

224:                                              ; preds = %217
  br label %235

225:                                              ; preds = %217
  %226 = load %struct.ext3_group_desc*, %struct.ext3_group_desc** %23, align 8
  %227 = getelementptr inbounds %struct.ext3_group_desc, %struct.ext3_group_desc* %226, i32 0, i32 1
  %228 = load i32, i32* %227, align 4
  %229 = call i32 @le16_to_cpu(i32 %228)
  %230 = load i32, i32* %20, align 4
  %231 = icmp ult i32 %229, %230
  br i1 %231, label %232, label %233

232:                                              ; preds = %225
  br label %235

233:                                              ; preds = %225
  %234 = load i32, i32* %21, align 4
  store i32 %234, i32* %3, align 4
  br label %279

235:                                              ; preds = %232, %224, %216, %208
  %236 = load i32, i32* %22, align 4
  %237 = add nsw i32 %236, 1
  store i32 %237, i32* %22, align 4
  br label %188

238:                                              ; preds = %188
  br label %239

239:                                              ; preds = %277, %238, %138
  store i32 0, i32* %22, align 4
  br label %240

240:                                              ; preds = %271, %239
  %241 = load i32, i32* %22, align 4
  %242 = load i32, i32* %9, align 4
  %243 = icmp slt i32 %241, %242
  br i1 %243, label %244, label %274

244:                                              ; preds = %240
  %245 = load i32, i32* %6, align 4
  %246 = load i32, i32* %22, align 4
  %247 = add nsw i32 %245, %246
  %248 = load i32, i32* %9, align 4
  %249 = srem i32 %247, %248
  store i32 %249, i32* %21, align 4
  %250 = load %struct.super_block*, %struct.super_block** %4, align 8
  %251 = load i32, i32* %21, align 4
  %252 = call %struct.ext3_group_desc* @ext3_get_group_desc(%struct.super_block* %250, i32 %251, i32* null)
  store %struct.ext3_group_desc* %252, %struct.ext3_group_desc** %23, align 8
  %253 = load %struct.ext3_group_desc*, %struct.ext3_group_desc** %23, align 8
  %254 = icmp ne %struct.ext3_group_desc* %253, null
  br i1 %254, label %255, label %260

255:                                              ; preds = %244
  %256 = load %struct.ext3_group_desc*, %struct.ext3_group_desc** %23, align 8
  %257 = getelementptr inbounds %struct.ext3_group_desc, %struct.ext3_group_desc* %256, i32 0, i32 0
  %258 = load i32, i32* %257, align 4
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %261, label %260

260:                                              ; preds = %255, %244
  br label %271

261:                                              ; preds = %255
  %262 = load %struct.ext3_group_desc*, %struct.ext3_group_desc** %23, align 8
  %263 = getelementptr inbounds %struct.ext3_group_desc, %struct.ext3_group_desc* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 4
  %265 = call i32 @le16_to_cpu(i32 %264)
  %266 = load i32, i32* %12, align 4
  %267 = icmp uge i32 %265, %266
  br i1 %267, label %268, label %270

268:                                              ; preds = %261
  %269 = load i32, i32* %21, align 4
  store i32 %269, i32* %3, align 4
  br label %279

270:                                              ; preds = %261
  br label %271

271:                                              ; preds = %270, %260
  %272 = load i32, i32* %22, align 4
  %273 = add nsw i32 %272, 1
  store i32 %273, i32* %22, align 4
  br label %240

274:                                              ; preds = %240
  %275 = load i32, i32* %12, align 4
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %277, label %278

277:                                              ; preds = %274
  store i32 0, i32* %12, align 4
  br label %239

278:                                              ; preds = %274
  store i32 -1, i32* %3, align 4
  br label %279

279:                                              ; preds = %278, %268, %233, %136
  %280 = load i32, i32* %3, align 4
  ret i32 %280
}

declare dso_local %struct.TYPE_4__* @EXT3_I(%struct.inode*) #1

declare dso_local %struct.ext3_sb_info* @EXT3_SB(%struct.super_block*) #1

declare dso_local i32 @EXT3_INODES_PER_GROUP(%struct.super_block*) #1

declare dso_local i8* @percpu_counter_read_positive(i32*) #1

declare dso_local i32 @get_random_bytes(i32*, i32) #1

declare dso_local %struct.ext3_group_desc* @ext3_get_group_desc(%struct.super_block*, i32, i32*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @EXT3_BLOCKS_PER_GROUP(%struct.super_block*) #1

declare dso_local i32 @max(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
