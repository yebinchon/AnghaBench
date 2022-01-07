; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/flex/extr_gen.c_mkctbl.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/flex/extr_gen.c_mkctbl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.yytbl_data = type { i32, i32, i32*, i64 }

@num_rules = common dso_local global i32 0, align 4
@yydmap_buf = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"\09{YYTD_ID_TRANSITION, (void**)&yy_transition, sizeof(%s)},\0A\00", align 1
@tblend = common dso_local global i32 0, align 4
@numecs = common dso_local global i64 0, align 8
@INT16_MAX = common dso_local global i64 0, align 8
@long_align = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"flex_int32_t\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"flex_int16_t\00", align 1
@YYTD_ID_TRANSITION = common dso_local global i32 0, align 4
@YYTD_DATA32 = common dso_local global i32 0, align 4
@YYTD_STRUCT = common dso_local global i32 0, align 4
@current_max_xpairs = common dso_local global i32 0, align 4
@lastdfa = common dso_local global i32 0, align 4
@current_max_dfas = common dso_local global i32 0, align 4
@base = common dso_local global i32* null, align 8
@nxt = common dso_local global i64* null, align 8
@chk = common dso_local global i64* null, align 8
@dfaacc = common dso_local global %struct.TYPE_2__* null, align 8
@EOB_POSITION = common dso_local global i64 0, align 8
@ACTION_POSITION = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.yytbl_data* ()* @mkctbl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.yytbl_data* @mkctbl() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.yytbl_data*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.yytbl_data* null, %struct.yytbl_data** %2, align 8
  store i32* null, i32** %3, align 8
  store i32 0, i32* %4, align 4
  %8 = load i32, i32* @num_rules, align 4
  %9 = add nsw i32 %8, 1
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* @tblend, align 4
  %11 = sext i32 %10 to i64
  %12 = load i64, i64* @numecs, align 8
  %13 = add nsw i64 %11, %12
  %14 = add nsw i64 %13, 1
  %15 = load i64, i64* @INT16_MAX, align 8
  %16 = icmp sge i64 %14, %15
  br i1 %16, label %20, label %17

17:                                               ; preds = %0
  %18 = load i64, i64* @long_align, align 8
  %19 = icmp ne i64 %18, 0
  br label %20

20:                                               ; preds = %17, %0
  %21 = phi i1 [ true, %0 ], [ %19, %17 ]
  %22 = zext i1 %21 to i64
  %23 = select i1 %21, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0)
  %24 = call i32 @buf_prints(i32* @yydmap_buf, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i8* %23)
  %25 = call i64 @calloc(i32 1, i32 24)
  %26 = inttoptr i64 %25 to %struct.yytbl_data*
  store %struct.yytbl_data* %26, %struct.yytbl_data** %2, align 8
  %27 = load %struct.yytbl_data*, %struct.yytbl_data** %2, align 8
  %28 = load i32, i32* @YYTD_ID_TRANSITION, align 4
  %29 = call i32 @yytbl_data_init(%struct.yytbl_data* %27, i32 %28)
  %30 = load i32, i32* @YYTD_DATA32, align 4
  %31 = load i32, i32* @YYTD_STRUCT, align 4
  %32 = or i32 %30, %31
  %33 = load %struct.yytbl_data*, %struct.yytbl_data** %2, align 8
  %34 = getelementptr inbounds %struct.yytbl_data, %struct.yytbl_data* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = load %struct.yytbl_data*, %struct.yytbl_data** %2, align 8
  %36 = getelementptr inbounds %struct.yytbl_data, %struct.yytbl_data* %35, i32 0, i32 3
  store i64 0, i64* %36, align 8
  %37 = load i32, i32* @tblend, align 4
  %38 = sext i32 %37 to i64
  %39 = load i64, i64* @numecs, align 8
  %40 = add nsw i64 %38, %39
  %41 = add nsw i64 %40, 1
  %42 = trunc i64 %41 to i32
  %43 = load %struct.yytbl_data*, %struct.yytbl_data** %2, align 8
  %44 = getelementptr inbounds %struct.yytbl_data, %struct.yytbl_data* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  %45 = load %struct.yytbl_data*, %struct.yytbl_data** %2, align 8
  %46 = getelementptr inbounds %struct.yytbl_data, %struct.yytbl_data* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = mul nsw i32 %47, 2
  %49 = call i64 @calloc(i32 %48, i32 4)
  %50 = inttoptr i64 %49 to i32*
  store i32* %50, i32** %3, align 8
  %51 = load %struct.yytbl_data*, %struct.yytbl_data** %2, align 8
  %52 = getelementptr inbounds %struct.yytbl_data, %struct.yytbl_data* %51, i32 0, i32 2
  store i32* %50, i32** %52, align 8
  br label %53

