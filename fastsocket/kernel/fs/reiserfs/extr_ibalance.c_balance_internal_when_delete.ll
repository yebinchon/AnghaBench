; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_ibalance.c_balance_internal_when_delete.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_ibalance.c_balance_internal_when_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tree_balance = type { i32*, i32*, i32*, i32*, i32, %struct.buffer_head**, %struct.buffer_head**, i32 }
%struct.buffer_head = type { i32 }
%struct.buffer_info = type { i32, i32, %struct.buffer_head*, %struct.tree_balance* }
%struct.TYPE_2__ = type { i32 }

@DC_SIZE = common dso_local global i64 0, align 8
@KEY_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [39 x i8] c"tb->blknum[%d]=%d when insert_size < 0\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"buffer must have only 0 keys (%d)\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"root has parent (%p)\00", align 1
@.str.3 = private unnamed_addr constant [53 x i8] c"invalid tb->rnum[%d]==%d when joining S[h] with L[h]\00", align 1
@INTERNAL_SHIFT_FROM_S_TO_L = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [53 x i8] c"invalid tb->lnum[%d]==%d when joining S[h] with R[h]\00", align 1
@INTERNAL_SHIFT_FROM_S_TO_R = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [45 x i8] c"wrong tb->rnum[%d]==%d when borrow from L[h]\00", align 1
@INTERNAL_SHIFT_FROM_L_TO_S = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [47 x i8] c"invalid tb->lnum[%d]==%d when borrow from R[h]\00", align 1
@INTERNAL_SHIFT_FROM_R_TO_S = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [96 x i8] c"invalid tb->lnum[%d]==%d or tb->rnum[%d]==%d when S[h](item number == %d) is split between them\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"ibalance-2\00", align 1
@.str.9 = private unnamed_addr constant [48 x i8] c"unexpected tb->lnum[%d]==%d or tb->rnum[%d]==%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tree_balance*, i32, i32)* @balance_internal_when_delete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @balance_internal_when_delete(%struct.tree_balance* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.tree_balance*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.buffer_head*, align 8
  %10 = alloca %struct.buffer_info, align 8
  %11 = alloca %struct.buffer_head*, align 8
  store %struct.tree_balance* %0, %struct.tree_balance** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %13 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %12, i32 0, i32 7
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* %5, align 4
  %16 = call %struct.buffer_head* @PATH_H_PBUFFER(i32 %14, i32 %15)
  store %struct.buffer_head* %16, %struct.buffer_head** %9, align 8
  %17 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %18 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = load i64, i64* @DC_SIZE, align 8
  %25 = load i64, i64* @KEY_SIZE, align 8
  %26 = add nsw i64 %24, %25
  %27 = trunc i64 %26 to i32
  %28 = sdiv i32 %23, %27
  store i32 %28, i32* %7, align 4
  %29 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %30 = getelementptr inbounds %struct.buffer_info, %struct.buffer_info* %10, i32 0, i32 3
  store %struct.tree_balance* %29, %struct.tree_balance** %30, align 8
  %31 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %32 = getelementptr inbounds %struct.buffer_info, %struct.buffer_info* %10, i32 0, i32 2
  store %struct.buffer_head* %31, %struct.buffer_head** %32, align 8
  %33 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %34 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %33, i32 0, i32 7
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @PATH_H_PPARENT(i32 %35, i32 %36)
  %38 = getelementptr inbounds %struct.buffer_info, %struct.buffer_info* %10, i32 0, i32 0
  store i32 %37, i32* %38, align 8
  %39 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %40 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %39, i32 0, i32 7
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* %5, align 4
  %43 = add nsw i32 %42, 1
  %44 = call i32 @PATH_H_POSITION(i32 %41, i32 %43)
  %45 = getelementptr inbounds %struct.buffer_info, %struct.buffer_info* %10, i32 0, i32 1
  store i32 %44, i32* %45, align 4
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* %7, align 4
  %48 = sub nsw i32 0, %47
  %49 = call i32 @internal_delete_childs(%struct.buffer_info* %10, i32 %46, i32 %48)
  %50 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %51 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %5, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = icmp sgt i32 %56, 1
  %58 = zext i1 %57 to i32
  %59 = load i32, i32* %5, align 4
  %60 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %61 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %5, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = call i32 (i32, i8*, i32, ...) @RFALSE(i32 %58, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %59, i32 %66)
  %68 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %69 = call i32 @B_NR_ITEMS(%struct.buffer_head* %68)
  store i32 %69, i32* %8, align 4
  %70 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %71 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %70, i32 0, i32 2
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* %5, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %190

