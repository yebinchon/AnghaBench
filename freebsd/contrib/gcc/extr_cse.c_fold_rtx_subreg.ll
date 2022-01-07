; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cse.c_fold_rtx_subreg.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cse.c_fold_rtx_subreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.table_elt = type { i64, %struct.table_elt*, %struct.table_elt* }

@CONST_INT = common dso_local global i64 0, align 8
@CONST_DOUBLE = common dso_local global i64 0, align 8
@UNITS_PER_WORD = common dso_local global i64 0, align 8
@VOIDmode = common dso_local global i64 0, align 8
@SUBREG = common dso_local global i64 0, align 8
@SIGN_EXTEND = common dso_local global i32 0, align 4
@ZERO_EXTEND = common dso_local global i32 0, align 4
@NULL_RTX = common dso_local global i64 0, align 8
@DIV = common dso_local global i32 0, align 4
@MOD = common dso_local global i32 0, align 4
@UDIV = common dso_local global i32 0, align 4
@UMOD = common dso_local global i32 0, align 4
@ASHIFTRT = common dso_local global i32 0, align 4
@LSHIFTRT = common dso_local global i32 0, align 4
@ROTATE = common dso_local global i32 0, align 4
@ROTATERT = common dso_local global i32 0, align 4
@ASHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i64)* @fold_rtx_subreg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fold_rtx_subreg(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.table_elt*, align 8
  %12 = alloca %struct.table_elt*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %17 = load i64, i64* %4, align 8
  %18 = call i32 @GET_MODE(i64 %17)
  store i32 %18, i32* %6, align 4
  %19 = load i64, i64* %4, align 8
  %20 = load i64, i64* @CONST_INT, align 8
  %21 = call i64 @lookup_as_function(i64 %19, i64 %20)
  store i64 %21, i64* %9, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %2
  %24 = load i64, i64* %4, align 8
  %25 = load i64, i64* @CONST_DOUBLE, align 8
  %26 = call i64 @lookup_as_function(i64 %24, i64 %25)
  store i64 %26, i64* %9, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %23, %2
  %29 = load i64, i64* %9, align 8
  store i64 %29, i64* %3, align 8
  br label %549

30:                                               ; preds = %23
  %31 = load i32, i32* %6, align 4
  %32 = call i64 @GET_MODE_SIZE(i32 %31)
  %33 = load i64, i64* %4, align 8
  %34 = call i64 @SUBREG_REG(i64 %33)
  %35 = call i32 @GET_MODE(i64 %34)
  %36 = call i64 @GET_MODE_SIZE(i32 %35)
  %37 = icmp sgt i64 %32, %36
  br i1 %37, label %38, label %125

38:                                               ; preds = %30
  %39 = load i64, i64* %4, align 8
  %40 = call i64 @SUBREG_REG(i64 %39)
  %41 = call i32 @GET_MODE(i64 %40)
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* %6, align 4
  %43 = call i64 @GET_MODE_SIZE(i32 %42)
  %44 = load i64, i64* @UNITS_PER_WORD, align 8
  %45 = icmp sle i64 %43, %44
  br i1 %45, label %46, label %123

46:                                               ; preds = %38
  %47 = load i32, i32* %10, align 4
  %48 = call i64 @GET_MODE_SIZE(i32 %47)
  %49 = load i64, i64* @UNITS_PER_WORD, align 8
  %50 = icmp sle i64 %48, %49
  br i1 %50, label %51, label %123

51:                                               ; preds = %46
  %52 = load i64, i64* %4, align 8
  %53 = call i64 @SUBREG_REG(i64 %52)
  %54 = load i64, i64* %4, align 8
  %55 = call i64 @SUBREG_REG(i64 %54)
  %56 = load i32, i32* %10, align 4
  %57 = call i32 @HASH(i64 %55, i32 %56)
  %58 = load i32, i32* %10, align 4
  %59 = call %struct.table_elt* @lookup(i64 %53, i32 %57, i32 %58)
  store %struct.table_elt* %59, %struct.table_elt** %11, align 8
  %60 = icmp ne %struct.table_elt* %59, null
  br i1 %60, label %61, label %123

61:                                               ; preds = %51
  %62 = load %struct.table_elt*, %struct.table_elt** %11, align 8
  %63 = getelementptr inbounds %struct.table_elt, %struct.table_elt* %62, i32 0, i32 2
  %64 = load %struct.table_elt*, %struct.table_elt** %63, align 8
  store %struct.table_elt* %64, %struct.table_elt** %11, align 8
  br label %65

65:                                               ; preds = %118, %61
  %66 = load %struct.table_elt*, %struct.table_elt** %11, align 8
  %67 = icmp ne %struct.table_elt* %66, null
  br i1 %67, label %68, label %122

68:                                               ; preds = %65
  %69 = load %struct.table_elt*, %struct.table_elt** %11, align 8
  %70 = getelementptr inbounds %struct.table_elt, %struct.table_elt* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = call i64 @CONSTANT_P(i64 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %86

74:                                               ; preds = %68
  %75 = load %struct.table_elt*, %struct.table_elt** %11, align 8
  %76 = getelementptr inbounds %struct.table_elt, %struct.table_elt* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = call i32 @GET_MODE(i64 %77)
  %79 = sext i32 %78 to i64
  %80 = load i64, i64* @VOIDmode, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %86

82:                                               ; preds = %74
  %83 = load %struct.table_elt*, %struct.table_elt** %11, align 8
  %84 = getelementptr inbounds %struct.table_elt, %struct.table_elt* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  store i64 %85, i64* %3, align 8
  br label %549

86:                                               ; preds = %74, %68
  %87 = load %struct.table_elt*, %struct.table_elt** %11, align 8
  %88 = getelementptr inbounds %struct.table_elt, %struct.table_elt* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = call i32 @GET_CODE(i64 %89)
  %91 = sext i32 %90 to i64
  %92 = load i64, i64* @SUBREG, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %117

94:                                               ; preds = %86
  %95 = load %struct.table_elt*, %struct.table_elt** %11, align 8
  %96 = getelementptr inbounds %struct.table_elt, %struct.table_elt* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = call i64 @SUBREG_REG(i64 %97)
  %99 = call i32 @GET_MODE(i64 %98)
  %100 = load i32, i32* %6, align 4
  %101 = icmp eq i32 %99, %100
  br i1 %101, label %102, label %117

102:                                              ; preds = %94
  %103 = load %struct.table_elt*, %struct.table_elt** %11, align 8
  %104 = getelementptr inbounds %struct.table_elt, %struct.table_elt* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load %struct.table_elt*, %struct.table_elt** %11, align 8
  %107 = getelementptr inbounds %struct.table_elt, %struct.table_elt* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = call i64 @exp_equiv_p(i64 %105, i64 %108, i32 1, i32 0)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %117

111:                                              ; preds = %102
  %112 = load %struct.table_elt*, %struct.table_elt** %11, align 8
  %113 = getelementptr inbounds %struct.table_elt, %struct.table_elt* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = call i64 @SUBREG_REG(i64 %114)
  %116 = call i64 @copy_rtx(i64 %115)
  store i64 %116, i64* %3, align 8
  br label %549

117:                                              ; preds = %102, %94, %86
  br label %118

118:                                              ; preds = %117
  %119 = load %struct.table_elt*, %struct.table_elt** %11, align 8
  %120 = getelementptr inbounds %struct.table_elt, %struct.table_elt* %119, i32 0, i32 1
  %121 = load %struct.table_elt*, %struct.table_elt** %120, align 8
  store %struct.table_elt* %121, %struct.table_elt** %11, align 8
  br label %65

122:                                              ; preds = %65
  br label %123

123:                                              ; preds = %122, %51, %46, %38
  %124 = load i64, i64* %4, align 8
  store i64 %124, i64* %3, align 8
  br label %549

125:                                              ; preds = %30
  %126 = load i64, i64* %4, align 8
  %127 = call i64 @SUBREG_REG(i64 %126)
  %128 = load i64, i64* %5, align 8
  %129 = call i64 @fold_rtx(i64 %127, i64 %128)
  store i64 %129, i64* %7, align 8
  %130 = load i64, i64* %7, align 8
  %131 = call i64 @equiv_constant(i64 %130)
  store i64 %131, i64* %8, align 8
  %132 = load i64, i64* %8, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %136

134:                                              ; preds = %125
  %135 = load i64, i64* %8, align 8
  store i64 %135, i64* %7, align 8
  br label %136

136:                                              ; preds = %134, %125
  %137 = load i64, i64* %7, align 8
  %138 = load i64, i64* %4, align 8
  %139 = call i64 @SUBREG_REG(i64 %138)
  %140 = icmp ne i64 %137, %139
  br i1 %140, label %141, label %155

141:                                              ; preds = %136
  %142 = load i32, i32* %6, align 4
  %143 = load i64, i64* %7, align 8
  %144 = load i64, i64* %4, align 8
  %145 = call i64 @SUBREG_REG(i64 %144)
  %146 = call i32 @GET_MODE(i64 %145)
  %147 = load i64, i64* %4, align 8
  %148 = call i32 @SUBREG_BYTE(i64 %147)
  %149 = call i64 @simplify_subreg(i32 %142, i64 %143, i32 %146, i32 %148)
  store i64 %149, i64* %9, align 8
  %150 = load i64, i64* %9, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %154

152:                                              ; preds = %141
  %153 = load i64, i64* %9, align 8
  store i64 %153, i64* %3, align 8
  br label %549

154:                                              ; preds = %141
  br label %155

155:                                              ; preds = %154, %136
  %156 = load i64, i64* %7, align 8
  %157 = call i64 @REG_P(i64 %156)
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %547

159:                                              ; preds = %155
  %160 = load i32, i32* %6, align 4
  %161 = call i64 @GET_MODE_SIZE(i32 %160)
  %162 = load i64, i64* %7, align 8
  %163 = call i32 @GET_MODE(i64 %162)
  %164 = call i64 @GET_MODE_SIZE(i32 %163)
  %165 = icmp slt i64 %161, %164
  br i1 %165, label %166, label %547

166:                                              ; preds = %159
  %167 = load i64, i64* %7, align 8
  %168 = load i64, i64* %7, align 8
  %169 = load i64, i64* %7, align 8
  %170 = call i32 @GET_MODE(i64 %169)
  %171 = call i32 @HASH(i64 %168, i32 %170)
  %172 = load i64, i64* %7, align 8
  %173 = call i32 @GET_MODE(i64 %172)
  %174 = call %struct.table_elt* @lookup(i64 %167, i32 %171, i32 %173)
  store %struct.table_elt* %174, %struct.table_elt** %12, align 8
  %175 = load %struct.table_elt*, %struct.table_elt** %12, align 8
  %176 = icmp ne %struct.table_elt* %175, null
  br i1 %176, label %177, label %181

177:                                              ; preds = %166
  %178 = load %struct.table_elt*, %struct.table_elt** %12, align 8
  %179 = getelementptr inbounds %struct.table_elt, %struct.table_elt* %178, i32 0, i32 2
  %180 = load %struct.table_elt*, %struct.table_elt** %179, align 8
  store %struct.table_elt* %180, %struct.table_elt** %12, align 8
  br label %181

181:                                              ; preds = %177, %166
  %182 = load i64, i64* %4, align 8
  %183 = call i64 @subreg_lowpart_p(i64 %182)
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %516

185:                                              ; preds = %181
  br label %186

186:                                              ; preds = %511, %185
  %187 = load %struct.table_elt*, %struct.table_elt** %12, align 8
  %188 = icmp ne %struct.table_elt* %187, null
  br i1 %188, label %189, label %515

189:                                              ; preds = %186
  %190 = load %struct.table_elt*, %struct.table_elt** %12, align 8
  %191 = getelementptr inbounds %struct.table_elt, %struct.table_elt* %190, i32 0, i32 0
  %192 = load i64, i64* %191, align 8
  %193 = call i32 @GET_CODE(i64 %192)
  store i32 %193, i32* %13, align 4
  %194 = load %struct.table_elt*, %struct.table_elt** %12, align 8
  %195 = getelementptr inbounds %struct.table_elt, %struct.table_elt* %194, i32 0, i32 0
  %196 = load i64, i64* %195, align 8
  %197 = call i64 @UNARY_P(i64 %196)
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %267

199:                                              ; preds = %189
  %200 = load i32, i32* %13, align 4
  %201 = load i32, i32* @SIGN_EXTEND, align 4
  %202 = icmp ne i32 %200, %201
  br i1 %202, label %203, label %267

203:                                              ; preds = %199
  %204 = load i32, i32* %13, align 4
  %205 = load i32, i32* @ZERO_EXTEND, align 4
  %206 = icmp ne i32 %204, %205
  br i1 %206, label %207, label %267

207:                                              ; preds = %203
  %208 = load %struct.table_elt*, %struct.table_elt** %12, align 8
  %209 = getelementptr inbounds %struct.table_elt, %struct.table_elt* %208, i32 0, i32 0
  %210 = load i64, i64* %209, align 8
  %211 = call i64 @XEXP(i64 %210, i32 0)
  %212 = call i32 @GET_CODE(i64 %211)
  %213 = sext i32 %212 to i64
  %214 = load i64, i64* @SUBREG, align 8
  %215 = icmp eq i64 %213, %214
  br i1 %215, label %216, label %267

216:                                              ; preds = %207
  %217 = load %struct.table_elt*, %struct.table_elt** %12, align 8
  %218 = getelementptr inbounds %struct.table_elt, %struct.table_elt* %217, i32 0, i32 0
  %219 = load i64, i64* %218, align 8
  %220 = call i64 @XEXP(i64 %219, i32 0)
  %221 = call i64 @SUBREG_REG(i64 %220)
  %222 = call i32 @GET_MODE(i64 %221)
  %223 = load i32, i32* %6, align 4
  %224 = icmp eq i32 %222, %223
  br i1 %224, label %225, label %267

225:                                              ; preds = %216
  %226 = load i32, i32* %6, align 4
  %227 = call i64 @GET_MODE_CLASS(i32 %226)
  %228 = load %struct.table_elt*, %struct.table_elt** %12, align 8
  %229 = getelementptr inbounds %struct.table_elt, %struct.table_elt* %228, i32 0, i32 0
  %230 = load i64, i64* %229, align 8
  %231 = call i64 @XEXP(i64 %230, i32 0)
  %232 = call i32 @GET_MODE(i64 %231)
  %233 = call i64 @GET_MODE_CLASS(i32 %232)
  %234 = icmp eq i64 %227, %233
  br i1 %234, label %235, label %267

235:                                              ; preds = %225
  %236 = load %struct.table_elt*, %struct.table_elt** %12, align 8
  %237 = getelementptr inbounds %struct.table_elt, %struct.table_elt* %236, i32 0, i32 0
  %238 = load i64, i64* %237, align 8
  %239 = call i64 @XEXP(i64 %238, i32 0)
  %240 = call i64 @SUBREG_REG(i64 %239)
  store i64 %240, i64* %14, align 8
  %241 = load i64, i64* %14, align 8
  %242 = call i64 @REG_P(i64 %241)
  %243 = icmp ne i64 %242, 0
  br i1 %243, label %252, label %244

244:                                              ; preds = %235
  %245 = load i64, i64* %14, align 8
  %246 = call i64 @CONSTANT_P(i64 %245)
  %247 = icmp ne i64 %246, 0
  br i1 %247, label %252, label %248

248:                                              ; preds = %244
  %249 = load i64, i64* %14, align 8
  %250 = load i64, i64* @NULL_RTX, align 8
  %251 = call i64 @fold_rtx(i64 %249, i64 %250)
  store i64 %251, i64* %14, align 8
  br label %252

252:                                              ; preds = %248, %244, %235
  %253 = load i64, i64* %14, align 8
  %254 = call i64 @equiv_constant(i64 %253)
  store i64 %254, i64* %14, align 8
  %255 = load i64, i64* %14, align 8
  %256 = icmp ne i64 %255, 0
  br i1 %256, label %257, label %266

257:                                              ; preds = %252
  %258 = load %struct.table_elt*, %struct.table_elt** %12, align 8
  %259 = getelementptr inbounds %struct.table_elt, %struct.table_elt* %258, i32 0, i32 0
  %260 = load i64, i64* %259, align 8
  %261 = call i32 @GET_CODE(i64 %260)
  %262 = load i32, i32* %6, align 4
  %263 = load i64, i64* %14, align 8
  %264 = load i32, i32* %6, align 4
  %265 = call i64 @simplify_unary_operation(i32 %261, i32 %262, i64 %263, i32 %264)
  store i64 %265, i64* %9, align 8
  br label %266

266:                                              ; preds = %257, %252
  br label %505

267:                                              ; preds = %225, %216, %207, %203, %199, %189
  %268 = load %struct.table_elt*, %struct.table_elt** %12, align 8
  %269 = getelementptr inbounds %struct.table_elt, %struct.table_elt* %268, i32 0, i32 0
  %270 = load i64, i64* %269, align 8
  %271 = call i64 @ARITHMETIC_P(i64 %270)
  %272 = icmp ne i64 %271, 0
  br i1 %272, label %273, label %466

273:                                              ; preds = %267
  %274 = load i32, i32* %13, align 4
  %275 = load i32, i32* @DIV, align 4
  %276 = icmp ne i32 %274, %275
  br i1 %276, label %277, label %466

277:                                              ; preds = %273
  %278 = load i32, i32* %13, align 4
  %279 = load i32, i32* @MOD, align 4
  %280 = icmp ne i32 %278, %279
  br i1 %280, label %281, label %466

281:                                              ; preds = %277
  %282 = load i32, i32* %13, align 4
  %283 = load i32, i32* @UDIV, align 4
  %284 = icmp ne i32 %282, %283
  br i1 %284, label %285, label %466

285:                                              ; preds = %281
  %286 = load i32, i32* %13, align 4
  %287 = load i32, i32* @UMOD, align 4
  %288 = icmp ne i32 %286, %287
  br i1 %288, label %289, label %466

289:                                              ; preds = %285
  %290 = load i32, i32* %13, align 4
  %291 = load i32, i32* @ASHIFTRT, align 4
  %292 = icmp ne i32 %290, %291
  br i1 %292, label %293, label %466

293:                                              ; preds = %289
  %294 = load i32, i32* %13, align 4
  %295 = load i32, i32* @LSHIFTRT, align 4
  %296 = icmp ne i32 %294, %295
  br i1 %296, label %297, label %466

297:                                              ; preds = %293
  %298 = load i32, i32* %13, align 4
  %299 = load i32, i32* @ROTATE, align 4
  %300 = icmp ne i32 %298, %299
  br i1 %300, label %301, label %466

301:                                              ; preds = %297
  %302 = load i32, i32* %13, align 4
  %303 = load i32, i32* @ROTATERT, align 4
  %304 = icmp ne i32 %302, %303
  br i1 %304, label %305, label %466

305:                                              ; preds = %301
  %306 = load %struct.table_elt*, %struct.table_elt** %12, align 8
  %307 = getelementptr inbounds %struct.table_elt, %struct.table_elt* %306, i32 0, i32 0
  %308 = load i64, i64* %307, align 8
  %309 = call i64 @XEXP(i64 %308, i32 0)
  %310 = call i32 @GET_CODE(i64 %309)
  %311 = sext i32 %310 to i64
  %312 = load i64, i64* @SUBREG, align 8
  %313 = icmp eq i64 %311, %312
  br i1 %313, label %314, label %323

314:                                              ; preds = %305
  %315 = load %struct.table_elt*, %struct.table_elt** %12, align 8
  %316 = getelementptr inbounds %struct.table_elt, %struct.table_elt* %315, i32 0, i32 0
  %317 = load i64, i64* %316, align 8
  %318 = call i64 @XEXP(i64 %317, i32 0)
  %319 = call i64 @SUBREG_REG(i64 %318)
  %320 = call i32 @GET_MODE(i64 %319)
  %321 = load i32, i32* %6, align 4
  %322 = icmp eq i32 %320, %321
  br i1 %322, label %330, label %323

323:                                              ; preds = %314, %305
  %324 = load %struct.table_elt*, %struct.table_elt** %12, align 8
  %325 = getelementptr inbounds %struct.table_elt, %struct.table_elt* %324, i32 0, i32 0
  %326 = load i64, i64* %325, align 8
  %327 = call i64 @XEXP(i64 %326, i32 0)
  %328 = call i64 @CONSTANT_P(i64 %327)
  %329 = icmp ne i64 %328, 0
  br i1 %329, label %330, label %466

330:                                              ; preds = %323, %314
  %331 = load %struct.table_elt*, %struct.table_elt** %12, align 8
  %332 = getelementptr inbounds %struct.table_elt, %struct.table_elt* %331, i32 0, i32 0
  %333 = load i64, i64* %332, align 8
  %334 = call i64 @XEXP(i64 %333, i32 1)
  %335 = call i32 @GET_CODE(i64 %334)
  %336 = sext i32 %335 to i64
  %337 = load i64, i64* @SUBREG, align 8
  %338 = icmp eq i64 %336, %337
  br i1 %338, label %339, label %348

339:                                              ; preds = %330
  %340 = load %struct.table_elt*, %struct.table_elt** %12, align 8
  %341 = getelementptr inbounds %struct.table_elt, %struct.table_elt* %340, i32 0, i32 0
  %342 = load i64, i64* %341, align 8
  %343 = call i64 @XEXP(i64 %342, i32 1)
  %344 = call i64 @SUBREG_REG(i64 %343)
  %345 = call i32 @GET_MODE(i64 %344)
  %346 = load i32, i32* %6, align 4
  %347 = icmp eq i32 %345, %346
  br i1 %347, label %355, label %348

348:                                              ; preds = %339, %330
  %349 = load %struct.table_elt*, %struct.table_elt** %12, align 8
  %350 = getelementptr inbounds %struct.table_elt, %struct.table_elt* %349, i32 0, i32 0
  %351 = load i64, i64* %350, align 8
  %352 = call i64 @XEXP(i64 %351, i32 1)
  %353 = call i64 @CONSTANT_P(i64 %352)
  %354 = icmp ne i64 %353, 0
  br i1 %354, label %355, label %466

355:                                              ; preds = %348, %339
  %356 = load i32, i32* %6, align 4
  %357 = load %struct.table_elt*, %struct.table_elt** %12, align 8
  %358 = getelementptr inbounds %struct.table_elt, %struct.table_elt* %357, i32 0, i32 0
  %359 = load i64, i64* %358, align 8
  %360 = call i64 @XEXP(i64 %359, i32 0)
  %361 = call i64 @gen_lowpart_common(i32 %356, i64 %360)
  store i64 %361, i64* %15, align 8
  %362 = load i32, i32* %6, align 4
  %363 = load %struct.table_elt*, %struct.table_elt** %12, align 8
  %364 = getelementptr inbounds %struct.table_elt, %struct.table_elt* %363, i32 0, i32 0
  %365 = load i64, i64* %364, align 8
  %366 = call i64 @XEXP(i64 %365, i32 1)
  %367 = call i64 @gen_lowpart_common(i32 %362, i64 %366)
  store i64 %367, i64* %16, align 8
  %368 = load i64, i64* %15, align 8
  %369 = icmp ne i64 %368, 0
  br i1 %369, label %370, label %382

370:                                              ; preds = %355
  %371 = load i64, i64* %15, align 8
  %372 = call i64 @REG_P(i64 %371)
  %373 = icmp ne i64 %372, 0
  br i1 %373, label %382, label %374

374:                                              ; preds = %370
  %375 = load i64, i64* %15, align 8
  %376 = call i64 @CONSTANT_P(i64 %375)
  %377 = icmp ne i64 %376, 0
  br i1 %377, label %382, label %378

378:                                              ; preds = %374
  %379 = load i64, i64* %15, align 8
  %380 = load i64, i64* @NULL_RTX, align 8
  %381 = call i64 @fold_rtx(i64 %379, i64 %380)
  store i64 %381, i64* %15, align 8
  br label %382

382:                                              ; preds = %378, %374, %370, %355
  %383 = load i64, i64* %15, align 8
  %384 = icmp ne i64 %383, 0
  br i1 %384, label %385, label %388

385:                                              ; preds = %382
  %386 = load i64, i64* %15, align 8
  %387 = call i64 @equiv_constant(i64 %386)
  store i64 %387, i64* %15, align 8
  br label %388

388:                                              ; preds = %385, %382
  %389 = load i64, i64* %16, align 8
  %390 = icmp ne i64 %389, 0
  br i1 %390, label %391, label %403

391:                                              ; preds = %388
  %392 = load i64, i64* %16, align 8
  %393 = call i64 @REG_P(i64 %392)
  %394 = icmp ne i64 %393, 0
  br i1 %394, label %403, label %395

395:                                              ; preds = %391
  %396 = load i64, i64* %16, align 8
  %397 = call i64 @CONSTANT_P(i64 %396)
  %398 = icmp ne i64 %397, 0
  br i1 %398, label %403, label %399

399:                                              ; preds = %395
  %400 = load i64, i64* %16, align 8
  %401 = load i64, i64* @NULL_RTX, align 8
  %402 = call i64 @fold_rtx(i64 %400, i64 %401)
  store i64 %402, i64* %16, align 8
  br label %403

403:                                              ; preds = %399, %395, %391, %388
  %404 = load i64, i64* %16, align 8
  %405 = icmp ne i64 %404, 0
  br i1 %405, label %406, label %409

406:                                              ; preds = %403
  %407 = load i64, i64* %16, align 8
  %408 = call i64 @equiv_constant(i64 %407)
  store i64 %408, i64* %16, align 8
  br label %409

409:                                              ; preds = %406, %403
  %410 = load i64, i64* %15, align 8
  %411 = icmp ne i64 %410, 0
  br i1 %411, label %412, label %449

412:                                              ; preds = %409
  %413 = load i64, i64* %16, align 8
  %414 = icmp ne i64 %413, 0
  br i1 %414, label %415, label %449

415:                                              ; preds = %412
  %416 = load %struct.table_elt*, %struct.table_elt** %12, align 8
  %417 = getelementptr inbounds %struct.table_elt, %struct.table_elt* %416, i32 0, i32 0
  %418 = load i64, i64* %417, align 8
  %419 = call i32 @GET_CODE(i64 %418)
  %420 = sext i32 %419 to i64
  %421 = load i64, i64* @ASHIFT, align 8
  %422 = icmp eq i64 %420, %421
  br i1 %422, label %423, label %449

423:                                              ; preds = %415
  %424 = load i64, i64* %16, align 8
  %425 = call i32 @GET_CODE(i64 %424)
  %426 = sext i32 %425 to i64
  %427 = load i64, i64* @CONST_INT, align 8
  %428 = icmp eq i64 %426, %427
  br i1 %428, label %429, label %449

429:                                              ; preds = %423
  %430 = load i64, i64* %16, align 8
  %431 = call i64 @INTVAL(i64 %430)
  %432 = load i32, i32* %6, align 4
  %433 = call i64 @GET_MODE_BITSIZE(i32 %432)
  %434 = icmp sge i64 %431, %433
  br i1 %434, label %435, label %449

435:                                              ; preds = %429
  %436 = load i64, i64* %16, align 8
  %437 = call i64 @INTVAL(i64 %436)
  %438 = load %struct.table_elt*, %struct.table_elt** %12, align 8
  %439 = getelementptr inbounds %struct.table_elt, %struct.table_elt* %438, i32 0, i32 0
  %440 = load i64, i64* %439, align 8
  %441 = call i32 @GET_MODE(i64 %440)
  %442 = call i64 @GET_MODE_BITSIZE(i32 %441)
  %443 = icmp slt i64 %437, %442
  br i1 %443, label %444, label %447

444:                                              ; preds = %435
  %445 = load i32, i32* %6, align 4
  %446 = call i64 @CONST0_RTX(i32 %445)
  store i64 %446, i64* %9, align 8
  br label %448

447:                                              ; preds = %435
  store i64 0, i64* %9, align 8
  br label %448

448:                                              ; preds = %447, %444
  br label %465

449:                                              ; preds = %429, %423, %415, %412, %409
  %450 = load i64, i64* %15, align 8
  %451 = icmp ne i64 %450, 0
  br i1 %451, label %452, label %464

452:                                              ; preds = %449
  %453 = load i64, i64* %16, align 8
  %454 = icmp ne i64 %453, 0
  br i1 %454, label %455, label %464

455:                                              ; preds = %452
  %456 = load %struct.table_elt*, %struct.table_elt** %12, align 8
  %457 = getelementptr inbounds %struct.table_elt, %struct.table_elt* %456, i32 0, i32 0
  %458 = load i64, i64* %457, align 8
  %459 = call i32 @GET_CODE(i64 %458)
  %460 = load i32, i32* %6, align 4
  %461 = load i64, i64* %15, align 8
  %462 = load i64, i64* %16, align 8
  %463 = call i64 @simplify_binary_operation(i32 %459, i32 %460, i64 %461, i64 %462)
  store i64 %463, i64* %9, align 8
  br label %464

464:                                              ; preds = %455, %452, %449
  br label %465

465:                                              ; preds = %464, %448
  br label %504

466:                                              ; preds = %348, %323, %301, %297, %293, %289, %285, %281, %277, %273, %267
  %467 = load %struct.table_elt*, %struct.table_elt** %12, align 8
  %468 = getelementptr inbounds %struct.table_elt, %struct.table_elt* %467, i32 0, i32 0
  %469 = load i64, i64* %468, align 8
  %470 = call i32 @GET_CODE(i64 %469)
  %471 = sext i32 %470 to i64
  %472 = load i64, i64* @SUBREG, align 8
  %473 = icmp eq i64 %471, %472
  br i1 %473, label %474, label %503

474:                                              ; preds = %466
  %475 = load %struct.table_elt*, %struct.table_elt** %12, align 8
  %476 = getelementptr inbounds %struct.table_elt, %struct.table_elt* %475, i32 0, i32 0
  %477 = load i64, i64* %476, align 8
  %478 = call i64 @SUBREG_REG(i64 %477)
  %479 = call i32 @GET_MODE(i64 %478)
  %480 = load i32, i32* %6, align 4
  %481 = icmp eq i32 %479, %480
  br i1 %481, label %482, label %503

482:                                              ; preds = %474
  %483 = load i64, i64* %7, align 8
  %484 = call i32 @GET_MODE(i64 %483)
  %485 = call i64 @GET_MODE_SIZE(i32 %484)
  %486 = load i64, i64* @UNITS_PER_WORD, align 8
  %487 = icmp sle i64 %485, %486
  br i1 %487, label %488, label %503

488:                                              ; preds = %482
  %489 = load %struct.table_elt*, %struct.table_elt** %12, align 8
  %490 = getelementptr inbounds %struct.table_elt, %struct.table_elt* %489, i32 0, i32 0
  %491 = load i64, i64* %490, align 8
  %492 = load %struct.table_elt*, %struct.table_elt** %12, align 8
  %493 = getelementptr inbounds %struct.table_elt, %struct.table_elt* %492, i32 0, i32 0
  %494 = load i64, i64* %493, align 8
  %495 = call i64 @exp_equiv_p(i64 %491, i64 %494, i32 1, i32 0)
  %496 = icmp ne i64 %495, 0
  br i1 %496, label %497, label %503

497:                                              ; preds = %488
  %498 = load %struct.table_elt*, %struct.table_elt** %12, align 8
  %499 = getelementptr inbounds %struct.table_elt, %struct.table_elt* %498, i32 0, i32 0
  %500 = load i64, i64* %499, align 8
  %501 = call i64 @SUBREG_REG(i64 %500)
  %502 = call i64 @copy_rtx(i64 %501)
  store i64 %502, i64* %9, align 8
  br label %503

503:                                              ; preds = %497, %488, %482, %474, %466
  br label %504

504:                                              ; preds = %503, %465
  br label %505

505:                                              ; preds = %504, %266
  %506 = load i64, i64* %9, align 8
  %507 = icmp ne i64 %506, 0
  br i1 %507, label %508, label %510

508:                                              ; preds = %505
  %509 = load i64, i64* %9, align 8
  store i64 %509, i64* %3, align 8
  br label %549

510:                                              ; preds = %505
  br label %511

511:                                              ; preds = %510
  %512 = load %struct.table_elt*, %struct.table_elt** %12, align 8
  %513 = getelementptr inbounds %struct.table_elt, %struct.table_elt* %512, i32 0, i32 1
  %514 = load %struct.table_elt*, %struct.table_elt** %513, align 8
  store %struct.table_elt* %514, %struct.table_elt** %12, align 8
  br label %186

515:                                              ; preds = %186
  br label %546

516:                                              ; preds = %181
  br label %517

517:                                              ; preds = %541, %516
  %518 = load %struct.table_elt*, %struct.table_elt** %12, align 8
  %519 = icmp ne %struct.table_elt* %518, null
  br i1 %519, label %520, label %545

520:                                              ; preds = %517
  %521 = load %struct.table_elt*, %struct.table_elt** %12, align 8
  %522 = getelementptr inbounds %struct.table_elt, %struct.table_elt* %521, i32 0, i32 0
  %523 = load i64, i64* %522, align 8
  %524 = call i32 @GET_CODE(i64 %523)
  %525 = load i32, i32* @ZERO_EXTEND, align 4
  %526 = icmp eq i32 %524, %525
  br i1 %526, label %527, label %540

527:                                              ; preds = %520
  %528 = load i64, i64* %4, align 8
  %529 = call i64 @subreg_lsb(i64 %528)
  %530 = load %struct.table_elt*, %struct.table_elt** %12, align 8
  %531 = getelementptr inbounds %struct.table_elt, %struct.table_elt* %530, i32 0, i32 0
  %532 = load i64, i64* %531, align 8
  %533 = call i64 @XEXP(i64 %532, i32 0)
  %534 = call i32 @GET_MODE(i64 %533)
  %535 = call i64 @GET_MODE_BITSIZE(i32 %534)
  %536 = icmp sge i64 %529, %535
  br i1 %536, label %537, label %540

537:                                              ; preds = %527
  %538 = load i32, i32* %6, align 4
  %539 = call i64 @CONST0_RTX(i32 %538)
  store i64 %539, i64* %3, align 8
  br label %549

540:                                              ; preds = %527, %520
  br label %541

541:                                              ; preds = %540
  %542 = load %struct.table_elt*, %struct.table_elt** %12, align 8
  %543 = getelementptr inbounds %struct.table_elt, %struct.table_elt* %542, i32 0, i32 1
  %544 = load %struct.table_elt*, %struct.table_elt** %543, align 8
  store %struct.table_elt* %544, %struct.table_elt** %12, align 8
  br label %517

545:                                              ; preds = %517
  br label %546

546:                                              ; preds = %545, %515
  br label %547

547:                                              ; preds = %546, %159, %155
  %548 = load i64, i64* %4, align 8
  store i64 %548, i64* %3, align 8
  br label %549

549:                                              ; preds = %547, %537, %508, %152, %123, %111, %82, %28
  %550 = load i64, i64* %3, align 8
  ret i64 %550
}

declare dso_local i32 @GET_MODE(i64) #1

declare dso_local i64 @lookup_as_function(i64, i64) #1

declare dso_local i64 @GET_MODE_SIZE(i32) #1

declare dso_local i64 @SUBREG_REG(i64) #1

declare dso_local %struct.table_elt* @lookup(i64, i32, i32) #1

declare dso_local i32 @HASH(i64, i32) #1

declare dso_local i64 @CONSTANT_P(i64) #1

declare dso_local i32 @GET_CODE(i64) #1

declare dso_local i64 @exp_equiv_p(i64, i64, i32, i32) #1

declare dso_local i64 @copy_rtx(i64) #1

declare dso_local i64 @fold_rtx(i64, i64) #1

declare dso_local i64 @equiv_constant(i64) #1

declare dso_local i64 @simplify_subreg(i32, i64, i32, i32) #1

declare dso_local i32 @SUBREG_BYTE(i64) #1

declare dso_local i64 @REG_P(i64) #1

declare dso_local i64 @subreg_lowpart_p(i64) #1

declare dso_local i64 @UNARY_P(i64) #1

declare dso_local i64 @XEXP(i64, i32) #1

declare dso_local i64 @GET_MODE_CLASS(i32) #1

declare dso_local i64 @simplify_unary_operation(i32, i32, i64, i32) #1

declare dso_local i64 @ARITHMETIC_P(i64) #1

declare dso_local i64 @gen_lowpart_common(i32, i64) #1

declare dso_local i64 @INTVAL(i64) #1

declare dso_local i64 @GET_MODE_BITSIZE(i32) #1

declare dso_local i64 @CONST0_RTX(i32) #1

declare dso_local i64 @simplify_binary_operation(i32, i32, i64, i64) #1

declare dso_local i64 @subreg_lsb(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
