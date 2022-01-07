; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_fix_node.c_fix_nodes.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_fix_node.c_fix_nodes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tree_balance = type { i32*, i32*, i32**, i32, i32**, i32**, i32**, i32**, i32**, i32**, %struct.TYPE_7__*, i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.item_head = type { i32 }
%struct.buffer_head = type { i32 }
%struct.TYPE_8__ = type { i32 }

@REPEAT_SEARCH = common dso_local global i32 0, align 4
@MAX_HEIGHT = common dso_local global i32 0, align 4
@CARRY_ON = common dso_local global i32 0, align 4
@NO_BALANCING_NEEDED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"PAP-8350: creating new empty root\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"PAP-8355: attempt to create too high of a tree\00", align 1
@DC_SIZE = common dso_local global i32 0, align 4
@KEY_SIZE = common dso_local global i32 0, align 4
@MAX_FEB_SIZE = common dso_local global i32 0, align 4
@cur_tb = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fix_nodes(i32 %0, %struct.tree_balance* %1, %struct.item_head* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.tree_balance*, align 8
  %8 = alloca %struct.item_head*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.buffer_head*, align 8
  %16 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store %struct.tree_balance* %1, %struct.tree_balance** %7, align 8
  store %struct.item_head* %2, %struct.item_head** %8, align 8
  store i8* %3, i8** %9, align 8
  %17 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %18 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %17, i32 0, i32 10
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %20 = call i32 @PATH_LAST_POSITION(%struct.TYPE_7__* %19)
  store i32 %20, i32* %12, align 4
  store i32 0, i32* %14, align 4
  %21 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %22 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %21, i32 0, i32 10
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  %24 = call %struct.buffer_head* @PATH_PLAST_BUFFER(%struct.TYPE_7__* %23)
  store %struct.buffer_head* %24, %struct.buffer_head** %15, align 8
  %25 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %26 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 8
  %28 = call %struct.TYPE_8__* @REISERFS_SB(i32 %27)
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %29, align 4
  %32 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %33 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %32, i32 0, i32 10
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %13, align 4
  %37 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %38 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @get_generation(i32 %39)
  %41 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %42 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %41, i32 0, i32 12
  store i32 %40, i32* %42, align 4
  %43 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %44 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %47 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @SB_BUFFER_WITH_SB(i32 %48)
  %50 = call i32 @reiserfs_prepare_for_journal(i32 %45, i32 %49, i32 1)
  %51 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %52 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %51, i32 0, i32 11
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %55 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %58 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @SB_BUFFER_WITH_SB(i32 %59)
  %61 = call i32 @journal_mark_dirty(i32 %53, i32 %56, i32 %60)
  %62 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %63 = call i64 @FILESYSTEM_CHANGED_TB(%struct.tree_balance* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %4
  %66 = load i32, i32* @REPEAT_SEARCH, align 4
  store i32 %66, i32* %5, align 4
  br label %512

67:                                               ; preds = %4
  %68 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  %69 = call i64 @buffer_locked(%struct.buffer_head* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %80

71:                                               ; preds = %67
  %72 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  %73 = call i32 @__wait_on_buffer(%struct.buffer_head* %72)
  %74 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %75 = call i64 @FILESYSTEM_CHANGED_TB(%struct.tree_balance* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %71
  %78 = load i32, i32* @REPEAT_SEARCH, align 4
  store i32 %78, i32* %5, align 4
  br label %512

79:                                               ; preds = %71
  br label %80

80:                                               ; preds = %79, %67
  %81 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %82 = call i32 @get_mem_for_virtual_node(%struct.tree_balance* %81)
  %83 = load i32, i32* @REPEAT_SEARCH, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %85, label %87

85:                                               ; preds = %80
  %86 = load i32, i32* @REPEAT_SEARCH, align 4
  store i32 %86, i32* %5, align 4
  br label %512

87:                                               ; preds = %80
  store i32 0, i32* %11, align 4
  br label %88

88:                                               ; preds = %279, %87
  %89 = load i32, i32* %11, align 4
  %90 = load i32, i32* @MAX_HEIGHT, align 4
  %91 = icmp slt i32 %89, %90
  br i1 %91, label %92, label %101

92:                                               ; preds = %88
  %93 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %94 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %93, i32 0, i32 0
  %95 = load i32*, i32** %94, align 8
  %96 = load i32, i32* %11, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = icmp ne i32 %99, 0
  br label %101

101:                                              ; preds = %92, %88
  %102 = phi i1 [ false, %88 ], [ %100, %92 ]
  br i1 %102, label %103, label %282

103:                                              ; preds = %101
  %104 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %105 = load i32, i32* %11, align 4
  %106 = call i32 @get_direct_parent(%struct.tree_balance* %104, i32 %105)
  store i32 %106, i32* %10, align 4
  %107 = load i32, i32* %10, align 4
  %108 = load i32, i32* @CARRY_ON, align 4
  %109 = icmp ne i32 %107, %108
  br i1 %109, label %110, label %111

110:                                              ; preds = %103
  br label %297

111:                                              ; preds = %103
  %112 = load i32, i32* %6, align 4
  %113 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %114 = load i32, i32* %11, align 4
  %115 = load i32, i32* %12, align 4
  %116 = load i32, i32* %13, align 4
  %117 = load %struct.item_head*, %struct.item_head** %8, align 8
  %118 = load i8*, i8** %9, align 8
  %119 = call i32 @check_balance(i32 %112, %struct.tree_balance* %113, i32 %114, i32 %115, i32 %116, %struct.item_head* %117, i8* %118)
  store i32 %119, i32* %10, align 4
  %120 = load i32, i32* %10, align 4
  %121 = load i32, i32* @CARRY_ON, align 4
  %122 = icmp ne i32 %120, %121
  br i1 %122, label %123, label %150

123:                                              ; preds = %111
  %124 = load i32, i32* %10, align 4
  %125 = load i32, i32* @NO_BALANCING_NEEDED, align 4
  %126 = icmp eq i32 %124, %125
  br i1 %126, label %127, label %149

127:                                              ; preds = %123
  %128 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %129 = load i32, i32* %11, align 4
  %130 = call i32 @get_neighbors(%struct.tree_balance* %128, i32 %129)
  store i32 %130, i32* %10, align 4
  %131 = load i32, i32* %10, align 4
  %132 = load i32, i32* @CARRY_ON, align 4
  %133 = icmp ne i32 %131, %132
  br i1 %133, label %134, label %135

134:                                              ; preds = %127
  br label %297

135:                                              ; preds = %127
  %136 = load i32, i32* %11, align 4
  %137 = load i32, i32* @MAX_HEIGHT, align 4
  %138 = sub nsw i32 %137, 1
  %139 = icmp ne i32 %136, %138
  br i1 %139, label %140, label %148

140:                                              ; preds = %135
  %141 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %142 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %141, i32 0, i32 0
  %143 = load i32*, i32** %142, align 8
  %144 = load i32, i32* %11, align 4
  %145 = add nsw i32 %144, 1
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32, i32* %143, i64 %146
  store i32 0, i32* %147, align 4
  br label %148

148:                                              ; preds = %140, %135
  br label %282

149:                                              ; preds = %123
  br label %297

150:                                              ; preds = %111
  %151 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %152 = load i32, i32* %11, align 4
  %153 = call i32 @get_neighbors(%struct.tree_balance* %151, i32 %152)
  store i32 %153, i32* %10, align 4
  %154 = load i32, i32* %10, align 4
  %155 = load i32, i32* @CARRY_ON, align 4
  %156 = icmp ne i32 %154, %155
  br i1 %156, label %157, label %158

157:                                              ; preds = %150
  br label %297

158:                                              ; preds = %150
  %159 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %160 = load i32, i32* %11, align 4
  %161 = call i32 @get_empty_nodes(%struct.tree_balance* %159, i32 %160)
  store i32 %161, i32* %10, align 4
  %162 = load i32, i32* %10, align 4
  %163 = load i32, i32* @CARRY_ON, align 4
  %164 = icmp ne i32 %162, %163
  br i1 %164, label %165, label %166

165:                                              ; preds = %158
  br label %297

166:                                              ; preds = %158
  %167 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %168 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %167, i32 0, i32 10
  %169 = load %struct.TYPE_7__*, %struct.TYPE_7__** %168, align 8
  %170 = load i32, i32* %11, align 4
  %171 = call i32 @PATH_H_PBUFFER(%struct.TYPE_7__* %169, i32 %170)
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %197, label %173

173:                                              ; preds = %166
  %174 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %175 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %174, i32 0, i32 1
  %176 = load i32*, i32** %175, align 8
  %177 = load i32, i32* %11, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i32, i32* %176, i64 %178
  %180 = load i32, i32* %179, align 4
  %181 = icmp ne i32 %180, 1
  %182 = zext i1 %181 to i32
  %183 = call i32 @RFALSE(i32 %182, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %184 = load i32, i32* %11, align 4
  %185 = load i32, i32* @MAX_HEIGHT, align 4
  %186 = sub nsw i32 %185, 1
  %187 = icmp slt i32 %184, %186
  br i1 %187, label %188, label %196

188:                                              ; preds = %173
  %189 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %190 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %189, i32 0, i32 0
  %191 = load i32*, i32** %190, align 8
  %192 = load i32, i32* %11, align 4
  %193 = add nsw i32 %192, 1
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i32, i32* %191, i64 %194
  store i32 0, i32* %195, align 4
  br label %196

196:                                              ; preds = %188, %173
  br label %278

197:                                              ; preds = %166
  %198 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %199 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %198, i32 0, i32 10
  %200 = load %struct.TYPE_7__*, %struct.TYPE_7__** %199, align 8
  %201 = load i32, i32* %11, align 4
  %202 = add nsw i32 %201, 1
  %203 = call i32 @PATH_H_PBUFFER(%struct.TYPE_7__* %200, i32 %202)
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %257, label %205

205:                                              ; preds = %197
  %206 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %207 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %206, i32 0, i32 1
  %208 = load i32*, i32** %207, align 8
  %209 = load i32, i32* %11, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds i32, i32* %208, i64 %210
  %212 = load i32, i32* %211, align 4
  %213 = icmp sgt i32 %212, 1
  br i1 %213, label %214, label %242

214:                                              ; preds = %205
  %215 = load i32, i32* %11, align 4
  %216 = load i32, i32* @MAX_HEIGHT, align 4
  %217 = sub nsw i32 %216, 1
  %218 = icmp eq i32 %215, %217
  %219 = zext i1 %218 to i32
  %220 = call i32 @RFALSE(i32 %219, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  %221 = load i32, i32* @DC_SIZE, align 4
  %222 = load i32, i32* @KEY_SIZE, align 4
  %223 = add nsw i32 %221, %222
  %224 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %225 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %224, i32 0, i32 1
  %226 = load i32*, i32** %225, align 8
  %227 = load i32, i32* %11, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds i32, i32* %226, i64 %228
  %230 = load i32, i32* %229, align 4
  %231 = sub nsw i32 %230, 1
  %232 = mul nsw i32 %223, %231
  %233 = load i32, i32* @DC_SIZE, align 4
  %234 = add nsw i32 %232, %233
  %235 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %236 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %235, i32 0, i32 0
  %237 = load i32*, i32** %236, align 8
  %238 = load i32, i32* %11, align 4
  %239 = add nsw i32 %238, 1
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds i32, i32* %237, i64 %240
  store i32 %234, i32* %241, align 4
  br label %256

242:                                              ; preds = %205
  %243 = load i32, i32* %11, align 4
  %244 = load i32, i32* @MAX_HEIGHT, align 4
  %245 = sub nsw i32 %244, 1
  %246 = icmp slt i32 %243, %245
  br i1 %246, label %247, label %255

247:                                              ; preds = %242
  %248 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %249 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %248, i32 0, i32 0
  %250 = load i32*, i32** %249, align 8
  %251 = load i32, i32* %11, align 4
  %252 = add nsw i32 %251, 1
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds i32, i32* %250, i64 %253
  store i32 0, i32* %254, align 4
  br label %255

255:                                              ; preds = %247, %242
  br label %256

256:                                              ; preds = %255, %214
  br label %277

257:                                              ; preds = %197
  %258 = load i32, i32* @DC_SIZE, align 4
  %259 = load i32, i32* @KEY_SIZE, align 4
  %260 = add nsw i32 %258, %259
  %261 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %262 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %261, i32 0, i32 1
  %263 = load i32*, i32** %262, align 8
  %264 = load i32, i32* %11, align 4
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds i32, i32* %263, i64 %265
  %267 = load i32, i32* %266, align 4
  %268 = sub nsw i32 %267, 1
  %269 = mul nsw i32 %260, %268
  %270 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %271 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %270, i32 0, i32 0
  %272 = load i32*, i32** %271, align 8
  %273 = load i32, i32* %11, align 4
  %274 = add nsw i32 %273, 1
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds i32, i32* %272, i64 %275
  store i32 %269, i32* %276, align 4
  br label %277

277:                                              ; preds = %257, %256
  br label %278

278:                                              ; preds = %277, %196
  br label %279

279:                                              ; preds = %278
  %280 = load i32, i32* %11, align 4
  %281 = add nsw i32 %280, 1
  store i32 %281, i32* %11, align 4
  br label %88

282:                                              ; preds = %148, %101
  %283 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %284 = call i32 @wait_tb_buffers_until_unlocked(%struct.tree_balance* %283)
  store i32 %284, i32* %10, align 4
  %285 = load i32, i32* %10, align 4
  %286 = load i32, i32* @CARRY_ON, align 4
  %287 = icmp eq i32 %285, %286
  br i1 %287, label %288, label %296

288:                                              ; preds = %282
  %289 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %290 = call i64 @FILESYSTEM_CHANGED_TB(%struct.tree_balance* %289)
  %291 = icmp ne i64 %290, 0
  br i1 %291, label %292, label %294

292:                                              ; preds = %288
  store i32 1, i32* %14, align 4
  %293 = load i32, i32* @REPEAT_SEARCH, align 4
  store i32 %293, i32* %10, align 4
  br label %297

294:                                              ; preds = %288
  %295 = load i32, i32* @CARRY_ON, align 4
  store i32 %295, i32* %5, align 4
  br label %512

296:                                              ; preds = %282
  store i32 1, i32* %14, align 4
  br label %297

297:                                              ; preds = %296, %292, %165, %157, %149, %134, %110
  %298 = load i32, i32* %14, align 4
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %300, label %308

300:                                              ; preds = %297
  %301 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %302 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %301, i32 0, i32 3
  %303 = load i32, i32* %302, align 8
  %304 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %305 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %304, i32 0, i32 10
  %306 = load %struct.TYPE_7__*, %struct.TYPE_7__** %305, align 8
  %307 = call i32 @pathrelse_and_restore(i32 %303, %struct.TYPE_7__* %306)
  br label %313

308:                                              ; preds = %297
  %309 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %310 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %309, i32 0, i32 10
  %311 = load %struct.TYPE_7__*, %struct.TYPE_7__** %310, align 8
  %312 = call i32 @pathrelse(%struct.TYPE_7__* %311)
  br label %313

313:                                              ; preds = %308, %300
  store i32 0, i32* %16, align 4
  br label %314

314:                                              ; preds = %473, %313
  %315 = load i32, i32* %16, align 4
  %316 = load i32, i32* @MAX_HEIGHT, align 4
  %317 = icmp slt i32 %315, %316
  br i1 %317, label %318, label %476

318:                                              ; preds = %314
  %319 = load i32, i32* %14, align 4
  %320 = icmp ne i32 %319, 0
  br i1 %320, label %321, label %388

321:                                              ; preds = %318
  %322 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %323 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %322, i32 0, i32 3
  %324 = load i32, i32* %323, align 8
  %325 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %326 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %325, i32 0, i32 9
  %327 = load i32**, i32*** %326, align 8
  %328 = load i32, i32* %16, align 4
  %329 = sext i32 %328 to i64
  %330 = getelementptr inbounds i32*, i32** %327, i64 %329
  %331 = load i32*, i32** %330, align 8
  %332 = call i32 @reiserfs_restore_prepared_buffer(i32 %324, i32* %331)
  %333 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %334 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %333, i32 0, i32 3
  %335 = load i32, i32* %334, align 8
  %336 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %337 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %336, i32 0, i32 8
  %338 = load i32**, i32*** %337, align 8
  %339 = load i32, i32* %16, align 4
  %340 = sext i32 %339 to i64
  %341 = getelementptr inbounds i32*, i32** %338, i64 %340
  %342 = load i32*, i32** %341, align 8
  %343 = call i32 @reiserfs_restore_prepared_buffer(i32 %335, i32* %342)
  %344 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %345 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %344, i32 0, i32 3
  %346 = load i32, i32* %345, align 8
  %347 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %348 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %347, i32 0, i32 7
  %349 = load i32**, i32*** %348, align 8
  %350 = load i32, i32* %16, align 4
  %351 = sext i32 %350 to i64
  %352 = getelementptr inbounds i32*, i32** %349, i64 %351
  %353 = load i32*, i32** %352, align 8
  %354 = call i32 @reiserfs_restore_prepared_buffer(i32 %346, i32* %353)
  %355 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %356 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %355, i32 0, i32 3
  %357 = load i32, i32* %356, align 8
  %358 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %359 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %358, i32 0, i32 6
  %360 = load i32**, i32*** %359, align 8
  %361 = load i32, i32* %16, align 4
  %362 = sext i32 %361 to i64
  %363 = getelementptr inbounds i32*, i32** %360, i64 %362
  %364 = load i32*, i32** %363, align 8
  %365 = call i32 @reiserfs_restore_prepared_buffer(i32 %357, i32* %364)
  %366 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %367 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %366, i32 0, i32 3
  %368 = load i32, i32* %367, align 8
  %369 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %370 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %369, i32 0, i32 5
  %371 = load i32**, i32*** %370, align 8
  %372 = load i32, i32* %16, align 4
  %373 = sext i32 %372 to i64
  %374 = getelementptr inbounds i32*, i32** %371, i64 %373
  %375 = load i32*, i32** %374, align 8
  %376 = call i32 @reiserfs_restore_prepared_buffer(i32 %368, i32* %375)
  %377 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %378 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %377, i32 0, i32 3
  %379 = load i32, i32* %378, align 8
  %380 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %381 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %380, i32 0, i32 4
  %382 = load i32**, i32*** %381, align 8
  %383 = load i32, i32* %16, align 4
  %384 = sext i32 %383 to i64
  %385 = getelementptr inbounds i32*, i32** %382, i64 %384
  %386 = load i32*, i32** %385, align 8
  %387 = call i32 @reiserfs_restore_prepared_buffer(i32 %379, i32* %386)
  br label %388

388:                                              ; preds = %321, %318
  %389 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %390 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %389, i32 0, i32 9
  %391 = load i32**, i32*** %390, align 8
  %392 = load i32, i32* %16, align 4
  %393 = sext i32 %392 to i64
  %394 = getelementptr inbounds i32*, i32** %391, i64 %393
  %395 = load i32*, i32** %394, align 8
  %396 = call i32 @brelse(i32* %395)
  %397 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %398 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %397, i32 0, i32 8
  %399 = load i32**, i32*** %398, align 8
  %400 = load i32, i32* %16, align 4
  %401 = sext i32 %400 to i64
  %402 = getelementptr inbounds i32*, i32** %399, i64 %401
  %403 = load i32*, i32** %402, align 8
  %404 = call i32 @brelse(i32* %403)
  %405 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %406 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %405, i32 0, i32 7
  %407 = load i32**, i32*** %406, align 8
  %408 = load i32, i32* %16, align 4
  %409 = sext i32 %408 to i64
  %410 = getelementptr inbounds i32*, i32** %407, i64 %409
  %411 = load i32*, i32** %410, align 8
  %412 = call i32 @brelse(i32* %411)
  %413 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %414 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %413, i32 0, i32 6
  %415 = load i32**, i32*** %414, align 8
  %416 = load i32, i32* %16, align 4
  %417 = sext i32 %416 to i64
  %418 = getelementptr inbounds i32*, i32** %415, i64 %417
  %419 = load i32*, i32** %418, align 8
  %420 = call i32 @brelse(i32* %419)
  %421 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %422 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %421, i32 0, i32 5
  %423 = load i32**, i32*** %422, align 8
  %424 = load i32, i32* %16, align 4
  %425 = sext i32 %424 to i64
  %426 = getelementptr inbounds i32*, i32** %423, i64 %425
  %427 = load i32*, i32** %426, align 8
  %428 = call i32 @brelse(i32* %427)
  %429 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %430 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %429, i32 0, i32 4
  %431 = load i32**, i32*** %430, align 8
  %432 = load i32, i32* %16, align 4
  %433 = sext i32 %432 to i64
  %434 = getelementptr inbounds i32*, i32** %431, i64 %433
  %435 = load i32*, i32** %434, align 8
  %436 = call i32 @brelse(i32* %435)
  %437 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %438 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %437, i32 0, i32 9
  %439 = load i32**, i32*** %438, align 8
  %440 = load i32, i32* %16, align 4
  %441 = sext i32 %440 to i64
  %442 = getelementptr inbounds i32*, i32** %439, i64 %441
  store i32* null, i32** %442, align 8
  %443 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %444 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %443, i32 0, i32 8
  %445 = load i32**, i32*** %444, align 8
  %446 = load i32, i32* %16, align 4
  %447 = sext i32 %446 to i64
  %448 = getelementptr inbounds i32*, i32** %445, i64 %447
  store i32* null, i32** %448, align 8
  %449 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %450 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %449, i32 0, i32 7
  %451 = load i32**, i32*** %450, align 8
  %452 = load i32, i32* %16, align 4
  %453 = sext i32 %452 to i64
  %454 = getelementptr inbounds i32*, i32** %451, i64 %453
  store i32* null, i32** %454, align 8
  %455 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %456 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %455, i32 0, i32 6
  %457 = load i32**, i32*** %456, align 8
  %458 = load i32, i32* %16, align 4
  %459 = sext i32 %458 to i64
  %460 = getelementptr inbounds i32*, i32** %457, i64 %459
  store i32* null, i32** %460, align 8
  %461 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %462 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %461, i32 0, i32 5
  %463 = load i32**, i32*** %462, align 8
  %464 = load i32, i32* %16, align 4
  %465 = sext i32 %464 to i64
  %466 = getelementptr inbounds i32*, i32** %463, i64 %465
  store i32* null, i32** %466, align 8
  %467 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %468 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %467, i32 0, i32 4
  %469 = load i32**, i32*** %468, align 8
  %470 = load i32, i32* %16, align 4
  %471 = sext i32 %470 to i64
  %472 = getelementptr inbounds i32*, i32** %469, i64 %471
  store i32* null, i32** %472, align 8
  br label %473

473:                                              ; preds = %388
  %474 = load i32, i32* %16, align 4
  %475 = add nsw i32 %474, 1
  store i32 %475, i32* %16, align 4
  br label %314

476:                                              ; preds = %314
  %477 = load i32, i32* %14, align 4
  %478 = icmp ne i32 %477, 0
  br i1 %478, label %479, label %510

479:                                              ; preds = %476
  store i32 0, i32* %16, align 4
  br label %480

480:                                              ; preds = %506, %479
  %481 = load i32, i32* %16, align 4
  %482 = load i32, i32* @MAX_FEB_SIZE, align 4
  %483 = icmp slt i32 %481, %482
  br i1 %483, label %484, label %509

484:                                              ; preds = %480
  %485 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %486 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %485, i32 0, i32 2
  %487 = load i32**, i32*** %486, align 8
  %488 = load i32, i32* %16, align 4
  %489 = sext i32 %488 to i64
  %490 = getelementptr inbounds i32*, i32** %487, i64 %489
  %491 = load i32*, i32** %490, align 8
  %492 = icmp ne i32* %491, null
  br i1 %492, label %493, label %505

493:                                              ; preds = %484
  %494 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %495 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %494, i32 0, i32 3
  %496 = load i32, i32* %495, align 8
  %497 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %498 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %497, i32 0, i32 2
  %499 = load i32**, i32*** %498, align 8
  %500 = load i32, i32* %16, align 4
  %501 = sext i32 %500 to i64
  %502 = getelementptr inbounds i32*, i32** %499, i64 %501
  %503 = load i32*, i32** %502, align 8
  %504 = call i32 @reiserfs_restore_prepared_buffer(i32 %496, i32* %503)
  br label %505

505:                                              ; preds = %493, %484
  br label %506

506:                                              ; preds = %505
  %507 = load i32, i32* %16, align 4
  %508 = add nsw i32 %507, 1
  store i32 %508, i32* %16, align 4
  br label %480

509:                                              ; preds = %480
  br label %510

510:                                              ; preds = %509, %476
  %511 = load i32, i32* %10, align 4
  store i32 %511, i32* %5, align 4
  br label %512

512:                                              ; preds = %510, %294, %85, %77, %65
  %513 = load i32, i32* %5, align 4
  ret i32 %513
}

declare dso_local i32 @PATH_LAST_POSITION(%struct.TYPE_7__*) #1

declare dso_local %struct.buffer_head* @PATH_PLAST_BUFFER(%struct.TYPE_7__*) #1

declare dso_local %struct.TYPE_8__* @REISERFS_SB(i32) #1

declare dso_local i32 @get_generation(i32) #1

declare dso_local i32 @reiserfs_prepare_for_journal(i32, i32, i32) #1

declare dso_local i32 @SB_BUFFER_WITH_SB(i32) #1

declare dso_local i32 @journal_mark_dirty(i32, i32, i32) #1

declare dso_local i64 @FILESYSTEM_CHANGED_TB(%struct.tree_balance*) #1

declare dso_local i64 @buffer_locked(%struct.buffer_head*) #1

declare dso_local i32 @__wait_on_buffer(%struct.buffer_head*) #1

declare dso_local i32 @get_mem_for_virtual_node(%struct.tree_balance*) #1

declare dso_local i32 @get_direct_parent(%struct.tree_balance*, i32) #1

declare dso_local i32 @check_balance(i32, %struct.tree_balance*, i32, i32, i32, %struct.item_head*, i8*) #1

declare dso_local i32 @get_neighbors(%struct.tree_balance*, i32) #1

declare dso_local i32 @get_empty_nodes(%struct.tree_balance*, i32) #1

declare dso_local i32 @PATH_H_PBUFFER(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @RFALSE(i32, i8*) #1

declare dso_local i32 @wait_tb_buffers_until_unlocked(%struct.tree_balance*) #1

declare dso_local i32 @pathrelse_and_restore(i32, %struct.TYPE_7__*) #1

declare dso_local i32 @pathrelse(%struct.TYPE_7__*) #1

declare dso_local i32 @reiserfs_restore_prepared_buffer(i32, i32*) #1

declare dso_local i32 @brelse(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
