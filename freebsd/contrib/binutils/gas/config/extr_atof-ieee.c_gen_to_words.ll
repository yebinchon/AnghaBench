; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_atof-ieee.c_gen_to_words.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_atof-ieee.c_gen_to_words.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i8, i64 }

@generic_floating_point_number = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str = private unnamed_addr constant [39 x i8] c"NaNs are not supported by this target\0A\00", align 1
@F_PRECISION = common dso_local global i32 0, align 4
@X_PRECISION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"Infinities are not supported by this target\0A\00", align 1
@LITTLENUM_NUMBER_OF_BITS = common dso_local global i64 0, align 8
@bits_left_in_littlenum = common dso_local global i64 0, align 8
@littlenum_pointer = common dso_local global i64 0, align 8
@littlenums_left = common dso_local global i64 0, align 8
@mask = common dso_local global i64* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gen_to_words(i64* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i64*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  store i64* %0, i64** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i32 0, i32* %8, align 4
  %23 = load i64*, i64** %5, align 8
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i64, i64* %23, i64 %25
  store i64* %26, i64** %16, align 8
  %27 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @generic_floating_point_number, i32 0, i32 0), align 8
  %28 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @generic_floating_point_number, i32 0, i32 1), align 8
  %29 = icmp sgt i64 %27, %28
  br i1 %29, label %30, label %54

30:                                               ; preds = %3
  %31 = load i8, i8* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @generic_floating_point_number, i32 0, i32 2), align 8
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 43
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = load i64*, i64** %5, align 8
  %36 = getelementptr inbounds i64, i64* %35, i64 0
  store i64 0, i64* %36, align 8
  br label %40

37:                                               ; preds = %30
  %38 = load i64*, i64** %5, align 8
  %39 = getelementptr inbounds i64, i64* %38, i64 0
  store i64 32768, i64* %39, align 8
  br label %40

40:                                               ; preds = %37, %34
  %41 = load i64*, i64** %5, align 8
  %42 = getelementptr inbounds i64, i64* %41, i64 1
  %43 = load i64*, i64** %16, align 8
  %44 = load i64*, i64** %5, align 8
  %45 = ptrtoint i64* %43 to i64
  %46 = ptrtoint i64* %44 to i64
  %47 = sub i64 %45, %46
  %48 = sdiv exact i64 %47, 8
  %49 = sub nsw i64 %48, 1
  %50 = mul i64 %49, 8
  %51 = trunc i64 %50 to i32
  %52 = call i32 @memset(i64* %42, i8 signext 0, i32 %51)
  %53 = load i32, i32* %8, align 4
  store i32 %53, i32* %4, align 4
  br label %626

54:                                               ; preds = %3
  %55 = load i8, i8* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @generic_floating_point_number, i32 0, i32 2), align 8
  %56 = sext i8 %55 to i32
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %91

