; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_inode.c__get_block_create_0.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_inode.c__get_block_create_0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }
%struct.inode = type { i64, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 }
%struct.buffer_head = type { i32 }
%struct.cpu_key = type { i32 }
%struct.item_head = type { i32 }

@path = common dso_local global %struct.TYPE_14__ zeroinitializer, align 4
@TYPE_ANY = common dso_local global i32 0, align 4
@POSITION_FOUND = common dso_local global i32 0, align 4
@IO_ERROR = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@GET_BLOCK_NO_HOLE = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@UNFM_P_SIZE = common dso_local global i32 0, align 4
@GET_BLOCK_READ_DIRECT = common dso_local global i32 0, align 4
@PAGE_CACHE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i64, %struct.buffer_head*, i32)* @_get_block_create_0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_get_block_create_0(%struct.inode* %0, i64 %1, %struct.buffer_head* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.buffer_head*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.cpu_key, align 4
  %11 = alloca %struct.buffer_head*, align 8
  %12 = alloca %struct.item_head*, align 8
  %13 = alloca %struct.item_head, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca i32*, align 8
  store %struct.inode* %0, %struct.inode** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.buffer_head* %2, %struct.buffer_head** %8, align 8
  store i32 %3, i32* %9, align 4
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @path, i32 0, i32 0), align 4
  %24 = call i32 @INITIALIZE_PATH(i32 %23)
  store i8* null, i8** %16, align 8
  store i32 0, i32* %20, align 4
  %25 = load %struct.inode*, %struct.inode** %6, align 8
  %26 = load i64, i64* %7, align 8
  %27 = trunc i64 %26 to i32
  %28 = load %struct.inode*, %struct.inode** %6, align 8
  %29 = getelementptr inbounds %struct.inode, %struct.inode* %28, i32 0, i32 1
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = mul nsw i32 %27, %32
  %34 = add nsw i32 %33, 1
  %35 = load i32, i32* @TYPE_ANY, align 4
  %36 = call i32 @make_cpu_key(%struct.cpu_key* %10, %struct.inode* %25, i32 %34, i32 %35, i32 3)
  br label %37

37:                                               ; preds = %203, %4
  %38 = load %struct.inode*, %struct.inode** %6, align 8
  %39 = getelementptr inbounds %struct.inode, %struct.inode* %38, i32 0, i32 1
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %39, align 8
  %41 = call i32 @search_for_position_by_key(%struct.TYPE_13__* %40, %struct.cpu_key* %10, %struct.TYPE_14__* @path)
  store i32 %41, i32* %19, align 4
  %42 = load i32, i32* %19, align 4
  %43 = load i32, i32* @POSITION_FOUND, align 4
  %44 = icmp ne i32 %42, %43
  br i1 %44, label %45, label %76

45:                                               ; preds = %37
  %46 = call i32 @pathrelse(%struct.TYPE_14__* @path)
  %47 = load i8*, i8** %16, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %49, label %54

49:                                               ; preds = %45
  %50 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %51 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @kunmap(i32 %52)
  br label %54

54:                                               ; preds = %49, %45
  %55 = load i32, i32* %19, align 4
  %56 = load i32, i32* @IO_ERROR, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %54
  %59 = load i32, i32* @EIO, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %5, align 4
  br label %329

61:                                               ; preds = %54
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* @GET_BLOCK_NO_HOLE, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %75

