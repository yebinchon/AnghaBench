; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcclibs/libdecnumber/extr_decNumber.c_decApplyRound.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcclibs/libdecnumber/extr_decNumber.c_decApplyRound.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32*, i64, i64 }
%struct.TYPE_9__ = type { i32, i64, i64, i64 }

@DEC_Invalid_context = common dso_local global i64 0, align 8
@DECDPUN = common dso_local global i64 0, align 8
@powers = common dso_local global i32* null, align 8
@DECDPUNMAX = common dso_local global i32 0, align 4
@DEC_Underflow = common dso_local global i64 0, align 8
@DEC_Subnormal = common dso_local global i64 0, align 8
@DEC_Inexact = common dso_local global i64 0, align 8
@DEC_Rounded = common dso_local global i64 0, align 8
@one = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*, %struct.TYPE_9__*, i64, i64*)* @decApplyRound to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @decApplyRound(%struct.TYPE_8__* %0, %struct.TYPE_9__* %1, i64 %2, i64* %3) #0 {
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64* %3, i64** %8, align 8
  %15 = load i64, i64* %7, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %4
  br label %311

18:                                               ; preds = %4
  store i64 0, i64* %9, align 8
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  switch i32 %21, label %90 [
    i32 133, label %22
    i32 131, label %27
    i32 130, label %32
    i32 129, label %50
    i32 128, label %55
    i32 134, label %60
    i32 132, label %75
  ]

22:                                               ; preds = %18
  %23 = load i64, i64* %7, align 8
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  store i64 -1, i64* %9, align 8
  br label %26

26:                                               ; preds = %25, %22
  br label %95

27:                                               ; preds = %18
  %28 = load i64, i64* %7, align 8
  %29 = icmp sgt i64 %28, 5
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  store i64 1, i64* %9, align 8
  br label %31

31:                                               ; preds = %30, %27
  br label %95

32:                                               ; preds = %18
  %33 = load i64, i64* %7, align 8
  %34 = icmp sgt i64 %33, 5
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  store i64 1, i64* %9, align 8
  br label %49

36:                                               ; preds = %32
  %37 = load i64, i64* %7, align 8
  %38 = icmp eq i64 %37, 5
  br i1 %38, label %39, label %48

39:                                               ; preds = %36
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %42, align 4
  %44 = and i32 %43, 1
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %39
  store i64 1, i64* %9, align 8
  br label %47

47:                                               ; preds = %46, %39
  br label %48

48:                                               ; preds = %47, %36
  br label %49

49:                                               ; preds = %48, %35
  br label %95

50:                                               ; preds = %18
  %51 = load i64, i64* %7, align 8
  %52 = icmp sge i64 %51, 5
  br i1 %52, label %53, label %54

53:                                               ; preds = %50
  store i64 1, i64* %9, align 8
  br label %54

54:                                               ; preds = %53, %50
  br label %95

55:                                               ; preds = %18
  %56 = load i64, i64* %7, align 8
  %57 = icmp sgt i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %55
  store i64 1, i64* %9, align 8
  br label %59

59:                                               ; preds = %58, %55
  br label %95

