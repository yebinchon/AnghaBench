; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_lbalance.c_leaf_copy_items_entirely.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_lbalance.c_leaf_copy_items_entirely.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer_info = type { i64, i32, i32, %struct.buffer_head* }
%struct.buffer_head = type { i32, i64, %struct.item_head* }
%struct.item_head = type { i32 }
%struct.block_head = type { i32 }
%struct.disk_child = type { i32 }

@LAST_TO_FIRST = common dso_local global i32 0, align 4
@FIRST_TO_LAST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"vs-10090: bad last_first parameter %d\00", align 1
@.str.1 = private unnamed_addr constant [58 x i8] c"vs-10100: too few items in source %d, required %d from %d\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"vs-10110: can not copy negative amount of items\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"vs-10120: can not copy negative amount of items\00", align 1
@.str.4 = private unnamed_addr constant [48 x i8] c"vs-10130: can not copy negative amount of items\00", align 1
@IH_SIZE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [59 x i8] c"vs-10140: not enough free space for headers %d (needed %d)\00", align 1
@.str.6 = private unnamed_addr constant [57 x i8] c"vs-10150: not enough free space for items %d (needed %d)\00", align 1
@.str.7 = private unnamed_addr constant [89 x i8] c"vs-10160: block number in bh does not match to field in disk_child structure %lu and %lu\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.buffer_info*, %struct.buffer_head*, i32, i32, i32)* @leaf_copy_items_entirely to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @leaf_copy_items_entirely(%struct.buffer_info* %0, %struct.buffer_head* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.buffer_info*, align 8
  %7 = alloca %struct.buffer_head*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.buffer_head*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.block_head*, align 8
  %21 = alloca %struct.item_head*, align 8
  %22 = alloca %struct.disk_child*, align 8
  store %struct.buffer_info* %0, %struct.buffer_info** %6, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* @LAST_TO_FIRST, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %5
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* @FIRST_TO_LAST, align 4
  %29 = icmp ne i32 %27, %28
  br label %30

30:                                               ; preds = %26, %5
  %31 = phi i1 [ false, %5 ], [ %29, %26 ]
  %32 = zext i1 %31 to i32
  %33 = load i32, i32* %8, align 4
  %34 = call i32 (i32, i8*, ...) @RFALSE(i32 %32, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %33)
  %35 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %36 = call i32 @B_NR_ITEMS(%struct.buffer_head* %35)
  %37 = load i32, i32* %9, align 4
  %38 = sub nsw i32 %36, %37
  %39 = load i32, i32* %10, align 4
  %40 = icmp slt i32 %38, %39
  %41 = zext i1 %40 to i32
  %42 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %43 = call i32 @B_NR_ITEMS(%struct.buffer_head* %42)
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* %9, align 4
  %46 = call i32 (i32, i8*, ...) @RFALSE(i32 %41, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0), i32 %43, i32 %44, i32 %45)
  %47 = load i32, i32* %10, align 4
  %48 = icmp slt i32 %47, 0
  %49 = zext i1 %48 to i32
  %50 = call i32 (i32, i8*, ...) @RFALSE(i32 %49, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0))
  %51 = load %struct.buffer_info*, %struct.buffer_info** %6, align 8
  %52 = icmp ne %struct.buffer_info* %51, null
  %53 = xor i1 %52, true
  %54 = zext i1 %53 to i32
  %55 = call i32 (i32, i8*, ...) @RFALSE(i32 %54, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0))
  %56 = load %struct.buffer_info*, %struct.buffer_info** %6, align 8
  %57 = getelementptr inbounds %struct.buffer_info, %struct.buffer_info* %56, i32 0, i32 3
  %58 = load %struct.buffer_head*, %struct.buffer_head** %57, align 8
  store %struct.buffer_head* %58, %struct.buffer_head** %11, align 8
  %59 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %60 = icmp ne %struct.buffer_head* %59, null
  %61 = xor i1 %60, true
  %62 = zext i1 %61 to i32
  %63 = call i32 (i32, i8*, ...) @RFALSE(i32 %62, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0))
  %64 = load i32, i32* %10, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %30
  br label %300

