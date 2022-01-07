; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_fix_node.c_dc_check_balance_internal.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_fix_node.c_dc_check_balance_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tree_balance = type { i32*, i32*, %struct.buffer_head**, %struct.buffer_head**, i32, %struct.virtual_node* }
%struct.buffer_head = type { i32 }
%struct.virtual_node = type { i32 }

@NO_BALANCING_NEEDED = common dso_local global i32 0, align 4
@CARRY_ON = common dso_local global i32 0, align 4
@DC_SIZE = common dso_local global i32 0, align 4
@KEY_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"vs-8235: trying to borrow for root\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tree_balance*, i32)* @dc_check_balance_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dc_check_balance_internal(%struct.tree_balance* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tree_balance*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.virtual_node*, align 8
  %7 = alloca %struct.buffer_head*, align 8
  %8 = alloca %struct.buffer_head*, align 8
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
  %23 = alloca i32, align 4
  store %struct.tree_balance* %0, %struct.tree_balance** %4, align 8
  store i32 %1, i32* %5, align 4
  %24 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %25 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %24, i32 0, i32 5
  %26 = load %struct.virtual_node*, %struct.virtual_node** %25, align 8
  store %struct.virtual_node* %26, %struct.virtual_node** %6, align 8
  %27 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %28 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* %5, align 4
  %31 = call %struct.buffer_head* @PATH_H_PBUFFER(i32 %29, i32 %30)
  store %struct.buffer_head* %31, %struct.buffer_head** %7, align 8
  %32 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %33 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* %5, align 4
  %36 = call %struct.buffer_head* @PATH_H_PPARENT(i32 %34, i32 %35)
  store %struct.buffer_head* %36, %struct.buffer_head** %8, align 8
  %37 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %38 = call i32 @MAX_CHILD_SIZE(%struct.buffer_head* %37)
  store i32 %38, i32* %9, align 4
  %39 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @create_virtual_node(%struct.tree_balance* %39, i32 %40)
  %42 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %43 = icmp ne %struct.buffer_head* %42, null
  br i1 %43, label %59, label %44

44:                                               ; preds = %2
  %45 = load %struct.virtual_node*, %struct.virtual_node** %6, align 8
  %46 = getelementptr inbounds %struct.virtual_node, %struct.virtual_node* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp sgt i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %44
  %50 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %51 = load i32, i32* %5, align 4
  %52 = call i32 @set_parameters(%struct.tree_balance* %50, i32 %51, i32 0, i32 0, i32 1, i32* null, i32 -1, i32 -1)
  %53 = load i32, i32* @NO_BALANCING_NEEDED, align 4
  store i32 %53, i32* %3, align 4
  br label %572

54:                                               ; preds = %44
  %55 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %56 = load i32, i32* %5, align 4
  %57 = call i32 @set_parameters(%struct.tree_balance* %55, i32 %56, i32 0, i32 0, i32 0, i32* null, i32 -1, i32 -1)
  %58 = load i32, i32* @CARRY_ON, align 4
  store i32 %58, i32* %3, align 4
  br label %572

59:                                               ; preds = %2
  %60 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %61 = load i32, i32* %5, align 4
  %62 = call i32 @get_parents(%struct.tree_balance* %60, i32 %61)
  store i32 %62, i32* %10, align 4
  %63 = load i32, i32* @CARRY_ON, align 4
  %64 = icmp ne i32 %62, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %59
  %66 = load i32, i32* %10, align 4
  store i32 %66, i32* %3, align 4
  br label %572