58:                                               ; preds = %54
  %59 = load i32, i32* %6, align 4
  %60 = call i64 @TC_LARGEST_EXPONENT_IS_NORMAL(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %58
  %63 = call i32 @as_warn(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %64

64:                                               ; preds = %62, %58
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* @F_PRECISION, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %73

68:                                               ; preds = %64
  %69 = load i64*, i64** %5, align 8
  %70 = getelementptr inbounds i64, i64* %69, i64 0
  store i64 32767, i64* %70, align 8
  %71 = load i64*, i64** %5, align 8
  %72 = getelementptr inbounds i64, i64* %71, i64 1
  store i64 65535, i64* %72, align 8
  br label %89

73:                                               ; preds = %64
  %74 = load i32, i32* %6, align 4
  %75 = load i32, i32* @X_PRECISION, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %77, label %79

77:                                               ; preds = %73
  %78 = call i32 (...) @abort() #3
  unreachable

79:                                               ; preds = %73
  %80 = load i64*, i64** %5, align 8
  %81 = getelementptr inbounds i64, i64* %80, i64 0
  store i64 32767, i64* %81, align 8
  %82 = load i64*, i64** %5, align 8
  %83 = getelementptr inbounds i64, i64* %82, i64 1
  store i64 65535, i64* %83, align 8
  %84 = load i64*, i64** %5, align 8
  %85 = getelementptr inbounds i64, i64* %84, i64 2
  store i64 65535, i64* %85, align 8
  %86 = load i64*, i64** %5, align 8
  %87 = getelementptr inbounds i64, i64* %86, i64 3
  store i64 65535, i64* %87, align 8
  br label %88

88:                                               ; preds = %79
  br label %89

89:                                               ; preds = %88, %68
  %90 = load i32, i32* %8, align 4
  store i32 %90, i32* %4, align 4
  br label %626

91:                                               ; preds = %54
  %92 = load i8, i8* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @generic_floating_point_number, i32 0, i32 2), align 8
  %93 = sext i8 %92 to i32
  %94 = icmp eq i32 %93, 80
  br i1 %94, label %95, label %128

95:                                               ; preds = %91
  %96 = load i32, i32* %6, align 4
  %97 = call i64 @TC_LARGEST_EXPONENT_IS_NORMAL(i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %95
  %100 = call i32 @as_warn(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  br label %101

101:                                              ; preds = %99, %95
  %102 = load i32, i32* %6, align 4
  %103 = load i32, i32* @F_PRECISION, align 4
  %104 = icmp eq i32 %102, %103
  br i1 %104, label %105, label %110

105:                                              ; preds = %101
  %106 = load i64*, i64** %5, align 8
  %107 = getelementptr inbounds i64, i64* %106, i64 0
  store i64 32640, i64* %107, align 8
  %108 = load i64*, i64** %5, align 8
  %109 = getelementptr inbounds i64, i64* %108, i64 1
  store i64 0, i64* %109, align 8
  br label %126

110:                                              ; preds = %101
  %111 = load i32, i32* %6, align 4
  %112 = load i32, i32* @X_PRECISION, align 4
  %113 = icmp eq i32 %111, %112
  br i1 %113, label %114, label %116

114:                                              ; preds = %110
  %115 = call i32 (...) @abort() #3
  unreachable

116:                                              ; preds = %110
  %117 = load i64*, i64** %5, align 8
  %118 = getelementptr inbounds i64, i64* %117, i64 0
  store i64 32752, i64* %118, align 8
  %119 = load i64*, i64** %5, align 8
  %120 = getelementptr inbounds i64, i64* %119, i64 1
  store i64 0, i64* %120, align 8
  %121 = load i64*, i64** %5, align 8
  %122 = getelementptr inbounds i64, i64* %121, i64 2
  store i64 0, i64* %122, align 8
  %123 = load i64*, i64** %5, align 8
  %124 = getelementptr inbounds i64, i64* %123, i64 3
  store i64 0, i64* %124, align 8
  br label %125

125:                                              ; preds = %116
  br label %126

126:                                              ; preds = %125, %105
  %127 = load i32, i32* %8, align 4
  store i32 %127, i32* %4, align 4
  br label %626

128:                                              ; preds = %91
  %129 = load i8, i8* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @generic_floating_point_number, i32 0, i32 2), align 8
  %130 = sext i8 %129 to i32
  %131 = icmp eq i32 %130, 78
  br i1 %131, label %132, label %165

132:                                              ; preds = %128
  %133 = load i32, i32* %6, align 4
  %134 = call i64 @TC_LARGEST_EXPONENT_IS_NORMAL(i32 %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %138

136:                                              ; preds = %132
  %137 = call i32 @as_warn(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  br label %138

138:                                              ; preds = %136, %132
  %139 = load i32, i32* %6, align 4
  %140 = load i32, i32* @F_PRECISION, align 4
  %141 = icmp eq i32 %139, %140
  br i1 %141, label %142, label %147

142:                                              ; preds = %138
  %143 = load i64*, i64** %5, align 8
  %144 = getelementptr inbounds i64, i64* %143, i64 0
  store i64 65408, i64* %144, align 8
  %145 = load i64*, i64** %5, align 8
  %146 = getelementptr inbounds i64, i64* %145, i64 1
  store i64 0, i64* %146, align 8
  br label %163

147:                                              ; preds = %138
  %148 = load i32, i32* %6, align 4
  %149 = load i32, i32* @X_PRECISION, align 4
  %150 = icmp eq i32 %148, %149
  br i1 %150, label %151, label %153

151:                                              ; preds = %147
  %152 = call i32 (...) @abort() #3
  unreachable

153:                                              ; preds = %147
  %154 = load i64*, i64** %5, align 8
  %155 = getelementptr inbounds i64, i64* %154, i64 0
  store i64 65520, i64* %155, align 8
  %156 = load i64*, i64** %5, align 8
  %157 = getelementptr inbounds i64, i64* %156, i64 1
  store i64 0, i64* %157, align 8
  %158 = load i64*, i64** %5, align 8
  %159 = getelementptr inbounds i64, i64* %158, i64 2
  store i64 0, i64* %159, align 8
  %160 = load i64*, i64** %5, align 8
  %161 = getelementptr inbounds i64, i64* %160, i64 3
  store i64 0, i64* %161, align 8
  br label %162

162:                                              ; preds = %153
  br label %163

163:                                              ; preds = %162, %142
  %164 = load i32, i32* %8, align 4
  store i32 %164, i32* %4, align 4
  br label %626

165:                                              ; preds = %128
  br label %166

166:                                              ; preds = %165
  br label %167

167:                                              ; preds = %166
  %168 = load i64, i64* @LITTLENUM_NUMBER_OF_BITS, align 8
  store i64 %168, i64* @bits_left_in_littlenum, align 8
  %169 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @generic_floating_point_number, i32 0, i32 1), align 8
  store i64 %169, i64* @littlenum_pointer, align 8
  %170 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @generic_floating_point_number, i32 0, i32 1), align 8
  %171 = add nsw i64 1, %170
  %172 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @generic_floating_point_number, i32 0, i32 0), align 8
  %173 = sub nsw i64 %171, %172
  store i64 %173, i64* @littlenums_left, align 8
  store i32 0, i32* %13, align 4
  br label %174

174:                                              ; preds = %179, %167
  %175 = call i32 @next_bits(i32 1)
  %176 = icmp ne i32 %175, 0
  %177 = xor i1 %176, true
  br i1 %177, label %178, label %182

178:                                              ; preds = %174
  br label %179

179:                                              ; preds = %178
  %180 = load i32, i32* %13, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %13, align 4
  br label %174

182:                                              ; preds = %174
  %183 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @generic_floating_point_number, i32 0, i32 3), align 8
  %184 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @generic_floating_point_number, i32 0, i32 1), align 8
  %185 = add nsw i64 %183, %184
  %186 = add nsw i64 %185, 1
  %187 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @generic_floating_point_number, i32 0, i32 0), align 8
  %188 = sub nsw i64 %186, %187
  store i64 %188, i64* %9, align 8
  %189 = load i64, i64* %9, align 8
  %190 = load i64, i64* @LITTLENUM_NUMBER_OF_BITS, align 8
  %191 = mul nsw i64 %189, %190
  store i64 %191, i64* %10, align 8
  %192 = load i64, i64* %10, align 8
  %193 = load i32, i32* %13, align 4
  %194 = sext i32 %193 to i64
  %195 = sub nsw i64 %192, %194
  store i64 %195, i64* %11, align 8
  %196 = load i64, i64* %11, align 8
  %197 = load i64, i64* %7, align 8
  %198 = sub nsw i64 %197, 1
  %199 = trunc i64 %198 to i32
  %200 = shl i32 1, %199
  %201 = sub nsw i32 %200, 2
  %202 = sext i32 %201 to i64
  %203 = add nsw i64 %196, %202
  store i64 %203, i64* %12, align 8
  %204 = load i64*, i64** %5, align 8
  store i64* %204, i64** %15, align 8
  %205 = load i8, i8* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @generic_floating_point_number, i32 0, i32 2), align 8
  %206 = sext i8 %205 to i32
  %207 = icmp eq i32 %206, 43
  br i1 %207, label %208, label %209

