; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_fix_node.c_get_num_ver.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_fix_node.c_get_num_ver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tree_balance = type { i64*, i32, i32, %struct.virtual_node* }
%struct.virtual_node = type { i32, %struct.virtual_item* }
%struct.virtual_item = type { i32, i64, i32 }

@M_INSERT = common dso_local global i32 0, align 4
@M_PASTE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"vs-8100: insert_size < 0 in overflow\00", align 1
@KEY_SIZE = common dso_local global i32 0, align 4
@DC_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"vs-8105: too many nodes are needed\00", align 1
@.str.2 = private unnamed_addr constant [64 x i8] c"vs-8110: direct item length is %d. It can not be longer than %d\00", align 1
@IH_SIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"vs-8111\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"split_item_position is out of range\00", align 1
@TYPE_DIRENTRY = common dso_local global i64 0, align 8
@TYPE_INDIRECT = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [8 x i8] c"vs-8115\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"not directory or indirect item\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.tree_balance*, i32, i32, i32, i32, i32, i16*, i32)* @get_num_ver to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_num_ver(i32 %0, %struct.tree_balance* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i16* %7, i32 %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.tree_balance*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i16*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.virtual_node*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca [2 x i32], align 4
  %33 = alloca %struct.virtual_item*, align 8
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  %42 = alloca i32, align 4
  %43 = alloca i32, align 4
  store i32 %0, i32* %11, align 4
  store %struct.tree_balance* %1, %struct.tree_balance** %12, align 8
  store i32 %2, i32* %13, align 4
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i16* %7, i16** %18, align 8
  store i32 %8, i32* %19, align 4
  %44 = load %struct.tree_balance*, %struct.tree_balance** %12, align 8
  %45 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %44, i32 0, i32 3
  %46 = load %struct.virtual_node*, %struct.virtual_node** %45, align 8
  store %struct.virtual_node* %46, %struct.virtual_node** %23, align 8
  %47 = getelementptr inbounds [2 x i32], [2 x i32]* %32, i64 0, i64 0
  store i32 -1, i32* %47, align 4
  %48 = getelementptr inbounds [2 x i32], [2 x i32]* %32, i64 0, i64 1
  store i32 -1, i32* %48, align 4
  %49 = load %struct.tree_balance*, %struct.tree_balance** %12, align 8
  %50 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %49, i32 0, i32 0
  %51 = load i64*, i64** %50, align 8
  %52 = load i32, i32* %13, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i64, i64* %51, i64 %53
  %55 = load i64, i64* %54, align 8
  %56 = icmp slt i64 %55, 0
  br i1 %56, label %67, label %57

57:                                               ; preds = %9
  %58 = load i32, i32* %11, align 4
  %59 = load i32, i32* @M_INSERT, align 4
  %60 = icmp ne i32 %58, %59
  br i1 %60, label %61, label %65

61:                                               ; preds = %57
  %62 = load i32, i32* %11, align 4
  %63 = load i32, i32* @M_PASTE, align 4
  %64 = icmp ne i32 %62, %63
  br label %65

65:                                               ; preds = %61, %57
  %66 = phi i1 [ false, %57 ], [ %64, %61 ]
  br label %67

67:                                               ; preds = %65, %9
  %68 = phi i1 [ true, %9 ], [ %66, %65 ]
  %69 = zext i1 %68 to i32
  %70 = call i32 (i32, i8*, ...) @RFALSE(i32 %69, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %71 = load %struct.tree_balance*, %struct.tree_balance** %12, align 8
  %72 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %13, align 4
  %75 = call i32 @PATH_H_PBUFFER(i32 %73, i32 %74)
  %76 = call i32 @MAX_CHILD_SIZE(i32 %75)
  store i32 %76, i32* %25, align 4
  %77 = load i16*, i16** %18, align 8
  %78 = getelementptr inbounds i16, i16* %77, i64 3
  store i16 -1, i16* %78, align 2
  %79 = load i16*, i16** %18, align 8
  %80 = getelementptr inbounds i16, i16* %79, i64 4
  store i16 -1, i16* %80, align 2
  %81 = load i32, i32* %13, align 4
  %82 = icmp sgt i32 %81, 0
  br i1 %82, label %83, label %102

83:                                               ; preds = %67
  %84 = load i32, i32* %16, align 4
  %85 = load i32, i32* %14, align 4
  %86 = sub nsw i32 %84, %85
  %87 = load i32, i32* @KEY_SIZE, align 4
  %88 = load i32, i32* @DC_SIZE, align 4
  %89 = add nsw i32 %87, %88
  %90 = mul nsw i32 %86, %89
  %91 = load i32, i32* @DC_SIZE, align 4
  %92 = add nsw i32 %90, %91
  store i32 %92, i32* %20, align 4
  %93 = load i32, i32* %20, align 4
  %94 = load i32, i32* %25, align 4
  %95 = icmp eq i32 %93, %94
  br i1 %95, label %96, label %97

96:                                               ; preds = %83
  store i32 1, i32* %10, align 4
  br label %427

97:                                               ; preds = %83
  %98 = load i32, i32* %20, align 4
  %99 = load i32, i32* %25, align 4
  %100 = sdiv i32 %98, %99
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %10, align 4
  br label %427

102:                                              ; preds = %67
  store i32 1, i32* %27, align 4
  store i32 0, i32* %24, align 4
  %103 = load i32, i32* %25, align 4
  store i32 %103, i32* %21, align 4
  %104 = load i32, i32* %14, align 4
  store i32 %104, i32* %28, align 4
  %105 = load i32, i32* %15, align 4
  %106 = icmp ne i32 %105, -1
  br i1 %106, label %107, label %109

107:                                              ; preds = %102
  %108 = load i32, i32* %15, align 4
  br label %110

109:                                              ; preds = %102
  br label %110

110:                                              ; preds = %109, %107
  %111 = phi i32 [ %108, %107 ], [ 0, %109 ]
  store i32 %111, i32* %30, align 4
  %112 = load %struct.virtual_node*, %struct.virtual_node** %23, align 8
  %113 = getelementptr inbounds %struct.virtual_node, %struct.virtual_node* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* %16, align 4
  %116 = sub nsw i32 %114, %115
  %117 = sub nsw i32 %116, 1
  store i32 %117, i32* %29, align 4
  %118 = load i32, i32* %17, align 4
  %119 = icmp ne i32 %118, -1
  br i1 %119, label %120, label %122

120:                                              ; preds = %110
  %121 = load i32, i32* %17, align 4
  br label %123

122:                                              ; preds = %110
  br label %123

123:                                              ; preds = %122, %120
  %124 = phi i32 [ %121, %120 ], [ 0, %122 ]
  store i32 %124, i32* %31, align 4
  %125 = load i32, i32* %28, align 4
  store i32 %125, i32* %20, align 4
  br label %126

126:                                              ; preds = %257, %123
  %127 = load i32, i32* %20, align 4
  %128 = load i32, i32* %29, align 4
  %129 = icmp sle i32 %127, %128
  br i1 %129, label %130, label %260

130:                                              ; preds = %126
  %131 = load %struct.virtual_node*, %struct.virtual_node** %23, align 8
  %132 = getelementptr inbounds %struct.virtual_node, %struct.virtual_node* %131, i32 0, i32 1
  %133 = load %struct.virtual_item*, %struct.virtual_item** %132, align 8
  %134 = load i32, i32* %20, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.virtual_item, %struct.virtual_item* %133, i64 %135
  store %struct.virtual_item* %136, %struct.virtual_item** %33, align 8
  %137 = load i32, i32* %20, align 4
  %138 = load i32, i32* %29, align 4
  %139 = icmp eq i32 %137, %138
  br i1 %139, label %140, label %142

140:                                              ; preds = %130
  %141 = load i32, i32* %31, align 4
  br label %143

142:                                              ; preds = %130
  br label %143

143:                                              ; preds = %142, %140
  %144 = phi i32 [ %141, %140 ], [ 0, %142 ]
  store i32 %144, i32* %34, align 4
  %145 = load i32, i32* %27, align 4
  %146 = icmp sgt i32 %145, 3
  %147 = zext i1 %146 to i32
  %148 = call i32 (i32, i8*, ...) @RFALSE(i32 %147, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %149 = load %struct.virtual_item*, %struct.virtual_item** %33, align 8
  %150 = getelementptr inbounds %struct.virtual_item, %struct.virtual_item* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  store i32 %151, i32* %26, align 4
  %152 = load %struct.virtual_item*, %struct.virtual_item** %33, align 8
  %153 = load i32, i32* %30, align 4
  %154 = call i64 @op_part_size(%struct.virtual_item* %152, i32 0, i32 %153)
  %155 = load i32, i32* %26, align 4
  %156 = sext i32 %155 to i64
  %157 = sub nsw i64 %156, %154
  %158 = trunc i64 %157 to i32
  store i32 %158, i32* %26, align 4
  %159 = load %struct.virtual_item*, %struct.virtual_item** %33, align 8
  %160 = load i32, i32* %34, align 4
  %161 = call i64 @op_part_size(%struct.virtual_item* %159, i32 1, i32 %160)
  %162 = load i32, i32* %26, align 4
  %163 = sext i32 %162 to i64
  %164 = sub nsw i64 %163, %161
  %165 = trunc i64 %164 to i32
  store i32 %165, i32* %26, align 4
  %166 = load i32, i32* %24, align 4
  %167 = load i32, i32* %26, align 4
  %168 = add nsw i32 %166, %167
  %169 = load i32, i32* %25, align 4
  %170 = icmp sle i32 %168, %169
  br i1 %170, label %171, label %182

171:                                              ; preds = %143
  %172 = load i16*, i16** %18, align 8
  %173 = load i32, i32* %27, align 4
  %174 = sub nsw i32 %173, 1
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i16, i16* %172, i64 %175
  %177 = load i16, i16* %176, align 2
  %178 = add i16 %177, 1
  store i16 %178, i16* %176, align 2
  %179 = load i32, i32* %26, align 4
  %180 = load i32, i32* %24, align 4
  %181 = add nsw i32 %180, %179
  store i32 %181, i32* %24, align 4
  store i32 0, i32* %30, align 4
  br label %257

182:                                              ; preds = %143
  %183 = load i32, i32* %26, align 4
  %184 = load i32, i32* %25, align 4
  %185 = icmp sgt i32 %183, %184
  br i1 %185, label %186, label %194

186:                                              ; preds = %182
  %187 = load %struct.virtual_item*, %struct.virtual_item** %33, align 8
  %188 = getelementptr inbounds %struct.virtual_item, %struct.virtual_item* %187, i32 0, i32 2
  %189 = load i32, i32* %188, align 8
  %190 = call i32 @is_direct_le_ih(i32 %189)
  %191 = load i32, i32* %26, align 4
  %192 = load i32, i32* %25, align 4
  %193 = call i32 (i32, i8*, ...) @RFALSE(i32 %190, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.2, i64 0, i64 0), i32 %191, i32 %192)
  store i32 1, i32* %19, align 4
  br label %194

194:                                              ; preds = %186, %182
  %195 = load i32, i32* %19, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %202, label %197

197:                                              ; preds = %194
  %198 = load i32, i32* %27, align 4
  %199 = add nsw i32 %198, 1
  store i32 %199, i32* %27, align 4
  %200 = load i32, i32* %20, align 4
  %201 = add nsw i32 %200, -1
  store i32 %201, i32* %20, align 4
  store i32 0, i32* %24, align 4
  br label %257

202:                                              ; preds = %194
  %203 = load i32, i32* %25, align 4
  %204 = load i32, i32* %24, align 4
  %205 = sub nsw i32 %203, %204
  %206 = load i32, i32* @IH_SIZE, align 4
  %207 = sub nsw i32 %205, %206
  store i32 %207, i32* %35, align 4
  %208 = load %struct.virtual_item*, %struct.virtual_item** %33, align 8
  %209 = load i32, i32* %35, align 4
  %210 = load i32, i32* %30, align 4
  %211 = load i32, i32* %34, align 4
  %212 = call i32 @op_check_left(%struct.virtual_item* %208, i32 %209, i32 %210, i32 %211)
  store i32 %212, i32* %22, align 4
  %213 = load i32, i32* %22, align 4
  %214 = icmp eq i32 %213, -1
  br i1 %214, label %215, label %220

215:                                              ; preds = %202
  %216 = load i32, i32* %27, align 4
  %217 = add nsw i32 %216, 1
  store i32 %217, i32* %27, align 4
  %218 = load i32, i32* %20, align 4
  %219 = add nsw i32 %218, -1
  store i32 %219, i32* %20, align 4
  store i32 0, i32* %24, align 4
  br label %257

220:                                              ; preds = %202
  %221 = load i32, i32* %22, align 4
  %222 = load i32, i32* %30, align 4
  %223 = add nsw i32 %222, %221
  store i32 %223, i32* %30, align 4
  %224 = load i32, i32* %22, align 4
  %225 = trunc i32 %224 to i16
  %226 = load i16*, i16** %18, align 8
  %227 = load i32, i32* %27, align 4
  %228 = sub nsw i32 %227, 1
  %229 = add nsw i32 %228, 3
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds i16, i16* %226, i64 %230
  store i16 %225, i16* %231, align 2
  %232 = load i32, i32* %27, align 4
  %233 = icmp sgt i32 %232, 2
  br i1 %233, label %234, label %239

234:                                              ; preds = %220
  %235 = load %struct.tree_balance*, %struct.tree_balance** %12, align 8
  %236 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %235, i32 0, i32 1
  %237 = load i32, i32* %236, align 8
  %238 = call i32 @reiserfs_warning(i32 %237, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0))
  br label %239

239:                                              ; preds = %234, %220
  %240 = load i16*, i16** %18, align 8
  %241 = load i32, i32* %27, align 4
  %242 = sub nsw i32 %241, 1
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds i16, i16* %240, i64 %243
  %245 = load i16, i16* %244, align 2
  %246 = add i16 %245, 1
  store i16 %246, i16* %244, align 2
  %247 = load i32, i32* %20, align 4
  %248 = load i32, i32* %27, align 4
  %249 = sub nsw i32 %248, 1
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds [2 x i32], [2 x i32]* %32, i64 0, i64 %250
  store i32 %247, i32* %251, align 4
  %252 = load i32, i32* %27, align 4
  %253 = add nsw i32 %252, 1
  store i32 %253, i32* %27, align 4
  %254 = load i32, i32* %20, align 4
  store i32 %254, i32* %28, align 4
  %255 = load i32, i32* %20, align 4
  %256 = add nsw i32 %255, -1
  store i32 %256, i32* %20, align 4
  store i32 0, i32* %24, align 4
  br label %257

257:                                              ; preds = %239, %215, %197, %171
  %258 = load i32, i32* %20, align 4
  %259 = add nsw i32 %258, 1
  store i32 %259, i32* %20, align 4
  br label %126

260:                                              ; preds = %126
  %261 = load i16*, i16** %18, align 8
  %262 = getelementptr inbounds i16, i16* %261, i64 4
  %263 = load i16, i16* %262, align 2
  %264 = sext i16 %263 to i32
  %265 = icmp sgt i32 %264, 0
  br i1 %265, label %266, label %353

266:                                              ; preds = %260
  %267 = getelementptr inbounds [2 x i32], [2 x i32]* %32, i64 0, i64 1
  %268 = load i32, i32* %267, align 4
  store i32 %268, i32* %36, align 4
  %269 = load i32, i32* %14, align 4
  %270 = load i32, i32* %36, align 4
  %271 = icmp eq i32 %269, %270
  br i1 %271, label %272, label %277

272:                                              ; preds = %266
  %273 = load i32, i32* %15, align 4
  %274 = icmp ne i32 %273, -1
  br i1 %274, label %275, label %277

275:                                              ; preds = %272
  %276 = load i32, i32* %15, align 4
  br label %278

277:                                              ; preds = %272, %266
  br label %278

278:                                              ; preds = %277, %275
  %279 = phi i32 [ %276, %275 ], [ 0, %277 ]
  store i32 %279, i32* %38, align 4
  %280 = load i32, i32* %29, align 4
  %281 = load i32, i32* %36, align 4
  %282 = icmp eq i32 %280, %281
  br i1 %282, label %283, label %288

283:                                              ; preds = %278
  %284 = load i32, i32* %31, align 4
  %285 = icmp ne i32 %284, -1
  br i1 %285, label %286, label %288

286:                                              ; preds = %283
  %287 = load i32, i32* %31, align 4
  br label %289

288:                                              ; preds = %283, %278
  br label %289

289:                                              ; preds = %288, %286
  %290 = phi i32 [ %287, %286 ], [ 0, %288 ]
  store i32 %290, i32* %37, align 4
  %291 = getelementptr inbounds [2 x i32], [2 x i32]* %32, i64 0, i64 0
  %292 = load i32, i32* %291, align 4
  %293 = getelementptr inbounds [2 x i32], [2 x i32]* %32, i64 0, i64 1
  %294 = load i32, i32* %293, align 4
  %295 = icmp eq i32 %292, %294
  br i1 %295, label %296, label %301

296:                                              ; preds = %289
  %297 = load i16*, i16** %18, align 8
  %298 = getelementptr inbounds i16, i16* %297, i64 3
  %299 = load i16, i16* %298, align 2
  %300 = sext i16 %299 to i32
  br label %302

301:                                              ; preds = %289
  br label %302

302:                                              ; preds = %301, %296
  %303 = phi i32 [ %300, %296 ], [ 0, %301 ]
  store i32 %303, i32* %39, align 4
  %304 = load %struct.virtual_node*, %struct.virtual_node** %23, align 8
  %305 = getelementptr inbounds %struct.virtual_node, %struct.virtual_node* %304, i32 0, i32 1
  %306 = load %struct.virtual_item*, %struct.virtual_item** %305, align 8
  %307 = load i32, i32* %36, align 4
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds %struct.virtual_item, %struct.virtual_item* %306, i64 %308
  %310 = call signext i16 @op_unit_num(%struct.virtual_item* %309)
  %311 = sext i16 %310 to i32
  %312 = load i16*, i16** %18, align 8
  %313 = getelementptr inbounds i16, i16* %312, i64 4
  %314 = load i16, i16* %313, align 2
  %315 = sext i16 %314 to i32
  %316 = sub nsw i32 %311, %315
  %317 = load i32, i32* %37, align 4
  %318 = sub nsw i32 %316, %317
  %319 = load i32, i32* %38, align 4
  %320 = sub nsw i32 %318, %319
  %321 = load i32, i32* %39, align 4
  %322 = sub nsw i32 %320, %321
  %323 = trunc i32 %322 to i16
  %324 = load i16*, i16** %18, align 8
  %325 = getelementptr inbounds i16, i16* %324, i64 4
  store i16 %323, i16* %325, align 2
  %326 = load %struct.virtual_node*, %struct.virtual_node** %23, align 8
  %327 = getelementptr inbounds %struct.virtual_node, %struct.virtual_node* %326, i32 0, i32 1
  %328 = load %struct.virtual_item*, %struct.virtual_item** %327, align 8
  %329 = load i32, i32* %36, align 4
  %330 = sext i32 %329 to i64
  %331 = getelementptr inbounds %struct.virtual_item, %struct.virtual_item* %328, i64 %330
  %332 = getelementptr inbounds %struct.virtual_item, %struct.virtual_item* %331, i32 0, i32 1
  %333 = load i64, i64* %332, align 8
  %334 = load i64, i64* @TYPE_DIRENTRY, align 8
  %335 = icmp ne i64 %333, %334
  br i1 %335, label %336, label %352

336:                                              ; preds = %302
  %337 = load %struct.virtual_node*, %struct.virtual_node** %23, align 8
  %338 = getelementptr inbounds %struct.virtual_node, %struct.virtual_node* %337, i32 0, i32 1
  %339 = load %struct.virtual_item*, %struct.virtual_item** %338, align 8
  %340 = load i32, i32* %36, align 4
  %341 = sext i32 %340 to i64
  %342 = getelementptr inbounds %struct.virtual_item, %struct.virtual_item* %339, i64 %341
  %343 = getelementptr inbounds %struct.virtual_item, %struct.virtual_item* %342, i32 0, i32 1
  %344 = load i64, i64* %343, align 8
  %345 = load i64, i64* @TYPE_INDIRECT, align 8
  %346 = icmp ne i64 %344, %345
  br i1 %346, label %347, label %352

347:                                              ; preds = %336
  %348 = load %struct.tree_balance*, %struct.tree_balance** %12, align 8
  %349 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %348, i32 0, i32 1
  %350 = load i32, i32* %349, align 8
  %351 = call i32 @reiserfs_warning(i32 %350, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0))
  br label %352