67:                                               ; preds = %59
  %68 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %69 = load i32, i32* %5, align 4
  %70 = call i32 @get_rfree(%struct.tree_balance* %68, i32 %69)
  store i32 %70, i32* %12, align 4
  %71 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %72 = load i32, i32* %5, align 4
  %73 = call i32 @get_lfree(%struct.tree_balance* %71, i32 %72)
  store i32 %73, i32* %11, align 4
  %74 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %75 = load i32, i32* %5, align 4
  %76 = load i32, i32* %11, align 4
  %77 = call i32 @check_left(%struct.tree_balance* %74, i32 %75, i32 %76)
  %78 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %79 = load i32, i32* %5, align 4
  %80 = load i32, i32* %12, align 4
  %81 = call i32 @check_right(%struct.tree_balance* %78, i32 %79, i32 %80)
  %82 = load %struct.virtual_node*, %struct.virtual_node** %6, align 8
  %83 = getelementptr inbounds %struct.virtual_node, %struct.virtual_node* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %86 = call i32 @MIN_NR_KEY(%struct.buffer_head* %85)
  %87 = icmp sge i32 %84, %86
  br i1 %87, label %88, label %276

88:                                               ; preds = %67
  %89 = load %struct.virtual_node*, %struct.virtual_node** %6, align 8
  %90 = getelementptr inbounds %struct.virtual_node, %struct.virtual_node* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %93 = call i32 @MIN_NR_KEY(%struct.buffer_head* %92)
  %94 = icmp eq i32 %91, %93
  br i1 %94, label %95, label %200

95:                                               ; preds = %88
  %96 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %97 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %96, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = load i32, i32* %5, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.virtual_node*, %struct.virtual_node** %6, align 8
  %104 = getelementptr inbounds %struct.virtual_node, %struct.virtual_node* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = add nsw i32 %105, 1
  %107 = icmp sge i32 %102, %106
  br i1 %107, label %108, label %150

108:                                              ; preds = %95
  %109 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %110 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %109, i32 0, i32 4
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* %5, align 4
  %113 = call i32 @PATH_H_B_ITEM_ORDER(i32 %111, i32 %112)
  store i32 %113, i32* %13, align 4
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %124

115:                                              ; preds = %108
  %116 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %117 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %116, i32 0, i32 3
  %118 = load %struct.buffer_head**, %struct.buffer_head*** %117, align 8
  %119 = load i32, i32* %5, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %118, i64 %120
  %122 = load %struct.buffer_head*, %struct.buffer_head** %121, align 8
  %123 = call i32 @B_NR_ITEMS(%struct.buffer_head* %122)
  br label %127

124:                                              ; preds = %108
  %125 = load i32, i32* %13, align 4
  %126 = sub nsw i32 %125, 1
  br label %127

127:                                              ; preds = %124, %115
  %128 = phi i32 [ %123, %115 ], [ %126, %124 ]
  store i32 %128, i32* %14, align 4
  %129 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %130 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %129, i32 0, i32 3
  %131 = load %struct.buffer_head**, %struct.buffer_head*** %130, align 8
  %132 = load i32, i32* %5, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %131, i64 %133
  %135 = load %struct.buffer_head*, %struct.buffer_head** %134, align 8
  %136 = load i32, i32* %14, align 4
  %137 = call i32 @B_N_CHILD(%struct.buffer_head* %135, i32 %136)
  %138 = call i32 @dc_size(i32 %137)
  %139 = load i32, i32* @DC_SIZE, align 4
  %140 = load i32, i32* @KEY_SIZE, align 4
  %141 = add nsw i32 %139, %140
  %142 = sdiv i32 %138, %141
  store i32 %142, i32* %13, align 4
  %143 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %144 = load i32, i32* %5, align 4
  %145 = load i32, i32* %13, align 4
  %146 = sub nsw i32 0, %145
  %147 = sub nsw i32 %146, 1
  %148 = call i32 @set_parameters(%struct.tree_balance* %143, i32 %144, i32 %147, i32 0, i32 0, i32* null, i32 -1, i32 -1)
  %149 = load i32, i32* @CARRY_ON, align 4
  store i32 %149, i32* %3, align 4
  br label %572

150:                                              ; preds = %95
  %151 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %152 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %151, i32 0, i32 1
  %153 = load i32*, i32** %152, align 8
  %154 = load i32, i32* %5, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i32, i32* %153, i64 %155
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.virtual_node*, %struct.virtual_node** %6, align 8
  %159 = getelementptr inbounds %struct.virtual_node, %struct.virtual_node* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = add nsw i32 %160, 1
  %162 = icmp sge i32 %157, %161
  br i1 %162, label %163, label %199

