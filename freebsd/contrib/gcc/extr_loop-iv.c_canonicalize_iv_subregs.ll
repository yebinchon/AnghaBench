; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_loop-iv.c_canonicalize_iv_subregs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_loop-iv.c_canonicalize_iv_subregs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtx_iv = type { i64, i64, i32, i32, i64, i8*, i32, i64 }
%struct.niter_desc = type { i32, i32 }

@const1_rtx = common dso_local global i64 0, align 8
@const0_rtx = common dso_local global i64 0, align 8
@ZERO_EXTEND = common dso_local global i32 0, align 4
@SIGN_EXTEND = common dso_local global i32 0, align 4
@UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtx_iv*, %struct.rtx_iv*, i32, %struct.niter_desc*)* @canonicalize_iv_subregs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @canonicalize_iv_subregs(%struct.rtx_iv* %0, %struct.rtx_iv* %1, i32 %2, %struct.niter_desc* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.rtx_iv*, align 8
  %7 = alloca %struct.rtx_iv*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.niter_desc*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.rtx_iv* %0, %struct.rtx_iv** %6, align 8
  store %struct.rtx_iv* %1, %struct.rtx_iv** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.niter_desc* %3, %struct.niter_desc** %9, align 8
  %12 = load %struct.rtx_iv*, %struct.rtx_iv** %6, align 8
  %13 = getelementptr inbounds %struct.rtx_iv, %struct.rtx_iv* %12, i32 0, i32 7
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %28, label %16

16:                                               ; preds = %4
  %17 = load %struct.rtx_iv*, %struct.rtx_iv** %6, align 8
  %18 = getelementptr inbounds %struct.rtx_iv, %struct.rtx_iv* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @const1_rtx, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %28, label %22

22:                                               ; preds = %16
  %23 = load %struct.rtx_iv*, %struct.rtx_iv** %6, align 8
  %24 = getelementptr inbounds %struct.rtx_iv, %struct.rtx_iv* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @const0_rtx, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %22, %16, %4
  store i32 0, i32* %5, align 4
  br label %309

29:                                               ; preds = %22
  %30 = load %struct.rtx_iv*, %struct.rtx_iv** %7, align 8
  %31 = getelementptr inbounds %struct.rtx_iv, %struct.rtx_iv* %30, i32 0, i32 7
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %46, label %34

34:                                               ; preds = %29
  %35 = load %struct.rtx_iv*, %struct.rtx_iv** %7, align 8
  %36 = getelementptr inbounds %struct.rtx_iv, %struct.rtx_iv* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @const1_rtx, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %46, label %40

40:                                               ; preds = %34
  %41 = load %struct.rtx_iv*, %struct.rtx_iv** %7, align 8
  %42 = getelementptr inbounds %struct.rtx_iv, %struct.rtx_iv* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @const0_rtx, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %40, %34, %29
  store i32 0, i32* %5, align 4
  br label %309

47:                                               ; preds = %40
  %48 = load i32, i32* %8, align 4
  switch i32 %48, label %125 [
    i32 132, label %49
    i32 130, label %49
    i32 131, label %63
    i32 129, label %63
    i32 128, label %77
  ]

49:                                               ; preds = %47, %47
  %50 = load %struct.rtx_iv*, %struct.rtx_iv** %6, align 8
  %51 = getelementptr inbounds %struct.rtx_iv, %struct.rtx_iv* %50, i32 0, i32 6
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @ZERO_EXTEND, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %61, label %55

55:                                               ; preds = %49
  %56 = load %struct.rtx_iv*, %struct.rtx_iv** %7, align 8
  %57 = getelementptr inbounds %struct.rtx_iv, %struct.rtx_iv* %56, i32 0, i32 6
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @ZERO_EXTEND, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %55, %49
  store i32 0, i32* %5, align 4
  br label %309

62:                                               ; preds = %55
  store i32 1, i32* %11, align 4
  br label %127

63:                                               ; preds = %47, %47
  %64 = load %struct.rtx_iv*, %struct.rtx_iv** %6, align 8
  %65 = getelementptr inbounds %struct.rtx_iv, %struct.rtx_iv* %64, i32 0, i32 6
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @SIGN_EXTEND, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %75, label %69

69:                                               ; preds = %63
  %70 = load %struct.rtx_iv*, %struct.rtx_iv** %7, align 8
  %71 = getelementptr inbounds %struct.rtx_iv, %struct.rtx_iv* %70, i32 0, i32 6
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @SIGN_EXTEND, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %69, %63
  store i32 0, i32* %5, align 4
  br label %309

76:                                               ; preds = %69
  store i32 0, i32* %11, align 4
  br label %127

77:                                               ; preds = %47
  %78 = load %struct.rtx_iv*, %struct.rtx_iv** %6, align 8
  %79 = getelementptr inbounds %struct.rtx_iv, %struct.rtx_iv* %78, i32 0, i32 6
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @UNKNOWN, align 4
  %82 = icmp ne i32 %80, %81
  br i1 %82, label %83, label %98

83:                                               ; preds = %77
  %84 = load %struct.rtx_iv*, %struct.rtx_iv** %7, align 8
  %85 = getelementptr inbounds %struct.rtx_iv, %struct.rtx_iv* %84, i32 0, i32 6
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @UNKNOWN, align 4
  %88 = icmp ne i32 %86, %87
  br i1 %88, label %89, label %98

89:                                               ; preds = %83
  %90 = load %struct.rtx_iv*, %struct.rtx_iv** %6, align 8
  %91 = getelementptr inbounds %struct.rtx_iv, %struct.rtx_iv* %90, i32 0, i32 6
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.rtx_iv*, %struct.rtx_iv** %7, align 8
  %94 = getelementptr inbounds %struct.rtx_iv, %struct.rtx_iv* %93, i32 0, i32 6
  %95 = load i32, i32* %94, align 8
  %96 = icmp ne i32 %92, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %89
  store i32 0, i32* %5, align 4
  br label %309

98:                                               ; preds = %89, %83, %77
  store i32 0, i32* %11, align 4
  %99 = load %struct.rtx_iv*, %struct.rtx_iv** %6, align 8
  %100 = getelementptr inbounds %struct.rtx_iv, %struct.rtx_iv* %99, i32 0, i32 6
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* @UNKNOWN, align 4
  %103 = icmp ne i32 %101, %102
  br i1 %103, label %104, label %111

104:                                              ; preds = %98
  %105 = load %struct.rtx_iv*, %struct.rtx_iv** %6, align 8
  %106 = getelementptr inbounds %struct.rtx_iv, %struct.rtx_iv* %105, i32 0, i32 6
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* @SIGN_EXTEND, align 4
  %109 = icmp eq i32 %107, %108
  %110 = zext i1 %109 to i32
  store i32 %110, i32* %11, align 4
  br label %111

111:                                              ; preds = %104, %98
  %112 = load %struct.rtx_iv*, %struct.rtx_iv** %7, align 8
  %113 = getelementptr inbounds %struct.rtx_iv, %struct.rtx_iv* %112, i32 0, i32 6
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* @UNKNOWN, align 4
  %116 = icmp ne i32 %114, %115
  br i1 %116, label %117, label %124

117:                                              ; preds = %111
  %118 = load %struct.rtx_iv*, %struct.rtx_iv** %7, align 8
  %119 = getelementptr inbounds %struct.rtx_iv, %struct.rtx_iv* %118, i32 0, i32 6
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* @SIGN_EXTEND, align 4
  %122 = icmp eq i32 %120, %121
  %123 = zext i1 %122 to i32
  store i32 %123, i32* %11, align 4
  br label %124

124:                                              ; preds = %117, %111
  br label %127

125:                                              ; preds = %47
  %126 = call i32 (...) @gcc_unreachable()
  br label %127

127:                                              ; preds = %125, %124, %76, %62
  %128 = load %struct.rtx_iv*, %struct.rtx_iv** %6, align 8
  %129 = getelementptr inbounds %struct.rtx_iv, %struct.rtx_iv* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  store i32 %130, i32* %10, align 4
  %131 = load i32, i32* %10, align 4
  %132 = call i64 @GET_MODE_BITSIZE(i32 %131)
  %133 = load %struct.rtx_iv*, %struct.rtx_iv** %7, align 8
  %134 = getelementptr inbounds %struct.rtx_iv, %struct.rtx_iv* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 8
  %136 = call i64 @GET_MODE_BITSIZE(i32 %135)
  %137 = icmp slt i64 %132, %136
  br i1 %137, label %138, label %142

138:                                              ; preds = %127
  %139 = load %struct.rtx_iv*, %struct.rtx_iv** %7, align 8
  %140 = getelementptr inbounds %struct.rtx_iv, %struct.rtx_iv* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 8
  store i32 %141, i32* %10, align 4
  br label %142

142:                                              ; preds = %138, %127
  %143 = load %struct.rtx_iv*, %struct.rtx_iv** %6, align 8
  %144 = getelementptr inbounds %struct.rtx_iv, %struct.rtx_iv* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 8
  %146 = load i32, i32* %10, align 4
  %147 = icmp ne i32 %145, %146
  br i1 %147, label %148, label %185

148:                                              ; preds = %142
  %149 = load %struct.rtx_iv*, %struct.rtx_iv** %6, align 8
  %150 = getelementptr inbounds %struct.rtx_iv, %struct.rtx_iv* %149, i32 0, i32 3
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.rtx_iv*, %struct.rtx_iv** %6, align 8
  %153 = getelementptr inbounds %struct.rtx_iv, %struct.rtx_iv* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 8
  %155 = icmp ne i32 %151, %154
  br i1 %155, label %162, label %156

156:                                              ; preds = %148
  %157 = load %struct.rtx_iv*, %struct.rtx_iv** %6, align 8
  %158 = getelementptr inbounds %struct.rtx_iv, %struct.rtx_iv* %157, i32 0, i32 4
  %159 = load i64, i64* %158, align 8
  %160 = load i64, i64* @const0_rtx, align 8
  %161 = icmp ne i64 %159, %160
  br i1 %161, label %162, label %163

162:                                              ; preds = %156, %148
  store i32 0, i32* %5, align 4
  br label %309

163:                                              ; preds = %156
  %164 = load i32, i32* %11, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %168

166:                                              ; preds = %163
  %167 = load i32, i32* @SIGN_EXTEND, align 4
  br label %170

168:                                              ; preds = %163
  %169 = load i32, i32* @ZERO_EXTEND, align 4
  br label %170

170:                                              ; preds = %168, %166
  %171 = phi i32 [ %167, %166 ], [ %169, %168 ]
  %172 = load i32, i32* %10, align 4
  %173 = load %struct.rtx_iv*, %struct.rtx_iv** %6, align 8
  %174 = getelementptr inbounds %struct.rtx_iv, %struct.rtx_iv* %173, i32 0, i32 5
  %175 = load i8*, i8** %174, align 8
  %176 = load %struct.rtx_iv*, %struct.rtx_iv** %6, align 8
  %177 = getelementptr inbounds %struct.rtx_iv, %struct.rtx_iv* %176, i32 0, i32 3
  %178 = load i32, i32* %177, align 4
  %179 = call i8* @simplify_gen_unary(i32 %171, i32 %172, i8* %175, i32 %178)
  %180 = load %struct.rtx_iv*, %struct.rtx_iv** %6, align 8
  %181 = getelementptr inbounds %struct.rtx_iv, %struct.rtx_iv* %180, i32 0, i32 5
  store i8* %179, i8** %181, align 8
  %182 = load i32, i32* %10, align 4
  %183 = load %struct.rtx_iv*, %struct.rtx_iv** %6, align 8
  %184 = getelementptr inbounds %struct.rtx_iv, %struct.rtx_iv* %183, i32 0, i32 2
  store i32 %182, i32* %184, align 8
  br label %185

185:                                              ; preds = %170, %142
  %186 = load %struct.rtx_iv*, %struct.rtx_iv** %7, align 8
  %187 = getelementptr inbounds %struct.rtx_iv, %struct.rtx_iv* %186, i32 0, i32 2
  %188 = load i32, i32* %187, align 8
  %189 = load i32, i32* %10, align 4
  %190 = icmp ne i32 %188, %189
  br i1 %190, label %191, label %228

191:                                              ; preds = %185
  %192 = load %struct.rtx_iv*, %struct.rtx_iv** %7, align 8
  %193 = getelementptr inbounds %struct.rtx_iv, %struct.rtx_iv* %192, i32 0, i32 3
  %194 = load i32, i32* %193, align 4
  %195 = load %struct.rtx_iv*, %struct.rtx_iv** %7, align 8
  %196 = getelementptr inbounds %struct.rtx_iv, %struct.rtx_iv* %195, i32 0, i32 2
  %197 = load i32, i32* %196, align 8
  %198 = icmp ne i32 %194, %197
  br i1 %198, label %205, label %199

199:                                              ; preds = %191
  %200 = load %struct.rtx_iv*, %struct.rtx_iv** %7, align 8
  %201 = getelementptr inbounds %struct.rtx_iv, %struct.rtx_iv* %200, i32 0, i32 4
  %202 = load i64, i64* %201, align 8
  %203 = load i64, i64* @const0_rtx, align 8
  %204 = icmp ne i64 %202, %203
  br i1 %204, label %205, label %206

205:                                              ; preds = %199, %191
  store i32 0, i32* %5, align 4
  br label %309

206:                                              ; preds = %199
  %207 = load i32, i32* %11, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %211

209:                                              ; preds = %206
  %210 = load i32, i32* @SIGN_EXTEND, align 4
  br label %213

211:                                              ; preds = %206
  %212 = load i32, i32* @ZERO_EXTEND, align 4
  br label %213

213:                                              ; preds = %211, %209
  %214 = phi i32 [ %210, %209 ], [ %212, %211 ]
  %215 = load i32, i32* %10, align 4
  %216 = load %struct.rtx_iv*, %struct.rtx_iv** %7, align 8
  %217 = getelementptr inbounds %struct.rtx_iv, %struct.rtx_iv* %216, i32 0, i32 5
  %218 = load i8*, i8** %217, align 8
  %219 = load %struct.rtx_iv*, %struct.rtx_iv** %7, align 8
  %220 = getelementptr inbounds %struct.rtx_iv, %struct.rtx_iv* %219, i32 0, i32 3
  %221 = load i32, i32* %220, align 4
  %222 = call i8* @simplify_gen_unary(i32 %214, i32 %215, i8* %218, i32 %221)
  %223 = load %struct.rtx_iv*, %struct.rtx_iv** %7, align 8
  %224 = getelementptr inbounds %struct.rtx_iv, %struct.rtx_iv* %223, i32 0, i32 5
  store i8* %222, i8** %224, align 8
  %225 = load i32, i32* %10, align 4
  %226 = load %struct.rtx_iv*, %struct.rtx_iv** %7, align 8
  %227 = getelementptr inbounds %struct.rtx_iv, %struct.rtx_iv* %226, i32 0, i32 2
  store i32 %225, i32* %227, align 8
  br label %228

228:                                              ; preds = %213, %185
  %229 = load %struct.rtx_iv*, %struct.rtx_iv** %6, align 8
  %230 = getelementptr inbounds %struct.rtx_iv, %struct.rtx_iv* %229, i32 0, i32 3
  %231 = load i32, i32* %230, align 4
  %232 = load %struct.rtx_iv*, %struct.rtx_iv** %6, align 8
  %233 = getelementptr inbounds %struct.rtx_iv, %struct.rtx_iv* %232, i32 0, i32 2
  %234 = load i32, i32* %233, align 8
  %235 = icmp eq i32 %231, %234
  br i1 %235, label %236, label %259

236:                                              ; preds = %228
  %237 = load %struct.rtx_iv*, %struct.rtx_iv** %6, align 8
  %238 = getelementptr inbounds %struct.rtx_iv, %struct.rtx_iv* %237, i32 0, i32 4
  %239 = load i64, i64* %238, align 8
  %240 = load i64, i64* @const0_rtx, align 8
  %241 = icmp eq i64 %239, %240
  br i1 %241, label %242, label %259

242:                                              ; preds = %236
  %243 = load %struct.rtx_iv*, %struct.rtx_iv** %6, align 8
  %244 = getelementptr inbounds %struct.rtx_iv, %struct.rtx_iv* %243, i32 0, i32 3
  %245 = load i32, i32* %244, align 4
  %246 = load %struct.rtx_iv*, %struct.rtx_iv** %7, align 8
  %247 = getelementptr inbounds %struct.rtx_iv, %struct.rtx_iv* %246, i32 0, i32 3
  %248 = load i32, i32* %247, align 4
  %249 = icmp ne i32 %245, %248
  br i1 %249, label %250, label %259

250:                                              ; preds = %242
  %251 = load %struct.rtx_iv*, %struct.rtx_iv** %6, align 8
  %252 = load %struct.rtx_iv*, %struct.rtx_iv** %7, align 8
  %253 = getelementptr inbounds %struct.rtx_iv, %struct.rtx_iv* %252, i32 0, i32 3
  %254 = load i32, i32* %253, align 4
  %255 = load i32, i32* %8, align 4
  %256 = load i32, i32* %11, align 4
  %257 = load %struct.niter_desc*, %struct.niter_desc** %9, align 8
  %258 = call i32 @shorten_into_mode(%struct.rtx_iv* %251, i32 %254, i32 %255, i32 %256, %struct.niter_desc* %257)
  br label %259

259:                                              ; preds = %250, %242, %236, %228
  %260 = load %struct.rtx_iv*, %struct.rtx_iv** %7, align 8
  %261 = getelementptr inbounds %struct.rtx_iv, %struct.rtx_iv* %260, i32 0, i32 3
  %262 = load i32, i32* %261, align 4
  %263 = load %struct.rtx_iv*, %struct.rtx_iv** %7, align 8
  %264 = getelementptr inbounds %struct.rtx_iv, %struct.rtx_iv* %263, i32 0, i32 2
  %265 = load i32, i32* %264, align 8
  %266 = icmp eq i32 %262, %265
  br i1 %266, label %267, label %291

267:                                              ; preds = %259
  %268 = load %struct.rtx_iv*, %struct.rtx_iv** %7, align 8
  %269 = getelementptr inbounds %struct.rtx_iv, %struct.rtx_iv* %268, i32 0, i32 4
  %270 = load i64, i64* %269, align 8
  %271 = load i64, i64* @const0_rtx, align 8
  %272 = icmp eq i64 %270, %271
  br i1 %272, label %273, label %291

273:                                              ; preds = %267
  %274 = load %struct.rtx_iv*, %struct.rtx_iv** %6, align 8
  %275 = getelementptr inbounds %struct.rtx_iv, %struct.rtx_iv* %274, i32 0, i32 3
  %276 = load i32, i32* %275, align 4
  %277 = load %struct.rtx_iv*, %struct.rtx_iv** %7, align 8
  %278 = getelementptr inbounds %struct.rtx_iv, %struct.rtx_iv* %277, i32 0, i32 3
  %279 = load i32, i32* %278, align 4
  %280 = icmp ne i32 %276, %279
  br i1 %280, label %281, label %291

281:                                              ; preds = %273
  %282 = load %struct.rtx_iv*, %struct.rtx_iv** %7, align 8
  %283 = load %struct.rtx_iv*, %struct.rtx_iv** %6, align 8
  %284 = getelementptr inbounds %struct.rtx_iv, %struct.rtx_iv* %283, i32 0, i32 3
  %285 = load i32, i32* %284, align 4
  %286 = load i32, i32* %8, align 4
  %287 = call i32 @swap_condition(i32 %286)
  %288 = load i32, i32* %11, align 4
  %289 = load %struct.niter_desc*, %struct.niter_desc** %9, align 8
  %290 = call i32 @shorten_into_mode(%struct.rtx_iv* %282, i32 %285, i32 %287, i32 %288, %struct.niter_desc* %289)
  br label %291

291:                                              ; preds = %281, %273, %267, %259
  %292 = load %struct.rtx_iv*, %struct.rtx_iv** %6, align 8
  %293 = getelementptr inbounds %struct.rtx_iv, %struct.rtx_iv* %292, i32 0, i32 3
  %294 = load i32, i32* %293, align 4
  %295 = load %struct.rtx_iv*, %struct.rtx_iv** %7, align 8
  %296 = getelementptr inbounds %struct.rtx_iv, %struct.rtx_iv* %295, i32 0, i32 3
  %297 = load i32, i32* %296, align 4
  %298 = icmp ne i32 %294, %297
  br i1 %298, label %299, label %300

299:                                              ; preds = %291
  store i32 0, i32* %5, align 4
  br label %309

300:                                              ; preds = %291
  %301 = load %struct.rtx_iv*, %struct.rtx_iv** %6, align 8
  %302 = getelementptr inbounds %struct.rtx_iv, %struct.rtx_iv* %301, i32 0, i32 3
  %303 = load i32, i32* %302, align 4
  %304 = load %struct.niter_desc*, %struct.niter_desc** %9, align 8
  %305 = getelementptr inbounds %struct.niter_desc, %struct.niter_desc* %304, i32 0, i32 0
  store i32 %303, i32* %305, align 4
  %306 = load i32, i32* %11, align 4
  %307 = load %struct.niter_desc*, %struct.niter_desc** %9, align 8
  %308 = getelementptr inbounds %struct.niter_desc, %struct.niter_desc* %307, i32 0, i32 1
  store i32 %306, i32* %308, align 4
  store i32 1, i32* %5, align 4
  br label %309

309:                                              ; preds = %300, %299, %205, %162, %97, %75, %61, %46, %28
  %310 = load i32, i32* %5, align 4
  ret i32 %310
}

declare dso_local i32 @gcc_unreachable(...) #1

declare dso_local i64 @GET_MODE_BITSIZE(i32) #1

declare dso_local i8* @simplify_gen_unary(i32, i32, i8*, i32) #1

declare dso_local i32 @shorten_into_mode(%struct.rtx_iv*, i32, i32, i32, %struct.niter_desc*) #1

declare dso_local i32 @swap_condition(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
