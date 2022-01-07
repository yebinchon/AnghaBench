; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_extents.c_ext4_ext_rm_leaf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_extents.c_ext4_ext_rm_leaf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ext4_ext_path = type { i32*, %struct.ext4_extent*, %struct.ext4_extent_header* }
%struct.ext4_extent = type { i32, i32 }
%struct.ext4_extent_header = type { i64 }

@.str = private unnamed_addr constant [33 x i8] c"truncate since %u in leaf to %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"path[%d].p_hdr == NULL\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"remove ext %u:[%d]%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"  border %u:%u\0A\00", align 1
@.str.4 = private unnamed_addr constant [46 x i8] c"can not handle truncate %u:%u on extent %u:%u\00", align 1
@EXT_MAX_BLOCKS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [24 x i8] c"new extent: %u:%u:%llu\0A\00", align 1
@block = common dso_local global i16 0, align 2
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.inode*, %struct.ext4_ext_path*, i16, i16)* @ext4_ext_rm_leaf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_ext_rm_leaf(i32* %0, %struct.inode* %1, %struct.ext4_ext_path* %2, i16 zeroext %3, i16 zeroext %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.ext4_ext_path*, align 8
  %10 = alloca i16, align 2
  %11 = alloca i16, align 2
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.ext4_extent_header*, align 8
  %17 = alloca i16, align 2
  %18 = alloca i16, align 2
  %19 = alloca i32, align 4
  %20 = alloca i16, align 2
  %21 = alloca i16, align 2
  %22 = alloca i32, align 4
  %23 = alloca %struct.ext4_extent*, align 8
  store i32* %0, i32** %7, align 8
  store %struct.inode* %1, %struct.inode** %8, align 8
  store %struct.ext4_ext_path* %2, %struct.ext4_ext_path** %9, align 8
  store i16 %3, i16* %10, align 2
  store i16 %4, i16* %11, align 2
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %24 = load %struct.inode*, %struct.inode** %8, align 8
  %25 = call i32 @ext_depth(%struct.inode* %24)
  store i32 %25, i32* %14, align 4
  store i32 0, i32* %22, align 4
  %26 = load i16, i16* %10, align 2
  %27 = load i16, i16* %11, align 2
  %28 = zext i16 %27 to i32
  %29 = call i32 (i8*, i16, i32, ...) @ext_debug(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i16 zeroext %26, i32 %28)
  %30 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %9, align 8
  %31 = load i32, i32* %14, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %30, i64 %32
  %34 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %33, i32 0, i32 2
  %35 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %34, align 8
  %36 = icmp ne %struct.ext4_extent_header* %35, null
  br i1 %36, label %50, label %37

37:                                               ; preds = %5
  %38 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %9, align 8
  %39 = load i32, i32* %14, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %38, i64 %40
  %42 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = call %struct.ext4_extent_header* @ext_block_hdr(i32* %43)
  %45 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %9, align 8
  %46 = load i32, i32* %14, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %45, i64 %47
  %49 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %48, i32 0, i32 2
  store %struct.ext4_extent_header* %44, %struct.ext4_extent_header** %49, align 8
  br label %50

50:                                               ; preds = %37, %5
  %51 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %9, align 8
  %52 = load i32, i32* %14, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %51, i64 %53
  %55 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %54, i32 0, i32 2
  %56 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %55, align 8
  store %struct.ext4_extent_header* %56, %struct.ext4_extent_header** %16, align 8
  %57 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %9, align 8
  %58 = load i32, i32* %14, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %57, i64 %59
  %61 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %60, i32 0, i32 2
  %62 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %61, align 8
  %63 = icmp eq %struct.ext4_extent_header* %62, null
  %64 = zext i1 %63 to i32
  %65 = call i64 @unlikely(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %50
  %68 = load %struct.inode*, %struct.inode** %8, align 8
  %69 = load i32, i32* %14, align 4
  %70 = trunc i32 %69 to i16
  %71 = call i32 (%struct.inode*, i8*, i16, ...) @EXT4_ERROR_INODE(%struct.inode* %68, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i16 zeroext %70)
  %72 = load i32, i32* @EIO, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %6, align 4
  br label %385

74:                                               ; preds = %50
  %75 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %16, align 8
  %76 = call %struct.ext4_extent* @EXT_LAST_EXTENT(%struct.ext4_extent_header* %75)
  store %struct.ext4_extent* %76, %struct.ext4_extent** %23, align 8
  %77 = load %struct.ext4_extent*, %struct.ext4_extent** %23, align 8
  %78 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call zeroext i16 @le32_to_cpu(i32 %79)
  store i16 %80, i16* %20, align 2
  %81 = load %struct.ext4_extent*, %struct.ext4_extent** %23, align 8
  %82 = call zeroext i16 @ext4_ext_get_actual_len(%struct.ext4_extent* %81)
  store i16 %82, i16* %21, align 2
  br label %83

83:                                               ; preds = %330, %162, %74
  %84 = load %struct.ext4_extent*, %struct.ext4_extent** %23, align 8
  %85 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %16, align 8
  %86 = call %struct.ext4_extent* @EXT_FIRST_EXTENT(%struct.ext4_extent_header* %85)
  %87 = icmp uge %struct.ext4_extent* %84, %86
  br i1 %87, label %88, label %97

88:                                               ; preds = %83
  %89 = load i16, i16* %20, align 2
  %90 = zext i16 %89 to i32
  %91 = load i16, i16* %21, align 2
  %92 = zext i16 %91 to i32
  %93 = add nsw i32 %90, %92
  %94 = load i16, i16* %10, align 2
  %95 = zext i16 %94 to i32
  %96 = icmp sgt i32 %93, %95
  br label %97

97:                                               ; preds = %88, %83
  %98 = phi i1 [ false, %83 ], [ %96, %88 ]
  br i1 %98, label %99, label %345

99:                                               ; preds = %97
  %100 = load %struct.ext4_extent*, %struct.ext4_extent** %23, align 8
  %101 = call i64 @ext4_ext_is_uninitialized(%struct.ext4_extent* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %99
  store i32 1, i32* %22, align 4
  br label %105

104:                                              ; preds = %99
  store i32 0, i32* %22, align 4
  br label %105

105:                                              ; preds = %104, %103
  %106 = load i16, i16* %20, align 2
  %107 = load i32, i32* %22, align 4
  %108 = load i16, i16* %21, align 2
  %109 = zext i16 %108 to i32
  %110 = call i32 (i8*, i16, i32, ...) @ext_debug(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i16 zeroext %106, i32 %107, i32 %109)
  %111 = load %struct.ext4_extent*, %struct.ext4_extent** %23, align 8
  %112 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %9, align 8
  %113 = load i32, i32* %14, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %112, i64 %114
  %116 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %115, i32 0, i32 1
  store %struct.ext4_extent* %111, %struct.ext4_extent** %116, align 8
  %117 = load i16, i16* %20, align 2
  %118 = zext i16 %117 to i32
  %119 = load i16, i16* %10, align 2
  %120 = zext i16 %119 to i32
  %121 = icmp sgt i32 %118, %120
  br i1 %121, label %122, label %125

122:                                              ; preds = %105
  %123 = load i16, i16* %20, align 2
  %124 = zext i16 %123 to i32
  br label %128

125:                                              ; preds = %105
  %126 = load i16, i16* %10, align 2
  %127 = zext i16 %126 to i32
  br label %128

128:                                              ; preds = %125, %122
  %129 = phi i32 [ %124, %122 ], [ %127, %125 ]
  %130 = trunc i32 %129 to i16
  store i16 %130, i16* %17, align 2
  %131 = load i16, i16* %20, align 2
  %132 = zext i16 %131 to i32
  %133 = load i16, i16* %21, align 2
  %134 = zext i16 %133 to i32
  %135 = add nsw i32 %132, %134
  %136 = sub nsw i32 %135, 1
  %137 = load i16, i16* %11, align 2
  %138 = zext i16 %137 to i32
  %139 = icmp slt i32 %136, %138
  br i1 %139, label %140, label %147

140:                                              ; preds = %128
  %141 = load i16, i16* %20, align 2
  %142 = zext i16 %141 to i32
  %143 = load i16, i16* %21, align 2
  %144 = zext i16 %143 to i32
  %145 = add nsw i32 %142, %144
  %146 = sub nsw i32 %145, 1
  br label %150

147:                                              ; preds = %128
  %148 = load i16, i16* %11, align 2
  %149 = zext i16 %148 to i32
  br label %150

150:                                              ; preds = %147, %140
  %151 = phi i32 [ %146, %140 ], [ %149, %147 ]
  %152 = trunc i32 %151 to i16
  store i16 %152, i16* %18, align 2
  %153 = load i16, i16* %17, align 2
  %154 = load i16, i16* %18, align 2
  %155 = zext i16 %154 to i32
  %156 = call i32 (i8*, i16, i32, ...) @ext_debug(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i16 zeroext %153, i32 %155)
  %157 = load i16, i16* %11, align 2
  %158 = zext i16 %157 to i32
  %159 = load i16, i16* %20, align 2
  %160 = zext i16 %159 to i32
  %161 = icmp slt i32 %158, %160
  br i1 %161, label %162, label %171

162:                                              ; preds = %150
  %163 = load %struct.ext4_extent*, %struct.ext4_extent** %23, align 8
  %164 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %163, i32 -1
  store %struct.ext4_extent* %164, %struct.ext4_extent** %23, align 8
  %165 = load %struct.ext4_extent*, %struct.ext4_extent** %23, align 8
  %166 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = call zeroext i16 @le32_to_cpu(i32 %167)
  store i16 %168, i16* %20, align 2
  %169 = load %struct.ext4_extent*, %struct.ext4_extent** %23, align 8
  %170 = call zeroext i16 @ext4_ext_get_actual_len(%struct.ext4_extent* %169)
  store i16 %170, i16* %21, align 2
  br label %83

171:                                              ; preds = %150
  %172 = load i16, i16* %18, align 2
  %173 = zext i16 %172 to i32
  %174 = load i16, i16* %20, align 2
  %175 = zext i16 %174 to i32
  %176 = load i16, i16* %21, align 2
  %177 = zext i16 %176 to i32
  %178 = add nsw i32 %175, %177
  %179 = sub nsw i32 %178, 1
  %180 = icmp ne i32 %173, %179
  br i1 %180, label %181, label %197

181:                                              ; preds = %171
  %182 = load %struct.inode*, %struct.inode** %8, align 8
  %183 = load i16, i16* %10, align 2
  %184 = load i16, i16* %11, align 2
  %185 = zext i16 %184 to i32
  %186 = load i16, i16* %20, align 2
  %187 = zext i16 %186 to i32
  %188 = load i16, i16* %20, align 2
  %189 = zext i16 %188 to i32
  %190 = load i16, i16* %21, align 2
  %191 = zext i16 %190 to i32
  %192 = add nsw i32 %189, %191
  %193 = sub nsw i32 %192, 1
  %194 = call i32 (%struct.inode*, i8*, i16, ...) @EXT4_ERROR_INODE(%struct.inode* %182, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0), i16 zeroext %183, i32 %185, i32 %187, i32 %193)
  %195 = load i32, i32* @EIO, align 4
  %196 = sub nsw i32 0, %195
  store i32 %196, i32* %12, align 4
  br label %383

197:                                              ; preds = %171
  %198 = load i16, i16* %17, align 2
  %199 = zext i16 %198 to i32
  %200 = load i16, i16* %20, align 2
  %201 = zext i16 %200 to i32
  %202 = icmp ne i32 %199, %201
  br i1 %202, label %203, label %209

203:                                              ; preds = %197
  %204 = load i16, i16* %17, align 2
  %205 = zext i16 %204 to i32
  %206 = load i16, i16* %20, align 2
  %207 = zext i16 %206 to i32
  %208 = sub nsw i32 %205, %207
  store i32 %208, i32* %19, align 4
  br label %210

209:                                              ; preds = %197
  store i32 0, i32* %19, align 4
  br label %210

210:                                              ; preds = %209, %203
  br label %211

211:                                              ; preds = %210
  br label %212

212:                                              ; preds = %211
  %213 = load i16, i16* %21, align 2
  %214 = zext i16 %213 to i32
  %215 = load %struct.inode*, %struct.inode** %8, align 8
  %216 = getelementptr inbounds %struct.inode, %struct.inode* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 4
  %218 = call zeroext i16 @EXT4_BLOCKS_PER_GROUP(i32 %217)
  %219 = zext i16 %218 to i32
  %220 = sdiv i32 %214, %219
  %221 = mul nsw i32 2, %220
  %222 = add nsw i32 7, %221
  store i32 %222, i32* %15, align 4
  %223 = load %struct.ext4_extent*, %struct.ext4_extent** %23, align 8
  %224 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %16, align 8
  %225 = call %struct.ext4_extent* @EXT_FIRST_EXTENT(%struct.ext4_extent_header* %224)
  %226 = icmp eq %struct.ext4_extent* %223, %225
  br i1 %226, label %227, label %233

227:                                              ; preds = %212
  store i32 1, i32* %13, align 4
  %228 = load %struct.inode*, %struct.inode** %8, align 8
  %229 = call i32 @ext_depth(%struct.inode* %228)
  %230 = add nsw i32 %229, 1
  %231 = load i32, i32* %15, align 4
  %232 = add nsw i32 %231, %230
  store i32 %232, i32* %15, align 4
  br label %233

233:                                              ; preds = %227, %212
  %234 = load %struct.inode*, %struct.inode** %8, align 8
  %235 = getelementptr inbounds %struct.inode, %struct.inode* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 4
  %237 = call i64 @EXT4_MAXQUOTAS_TRANS_BLOCKS(i32 %236)
  %238 = load i32, i32* %15, align 4
  %239 = sext i32 %238 to i64
  %240 = add nsw i64 %239, %237
  %241 = trunc i64 %240 to i32
  store i32 %241, i32* %15, align 4
  %242 = load i32*, i32** %7, align 8
  %243 = load %struct.inode*, %struct.inode** %8, align 8
  %244 = load i32, i32* %15, align 4
  %245 = call i32 @ext4_ext_truncate_extend_restart(i32* %242, %struct.inode* %243, i32 %244)
  store i32 %245, i32* %12, align 4
  %246 = load i32, i32* %12, align 4
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %249

248:                                              ; preds = %233
  br label %383

249:                                              ; preds = %233
  %250 = load i32*, i32** %7, align 8
  %251 = load %struct.inode*, %struct.inode** %8, align 8
  %252 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %9, align 8
  %253 = load i32, i32* %14, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %252, i64 %254
  %256 = call i32 @ext4_ext_get_access(i32* %250, %struct.inode* %251, %struct.ext4_ext_path* %255)
  store i32 %256, i32* %12, align 4
  %257 = load i32, i32* %12, align 4
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %259, label %260

259:                                              ; preds = %249
  br label %383

260:                                              ; preds = %249
  %261 = load i32*, i32** %7, align 8
  %262 = load %struct.inode*, %struct.inode** %8, align 8
  %263 = load %struct.ext4_extent*, %struct.ext4_extent** %23, align 8
  %264 = load i16, i16* %17, align 2
  %265 = load i16, i16* %18, align 2
  %266 = call i32 @ext4_remove_blocks(i32* %261, %struct.inode* %262, %struct.ext4_extent* %263, i16 zeroext %264, i16 zeroext %265)
  store i32 %266, i32* %12, align 4
  %267 = load i32, i32* %12, align 4
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %269, label %270

269:                                              ; preds = %260
  br label %383

270:                                              ; preds = %260
  %271 = load i32, i32* %19, align 4
  %272 = icmp eq i32 %271, 0
  br i1 %272, label %273, label %276

273:                                              ; preds = %270
  %274 = load %struct.ext4_extent*, %struct.ext4_extent** %23, align 8
  %275 = call i32 @ext4_ext_store_pblock(%struct.ext4_extent* %274, i32 0)
  br label %276

276:                                              ; preds = %273, %270
  %277 = load i32, i32* %19, align 4
  %278 = call i32 @cpu_to_le16(i32 %277)
  %279 = load %struct.ext4_extent*, %struct.ext4_extent** %23, align 8
  %280 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %279, i32 0, i32 1
  store i32 %278, i32* %280, align 4
  %281 = load i32, i32* %22, align 4
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %283, label %289

283:                                              ; preds = %276
  %284 = load i32, i32* %19, align 4
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %286, label %289

286:                                              ; preds = %283
  %287 = load %struct.ext4_extent*, %struct.ext4_extent** %23, align 8
  %288 = call i32 @ext4_ext_mark_uninitialized(%struct.ext4_extent* %287)
  br label %289

289:                                              ; preds = %286, %283, %276
  %290 = load i32, i32* %19, align 4
  %291 = icmp eq i32 %290, 0
  br i1 %291, label %292, label %319

292:                                              ; preds = %289
  %293 = load i16, i16* %11, align 2
  %294 = zext i16 %293 to i32
  %295 = load i32, i32* @EXT_MAX_BLOCKS, align 4
  %296 = sub nsw i32 %295, 1
  %297 = icmp ne i32 %294, %296
  br i1 %297, label %298, label %315

298:                                              ; preds = %292
  %299 = load %struct.ext4_extent*, %struct.ext4_extent** %23, align 8
  %300 = load %struct.ext4_extent*, %struct.ext4_extent** %23, align 8
  %301 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %300, i64 1
  %302 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %16, align 8
  %303 = call %struct.ext4_extent* @EXT_LAST_EXTENT(%struct.ext4_extent_header* %302)
  %304 = load %struct.ext4_extent*, %struct.ext4_extent** %23, align 8
  %305 = ptrtoint %struct.ext4_extent* %303 to i64
  %306 = ptrtoint %struct.ext4_extent* %304 to i64
  %307 = sub i64 %305, %306
  %308 = sdiv exact i64 %307, 8
  %309 = mul i64 %308, 8
  %310 = trunc i64 %309 to i32
  %311 = call i32 @memmove(%struct.ext4_extent* %299, %struct.ext4_extent* %301, i32 %310)
  %312 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %16, align 8
  %313 = call %struct.ext4_extent* @EXT_LAST_EXTENT(%struct.ext4_extent_header* %312)
  %314 = call i32 @memset(%struct.ext4_extent* %313, i32 0, i32 8)
  br label %315

315:                                              ; preds = %298, %292
  %316 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %16, align 8
  %317 = getelementptr inbounds %struct.ext4_extent_header, %struct.ext4_extent_header* %316, i32 0, i32 0
  %318 = call i32 @le16_add_cpu(i64* %317, i32 -1)
  br label %319

319:                                              ; preds = %315, %289
  %320 = load i32*, i32** %7, align 8
  %321 = load %struct.inode*, %struct.inode** %8, align 8
  %322 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %9, align 8
  %323 = load i32, i32* %14, align 4
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %322, i64 %324
  %326 = call i32 @ext4_ext_dirty(i32* %320, %struct.inode* %321, %struct.ext4_ext_path* %325)
  store i32 %326, i32* %12, align 4
  %327 = load i32, i32* %12, align 4
  %328 = icmp ne i32 %327, 0
  br i1 %328, label %329, label %330

329:                                              ; preds = %319
  br label %383

330:                                              ; preds = %319
  %331 = load i16, i16* @block, align 2
  %332 = load i32, i32* %19, align 4
  %333 = load %struct.ext4_extent*, %struct.ext4_extent** %23, align 8
  %334 = call zeroext i16 @ext4_ext_pblock(%struct.ext4_extent* %333)
  %335 = zext i16 %334 to i32
  %336 = call i32 (i8*, i16, i32, ...) @ext_debug(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i16 zeroext %331, i32 %332, i32 %335)
  %337 = load %struct.ext4_extent*, %struct.ext4_extent** %23, align 8
  %338 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %337, i32 -1
  store %struct.ext4_extent* %338, %struct.ext4_extent** %23, align 8
  %339 = load %struct.ext4_extent*, %struct.ext4_extent** %23, align 8
  %340 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %339, i32 0, i32 0
  %341 = load i32, i32* %340, align 4
  %342 = call zeroext i16 @le32_to_cpu(i32 %341)
  store i16 %342, i16* %20, align 2
  %343 = load %struct.ext4_extent*, %struct.ext4_extent** %23, align 8
  %344 = call zeroext i16 @ext4_ext_get_actual_len(%struct.ext4_extent* %343)
  store i16 %344, i16* %21, align 2
  br label %83

345:                                              ; preds = %97
  %346 = load i32, i32* %13, align 4
  %347 = icmp ne i32 %346, 0
  br i1 %347, label %348, label %358

348:                                              ; preds = %345
  %349 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %16, align 8
  %350 = getelementptr inbounds %struct.ext4_extent_header, %struct.ext4_extent_header* %349, i32 0, i32 0
  %351 = load i64, i64* %350, align 8
  %352 = icmp ne i64 %351, 0
  br i1 %352, label %353, label %358

353:                                              ; preds = %348
  %354 = load i32*, i32** %7, align 8
  %355 = load %struct.inode*, %struct.inode** %8, align 8
  %356 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %9, align 8
  %357 = call i32 @ext4_ext_correct_indexes(i32* %354, %struct.inode* %355, %struct.ext4_ext_path* %356)
  store i32 %357, i32* %12, align 4
  br label %358

358:                                              ; preds = %353, %348, %345
  %359 = load i32, i32* %12, align 4
  %360 = icmp eq i32 %359, 0
  br i1 %360, label %361, label %382

361:                                              ; preds = %358
  %362 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %16, align 8
  %363 = getelementptr inbounds %struct.ext4_extent_header, %struct.ext4_extent_header* %362, i32 0, i32 0
  %364 = load i64, i64* %363, align 8
  %365 = icmp eq i64 %364, 0
  br i1 %365, label %366, label %382

366:                                              ; preds = %361
  %367 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %9, align 8
  %368 = load i32, i32* %14, align 4
  %369 = sext i32 %368 to i64
  %370 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %367, i64 %369
  %371 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %370, i32 0, i32 0
  %372 = load i32*, i32** %371, align 8
  %373 = icmp ne i32* %372, null
  br i1 %373, label %374, label %382

374:                                              ; preds = %366
  %375 = load i32*, i32** %7, align 8
  %376 = load %struct.inode*, %struct.inode** %8, align 8
  %377 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %9, align 8
  %378 = load i32, i32* %14, align 4
  %379 = sext i32 %378 to i64
  %380 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %377, i64 %379
  %381 = call i32 @ext4_ext_rm_idx(i32* %375, %struct.inode* %376, %struct.ext4_ext_path* %380)
  store i32 %381, i32* %12, align 4
  br label %382

382:                                              ; preds = %374, %366, %361, %358
  br label %383

383:                                              ; preds = %382, %329, %269, %259, %248, %181
  %384 = load i32, i32* %12, align 4
  store i32 %384, i32* %6, align 4
  br label %385

385:                                              ; preds = %383, %67
  %386 = load i32, i32* %6, align 4
  ret i32 %386
}

declare dso_local i32 @ext_depth(%struct.inode*) #1

declare dso_local i32 @ext_debug(i8*, i16 zeroext, i32, ...) #1

declare dso_local %struct.ext4_extent_header* @ext_block_hdr(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @EXT4_ERROR_INODE(%struct.inode*, i8*, i16 zeroext, ...) #1

declare dso_local %struct.ext4_extent* @EXT_LAST_EXTENT(%struct.ext4_extent_header*) #1

declare dso_local zeroext i16 @le32_to_cpu(i32) #1

declare dso_local zeroext i16 @ext4_ext_get_actual_len(%struct.ext4_extent*) #1

declare dso_local %struct.ext4_extent* @EXT_FIRST_EXTENT(%struct.ext4_extent_header*) #1

declare dso_local i64 @ext4_ext_is_uninitialized(%struct.ext4_extent*) #1

declare dso_local zeroext i16 @EXT4_BLOCKS_PER_GROUP(i32) #1

declare dso_local i64 @EXT4_MAXQUOTAS_TRANS_BLOCKS(i32) #1

declare dso_local i32 @ext4_ext_truncate_extend_restart(i32*, %struct.inode*, i32) #1

declare dso_local i32 @ext4_ext_get_access(i32*, %struct.inode*, %struct.ext4_ext_path*) #1

declare dso_local i32 @ext4_remove_blocks(i32*, %struct.inode*, %struct.ext4_extent*, i16 zeroext, i16 zeroext) #1

declare dso_local i32 @ext4_ext_store_pblock(%struct.ext4_extent*, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @ext4_ext_mark_uninitialized(%struct.ext4_extent*) #1

declare dso_local i32 @memmove(%struct.ext4_extent*, %struct.ext4_extent*, i32) #1

declare dso_local i32 @memset(%struct.ext4_extent*, i32, i32) #1

declare dso_local i32 @le16_add_cpu(i64*, i32) #1

declare dso_local i32 @ext4_ext_dirty(i32*, %struct.inode*, %struct.ext4_ext_path*) #1

declare dso_local zeroext i16 @ext4_ext_pblock(%struct.ext4_extent*) #1

declare dso_local i32 @ext4_ext_correct_indexes(i32*, %struct.inode*, %struct.ext4_ext_path*) #1

declare dso_local i32 @ext4_ext_rm_idx(i32*, %struct.inode*, %struct.ext4_ext_path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