67:                                               ; preds = %30
  %68 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %69 = call %struct.block_head* @B_BLK_HEAD(%struct.buffer_head* %68)
  store %struct.block_head* %69, %struct.block_head** %20, align 8
  %70 = load %struct.block_head*, %struct.block_head** %20, align 8
  %71 = call i32 @blkh_nr_item(%struct.block_head* %70)
  store i32 %71, i32* %12, align 4
  %72 = load %struct.block_head*, %struct.block_head** %20, align 8
  %73 = call i32 @blkh_free_space(%struct.block_head* %72)
  store i32 %73, i32* %13, align 4
  %74 = load i32, i32* %8, align 4
  %75 = load i32, i32* @LAST_TO_FIRST, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %67
  br label %80

78:                                               ; preds = %67
  %79 = load i32, i32* %12, align 4
  br label %80

80:                                               ; preds = %78, %77
  %81 = phi i32 [ 0, %77 ], [ %79, %78 ]
  store i32 %81, i32* %14, align 4
  %82 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %83 = load i32, i32* %14, align 4
  %84 = call %struct.item_head* @B_N_PITEM_HEAD(%struct.buffer_head* %82, i32 %83)
  store %struct.item_head* %84, %struct.item_head** %21, align 8
  %85 = load %struct.block_head*, %struct.block_head** %20, align 8
  %86 = call i32 @blkh_free_space(%struct.block_head* %85)
  %87 = load i32, i32* %10, align 4
  %88 = load i32, i32* @IH_SIZE, align 4
  %89 = mul nsw i32 %87, %88
  %90 = icmp slt i32 %86, %89
  %91 = zext i1 %90 to i32
  %92 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %93 = call i64 @B_FREE_SPACE(%struct.buffer_head* %92)
  %94 = load i32, i32* %10, align 4
  %95 = load i32, i32* @IH_SIZE, align 4
  %96 = mul nsw i32 %94, %95
  %97 = call i32 (i32, i8*, ...) @RFALSE(i32 %91, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.5, i64 0, i64 0), i64 %93, i32 %96)
  %98 = load %struct.item_head*, %struct.item_head** %21, align 8
  %99 = load i32, i32* %10, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.item_head, %struct.item_head* %98, i64 %100
  %102 = load %struct.item_head*, %struct.item_head** %21, align 8
  %103 = load i32, i32* %12, align 4
  %104 = load i32, i32* %14, align 4
  %105 = sub nsw i32 %103, %104
  %106 = load i32, i32* @IH_SIZE, align 4
  %107 = mul nsw i32 %105, %106
  %108 = call i32 @memmove(%struct.item_head* %101, %struct.item_head* %102, i32 %107)
  %109 = load %struct.item_head*, %struct.item_head** %21, align 8
  %110 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %111 = load i32, i32* %9, align 4
  %112 = call %struct.item_head* @B_N_PITEM_HEAD(%struct.buffer_head* %110, i32 %111)
  %113 = load i32, i32* %10, align 4
  %114 = load i32, i32* @IH_SIZE, align 4
  %115 = mul nsw i32 %113, %114
  %116 = call i32 @memcpy(%struct.item_head* %109, %struct.item_head* %112, i32 %115)
  %117 = load i32, i32* @IH_SIZE, align 4
  %118 = load i32, i32* %10, align 4
  %119 = mul nsw i32 %117, %118
  %120 = load i32, i32* %13, align 4
  %121 = sub nsw i32 %120, %119
  store i32 %121, i32* %13, align 4
  %122 = load %struct.block_head*, %struct.block_head** %20, align 8
  %123 = load i32, i32* %13, align 4
  %124 = call i32 @set_blkh_free_space(%struct.block_head* %122, i32 %123)
  %125 = load i32, i32* %14, align 4
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %127, label %131

127:                                              ; preds = %80
  %128 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %129 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  br label %135

