; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/intelfb/extr_intelfbhw.c_calc_pll_params.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/intelfb/extr_intelfbhw.c_calc_pll_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pll_min_max = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@plls = common dso_local global %struct.pll_min_max* null, align 8
@.str = private unnamed_addr constant [13 x i8] c"Clock is %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"p range is %d-%d (%d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"cannot split p = %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"cannot split m = %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"cannot find parameters for clock %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [63 x i8] c"m, n, p: %d (%d,%d), %d (%d), %d (%d,%d), f: %d (%d), VCO: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32*, i32*, i32*, i32*, i32*, i32*)* @calc_pll_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @calc_pll_params(i32 %0, i32 %1, i32* %2, i32* %3, i32* %4, i32* %5, i32* %6, i32* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca %struct.pll_min_max*, align 8
  store i32 %0, i32* %10, align 4
  store i32 %1, i32* %11, align 4
  store i32* %2, i32** %12, align 8
  store i32* %3, i32** %13, align 8
  store i32* %4, i32** %14, align 8
  store i32* %5, i32** %15, align 8
  store i32* %6, i32** %16, align 8
  store i32* %7, i32** %17, align 8
  store i32 0, i32* %27, align 4
  store i32 0, i32* %29, align 4
  store i32 10000000, i32* %32, align 4
  store i32 0, i32* %33, align 4
  store i32 0, i32* %34, align 4
  %42 = load %struct.pll_min_max*, %struct.pll_min_max** @plls, align 8
  %43 = load i32, i32* %10, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.pll_min_max, %struct.pll_min_max* %42, i64 %44
  store %struct.pll_min_max* %45, %struct.pll_min_max** %41, align 8
  %46 = load i32, i32* %11, align 4
  %47 = mul nsw i32 5, %46
  %48 = sdiv i32 %47, 1000
  store i32 %48, i32* %30, align 4
  %49 = load i32, i32* %11, align 4
  %50 = sdiv i32 %49, 1000
  store i32 %50, i32* %31, align 4
  %51 = load i32, i32* %11, align 4
  %52 = call i32 (i8*, i32, ...) @DBG_MSG(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %51)
  %53 = load %struct.pll_min_max*, %struct.pll_min_max** %41, align 8
  %54 = getelementptr inbounds %struct.pll_min_max, %struct.pll_min_max* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %11, align 4
  %57 = sdiv i32 %55, %56
  store i32 %57, i32* %40, align 4
  %58 = load i32, i32* %11, align 4
  %59 = load %struct.pll_min_max*, %struct.pll_min_max** %41, align 8
  %60 = getelementptr inbounds %struct.pll_min_max, %struct.pll_min_max* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = icmp sle i32 %58, %61
  br i1 %62, label %63, label %67

63:                                               ; preds = %8
  %64 = load %struct.pll_min_max*, %struct.pll_min_max** %41, align 8
  %65 = getelementptr inbounds %struct.pll_min_max, %struct.pll_min_max* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  br label %71

67:                                               ; preds = %8
  %68 = load %struct.pll_min_max*, %struct.pll_min_max** %41, align 8
  %69 = getelementptr inbounds %struct.pll_min_max, %struct.pll_min_max* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  br label %71

71:                                               ; preds = %67, %63
  %72 = phi i32 [ %66, %63 ], [ %70, %67 ]
  store i32 %72, i32* %39, align 4
  %73 = load i32, i32* %39, align 4
  store i32 %73, i32* %37, align 4
  %74 = load i32, i32* %40, align 4
  %75 = load i32, i32* %39, align 4
  %76 = call i32 @ROUND_DOWN_TO(i32 %74, i32 %75)
  store i32 %76, i32* %38, align 4
  %77 = load i32, i32* %37, align 4
  %78 = load %struct.pll_min_max*, %struct.pll_min_max** %41, align 8
  %79 = getelementptr inbounds %struct.pll_min_max, %struct.pll_min_max* %78, i32 0, i32 4
  %80 = load i32, i32* %79, align 4
  %81 = icmp slt i32 %77, %80
  br i1 %81, label %82, label %86

82:                                               ; preds = %71
  %83 = load %struct.pll_min_max*, %struct.pll_min_max** %41, align 8
  %84 = getelementptr inbounds %struct.pll_min_max, %struct.pll_min_max* %83, i32 0, i32 4
  %85 = load i32, i32* %84, align 4
  store i32 %85, i32* %37, align 4
  br label %86

86:                                               ; preds = %82, %71
  %87 = load i32, i32* %38, align 4
  %88 = load %struct.pll_min_max*, %struct.pll_min_max** %41, align 8
  %89 = getelementptr inbounds %struct.pll_min_max, %struct.pll_min_max* %88, i32 0, i32 5
  %90 = load i32, i32* %89, align 4
  %91 = icmp sgt i32 %87, %90
  br i1 %91, label %92, label %96

92:                                               ; preds = %86
  %93 = load %struct.pll_min_max*, %struct.pll_min_max** %41, align 8
  %94 = getelementptr inbounds %struct.pll_min_max, %struct.pll_min_max* %93, i32 0, i32 5
  %95 = load i32, i32* %94, align 4
  store i32 %95, i32* %38, align 4
  br label %96

96:                                               ; preds = %92, %86
  %97 = load i32, i32* %37, align 4
  %98 = load i32, i32* %38, align 4
  %99 = load i32, i32* %39, align 4
  %100 = call i32 (i8*, i32, ...) @DBG_MSG(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %97, i32 %98, i32 %99)
  %101 = load i32, i32* %37, align 4
  store i32 %101, i32* %26, align 4
  br label %102

102:                                              ; preds = %219, %96
  %103 = load i32, i32* %10, align 4
  %104 = load i32, i32* %26, align 4
  %105 = call i64 @splitp(i32 %103, i32 %104, i32* %21, i32* %22)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %113

107:                                              ; preds = %102
  %108 = load i32, i32* %26, align 4
  %109 = call i32 @WRN_MSG(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %108)
  %110 = load i32, i32* %39, align 4
  %111 = load i32, i32* %26, align 4
  %112 = add nsw i32 %111, %110
  store i32 %112, i32* %26, align 4
  br label %219

113:                                              ; preds = %102
  %114 = load %struct.pll_min_max*, %struct.pll_min_max** %41, align 8
  %115 = getelementptr inbounds %struct.pll_min_max, %struct.pll_min_max* %114, i32 0, i32 6
  %116 = load i32, i32* %115, align 4
  store i32 %116, i32* %20, align 4
  %117 = load i32, i32* %11, align 4
  %118 = load i32, i32* %26, align 4
  %119 = mul nsw i32 %117, %118
  store i32 %119, i32* %25, align 4
  br label %120

120:                                              ; preds = %213, %113
  %121 = load i32, i32* %25, align 4
  %122 = load i32, i32* %20, align 4
  %123 = mul nsw i32 %121, %122
  %124 = load %struct.pll_min_max*, %struct.pll_min_max** %41, align 8
  %125 = getelementptr inbounds %struct.pll_min_max, %struct.pll_min_max* %124, i32 0, i32 8
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @ROUND_UP_TO(i32 %123, i32 %126)
  %128 = load %struct.pll_min_max*, %struct.pll_min_max** %41, align 8
  %129 = getelementptr inbounds %struct.pll_min_max, %struct.pll_min_max* %128, i32 0, i32 8
  %130 = load i32, i32* %129, align 4
  %131 = sdiv i32 %127, %130
  store i32 %131, i32* %28, align 4
  %132 = load i32, i32* %28, align 4
  %133 = load %struct.pll_min_max*, %struct.pll_min_max** %41, align 8
  %134 = getelementptr inbounds %struct.pll_min_max, %struct.pll_min_max* %133, i32 0, i32 9
  %135 = load i32, i32* %134, align 4
  %136 = icmp slt i32 %132, %135
  br i1 %136, label %137, label %142

137:                                              ; preds = %120
  %138 = load %struct.pll_min_max*, %struct.pll_min_max** %41, align 8
  %139 = getelementptr inbounds %struct.pll_min_max, %struct.pll_min_max* %138, i32 0, i32 9
  %140 = load i32, i32* %139, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %28, align 4
  br label %142

142:                                              ; preds = %137, %120
  %143 = load i32, i32* %28, align 4
  %144 = load %struct.pll_min_max*, %struct.pll_min_max** %41, align 8
  %145 = getelementptr inbounds %struct.pll_min_max, %struct.pll_min_max* %144, i32 0, i32 10
  %146 = load i32, i32* %145, align 4
  %147 = icmp sgt i32 %143, %146
  br i1 %147, label %148, label %153

148:                                              ; preds = %142
  %149 = load %struct.pll_min_max*, %struct.pll_min_max** %41, align 8
  %150 = getelementptr inbounds %struct.pll_min_max, %struct.pll_min_max* %149, i32 0, i32 10
  %151 = load i32, i32* %150, align 4
  %152 = sub nsw i32 %151, 1
  store i32 %152, i32* %28, align 4
  br label %153

153:                                              ; preds = %148, %142
  %154 = load i32, i32* %28, align 4
  %155 = sub nsw i32 %154, 1
  store i32 %155, i32* %24, align 4
  br label %156

156:                                              ; preds = %197, %153
  %157 = load i32, i32* %24, align 4
  %158 = load i32, i32* %28, align 4
  %159 = icmp sle i32 %157, %158
  br i1 %159, label %160, label %200

160:                                              ; preds = %156
  %161 = load i32, i32* %10, align 4
  %162 = load i32, i32* %24, align 4
  %163 = load i32, i32* %20, align 4
  %164 = load i32, i32* %26, align 4
  %165 = call i32 @calc_vclock3(i32 %161, i32 %162, i32 %163, i32 %164)
  store i32 %165, i32* %29, align 4
  %166 = load i32, i32* %10, align 4
  %167 = load i32, i32* %24, align 4
  %168 = call i64 @splitm(i32 %166, i32 %167, i32* %18, i32* %19)
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %173

170:                                              ; preds = %160
  %171 = load i32, i32* %24, align 4
  %172 = call i32 @WRN_MSG(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %171)
  br label %197

173:                                              ; preds = %160
  %174 = load i32, i32* %11, align 4
  %175 = load i32, i32* %29, align 4
  %176 = icmp sgt i32 %174, %175
  br i1 %176, label %177, label %181

177:                                              ; preds = %173
  %178 = load i32, i32* %11, align 4
  %179 = load i32, i32* %29, align 4
  %180 = sub nsw i32 %178, %179
  store i32 %180, i32* %36, align 4
  br label %186

181:                                              ; preds = %173
  %182 = load i32, i32* %29, align 4
  %183 = load i32, i32* %11, align 4
  %184 = sub nsw i32 %182, %183
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %36, align 4
  br label %186

186:                                              ; preds = %181, %177
  %187 = load i32, i32* %36, align 4
  %188 = load i32, i32* %32, align 4
  %189 = icmp slt i32 %187, %188
  br i1 %189, label %190, label %196

190:                                              ; preds = %186
  %191 = load i32, i32* %24, align 4
  store i32 %191, i32* %34, align 4
  %192 = load i32, i32* %20, align 4
  store i32 %192, i32* %33, align 4
  %193 = load i32, i32* %26, align 4
  store i32 %193, i32* %27, align 4
  %194 = load i32, i32* %29, align 4
  store i32 %194, i32* %35, align 4
  %195 = load i32, i32* %36, align 4
  store i32 %195, i32* %32, align 4
  br label %196

196:                                              ; preds = %190, %186
  br label %197

197:                                              ; preds = %196, %170
  %198 = load i32, i32* %24, align 4
  %199 = add nsw i32 %198, 1
  store i32 %199, i32* %24, align 4
  br label %156

200:                                              ; preds = %156
  %201 = load i32, i32* %20, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %20, align 4
  br label %203

203:                                              ; preds = %200
  %204 = load i32, i32* %20, align 4
  %205 = load %struct.pll_min_max*, %struct.pll_min_max** %41, align 8
  %206 = getelementptr inbounds %struct.pll_min_max, %struct.pll_min_max* %205, i32 0, i32 7
  %207 = load i32, i32* %206, align 4
  %208 = icmp sle i32 %204, %207
  br i1 %208, label %209, label %213

209:                                              ; preds = %203
  %210 = load i32, i32* %29, align 4
  %211 = load i32, i32* %11, align 4
  %212 = icmp sge i32 %210, %211
  br label %213

213:                                              ; preds = %209, %203
  %214 = phi i1 [ false, %203 ], [ %212, %209 ]
  br i1 %214, label %120, label %215

215:                                              ; preds = %213
  %216 = load i32, i32* %39, align 4
  %217 = load i32, i32* %26, align 4
  %218 = add nsw i32 %217, %216
  store i32 %218, i32* %26, align 4
  br label %219

219:                                              ; preds = %215, %107
  %220 = load i32, i32* %26, align 4
  %221 = load i32, i32* %38, align 4
  %222 = icmp sle i32 %220, %221
  br i1 %222, label %102, label %223

223:                                              ; preds = %219
  %224 = load i32, i32* %34, align 4
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %229, label %226

226:                                              ; preds = %223
  %227 = load i32, i32* %11, align 4
  %228 = call i32 @WRN_MSG(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i32 %227)
  store i32 1, i32* %9, align 4
  br label %287

229:                                              ; preds = %223
  %230 = load i32, i32* %34, align 4
  store i32 %230, i32* %28, align 4
  %231 = load i32, i32* %33, align 4
  store i32 %231, i32* %20, align 4
  %232 = load i32, i32* %27, align 4
  store i32 %232, i32* %26, align 4
  %233 = load i32, i32* %10, align 4
  %234 = load i32, i32* %28, align 4
  %235 = call i64 @splitm(i32 %233, i32 %234, i32* %18, i32* %19)
  %236 = load i32, i32* %10, align 4
  %237 = load i32, i32* %26, align 4
  %238 = call i64 @splitp(i32 %236, i32 %237, i32* %21, i32* %22)
  %239 = load i32, i32* %20, align 4
  %240 = sub nsw i32 %239, 2
  store i32 %240, i32* %23, align 4
  %241 = load i32, i32* %28, align 4
  %242 = load i32, i32* %18, align 4
  %243 = load i32, i32* %19, align 4
  %244 = load i32, i32* %20, align 4
  %245 = load i32, i32* %23, align 4
  %246 = load i32, i32* %26, align 4
  %247 = load i32, i32* %21, align 4
  %248 = load i32, i32* %22, align 4
  %249 = load i32, i32* %10, align 4
  %250 = load i32, i32* %28, align 4
  %251 = load i32, i32* %20, align 4
  %252 = load i32, i32* %26, align 4
  %253 = call i32 @calc_vclock3(i32 %249, i32 %250, i32 %251, i32 %252)
  %254 = load i32, i32* %10, align 4
  %255 = load i32, i32* %18, align 4
  %256 = load i32, i32* %19, align 4
  %257 = load i32, i32* %23, align 4
  %258 = load i32, i32* %21, align 4
  %259 = load i32, i32* %22, align 4
  %260 = call i32 @calc_vclock(i32 %254, i32 %255, i32 %256, i32 %257, i32 %258, i32 %259, i32 0)
  %261 = load i32, i32* %10, align 4
  %262 = load i32, i32* %28, align 4
  %263 = load i32, i32* %20, align 4
  %264 = load i32, i32* %26, align 4
  %265 = call i32 @calc_vclock3(i32 %261, i32 %262, i32 %263, i32 %264)
  %266 = load i32, i32* %26, align 4
  %267 = mul nsw i32 %265, %266
  %268 = call i32 (i8*, i32, ...) @DBG_MSG(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.5, i64 0, i64 0), i32 %241, i32 %242, i32 %243, i32 %244, i32 %245, i32 %246, i32 %247, i32 %248, i32 %253, i32 %260, i32 %267)
  %269 = load i32, i32* %18, align 4
  %270 = load i32*, i32** %12, align 8
  store i32 %269, i32* %270, align 4
  %271 = load i32, i32* %19, align 4
  %272 = load i32*, i32** %13, align 8
  store i32 %271, i32* %272, align 4
  %273 = load i32, i32* %23, align 4
  %274 = load i32*, i32** %14, align 8
  store i32 %273, i32* %274, align 4
  %275 = load i32, i32* %21, align 4
  %276 = load i32*, i32** %15, align 8
  store i32 %275, i32* %276, align 4
  %277 = load i32, i32* %22, align 4
  %278 = load i32*, i32** %16, align 8
  store i32 %277, i32* %278, align 4
  %279 = load i32, i32* %10, align 4
  %280 = load i32, i32* %18, align 4
  %281 = load i32, i32* %19, align 4
  %282 = load i32, i32* %23, align 4
  %283 = load i32, i32* %21, align 4
  %284 = load i32, i32* %22, align 4
  %285 = call i32 @calc_vclock(i32 %279, i32 %280, i32 %281, i32 %282, i32 %283, i32 %284, i32 0)
  %286 = load i32*, i32** %17, align 8
  store i32 %285, i32* %286, align 4
  store i32 0, i32* %9, align 4
  br label %287

287:                                              ; preds = %229, %226
  %288 = load i32, i32* %9, align 4
  ret i32 %288
}

declare dso_local i32 @DBG_MSG(i8*, i32, ...) #1

declare dso_local i32 @ROUND_DOWN_TO(i32, i32) #1

declare dso_local i64 @splitp(i32, i32, i32*, i32*) #1

declare dso_local i32 @WRN_MSG(i8*, i32) #1

declare dso_local i32 @ROUND_UP_TO(i32, i32) #1

declare dso_local i32 @calc_vclock3(i32, i32, i32, i32) #1

declare dso_local i64 @splitm(i32, i32, i32*, i32*) #1

declare dso_local i32 @calc_vclock(i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