352:                                              ; preds = %347, %336, %302
  br label %353

353:                                              ; preds = %352, %260
  %354 = load i16*, i16** %18, align 8
  %355 = getelementptr inbounds i16, i16* %354, i64 3
  %356 = load i16, i16* %355, align 2
  %357 = sext i16 %356 to i32
  %358 = icmp sgt i32 %357, 0
  br i1 %358, label %359, label %425

359:                                              ; preds = %353
  %360 = getelementptr inbounds [2 x i32], [2 x i32]* %32, i64 0, i64 0
  %361 = load i32, i32* %360, align 4
  store i32 %361, i32* %40, align 4
  %362 = load i32, i32* %14, align 4
  %363 = load i32, i32* %40, align 4
  %364 = icmp eq i32 %362, %363
  br i1 %364, label %365, label %370

365:                                              ; preds = %359
  %366 = load i32, i32* %15, align 4
  %367 = icmp ne i32 %366, -1
  br i1 %367, label %368, label %370

368:                                              ; preds = %365
  %369 = load i32, i32* %15, align 4
  br label %371

370:                                              ; preds = %365, %359
  br label %371

371:                                              ; preds = %370, %368
  %372 = phi i32 [ %369, %368 ], [ 0, %370 ]
  store i32 %372, i32* %42, align 4
  %373 = load i32, i32* %29, align 4
  %374 = load i32, i32* %40, align 4
  %375 = icmp eq i32 %373, %374
  br i1 %375, label %376, label %381