208:                                              ; preds = %182
  br label %214

209:                                              ; preds = %182
  %210 = load i64, i64* @LITTLENUM_NUMBER_OF_BITS, align 8
  %211 = sub nsw i64 %210, 1
  %212 = trunc i64 %211 to i32
  %213 = shl i32 1, %212
  br label %214

214:                                              ; preds = %209, %208
  %215 = phi i32 [ 0, %208 ], [ %213, %209 ]
  %216 = sext i32 %215 to i64
  store i64 %216, i64* %14, align 8
  %217 = load i64, i64* %12, align 8
  %218 = icmp sle i64 %217, 0
  br i1 %218, label %219, label %477

219:                                              ; preds = %214
  %220 = call i32 @unget_bits(i32 1)
  %221 = load i64, i64* %12, align 8
  %222 = sub nsw i64 0, %221
  %223 = trunc i64 %222 to i32
  store i32 %223, i32* %18, align 4
  %224 = load i64, i64* @LITTLENUM_NUMBER_OF_BITS, align 8
  %225 = load i32, i32* %6, align 4
  %226 = sext i32 %225 to i64
  %227 = mul nsw i64 %224, %226
  %228 = load i64, i64* %7, align 8
  %229 = add nsw i64 %228, 1
  %230 = load i32, i32* %18, align 4
  %231 = sext i32 %230 to i64
  %232 = add nsw i64 %229, %231
  %233 = sub nsw i64 %227, %232
  %234 = trunc i64 %233 to i32
  store i32 %234, i32* %17, align 4
  %235 = load i32, i32* %18, align 4
  %236 = sext i32 %235 to i64
  %237 = load i64, i64* @LITTLENUM_NUMBER_OF_BITS, align 8
  %238 = load i64, i64* %7, align 8
  %239 = sub nsw i64 %237, %238
  %240 = icmp sge i64 %236, %239
  br i1 %240, label %241, label %295

