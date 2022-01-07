; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_dir.c_ext4_readdir.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_dir.c_ext4_readdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32, i64, %struct.TYPE_11__, %struct.TYPE_8__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.inode* }
%struct.inode = type { i32, i32, i32, i64, i32, %struct.super_block* }
%struct.super_block = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.ext4_dir_entry_2 = type { i32, i32, i32, i32, i32 }
%struct.buffer_head = type { i32, i64, i64 }

@ERR_BAD_DX_DIR = common dso_local global i32 0, align 4
@EXT4_INODE_INDEX = common dso_local global i32 0, align 4
@PAGE_CACHE_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"directory #%lu contains a hole at offset %Lu\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"ext4_readdir\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, i32 (i8*, i32, i32, i32, i64, i32)*)* @ext4_readdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_readdir(%struct.file* %0, i8* %1, i32 (i8*, i32, i32, i32, i64, i32)* %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32 (i8*, i32, i32, i32, i64, i32)*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ext4_dir_entry_2*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.inode*, align 8
  %14 = alloca %struct.super_block*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.buffer_head, align 8
  %19 = alloca %struct.buffer_head*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 (i8*, i32, i32, i32, i64, i32)* %2, i32 (i8*, i32, i32, i32, i64, i32)** %6, align 8
  store i32 0, i32* %7, align 4
  %22 = load %struct.file*, %struct.file** %4, align 8
  %23 = getelementptr inbounds %struct.file, %struct.file* %22, i32 0, i32 3
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load %struct.inode*, %struct.inode** %26, align 8
  store %struct.inode* %27, %struct.inode** %13, align 8
  %28 = load %struct.inode*, %struct.inode** %13, align 8
  %29 = getelementptr inbounds %struct.inode, %struct.inode* %28, i32 0, i32 5
  %30 = load %struct.super_block*, %struct.super_block** %29, align 8
  store %struct.super_block* %30, %struct.super_block** %14, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %31 = load %struct.inode*, %struct.inode** %13, align 8
  %32 = call i64 @is_dx_dir(%struct.inode* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %53

34:                                               ; preds = %3
  %35 = load %struct.file*, %struct.file** %4, align 8
  %36 = load i8*, i8** %5, align 8
  %37 = load i32 (i8*, i32, i32, i32, i64, i32)*, i32 (i8*, i32, i32, i32, i64, i32)** %6, align 8
  %38 = call i32 @ext4_dx_readdir(%struct.file* %35, i8* %36, i32 (i8*, i32, i32, i32, i64, i32)* %37)
  store i32 %38, i32* %12, align 4
  %39 = load i32, i32* %12, align 4
  %40 = load i32, i32* @ERR_BAD_DX_DIR, align 4
  %41 = icmp ne i32 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %34
  %43 = load i32, i32* %12, align 4
  store i32 %43, i32* %15, align 4
  br label %358

44:                                               ; preds = %34
  %45 = load %struct.file*, %struct.file** %4, align 8
  %46 = getelementptr inbounds %struct.file, %struct.file* %45, i32 0, i32 3
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = load %struct.inode*, %struct.inode** %49, align 8
  %51 = load i32, i32* @EXT4_INODE_INDEX, align 4
  %52 = call i32 @ext4_clear_inode_flag(%struct.inode* %50, i32 %51)
  br label %53

53:                                               ; preds = %44, %3
  store i32 0, i32* %10, align 4
  %54 = load %struct.file*, %struct.file** %4, align 8
  %55 = getelementptr inbounds %struct.file, %struct.file* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.super_block*, %struct.super_block** %14, align 8
  %58 = getelementptr inbounds %struct.super_block, %struct.super_block* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = sub nsw i32 %59, 1
  %61 = and i32 %56, %60
  store i32 %61, i32* %8, align 4
  br label %62

62:                                               ; preds = %354, %154, %53
  %63 = load i32, i32* %7, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %76, label %65

65:                                               ; preds = %62
  %66 = load i32, i32* %10, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %76, label %68

68:                                               ; preds = %65
  %69 = load %struct.file*, %struct.file** %4, align 8
  %70 = getelementptr inbounds %struct.file, %struct.file* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.inode*, %struct.inode** %13, align 8
  %73 = getelementptr inbounds %struct.inode, %struct.inode* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = icmp slt i32 %71, %74
  br label %76

76:                                               ; preds = %68, %65, %62
  %77 = phi i1 [ false, %65 ], [ false, %62 ], [ %75, %68 ]
  br i1 %77, label %78, label %357

78:                                               ; preds = %76
  %79 = load %struct.file*, %struct.file** %4, align 8
  %80 = getelementptr inbounds %struct.file, %struct.file* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.super_block*, %struct.super_block** %14, align 8
  %83 = call i32 @EXT4_BLOCK_SIZE_BITS(%struct.super_block* %82)
  %84 = ashr i32 %81, %83
  store i32 %84, i32* %17, align 4
  store %struct.buffer_head* null, %struct.buffer_head** %19, align 8
  %85 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %18, i32 0, i32 2
  store i64 0, i64* %85, align 8
  %86 = load %struct.inode*, %struct.inode** %13, align 8
  %87 = load i32, i32* %17, align 4
  %88 = call i32 @ext4_get_blocks(i32* null, %struct.inode* %86, i32 %87, i32 1, %struct.buffer_head* %18, i32 0)
  store i32 %88, i32* %12, align 4
  %89 = load i32, i32* %12, align 4
  %90 = icmp sgt i32 %89, 0
  br i1 %90, label %91, label %128

91:                                               ; preds = %78
  %92 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %18, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @PAGE_CACHE_SHIFT, align 4
  %95 = load %struct.inode*, %struct.inode** %13, align 8
  %96 = getelementptr inbounds %struct.inode, %struct.inode* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = sub nsw i32 %94, %97
  %99 = ashr i32 %93, %98
  store i32 %99, i32* %20, align 4
  %100 = load %struct.file*, %struct.file** %4, align 8
  %101 = getelementptr inbounds %struct.file, %struct.file* %100, i32 0, i32 2
  %102 = load i32, i32* %20, align 4
  %103 = call i32 @ra_has_index(%struct.TYPE_11__* %101, i32 %102)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %118, label %105

105:                                              ; preds = %91
  %106 = load %struct.super_block*, %struct.super_block** %14, align 8
  %107 = getelementptr inbounds %struct.super_block, %struct.super_block* %106, i32 0, i32 1
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 0
  %110 = load %struct.TYPE_9__*, %struct.TYPE_9__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.file*, %struct.file** %4, align 8
  %114 = getelementptr inbounds %struct.file, %struct.file* %113, i32 0, i32 2
  %115 = load %struct.file*, %struct.file** %4, align 8
  %116 = load i32, i32* %20, align 4
  %117 = call i32 @page_cache_sync_readahead(i32 %112, %struct.TYPE_11__* %114, %struct.file* %115, i32 %116, i32 1)
  br label %118

118:                                              ; preds = %105, %91
  %119 = load i32, i32* %20, align 4
  %120 = load i32, i32* @PAGE_CACHE_SHIFT, align 4
  %121 = shl i32 %119, %120
  %122 = load %struct.file*, %struct.file** %4, align 8
  %123 = getelementptr inbounds %struct.file, %struct.file* %122, i32 0, i32 2
  %124 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %123, i32 0, i32 0
  store i32 %121, i32* %124, align 8
  %125 = load %struct.inode*, %struct.inode** %13, align 8
  %126 = load i32, i32* %17, align 4
  %127 = call %struct.buffer_head* @ext4_bread(i32* null, %struct.inode* %125, i32 %126, i32 0, i32* %12)
  store %struct.buffer_head* %127, %struct.buffer_head** %19, align 8
  br label %128

128:                                              ; preds = %118, %78
  %129 = load %struct.buffer_head*, %struct.buffer_head** %19, align 8
  %130 = icmp ne %struct.buffer_head* %129, null
  br i1 %130, label %164, label %131

131:                                              ; preds = %128
  %132 = load i32, i32* %16, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %144, label %134

134:                                              ; preds = %131
  %135 = load %struct.super_block*, %struct.super_block** %14, align 8
  %136 = load %struct.inode*, %struct.inode** %13, align 8
  %137 = getelementptr inbounds %struct.inode, %struct.inode* %136, i32 0, i32 4
  %138 = load i32, i32* %137, align 8
  %139 = load %struct.file*, %struct.file** %4, align 8
  %140 = getelementptr inbounds %struct.file, %struct.file* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = sext i32 %141 to i64
  %143 = call i32 @ext4_error(%struct.super_block* %135, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %138, i64 %142)
  store i32 1, i32* %16, align 4
  br label %144

144:                                              ; preds = %134, %131
  %145 = load %struct.file*, %struct.file** %4, align 8
  %146 = getelementptr inbounds %struct.file, %struct.file* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = load %struct.inode*, %struct.inode** %13, align 8
  %149 = getelementptr inbounds %struct.inode, %struct.inode* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 8
  %151 = shl i32 %150, 9
  %152 = icmp sgt i32 %147, %151
  br i1 %152, label %153, label %154

153:                                              ; preds = %144
  br label %357

154:                                              ; preds = %144
  %155 = load %struct.super_block*, %struct.super_block** %14, align 8
  %156 = getelementptr inbounds %struct.super_block, %struct.super_block* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = load i32, i32* %8, align 4
  %159 = sub i32 %157, %158
  %160 = load %struct.file*, %struct.file** %4, align 8
  %161 = getelementptr inbounds %struct.file, %struct.file* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = add i32 %162, %159
  store i32 %163, i32* %161, align 8
  br label %62

164:                                              ; preds = %128
  br label %165

165:                                              ; preds = %336, %164
  %166 = load %struct.file*, %struct.file** %4, align 8
  %167 = getelementptr inbounds %struct.file, %struct.file* %166, i32 0, i32 1
  %168 = load i64, i64* %167, align 8
  %169 = load %struct.inode*, %struct.inode** %13, align 8
  %170 = getelementptr inbounds %struct.inode, %struct.inode* %169, i32 0, i32 3
  %171 = load i64, i64* %170, align 8
  %172 = icmp ne i64 %168, %171
  br i1 %172, label %173, label %236

173:                                              ; preds = %165
  store i32 0, i32* %9, align 4
  br label %174

174:                                              ; preds = %204, %173
  %175 = load i32, i32* %9, align 4
  %176 = load %struct.super_block*, %struct.super_block** %14, align 8
  %177 = getelementptr inbounds %struct.super_block, %struct.super_block* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = icmp slt i32 %175, %178
  br i1 %179, label %180, label %184

180:                                              ; preds = %174
  %181 = load i32, i32* %9, align 4
  %182 = load i32, i32* %8, align 4
  %183 = icmp ult i32 %181, %182
  br label %184

184:                                              ; preds = %180, %174
  %185 = phi i1 [ false, %174 ], [ %183, %180 ]
  br i1 %185, label %186, label %216

186:                                              ; preds = %184
  %187 = load %struct.buffer_head*, %struct.buffer_head** %19, align 8
  %188 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %187, i32 0, i32 1
  %189 = load i64, i64* %188, align 8
  %190 = load i32, i32* %9, align 4
  %191 = sext i32 %190 to i64
  %192 = add nsw i64 %189, %191
  %193 = inttoptr i64 %192 to %struct.ext4_dir_entry_2*
  store %struct.ext4_dir_entry_2* %193, %struct.ext4_dir_entry_2** %11, align 8
  %194 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %11, align 8
  %195 = getelementptr inbounds %struct.ext4_dir_entry_2, %struct.ext4_dir_entry_2* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 4
  %197 = load %struct.super_block*, %struct.super_block** %14, align 8
  %198 = getelementptr inbounds %struct.super_block, %struct.super_block* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = call i64 @ext4_rec_len_from_disk(i32 %196, i32 %199)
  %201 = call i64 @EXT4_DIR_REC_LEN(i32 1)
  %202 = icmp slt i64 %200, %201
  br i1 %202, label %203, label %204

203:                                              ; preds = %186
  br label %216

204:                                              ; preds = %186
  %205 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %11, align 8
  %206 = getelementptr inbounds %struct.ext4_dir_entry_2, %struct.ext4_dir_entry_2* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 4
  %208 = load %struct.super_block*, %struct.super_block** %14, align 8
  %209 = getelementptr inbounds %struct.super_block, %struct.super_block* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = call i64 @ext4_rec_len_from_disk(i32 %207, i32 %210)
  %212 = load i32, i32* %9, align 4
  %213 = sext i32 %212 to i64
  %214 = add nsw i64 %213, %211
  %215 = trunc i64 %214 to i32
  store i32 %215, i32* %9, align 4
  br label %174

216:                                              ; preds = %203, %184
  %217 = load i32, i32* %9, align 4
  store i32 %217, i32* %8, align 4
  %218 = load %struct.file*, %struct.file** %4, align 8
  %219 = getelementptr inbounds %struct.file, %struct.file* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 8
  %221 = load %struct.super_block*, %struct.super_block** %14, align 8
  %222 = getelementptr inbounds %struct.super_block, %struct.super_block* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 8
  %224 = sub nsw i32 %223, 1
  %225 = xor i32 %224, -1
  %226 = and i32 %220, %225
  %227 = load i32, i32* %8, align 4
  %228 = or i32 %226, %227
  %229 = load %struct.file*, %struct.file** %4, align 8
  %230 = getelementptr inbounds %struct.file, %struct.file* %229, i32 0, i32 0
  store i32 %228, i32* %230, align 8
  %231 = load %struct.inode*, %struct.inode** %13, align 8
  %232 = getelementptr inbounds %struct.inode, %struct.inode* %231, i32 0, i32 3
  %233 = load i64, i64* %232, align 8
  %234 = load %struct.file*, %struct.file** %4, align 8
  %235 = getelementptr inbounds %struct.file, %struct.file* %234, i32 0, i32 1
  store i64 %233, i64* %235, align 8
  br label %236

236:                                              ; preds = %216, %165
  br label %237

237:                                              ; preds = %340, %236
  %238 = load i32, i32* %7, align 4
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %254, label %240

240:                                              ; preds = %237
  %241 = load %struct.file*, %struct.file** %4, align 8
  %242 = getelementptr inbounds %struct.file, %struct.file* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 8
  %244 = load %struct.inode*, %struct.inode** %13, align 8
  %245 = getelementptr inbounds %struct.inode, %struct.inode* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 8
  %247 = icmp slt i32 %243, %246
  br i1 %247, label %248, label %254

248:                                              ; preds = %240
  %249 = load i32, i32* %8, align 4
  %250 = load %struct.super_block*, %struct.super_block** %14, align 8
  %251 = getelementptr inbounds %struct.super_block, %struct.super_block* %250, i32 0, i32 0
  %252 = load i32, i32* %251, align 8
  %253 = icmp ult i32 %249, %252
  br label %254

254:                                              ; preds = %248, %240, %237
  %255 = phi i1 [ false, %240 ], [ false, %237 ], [ %253, %248 ]
  br i1 %255, label %256, label %354

256:                                              ; preds = %254
  %257 = load %struct.buffer_head*, %struct.buffer_head** %19, align 8
  %258 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %257, i32 0, i32 1
  %259 = load i64, i64* %258, align 8
  %260 = load i32, i32* %8, align 4
  %261 = zext i32 %260 to i64
  %262 = add nsw i64 %259, %261
  %263 = inttoptr i64 %262 to %struct.ext4_dir_entry_2*
  store %struct.ext4_dir_entry_2* %263, %struct.ext4_dir_entry_2** %11, align 8
  %264 = load %struct.inode*, %struct.inode** %13, align 8
  %265 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %11, align 8
  %266 = load %struct.buffer_head*, %struct.buffer_head** %19, align 8
  %267 = load i32, i32* %8, align 4
  %268 = call i32 @ext4_check_dir_entry(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), %struct.inode* %264, %struct.ext4_dir_entry_2* %265, %struct.buffer_head* %266, i32 %267)
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %285, label %270

270:                                              ; preds = %256
  %271 = load %struct.file*, %struct.file** %4, align 8
  %272 = getelementptr inbounds %struct.file, %struct.file* %271, i32 0, i32 0
  %273 = load i32, i32* %272, align 8
  %274 = load %struct.super_block*, %struct.super_block** %14, align 8
  %275 = getelementptr inbounds %struct.super_block, %struct.super_block* %274, i32 0, i32 0
  %276 = load i32, i32* %275, align 8
  %277 = sub nsw i32 %276, 1
  %278 = or i32 %273, %277
  %279 = add nsw i32 %278, 1
  %280 = load %struct.file*, %struct.file** %4, align 8
  %281 = getelementptr inbounds %struct.file, %struct.file* %280, i32 0, i32 0
  store i32 %279, i32* %281, align 8
  %282 = load %struct.buffer_head*, %struct.buffer_head** %19, align 8
  %283 = call i32 @brelse(%struct.buffer_head* %282)
  %284 = load i32, i32* %10, align 4
  store i32 %284, i32* %15, align 4
  br label %358

285:                                              ; preds = %256
  %286 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %11, align 8
  %287 = getelementptr inbounds %struct.ext4_dir_entry_2, %struct.ext4_dir_entry_2* %286, i32 0, i32 0
  %288 = load i32, i32* %287, align 4
  %289 = load %struct.super_block*, %struct.super_block** %14, align 8
  %290 = getelementptr inbounds %struct.super_block, %struct.super_block* %289, i32 0, i32 0
  %291 = load i32, i32* %290, align 8
  %292 = call i64 @ext4_rec_len_from_disk(i32 %288, i32 %291)
  %293 = load i32, i32* %8, align 4
  %294 = zext i32 %293 to i64
  %295 = add nsw i64 %294, %292
  %296 = trunc i64 %295 to i32
  store i32 %296, i32* %8, align 4
  %297 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %11, align 8
  %298 = getelementptr inbounds %struct.ext4_dir_entry_2, %struct.ext4_dir_entry_2* %297, i32 0, i32 2
  %299 = load i32, i32* %298, align 4
  %300 = call i64 @le32_to_cpu(i32 %299)
  %301 = icmp ne i64 %300, 0
  br i1 %301, label %302, label %340

302:                                              ; preds = %285
  %303 = load %struct.file*, %struct.file** %4, align 8
  %304 = getelementptr inbounds %struct.file, %struct.file* %303, i32 0, i32 1
  %305 = load i64, i64* %304, align 8
  store i64 %305, i64* %21, align 8
  %306 = load i32 (i8*, i32, i32, i32, i64, i32)*, i32 (i8*, i32, i32, i32, i64, i32)** %6, align 8
  %307 = load i8*, i8** %5, align 8
  %308 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %11, align 8
  %309 = getelementptr inbounds %struct.ext4_dir_entry_2, %struct.ext4_dir_entry_2* %308, i32 0, i32 4
  %310 = load i32, i32* %309, align 4
  %311 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %11, align 8
  %312 = getelementptr inbounds %struct.ext4_dir_entry_2, %struct.ext4_dir_entry_2* %311, i32 0, i32 3
  %313 = load i32, i32* %312, align 4
  %314 = load %struct.file*, %struct.file** %4, align 8
  %315 = getelementptr inbounds %struct.file, %struct.file* %314, i32 0, i32 0
  %316 = load i32, i32* %315, align 8
  %317 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %11, align 8
  %318 = getelementptr inbounds %struct.ext4_dir_entry_2, %struct.ext4_dir_entry_2* %317, i32 0, i32 2
  %319 = load i32, i32* %318, align 4
  %320 = call i64 @le32_to_cpu(i32 %319)
  %321 = load %struct.super_block*, %struct.super_block** %14, align 8
  %322 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %11, align 8
  %323 = getelementptr inbounds %struct.ext4_dir_entry_2, %struct.ext4_dir_entry_2* %322, i32 0, i32 1
  %324 = load i32, i32* %323, align 4
  %325 = call i32 @get_dtype(%struct.super_block* %321, i32 %324)
  %326 = call i32 %306(i8* %307, i32 %310, i32 %313, i32 %316, i64 %320, i32 %325)
  store i32 %326, i32* %7, align 4
  %327 = load i32, i32* %7, align 4
  %328 = icmp ne i32 %327, 0
  br i1 %328, label %329, label %330

329:                                              ; preds = %302
  br label %354

330:                                              ; preds = %302
  %331 = load i64, i64* %21, align 8
  %332 = load %struct.file*, %struct.file** %4, align 8
  %333 = getelementptr inbounds %struct.file, %struct.file* %332, i32 0, i32 1
  %334 = load i64, i64* %333, align 8
  %335 = icmp ne i64 %331, %334
  br i1 %335, label %336, label %337

336:                                              ; preds = %330
  br label %165

337:                                              ; preds = %330
  %338 = load i32, i32* %10, align 4
  %339 = add nsw i32 %338, 1
  store i32 %339, i32* %10, align 4
  br label %340

340:                                              ; preds = %337, %285
  %341 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %11, align 8
  %342 = getelementptr inbounds %struct.ext4_dir_entry_2, %struct.ext4_dir_entry_2* %341, i32 0, i32 0
  %343 = load i32, i32* %342, align 4
  %344 = load %struct.super_block*, %struct.super_block** %14, align 8
  %345 = getelementptr inbounds %struct.super_block, %struct.super_block* %344, i32 0, i32 0
  %346 = load i32, i32* %345, align 8
  %347 = call i64 @ext4_rec_len_from_disk(i32 %343, i32 %346)
  %348 = load %struct.file*, %struct.file** %4, align 8
  %349 = getelementptr inbounds %struct.file, %struct.file* %348, i32 0, i32 0
  %350 = load i32, i32* %349, align 8
  %351 = sext i32 %350 to i64
  %352 = add nsw i64 %351, %347
  %353 = trunc i64 %352 to i32
  store i32 %353, i32* %349, align 8
  br label %237

354:                                              ; preds = %329, %254
  store i32 0, i32* %8, align 4
  %355 = load %struct.buffer_head*, %struct.buffer_head** %19, align 8
  %356 = call i32 @brelse(%struct.buffer_head* %355)
  br label %62

357:                                              ; preds = %153, %76
  br label %358

358:                                              ; preds = %357, %270, %42
  %359 = load i32, i32* %15, align 4
  ret i32 %359
}