163:                                              ; preds = %150
  %164 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %165 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %164, i32 0, i32 4
  %166 = load i32, i32* %165, align 8
  %167 = load i32, i32* %5, align 4
  %168 = call i32 @PATH_H_B_ITEM_ORDER(i32 %166, i32 %167)
  store i32 %168, i32* %15, align 4
  %169 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %170 = call i32 @B_NR_ITEMS(%struct.buffer_head* %169)
  %171 = icmp eq i32 %168, %170
  br i1 %171, label %172, label %173

172:                                              ; preds = %163
  br label %176

173:                                              ; preds = %163
  %174 = load i32, i32* %15, align 4
  %175 = add nsw i32 %174, 1
  br label %176

176:                                              ; preds = %173, %172
  %177 = phi i32 [ 0, %172 ], [ %175, %173 ]
  store i32 %177, i32* %16, align 4
  %178 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %179 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %178, i32 0, i32 2
  %180 = load %struct.buffer_head**, %struct.buffer_head*** %179, align 8
  %181 = load i32, i32* %5, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %180, i64 %182
  %184 = load %struct.buffer_head*, %struct.buffer_head** %183, align 8
  %185 = load i32, i32* %16, align 4
  %186 = call i32 @B_N_CHILD(%struct.buffer_head* %184, i32 %185)
  %187 = call i32 @dc_size(i32 %186)
  %188 = load i32, i32* @DC_SIZE, align 4
  %189 = load i32, i32* @KEY_SIZE, align 4
  %190 = add nsw i32 %188, %189
  %191 = sdiv i32 %187, %190
  store i32 %191, i32* %15, align 4
  %192 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %193 = load i32, i32* %5, align 4
  %194 = load i32, i32* %15, align 4
  %195 = sub nsw i32 0, %194
  %196 = sub nsw i32 %195, 1
  %197 = call i32 @set_parameters(%struct.tree_balance* %192, i32 %193, i32 0, i32 %196, i32 0, i32* null, i32 -1, i32 -1)
  %198 = load i32, i32* @CARRY_ON, align 4
  store i32 %198, i32* %3, align 4
  br label %572

199:                                              ; preds = %150
  br label %200

200:                                              ; preds = %199, %88
  %201 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %202 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %201, i32 0, i32 1
  %203 = load i32*, i32** %202, align 8
  %204 = load i32, i32* %5, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i32, i32* %203, i64 %205
  %207 = load i32, i32* %206, align 4
  %208 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %209 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %208, i32 0, i32 0
  %210 = load i32*, i32** %209, align 8
  %211 = load i32, i32* %5, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds i32, i32* %210, i64 %212
  %214 = load i32, i32* %213, align 4
  %215 = add nsw i32 %207, %214
  %216 = load %struct.virtual_node*, %struct.virtual_node** %6, align 8
  %217 = getelementptr inbounds %struct.virtual_node, %struct.virtual_node* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 4
  %219 = add nsw i32 %218, 1
  %220 = icmp sge i32 %215, %219
  br i1 %220, label %221, label %271