376:                                              ; preds = %371
  %377 = load i32, i32* %31, align 4
  %378 = icmp ne i32 %377, -1
  br i1 %378, label %379, label %381

379:                                              ; preds = %376
  %380 = load i32, i32* %31, align 4
  br label %382

381:                                              ; preds = %376, %371
  br label %382

382:                                              ; preds = %381, %379
  %383 = phi i32 [ %380, %379 ], [ 0, %381 ]
  store i32 %383, i32* %41, align 4
  %384 = getelementptr inbounds [2 x i32], [2 x i32]* %32, i64 0, i64 0
  %385 = load i32, i32* %384, align 4
  %386 = getelementptr inbounds [2 x i32], [2 x i32]* %32, i64 0, i64 1
  %387 = load i32, i32* %386, align 4
  %388 = icmp eq i32 %385, %387
  br i1 %388, label %389, label %400

389:                                              ; preds = %382
  %390 = load i16*, i16** %18, align 8
  %391 = getelementptr inbounds i16, i16* %390, i64 4
  %392 = load i16, i16* %391, align 2
  %393 = sext i16 %392 to i32
  %394 = icmp ne i32 %393, -1
  br i1 %394, label %395, label %400

395:                                              ; preds = %389
  %396 = load i16*, i16** %18, align 8
  %397 = getelementptr inbounds i16, i16* %396, i64 4
  %398 = load i16, i16* %397, align 2
  %399 = sext i16 %398 to i32
  br label %401