78:                                               ; preds = %3
  %79 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %80 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %79, i32 0, i32 3
  %81 = load i32*, i32** %80, align 8
  %82 = load i32, i32* %5, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %190

87:                                               ; preds = %78
  %88 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %89 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %88, i32 0, i32 1
  %90 = load i32*, i32** %89, align 8
  %91 = load i32, i32* %5, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %189

96:                                               ; preds = %87
  %97 = load i32, i32* %8, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %107, label %99

99:                                               ; preds = %96
  %100 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %101 = call i64 @B_FREE_SPACE(%struct.buffer_head* %100)
  %102 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %103 = call i64 @MAX_CHILD_SIZE(%struct.buffer_head* %102)
  %104 = load i64, i64* @DC_SIZE, align 8
  %105 = sub nsw i64 %103, %104
  %106 = icmp ne i64 %101, %105
  br label %107

107:                                              ; preds = %99, %96
  %108 = phi i1 [ true, %96 ], [ %106, %99 ]
  %109 = zext i1 %108 to i32
  %110 = load i32, i32* %8, align 4
  %111 = call i32 (i32, i8*, i32, ...) @RFALSE(i32 %109, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %110)
  %112 = getelementptr inbounds %struct.buffer_info, %struct.buffer_info* %10, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = getelementptr inbounds %struct.buffer_info, %struct.buffer_info* %10, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = call i32 (i32, i8*, i32, ...) @RFALSE(i32 %113, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %115)
  %117 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %118 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %117, i32 0, i32 6
  %119 = load %struct.buffer_head**, %struct.buffer_head*** %118, align 8
  %120 = load i32, i32* %5, align 4
  %121 = sub nsw i32 %120, 1
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %119, i64 %122
  %124 = load %struct.buffer_head*, %struct.buffer_head** %123, align 8
  %125 = icmp ne %struct.buffer_head* %124, null
  br i1 %125, label %126, label %137

126:                                              ; preds = %107
  %127 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %128 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %127, i32 0, i32 6
  %129 = load %struct.buffer_head**, %struct.buffer_head*** %128, align 8
  %130 = load i32, i32* %5, align 4
  %131 = sub nsw i32 %130, 1
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %129, i64 %132
  %134 = load %struct.buffer_head*, %struct.buffer_head** %133, align 8
  %135 = call i32 @B_NR_ITEMS(%struct.buffer_head* %134)
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %146, label %137

137:                                              ; preds = %126, %107
  %138 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %139 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %138, i32 0, i32 5
  %140 = load %struct.buffer_head**, %struct.buffer_head*** %139, align 8
  %141 = load i32, i32* %5, align 4
  %142 = sub nsw i32 %141, 1
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %140, i64 %143
  %145 = load %struct.buffer_head*, %struct.buffer_head** %144, align 8
  store %struct.buffer_head* %145, %struct.buffer_head** %11, align 8
  br label %155

146:                                              ; preds = %126
  %147 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %148 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %147, i32 0, i32 6
  %149 = load %struct.buffer_head**, %struct.buffer_head*** %148, align 8
  %150 = load i32, i32* %5, align 4
  %151 = sub nsw i32 %150, 1
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %149, i64 %152
  %154 = load %struct.buffer_head*, %struct.buffer_head** %153, align 8
  store %struct.buffer_head* %154, %struct.buffer_head** %11, align 8
  br label %155

155:                                              ; preds = %146, %137
  %156 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %157 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %156, i32 0, i32 4
  %158 = load i32, i32* %157, align 8
  %159 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %160 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = call i32 @PUT_SB_ROOT_BLOCK(i32 %158, i32 %161)
  %163 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %164 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %163, i32 0, i32 4
  %165 = load i32, i32* %164, align 8
  %166 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %167 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %166, i32 0, i32 4
  %168 = load i32, i32* %167, align 8
  %169 = call i64 @SB_TREE_HEIGHT(i32 %168)
  %170 = sub nsw i64 %169, 1
  %171 = call i32 @PUT_SB_TREE_HEIGHT(i32 %165, i64 %170)
  %172 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %173 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %174 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %173, i32 0, i32 4
  %175 = load i32, i32* %174, align 8
  %176 = call %struct.TYPE_2__* @REISERFS_SB(i32 %175)
  %177 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = call i32 @do_balance_mark_sb_dirty(%struct.tree_balance* %172, i32 %178, i32 1)
  %180 = load i32, i32* %5, align 4
  %181 = icmp sgt i32 %180, 1
  br i1 %181, label %182, label %185