221:                                              ; preds = %200
  %222 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %223 = call i32 @MAX_NR_KEY(%struct.buffer_head* %222)
  %224 = shl i32 %223, 1
  %225 = add nsw i32 %224, 2
  %226 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %227 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %226, i32 0, i32 0
  %228 = load i32*, i32** %227, align 8
  %229 = load i32, i32* %5, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds i32, i32* %228, i64 %230
  %232 = load i32, i32* %231, align 4
  %233 = sub nsw i32 %225, %232
  %234 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %235 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %234, i32 0, i32 1
  %236 = load i32*, i32** %235, align 8
  %237 = load i32, i32* %5, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds i32, i32* %236, i64 %238
  %240 = load i32, i32* %239, align 4
  %241 = sub nsw i32 %233, %240
  %242 = load %struct.virtual_node*, %struct.virtual_node** %6, align 8
  %243 = getelementptr inbounds %struct.virtual_node, %struct.virtual_node* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 4
  %245 = add nsw i32 %241, %244
  %246 = add nsw i32 %245, 1
  %247 = sdiv i32 %246, 2
  %248 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %249 = call i32 @MAX_NR_KEY(%struct.buffer_head* %248)
  %250 = add nsw i32 %249, 1
  %251 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %252 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %251, i32 0, i32 1
  %253 = load i32*, i32** %252, align 8
  %254 = load i32, i32* %5, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds i32, i32* %253, i64 %255
  %257 = load i32, i32* %256, align 4
  %258 = sub nsw i32 %250, %257
  %259 = sub nsw i32 %247, %258
  store i32 %259, i32* %17, align 4
  %260 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %261 = load i32, i32* %5, align 4
  %262 = load %struct.virtual_node*, %struct.virtual_node** %6, align 8
  %263 = getelementptr inbounds %struct.virtual_node, %struct.virtual_node* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 4
  %265 = add nsw i32 %264, 1
  %266 = load i32, i32* %17, align 4
  %267 = sub nsw i32 %265, %266
  %268 = load i32, i32* %17, align 4
  %269 = call i32 @set_parameters(%struct.tree_balance* %260, i32 %261, i32 %267, i32 %268, i32 0, i32* null, i32 -1, i32 -1)
  %270 = load i32, i32* @CARRY_ON, align 4
  store i32 %270, i32* %3, align 4
  br label %572

271:                                              ; preds = %200
  %272 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %273 = load i32, i32* %5, align 4
  %274 = call i32 @set_parameters(%struct.tree_balance* %272, i32 %273, i32 0, i32 0, i32 1, i32* null, i32 -1, i32 -1)
  %275 = load i32, i32* @NO_BALANCING_NEEDED, align 4
  store i32 %275, i32* %3, align 4
  br label %572

276:                                              ; preds = %67
  %277 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %278 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %277, i32 0, i32 0
  %279 = load i32*, i32** %278, align 8
  %280 = load i32, i32* %5, align 4
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds i32, i32* %279, i64 %281
  %283 = load i32, i32* %282, align 4
  %284 = load %struct.virtual_node*, %struct.virtual_node** %6, align 8
  %285 = getelementptr inbounds %struct.virtual_node, %struct.virtual_node* %284, i32 0, i32 0
  %286 = load i32, i32* %285, align 4
  %287 = add nsw i32 %286, 1
  %288 = icmp sge i32 %283, %287
  br i1 %288, label %289, label %359

289:                                              ; preds = %276
  %290 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %291 = load i32, i32* %5, align 4
  %292 = call i64 @is_left_neighbor_in_cache(%struct.tree_balance* %290, i32 %291)
  %293 = icmp ne i64 %292, 0
  br i1 %293, label %316, label %294

294:                                              ; preds = %289
  %295 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %296 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %295, i32 0, i32 1
  %297 = load i32*, i32** %296, align 8
  %298 = load i32, i32* %5, align 4
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds i32, i32* %297, i64 %299
  %301 = load i32, i32* %300, align 4
  %302 = load %struct.virtual_node*, %struct.virtual_node** %6, align 8
  %303 = getelementptr inbounds %struct.virtual_node, %struct.virtual_node* %302, i32 0, i32 0
  %304 = load i32, i32* %303, align 4
  %305 = add nsw i32 %304, 1
  %306 = icmp slt i32 %301, %305
  br i1 %306, label %316, label %307

307:                                              ; preds = %294
  %308 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %309 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %308, i32 0, i32 2
  %310 = load %struct.buffer_head**, %struct.buffer_head*** %309, align 8
  %311 = load i32, i32* %5, align 4
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %310, i64 %312
  %314 = load %struct.buffer_head*, %struct.buffer_head** %313, align 8
  %315 = icmp ne %struct.buffer_head* %314, null
  br i1 %315, label %358, label %316