400:                                              ; preds = %389, %382
  br label %401

401:                                              ; preds = %400, %395
  %402 = phi i32 [ %399, %395 ], [ 0, %400 ]
  store i32 %402, i32* %43, align 4
  %403 = load %struct.virtual_node*, %struct.virtual_node** %23, align 8
  %404 = getelementptr inbounds %struct.virtual_node, %struct.virtual_node* %403, i32 0, i32 1
  %405 = load %struct.virtual_item*, %struct.virtual_item** %404, align 8
  %406 = load i32, i32* %40, align 4
  %407 = sext i32 %406 to i64
  %408 = getelementptr inbounds %struct.virtual_item, %struct.virtual_item* %405, i64 %407
  %409 = call signext i16 @op_unit_num(%struct.virtual_item* %408)
  %410 = sext i16 %409 to i32
  %411 = load i16*, i16** %18, align 8
  %412 = getelementptr inbounds i16, i16* %411, i64 3
  %413 = load i16, i16* %412, align 2
  %414 = sext i16 %413 to i32
  %415 = sub nsw i32 %410, %414
  %416 = load i32, i32* %41, align 4
  %417 = sub nsw i32 %415, %416
  %418 = load i32, i32* %42, align 4
  %419 = sub nsw i32 %417, %418
  %420 = load i32, i32* %43, align 4
  %421 = sub nsw i32 %419, %420
  %422 = trunc i32 %421 to i16
  %423 = load i16*, i16** %18, align 8
  %424 = getelementptr inbounds i16, i16* %423, i64 3
  store i16 %422, i16* %424, align 2
  br label %425

425:                                              ; preds = %401, %353
  %426 = load i32, i32* %27, align 4
  store i32 %426, i32* %10, align 4
  br label %427

427:                                              ; preds = %425, %97, %96
  %428 = load i32, i32* %10, align 4
  ret i32 %428
}

declare dso_local i32 @RFALSE(i32, i8*, ...) #1

declare dso_local i32 @MAX_CHILD_SIZE(i32) #1

declare dso_local i32 @PATH_H_PBUFFER(i32, i32) #1

declare dso_local i64 @op_part_size(%struct.virtual_item*, i32, i32) #1

declare dso_local i32 @is_direct_le_ih(i32) #1

declare dso_local i32 @op_check_left(%struct.virtual_item*, i32, i32, i32) #1

declare dso_local i32 @reiserfs_warning(i32, i8*, i8*) #1

declare dso_local signext i16 @op_unit_num(%struct.virtual_item*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