53:                                               ; preds = %58, %20
  %54 = load i32, i32* @tblend, align 4
  %55 = add nsw i32 %54, 2
  %56 = load i32, i32* @current_max_xpairs, align 4
  %57 = icmp sge i32 %55, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %53
  %59 = call i32 (...) @expand_nxt_chk()
  br label %53

60:                                               ; preds = %53
  br label %61

61:                                               ; preds = %66, %60
  %62 = load i32, i32* @lastdfa, align 4
  %63 = add nsw i32 %62, 1
  %64 = load i32, i32* @current_max_dfas, align 4
  %65 = icmp sge i32 %63, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %61
  %67 = call i32 (...) @increase_max_dfas()
  br label %61

68:                                               ; preds = %61
  %69 = load i32, i32* @tblend, align 4
  %70 = add nsw i32 %69, 2
  %71 = load i32*, i32** @base, align 8
  %72 = load i32, i32* @lastdfa, align 4
  %73 = add nsw i32 %72, 1
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %71, i64 %74
  store i32 %70, i32* %75, align 4
  %76 = load i32, i32* %5, align 4
  %77 = sext i32 %76 to i64
  %78 = load i64*, i64** @nxt, align 8
  %79 = load i32, i32* @tblend, align 4
  %80 = add nsw i32 %79, 1
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i64, i64* %78, i64 %81
  store i64 %77, i64* %82, align 8
  %83 = load i64, i64* @numecs, align 8
  %84 = add nsw i64 %83, 1
  %85 = load i64*, i64** @chk, align 8
  %86 = load i32, i32* @tblend, align 4
  %87 = add nsw i32 %86, 1
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i64, i64* %85, i64 %88
  store i64 %84, i64* %89, align 8
  %90 = load i64*, i64** @chk, align 8
  %91 = load i32, i32* @tblend, align 4
  %92 = add nsw i32 %91, 2
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i64, i64* %90, i64 %93
  store i64 1, i64* %94, align 8
  %95 = load i64*, i64** @nxt, align 8
  %96 = load i32, i32* @tblend, align 4
  %97 = add nsw i32 %96, 2
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i64, i64* %95, i64 %98
  store i64 0, i64* %99, align 8
  store i32 0, i32* %1, align 4
  br label %100

100:                                              ; preds = %134, %68
  %101 = load i32, i32* %1, align 4
  %102 = load i32, i32* @lastdfa, align 4
  %103 = icmp sle i32 %101, %102
  br i1 %103, label %104, label %137

104:                                              ; preds = %100
  %105 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dfaacc, align 8
  %106 = load i32, i32* %1, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  store i32 %110, i32* %6, align 4
  %111 = load i32*, i32** @base, align 8
  %112 = load i32, i32* %1, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %111, i64 %113
  %115 = load i32, i32* %114, align 4
  store i32 %115, i32* %7, align 4
  %116 = load i64, i64* @EOB_POSITION, align 8
  %117 = load i64*, i64** @chk, align 8
  %118 = load i32, i32* %7, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i64, i64* %117, i64 %119
  store i64 %116, i64* %120, align 8
  %121 = load i64, i64* @ACTION_POSITION, align 8
  %122 = load i64*, i64** @chk, align 8
  %123 = load i32, i32* %7, align 4
  %124 = sub nsw i32 %123, 1
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i64, i64* %122, i64 %125
  store i64 %121, i64* %126, align 8
  %127 = load i32, i32* %6, align 4
  %128 = sext i32 %127 to i64
  %129 = load i64*, i64** @nxt, align 8
  %130 = load i32, i32* %7, align 4
  %131 = sub nsw i32 %130, 1
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i64, i64* %129, i64 %132
  store i64 %128, i64* %133, align 8
  br label %134

134:                                              ; preds = %104
  %135 = load i32, i32* %1, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %1, align 4
  br label %100

137:                                              ; preds = %100
  store i32 0, i32* %1, align 4
  br label %138

138:                                              ; preds = %259, %137
  %139 = load i32, i32* %1, align 4
  %140 = load i32, i32* @tblend, align 4
  %141 = icmp sle i32 %139, %140
  br i1 %141, label %142, label %262