241:                                              ; preds = %219
  %242 = load i64, i64* @LITTLENUM_NUMBER_OF_BITS, align 8
  %243 = sub nsw i64 %242, 1
  %244 = load i64, i64* %7, align 8
  %245 = sub nsw i64 %243, %244
  %246 = load i32, i32* %18, align 4
  %247 = sext i32 %246 to i64
  %248 = sub nsw i64 %247, %245
  %249 = trunc i64 %248 to i32
  store i32 %249, i32* %18, align 4
  %250 = load i64, i64* %14, align 8
  %251 = load i64*, i64** %15, align 8
  %252 = getelementptr inbounds i64, i64* %251, i32 1
  store i64* %252, i64** %15, align 8
  store i64 %250, i64* %251, align 8
  %253 = load i32, i32* %18, align 4
  %254 = sext i32 %253 to i64
  %255 = load i64, i64* %7, align 8
  %256 = add nsw i64 %254, %255
  %257 = add nsw i64 %256, 1
  %258 = load i32, i32* %6, align 4
  %259 = sext i32 %258 to i64
  %260 = load i64, i64* @LITTLENUM_NUMBER_OF_BITS, align 8
  %261 = mul nsw i64 %259, %260
  %262 = icmp sgt i64 %257, %261
  br i1 %262, label %263, label %267

263:                                              ; preds = %241
  %264 = load i64*, i64** %5, align 8
  %265 = call i32 @make_invalid_floating_point_number(i64* %264)
  %266 = load i32, i32* %8, align 4
  store i32 %266, i32* %4, align 4
  br label %626

267:                                              ; preds = %241
  br label %268

268:                                              ; preds = %273, %267
  %269 = load i32, i32* %18, align 4
  %270 = sext i32 %269 to i64
  %271 = load i64, i64* @LITTLENUM_NUMBER_OF_BITS, align 8
  %272 = icmp sge i64 %270, %271
  br i1 %272, label %273, label %281

273:                                              ; preds = %268
  %274 = load i64, i64* @LITTLENUM_NUMBER_OF_BITS, align 8
  %275 = load i32, i32* %18, align 4
  %276 = sext i32 %275 to i64
  %277 = sub nsw i64 %276, %274
  %278 = trunc i64 %277 to i32
  store i32 %278, i32* %18, align 4
  %279 = load i64*, i64** %15, align 8
  %280 = getelementptr inbounds i64, i64* %279, i32 1
  store i64* %280, i64** %15, align 8
  store i64 0, i64* %279, align 8
  br label %268

281:                                              ; preds = %268
  %282 = load i32, i32* %18, align 4
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %284, label %294

284:                                              ; preds = %281
  %285 = load i64, i64* @LITTLENUM_NUMBER_OF_BITS, align 8
  %286 = load i32, i32* %18, align 4
  %287 = sext i32 %286 to i64
  %288 = sub nsw i64 %285, %287
  %289 = trunc i64 %288 to i32
  %290 = call i32 @next_bits(i32 %289)
  %291 = sext i32 %290 to i64
  %292 = load i64*, i64** %15, align 8
  %293 = getelementptr inbounds i64, i64* %292, i32 1
  store i64* %293, i64** %15, align 8
  store i64 %291, i64* %292, align 8
  br label %294

294:                                              ; preds = %284, %281
  br label %332

295:                                              ; preds = %219
  %296 = load i32, i32* %6, align 4
  %297 = load i32, i32* @X_PRECISION, align 4
  %298 = icmp eq i32 %296, %297
  br i1 %298, label %299, label %315

299:                                              ; preds = %295
  %300 = load i64, i64* %7, align 8
  %301 = icmp eq i64 %300, 15
  br i1 %301, label %302, label %315

302:                                              ; preds = %299
  %303 = load i64, i64* %14, align 8
  %304 = load i64*, i64** %15, align 8
  %305 = getelementptr inbounds i64, i64* %304, i32 1
  store i64* %305, i64** %15, align 8
  store i64 %303, i64* %304, align 8
  %306 = load i64, i64* @LITTLENUM_NUMBER_OF_BITS, align 8
  %307 = load i32, i32* %18, align 4
  %308 = sext i32 %307 to i64
  %309 = sub nsw i64 %306, %308
  %310 = trunc i64 %309 to i32
  %311 = call i32 @next_bits(i32 %310)
  %312 = sext i32 %311 to i64
  %313 = load i64*, i64** %15, align 8
  %314 = getelementptr inbounds i64, i64* %313, i32 1
  store i64* %314, i64** %15, align 8
  store i64 %312, i64* %313, align 8
  br label %331

