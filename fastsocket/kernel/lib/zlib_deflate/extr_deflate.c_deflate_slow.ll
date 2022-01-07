; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/lib/zlib_deflate/extr_deflate.c_deflate_slow.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/lib/zlib_deflate/extr_deflate.c_deflate_slow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, i64, i32, i32, i64, i64, i64, i64, i32, i32*, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i64 }

@NIL = common dso_local global i64 0, align 8
@MIN_LOOKAHEAD = common dso_local global i64 0, align 8
@Z_NO_FLUSH = common dso_local global i32 0, align 4
@need_more = common dso_local global i32 0, align 4
@MIN_MATCH = common dso_local global i32 0, align 4
@Z_HUFFMAN_ONLY = common dso_local global i64 0, align 8
@Z_FILTERED = common dso_local global i64 0, align 8
@TOO_FAR = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"no flush?\00", align 1
@Z_FINISH = common dso_local global i32 0, align 4
@finish_done = common dso_local global i32 0, align 4
@block_done = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, i32)* @deflate_slow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @deflate_slow(%struct.TYPE_13__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i64, i64* @NIL, align 8
  store i64 %9, i64* %6, align 8
  br label %10

10:                                               ; preds = %297, %2
  %11 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @MIN_LOOKAHEAD, align 8
  %15 = icmp slt i64 %13, %14
  br i1 %15, label %16, label %37

16:                                               ; preds = %10
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %18 = call i32 @fill_window(%struct.TYPE_13__* %17)
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @MIN_LOOKAHEAD, align 8
  %23 = icmp slt i64 %21, %22
  br i1 %23, label %24, label %30

24:                                               ; preds = %16
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @Z_NO_FLUSH, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = load i32, i32* @need_more, align 4
  store i32 %29, i32* %3, align 4
  br label %349

30:                                               ; preds = %24, %16
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  br label %298

36:                                               ; preds = %30
  br label %37

37:                                               ; preds = %36, %10
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i32, i32* @MIN_MATCH, align 4
  %42 = sext i32 %41 to i64
  %43 = icmp sge i64 %40, %42
  br i1 %43, label %44, label %51

44:                                               ; preds = %37
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* %6, align 8
  %50 = call i32 @INSERT_STRING(%struct.TYPE_13__* %45, i64 %48, i64 %49)
  br label %51

51:                                               ; preds = %44, %37
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 2
  store i32 %54, i32* %56, align 8
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 5
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 4
  store i64 %59, i64* %61, align 8
  %62 = load i32, i32* @MIN_MATCH, align 4
  %63 = sub nsw i32 %62, 1
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 3
  store i32 %63, i32* %65, align 4
  %66 = load i64, i64* %6, align 8
  %67 = load i64, i64* @NIL, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %69, label %132

69:                                               ; preds = %51
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = sext i32 %72 to i64
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 6
  %76 = load i64, i64* %75, align 8
  %77 = icmp slt i64 %73, %76
  br i1 %77, label %78, label %132

78:                                               ; preds = %69
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* %6, align 8
  %83 = sub nsw i64 %81, %82
  %84 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %85 = call i64 @MAX_DIST(%struct.TYPE_13__* %84)
  %86 = icmp sle i64 %83, %85
  br i1 %86, label %87, label %132

87:                                               ; preds = %78
  %88 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %88, i32 0, i32 7
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @Z_HUFFMAN_ONLY, align 8
  %92 = icmp ne i64 %90, %91
  br i1 %92, label %93, label %99

93:                                               ; preds = %87
  %94 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %95 = load i64, i64* %6, align 8
  %96 = call i32 @longest_match(%struct.TYPE_13__* %94, i64 %95)
  %97 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %97, i32 0, i32 3
  store i32 %96, i32* %98, align 4
  br label %99

99:                                               ; preds = %93, %87
  %100 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 4
  %103 = icmp sle i32 %102, 5
  br i1 %103, label %104, label %131

104:                                              ; preds = %99
  %105 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %105, i32 0, i32 7
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @Z_FILTERED, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %126, label %110

110:                                              ; preds = %104
  %111 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @MIN_MATCH, align 4
  %115 = icmp eq i32 %113, %114
  br i1 %115, label %116, label %131

116:                                              ; preds = %110
  %117 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %120, i32 0, i32 5
  %122 = load i64, i64* %121, align 8
  %123 = sub nsw i64 %119, %122
  %124 = load i64, i64* @TOO_FAR, align 8
  %125 = icmp sgt i64 %123, %124
  br i1 %125, label %126, label %131

126:                                              ; preds = %116, %104
  %127 = load i32, i32* @MIN_MATCH, align 4
  %128 = sub nsw i32 %127, 1
  %129 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %129, i32 0, i32 3
  store i32 %128, i32* %130, align 4
  br label %131

131:                                              ; preds = %126, %116, %110, %99
  br label %132

132:                                              ; preds = %131, %78, %69, %51
  %133 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 8
  %136 = load i32, i32* @MIN_MATCH, align 4
  %137 = icmp sge i32 %135, %136
  br i1 %137, label %138, label %235

138:                                              ; preds = %132
  %139 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %140 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %139, i32 0, i32 3
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %143 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 8
  %145 = icmp sle i32 %141, %144
  br i1 %145, label %146, label %235

146:                                              ; preds = %138
  %147 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %148 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %147, i32 0, i32 1
  %149 = load i64, i64* %148, align 8
  %150 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %151 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = add nsw i64 %149, %152
  %154 = load i32, i32* @MIN_MATCH, align 4
  %155 = sext i32 %154 to i64
  %156 = sub nsw i64 %153, %155
  store i64 %156, i64* %8, align 8
  %157 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %158 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %159 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %158, i32 0, i32 1
  %160 = load i64, i64* %159, align 8
  %161 = sub nsw i64 %160, 1
  %162 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %163 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %162, i32 0, i32 4
  %164 = load i64, i64* %163, align 8
  %165 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %166 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 8
  %168 = call i32 @check_match(%struct.TYPE_13__* %157, i64 %161, i64 %164, i32 %167)
  %169 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %170 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %171 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %170, i32 0, i32 1
  %172 = load i64, i64* %171, align 8
  %173 = sub nsw i64 %172, 1
  %174 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %175 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %174, i32 0, i32 4
  %176 = load i64, i64* %175, align 8
  %177 = sub nsw i64 %173, %176
  %178 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %179 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %178, i32 0, i32 2
  %180 = load i32, i32* %179, align 8
  %181 = load i32, i32* @MIN_MATCH, align 4
  %182 = sub nsw i32 %180, %181
  %183 = call i32 @zlib_tr_tally(%struct.TYPE_13__* %169, i64 %177, i32 %182)
  store i32 %183, i32* %7, align 4
  %184 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %185 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %184, i32 0, i32 2
  %186 = load i32, i32* %185, align 8
  %187 = sub nsw i32 %186, 1
  %188 = sext i32 %187 to i64
  %189 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %190 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %189, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  %192 = sub nsw i64 %191, %188
  store i64 %192, i64* %190, align 8
  %193 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %194 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %193, i32 0, i32 2
  %195 = load i32, i32* %194, align 8
  %196 = sub nsw i32 %195, 2
  store i32 %196, i32* %194, align 8
  br label %197

197:                                              ; preds = %212, %146
  %198 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %199 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %198, i32 0, i32 1
  %200 = load i64, i64* %199, align 8
  %201 = add nsw i64 %200, 1
  store i64 %201, i64* %199, align 8
  %202 = load i64, i64* %8, align 8
  %203 = icmp sle i64 %201, %202
  br i1 %203, label %204, label %211

204:                                              ; preds = %197
  %205 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %206 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %207 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %206, i32 0, i32 1
  %208 = load i64, i64* %207, align 8
  %209 = load i64, i64* %6, align 8
  %210 = call i32 @INSERT_STRING(%struct.TYPE_13__* %205, i64 %208, i64 %209)
  br label %211

211:                                              ; preds = %204, %197
  br label %212

212:                                              ; preds = %211
  %213 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %214 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %213, i32 0, i32 2
  %215 = load i32, i32* %214, align 8
  %216 = add nsw i32 %215, -1
  store i32 %216, i32* %214, align 8
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %197, label %218

218:                                              ; preds = %212
  %219 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %220 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %219, i32 0, i32 8
  store i32 0, i32* %220, align 8
  %221 = load i32, i32* @MIN_MATCH, align 4
  %222 = sub nsw i32 %221, 1
  %223 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %224 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %223, i32 0, i32 3
  store i32 %222, i32* %224, align 4
  %225 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %226 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %225, i32 0, i32 1
  %227 = load i64, i64* %226, align 8
  %228 = add nsw i64 %227, 1
  store i64 %228, i64* %226, align 8
  %229 = load i32, i32* %7, align 4
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %234

231:                                              ; preds = %218
  %232 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %233 = call i32 @FLUSH_BLOCK(%struct.TYPE_13__* %232, i32 0)
  br label %234

234:                                              ; preds = %231, %218
  br label %297

235:                                              ; preds = %138, %132
  %236 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %237 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %236, i32 0, i32 8
  %238 = load i32, i32* %237, align 8
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %285

240:                                              ; preds = %235
  %241 = load i32, i32* @stderr, align 4
  %242 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %243 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %242, i32 0, i32 9
  %244 = load i32*, i32** %243, align 8
  %245 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %246 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %245, i32 0, i32 1
  %247 = load i64, i64* %246, align 8
  %248 = sub nsw i64 %247, 1
  %249 = getelementptr inbounds i32, i32* %244, i64 %248
  %250 = load i32, i32* %249, align 4
  %251 = call i32 @Tracevv(i32 %250)
  %252 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %253 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %254 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %253, i32 0, i32 9
  %255 = load i32*, i32** %254, align 8
  %256 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %257 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %256, i32 0, i32 1
  %258 = load i64, i64* %257, align 8
  %259 = sub nsw i64 %258, 1
  %260 = getelementptr inbounds i32, i32* %255, i64 %259
  %261 = load i32, i32* %260, align 4
  %262 = call i32 @zlib_tr_tally(%struct.TYPE_13__* %252, i64 0, i32 %261)
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %264, label %267

264:                                              ; preds = %240
  %265 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %266 = call i32 @FLUSH_BLOCK_ONLY(%struct.TYPE_13__* %265, i32 0)
  br label %267

267:                                              ; preds = %264, %240
  %268 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %269 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %268, i32 0, i32 1
  %270 = load i64, i64* %269, align 8
  %271 = add nsw i64 %270, 1
  store i64 %271, i64* %269, align 8
  %272 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %273 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %272, i32 0, i32 0
  %274 = load i64, i64* %273, align 8
  %275 = add nsw i64 %274, -1
  store i64 %275, i64* %273, align 8
  %276 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %277 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %276, i32 0, i32 10
  %278 = load %struct.TYPE_12__*, %struct.TYPE_12__** %277, align 8
  %279 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %278, i32 0, i32 0
  %280 = load i64, i64* %279, align 8
  %281 = icmp eq i64 %280, 0
  br i1 %281, label %282, label %284

282:                                              ; preds = %267
  %283 = load i32, i32* @need_more, align 4
  store i32 %283, i32* %3, align 4
  br label %349

284:                                              ; preds = %267
  br label %296

285:                                              ; preds = %235
  %286 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %287 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %286, i32 0, i32 8
  store i32 1, i32* %287, align 8
  %288 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %289 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %288, i32 0, i32 1
  %290 = load i64, i64* %289, align 8
  %291 = add nsw i64 %290, 1
  store i64 %291, i64* %289, align 8
  %292 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %293 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %292, i32 0, i32 0
  %294 = load i64, i64* %293, align 8
  %295 = add nsw i64 %294, -1
  store i64 %295, i64* %293, align 8
  br label %296

296:                                              ; preds = %285, %284
  br label %297

297:                                              ; preds = %296, %234
  br label %10

298:                                              ; preds = %35
  %299 = load i32, i32* %5, align 4
  %300 = load i32, i32* @Z_NO_FLUSH, align 4
  %301 = icmp ne i32 %299, %300
  %302 = zext i1 %301 to i32
  %303 = call i32 @Assert(i32 %302, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %304 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %305 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %304, i32 0, i32 8
  %306 = load i32, i32* %305, align 8
  %307 = icmp ne i32 %306, 0
  br i1 %307, label %308, label %333

308:                                              ; preds = %298
  %309 = load i32, i32* @stderr, align 4
  %310 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %311 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %310, i32 0, i32 9
  %312 = load i32*, i32** %311, align 8
  %313 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %314 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %313, i32 0, i32 1
  %315 = load i64, i64* %314, align 8
  %316 = sub nsw i64 %315, 1
  %317 = getelementptr inbounds i32, i32* %312, i64 %316
  %318 = load i32, i32* %317, align 4
  %319 = call i32 @Tracevv(i32 %318)
  %320 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %321 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %322 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %321, i32 0, i32 9
  %323 = load i32*, i32** %322, align 8
  %324 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %325 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %324, i32 0, i32 1
  %326 = load i64, i64* %325, align 8
  %327 = sub nsw i64 %326, 1
  %328 = getelementptr inbounds i32, i32* %323, i64 %327
  %329 = load i32, i32* %328, align 4
  %330 = call i32 @zlib_tr_tally(%struct.TYPE_13__* %320, i64 0, i32 %329)
  %331 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %332 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %331, i32 0, i32 8
  store i32 0, i32* %332, align 8
  br label %333

333:                                              ; preds = %308, %298
  %334 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %335 = load i32, i32* %5, align 4
  %336 = load i32, i32* @Z_FINISH, align 4
  %337 = icmp eq i32 %335, %336
  %338 = zext i1 %337 to i32
  %339 = call i32 @FLUSH_BLOCK(%struct.TYPE_13__* %334, i32 %338)
  %340 = load i32, i32* %5, align 4
  %341 = load i32, i32* @Z_FINISH, align 4
  %342 = icmp eq i32 %340, %341
  br i1 %342, label %343, label %345

343:                                              ; preds = %333
  %344 = load i32, i32* @finish_done, align 4
  br label %347

345:                                              ; preds = %333
  %346 = load i32, i32* @block_done, align 4
  br label %347

347:                                              ; preds = %345, %343
  %348 = phi i32 [ %344, %343 ], [ %346, %345 ]
  store i32 %348, i32* %3, align 4
  br label %349

349:                                              ; preds = %347, %282, %28
  %350 = load i32, i32* %3, align 4
  ret i32 %350
}

declare dso_local i32 @fill_window(%struct.TYPE_13__*) #1

declare dso_local i32 @INSERT_STRING(%struct.TYPE_13__*, i64, i64) #1

declare dso_local i64 @MAX_DIST(%struct.TYPE_13__*) #1

declare dso_local i32 @longest_match(%struct.TYPE_13__*, i64) #1

declare dso_local i32 @check_match(%struct.TYPE_13__*, i64, i64, i32) #1

declare dso_local i32 @zlib_tr_tally(%struct.TYPE_13__*, i64, i32) #1

declare dso_local i32 @FLUSH_BLOCK(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @Tracevv(i32) #1

declare dso_local i32 @FLUSH_BLOCK_ONLY(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @Assert(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