182:                                              ; preds = %155
  %183 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %184 = call i32 @check_internal(%struct.buffer_head* %183)
  br label %185

185:                                              ; preds = %182, %155
  %186 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %187 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %188 = call i32 @reiserfs_invalidate_buffer(%struct.tree_balance* %186, %struct.buffer_head* %187)
  br label %486

189:                                              ; preds = %87
  br label %486

190:                                              ; preds = %78, %3
  %191 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %192 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %191, i32 0, i32 6
  %193 = load %struct.buffer_head**, %struct.buffer_head*** %192, align 8
  %194 = load i32, i32* %5, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %193, i64 %195
  %197 = load %struct.buffer_head*, %struct.buffer_head** %196, align 8
  %198 = icmp ne %struct.buffer_head* %197, null
  br i1 %198, label %199, label %246

199:                                              ; preds = %190
  %200 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %201 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %200, i32 0, i32 2
  %202 = load i32*, i32** %201, align 8
  %203 = load i32, i32* %5, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds i32, i32* %202, i64 %204
  %206 = load i32, i32* %205, align 4
  %207 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %208 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %207, i32 0, i32 6
  %209 = load %struct.buffer_head**, %struct.buffer_head*** %208, align 8
  %210 = load i32, i32* %5, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %209, i64 %211
  %213 = load %struct.buffer_head*, %struct.buffer_head** %212, align 8
  %214 = call i32 @B_NR_ITEMS(%struct.buffer_head* %213)
  %215 = sub nsw i32 0, %214
  %216 = sub nsw i32 %215, 1
  %217 = icmp eq i32 %206, %216
  br i1 %217, label %218, label %246

218:                                              ; preds = %199
  %219 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %220 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %219, i32 0, i32 3
  %221 = load i32*, i32** %220, align 8
  %222 = load i32, i32* %5, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds i32, i32* %221, i64 %223
  %225 = load i32, i32* %224, align 4
  %226 = icmp ne i32 %225, 0
  %227 = zext i1 %226 to i32
  %228 = load i32, i32* %5, align 4
  %229 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %230 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %229, i32 0, i32 3
  %231 = load i32*, i32** %230, align 8
  %232 = load i32, i32* %5, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds i32, i32* %231, i64 %233
  %235 = load i32, i32* %234, align 4
  %236 = call i32 (i32, i8*, i32, ...) @RFALSE(i32 %227, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0), i32 %228, i32 %235)
  %237 = load i32, i32* @INTERNAL_SHIFT_FROM_S_TO_L, align 4
  %238 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %239 = load i32, i32* %5, align 4
  %240 = load i32, i32* %8, align 4
  %241 = add nsw i32 %240, 1
  %242 = call i32 @internal_shift_left(i32 %237, %struct.tree_balance* %238, i32 %239, i32 %241)
  %243 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %244 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %245 = call i32 @reiserfs_invalidate_buffer(%struct.tree_balance* %243, %struct.buffer_head* %244)
  br label %486

246:                                              ; preds = %199, %190
  %247 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %248 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %247, i32 0, i32 5
  %249 = load %struct.buffer_head**, %struct.buffer_head*** %248, align 8
  %250 = load i32, i32* %5, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %249, i64 %251
  %253 = load %struct.buffer_head*, %struct.buffer_head** %252, align 8
  %254 = icmp ne %struct.buffer_head* %253, null
  br i1 %254, label %255, label %302