142:                                              ; preds = %138
  %143 = load i64*, i64** @chk, align 8
  %144 = load i32, i32* %1, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i64, i64* %143, i64 %145
  %147 = load i64, i64* %146, align 8
  %148 = load i64, i64* @EOB_POSITION, align 8
  %149 = icmp eq i64 %147, %148
  br i1 %149, label %150, label %169

150:                                              ; preds = %142
  %151 = load i32*, i32** %3, align 8
  %152 = load i32, i32* %4, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %4, align 4
  %154 = sext i32 %152 to i64
  %155 = getelementptr inbounds i32, i32* %151, i64 %154
  store i32 0, i32* %155, align 4
  %156 = load i32*, i32** @base, align 8
  %157 = load i32, i32* @lastdfa, align 4
  %158 = add nsw i32 %157, 1
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i32, i32* %156, i64 %159
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* %1, align 4
  %163 = sub nsw i32 %161, %162
  %164 = load i32*, i32** %3, align 8
  %165 = load i32, i32* %4, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %4, align 4
  %167 = sext i32 %165 to i64
  %168 = getelementptr inbounds i32, i32* %164, i64 %167
  store i32 %163, i32* %168, align 4
  br label %258

169:                                              ; preds = %142
  %170 = load i64*, i64** @chk, align 8
  %171 = load i32, i32* %1, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i64, i64* %170, i64 %172
  %174 = load i64, i64* %173, align 8
  %175 = load i64, i64* @ACTION_POSITION, align 8
  %176 = icmp eq i64 %174, %175
  br i1 %176, label %177, label %194

177:                                              ; preds = %169
  %178 = load i32*, i32** %3, align 8
  %179 = load i32, i32* %4, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %4, align 4
  %181 = sext i32 %179 to i64
  %182 = getelementptr inbounds i32, i32* %178, i64 %181
  store i32 0, i32* %182, align 4
  %183 = load i64*, i64** @nxt, align 8
  %184 = load i32, i32* %1, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i64, i64* %183, i64 %185
  %187 = load i64, i64* %186, align 8
  %188 = trunc i64 %187 to i32
  %189 = load i32*, i32** %3, align 8
  %190 = load i32, i32* %4, align 4
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %4, align 4
  %192 = sext i32 %190 to i64
  %193 = getelementptr inbounds i32, i32* %189, i64 %192
  store i32 %188, i32* %193, align 4
  br label %257

194:                                              ; preds = %169
  %195 = load i64*, i64** @chk, align 8
  %196 = load i32, i32* %1, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i64, i64* %195, i64 %197
  %199 = load i64, i64* %198, align 8
  %200 = load i64, i64* @numecs, align 8
  %201 = icmp sgt i64 %199, %200
  br i1 %201, label %209, label %202

202:                                              ; preds = %194
  %203 = load i64*, i64** @chk, align 8
  %204 = load i32, i32* %1, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i64, i64* %203, i64 %205
  %207 = load i64, i64* %206, align 8
  %208 = icmp eq i64 %207, 0
  br i1 %208, label %209, label %220

209:                                              ; preds = %202, %194
  %210 = load i32*, i32** %3, align 8
  %211 = load i32, i32* %4, align 4
  %212 = add nsw i32 %211, 1
  store i32 %212, i32* %4, align 4
  %213 = sext i32 %211 to i64
  %214 = getelementptr inbounds i32, i32* %210, i64 %213
  store i32 0, i32* %214, align 4
  %215 = load i32*, i32** %3, align 8
  %216 = load i32, i32* %4, align 4
  %217 = add nsw i32 %216, 1
  store i32 %217, i32* %4, align 4
  %218 = sext i32 %216 to i64
  %219 = getelementptr inbounds i32, i32* %215, i64 %218
  store i32 0, i32* %219, align 4
  br label %256