66:                                               ; preds = %61
  %67 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %68 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i64 @PageUptodate(i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %75, label %72

72:                                               ; preds = %66
  %73 = load i32, i32* @ENOENT, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %5, align 4
  br label %329

75:                                               ; preds = %66, %61
  store i32 0, i32* %5, align 4
  br label %329

76:                                               ; preds = %37
  %77 = call %struct.buffer_head* @get_last_bh(%struct.TYPE_14__* @path)
  store %struct.buffer_head* %77, %struct.buffer_head** %11, align 8
  %78 = call %struct.item_head* @get_ih(%struct.TYPE_14__* @path)
  store %struct.item_head* %78, %struct.item_head** %12, align 8
  %79 = load %struct.item_head*, %struct.item_head** %12, align 8
  %80 = call i64 @is_indirect_le_ih(%struct.item_head* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %136

82:                                               ; preds = %76
  %83 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %84 = load %struct.item_head*, %struct.item_head** %12, align 8
  %85 = call i64 @B_I_PITEM(%struct.buffer_head* %83, %struct.item_head* %84)
  %86 = inttoptr i64 %85 to i32*
  store i32* %86, i32** %22, align 8
  %87 = load i32*, i32** %22, align 8
  %88 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @path, i32 0, i32 0), align 4
  %89 = call i64 @get_block_num(i32* %87, i32 %88)
  store i64 %89, i64* %15, align 8
  store i32 0, i32* %18, align 4
  %90 = load i64, i64* %15, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %110

92:                                               ; preds = %82
  %93 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %94 = load %struct.inode*, %struct.inode** %6, align 8
  %95 = getelementptr inbounds %struct.inode, %struct.inode* %94, i32 0, i32 1
  %96 = load %struct.TYPE_13__*, %struct.TYPE_13__** %95, align 8
  %97 = load i64, i64* %15, align 8
  %98 = call i32 @map_bh(%struct.buffer_head* %93, %struct.TYPE_13__* %96, i64 %97)
  %99 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @path, i32 0, i32 0), align 4
  %100 = load %struct.item_head*, %struct.item_head** %12, align 8
  %101 = call i32 @ih_item_len(%struct.item_head* %100)
  %102 = load i32, i32* @UNFM_P_SIZE, align 4
  %103 = sdiv i32 %101, %102
  %104 = sub nsw i32 %103, 1
  %105 = icmp eq i32 %99, %104
  br i1 %105, label %106, label %109

106:                                              ; preds = %92
  %107 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %108 = call i32 @set_buffer_boundary(%struct.buffer_head* %107)
  br label %109

109:                                              ; preds = %106, %92
  br label %125

110:                                              ; preds = %82
  %111 = load i32, i32* %9, align 4
  %112 = load i32, i32* @GET_BLOCK_NO_HOLE, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %124