315:                                              ; preds = %299, %295
  %316 = load i64, i64* @LITTLENUM_NUMBER_OF_BITS, align 8
  %317 = sub nsw i64 %316, 1
  %318 = load i64, i64* %7, align 8
  %319 = load i32, i32* %18, align 4
  %320 = sext i32 %319 to i64
  %321 = add nsw i64 %318, %320
  %322 = sub nsw i64 %317, %321
  %323 = trunc i64 %322 to i32
  %324 = call i32 @next_bits(i32 %323)
  %325 = sext i32 %324 to i64
  %326 = load i64, i64* %14, align 8
  %327 = or i64 %326, %325
  store i64 %327, i64* %14, align 8
  %328 = load i64, i64* %14, align 8
  %329 = load i64*, i64** %15, align 8
  %330 = getelementptr inbounds i64, i64* %329, i32 1
  store i64* %330, i64** %15, align 8
  store i64 %328, i64* %329, align 8
  br label %331

331:                                              ; preds = %315, %302
  br label %332

332:                                              ; preds = %331, %294
  br label %333

333:                                              ; preds = %337, %332
  %334 = load i64*, i64** %15, align 8
  %335 = load i64*, i64** %16, align 8
  %336 = icmp ult i64* %334, %335
  br i1 %336, label %337, label %344

337:                                              ; preds = %333
  %338 = load i64, i64* @LITTLENUM_NUMBER_OF_BITS, align 8
  %339 = trunc i64 %338 to i32
  %340 = call i32 @next_bits(i32 %339)
  %341 = sext i32 %340 to i64
  %342 = load i64*, i64** %15, align 8
  %343 = getelementptr inbounds i64, i64* %342, i32 1
  store i64* %343, i64** %15, align 8
  store i64 %341, i64* %342, align 8
  br label %333

344:                                              ; preds = %333
  %345 = call i32 @next_bits(i32 1)
  %346 = icmp ne i32 %345, 0
  br i1 %346, label %347, label %475

347:                                              ; preds = %344
  %348 = load i64*, i64** %15, align 8
  %349 = getelementptr inbounds i64, i64* %348, i32 -1
  store i64* %349, i64** %15, align 8
  %350 = load i32, i32* %17, align 4
  %351 = sext i32 %350 to i64
  %352 = load i64, i64* @LITTLENUM_NUMBER_OF_BITS, align 8
  %353 = icmp sge i64 %351, %352
  br i1 %353, label %354, label %470

354:                                              ; preds = %347
  store i32 0, i32* %19, align 4
  store i32 0, i32* %19, align 4
  %355 = load i32, i32* %17, align 4
  store i32 %355, i32* %20, align 4
  br label %356

356:                                              ; preds = %369, %354
  %357 = load i32, i32* %20, align 4
  %358 = sext i32 %357 to i64
  %359 = load i64, i64* @LITTLENUM_NUMBER_OF_BITS, align 8
  %360 = icmp sgt i64 %358, %359
  br i1 %360, label %361, label %377

361:                                              ; preds = %356
  %362 = load i64*, i64** %15, align 8
  %363 = load i32, i32* %19, align 4
  %364 = sext i32 %363 to i64
  %365 = getelementptr inbounds i64, i64* %362, i64 %364
  %366 = load i64, i64* %365, align 8
  %367 = icmp ne i64 %366, -1
  br i1 %367, label %368, label %369

368:                                              ; preds = %361
  br label %377

369:                                              ; preds = %361
  %370 = load i32, i32* %19, align 4
  %371 = add nsw i32 %370, -1
  store i32 %371, i32* %19, align 4
  %372 = load i64, i64* @LITTLENUM_NUMBER_OF_BITS, align 8
  %373 = load i32, i32* %20, align 4
  %374 = sext i32 %373 to i64
  %375 = sub nsw i64 %374, %372
  %376 = trunc i64 %375 to i32
  store i32 %376, i32* %20, align 4
  br label %356

377:                                              ; preds = %368, %356
  %378 = load i32, i32* %20, align 4
  %379 = sext i32 %378 to i64
  %380 = load i64, i64* @LITTLENUM_NUMBER_OF_BITS, align 8
  %381 = icmp sgt i64 %379, %380
  br i1 %381, label %411, label %382

382:                                              ; preds = %377
  %383 = load i64*, i64** %15, align 8
  %384 = load i32, i32* %19, align 4
  %385 = sext i32 %384 to i64
  %386 = getelementptr inbounds i64, i64* %383, i64 %385
  %387 = load i64, i64* %386, align 8
  %388 = load i64*, i64** @mask, align 8
  %389 = load i32, i32* %20, align 4
  %390 = sext i32 %389 to i64
  %391 = getelementptr inbounds i64, i64* %388, i64 %390
  %392 = load i64, i64* %391, align 8
  %393 = and i64 %387, %392
  %394 = load i64*, i64** @mask, align 8
  %395 = load i32, i32* %20, align 4
  %396 = sext i32 %395 to i64
  %397 = getelementptr inbounds i64, i64* %394, i64 %396
  %398 = load i64, i64* %397, align 8
  %399 = icmp ne i64 %393, %398
  br i1 %399, label %411, label %400

