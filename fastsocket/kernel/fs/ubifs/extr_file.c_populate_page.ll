; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_file.c_populate_page.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_file.c_populate_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32 }
%struct.page = type { i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.bu_info = type { i32, %struct.TYPE_7__*, %struct.ubifs_data_node* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.ubifs_data_node = type { i32, i32, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_8__ = type { i64 }

@.str = private unnamed_addr constant [41 x i8] c"ino %lu, pg %lu, i_size %lld, flags %#lx\00", align 1
@PAGE_CACHE_SHIFT = common dso_local global i32 0, align 4
@PAGE_CACHE_SIZE = common dso_local global i32 0, align 4
@UBIFS_BLOCKS_PER_PAGE_SHIFT = common dso_local global i32 0, align 4
@UBIFS_BLOCK_SIZE = common dso_local global i32 0, align 4
@UBIFS_DATA_NODE_SZ = common dso_local global i32 0, align 4
@UBIFS_BLOCK_SHIFT = common dso_local global i32 0, align 4
@UBIFS_BLOCKS_PER_PAGE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"hole\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"bad data node (block %u, inode %lu)\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubifs_info*, %struct.page*, %struct.bu_info*, i32*)* @populate_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @populate_page(%struct.ubifs_info* %0, %struct.page* %1, %struct.bu_info* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ubifs_info*, align 8
  %7 = alloca %struct.page*, align 8
  %8 = alloca %struct.bu_info*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.inode*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca %struct.ubifs_data_node*, align 8
  %26 = alloca i32, align 4
  store %struct.ubifs_info* %0, %struct.ubifs_info** %6, align 8
  store %struct.page* %1, %struct.page** %7, align 8
  store %struct.bu_info* %2, %struct.bu_info** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 0, i32* %10, align 4
  %27 = load i32*, i32** %9, align 8
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %11, align 4
  %29 = load %struct.bu_info*, %struct.bu_info** %8, align 8
  %30 = getelementptr inbounds %struct.bu_info, %struct.bu_info* %29, i32 0, i32 1
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i64 0
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %35 = load %struct.page*, %struct.page** %7, align 8
  %36 = getelementptr inbounds %struct.page, %struct.page* %35, i32 0, i32 2
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load %struct.inode*, %struct.inode** %38, align 8
  store %struct.inode* %39, %struct.inode** %15, align 8
  %40 = load %struct.inode*, %struct.inode** %15, align 8
  %41 = call i32 @i_size_read(%struct.inode* %40)
  store i32 %41, i32* %16, align 4
  %42 = load %struct.inode*, %struct.inode** %15, align 8
  %43 = getelementptr inbounds %struct.inode, %struct.inode* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.page*, %struct.page** %7, align 8
  %46 = getelementptr inbounds %struct.page, %struct.page* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* %16, align 4
  %49 = load %struct.page*, %struct.page** %7, align 8
  %50 = getelementptr inbounds %struct.page, %struct.page* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 (i8*, ...) @dbg_gen(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %44, i32 %47, i32 %48, i32 %51)
  %53 = load %struct.page*, %struct.page** %7, align 8
  %54 = call i8* @kmap(%struct.page* %53)
  store i8* %54, i8** %19, align 8
  store i8* %54, i8** %18, align 8
  %55 = load i32, i32* %16, align 4
  %56 = sub nsw i32 %55, 1
  %57 = load i32, i32* @PAGE_CACHE_SHIFT, align 4
  %58 = ashr i32 %56, %57
  store i32 %58, i32* %20, align 4
  %59 = load i32, i32* %16, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %4
  %62 = load %struct.page*, %struct.page** %7, align 8
  %63 = getelementptr inbounds %struct.page, %struct.page* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* %20, align 4
  %66 = icmp sgt i32 %64, %65
  br i1 %66, label %67, label %71

67:                                               ; preds = %61, %4
  store i32 1, i32* %13, align 4
  %68 = load i8*, i8** %18, align 8
  %69 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %70 = call i32 @memset(i8* %68, i32 0, i32 %69)
  br label %246

71:                                               ; preds = %61
  %72 = load %struct.page*, %struct.page** %7, align 8
  %73 = getelementptr inbounds %struct.page, %struct.page* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @UBIFS_BLOCKS_PER_PAGE_SHIFT, align 4
  %76 = shl i32 %74, %75
  store i32 %76, i32* %17, align 4
  br label %77

77:                                               ; preds = %71, %196, %211
  %78 = load i32, i32* %11, align 4
  %79 = load %struct.bu_info*, %struct.bu_info** %8, align 8
  %80 = getelementptr inbounds %struct.bu_info, %struct.bu_info* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = icmp sge i32 %78, %81
  br i1 %82, label %83, label %87

83:                                               ; preds = %77
  store i32 1, i32* %13, align 4
  %84 = load i8*, i8** %18, align 8
  %85 = load i32, i32* @UBIFS_BLOCK_SIZE, align 4
  %86 = call i32 @memset(i8* %84, i32 0, i32 %85)
  br label %205

87:                                               ; preds = %77
  %88 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %89 = load %struct.bu_info*, %struct.bu_info** %8, align 8
  %90 = getelementptr inbounds %struct.bu_info, %struct.bu_info* %89, i32 0, i32 1
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %90, align 8
  %92 = load i32, i32* %11, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 1
  %96 = call i32 @key_block(%struct.ubifs_info* %88, i32* %95)
  %97 = load i32, i32* %17, align 4
  %98 = icmp eq i32 %96, %97
  br i1 %98, label %99, label %184

99:                                               ; preds = %87
  %100 = load %struct.bu_info*, %struct.bu_info** %8, align 8
  %101 = getelementptr inbounds %struct.bu_info, %struct.bu_info* %100, i32 0, i32 2
  %102 = load %struct.ubifs_data_node*, %struct.ubifs_data_node** %101, align 8
  %103 = load %struct.bu_info*, %struct.bu_info** %8, align 8
  %104 = getelementptr inbounds %struct.bu_info, %struct.bu_info* %103, i32 0, i32 1
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %104, align 8
  %106 = load i32, i32* %11, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* %12, align 4
  %112 = sub nsw i32 %110, %111
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.ubifs_data_node, %struct.ubifs_data_node* %102, i64 %113
  store %struct.ubifs_data_node* %114, %struct.ubifs_data_node** %25, align 8
  %115 = load %struct.ubifs_data_node*, %struct.ubifs_data_node** %25, align 8
  %116 = getelementptr inbounds %struct.ubifs_data_node, %struct.ubifs_data_node* %115, i32 0, i32 2
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = call i64 @le64_to_cpu(i32 %118)
  %120 = load %struct.inode*, %struct.inode** %15, align 8
  %121 = call %struct.TYPE_8__* @ubifs_inode(%struct.inode* %120)
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = icmp sgt i64 %119, %123
  %125 = zext i1 %124 to i32
  %126 = call i32 @ubifs_assert(i32 %125)
  %127 = load %struct.ubifs_data_node*, %struct.ubifs_data_node** %25, align 8
  %128 = getelementptr inbounds %struct.ubifs_data_node, %struct.ubifs_data_node* %127, i32 0, i32 3
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @le32_to_cpu(i32 %129)
  store i32 %130, i32* %22, align 4
  %131 = load i32, i32* %22, align 4
  %132 = icmp sle i32 %131, 0
  br i1 %132, label %137, label %133

133:                                              ; preds = %99
  %134 = load i32, i32* %22, align 4
  %135 = load i32, i32* @UBIFS_BLOCK_SIZE, align 4
  %136 = icmp sgt i32 %134, %135
  br i1 %136, label %137, label %138

137:                                              ; preds = %133, %99
  br label %264

138:                                              ; preds = %133
  %139 = load %struct.ubifs_data_node*, %struct.ubifs_data_node** %25, align 8
  %140 = getelementptr inbounds %struct.ubifs_data_node, %struct.ubifs_data_node* %139, i32 0, i32 2
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @le32_to_cpu(i32 %142)
  %144 = load i32, i32* @UBIFS_DATA_NODE_SZ, align 4
  %145 = sub nsw i32 %143, %144
  store i32 %145, i32* %24, align 4
  %146 = load i32, i32* @UBIFS_BLOCK_SIZE, align 4
  store i32 %146, i32* %23, align 4
  %147 = load %struct.ubifs_data_node*, %struct.ubifs_data_node** %25, align 8
  %148 = getelementptr inbounds %struct.ubifs_data_node, %struct.ubifs_data_node* %147, i32 0, i32 1
  %149 = load i32, i32* %24, align 4
  %150 = load i8*, i8** %18, align 8
  %151 = load %struct.ubifs_data_node*, %struct.ubifs_data_node** %25, align 8
  %152 = getelementptr inbounds %struct.ubifs_data_node, %struct.ubifs_data_node* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @le16_to_cpu(i32 %153)
  %155 = call i32 @ubifs_decompress(i32* %148, i32 %149, i8* %150, i32* %23, i32 %154)
  store i32 %155, i32* %21, align 4
  %156 = load i32, i32* %21, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %162, label %158

158:                                              ; preds = %138
  %159 = load i32, i32* %22, align 4
  %160 = load i32, i32* %23, align 4
  %161 = icmp ne i32 %159, %160
  br i1 %161, label %162, label %163

162:                                              ; preds = %158, %138
  br label %264

163:                                              ; preds = %158
  %164 = load i32, i32* %22, align 4
  %165 = load i32, i32* @UBIFS_BLOCK_SIZE, align 4
  %166 = icmp slt i32 %164, %165
  br i1 %166, label %167, label %176

167:                                              ; preds = %163
  %168 = load i8*, i8** %18, align 8
  %169 = load i32, i32* %22, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr i8, i8* %168, i64 %170
  %172 = load i32, i32* @UBIFS_BLOCK_SIZE, align 4
  %173 = load i32, i32* %22, align 4
  %174 = sub nsw i32 %172, %173
  %175 = call i32 @memset(i8* %171, i32 0, i32 %174)
  br label %176

176:                                              ; preds = %167, %163
  %177 = load i32, i32* %11, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %11, align 4
  %179 = load i32, i32* %10, align 4
  %180 = load i32, i32* @UBIFS_BLOCK_SHIFT, align 4
  %181 = shl i32 %179, %180
  %182 = load i32, i32* %22, align 4
  %183 = add nsw i32 %181, %182
  store i32 %183, i32* %14, align 4
  br label %204

184:                                              ; preds = %87
  %185 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %186 = load %struct.bu_info*, %struct.bu_info** %8, align 8
  %187 = getelementptr inbounds %struct.bu_info, %struct.bu_info* %186, i32 0, i32 1
  %188 = load %struct.TYPE_7__*, %struct.TYPE_7__** %187, align 8
  %189 = load i32, i32* %11, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %188, i64 %190
  %192 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %191, i32 0, i32 1
  %193 = call i32 @key_block(%struct.ubifs_info* %185, i32* %192)
  %194 = load i32, i32* %17, align 4
  %195 = icmp ult i32 %193, %194
  br i1 %195, label %196, label %199

196:                                              ; preds = %184
  %197 = load i32, i32* %11, align 4
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %11, align 4
  br label %77

199:                                              ; preds = %184
  store i32 1, i32* %13, align 4
  %200 = load i8*, i8** %18, align 8
  %201 = load i32, i32* @UBIFS_BLOCK_SIZE, align 4
  %202 = call i32 @memset(i8* %200, i32 0, i32 %201)
  br label %203

203:                                              ; preds = %199
  br label %204

204:                                              ; preds = %203, %176
  br label %205

205:                                              ; preds = %204, %83
  %206 = load i32, i32* %10, align 4
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* %10, align 4
  %208 = load i32, i32* @UBIFS_BLOCKS_PER_PAGE, align 4
  %209 = icmp sge i32 %207, %208
  br i1 %209, label %210, label %211

210:                                              ; preds = %205
  br label %218

211:                                              ; preds = %205
  %212 = load i32, i32* @UBIFS_BLOCK_SIZE, align 4
  %213 = load i8*, i8** %18, align 8
  %214 = sext i32 %212 to i64
  %215 = getelementptr i8, i8* %213, i64 %214
  store i8* %215, i8** %18, align 8
  %216 = load i32, i32* %17, align 4
  %217 = add i32 %216, 1
  store i32 %217, i32* %17, align 4
  br label %77

218:                                              ; preds = %210
  %219 = load i32, i32* %20, align 4
  %220 = load %struct.page*, %struct.page** %7, align 8
  %221 = getelementptr inbounds %struct.page, %struct.page* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 8
  %223 = icmp eq i32 %219, %222
  br i1 %223, label %224, label %245

224:                                              ; preds = %218
  %225 = load i32, i32* %16, align 4
  %226 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %227 = sub nsw i32 %226, 1
  %228 = and i32 %225, %227
  store i32 %228, i32* %26, align 4
  %229 = load i32, i32* %26, align 4
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %244

231:                                              ; preds = %224
  %232 = load i32, i32* %26, align 4
  %233 = load i32, i32* %14, align 4
  %234 = icmp slt i32 %232, %233
  br i1 %234, label %235, label %244

235:                                              ; preds = %231
  %236 = load i8*, i8** %19, align 8
  %237 = load i32, i32* %26, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr i8, i8* %236, i64 %238
  %240 = load i32, i32* %14, align 4
  %241 = load i32, i32* %26, align 4
  %242 = sub nsw i32 %240, %241
  %243 = call i32 @memset(i8* %239, i32 0, i32 %242)
  br label %244

244:                                              ; preds = %235, %231, %224
  br label %245

245:                                              ; preds = %244, %218
  br label %246

246:                                              ; preds = %245, %67
  %247 = load i32, i32* %13, align 4
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %253

249:                                              ; preds = %246
  %250 = load %struct.page*, %struct.page** %7, align 8
  %251 = call i32 @SetPageChecked(%struct.page* %250)
  %252 = call i32 (i8*, ...) @dbg_gen(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  br label %253

253:                                              ; preds = %249, %246
  %254 = load %struct.page*, %struct.page** %7, align 8
  %255 = call i32 @SetPageUptodate(%struct.page* %254)
  %256 = load %struct.page*, %struct.page** %7, align 8
  %257 = call i32 @ClearPageError(%struct.page* %256)
  %258 = load %struct.page*, %struct.page** %7, align 8
  %259 = call i32 @flush_dcache_page(%struct.page* %258)
  %260 = load %struct.page*, %struct.page** %7, align 8
  %261 = call i32 @kunmap(%struct.page* %260)
  %262 = load i32, i32* %11, align 4
  %263 = load i32*, i32** %9, align 8
  store i32 %262, i32* %263, align 4
  store i32 0, i32* %5, align 4
  br label %280

264:                                              ; preds = %162, %137
  %265 = load %struct.page*, %struct.page** %7, align 8
  %266 = call i32 @ClearPageUptodate(%struct.page* %265)
  %267 = load %struct.page*, %struct.page** %7, align 8
  %268 = call i32 @SetPageError(%struct.page* %267)
  %269 = load %struct.page*, %struct.page** %7, align 8
  %270 = call i32 @flush_dcache_page(%struct.page* %269)
  %271 = load %struct.page*, %struct.page** %7, align 8
  %272 = call i32 @kunmap(%struct.page* %271)
  %273 = load i32, i32* %17, align 4
  %274 = load %struct.inode*, %struct.inode** %15, align 8
  %275 = getelementptr inbounds %struct.inode, %struct.inode* %274, i32 0, i32 0
  %276 = load i32, i32* %275, align 4
  %277 = call i32 @ubifs_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %273, i32 %276)
  %278 = load i32, i32* @EINVAL, align 4
  %279 = sub nsw i32 0, %278
  store i32 %279, i32* %5, align 4
  br label %280

280:                                              ; preds = %264, %253
  %281 = load i32, i32* %5, align 4
  ret i32 %281
}

declare dso_local i32 @i_size_read(%struct.inode*) #1

declare dso_local i32 @dbg_gen(i8*, ...) #1

declare dso_local i8* @kmap(%struct.page*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @key_block(%struct.ubifs_info*, i32*) #1

declare dso_local i32 @ubifs_assert(i32) #1

declare dso_local i64 @le64_to_cpu(i32) #1

declare dso_local %struct.TYPE_8__* @ubifs_inode(%struct.inode*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @ubifs_decompress(i32*, i32, i8*, i32*, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @SetPageChecked(%struct.page*) #1

declare dso_local i32 @SetPageUptodate(%struct.page*) #1

declare dso_local i32 @ClearPageError(%struct.page*) #1

declare dso_local i32 @flush_dcache_page(%struct.page*) #1

declare dso_local i32 @kunmap(%struct.page*) #1

declare dso_local i32 @ClearPageUptodate(%struct.page*) #1

declare dso_local i32 @SetPageError(%struct.page*) #1

declare dso_local i32 @ubifs_err(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