115:                                              ; preds = %110
  %116 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %117 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = call i64 @PageUptodate(i32 %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %124, label %121

121:                                              ; preds = %115
  %122 = load i32, i32* @ENOENT, align 4
  %123 = sub nsw i32 0, %122
  store i32 %123, i32* %18, align 4
  br label %124

124:                                              ; preds = %121, %115, %110
  br label %125

125:                                              ; preds = %124, %109
  %126 = call i32 @pathrelse(%struct.TYPE_14__* @path)
  %127 = load i8*, i8** %16, align 8
  %128 = icmp ne i8* %127, null
  br i1 %128, label %129, label %134

129:                                              ; preds = %125
  %130 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %131 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @kunmap(i32 %132)
  br label %134

134:                                              ; preds = %129, %125
  %135 = load i32, i32* %18, align 4
  store i32 %135, i32* %5, align 4
  br label %329

136:                                              ; preds = %76
  %137 = load i32, i32* %9, align 4
  %138 = load i32, i32* @GET_BLOCK_READ_DIRECT, align 4
  %139 = and i32 %137, %138
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %153, label %141

141:                                              ; preds = %136
  %142 = call i32 @pathrelse(%struct.TYPE_14__* @path)
  %143 = load i8*, i8** %16, align 8
  %144 = icmp ne i8* %143, null
  br i1 %144, label %145, label %150

145:                                              ; preds = %141
  %146 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %147 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @kunmap(i32 %148)
  br label %150

150:                                              ; preds = %145, %141
  %151 = load i32, i32* @ENOENT, align 4
  %152 = sub nsw i32 0, %151
  store i32 %152, i32* %5, align 4
  br label %329

153:                                              ; preds = %136
  %154 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %155 = call i64 @buffer_uptodate(%struct.buffer_head* %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %153
  br label %313

158:                                              ; preds = %153
  %159 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %160 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %169

163:                                              ; preds = %158
  %164 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %165 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = call i64 @PageUptodate(i32 %166)
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %172

169:                                              ; preds = %163, %158
  %170 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %171 = call i32 @set_buffer_uptodate(%struct.buffer_head* %170)
  br label %313

172:                                              ; preds = %163
  br label %173

173:                                              ; preds = %172
  %174 = call i32 @cpu_key_k_offset(%struct.cpu_key* %10)
  %175 = sub nsw i32 %174, 1
  %176 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %177 = sub nsw i32 %176, 1
  %178 = and i32 %175, %177
  %179 = sext i32 %178 to i64
  store i64 %179, i64* %21, align 8
  %180 = load %struct.inode*, %struct.inode** %6, align 8
  %181 = getelementptr inbounds %struct.inode, %struct.inode* %180, i32 0, i32 1
  %182 = load %struct.TYPE_13__*, %struct.TYPE_13__** %181, align 8
  %183 = call i32 @get_generation(%struct.TYPE_13__* %182)
  store i32 %183, i32* %14, align 4
  %184 = load %struct.item_head*, %struct.item_head** %12, align 8
  %185 = call i32 @copy_item_head(%struct.item_head* %13, %struct.item_head* %184)
  %186 = load i8*, i8** %16, align 8
  %187 = icmp ne i8* %186, null
  br i1 %187, label %205, label %188

188:                                              ; preds = %173
  %189 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %190 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  %192 = call i64 @kmap(i32 %191)
  %193 = inttoptr i64 %192 to i8*
  store i8* %193, i8** %16, align 8
  %194 = load i32, i32* %14, align 4
  %195 = load %struct.inode*, %struct.inode** %6, align 8
  %196 = getelementptr inbounds %struct.inode, %struct.inode* %195, i32 0, i32 1
  %197 = load %struct.TYPE_13__*, %struct.TYPE_13__** %196, align 8
  %198 = call i64 @fs_changed(i32 %194, %struct.TYPE_13__* %197)
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %204

200:                                              ; preds = %188
  %201 = call i64 @item_moved(%struct.item_head* %13, %struct.TYPE_14__* @path)
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %204

203:                                              ; preds = %200
  br label %37

204:                                              ; preds = %200, %188
  br label %205

205:                                              ; preds = %204, %173
  %206 = load i64, i64* %21, align 8
  %207 = load i8*, i8** %16, align 8
  %208 = getelementptr inbounds i8, i8* %207, i64 %206
  store i8* %208, i8** %16, align 8
  %209 = load i8*, i8** %16, align 8
  %210 = load %struct.inode*, %struct.inode** %6, align 8
  %211 = getelementptr inbounds %struct.inode, %struct.inode* %210, i32 0, i32 1
  %212 = load %struct.TYPE_13__*, %struct.TYPE_13__** %211, align 8
  %213 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 4
  %215 = call i32 @memset(i8* %209, i32 0, i32 %214)
  br label %216

216:                                              ; preds = %303, %205
  %217 = load %struct.item_head*, %struct.item_head** %12, align 8
  %218 = call i32 @is_direct_le_ih(%struct.item_head* %217)
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %222, label %220

220:                                              ; preds = %216
  %221 = call i32 (...) @BUG()
  br label %222

222:                                              ; preds = %220, %216
  %223 = load %struct.item_head*, %struct.item_head** %12, align 8
  %224 = call i32 @le_ih_k_offset(%struct.item_head* %223)
  %225 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @path, i32 0, i32 0), align 4
  %226 = add nsw i32 %224, %225
  %227 = sext i32 %226 to i64
  %228 = load %struct.inode*, %struct.inode** %6, align 8
  %229 = getelementptr inbounds %struct.inode, %struct.inode* %228, i32 0, i32 0
  %230 = load i64, i64* %229, align 8
  %231 = icmp sgt i64 %227, %230
  br i1 %231, label %232, label %233

232:                                              ; preds = %222
  br label %304

233:                                              ; preds = %222
  %234 = load %struct.item_head*, %struct.item_head** %12, align 8
  %235 = call i32 @le_ih_k_offset(%struct.item_head* %234)
  %236 = sub nsw i32 %235, 1
  %237 = load %struct.item_head*, %struct.item_head** %12, align 8
  %238 = call i32 @ih_item_len(%struct.item_head* %237)
  %239 = add nsw i32 %236, %238
  %240 = sext i32 %239 to i64
  %241 = load %struct.inode*, %struct.inode** %6, align 8
  %242 = getelementptr inbounds %struct.inode, %struct.inode* %241, i32 0, i32 0
  %243 = load i64, i64* %242, align 8
  %244 = icmp sgt i64 %240, %243
  br i1 %244, label %245, label %258

245:                                              ; preds = %233
  %246 = load %struct.inode*, %struct.inode** %6, align 8
  %247 = getelementptr inbounds %struct.inode, %struct.inode* %246, i32 0, i32 0
  %248 = load i64, i64* %247, align 8
  %249 = load %struct.item_head*, %struct.item_head** %12, align 8
  %250 = call i32 @le_ih_k_offset(%struct.item_head* %249)
  %251 = sub nsw i32 %250, 1
  %252 = sext i32 %251 to i64
  %253 = sub nsw i64 %248, %252
  %254 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @path, i32 0, i32 0), align 4
  %255 = sext i32 %254 to i64
  %256 = sub nsw i64 %253, %255
  %257 = trunc i64 %256 to i32
  store i32 %257, i32* %17, align 4
  store i32 1, i32* %20, align 4
  br label %263