131:                                              ; preds = %80
  %132 = load %struct.item_head*, %struct.item_head** %21, align 8
  %133 = getelementptr inbounds %struct.item_head, %struct.item_head* %132, i64 -1
  %134 = call i32 @ih_location(%struct.item_head* %133)
  br label %135

135:                                              ; preds = %131, %127
  %136 = phi i32 [ %130, %127 ], [ %134, %131 ]
  store i32 %136, i32* %17, align 4
  store i32 %136, i32* %19, align 4
  %137 = load i32, i32* %14, align 4
  store i32 %137, i32* %18, align 4
  br label %138

138:                                              ; preds = %168, %135
  %139 = load i32, i32* %18, align 4
  %140 = load i32, i32* %12, align 4
  %141 = load i32, i32* %10, align 4
  %142 = add nsw i32 %140, %141
  %143 = icmp slt i32 %139, %142
  br i1 %143, label %144, label %171

144:                                              ; preds = %138
  %145 = load %struct.item_head*, %struct.item_head** %21, align 8
  %146 = load i32, i32* %18, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.item_head, %struct.item_head* %145, i64 %147
  %149 = load i32, i32* %14, align 4
  %150 = sext i32 %149 to i64
  %151 = sub i64 0, %150
  %152 = getelementptr inbounds %struct.item_head, %struct.item_head* %148, i64 %151
  %153 = call i64 @ih_item_len(%struct.item_head* %152)
  %154 = load i32, i32* %17, align 4
  %155 = sext i32 %154 to i64
  %156 = sub nsw i64 %155, %153
  %157 = trunc i64 %156 to i32
  store i32 %157, i32* %17, align 4
  %158 = load %struct.item_head*, %struct.item_head** %21, align 8
  %159 = load i32, i32* %18, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.item_head, %struct.item_head* %158, i64 %160
  %162 = load i32, i32* %14, align 4
  %163 = sext i32 %162 to i64
  %164 = sub i64 0, %163
  %165 = getelementptr inbounds %struct.item_head, %struct.item_head* %161, i64 %164
  %166 = load i32, i32* %17, align 4
  %167 = call i32 @put_ih_location(%struct.item_head* %165, i32 %166)
  br label %168

168:                                              ; preds = %144
  %169 = load i32, i32* %18, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %18, align 4
  br label %138