400:                                              ; preds = %382
  %401 = load i32, i32* %17, align 4
  %402 = sext i32 %401 to i64
  %403 = load i32, i32* %6, align 4
  %404 = sext i32 %403 to i64
  %405 = load i64, i64* @LITTLENUM_NUMBER_OF_BITS, align 8
  %406 = mul nsw i64 %404, %405
  %407 = load i64, i64* %7, align 8
  %408 = sub nsw i64 %406, %407
  %409 = sub nsw i64 %408, 1
  %410 = icmp ne i64 %402, %409
  br i1 %410, label %411, label %435

411:                                              ; preds = %400, %382, %377
  store i64 1, i64* %21, align 8
  br label %412

412:                                              ; preds = %431, %411
  %413 = load i64, i64* %21, align 8
  %414 = icmp ne i64 %413, 0
  br i1 %414, label %415, label %419

415:                                              ; preds = %412
  %416 = load i64*, i64** %15, align 8
  %417 = load i64*, i64** %5, align 8
  %418 = icmp uge i64* %416, %417
  br label %419

419:                                              ; preds = %415, %412
  %420 = phi i1 [ false, %412 ], [ %418, %415 ]
  br i1 %420, label %421, label %434

421:                                              ; preds = %419
  %422 = load i64*, i64** %15, align 8
  %423 = load i64, i64* %422, align 8
  %424 = load i64, i64* %21, align 8
  %425 = add i64 %423, %424
  store i64 %425, i64* %21, align 8
  %426 = load i64, i64* %21, align 8
  %427 = load i64*, i64** %15, align 8
  store i64 %426, i64* %427, align 8
  %428 = load i64, i64* @LITTLENUM_NUMBER_OF_BITS, align 8
  %429 = load i64, i64* %21, align 8
  %430 = lshr i64 %429, %428
  store i64 %430, i64* %21, align 8
  br label %431

431:                                              ; preds = %421
  %432 = load i64*, i64** %15, align 8
  %433 = getelementptr inbounds i64, i64* %432, i32 -1
  store i64* %433, i64** %15, align 8
  br label %412

434:                                              ; preds = %419
  br label %469

435:                                              ; preds = %400
  %436 = load i64*, i64** %5, align 8
  store i64* %436, i64** %15, align 8
  %437 = load i8, i8* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @generic_floating_point_number, i32 0, i32 2), align 8
  %438 = sext i8 %437 to i32
  %439 = icmp eq i32 %438, 43
  br i1 %439, label %440, label %441

440:                                              ; preds = %435
  br label %446

441:                                              ; preds = %435
  %442 = load i64, i64* @LITTLENUM_NUMBER_OF_BITS, align 8
  %443 = sub nsw i64 %442, 1
  %444 = trunc i64 %443 to i32
  %445 = shl i32 1, %444
  br label %446

446:                                              ; preds = %441, %440
  %447 = phi i32 [ 0, %440 ], [ %445, %441 ]
  %448 = sext i32 %447 to i64
  store i64 %448, i64* %14, align 8
  %449 = load i64, i64* @LITTLENUM_NUMBER_OF_BITS, align 8
  %450 = sub nsw i64 %449, 1
  %451 = load i64, i64* %7, align 8
  %452 = sub nsw i64 %450, %451
  %453 = trunc i64 %452 to i32
  %454 = shl i32 1, %453
  %455 = sext i32 %454 to i64
  %456 = load i64, i64* %14, align 8
  %457 = or i64 %456, %455
  store i64 %457, i64* %14, align 8
  %458 = load i64, i64* %14, align 8
  %459 = load i64*, i64** %15, align 8
  %460 = getelementptr inbounds i64, i64* %459, i32 1
  store i64* %460, i64** %15, align 8
  store i64 %458, i64* %459, align 8
  br label %461

461:                                              ; preds = %465, %446
  %462 = load i64*, i64** %15, align 8
  %463 = load i64*, i64** %16, align 8
  %464 = icmp ult i64* %462, %463
  br i1 %464, label %465, label %468

465:                                              ; preds = %461
  %466 = load i64*, i64** %15, align 8
  %467 = getelementptr inbounds i64, i64* %466, i32 1
  store i64* %467, i64** %15, align 8
  store i64 0, i64* %466, align 8
  br label %461

468:                                              ; preds = %461
  br label %469

469:                                              ; preds = %468, %434
  br label %474

470:                                              ; preds = %347
  %471 = load i64*, i64** %15, align 8
  %472 = load i64, i64* %471, align 8
  %473 = add i64 %472, 1
  store i64 %473, i64* %471, align 8
  br label %474

474:                                              ; preds = %470, %469
  br label %475