255:                                              ; preds = %246
  %256 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %257 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %256, i32 0, i32 3
  %258 = load i32*, i32** %257, align 8
  %259 = load i32, i32* %5, align 4
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds i32, i32* %258, i64 %260
  %262 = load i32, i32* %261, align 4
  %263 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %264 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %263, i32 0, i32 5
  %265 = load %struct.buffer_head**, %struct.buffer_head*** %264, align 8
  %266 = load i32, i32* %5, align 4
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %265, i64 %267
  %269 = load %struct.buffer_head*, %struct.buffer_head** %268, align 8
  %270 = call i32 @B_NR_ITEMS(%struct.buffer_head* %269)
  %271 = sub nsw i32 0, %270
  %272 = sub nsw i32 %271, 1
  %273 = icmp eq i32 %262, %272
  br i1 %273, label %274, label %302

274:                                              ; preds = %255
  %275 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %276 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %275, i32 0, i32 2
  %277 = load i32*, i32** %276, align 8
  %278 = load i32, i32* %5, align 4
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds i32, i32* %277, i64 %279
  %281 = load i32, i32* %280, align 4
  %282 = icmp ne i32 %281, 0
  %283 = zext i1 %282 to i32
  %284 = load i32, i32* %5, align 4
  %285 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %286 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %285, i32 0, i32 2
  %287 = load i32*, i32** %286, align 8
  %288 = load i32, i32* %5, align 4
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds i32, i32* %287, i64 %289
  %291 = load i32, i32* %290, align 4
  %292 = call i32 (i32, i8*, i32, ...) @RFALSE(i32 %283, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.4, i64 0, i64 0), i32 %284, i32 %291)
  %293 = load i32, i32* @INTERNAL_SHIFT_FROM_S_TO_R, align 4
  %294 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %295 = load i32, i32* %5, align 4
  %296 = load i32, i32* %8, align 4
  %297 = add nsw i32 %296, 1
  %298 = call i32 @internal_shift_right(i32 %293, %struct.tree_balance* %294, i32 %295, i32 %297)
  %299 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %300 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %301 = call i32 @reiserfs_invalidate_buffer(%struct.tree_balance* %299, %struct.buffer_head* %300)
  br label %486

302:                                              ; preds = %255, %246
  %303 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %304 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %303, i32 0, i32 2
  %305 = load i32*, i32** %304, align 8
  %306 = load i32, i32* %5, align 4
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds i32, i32* %305, i64 %307
  %309 = load i32, i32* %308, align 4
  %310 = icmp slt i32 %309, 0
  br i1 %310, label %311, label %342

311:                                              ; preds = %302
  %312 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %313 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %312, i32 0, i32 3
  %314 = load i32*, i32** %313, align 8
  %315 = load i32, i32* %5, align 4
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds i32, i32* %314, i64 %316
  %318 = load i32, i32* %317, align 4
  %319 = icmp ne i32 %318, 0
  %320 = zext i1 %319 to i32
  %321 = load i32, i32* %5, align 4
  %322 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %323 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %322, i32 0, i32 3
  %324 = load i32*, i32** %323, align 8
  %325 = load i32, i32* %5, align 4
  %326 = sext i32 %325 to i64
  %327 = getelementptr inbounds i32, i32* %324, i64 %326
  %328 = load i32, i32* %327, align 4
  %329 = call i32 (i32, i8*, i32, ...) @RFALSE(i32 %320, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0), i32 %321, i32 %328)
  %330 = load i32, i32* @INTERNAL_SHIFT_FROM_L_TO_S, align 4
  %331 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %332 = load i32, i32* %5, align 4
  %333 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %334 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %333, i32 0, i32 2
  %335 = load i32*, i32** %334, align 8
  %336 = load i32, i32* %5, align 4
  %337 = sext i32 %336 to i64
  %338 = getelementptr inbounds i32, i32* %335, i64 %337
  %339 = load i32, i32* %338, align 4
  %340 = sub nsw i32 0, %339
  %341 = call i32 @internal_shift_right(i32 %330, %struct.tree_balance* %331, i32 %332, i32 %340)
  br label %486

342:                                              ; preds = %302
  %343 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %344 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %343, i32 0, i32 3
  %345 = load i32*, i32** %344, align 8
  %346 = load i32, i32* %5, align 4
  %347 = sext i32 %346 to i64
  %348 = getelementptr inbounds i32, i32* %345, i64 %347
  %349 = load i32, i32* %348, align 4
  %350 = icmp slt i32 %349, 0
  br i1 %350, label %351, label %382