declare dso_local i64 @is_dx_dir(%struct.inode*) #1

declare dso_local i32 @ext4_dx_readdir(%struct.file*, i8*, i32 (i8*, i32, i32, i32, i64, i32)*) #1

declare dso_local i32 @ext4_clear_inode_flag(%struct.inode*, i32) #1

declare dso_local i32 @EXT4_BLOCK_SIZE_BITS(%struct.super_block*) #1

declare dso_local i32 @ext4_get_blocks(i32*, %struct.inode*, i32, i32, %struct.buffer_head*, i32) #1

declare dso_local i32 @ra_has_index(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @page_cache_sync_readahead(i32, %struct.TYPE_11__*, %struct.file*, i32, i32) #1

declare dso_local %struct.buffer_head* @ext4_bread(i32*, %struct.inode*, i32, i32, i32*) #1

declare dso_local i32 @ext4_error(%struct.super_block*, i8*, i32, i64) #1

declare dso_local i64 @ext4_rec_len_from_disk(i32, i32) #1

declare dso_local i64 @EXT4_DIR_REC_LEN(i32) #1

declare dso_local i32 @ext4_check_dir_entry(i8*, %struct.inode*, %struct.ext4_dir_entry_2*, %struct.buffer_head*, i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @get_dtype(%struct.super_block*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