475:                                              ; preds = %474, %344
  %476 = load i32, i32* %8, align 4
  store i32 %476, i32* %4, align 4
  br label %626

477:                                              ; preds = %214
  %478 = load i64, i64* %12, align 8
  %479 = load i64*, i64** @mask, align 8
  %480 = load i64, i64* %7, align 8
  %481 = getelementptr inbounds i64, i64* %479, i64 %480
  %482 = load i64, i64* %481, align 8
  %483 = icmp ugt i64 %478, %482
  br i1 %483, label %495, label %484

484:                                              ; preds = %477
  %485 = load i32, i32* %6, align 4
  %486 = call i64 @TC_LARGEST_EXPONENT_IS_NORMAL(i32 %485)
  %487 = icmp ne i64 %486, 0
  br i1 %487, label %499, label %488

488:                                              ; preds = %484
  %489 = load i64, i64* %12, align 8
  %490 = load i64*, i64** @mask, align 8
  %491 = load i64, i64* %7, align 8
  %492 = getelementptr inbounds i64, i64* %490, i64 %491
  %493 = load i64, i64* %492, align 8
  %494 = icmp eq i64 %489, %493
  br i1 %494, label %495, label %499

495:                                              ; preds = %488, %477
  %496 = load i64*, i64** %5, align 8
  %497 = call i32 @make_invalid_floating_point_number(i64* %496)
  %498 = load i32, i32* %8, align 4
  store i32 %498, i32* %4, align 4
  br label %626

499:                                              ; preds = %488, %484
  %500 = load i64, i64* %12, align 8
  %501 = load i64, i64* @LITTLENUM_NUMBER_OF_BITS, align 8
  %502 = sub nsw i64 %501, 1
  %503 = load i64, i64* %7, align 8
  %504 = sub nsw i64 %502, %503
  %505 = shl i64 %500, %504
  %506 = load i64, i64* @LITTLENUM_NUMBER_OF_BITS, align 8
  %507 = sub nsw i64 %506, 1
  %508 = load i64, i64* %7, align 8
  %509 = sub nsw i64 %507, %508
  %510 = trunc i64 %509 to i32
  %511 = call i32 @next_bits(i32 %510)
  %512 = sext i32 %511 to i64
  %513 = or i64 %505, %512
  %514 = load i64, i64* %14, align 8
  %515 = or i64 %514, %513
  store i64 %515, i64* %14, align 8
  br label %516

516:                                              ; preds = %499
  br label %517

517:                                              ; preds = %516
  %518 = load i64, i64* %14, align 8
  %519 = load i64*, i64** %15, align 8
  %520 = getelementptr inbounds i64, i64* %519, i32 1
  store i64* %520, i64** %15, align 8
  store i64 %518, i64* %519, align 8
  %521 = load i64, i64* %7, align 8
  %522 = icmp eq i64 %521, 15
  br i1 %522, label %523, label %540

523:                                              ; preds = %517
  %524 = load i32, i32* %6, align 4
  %525 = load i32, i32* @X_PRECISION, align 4
  %526 = icmp eq i32 %524, %525
  br i1 %526, label %527, label %540

527:                                              ; preds = %523
  %528 = load i64, i64* @LITTLENUM_NUMBER_OF_BITS, align 8
  %529 = sub nsw i64 %528, 1
  %530 = trunc i64 %529 to i32
  %531 = shl i32 1, %530
  %532 = load i64, i64* @LITTLENUM_NUMBER_OF_BITS, align 8
  %533 = sub nsw i64 %532, 1
  %534 = trunc i64 %533 to i32
  %535 = call i32 @next_bits(i32 %534)
  %536 = or i32 %531, %535
  %537 = sext i32 %536 to i64
  %538 = load i64*, i64** %15, align 8
  %539 = getelementptr inbounds i64, i64* %538, i32 1
  store i64* %539, i64** %15, align 8
  store i64 %537, i64* %538, align 8
  br label %540

540:                                              ; preds = %527, %523, %517
  br label %541

541:                                              ; preds = %545, %540
  %542 = load i64*, i64** %15, align 8
  %543 = load i64*, i64** %16, align 8
  %544 = icmp ult i64* %542, %543
  br i1 %544, label %545, label %552

545:                                              ; preds = %541
  %546 = load i64, i64* @LITTLENUM_NUMBER_OF_BITS, align 8
  %547 = trunc i64 %546 to i32
  %548 = call i32 @next_bits(i32 %547)
  %549 = sext i32 %548 to i64
  %550 = load i64*, i64** %15, align 8
  %551 = getelementptr inbounds i64, i64* %550, i32 1
  store i64* %551, i64** %15, align 8
  store i64 %549, i64* %550, align 8
  br label %541

552:                                              ; preds = %541
  %553 = call i32 @next_bits(i32 1)
  %554 = icmp ne i32 %553, 0
  br i1 %554, label %555, label %624