316:                                              ; preds = %307, %294, %289
  %317 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %318 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %317, i32 0, i32 4
  %319 = load i32, i32* %318, align 8
  %320 = load i32, i32* %5, align 4
  %321 = call i32 @PATH_H_B_ITEM_ORDER(i32 %319, i32 %320)
  store i32 %321, i32* %18, align 4
  %322 = icmp eq i32 %321, 0
  br i1 %322, label %323, label %332

323:                                              ; preds = %316
  %324 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %325 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %324, i32 0, i32 3
  %326 = load %struct.buffer_head**, %struct.buffer_head*** %325, align 8
  %327 = load i32, i32* %5, align 4
  %328 = sext i32 %327 to i64
  %329 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %326, i64 %328
  %330 = load %struct.buffer_head*, %struct.buffer_head** %329, align 8
  %331 = call i32 @B_NR_ITEMS(%struct.buffer_head* %330)
  br label %335

332:                                              ; preds = %316
  %333 = load i32, i32* %18, align 4
  %334 = sub nsw i32 %333, 1
  br label %335

335:                                              ; preds = %332, %323
  %336 = phi i32 [ %331, %323 ], [ %334, %332 ]
  store i32 %336, i32* %19, align 4
  %337 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %338 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %337, i32 0, i32 3
  %339 = load %struct.buffer_head**, %struct.buffer_head*** %338, align 8
  %340 = load i32, i32* %5, align 4
  %341 = sext i32 %340 to i64
  %342 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %339, i64 %341
  %343 = load %struct.buffer_head*, %struct.buffer_head** %342, align 8
  %344 = load i32, i32* %19, align 4
  %345 = call i32 @B_N_CHILD(%struct.buffer_head* %343, i32 %344)
  %346 = call i32 @dc_size(i32 %345)
  %347 = load i32, i32* @DC_SIZE, align 4
  %348 = load i32, i32* @KEY_SIZE, align 4
  %349 = add nsw i32 %347, %348
  %350 = sdiv i32 %346, %349
  store i32 %350, i32* %18, align 4
  %351 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %352 = load i32, i32* %5, align 4
  %353 = load i32, i32* %18, align 4
  %354 = sub nsw i32 0, %353
  %355 = sub nsw i32 %354, 1
  %356 = call i32 @set_parameters(%struct.tree_balance* %351, i32 %352, i32 %355, i32 0, i32 0, i32* null, i32 -1, i32 -1)
  %357 = load i32, i32* @CARRY_ON, align 4
  store i32 %357, i32* %3, align 4
  br label %572

358:                                              ; preds = %307
  br label %359

359:                                              ; preds = %358, %276
  %360 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %361 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %360, i32 0, i32 1
  %362 = load i32*, i32** %361, align 8
  %363 = load i32, i32* %5, align 4
  %364 = sext i32 %363 to i64
  %365 = getelementptr inbounds i32, i32* %362, i64 %364
  %366 = load i32, i32* %365, align 4
  %367 = load %struct.virtual_node*, %struct.virtual_node** %6, align 8
  %368 = getelementptr inbounds %struct.virtual_node, %struct.virtual_node* %367, i32 0, i32 0
  %369 = load i32, i32* %368, align 4
  %370 = add nsw i32 %369, 1
  %371 = icmp sge i32 %366, %370
  br i1 %371, label %372, label %408

372:                                              ; preds = %359
  %373 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %374 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %373, i32 0, i32 4
  %375 = load i32, i32* %374, align 8
  %376 = load i32, i32* %5, align 4
  %377 = call i32 @PATH_H_B_ITEM_ORDER(i32 %375, i32 %376)
  store i32 %377, i32* %20, align 4
  %378 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %379 = call i32 @B_NR_ITEMS(%struct.buffer_head* %378)
  %380 = icmp eq i32 %377, %379
  br i1 %380, label %381, label %382

381:                                              ; preds = %372
  br label %385

382:                                              ; preds = %372
  %383 = load i32, i32* %20, align 4
  %384 = add nsw i32 %383, 1
  br label %385

