; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_fix_node.c_wait_tb_buffers_until_unlocked.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_fix_node.c_wait_tb_buffers_until_unlocked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tree_balance = type { i32, %struct.buffer_head**, %struct.buffer_head**, %struct.buffer_head**, %struct.buffer_head**, i64*, %struct.buffer_head**, %struct.buffer_head**, %struct.buffer_head**, i64*, i64*, %struct.TYPE_3__* }
%struct.buffer_head = type { i32 }
%struct.TYPE_3__ = type { i32 }

@ILLEGAL_PATH_ELEMENT_OFFSET = common dso_local global i32 0, align 4
@MAX_HEIGHT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"FL\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"CFL\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"R\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"FR\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"CFR\00", align 1
@MAX_FEB_SIZE = common dso_local global i32 0, align 4
@REPEAT_SEARCH = common dso_local global i32 0, align 4
@CARRY_ON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tree_balance*)* @wait_tb_buffers_until_unlocked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wait_tb_buffers_until_unlocked(%struct.tree_balance* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tree_balance*, align 8
  %4 = alloca %struct.buffer_head*, align 8
  %5 = alloca i32, align 4
  store %struct.tree_balance* %0, %struct.tree_balance** %3, align 8
  br label %6

6:                                                ; preds = %424, %1
  store %struct.buffer_head* null, %struct.buffer_head** %4, align 8
  %7 = load %struct.tree_balance*, %struct.tree_balance** %3, align 8
  %8 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %7, i32 0, i32 11
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %5, align 4
  br label %12

12:                                               ; preds = %47, %6
  %13 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %14 = icmp ne %struct.buffer_head* %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %12
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @ILLEGAL_PATH_ELEMENT_OFFSET, align 4
  %18 = icmp sgt i32 %16, %17
  br label %19

19:                                               ; preds = %15, %12
  %20 = phi i1 [ false, %12 ], [ %18, %15 ]
  br i1 %20, label %21, label %50

21:                                               ; preds = %19
  %22 = load %struct.tree_balance*, %struct.tree_balance** %3, align 8
  %23 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %22, i32 0, i32 11
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = load i32, i32* %5, align 4
  %26 = call %struct.buffer_head* @PATH_OFFSET_PBUFFER(%struct.TYPE_3__* %24, i32 %25)
  %27 = icmp ne %struct.buffer_head* %26, null
  br i1 %27, label %28, label %46

28:                                               ; preds = %21
  %29 = load %struct.tree_balance*, %struct.tree_balance** %3, align 8
  %30 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.tree_balance*, %struct.tree_balance** %3, align 8
  %33 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %32, i32 0, i32 11
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = load i32, i32* %5, align 4
  %36 = call %struct.buffer_head* @PATH_OFFSET_PBUFFER(%struct.TYPE_3__* %34, i32 %35)
  %37 = call i32 @clear_all_dirty_bits(i32 %31, %struct.buffer_head* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %45, label %39

39:                                               ; preds = %28
  %40 = load %struct.tree_balance*, %struct.tree_balance** %3, align 8
  %41 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %40, i32 0, i32 11
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = load i32, i32* %5, align 4
  %44 = call %struct.buffer_head* @PATH_OFFSET_PBUFFER(%struct.TYPE_3__* %42, i32 %43)
  store %struct.buffer_head* %44, %struct.buffer_head** %4, align 8
  br label %45

45:                                               ; preds = %39, %28
  br label %46

46:                                               ; preds = %45, %21
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %5, align 4
  %49 = add nsw i32 %48, -1
  store i32 %49, i32* %5, align 4
  br label %12

50:                                               ; preds = %19
  store i32 0, i32* %5, align 4
  br label %51

51:                                               ; preds = %363, %50
  %52 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %53 = icmp ne %struct.buffer_head* %52, null
  br i1 %53, label %67, label %54

54:                                               ; preds = %51
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* @MAX_HEIGHT, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %67

58:                                               ; preds = %54
  %59 = load %struct.tree_balance*, %struct.tree_balance** %3, align 8
  %60 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %59, i32 0, i32 10
  %61 = load i64*, i64** %60, align 8
  %62 = load i32, i32* %5, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i64, i64* %61, i64 %63
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br label %67

67:                                               ; preds = %58, %54, %51
  %68 = phi i1 [ false, %54 ], [ false, %51 ], [ %66, %58 ]
  br i1 %68, label %69, label %366

69:                                               ; preds = %67
  %70 = load %struct.tree_balance*, %struct.tree_balance** %3, align 8
  %71 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %70, i32 0, i32 9
  %72 = load i64*, i64** %71, align 8
  %73 = load i32, i32* %5, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i64, i64* %72, i64 %74
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %214

78:                                               ; preds = %69
  %79 = load %struct.tree_balance*, %struct.tree_balance** %3, align 8
  %80 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %79, i32 0, i32 8
  %81 = load %struct.buffer_head**, %struct.buffer_head*** %80, align 8
  %82 = load i32, i32* %5, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %81, i64 %83
  %85 = load %struct.buffer_head*, %struct.buffer_head** %84, align 8
  %86 = icmp ne %struct.buffer_head* %85, null
  br i1 %86, label %87, label %121

87:                                               ; preds = %78
  %88 = load %struct.tree_balance*, %struct.tree_balance** %3, align 8
  %89 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.tree_balance*, %struct.tree_balance** %3, align 8
  %92 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %91, i32 0, i32 8
  %93 = load %struct.buffer_head**, %struct.buffer_head*** %92, align 8
  %94 = load i32, i32* %5, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %93, i64 %95
  %97 = load %struct.buffer_head*, %struct.buffer_head** %96, align 8
  %98 = load i32, i32* %5, align 4
  %99 = call i32 @tb_buffer_sanity_check(i32 %90, %struct.buffer_head* %97, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 %98)
  %100 = load %struct.tree_balance*, %struct.tree_balance** %3, align 8
  %101 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.tree_balance*, %struct.tree_balance** %3, align 8
  %104 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %103, i32 0, i32 8
  %105 = load %struct.buffer_head**, %struct.buffer_head*** %104, align 8
  %106 = load i32, i32* %5, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %105, i64 %107
  %109 = load %struct.buffer_head*, %struct.buffer_head** %108, align 8
  %110 = call i32 @clear_all_dirty_bits(i32 %102, %struct.buffer_head* %109)
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %120, label %112

112:                                              ; preds = %87
  %113 = load %struct.tree_balance*, %struct.tree_balance** %3, align 8
  %114 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %113, i32 0, i32 8
  %115 = load %struct.buffer_head**, %struct.buffer_head*** %114, align 8
  %116 = load i32, i32* %5, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %115, i64 %117
  %119 = load %struct.buffer_head*, %struct.buffer_head** %118, align 8
  store %struct.buffer_head* %119, %struct.buffer_head** %4, align 8
  br label %120

120:                                              ; preds = %112, %87
  br label %121

121:                                              ; preds = %120, %78
  %122 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %123 = icmp ne %struct.buffer_head* %122, null
  br i1 %123, label %167, label %124

124:                                              ; preds = %121
  %125 = load %struct.tree_balance*, %struct.tree_balance** %3, align 8
  %126 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %125, i32 0, i32 7
  %127 = load %struct.buffer_head**, %struct.buffer_head*** %126, align 8
  %128 = load i32, i32* %5, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %127, i64 %129
  %131 = load %struct.buffer_head*, %struct.buffer_head** %130, align 8
  %132 = icmp ne %struct.buffer_head* %131, null
  br i1 %132, label %133, label %167

133:                                              ; preds = %124
  %134 = load %struct.tree_balance*, %struct.tree_balance** %3, align 8
  %135 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = load %struct.tree_balance*, %struct.tree_balance** %3, align 8
  %138 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %137, i32 0, i32 7
  %139 = load %struct.buffer_head**, %struct.buffer_head*** %138, align 8
  %140 = load i32, i32* %5, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %139, i64 %141
  %143 = load %struct.buffer_head*, %struct.buffer_head** %142, align 8
  %144 = load i32, i32* %5, align 4
  %145 = call i32 @tb_buffer_sanity_check(i32 %136, %struct.buffer_head* %143, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %144)
  %146 = load %struct.tree_balance*, %struct.tree_balance** %3, align 8
  %147 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = load %struct.tree_balance*, %struct.tree_balance** %3, align 8
  %150 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %149, i32 0, i32 7
  %151 = load %struct.buffer_head**, %struct.buffer_head*** %150, align 8
  %152 = load i32, i32* %5, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %151, i64 %153
  %155 = load %struct.buffer_head*, %struct.buffer_head** %154, align 8
  %156 = call i32 @clear_all_dirty_bits(i32 %148, %struct.buffer_head* %155)
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %166, label %158

158:                                              ; preds = %133
  %159 = load %struct.tree_balance*, %struct.tree_balance** %3, align 8
  %160 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %159, i32 0, i32 7
  %161 = load %struct.buffer_head**, %struct.buffer_head*** %160, align 8
  %162 = load i32, i32* %5, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %161, i64 %163
  %165 = load %struct.buffer_head*, %struct.buffer_head** %164, align 8
  store %struct.buffer_head* %165, %struct.buffer_head** %4, align 8
  br label %166

166:                                              ; preds = %158, %133
  br label %167

167:                                              ; preds = %166, %124, %121
  %168 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %169 = icmp ne %struct.buffer_head* %168, null
  br i1 %169, label %213, label %170

170:                                              ; preds = %167
  %171 = load %struct.tree_balance*, %struct.tree_balance** %3, align 8
  %172 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %171, i32 0, i32 6
  %173 = load %struct.buffer_head**, %struct.buffer_head*** %172, align 8
  %174 = load i32, i32* %5, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %173, i64 %175
  %177 = load %struct.buffer_head*, %struct.buffer_head** %176, align 8
  %178 = icmp ne %struct.buffer_head* %177, null
  br i1 %178, label %179, label %213

179:                                              ; preds = %170
  %180 = load %struct.tree_balance*, %struct.tree_balance** %3, align 8
  %181 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = load %struct.tree_balance*, %struct.tree_balance** %3, align 8
  %184 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %183, i32 0, i32 6
  %185 = load %struct.buffer_head**, %struct.buffer_head*** %184, align 8
  %186 = load i32, i32* %5, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %185, i64 %187
  %189 = load %struct.buffer_head*, %struct.buffer_head** %188, align 8
  %190 = load i32, i32* %5, align 4
  %191 = call i32 @tb_buffer_sanity_check(i32 %182, %struct.buffer_head* %189, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %190)
  %192 = load %struct.tree_balance*, %struct.tree_balance** %3, align 8
  %193 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = load %struct.tree_balance*, %struct.tree_balance** %3, align 8
  %196 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %195, i32 0, i32 6
  %197 = load %struct.buffer_head**, %struct.buffer_head*** %196, align 8
  %198 = load i32, i32* %5, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %197, i64 %199
  %201 = load %struct.buffer_head*, %struct.buffer_head** %200, align 8
  %202 = call i32 @clear_all_dirty_bits(i32 %194, %struct.buffer_head* %201)
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %212, label %204

204:                                              ; preds = %179
  %205 = load %struct.tree_balance*, %struct.tree_balance** %3, align 8
  %206 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %205, i32 0, i32 6
  %207 = load %struct.buffer_head**, %struct.buffer_head*** %206, align 8
  %208 = load i32, i32* %5, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %207, i64 %209
  %211 = load %struct.buffer_head*, %struct.buffer_head** %210, align 8
  store %struct.buffer_head* %211, %struct.buffer_head** %4, align 8
  br label %212

212:                                              ; preds = %204, %179
  br label %213

213:                                              ; preds = %212, %170, %167
  br label %214

214:                                              ; preds = %213, %69
  %215 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %216 = icmp ne %struct.buffer_head* %215, null
  br i1 %216, label %362, label %217

217:                                              ; preds = %214
  %218 = load %struct.tree_balance*, %struct.tree_balance** %3, align 8
  %219 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %218, i32 0, i32 5
  %220 = load i64*, i64** %219, align 8
  %221 = load i32, i32* %5, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds i64, i64* %220, i64 %222
  %224 = load i64, i64* %223, align 8
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %226, label %362

226:                                              ; preds = %217
  %227 = load %struct.tree_balance*, %struct.tree_balance** %3, align 8
  %228 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %227, i32 0, i32 4
  %229 = load %struct.buffer_head**, %struct.buffer_head*** %228, align 8
  %230 = load i32, i32* %5, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %229, i64 %231
  %233 = load %struct.buffer_head*, %struct.buffer_head** %232, align 8
  %234 = icmp ne %struct.buffer_head* %233, null
  br i1 %234, label %235, label %269

235:                                              ; preds = %226
  %236 = load %struct.tree_balance*, %struct.tree_balance** %3, align 8
  %237 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 8
  %239 = load %struct.tree_balance*, %struct.tree_balance** %3, align 8
  %240 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %239, i32 0, i32 4
  %241 = load %struct.buffer_head**, %struct.buffer_head*** %240, align 8
  %242 = load i32, i32* %5, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %241, i64 %243
  %245 = load %struct.buffer_head*, %struct.buffer_head** %244, align 8
  %246 = load i32, i32* %5, align 4
  %247 = call i32 @tb_buffer_sanity_check(i32 %238, %struct.buffer_head* %245, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i32 %246)
  %248 = load %struct.tree_balance*, %struct.tree_balance** %3, align 8
  %249 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 8
  %251 = load %struct.tree_balance*, %struct.tree_balance** %3, align 8
  %252 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %251, i32 0, i32 4
  %253 = load %struct.buffer_head**, %struct.buffer_head*** %252, align 8
  %254 = load i32, i32* %5, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %253, i64 %255
  %257 = load %struct.buffer_head*, %struct.buffer_head** %256, align 8
  %258 = call i32 @clear_all_dirty_bits(i32 %250, %struct.buffer_head* %257)
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %268, label %260

260:                                              ; preds = %235
  %261 = load %struct.tree_balance*, %struct.tree_balance** %3, align 8
  %262 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %261, i32 0, i32 4
  %263 = load %struct.buffer_head**, %struct.buffer_head*** %262, align 8
  %264 = load i32, i32* %5, align 4
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %263, i64 %265
  %267 = load %struct.buffer_head*, %struct.buffer_head** %266, align 8
  store %struct.buffer_head* %267, %struct.buffer_head** %4, align 8
  br label %268

268:                                              ; preds = %260, %235
  br label %269

269:                                              ; preds = %268, %226
  %270 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %271 = icmp ne %struct.buffer_head* %270, null
  br i1 %271, label %315, label %272

272:                                              ; preds = %269
  %273 = load %struct.tree_balance*, %struct.tree_balance** %3, align 8
  %274 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %273, i32 0, i32 3
  %275 = load %struct.buffer_head**, %struct.buffer_head*** %274, align 8
  %276 = load i32, i32* %5, align 4
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %275, i64 %277
  %279 = load %struct.buffer_head*, %struct.buffer_head** %278, align 8
  %280 = icmp ne %struct.buffer_head* %279, null
  br i1 %280, label %281, label %315

281:                                              ; preds = %272
  %282 = load %struct.tree_balance*, %struct.tree_balance** %3, align 8
  %283 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %282, i32 0, i32 0
  %284 = load i32, i32* %283, align 8
  %285 = load %struct.tree_balance*, %struct.tree_balance** %3, align 8
  %286 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %285, i32 0, i32 3
  %287 = load %struct.buffer_head**, %struct.buffer_head*** %286, align 8
  %288 = load i32, i32* %5, align 4
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %287, i64 %289
  %291 = load %struct.buffer_head*, %struct.buffer_head** %290, align 8
  %292 = load i32, i32* %5, align 4
  %293 = call i32 @tb_buffer_sanity_check(i32 %284, %struct.buffer_head* %291, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 %292)
  %294 = load %struct.tree_balance*, %struct.tree_balance** %3, align 8
  %295 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %294, i32 0, i32 0
  %296 = load i32, i32* %295, align 8
  %297 = load %struct.tree_balance*, %struct.tree_balance** %3, align 8
  %298 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %297, i32 0, i32 3
  %299 = load %struct.buffer_head**, %struct.buffer_head*** %298, align 8
  %300 = load i32, i32* %5, align 4
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %299, i64 %301
  %303 = load %struct.buffer_head*, %struct.buffer_head** %302, align 8
  %304 = call i32 @clear_all_dirty_bits(i32 %296, %struct.buffer_head* %303)
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %314, label %306

306:                                              ; preds = %281
  %307 = load %struct.tree_balance*, %struct.tree_balance** %3, align 8
  %308 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %307, i32 0, i32 3
  %309 = load %struct.buffer_head**, %struct.buffer_head*** %308, align 8
  %310 = load i32, i32* %5, align 4
  %311 = sext i32 %310 to i64
  %312 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %309, i64 %311
  %313 = load %struct.buffer_head*, %struct.buffer_head** %312, align 8
  store %struct.buffer_head* %313, %struct.buffer_head** %4, align 8
  br label %314

314:                                              ; preds = %306, %281
  br label %315

315:                                              ; preds = %314, %272, %269
  %316 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %317 = icmp ne %struct.buffer_head* %316, null
  br i1 %317, label %361, label %318

318:                                              ; preds = %315
  %319 = load %struct.tree_balance*, %struct.tree_balance** %3, align 8
  %320 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %319, i32 0, i32 2
  %321 = load %struct.buffer_head**, %struct.buffer_head*** %320, align 8
  %322 = load i32, i32* %5, align 4
  %323 = sext i32 %322 to i64
  %324 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %321, i64 %323
  %325 = load %struct.buffer_head*, %struct.buffer_head** %324, align 8
  %326 = icmp ne %struct.buffer_head* %325, null
  br i1 %326, label %327, label %361

327:                                              ; preds = %318
  %328 = load %struct.tree_balance*, %struct.tree_balance** %3, align 8
  %329 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %328, i32 0, i32 0
  %330 = load i32, i32* %329, align 8
  %331 = load %struct.tree_balance*, %struct.tree_balance** %3, align 8
  %332 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %331, i32 0, i32 2
  %333 = load %struct.buffer_head**, %struct.buffer_head*** %332, align 8
  %334 = load i32, i32* %5, align 4
  %335 = sext i32 %334 to i64
  %336 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %333, i64 %335
  %337 = load %struct.buffer_head*, %struct.buffer_head** %336, align 8
  %338 = load i32, i32* %5, align 4
  %339 = call i32 @tb_buffer_sanity_check(i32 %330, %struct.buffer_head* %337, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 %338)
  %340 = load %struct.tree_balance*, %struct.tree_balance** %3, align 8
  %341 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %340, i32 0, i32 0
  %342 = load i32, i32* %341, align 8
  %343 = load %struct.tree_balance*, %struct.tree_balance** %3, align 8
  %344 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %343, i32 0, i32 2
  %345 = load %struct.buffer_head**, %struct.buffer_head*** %344, align 8
  %346 = load i32, i32* %5, align 4
  %347 = sext i32 %346 to i64
  %348 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %345, i64 %347
  %349 = load %struct.buffer_head*, %struct.buffer_head** %348, align 8
  %350 = call i32 @clear_all_dirty_bits(i32 %342, %struct.buffer_head* %349)
  %351 = icmp ne i32 %350, 0
  br i1 %351, label %360, label %352

352:                                              ; preds = %327
  %353 = load %struct.tree_balance*, %struct.tree_balance** %3, align 8
  %354 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %353, i32 0, i32 2
  %355 = load %struct.buffer_head**, %struct.buffer_head*** %354, align 8
  %356 = load i32, i32* %5, align 4
  %357 = sext i32 %356 to i64
  %358 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %355, i64 %357
  %359 = load %struct.buffer_head*, %struct.buffer_head** %358, align 8
  store %struct.buffer_head* %359, %struct.buffer_head** %4, align 8
  br label %360

360:                                              ; preds = %352, %327
  br label %361

361:                                              ; preds = %360, %318, %315
  br label %362

362:                                              ; preds = %361, %217, %214
  br label %363

363:                                              ; preds = %362
  %364 = load i32, i32* %5, align 4
  %365 = add nsw i32 %364, 1
  store i32 %365, i32* %5, align 4
  br label %51

366:                                              ; preds = %67
  store i32 0, i32* %5, align 4
  br label %367

367:                                              ; preds = %408, %366
  %368 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %369 = icmp ne %struct.buffer_head* %368, null
  br i1 %369, label %374, label %370

370:                                              ; preds = %367
  %371 = load i32, i32* %5, align 4
  %372 = load i32, i32* @MAX_FEB_SIZE, align 4
  %373 = icmp slt i32 %371, %372
  br label %374

374:                                              ; preds = %370, %367
  %375 = phi i1 [ false, %367 ], [ %373, %370 ]
  br i1 %375, label %376, label %411

376:                                              ; preds = %374
  %377 = load %struct.tree_balance*, %struct.tree_balance** %3, align 8
  %378 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %377, i32 0, i32 1
  %379 = load %struct.buffer_head**, %struct.buffer_head*** %378, align 8
  %380 = load i32, i32* %5, align 4
  %381 = sext i32 %380 to i64
  %382 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %379, i64 %381
  %383 = load %struct.buffer_head*, %struct.buffer_head** %382, align 8
  %384 = icmp ne %struct.buffer_head* %383, null
  br i1 %384, label %385, label %407

385:                                              ; preds = %376
  %386 = load %struct.tree_balance*, %struct.tree_balance** %3, align 8
  %387 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %386, i32 0, i32 0
  %388 = load i32, i32* %387, align 8
  %389 = load %struct.tree_balance*, %struct.tree_balance** %3, align 8
  %390 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %389, i32 0, i32 1
  %391 = load %struct.buffer_head**, %struct.buffer_head*** %390, align 8
  %392 = load i32, i32* %5, align 4
  %393 = sext i32 %392 to i64
  %394 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %391, i64 %393
  %395 = load %struct.buffer_head*, %struct.buffer_head** %394, align 8
  %396 = call i32 @clear_all_dirty_bits(i32 %388, %struct.buffer_head* %395)
  %397 = icmp ne i32 %396, 0
  br i1 %397, label %406, label %398

398:                                              ; preds = %385
  %399 = load %struct.tree_balance*, %struct.tree_balance** %3, align 8
  %400 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %399, i32 0, i32 1
  %401 = load %struct.buffer_head**, %struct.buffer_head*** %400, align 8
  %402 = load i32, i32* %5, align 4
  %403 = sext i32 %402 to i64
  %404 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %401, i64 %403
  %405 = load %struct.buffer_head*, %struct.buffer_head** %404, align 8
  store %struct.buffer_head* %405, %struct.buffer_head** %4, align 8
  br label %406

406:                                              ; preds = %398, %385
  br label %407

407:                                              ; preds = %406, %376
  br label %408

408:                                              ; preds = %407
  %409 = load i32, i32* %5, align 4
  %410 = add nsw i32 %409, 1
  store i32 %410, i32* %5, align 4
  br label %367

411:                                              ; preds = %374
  %412 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %413 = icmp ne %struct.buffer_head* %412, null
  br i1 %413, label %414, label %423

414:                                              ; preds = %411
  %415 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %416 = call i32 @__wait_on_buffer(%struct.buffer_head* %415)
  %417 = load %struct.tree_balance*, %struct.tree_balance** %3, align 8
  %418 = call i64 @FILESYSTEM_CHANGED_TB(%struct.tree_balance* %417)
  %419 = icmp ne i64 %418, 0
  br i1 %419, label %420, label %422

420:                                              ; preds = %414
  %421 = load i32, i32* @REPEAT_SEARCH, align 4
  store i32 %421, i32* %2, align 4
  br label %429

422:                                              ; preds = %414
  br label %423

423:                                              ; preds = %422, %411
  br label %424

424:                                              ; preds = %423
  %425 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %426 = icmp ne %struct.buffer_head* %425, null
  br i1 %426, label %6, label %427

427:                                              ; preds = %424
  %428 = load i32, i32* @CARRY_ON, align 4
  store i32 %428, i32* %2, align 4
  br label %429

429:                                              ; preds = %427, %420
  %430 = load i32, i32* %2, align 4
  ret i32 %430
}

declare dso_local %struct.buffer_head* @PATH_OFFSET_PBUFFER(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @clear_all_dirty_bits(i32, %struct.buffer_head*) #1

declare dso_local i32 @tb_buffer_sanity_check(i32, %struct.buffer_head*, i8*, i32) #1

declare dso_local i32 @__wait_on_buffer(%struct.buffer_head*) #1

declare dso_local i64 @FILESYSTEM_CHANGED_TB(%struct.tree_balance*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