351:                                              ; preds = %342
  %352 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %353 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %352, i32 0, i32 2
  %354 = load i32*, i32** %353, align 8
  %355 = load i32, i32* %5, align 4
  %356 = sext i32 %355 to i64
  %357 = getelementptr inbounds i32, i32* %354, i64 %356
  %358 = load i32, i32* %357, align 4
  %359 = icmp ne i32 %358, 0
  %360 = zext i1 %359 to i32
  %361 = load i32, i32* %5, align 4
  %362 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %363 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %362, i32 0, i32 2
  %364 = load i32*, i32** %363, align 8
  %365 = load i32, i32* %5, align 4
  %366 = sext i32 %365 to i64
  %367 = getelementptr inbounds i32, i32* %364, i64 %366
  %368 = load i32, i32* %367, align 4
  %369 = call i32 (i32, i8*, i32, ...) @RFALSE(i32 %360, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.6, i64 0, i64 0), i32 %361, i32 %368)
  %370 = load i32, i32* @INTERNAL_SHIFT_FROM_R_TO_S, align 4
  %371 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %372 = load i32, i32* %5, align 4
  %373 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %374 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %373, i32 0, i32 3
  %375 = load i32*, i32** %374, align 8
  %376 = load i32, i32* %5, align 4
  %377 = sext i32 %376 to i64
  %378 = getelementptr inbounds i32, i32* %375, i64 %377
  %379 = load i32, i32* %378, align 4
  %380 = sub nsw i32 0, %379
  %381 = call i32 @internal_shift_left(i32 %370, %struct.tree_balance* %371, i32 %372, i32 %380)
  br label %486

382:                                              ; preds = %342
  %383 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %384 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %383, i32 0, i32 2
  %385 = load i32*, i32** %384, align 8
  %386 = load i32, i32* %5, align 4
  %387 = sext i32 %386 to i64
  %388 = getelementptr inbounds i32, i32* %385, i64 %387
  %389 = load i32, i32* %388, align 4
  %390 = icmp sgt i32 %389, 0
  br i1 %390, label %391, label %465

391:                                              ; preds = %382
  %392 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %393 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %392, i32 0, i32 3
  %394 = load i32*, i32** %393, align 8
  %395 = load i32, i32* %5, align 4
  %396 = sext i32 %395 to i64
  %397 = getelementptr inbounds i32, i32* %394, i64 %396
  %398 = load i32, i32* %397, align 4
  %399 = icmp eq i32 %398, 0
  br i1 %399, label %419, label %400

400:                                              ; preds = %391
  %401 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %402 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %401, i32 0, i32 2
  %403 = load i32*, i32** %402, align 8
  %404 = load i32, i32* %5, align 4
  %405 = sext i32 %404 to i64
  %406 = getelementptr inbounds i32, i32* %403, i64 %405
  %407 = load i32, i32* %406, align 4
  %408 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %409 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %408, i32 0, i32 3
  %410 = load i32*, i32** %409, align 8
  %411 = load i32, i32* %5, align 4
  %412 = sext i32 %411 to i64
  %413 = getelementptr inbounds i32, i32* %410, i64 %412
  %414 = load i32, i32* %413, align 4
  %415 = add nsw i32 %407, %414
  %416 = load i32, i32* %8, align 4
  %417 = add nsw i32 %416, 1
  %418 = icmp ne i32 %415, %417
  br label %419