385:                                              ; preds = %382, %381
  %386 = phi i32 [ 0, %381 ], [ %384, %382 ]
  store i32 %386, i32* %21, align 4
  %387 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %388 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %387, i32 0, i32 2
  %389 = load %struct.buffer_head**, %struct.buffer_head*** %388, align 8
  %390 = load i32, i32* %5, align 4
  %391 = sext i32 %390 to i64
  %392 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %389, i64 %391
  %393 = load %struct.buffer_head*, %struct.buffer_head** %392, align 8
  %394 = load i32, i32* %21, align 4
  %395 = call i32 @B_N_CHILD(%struct.buffer_head* %393, i32 %394)
  %396 = call i32 @dc_size(i32 %395)
  %397 = load i32, i32* @DC_SIZE, align 4
  %398 = load i32, i32* @KEY_SIZE, align 4
  %399 = add nsw i32 %397, %398
  %400 = sdiv i32 %396, %399
  store i32 %400, i32* %20, align 4
  %401 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %402 = load i32, i32* %5, align 4
  %403 = load i32, i32* %20, align 4
  %404 = sub nsw i32 0, %403
  %405 = sub nsw i32 %404, 1
  %406 = call i32 @set_parameters(%struct.tree_balance* %401, i32 %402, i32 0, i32 %405, i32 0, i32* null, i32 -1, i32 -1)
  %407 = load i32, i32* @CARRY_ON, align 4
  store i32 %407, i32* %3, align 4
  br label %572

408:                                              ; preds = %359
  %409 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %410 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %409, i32 0, i32 1
  %411 = load i32*, i32** %410, align 8
  %412 = load i32, i32* %5, align 4
  %413 = sext i32 %412 to i64
  %414 = getelementptr inbounds i32, i32* %411, i64 %413
  %415 = load i32, i32* %414, align 4
  %416 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %417 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %416, i32 0, i32 0
  %418 = load i32*, i32** %417, align 8
  %419 = load i32, i32* %5, align 4
  %420 = sext i32 %419 to i64
  %421 = getelementptr inbounds i32, i32* %418, i64 %420
  %422 = load i32, i32* %421, align 4
  %423 = add nsw i32 %415, %422
  %424 = load %struct.virtual_node*, %struct.virtual_node** %6, align 8
  %425 = getelementptr inbounds %struct.virtual_node, %struct.virtual_node* %424, i32 0, i32 0
  %426 = load i32, i32* %425, align 4
  %427 = add nsw i32 %426, 1
  %428 = icmp sge i32 %423, %427
  br i1 %428, label %429, label %479

429:                                              ; preds = %408
  %430 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %431 = call i32 @MAX_NR_KEY(%struct.buffer_head* %430)
  %432 = shl i32 %431, 1
  %433 = add nsw i32 %432, 2
  %434 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %435 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %434, i32 0, i32 0
  %436 = load i32*, i32** %435, align 8
  %437 = load i32, i32* %5, align 4
  %438 = sext i32 %437 to i64
  %439 = getelementptr inbounds i32, i32* %436, i64 %438
  %440 = load i32, i32* %439, align 4
  %441 = sub nsw i32 %433, %440
  %442 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %443 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %442, i32 0, i32 1
  %444 = load i32*, i32** %443, align 8
  %445 = load i32, i32* %5, align 4
  %446 = sext i32 %445 to i64
  %447 = getelementptr inbounds i32, i32* %444, i64 %446
  %448 = load i32, i32* %447, align 4
  %449 = sub nsw i32 %441, %448
  %450 = load %struct.virtual_node*, %struct.virtual_node** %6, align 8
  %451 = getelementptr inbounds %struct.virtual_node, %struct.virtual_node* %450, i32 0, i32 0
  %452 = load i32, i32* %451, align 4
  %453 = add nsw i32 %449, %452
  %454 = add nsw i32 %453, 1
  %455 = sdiv i32 %454, 2
  %456 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %457 = call i32 @MAX_NR_KEY(%struct.buffer_head* %456)
  %458 = add nsw i32 %457, 1
  %459 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %460 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %459, i32 0, i32 1
  %461 = load i32*, i32** %460, align 8
  %462 = load i32, i32* %5, align 4
  %463 = sext i32 %462 to i64
  %464 = getelementptr inbounds i32, i32* %461, i64 %463
  %465 = load i32, i32* %464, align 4
  %466 = sub nsw i32 %458, %465
  %467 = sub nsw i32 %455, %466
  store i32 %467, i32* %22, align 4
  %468 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %469 = load i32, i32* %5, align 4
  %470 = load %struct.virtual_node*, %struct.virtual_node** %6, align 8
  %471 = getelementptr inbounds %struct.virtual_node, %struct.virtual_node* %470, i32 0, i32 0
  %472 = load i32, i32* %471, align 4
  %473 = add nsw i32 %472, 1
  %474 = load i32, i32* %22, align 4
  %475 = sub nsw i32 %473, %474
  %476 = load i32, i32* %22, align 4
  %477 = call i32 @set_parameters(%struct.tree_balance* %468, i32 %469, i32 %475, i32 %476, i32 0, i32* null, i32 -1, i32 -1)
  %478 = load i32, i32* @CARRY_ON, align 4
  store i32 %478, i32* %3, align 4
  br label %572

