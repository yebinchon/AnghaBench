; ModuleID = '/home/carl/AnghaBench/freebsd/bin/sh/extr_parser.c_readcstyleesc.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/sh/extr_parser.c_readcstyleesc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [27 x i8] c"Unterminated quoted string\00", align 1
@plinno = common dso_local global i32 0, align 4
@doprompt = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"Bad escape sequence\00", align 1
@initial_localeisutf8 = common dso_local global i32 0, align 4
@PEOF = common dso_local global i32 0, align 4
@SQSYNTAX = common dso_local global i64* null, align 8
@CCTL = common dso_local global i64 0, align 8
@CTLESC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @readcstyleesc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @readcstyleesc(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %9 = call signext i8 (...) @pgetc()
  %10 = sext i8 %9 to i32
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  switch i32 %11, label %296 [
    i32 0, label %12
    i32 10, label %14
    i32 92, label %25
    i32 39, label %25
    i32 34, label %25
    i32 97, label %27
    i32 98, label %28
    i32 101, label %29
    i32 102, label %30
    i32 110, label %31
    i32 114, label %32
    i32 116, label %33
    i32 118, label %34
    i32 120, label %35
    i32 48, label %82
    i32 49, label %82
    i32 50, label %82
    i32 51, label %82
    i32 52, label %82
    i32 53, label %82
    i32 54, label %82
    i32 55, label %82
    i32 99, label %119
    i32 117, label %149
    i32 85, label %149
  ]

12:                                               ; preds = %1
  %13 = call i32 @synerror(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %14

14:                                               ; preds = %1, %12
  %15 = load i32, i32* @plinno, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* @plinno, align 4
  %17 = load i64, i64* @doprompt, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %14
  %20 = call i32 @setprompt(i32 2)
  br label %23

21:                                               ; preds = %14
  %22 = call i32 @setprompt(i32 0)
  br label %23

23:                                               ; preds = %21, %19
  %24 = load i8*, i8** %3, align 8
  store i8* %24, i8** %2, align 8
  br label %355

25:                                               ; preds = %1, %1, %1
  %26 = load i32, i32* %4, align 4
  store i32 %26, i32* %8, align 4
  br label %298

27:                                               ; preds = %1
  store i32 7, i32* %8, align 4
  br label %298

28:                                               ; preds = %1
  store i32 8, i32* %8, align 4
  br label %298

29:                                               ; preds = %1
  store i32 27, i32* %8, align 4
  br label %298

30:                                               ; preds = %1
  store i32 12, i32* %8, align 4
  br label %298

31:                                               ; preds = %1
  store i32 10, i32* %8, align 4
  br label %298

32:                                               ; preds = %1
  store i32 13, i32* %8, align 4
  br label %298

33:                                               ; preds = %1
  store i32 9, i32* %8, align 4
  br label %298

34:                                               ; preds = %1
  store i32 11, i32* %8, align 4
  br label %298

35:                                               ; preds = %1
  store i32 0, i32* %8, align 4
  br label %36

36:                                               ; preds = %79, %35
  %37 = call signext i8 (...) @pgetc()
  %38 = sext i8 %37 to i32
  store i32 %38, i32* %4, align 4
  %39 = load i32, i32* %4, align 4
  %40 = icmp sge i32 %39, 48
  br i1 %40, label %41, label %50

41:                                               ; preds = %36
  %42 = load i32, i32* %4, align 4
  %43 = icmp sle i32 %42, 57
  br i1 %43, label %44, label %50

44:                                               ; preds = %41
  %45 = load i32, i32* %8, align 4
  %46 = shl i32 %45, 4
  %47 = load i32, i32* %4, align 4
  %48 = add i32 %46, %47
  %49 = sub i32 %48, 48
  store i32 %49, i32* %8, align 4
  br label %79

50:                                               ; preds = %41, %36
  %51 = load i32, i32* %4, align 4
  %52 = icmp sge i32 %51, 65
  br i1 %52, label %53, label %63

53:                                               ; preds = %50
  %54 = load i32, i32* %4, align 4
  %55 = icmp sle i32 %54, 70
  br i1 %55, label %56, label %63

56:                                               ; preds = %53
  %57 = load i32, i32* %8, align 4
  %58 = shl i32 %57, 4
  %59 = load i32, i32* %4, align 4
  %60 = add i32 %58, %59
  %61 = sub i32 %60, 65
  %62 = add i32 %61, 10
  store i32 %62, i32* %8, align 4
  br label %78

63:                                               ; preds = %53, %50
  %64 = load i32, i32* %4, align 4
  %65 = icmp sge i32 %64, 97
  br i1 %65, label %66, label %76

66:                                               ; preds = %63
  %67 = load i32, i32* %4, align 4
  %68 = icmp sle i32 %67, 102
  br i1 %68, label %69, label %76

69:                                               ; preds = %66
  %70 = load i32, i32* %8, align 4
  %71 = shl i32 %70, 4
  %72 = load i32, i32* %4, align 4
  %73 = add i32 %71, %72
  %74 = sub i32 %73, 97
  %75 = add i32 %74, 10
  store i32 %75, i32* %8, align 4
  br label %77

76:                                               ; preds = %66, %63
  br label %80

77:                                               ; preds = %69
  br label %78

78:                                               ; preds = %77, %56
  br label %79

79:                                               ; preds = %78, %44
  br label %36

80:                                               ; preds = %76
  %81 = call i32 (...) @pungetc()
  br label %298

82:                                               ; preds = %1, %1, %1, %1, %1, %1, %1, %1
  %83 = load i32, i32* %4, align 4
  %84 = sub nsw i32 %83, 48
  store i32 %84, i32* %8, align 4
  %85 = call signext i8 (...) @pgetc()
  %86 = sext i8 %85 to i32
  store i32 %86, i32* %4, align 4
  %87 = load i32, i32* %4, align 4
  %88 = icmp sge i32 %87, 48
  br i1 %88, label %89, label %116

89:                                               ; preds = %82
  %90 = load i32, i32* %4, align 4
  %91 = icmp sle i32 %90, 55
  br i1 %91, label %92, label %116

92:                                               ; preds = %89
  %93 = load i32, i32* %8, align 4
  %94 = shl i32 %93, 3
  store i32 %94, i32* %8, align 4
  %95 = load i32, i32* %4, align 4
  %96 = sub nsw i32 %95, 48
  %97 = load i32, i32* %8, align 4
  %98 = add i32 %97, %96
  store i32 %98, i32* %8, align 4
  %99 = call signext i8 (...) @pgetc()
  %100 = sext i8 %99 to i32
  store i32 %100, i32* %4, align 4
  %101 = load i32, i32* %4, align 4
  %102 = icmp sge i32 %101, 48
  br i1 %102, label %103, label %113

103:                                              ; preds = %92
  %104 = load i32, i32* %4, align 4
  %105 = icmp sle i32 %104, 55
  br i1 %105, label %106, label %113

106:                                              ; preds = %103
  %107 = load i32, i32* %8, align 4
  %108 = shl i32 %107, 3
  store i32 %108, i32* %8, align 4
  %109 = load i32, i32* %4, align 4
  %110 = sub nsw i32 %109, 48
  %111 = load i32, i32* %8, align 4
  %112 = add i32 %111, %110
  store i32 %112, i32* %8, align 4
  br label %115

113:                                              ; preds = %103, %92
  %114 = call i32 (...) @pungetc()
  br label %115

115:                                              ; preds = %113, %106
  br label %118

116:                                              ; preds = %89, %82
  %117 = call i32 (...) @pungetc()
  br label %118

118:                                              ; preds = %116, %115
  br label %298

119:                                              ; preds = %1
  %120 = call signext i8 (...) @pgetc()
  %121 = sext i8 %120 to i32
  store i32 %121, i32* %4, align 4
  %122 = load i32, i32* %4, align 4
  %123 = icmp slt i32 %122, 63
  br i1 %123, label %130, label %124

124:                                              ; preds = %119
  %125 = load i32, i32* %4, align 4
  %126 = icmp sgt i32 %125, 122
  br i1 %126, label %130, label %127

127:                                              ; preds = %124
  %128 = load i32, i32* %4, align 4
  %129 = icmp eq i32 %128, 96
  br i1 %129, label %130, label %132

130:                                              ; preds = %127, %124, %119
  %131 = call i32 @synerror(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  br label %132

132:                                              ; preds = %130, %127
  %133 = load i32, i32* %4, align 4
  %134 = icmp eq i32 %133, 92
  br i1 %134, label %135, label %141

135:                                              ; preds = %132
  %136 = call signext i8 (...) @pgetc()
  %137 = sext i8 %136 to i32
  %138 = icmp ne i32 %137, 92
  br i1 %138, label %139, label %141

139:                                              ; preds = %135
  %140 = call i32 @synerror(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  br label %141

141:                                              ; preds = %139, %135, %132
  %142 = load i32, i32* %4, align 4
  %143 = icmp eq i32 %142, 63
  br i1 %143, label %144, label %145

144:                                              ; preds = %141
  store i32 127, i32* %8, align 4
  br label %148

145:                                              ; preds = %141
  %146 = load i32, i32* %4, align 4
  %147 = and i32 %146, 31
  store i32 %147, i32* %8, align 4
  br label %148

148:                                              ; preds = %145, %144
  br label %298

149:                                              ; preds = %1, %1
  %150 = load i32, i32* %4, align 4
  %151 = icmp eq i32 %150, 85
  %152 = zext i1 %151 to i64
  %153 = select i1 %151, i32 8, i32 4
  store i32 %153, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %6, align 4
  br label %154

154:                                              ; preds = %203, %149
  %155 = load i32, i32* %6, align 4
  %156 = load i32, i32* %7, align 4
  %157 = icmp slt i32 %155, %156
  br i1 %157, label %158, label %206

158:                                              ; preds = %154
  %159 = call signext i8 (...) @pgetc()
  %160 = sext i8 %159 to i32
  store i32 %160, i32* %4, align 4
  %161 = load i32, i32* %4, align 4
  %162 = icmp sge i32 %161, 48
  br i1 %162, label %163, label %172

163:                                              ; preds = %158
  %164 = load i32, i32* %4, align 4
  %165 = icmp sle i32 %164, 57
  br i1 %165, label %166, label %172

166:                                              ; preds = %163
  %167 = load i32, i32* %8, align 4
  %168 = shl i32 %167, 4
  %169 = load i32, i32* %4, align 4
  %170 = add i32 %168, %169
  %171 = sub i32 %170, 48
  store i32 %171, i32* %8, align 4
  br label %202

172:                                              ; preds = %163, %158
  %173 = load i32, i32* %4, align 4
  %174 = icmp sge i32 %173, 65
  br i1 %174, label %175, label %185

175:                                              ; preds = %172
  %176 = load i32, i32* %4, align 4
  %177 = icmp sle i32 %176, 70
  br i1 %177, label %178, label %185

178:                                              ; preds = %175
  %179 = load i32, i32* %8, align 4
  %180 = shl i32 %179, 4
  %181 = load i32, i32* %4, align 4
  %182 = add i32 %180, %181
  %183 = sub i32 %182, 65
  %184 = add i32 %183, 10
  store i32 %184, i32* %8, align 4
  br label %201

185:                                              ; preds = %175, %172
  %186 = load i32, i32* %4, align 4
  %187 = icmp sge i32 %186, 97
  br i1 %187, label %188, label %198

188:                                              ; preds = %185
  %189 = load i32, i32* %4, align 4
  %190 = icmp sle i32 %189, 102
  br i1 %190, label %191, label %198

191:                                              ; preds = %188
  %192 = load i32, i32* %8, align 4
  %193 = shl i32 %192, 4
  %194 = load i32, i32* %4, align 4
  %195 = add i32 %193, %194
  %196 = sub i32 %195, 97
  %197 = add i32 %196, 10
  store i32 %197, i32* %8, align 4
  br label %200

198:                                              ; preds = %188, %185
  %199 = call i32 @synerror(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  br label %200

200:                                              ; preds = %198, %191
  br label %201

201:                                              ; preds = %200, %178
  br label %202

202:                                              ; preds = %201, %166
  br label %203

203:                                              ; preds = %202
  %204 = load i32, i32* %6, align 4
  %205 = add nsw i32 %204, 1
  store i32 %205, i32* %6, align 4
  br label %154

206:                                              ; preds = %154
  %207 = load i32, i32* %8, align 4
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %215, label %209

209:                                              ; preds = %206
  %210 = load i32, i32* %8, align 4
  %211 = icmp uge i32 %210, 55296
  br i1 %211, label %212, label %217

212:                                              ; preds = %209
  %213 = load i32, i32* %8, align 4
  %214 = icmp ule i32 %213, 57343
  br i1 %214, label %215, label %217

215:                                              ; preds = %212, %206
  %216 = call i32 @synerror(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  br label %217

217:                                              ; preds = %215, %212, %209
  %218 = load i32, i32* @initial_localeisutf8, align 4
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %291

220:                                              ; preds = %217
  %221 = load i32, i32* %8, align 4
  %222 = icmp ugt i32 %221, 127
  br i1 %222, label %223, label %291

223:                                              ; preds = %220
  %224 = load i8*, i8** %3, align 8
  %225 = call i32 @CHECKSTRSPACE(i32 4, i8* %224)
  %226 = load i32, i32* %8, align 4
  %227 = icmp ule i32 %226, 2047
  br i1 %227, label %228, label %240

228:                                              ; preds = %223
  %229 = load i32, i32* %8, align 4
  %230 = lshr i32 %229, 6
  %231 = or i32 192, %230
  %232 = load i8*, i8** %3, align 8
  %233 = call i32 @USTPUTC(i32 %231, i8* %232)
  %234 = load i32, i32* %8, align 4
  %235 = and i32 %234, 63
  %236 = or i32 128, %235
  %237 = load i8*, i8** %3, align 8
  %238 = call i32 @USTPUTC(i32 %236, i8* %237)
  %239 = load i8*, i8** %3, align 8
  store i8* %239, i8** %2, align 8
  br label %355

240:                                              ; preds = %223
  %241 = load i32, i32* %8, align 4
  %242 = icmp ule i32 %241, 65535
  br i1 %242, label %243, label %261

243:                                              ; preds = %240
  %244 = load i32, i32* %8, align 4
  %245 = lshr i32 %244, 12
  %246 = or i32 224, %245
  %247 = load i8*, i8** %3, align 8
  %248 = call i32 @USTPUTC(i32 %246, i8* %247)
  %249 = load i32, i32* %8, align 4
  %250 = lshr i32 %249, 6
  %251 = and i32 %250, 63
  %252 = or i32 128, %251
  %253 = load i8*, i8** %3, align 8
  %254 = call i32 @USTPUTC(i32 %252, i8* %253)
  %255 = load i32, i32* %8, align 4
  %256 = and i32 %255, 63
  %257 = or i32 128, %256
  %258 = load i8*, i8** %3, align 8
  %259 = call i32 @USTPUTC(i32 %257, i8* %258)
  %260 = load i8*, i8** %3, align 8
  store i8* %260, i8** %2, align 8
  br label %355

261:                                              ; preds = %240
  %262 = load i32, i32* %8, align 4
  %263 = icmp ule i32 %262, 1114111
  br i1 %263, label %264, label %288

264:                                              ; preds = %261
  %265 = load i32, i32* %8, align 4
  %266 = lshr i32 %265, 18
  %267 = or i32 240, %266
  %268 = load i8*, i8** %3, align 8
  %269 = call i32 @USTPUTC(i32 %267, i8* %268)
  %270 = load i32, i32* %8, align 4
  %271 = lshr i32 %270, 12
  %272 = and i32 %271, 63
  %273 = or i32 128, %272
  %274 = load i8*, i8** %3, align 8
  %275 = call i32 @USTPUTC(i32 %273, i8* %274)
  %276 = load i32, i32* %8, align 4
  %277 = lshr i32 %276, 6
  %278 = and i32 %277, 63
  %279 = or i32 128, %278
  %280 = load i8*, i8** %3, align 8
  %281 = call i32 @USTPUTC(i32 %279, i8* %280)
  %282 = load i32, i32* %8, align 4
  %283 = and i32 %282, 63
  %284 = or i32 128, %283
  %285 = load i8*, i8** %3, align 8
  %286 = call i32 @USTPUTC(i32 %284, i8* %285)
  %287 = load i8*, i8** %3, align 8
  store i8* %287, i8** %2, align 8
  br label %355

288:                                              ; preds = %261
  br label %289

289:                                              ; preds = %288
  br label %290

290:                                              ; preds = %289
  br label %291

291:                                              ; preds = %290, %220, %217
  %292 = load i32, i32* %8, align 4
  %293 = icmp ugt i32 %292, 127
  br i1 %293, label %294, label %295

294:                                              ; preds = %291
  store i32 63, i32* %8, align 4
  br label %295

295:                                              ; preds = %294, %291
  br label %298

296:                                              ; preds = %1
  %297 = call i32 @synerror(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  br label %298

298:                                              ; preds = %296, %295, %148, %118, %80, %34, %33, %32, %31, %30, %29, %28, %27, %25
  %299 = load i32, i32* %8, align 4
  %300 = trunc i32 %299 to i8
  %301 = sext i8 %300 to i32
  store i32 %301, i32* %5, align 4
  %302 = load i32, i32* %5, align 4
  %303 = icmp eq i32 %302, 0
  br i1 %303, label %304, label %338

304:                                              ; preds = %298
  br label %305

305:                                              ; preds = %334, %304
  %306 = call signext i8 (...) @pgetc()
  %307 = sext i8 %306 to i32
  store i32 %307, i32* %4, align 4
  %308 = icmp ne i32 %307, 39
  br i1 %308, label %309, label %335

309:                                              ; preds = %305
  %310 = load i32, i32* %4, align 4
  %311 = icmp eq i32 %310, 92
  br i1 %311, label %312, label %315

312:                                              ; preds = %309
  %313 = call signext i8 (...) @pgetc()
  %314 = sext i8 %313 to i32
  store i32 %314, i32* %4, align 4
  br label %315

315:                                              ; preds = %312, %309
  %316 = load i32, i32* %4, align 4
  %317 = load i32, i32* @PEOF, align 4
  %318 = icmp eq i32 %316, %317
  br i1 %318, label %319, label %321

319:                                              ; preds = %315
  %320 = call i32 @synerror(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %321

321:                                              ; preds = %319, %315
  %322 = load i32, i32* %4, align 4
  %323 = icmp eq i32 %322, 10
  br i1 %323, label %324, label %334

324:                                              ; preds = %321
  %325 = load i32, i32* @plinno, align 4
  %326 = add nsw i32 %325, 1
  store i32 %326, i32* @plinno, align 4
  %327 = load i64, i64* @doprompt, align 8
  %328 = icmp ne i64 %327, 0
  br i1 %328, label %329, label %331

329:                                              ; preds = %324
  %330 = call i32 @setprompt(i32 2)
  br label %333

331:                                              ; preds = %324
  %332 = call i32 @setprompt(i32 0)
  br label %333

333:                                              ; preds = %331, %329
  br label %334

334:                                              ; preds = %333, %321
  br label %305

335:                                              ; preds = %305
  %336 = call i32 (...) @pungetc()
  %337 = load i8*, i8** %3, align 8
  store i8* %337, i8** %2, align 8
  br label %355

338:                                              ; preds = %298
  %339 = load i64*, i64** @SQSYNTAX, align 8
  %340 = load i32, i32* %5, align 4
  %341 = sext i32 %340 to i64
  %342 = getelementptr inbounds i64, i64* %339, i64 %341
  %343 = load i64, i64* %342, align 8
  %344 = load i64, i64* @CCTL, align 8
  %345 = icmp eq i64 %343, %344
  br i1 %345, label %346, label %350

346:                                              ; preds = %338
  %347 = load i32, i32* @CTLESC, align 4
  %348 = load i8*, i8** %3, align 8
  %349 = call i32 @USTPUTC(i32 %347, i8* %348)
  br label %350

350:                                              ; preds = %346, %338
  %351 = load i32, i32* %5, align 4
  %352 = load i8*, i8** %3, align 8
  %353 = call i32 @USTPUTC(i32 %351, i8* %352)
  %354 = load i8*, i8** %3, align 8
  store i8* %354, i8** %2, align 8
  br label %355

355:                                              ; preds = %350, %335, %264, %243, %228, %23
  %356 = load i8*, i8** %2, align 8
  ret i8* %356
}

declare dso_local signext i8 @pgetc(...) #1

declare dso_local i32 @synerror(i8*) #1

declare dso_local i32 @setprompt(i32) #1

declare dso_local i32 @pungetc(...) #1

declare dso_local i32 @CHECKSTRSPACE(i32, i8*) #1

declare dso_local i32 @USTPUTC(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