171:                                              ; preds = %138
  %172 = load %struct.item_head*, %struct.item_head** %21, align 8
  %173 = load i32, i32* %12, align 4
  %174 = load i32, i32* %10, align 4
  %175 = add nsw i32 %173, %174
  %176 = sub nsw i32 %175, 1
  %177 = load i32, i32* %14, align 4
  %178 = sub nsw i32 %176, %177
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds %struct.item_head, %struct.item_head* %172, i64 %179
  %181 = call i32 @ih_location(%struct.item_head* %180)
  store i32 %181, i32* %15, align 4
  %182 = load %struct.item_head*, %struct.item_head** %21, align 8
  %183 = load i32, i32* %10, align 4
  %184 = sub nsw i32 %183, 1
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds %struct.item_head, %struct.item_head* %182, i64 %185
  %187 = call i32 @ih_location(%struct.item_head* %186)
  store i32 %187, i32* %16, align 4
  %188 = load i32, i32* %13, align 4
  %189 = load i32, i32* %19, align 4
  %190 = load i32, i32* %16, align 4
  %191 = sub nsw i32 %189, %190
  %192 = icmp slt i32 %188, %191
  %193 = zext i1 %192 to i32
  %194 = load i32, i32* %13, align 4
  %195 = load i32, i32* %19, align 4
  %196 = load i32, i32* %16, align 4
  %197 = sub nsw i32 %195, %196
  %198 = call i32 (i32, i8*, ...) @RFALSE(i32 %193, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.6, i64 0, i64 0), i32 %194, i32 %197)
  %199 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %200 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %199, i32 0, i32 2
  %201 = load %struct.item_head*, %struct.item_head** %200, align 8
  %202 = load i32, i32* %15, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds %struct.item_head, %struct.item_head* %201, i64 %203
  %205 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %206 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %205, i32 0, i32 2
  %207 = load %struct.item_head*, %struct.item_head** %206, align 8
  %208 = load i32, i32* %15, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds %struct.item_head, %struct.item_head* %207, i64 %209
  %211 = load i32, i32* %19, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds %struct.item_head, %struct.item_head* %210, i64 %212
  %214 = load i32, i32* %16, align 4
  %215 = sext i32 %214 to i64
  %216 = sub i64 0, %215
  %217 = getelementptr inbounds %struct.item_head, %struct.item_head* %213, i64 %216
  %218 = load i32, i32* %16, align 4
  %219 = load i32, i32* %15, align 4
  %220 = sub nsw i32 %218, %219
  %221 = call i32 @memmove(%struct.item_head* %204, %struct.item_head* %217, i32 %220)
  %222 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %223 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %222, i32 0, i32 2
  %224 = load %struct.item_head*, %struct.item_head** %223, align 8
  %225 = load i32, i32* %16, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds %struct.item_head, %struct.item_head* %224, i64 %226
  %228 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %229 = load i32, i32* %9, align 4
  %230 = load i32, i32* %10, align 4
  %231 = add nsw i32 %229, %230
  %232 = sub nsw i32 %231, 1
  %233 = call %struct.item_head* @B_N_PITEM(%struct.buffer_head* %228, i32 %232)
  %234 = load i32, i32* %19, align 4
  %235 = load i32, i32* %16, align 4
  %236 = sub nsw i32 %234, %235
  %237 = call i32 @memcpy(%struct.item_head* %227, %struct.item_head* %233, i32 %236)
  %238 = load %struct.block_head*, %struct.block_head** %20, align 8
  %239 = load i32, i32* %12, align 4
  %240 = load i32, i32* %10, align 4
  %241 = add nsw i32 %239, %240
  %242 = call i32 @set_blkh_nr_item(%struct.block_head* %238, i32 %241)
  %243 = load %struct.block_head*, %struct.block_head** %20, align 8
  %244 = load i32, i32* %13, align 4
  %245 = load i32, i32* %19, align 4
  %246 = load i32, i32* %16, align 4
  %247 = sub nsw i32 %245, %246
  %248 = sub nsw i32 %244, %247
  %249 = call i32 @set_blkh_free_space(%struct.block_head* %243, i32 %248)
  %250 = load %struct.buffer_info*, %struct.buffer_info** %6, align 8
  %251 = getelementptr inbounds %struct.buffer_info, %struct.buffer_info* %250, i32 0, i32 1
  %252 = load i32, i32* %251, align 8
  %253 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %254 = call i32 @do_balance_mark_leaf_dirty(i32 %252, %struct.buffer_head* %253, i32 0)
  %255 = load %struct.buffer_info*, %struct.buffer_info** %6, align 8
  %256 = getelementptr inbounds %struct.buffer_info, %struct.buffer_info* %255, i32 0, i32 0
  %257 = load i64, i64* %256, align 8
  %258 = icmp ne i64 %257, 0
  br i1 %258, label %259, label %300