479:                                              ; preds = %408
  %480 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %481 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %480, i32 0, i32 3
  %482 = load %struct.buffer_head**, %struct.buffer_head*** %481, align 8
  %483 = load i32, i32* %5, align 4
  %484 = sext i32 %483 to i64
  %485 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %482, i64 %484
  %486 = load %struct.buffer_head*, %struct.buffer_head** %485, align 8
  %487 = icmp ne %struct.buffer_head* %486, null
  br i1 %487, label %498, label %488

488:                                              ; preds = %479
  %489 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %490 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %489, i32 0, i32 2
  %491 = load %struct.buffer_head**, %struct.buffer_head*** %490, align 8
  %492 = load i32, i32* %5, align 4
  %493 = sext i32 %492 to i64
  %494 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %491, i64 %493
  %495 = load %struct.buffer_head*, %struct.buffer_head** %494, align 8
  %496 = icmp ne %struct.buffer_head* %495, null
  %497 = xor i1 %496, true
  br label %498

498:                                              ; preds = %488, %479
  %499 = phi i1 [ false, %479 ], [ %497, %488 ]
  %500 = zext i1 %499 to i32
  %501 = call i32 @RFALSE(i32 %500, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %502 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %503 = load i32, i32* %5, align 4
  %504 = call i64 @is_left_neighbor_in_cache(%struct.tree_balance* %502, i32 %503)
  %505 = icmp ne i64 %504, 0
  br i1 %505, label %515, label %506

506:                                              ; preds = %498
  %507 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %508 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %507, i32 0, i32 2
  %509 = load %struct.buffer_head**, %struct.buffer_head*** %508, align 8
  %510 = load i32, i32* %5, align 4
  %511 = sext i32 %510 to i64
  %512 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %509, i64 %511
  %513 = load %struct.buffer_head*, %struct.buffer_head** %512, align 8
  %514 = icmp ne %struct.buffer_head* %513, null
  br i1 %514, label %544, label %515

515:                                              ; preds = %506, %498
  %516 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %517 = call i32 @MAX_NR_KEY(%struct.buffer_head* %516)
  %518 = add nsw i32 %517, 1
  %519 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %520 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %519, i32 0, i32 0
  %521 = load i32*, i32** %520, align 8
  %522 = load i32, i32* %5, align 4
  %523 = sext i32 %522 to i64
  %524 = getelementptr inbounds i32, i32* %521, i64 %523
  %525 = load i32, i32* %524, align 4
  %526 = sub nsw i32 %518, %525
  %527 = load %struct.virtual_node*, %struct.virtual_node** %6, align 8
  %528 = getelementptr inbounds %struct.virtual_node, %struct.virtual_node* %527, i32 0, i32 0
  %529 = load i32, i32* %528, align 4
  %530 = add nsw i32 %526, %529
  %531 = add nsw i32 %530, 1
  %532 = sdiv i32 %531, 2
  %533 = load %struct.virtual_node*, %struct.virtual_node** %6, align 8
  %534 = getelementptr inbounds %struct.virtual_node, %struct.virtual_node* %533, i32 0, i32 0
  %535 = load i32, i32* %534, align 4
  %536 = add nsw i32 %535, 1
  %537 = sub nsw i32 %532, %536
  store i32 %537, i32* %23, align 4
  %538 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %539 = load i32, i32* %5, align 4
  %540 = load i32, i32* %23, align 4
  %541 = sub nsw i32 0, %540
  %542 = call i32 @set_parameters(%struct.tree_balance* %538, i32 %539, i32 %541, i32 0, i32 1, i32* null, i32 -1, i32 -1)
  %543 = load i32, i32* @CARRY_ON, align 4
  store i32 %543, i32* %3, align 4
  br label %572

544:                                              ; preds = %506
  %545 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %546 = load i32, i32* %5, align 4
  %547 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %548 = call i32 @MAX_NR_KEY(%struct.buffer_head* %547)
  %549 = add nsw i32 %548, 1
  %550 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %551 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %550, i32 0, i32 1
  %552 = load i32*, i32** %551, align 8
  %553 = load i32, i32* %5, align 4
  %554 = sext i32 %553 to i64
  %555 = getelementptr inbounds i32, i32* %552, i64 %554
  %556 = load i32, i32* %555, align 4
  %557 = sub nsw i32 %549, %556
  %558 = load %struct.virtual_node*, %struct.virtual_node** %6, align 8
  %559 = getelementptr inbounds %struct.virtual_node, %struct.virtual_node* %558, i32 0, i32 0
  %560 = load i32, i32* %559, align 4
  %561 = add nsw i32 %557, %560
  %562 = add nsw i32 %561, 1
  %563 = sdiv i32 %562, 2
  %564 = load %struct.virtual_node*, %struct.virtual_node** %6, align 8
  %565 = getelementptr inbounds %struct.virtual_node, %struct.virtual_node* %564, i32 0, i32 0
  %566 = load i32, i32* %565, align 4
  %567 = add nsw i32 %566, 1
  %568 = sub nsw i32 %563, %567
  %569 = sub nsw i32 0, %568
  %570 = call i32 @set_parameters(%struct.tree_balance* %545, i32 %546, i32 0, i32 %569, i32 1, i32* null, i32 -1, i32 -1)
  %571 = load i32, i32* @CARRY_ON, align 4
  store i32 %571, i32* %3, align 4
  br label %572

572:                                              ; preds = %544, %515, %429, %385, %335, %271, %221, %176, %127, %65, %54, %49
  %573 = load i32, i32* %3, align 4
  ret i32 %573
}