60:                                               ; preds = %18
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %62 = call i32 @decNumberIsNegative(%struct.TYPE_8__* %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %60
  %65 = load i64, i64* %7, align 8
  %66 = icmp slt i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %64
  store i64 -1, i64* %9, align 8
  br label %68

68:                                               ; preds = %67, %64
  br label %74

69:                                               ; preds = %60
  %70 = load i64, i64* %7, align 8
  %71 = icmp sgt i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %69
  store i64 1, i64* %9, align 8
  br label %73

73:                                               ; preds = %72, %69
  br label %74

74:                                               ; preds = %73, %68
  br label %95

75:                                               ; preds = %18
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %77 = call i32 @decNumberIsNegative(%struct.TYPE_8__* %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %84, label %79

79:                                               ; preds = %75
  %80 = load i64, i64* %7, align 8
  %81 = icmp slt i64 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %79
  store i64 -1, i64* %9, align 8
  br label %83

83:                                               ; preds = %82, %79
  br label %89

84:                                               ; preds = %75
  %85 = load i64, i64* %7, align 8
  %86 = icmp sgt i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %84
  store i64 1, i64* %9, align 8
  br label %88

88:                                               ; preds = %87, %84
  br label %89

89:                                               ; preds = %88, %83
  br label %95

90:                                               ; preds = %18
  %91 = load i64, i64* @DEC_Invalid_context, align 8
  %92 = load i64*, i64** %8, align 8
  %93 = load i64, i64* %92, align 8
  %94 = or i64 %93, %91
  store i64 %94, i64* %92, align 8
  br label %95

95:                                               ; preds = %90, %89, %74, %59, %54, %49, %31, %26
  %96 = load i64, i64* %9, align 8
  %97 = icmp eq i64 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %95
  br label %311

99:                                               ; preds = %95
  %100 = load i64, i64* %9, align 8
  %101 = icmp sgt i64 %100, 0
  br i1 %101, label %102, label %180

102:                                              ; preds = %99
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  store i64 %105, i64* %11, align 8
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 0
  %108 = load i32*, i32** %107, align 8
  store i32* %108, i32** %10, align 8
  br label %109

109:                                              ; preds = %176, %102
  %110 = load i64, i64* %11, align 8
  %111 = load i64, i64* @DECDPUN, align 8
  %112 = icmp ule i64 %110, %111
  br i1 %112, label %113, label %166

113:                                              ; preds = %109
  %114 = load i32*, i32** %10, align 8
  %115 = load i32, i32* %114, align 4
  %116 = load i32*, i32** @powers, align 8
  %117 = load i64, i64* %11, align 8
  %118 = getelementptr inbounds i32, i32* %116, i64 %117
  %119 = load i32, i32* %118, align 4
  %120 = sub nsw i32 %119, 1
  %121 = icmp ne i32 %115, %120
  br i1 %121, label %122, label %123

122:                                              ; preds = %113
  br label %179

123:                                              ; preds = %113
  %124 = load i32*, i32** @powers, align 8
  %125 = load i64, i64* %11, align 8
  %126 = sub i64 %125, 1
  %127 = getelementptr inbounds i32, i32* %124, i64 %126
  %128 = load i32, i32* %127, align 4
  %129 = load i32*, i32** %10, align 8
  store i32 %128, i32* %129, align 4
  %130 = load i32*, i32** %10, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 -1
  store i32* %131, i32** %10, align 8
  br label %132

132:                                              ; preds = %140, %123
  %133 = load i32*, i32** %10, align 8
  %134 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 0
  %136 = load i32*, i32** %135, align 8
  %137 = icmp uge i32* %133, %136
  br i1 %137, label %138, label %143

138:                                              ; preds = %132
  %139 = load i32*, i32** %10, align 8
  store i32 0, i32* %139, align 4
  br label %140

140:                                              ; preds = %138
  %141 = load i32*, i32** %10, align 8
  %142 = getelementptr inbounds i32, i32* %141, i32 -1
  store i32* %142, i32** %10, align 8
  br label %132

143:                                              ; preds = %132
  %144 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %144, i32 0, i32 2
  %146 = load i64, i64* %145, align 8
  %147 = add nsw i64 %146, 1
  store i64 %147, i64* %145, align 8
  %148 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %148, i32 0, i32 2
  %150 = load i64, i64* %149, align 8
  %151 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %152 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %151, i32 0, i32 1
  %153 = load i64, i64* %152, align 8
  %154 = add i64 %150, %153
  %155 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %156 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %155, i32 0, i32 1
  %157 = load i64, i64* %156, align 8
  %158 = add nsw i64 %157, 1
  %159 = icmp ugt i64 %154, %158
  br i1 %159, label %160, label %165

160:                                              ; preds = %143
  %161 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %162 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %163 = load i64*, i64** %8, align 8
  %164 = call i32 @decSetOverflow(%struct.TYPE_8__* %161, %struct.TYPE_9__* %162, i64* %163)
  br label %165

165:                                              ; preds = %160, %143
  br label %311

166:                                              ; preds = %109
  %167 = load i32*, i32** %10, align 8
  %168 = load i32, i32* %167, align 4
  %169 = load i32, i32* @DECDPUNMAX, align 4
  %170 = icmp ne i32 %168, %169
  br i1 %170, label %171, label %172

171:                                              ; preds = %166
  br label %179

172:                                              ; preds = %166
  %173 = load i64, i64* @DECDPUN, align 8
  %174 = load i64, i64* %11, align 8
  %175 = sub i64 %174, %173
  store i64 %175, i64* %11, align 8
  br label %176

176:                                              ; preds = %172
  %177 = load i32*, i32** %10, align 8
  %178 = getelementptr inbounds i32, i32* %177, i32 1
  store i32* %178, i32** %10, align 8
  br label %109

179:                                              ; preds = %171, %122
  br label %296

180:                                              ; preds = %99
  %181 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %182 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %181, i32 0, i32 1
  %183 = load i64, i64* %182, align 8
  store i64 %183, i64* %14, align 8
  %184 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %185 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %184, i32 0, i32 0
  %186 = load i32*, i32** %185, align 8
  store i32* %186, i32** %12, align 8
  br label %187

187:                                              ; preds = %292, %180
  %188 = load i64, i64* %14, align 8
  %189 = load i64, i64* @DECDPUN, align 8
  %190 = icmp ule i64 %188, %189
  br i1 %190, label %191, label %283

191:                                              ; preds = %187
  %192 = load i32*, i32** %12, align 8
  %193 = load i32, i32* %192, align 4
  %194 = load i32*, i32** @powers, align 8
  %195 = load i64, i64* %14, align 8
  %196 = sub i64 %195, 1
  %197 = getelementptr inbounds i32, i32* %194, i64 %196
  %198 = load i32, i32* %197, align 4
  %199 = icmp ne i32 %193, %198
  br i1 %199, label %200, label %201

200:                                              ; preds = %191
  br label %295

201:                                              ; preds = %191
  %202 = load i32*, i32** %12, align 8
  store i32* %202, i32** %13, align 8
  %203 = load i32*, i32** @powers, align 8
  %204 = load i64, i64* %14, align 8
  %205 = getelementptr inbounds i32, i32* %203, i64 %204
  %206 = load i32, i32* %205, align 4
  %207 = sub nsw i32 %206, 1
  %208 = load i32*, i32** %12, align 8
  store i32 %207, i32* %208, align 4
  %209 = load i32*, i32** %12, align 8
  %210 = getelementptr inbounds i32, i32* %209, i64 -1
  store i32* %210, i32** %12, align 8
  br label %211

211:                                              ; preds = %224, %201
  %212 = load i32*, i32** %12, align 8
  %213 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %214 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %213, i32 0, i32 0
  %215 = load i32*, i32** %214, align 8
  %216 = icmp uge i32* %212, %215
  br i1 %216, label %217, label %227

217:                                              ; preds = %211
  %218 = load i32*, i32** @powers, align 8
  %219 = load i64, i64* @DECDPUN, align 8
  %220 = getelementptr inbounds i32, i32* %218, i64 %219
  %221 = load i32, i32* %220, align 4
  %222 = sub nsw i32 %221, 1
  %223 = load i32*, i32** %12, align 8
  store i32 %222, i32* %223, align 4
  br label %224

224:                                              ; preds = %217
  %225 = load i32*, i32** %12, align 8
  %226 = getelementptr inbounds i32, i32* %225, i32 -1
  store i32* %226, i32** %12, align 8
  br label %211

227:                                              ; preds = %211
  %228 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %229 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %228, i32 0, i32 2
  %230 = load i64, i64* %229, align 8
  %231 = add nsw i64 %230, -1
  store i64 %231, i64* %229, align 8
  %232 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %233 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %232, i32 0, i32 2
  %234 = load i64, i64* %233, align 8
  %235 = add nsw i64 %234, 1
  %236 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %237 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %236, i32 0, i32 2
  %238 = load i64, i64* %237, align 8
  %239 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %240 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %239, i32 0, i32 3
  %241 = load i64, i64* %240, align 8
  %242 = sub nsw i64 %238, %241
  %243 = add nsw i64 %242, 1
  %244 = icmp eq i64 %235, %243
  br i1 %244, label %245, label %282

245:                                              ; preds = %227
  %246 = load i64, i64* %14, align 8
  %247 = icmp eq i64 %246, 1
  br i1 %247, label %248, label %255

248:                                              ; preds = %245
  %249 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %250 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %249, i32 0, i32 1
  %251 = load i64, i64* %250, align 8
  %252 = icmp eq i64 %251, 1
  br i1 %252, label %253, label %255

253:                                              ; preds = %248
  %254 = load i32*, i32** %13, align 8
  store i32 0, i32* %254, align 4
  br label %267

255:                                              ; preds = %248, %245
  %256 = load i32*, i32** @powers, align 8
  %257 = load i64, i64* %14, align 8
  %258 = sub i64 %257, 1
  %259 = getelementptr inbounds i32, i32* %256, i64 %258
  %260 = load i32, i32* %259, align 4
  %261 = sub nsw i32 %260, 1
  %262 = load i32*, i32** %13, align 8
  store i32 %261, i32* %262, align 4
  %263 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %264 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %263, i32 0, i32 1
  %265 = load i64, i64* %264, align 8
  %266 = add i64 %265, -1
  store i64 %266, i64* %264, align 8
  br label %267

267:                                              ; preds = %255, %253
  %268 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %269 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %268, i32 0, i32 2
  %270 = load i64, i64* %269, align 8
  %271 = add nsw i64 %270, 1
  store i64 %271, i64* %269, align 8
  %272 = load i64, i64* @DEC_Underflow, align 8
  %273 = load i64, i64* @DEC_Subnormal, align 8
  %274 = or i64 %272, %273
  %275 = load i64, i64* @DEC_Inexact, align 8
  %276 = or i64 %274, %275
  %277 = load i64, i64* @DEC_Rounded, align 8
  %278 = or i64 %276, %277
  %279 = load i64*, i64** %8, align 8
  %280 = load i64, i64* %279, align 8
  %281 = or i64 %280, %278
  store i64 %281, i64* %279, align 8
  br label %282

282:                                              ; preds = %267, %227
  br label %311

283:                                              ; preds = %187
  %284 = load i32*, i32** %12, align 8
  %285 = load i32, i32* %284, align 4
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %287, label %288

287:                                              ; preds = %283
  br label %295

288:                                              ; preds = %283
  %289 = load i64, i64* @DECDPUN, align 8
  %290 = load i64, i64* %14, align 8
  %291 = sub i64 %290, %289
  store i64 %291, i64* %14, align 8
  br label %292

292:                                              ; preds = %288
  %293 = load i32*, i32** %12, align 8
  %294 = getelementptr inbounds i32, i32* %293, i32 1
  store i32* %294, i32** %12, align 8
  br label %187

295:                                              ; preds = %287, %200
  br label %296

296:                                              ; preds = %295, %179
  %297 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %298 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %297, i32 0, i32 0
  %299 = load i32*, i32** %298, align 8
  %300 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %301 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %300, i32 0, i32 1
  %302 = load i64, i64* %301, align 8
  %303 = trunc i64 %302 to i32
  %304 = call i32 @D2U(i32 %303)
  %305 = load i32, i32* @one, align 4
  %306 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %307 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %306, i32 0, i32 0
  %308 = load i32*, i32** %307, align 8
  %309 = load i64, i64* %9, align 8
  %310 = call i32 @decUnitAddSub(i32* %299, i32 %304, i32 %305, i32 1, i32 0, i32* %308, i64 %309)
  br label %311

311:                                              ; preds = %296, %282, %165, %98, %17
  ret void
}

declare dso_local i32 @decNumberIsNegative(%struct.TYPE_8__*) #1

declare dso_local i32 @decSetOverflow(%struct.TYPE_8__*, %struct.TYPE_9__*, i64*) #1

declare dso_local i32 @decUnitAddSub(i32*, i32, i32, i32, i32, i32*, i64) #1

declare dso_local i32 @D2U(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