258:                                              ; preds = %233
  %259 = load %struct.item_head*, %struct.item_head** %12, align 8
  %260 = call i32 @ih_item_len(%struct.item_head* %259)
  %261 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @path, i32 0, i32 0), align 4
  %262 = sub nsw i32 %260, %261
  store i32 %262, i32* %17, align 4
  br label %263

263:                                              ; preds = %258, %245
  %264 = load i8*, i8** %16, align 8
  %265 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %266 = load %struct.item_head*, %struct.item_head** %12, align 8
  %267 = call i64 @B_I_PITEM(%struct.buffer_head* %265, %struct.item_head* %266)
  %268 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @path, i32 0, i32 0), align 4
  %269 = sext i32 %268 to i64
  %270 = add nsw i64 %267, %269
  %271 = load i32, i32* %17, align 4
  %272 = call i32 @memcpy(i8* %264, i64 %270, i32 %271)
  %273 = load i32, i32* %20, align 4
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %275, label %276

275:                                              ; preds = %263
  br label %304

276:                                              ; preds = %263
  %277 = load i32, i32* %17, align 4
  %278 = load i8*, i8** %16, align 8
  %279 = sext i32 %277 to i64
  %280 = getelementptr inbounds i8, i8* %278, i64 %279
  store i8* %280, i8** %16, align 8
  %281 = call i32 @PATH_LAST_POSITION(%struct.TYPE_14__* @path)
  %282 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %283 = call i32 @B_NR_ITEMS(%struct.buffer_head* %282)
  %284 = sub nsw i32 %283, 1
  %285 = icmp ne i32 %281, %284
  br i1 %285, label %286, label %287

286:                                              ; preds = %276
  br label %304

287:                                              ; preds = %276
  %288 = call i32 @cpu_key_k_offset(%struct.cpu_key* %10)
  %289 = load i32, i32* %17, align 4
  %290 = add nsw i32 %288, %289
  %291 = call i32 @set_cpu_key_k_offset(%struct.cpu_key* %10, i32 %290)
  %292 = load %struct.inode*, %struct.inode** %6, align 8
  %293 = getelementptr inbounds %struct.inode, %struct.inode* %292, i32 0, i32 1
  %294 = load %struct.TYPE_13__*, %struct.TYPE_13__** %293, align 8
  %295 = call i32 @search_for_position_by_key(%struct.TYPE_13__* %294, %struct.cpu_key* %10, %struct.TYPE_14__* @path)
  store i32 %295, i32* %19, align 4
  %296 = load i32, i32* %19, align 4
  %297 = load i32, i32* @POSITION_FOUND, align 4
  %298 = icmp ne i32 %296, %297
  br i1 %298, label %299, label %300

299:                                              ; preds = %287
  br label %304

300:                                              ; preds = %287
  %301 = call %struct.buffer_head* @get_last_bh(%struct.TYPE_14__* @path)
  store %struct.buffer_head* %301, %struct.buffer_head** %11, align 8
  %302 = call %struct.item_head* @get_ih(%struct.TYPE_14__* @path)
  store %struct.item_head* %302, %struct.item_head** %12, align 8
  br label %303