declare dso_local %struct.buffer_head* @PATH_H_PBUFFER(i32, i32) #1

declare dso_local %struct.buffer_head* @PATH_H_PPARENT(i32, i32) #1

declare dso_local i32 @MAX_CHILD_SIZE(%struct.buffer_head*) #1

declare dso_local i32 @create_virtual_node(%struct.tree_balance*, i32) #1

declare dso_local i32 @set_parameters(%struct.tree_balance*, i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @get_parents(%struct.tree_balance*, i32) #1

declare dso_local i32 @get_rfree(%struct.tree_balance*, i32) #1

declare dso_local i32 @get_lfree(%struct.tree_balance*, i32) #1

declare dso_local i32 @check_left(%struct.tree_balance*, i32, i32) #1

declare dso_local i32 @check_right(%struct.tree_balance*, i32, i32) #1

declare dso_local i32 @MIN_NR_KEY(%struct.buffer_head*) #1

declare dso_local i32 @PATH_H_B_ITEM_ORDER(i32, i32) #1

declare dso_local i32 @B_NR_ITEMS(%struct.buffer_head*) #1

declare dso_local i32 @dc_size(i32) #1

declare dso_local i32 @B_N_CHILD(%struct.buffer_head*, i32) #1

declare dso_local i32 @MAX_NR_KEY(%struct.buffer_head*) #1

declare dso_local i64 @is_left_neighbor_in_cache(%struct.tree_balance*, i32) #1

declare dso_local i32 @RFALSE(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