259:                                              ; preds = %171
  %260 = load %struct.buffer_info*, %struct.buffer_info** %6, align 8
  %261 = getelementptr inbounds %struct.buffer_info, %struct.buffer_info* %260, i32 0, i32 0
  %262 = load i64, i64* %261, align 8
  %263 = load %struct.buffer_info*, %struct.buffer_info** %6, align 8
  %264 = getelementptr inbounds %struct.buffer_info, %struct.buffer_info* %263, i32 0, i32 2
  %265 = load i32, i32* %264, align 4
  %266 = call %struct.disk_child* @B_N_CHILD(i64 %262, i32 %265)
  store %struct.disk_child* %266, %struct.disk_child** %22, align 8
  %267 = load %struct.disk_child*, %struct.disk_child** %22, align 8
  %268 = call i64 @dc_block_number(%struct.disk_child* %267)
  %269 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %270 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %269, i32 0, i32 1
  %271 = load i64, i64* %270, align 8
  %272 = icmp ne i64 %268, %271
  %273 = zext i1 %272 to i32
  %274 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %275 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %274, i32 0, i32 1
  %276 = load i64, i64* %275, align 8
  %277 = load %struct.disk_child*, %struct.disk_child** %22, align 8
  %278 = call i64 @dc_block_number(%struct.disk_child* %277)
  %279 = call i32 (i32, i8*, ...) @RFALSE(i32 %273, i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.7, i64 0, i64 0), i64 %276, i64 %278)
  %280 = load %struct.disk_child*, %struct.disk_child** %22, align 8
  %281 = load %struct.disk_child*, %struct.disk_child** %22, align 8
  %282 = call i64 @dc_size(%struct.disk_child* %281)
  %283 = load i32, i32* %19, align 4
  %284 = load i32, i32* %16, align 4
  %285 = sub nsw i32 %283, %284
  %286 = load i32, i32* @IH_SIZE, align 4
  %287 = load i32, i32* %10, align 4
  %288 = mul nsw i32 %286, %287
  %289 = add nsw i32 %285, %288
  %290 = sext i32 %289 to i64
  %291 = add nsw i64 %282, %290
  %292 = call i32 @put_dc_size(%struct.disk_child* %280, i64 %291)
  %293 = load %struct.buffer_info*, %struct.buffer_info** %6, align 8
  %294 = getelementptr inbounds %struct.buffer_info, %struct.buffer_info* %293, i32 0, i32 1
  %295 = load i32, i32* %294, align 8
  %296 = load %struct.buffer_info*, %struct.buffer_info** %6, align 8
  %297 = getelementptr inbounds %struct.buffer_info, %struct.buffer_info* %296, i32 0, i32 0
  %298 = load i64, i64* %297, align 8
  %299 = call i32 @do_balance_mark_internal_dirty(i32 %295, i64 %298, i32 0)
  br label %300

300:                                              ; preds = %66, %259, %171
  ret void
}

declare dso_local i32 @RFALSE(i32, i8*, ...) #1

declare dso_local i32 @B_NR_ITEMS(%struct.buffer_head*) #1

declare dso_local %struct.block_head* @B_BLK_HEAD(%struct.buffer_head*) #1

declare dso_local i32 @blkh_nr_item(%struct.block_head*) #1

declare dso_local i32 @blkh_free_space(%struct.block_head*) #1

declare dso_local %struct.item_head* @B_N_PITEM_HEAD(%struct.buffer_head*, i32) #1

declare dso_local i64 @B_FREE_SPACE(%struct.buffer_head*) #1

declare dso_local i32 @memmove(%struct.item_head*, %struct.item_head*, i32) #1

declare dso_local i32 @memcpy(%struct.item_head*, %struct.item_head*, i32) #1

declare dso_local i32 @set_blkh_free_space(%struct.block_head*, i32) #1

declare dso_local i32 @ih_location(%struct.item_head*) #1

declare dso_local i64 @ih_item_len(%struct.item_head*) #1

declare dso_local i32 @put_ih_location(%struct.item_head*, i32) #1

declare dso_local %struct.item_head* @B_N_PITEM(%struct.buffer_head*, i32) #1

declare dso_local i32 @set_blkh_nr_item(%struct.block_head*, i32) #1

declare dso_local i32 @do_balance_mark_leaf_dirty(i32, %struct.buffer_head*, i32) #1

declare dso_local %struct.disk_child* @B_N_CHILD(i64, i32) #1

declare dso_local i64 @dc_block_number(%struct.disk_child*) #1

declare dso_local i32 @put_dc_size(%struct.disk_child*, i64) #1

declare dso_local i64 @dc_size(%struct.disk_child*) #1

declare dso_local i32 @do_balance_mark_internal_dirty(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