303:                                              ; preds = %300
  br i1 true, label %216, label %304

304:                                              ; preds = %303, %299, %286, %275, %232
  %305 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %306 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %305, i32 0, i32 0
  %307 = load i32, i32* %306, align 4
  %308 = call i32 @flush_dcache_page(i32 %307)
  %309 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %310 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %309, i32 0, i32 0
  %311 = load i32, i32* %310, align 4
  %312 = call i32 @kunmap(i32 %311)
  br label %313

313:                                              ; preds = %304, %169, %157
  %314 = call i32 @pathrelse(%struct.TYPE_14__* @path)
  %315 = load i32, i32* %19, align 4
  %316 = load i32, i32* @IO_ERROR, align 4
  %317 = icmp eq i32 %315, %316
  br i1 %317, label %318, label %321

318:                                              ; preds = %313
  %319 = load i32, i32* @EIO, align 4
  %320 = sub nsw i32 0, %319
  store i32 %320, i32* %5, align 4
  br label %329

321:                                              ; preds = %313
  %322 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %323 = load %struct.inode*, %struct.inode** %6, align 8
  %324 = getelementptr inbounds %struct.inode, %struct.inode* %323, i32 0, i32 1
  %325 = load %struct.TYPE_13__*, %struct.TYPE_13__** %324, align 8
  %326 = call i32 @map_bh(%struct.buffer_head* %322, %struct.TYPE_13__* %325, i64 0)
  %327 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %328 = call i32 @set_buffer_uptodate(%struct.buffer_head* %327)
  store i32 0, i32* %5, align 4
  br label %329

329:                                              ; preds = %321, %318, %150, %134, %75, %72, %58
  %330 = load i32, i32* %5, align 4
  ret i32 %330
}

declare dso_local i32 @INITIALIZE_PATH(i32) #1

declare dso_local i32 @make_cpu_key(%struct.cpu_key*, %struct.inode*, i32, i32, i32) #1

declare dso_local i32 @search_for_position_by_key(%struct.TYPE_13__*, %struct.cpu_key*, %struct.TYPE_14__*) #1

declare dso_local i32 @pathrelse(%struct.TYPE_14__*) #1

declare dso_local i32 @kunmap(i32) #1

declare dso_local i64 @PageUptodate(i32) #1

declare dso_local %struct.buffer_head* @get_last_bh(%struct.TYPE_14__*) #1

declare dso_local %struct.item_head* @get_ih(%struct.TYPE_14__*) #1

declare dso_local i64 @is_indirect_le_ih(%struct.item_head*) #1

declare dso_local i64 @B_I_PITEM(%struct.buffer_head*, %struct.item_head*) #1

declare dso_local i64 @get_block_num(i32*, i32) #1

declare dso_local i32 @map_bh(%struct.buffer_head*, %struct.TYPE_13__*, i64) #1

declare dso_local i32 @ih_item_len(%struct.item_head*) #1

declare dso_local i32 @set_buffer_boundary(%struct.buffer_head*) #1

declare dso_local i64 @buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i32 @set_buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i32 @cpu_key_k_offset(%struct.cpu_key*) #1

declare dso_local i32 @get_generation(%struct.TYPE_13__*) #1

declare dso_local i32 @copy_item_head(%struct.item_head*, %struct.item_head*) #1

declare dso_local i64 @kmap(i32) #1

declare dso_local i64 @fs_changed(i32, %struct.TYPE_13__*) #1

declare dso_local i64 @item_moved(%struct.item_head*, %struct.TYPE_14__*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @is_direct_le_ih(%struct.item_head*) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @le_ih_k_offset(%struct.item_head*) #1

declare dso_local i32 @memcpy(i8*, i64, i32) #1

declare dso_local i32 @PATH_LAST_POSITION(%struct.TYPE_14__*) #1

declare dso_local i32 @B_NR_ITEMS(%struct.buffer_head*) #1

declare dso_local i32 @set_cpu_key_k_offset(%struct.cpu_key*, i32) #1

declare dso_local i32 @flush_dcache_page(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