555:                                              ; preds = %552
  store i64 1, i64* %22, align 8
  %556 = load i64*, i64** %15, align 8
  %557 = getelementptr inbounds i64, i64* %556, i32 -1
  store i64* %557, i64** %15, align 8
  br label %558

558:                                              ; preds = %576, %555
  %559 = load i64, i64* %22, align 8
  %560 = icmp ne i64 %559, 0
  br i1 %560, label %561, label %579

561:                                              ; preds = %558
  %562 = load i64*, i64** %15, align 8
  %563 = load i64, i64* %562, align 8
  %564 = load i64, i64* %22, align 8
  %565 = add i64 %563, %564
  store i64 %565, i64* %22, align 8
  %566 = load i64, i64* %22, align 8
  %567 = load i64*, i64** %15, align 8
  store i64 %566, i64* %567, align 8
  %568 = load i64, i64* @LITTLENUM_NUMBER_OF_BITS, align 8
  %569 = load i64, i64* %22, align 8
  %570 = lshr i64 %569, %568
  store i64 %570, i64* %22, align 8
  %571 = load i64*, i64** %15, align 8
  %572 = load i64*, i64** %5, align 8
  %573 = icmp eq i64* %571, %572
  br i1 %573, label %574, label %575

574:                                              ; preds = %561
  br label %579

575:                                              ; preds = %561
  br label %576

576:                                              ; preds = %575
  %577 = load i64*, i64** %15, align 8
  %578 = getelementptr inbounds i64, i64* %577, i32 -1
  store i64* %578, i64** %15, align 8
  br label %558

579:                                              ; preds = %574, %558
  %580 = load i32, i32* %6, align 4
  %581 = load i32, i32* @X_PRECISION, align 4
  %582 = icmp eq i32 %580, %581
  br i1 %582, label %583, label %601

583:                                              ; preds = %579
  %584 = load i64, i64* %7, align 8
  %585 = icmp eq i64 %584, 15
  br i1 %585, label %586, label %601

586:                                              ; preds = %583
  %587 = load i64*, i64** %15, align 8
  %588 = load i64*, i64** %5, align 8
  %589 = icmp eq i64* %587, %588
  br i1 %589, label %590, label %600

590:                                              ; preds = %586
  %591 = load i64, i64* @LITTLENUM_NUMBER_OF_BITS, align 8
  %592 = sub nsw i64 %591, 1
  %593 = trunc i64 %592 to i32
  %594 = shl i32 1, %593
  %595 = sext i32 %594 to i64
  %596 = load i64*, i64** %15, align 8
  %597 = getelementptr inbounds i64, i64* %596, i64 1
  %598 = load i64, i64* %597, align 8
  %599 = or i64 %598, %595
  store i64 %599, i64* %597, align 8
  br label %600

600:                                              ; preds = %590, %586
  br label %601

601:                                              ; preds = %600, %583, %579
  %602 = load i64, i64* %14, align 8
  %603 = load i64*, i64** %5, align 8
  %604 = load i64, i64* %603, align 8
  %605 = xor i64 %602, %604
  %606 = load i64, i64* @LITTLENUM_NUMBER_OF_BITS, align 8
  %607 = sub nsw i64 %606, 1
  %608 = trunc i64 %607 to i32
  %609 = shl i32 1, %608
  %610 = sext i32 %609 to i64
  %611 = and i64 %605, %610
  %612 = icmp ne i64 %611, 0
  br i1 %612, label %613, label %623

613:                                              ; preds = %601
  %614 = load i64, i64* @LITTLENUM_NUMBER_OF_BITS, align 8
  %615 = sub nsw i64 %614, 1
  %616 = trunc i64 %615 to i32
  %617 = shl i32 1, %616
  %618 = xor i32 %617, -1
  %619 = sext i32 %618 to i64
  %620 = load i64*, i64** %5, align 8
  %621 = load i64, i64* %620, align 8
  %622 = and i64 %621, %619
  store i64 %622, i64* %620, align 8
  br label %623

623:                                              ; preds = %613, %601
  br label %624

624:                                              ; preds = %623, %552
  %625 = load i32, i32* %8, align 4
  store i32 %625, i32* %4, align 4
  br label %626

626:                                              ; preds = %624, %495, %475, %263, %163, %126, %89, %40
  %627 = load i32, i32* %4, align 4
  ret i32 %627
}

declare dso_local i32 @memset(i64*, i8 signext, i32) #1

declare dso_local i64 @TC_LARGEST_EXPONENT_IS_NORMAL(i32) #1

declare dso_local i32 @as_warn(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i32 @next_bits(i32) #1

declare dso_local i32 @unget_bits(i32) #1

declare dso_local i32 @make_invalid_floating_point_number(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