220:                                              ; preds = %202
  %221 = load i64*, i64** @chk, align 8
  %222 = load i32, i32* %1, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds i64, i64* %221, i64 %223
  %225 = load i64, i64* %224, align 8
  %226 = trunc i64 %225 to i32
  %227 = load i32*, i32** %3, align 8
  %228 = load i32, i32* %4, align 4
  %229 = add nsw i32 %228, 1
  store i32 %229, i32* %4, align 4
  %230 = sext i32 %228 to i64
  %231 = getelementptr inbounds i32, i32* %227, i64 %230
  store i32 %226, i32* %231, align 4
  %232 = load i32*, i32** @base, align 8
  %233 = load i64*, i64** @nxt, align 8
  %234 = load i32, i32* %1, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds i64, i64* %233, i64 %235
  %237 = load i64, i64* %236, align 8
  %238 = getelementptr inbounds i32, i32* %232, i64 %237
  %239 = load i32, i32* %238, align 4
  %240 = sext i32 %239 to i64
  %241 = load i32, i32* %1, align 4
  %242 = sext i32 %241 to i64
  %243 = load i64*, i64** @chk, align 8
  %244 = load i32, i32* %1, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds i64, i64* %243, i64 %245
  %247 = load i64, i64* %246, align 8
  %248 = sub nsw i64 %242, %247
  %249 = sub nsw i64 %240, %248
  %250 = trunc i64 %249 to i32
  %251 = load i32*, i32** %3, align 8
  %252 = load i32, i32* %4, align 4
  %253 = add nsw i32 %252, 1
  store i32 %253, i32* %4, align 4
  %254 = sext i32 %252 to i64
  %255 = getelementptr inbounds i32, i32* %251, i64 %254
  store i32 %250, i32* %255, align 4
  br label %256

256:                                              ; preds = %220, %209
  br label %257

257:                                              ; preds = %256, %177
  br label %258

258:                                              ; preds = %257, %150
  br label %259

259:                                              ; preds = %258
  %260 = load i32, i32* %1, align 4
  %261 = add nsw i32 %260, 1
  store i32 %261, i32* %1, align 4
  br label %138

262:                                              ; preds = %138
  %263 = load i64*, i64** @chk, align 8
  %264 = load i32, i32* @tblend, align 4
  %265 = add nsw i32 %264, 1
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds i64, i64* %263, i64 %266
  %268 = load i64, i64* %267, align 8
  %269 = trunc i64 %268 to i32
  %270 = load i32*, i32** %3, align 8
  %271 = load i32, i32* %4, align 4
  %272 = add nsw i32 %271, 1
  store i32 %272, i32* %4, align 4
  %273 = sext i32 %271 to i64
  %274 = getelementptr inbounds i32, i32* %270, i64 %273
  store i32 %269, i32* %274, align 4
  %275 = load i64*, i64** @nxt, align 8
  %276 = load i32, i32* @tblend, align 4
  %277 = add nsw i32 %276, 1
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds i64, i64* %275, i64 %278
  %280 = load i64, i64* %279, align 8
  %281 = trunc i64 %280 to i32
  %282 = load i32*, i32** %3, align 8
  %283 = load i32, i32* %4, align 4
  %284 = add nsw i32 %283, 1
  store i32 %284, i32* %4, align 4
  %285 = sext i32 %283 to i64
  %286 = getelementptr inbounds i32, i32* %282, i64 %285
  store i32 %281, i32* %286, align 4
  %287 = load i64*, i64** @chk, align 8
  %288 = load i32, i32* @tblend, align 4
  %289 = add nsw i32 %288, 2
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds i64, i64* %287, i64 %290
  %292 = load i64, i64* %291, align 8
  %293 = trunc i64 %292 to i32
  %294 = load i32*, i32** %3, align 8
  %295 = load i32, i32* %4, align 4
  %296 = add nsw i32 %295, 1
  store i32 %296, i32* %4, align 4
  %297 = sext i32 %295 to i64
  %298 = getelementptr inbounds i32, i32* %294, i64 %297
  store i32 %293, i32* %298, align 4
  %299 = load i64*, i64** @nxt, align 8
  %300 = load i32, i32* @tblend, align 4
  %301 = add nsw i32 %300, 2
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds i64, i64* %299, i64 %302
  %304 = load i64, i64* %303, align 8
  %305 = trunc i64 %304 to i32
  %306 = load i32*, i32** %3, align 8
  %307 = load i32, i32* %4, align 4
  %308 = add nsw i32 %307, 1
  store i32 %308, i32* %4, align 4
  %309 = sext i32 %307 to i64
  %310 = getelementptr inbounds i32, i32* %306, i64 %309
  store i32 %305, i32* %310, align 4
  %311 = load %struct.yytbl_data*, %struct.yytbl_data** %2, align 8
  ret %struct.yytbl_data* %311
}

declare dso_local i32 @buf_prints(i32*, i8*, i8*) #1

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @yytbl_data_init(%struct.yytbl_data*, i32) #1

declare dso_local i32 @expand_nxt_chk(...) #1

declare dso_local i32 @increase_max_dfas(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