419:                                              ; preds = %400, %391
  %420 = phi i1 [ true, %391 ], [ %418, %400 ]
  %421 = zext i1 %420 to i32
  %422 = load i32, i32* %5, align 4
  %423 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %424 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %423, i32 0, i32 2
  %425 = load i32*, i32** %424, align 8
  %426 = load i32, i32* %5, align 4
  %427 = sext i32 %426 to i64
  %428 = getelementptr inbounds i32, i32* %425, i64 %427
  %429 = load i32, i32* %428, align 4
  %430 = load i32, i32* %5, align 4
  %431 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %432 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %431, i32 0, i32 3
  %433 = load i32*, i32** %432, align 8
  %434 = load i32, i32* %5, align 4
  %435 = sext i32 %434 to i64
  %436 = getelementptr inbounds i32, i32* %433, i64 %435
  %437 = load i32, i32* %436, align 4
  %438 = load i32, i32* %8, align 4
  %439 = call i32 (i32, i8*, i32, ...) @RFALSE(i32 %421, i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.7, i64 0, i64 0), i32 %422, i32 %429, i32 %430, i32 %437, i32 %438)
  %440 = load i32, i32* @INTERNAL_SHIFT_FROM_S_TO_L, align 4
  %441 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %442 = load i32, i32* %5, align 4
  %443 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %444 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %443, i32 0, i32 2
  %445 = load i32*, i32** %444, align 8
  %446 = load i32, i32* %5, align 4
  %447 = sext i32 %446 to i64
  %448 = getelementptr inbounds i32, i32* %445, i64 %447
  %449 = load i32, i32* %448, align 4
  %450 = call i32 @internal_shift_left(i32 %440, %struct.tree_balance* %441, i32 %442, i32 %449)
  %451 = load i32, i32* @INTERNAL_SHIFT_FROM_S_TO_R, align 4
  %452 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %453 = load i32, i32* %5, align 4
  %454 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %455 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %454, i32 0, i32 3
  %456 = load i32*, i32** %455, align 8
  %457 = load i32, i32* %5, align 4
  %458 = sext i32 %457 to i64
  %459 = getelementptr inbounds i32, i32* %456, i64 %458
  %460 = load i32, i32* %459, align 4
  %461 = call i32 @internal_shift_right(i32 %451, %struct.tree_balance* %452, i32 %453, i32 %460)
  %462 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %463 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %464 = call i32 @reiserfs_invalidate_buffer(%struct.tree_balance* %462, %struct.buffer_head* %463)
  br label %486

465:                                              ; preds = %382
  %466 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %467 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %466, i32 0, i32 4
  %468 = load i32, i32* %467, align 8
  %469 = load i32, i32* %5, align 4
  %470 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %471 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %470, i32 0, i32 2
  %472 = load i32*, i32** %471, align 8
  %473 = load i32, i32* %5, align 4
  %474 = sext i32 %473 to i64
  %475 = getelementptr inbounds i32, i32* %472, i64 %474
  %476 = load i32, i32* %475, align 4
  %477 = load i32, i32* %5, align 4
  %478 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %479 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %478, i32 0, i32 3
  %480 = load i32*, i32** %479, align 8
  %481 = load i32, i32* %5, align 4
  %482 = sext i32 %481 to i64
  %483 = getelementptr inbounds i32, i32* %480, i64 %482
  %484 = load i32, i32* %483, align 4
  %485 = call i32 @reiserfs_panic(i32 %468, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.9, i64 0, i64 0), i32 %469, i32 %476, i32 %477, i32 %484)
  br label %486

486:                                              ; preds = %465, %419, %351, %311, %274, %218, %189, %185
  ret void
}

declare dso_local %struct.buffer_head* @PATH_H_PBUFFER(i32, i32) #1

declare dso_local i32 @PATH_H_PPARENT(i32, i32) #1

declare dso_local i32 @PATH_H_POSITION(i32, i32) #1

declare dso_local i32 @internal_delete_childs(%struct.buffer_info*, i32, i32) #1

declare dso_local i32 @RFALSE(i32, i8*, i32, ...) #1

declare dso_local i32 @B_NR_ITEMS(%struct.buffer_head*) #1

declare dso_local i64 @B_FREE_SPACE(%struct.buffer_head*) #1

declare dso_local i64 @MAX_CHILD_SIZE(%struct.buffer_head*) #1

declare dso_local i32 @PUT_SB_ROOT_BLOCK(i32, i32) #1

declare dso_local i32 @PUT_SB_TREE_HEIGHT(i32, i64) #1

declare dso_local i64 @SB_TREE_HEIGHT(i32) #1

declare dso_local i32 @do_balance_mark_sb_dirty(%struct.tree_balance*, i32, i32) #1

declare dso_local %struct.TYPE_2__* @REISERFS_SB(i32) #1

declare dso_local i32 @check_internal(%struct.buffer_head*) #1

declare dso_local i32 @reiserfs_invalidate_buffer(%struct.tree_balance*, %struct.buffer_head*) #1

declare dso_local i32 @internal_shift_left(i32, %struct.tree_balance*, i32, i32) #1

declare dso_local i32 @internal_shift_right(i32, %struct.tree_balance*, i32, i32) #1

declare dso_local i32 @reiserfs_panic(i32, i8*, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
