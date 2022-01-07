; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cselib.c_rtx_equal_for_cselib_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cselib.c_rtx_equal_for_cselib_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 (i64, i32)* }
%struct.TYPE_7__ = type { %struct.elt_loc_list*, %struct.TYPE_6__ }
%struct.elt_loc_list = type { i64, %struct.elt_loc_list* }
%struct.TYPE_6__ = type { i64 }

@VALUE = common dso_local global i32 0, align 4
@targetm = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@UNKNOWN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtx_equal_for_cselib_p(i64 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca %struct.TYPE_7__*, align 8
  %12 = alloca %struct.elt_loc_list*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_7__*, align 8
  %15 = alloca %struct.elt_loc_list*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %18 = load i64, i64* %4, align 8
  %19 = call i64 @REG_P(i64 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %2
  %22 = load i64, i64* %4, align 8
  %23 = call i64 @MEM_P(i64 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %38

25:                                               ; preds = %21, %2
  %26 = load i64, i64* %4, align 8
  %27 = load i64, i64* %4, align 8
  %28 = call i64 @GET_MODE(i64 %27)
  %29 = call %struct.TYPE_7__* @cselib_lookup(i64 %26, i64 %28, i32 0)
  store %struct.TYPE_7__* %29, %struct.TYPE_7__** %9, align 8
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %31 = icmp ne %struct.TYPE_7__* %30, null
  br i1 %31, label %32, label %37

32:                                               ; preds = %25
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %4, align 8
  br label %37

37:                                               ; preds = %32, %25
  br label %38

38:                                               ; preds = %37, %21
  %39 = load i64, i64* %5, align 8
  %40 = call i64 @REG_P(i64 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %38
  %43 = load i64, i64* %5, align 8
  %44 = call i64 @MEM_P(i64 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %59

46:                                               ; preds = %42, %38
  %47 = load i64, i64* %5, align 8
  %48 = load i64, i64* %5, align 8
  %49 = call i64 @GET_MODE(i64 %48)
  %50 = call %struct.TYPE_7__* @cselib_lookup(i64 %47, i64 %49, i32 0)
  store %struct.TYPE_7__* %50, %struct.TYPE_7__** %10, align 8
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %52 = icmp ne %struct.TYPE_7__* %51, null
  br i1 %52, label %53, label %58

53:                                               ; preds = %46
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  store i64 %57, i64* %5, align 8
  br label %58

58:                                               ; preds = %53, %46
  br label %59

59:                                               ; preds = %58, %42
  %60 = load i64, i64* %4, align 8
  %61 = load i64, i64* %5, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %59
  store i32 1, i32* %3, align 4
  br label %310

64:                                               ; preds = %59
  %65 = load i64, i64* %4, align 8
  %66 = call i32 @GET_CODE(i64 %65)
  %67 = load i32, i32* @VALUE, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %81

69:                                               ; preds = %64
  %70 = load i64, i64* %5, align 8
  %71 = call i32 @GET_CODE(i64 %70)
  %72 = load i32, i32* @VALUE, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %81

74:                                               ; preds = %69
  %75 = load i64, i64* %4, align 8
  %76 = call %struct.TYPE_7__* @CSELIB_VAL_PTR(i64 %75)
  %77 = load i64, i64* %5, align 8
  %78 = call %struct.TYPE_7__* @CSELIB_VAL_PTR(i64 %77)
  %79 = icmp eq %struct.TYPE_7__* %76, %78
  %80 = zext i1 %79 to i32
  store i32 %80, i32* %3, align 4
  br label %310

81:                                               ; preds = %69, %64
  %82 = load i64, i64* %4, align 8
  %83 = call i32 @GET_CODE(i64 %82)
  %84 = load i32, i32* @VALUE, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %86, label %120

86:                                               ; preds = %81
  %87 = load i64, i64* %4, align 8
  %88 = call %struct.TYPE_7__* @CSELIB_VAL_PTR(i64 %87)
  store %struct.TYPE_7__* %88, %struct.TYPE_7__** %11, align 8
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 0
  %91 = load %struct.elt_loc_list*, %struct.elt_loc_list** %90, align 8
  store %struct.elt_loc_list* %91, %struct.elt_loc_list** %12, align 8
  br label %92

92:                                               ; preds = %115, %86
  %93 = load %struct.elt_loc_list*, %struct.elt_loc_list** %12, align 8
  %94 = icmp ne %struct.elt_loc_list* %93, null
  br i1 %94, label %95, label %119

95:                                               ; preds = %92
  %96 = load %struct.elt_loc_list*, %struct.elt_loc_list** %12, align 8
  %97 = getelementptr inbounds %struct.elt_loc_list, %struct.elt_loc_list* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  store i64 %98, i64* %13, align 8
  %99 = load i64, i64* %13, align 8
  %100 = call i64 @REG_P(i64 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %106, label %102

102:                                              ; preds = %95
  %103 = load i64, i64* %13, align 8
  %104 = call i64 @MEM_P(i64 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %102, %95
  br label %115

107:                                              ; preds = %102
  %108 = load i64, i64* %13, align 8
  %109 = load i64, i64* %5, align 8
  %110 = call i32 @rtx_equal_for_cselib_p(i64 %108, i64 %109)
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %107
  store i32 1, i32* %3, align 4
  br label %310

113:                                              ; preds = %107
  br label %114

114:                                              ; preds = %113
  br label %115

115:                                              ; preds = %114, %106
  %116 = load %struct.elt_loc_list*, %struct.elt_loc_list** %12, align 8
  %117 = getelementptr inbounds %struct.elt_loc_list, %struct.elt_loc_list* %116, i32 0, i32 1
  %118 = load %struct.elt_loc_list*, %struct.elt_loc_list** %117, align 8
  store %struct.elt_loc_list* %118, %struct.elt_loc_list** %12, align 8
  br label %92

119:                                              ; preds = %92
  store i32 0, i32* %3, align 4
  br label %310

120:                                              ; preds = %81
  %121 = load i64, i64* %5, align 8
  %122 = call i32 @GET_CODE(i64 %121)
  %123 = load i32, i32* @VALUE, align 4
  %124 = icmp eq i32 %122, %123
  br i1 %124, label %125, label %159

125:                                              ; preds = %120
  %126 = load i64, i64* %5, align 8
  %127 = call %struct.TYPE_7__* @CSELIB_VAL_PTR(i64 %126)
  store %struct.TYPE_7__* %127, %struct.TYPE_7__** %14, align 8
  %128 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 0
  %130 = load %struct.elt_loc_list*, %struct.elt_loc_list** %129, align 8
  store %struct.elt_loc_list* %130, %struct.elt_loc_list** %15, align 8
  br label %131

131:                                              ; preds = %154, %125
  %132 = load %struct.elt_loc_list*, %struct.elt_loc_list** %15, align 8
  %133 = icmp ne %struct.elt_loc_list* %132, null
  br i1 %133, label %134, label %158

134:                                              ; preds = %131
  %135 = load %struct.elt_loc_list*, %struct.elt_loc_list** %15, align 8
  %136 = getelementptr inbounds %struct.elt_loc_list, %struct.elt_loc_list* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  store i64 %137, i64* %16, align 8
  %138 = load i64, i64* %16, align 8
  %139 = call i64 @REG_P(i64 %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %145, label %141

141:                                              ; preds = %134
  %142 = load i64, i64* %16, align 8
  %143 = call i64 @MEM_P(i64 %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %141, %134
  br label %154

146:                                              ; preds = %141
  %147 = load i64, i64* %4, align 8
  %148 = load i64, i64* %16, align 8
  %149 = call i32 @rtx_equal_for_cselib_p(i64 %147, i64 %148)
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %152

151:                                              ; preds = %146
  store i32 1, i32* %3, align 4
  br label %310

152:                                              ; preds = %146
  br label %153

153:                                              ; preds = %152
  br label %154

154:                                              ; preds = %153, %145
  %155 = load %struct.elt_loc_list*, %struct.elt_loc_list** %15, align 8
  %156 = getelementptr inbounds %struct.elt_loc_list, %struct.elt_loc_list* %155, i32 0, i32 1
  %157 = load %struct.elt_loc_list*, %struct.elt_loc_list** %156, align 8
  store %struct.elt_loc_list* %157, %struct.elt_loc_list** %15, align 8
  br label %131

158:                                              ; preds = %131
  store i32 0, i32* %3, align 4
  br label %310

159:                                              ; preds = %120
  %160 = load i64, i64* %4, align 8
  %161 = call i32 @GET_CODE(i64 %160)
  %162 = load i64, i64* %5, align 8
  %163 = call i32 @GET_CODE(i64 %162)
  %164 = icmp ne i32 %161, %163
  br i1 %164, label %171, label %165

165:                                              ; preds = %159
  %166 = load i64, i64* %4, align 8
  %167 = call i64 @GET_MODE(i64 %166)
  %168 = load i64, i64* %5, align 8
  %169 = call i64 @GET_MODE(i64 %168)
  %170 = icmp ne i64 %167, %169
  br i1 %170, label %171, label %172

171:                                              ; preds = %165, %159
  store i32 0, i32* %3, align 4
  br label %310

172:                                              ; preds = %165
  %173 = load i64, i64* %4, align 8
  %174 = call i32 @GET_CODE(i64 %173)
  switch i32 %174, label %183 [
    i32 129, label %175
    i32 128, label %176
  ]

175:                                              ; preds = %172
  store i32 0, i32* %3, align 4
  br label %310

176:                                              ; preds = %172
  %177 = load i64, i64* %4, align 8
  %178 = call i64 @XEXP(i64 %177, i32 0)
  %179 = load i64, i64* %5, align 8
  %180 = call i64 @XEXP(i64 %179, i32 0)
  %181 = icmp eq i64 %178, %180
  %182 = zext i1 %181 to i32
  store i32 %182, i32* %3, align 4
  br label %310

183:                                              ; preds = %172
  br label %184

184:                                              ; preds = %183
  %185 = load i64, i64* %4, align 8
  %186 = call i32 @GET_CODE(i64 %185)
  store i32 %186, i32* %6, align 4
  %187 = load i32, i32* %6, align 4
  %188 = call i8* @GET_RTX_FORMAT(i32 %187)
  store i8* %188, i8** %7, align 8
  %189 = load i32, i32* %6, align 4
  %190 = call i32 @GET_RTX_LENGTH(i32 %189)
  %191 = sub nsw i32 %190, 1
  store i32 %191, i32* %8, align 4
  br label %192

192:                                              ; preds = %306, %184
  %193 = load i32, i32* %8, align 4
  %194 = icmp sge i32 %193, 0
  br i1 %194, label %195, label %309

195:                                              ; preds = %192
  %196 = load i8*, i8** %7, align 8
  %197 = load i32, i32* %8, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds i8, i8* %196, i64 %198
  %200 = load i8, i8* %199, align 1
  %201 = sext i8 %200 to i32
  switch i32 %201, label %303 [
    i32 119, label %202
    i32 110, label %212
    i32 105, label %212
    i32 86, label %222
    i32 69, label %222
    i32 101, label %255
    i32 83, label %290
    i32 115, label %290
    i32 117, label %301
    i32 48, label %302
    i32 116, label %302
  ]

202:                                              ; preds = %195
  %203 = load i64, i64* %4, align 8
  %204 = load i32, i32* %8, align 4
  %205 = call i32 @XWINT(i64 %203, i32 %204)
  %206 = load i64, i64* %5, align 8
  %207 = load i32, i32* %8, align 4
  %208 = call i32 @XWINT(i64 %206, i32 %207)
  %209 = icmp ne i32 %205, %208
  br i1 %209, label %210, label %211

210:                                              ; preds = %202
  store i32 0, i32* %3, align 4
  br label %310

211:                                              ; preds = %202
  br label %305

212:                                              ; preds = %195, %195
  %213 = load i64, i64* %4, align 8
  %214 = load i32, i32* %8, align 4
  %215 = call i32 @XINT(i64 %213, i32 %214)
  %216 = load i64, i64* %5, align 8
  %217 = load i32, i32* %8, align 4
  %218 = call i32 @XINT(i64 %216, i32 %217)
  %219 = icmp ne i32 %215, %218
  br i1 %219, label %220, label %221

220:                                              ; preds = %212
  store i32 0, i32* %3, align 4
  br label %310

221:                                              ; preds = %212
  br label %305

222:                                              ; preds = %195, %195
  %223 = load i64, i64* %4, align 8
  %224 = load i32, i32* %8, align 4
  %225 = call i32 @XVECLEN(i64 %223, i32 %224)
  %226 = load i64, i64* %5, align 8
  %227 = load i32, i32* %8, align 4
  %228 = call i32 @XVECLEN(i64 %226, i32 %227)
  %229 = icmp ne i32 %225, %228
  br i1 %229, label %230, label %231

230:                                              ; preds = %222
  store i32 0, i32* %3, align 4
  br label %310

231:                                              ; preds = %222
  store i32 0, i32* %17, align 4
  br label %232

232:                                              ; preds = %251, %231
  %233 = load i32, i32* %17, align 4
  %234 = load i64, i64* %4, align 8
  %235 = load i32, i32* %8, align 4
  %236 = call i32 @XVECLEN(i64 %234, i32 %235)
  %237 = icmp slt i32 %233, %236
  br i1 %237, label %238, label %254

238:                                              ; preds = %232
  %239 = load i64, i64* %4, align 8
  %240 = load i32, i32* %8, align 4
  %241 = load i32, i32* %17, align 4
  %242 = call i64 @XVECEXP(i64 %239, i32 %240, i32 %241)
  %243 = load i64, i64* %5, align 8
  %244 = load i32, i32* %8, align 4
  %245 = load i32, i32* %17, align 4
  %246 = call i64 @XVECEXP(i64 %243, i32 %244, i32 %245)
  %247 = call i32 @rtx_equal_for_cselib_p(i64 %242, i64 %246)
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %250, label %249

249:                                              ; preds = %238
  store i32 0, i32* %3, align 4
  br label %310

250:                                              ; preds = %238
  br label %251

251:                                              ; preds = %250
  %252 = load i32, i32* %17, align 4
  %253 = add nsw i32 %252, 1
  store i32 %253, i32* %17, align 4
  br label %232

254:                                              ; preds = %232
  br label %305

255:                                              ; preds = %195
  %256 = load i32, i32* %8, align 4
  %257 = icmp eq i32 %256, 1
  br i1 %257, label %258, label %279

258:                                              ; preds = %255
  %259 = load i32 (i64, i32)*, i32 (i64, i32)** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @targetm, i32 0, i32 0), align 8
  %260 = load i64, i64* %4, align 8
  %261 = load i32, i32* @UNKNOWN, align 4
  %262 = call i32 %259(i64 %260, i32 %261)
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %264, label %279

264:                                              ; preds = %258
  %265 = load i64, i64* %4, align 8
  %266 = call i64 @XEXP(i64 %265, i32 1)
  %267 = load i64, i64* %5, align 8
  %268 = call i64 @XEXP(i64 %267, i32 0)
  %269 = call i32 @rtx_equal_for_cselib_p(i64 %266, i64 %268)
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %271, label %279

271:                                              ; preds = %264
  %272 = load i64, i64* %4, align 8
  %273 = call i64 @XEXP(i64 %272, i32 0)
  %274 = load i64, i64* %5, align 8
  %275 = call i64 @XEXP(i64 %274, i32 1)
  %276 = call i32 @rtx_equal_for_cselib_p(i64 %273, i64 %275)
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %278, label %279

278:                                              ; preds = %271
  store i32 1, i32* %3, align 4
  br label %310

279:                                              ; preds = %271, %264, %258, %255
  %280 = load i64, i64* %4, align 8
  %281 = load i32, i32* %8, align 4
  %282 = call i64 @XEXP(i64 %280, i32 %281)
  %283 = load i64, i64* %5, align 8
  %284 = load i32, i32* %8, align 4
  %285 = call i64 @XEXP(i64 %283, i32 %284)
  %286 = call i32 @rtx_equal_for_cselib_p(i64 %282, i64 %285)
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %289, label %288

288:                                              ; preds = %279
  store i32 0, i32* %3, align 4
  br label %310

289:                                              ; preds = %279
  br label %305

290:                                              ; preds = %195, %195
  %291 = load i64, i64* %4, align 8
  %292 = load i32, i32* %8, align 4
  %293 = call i32 @XSTR(i64 %291, i32 %292)
  %294 = load i64, i64* %5, align 8
  %295 = load i32, i32* %8, align 4
  %296 = call i32 @XSTR(i64 %294, i32 %295)
  %297 = call i32 @strcmp(i32 %293, i32 %296)
  %298 = icmp ne i32 %297, 0
  br i1 %298, label %299, label %300

299:                                              ; preds = %290
  store i32 0, i32* %3, align 4
  br label %310

300:                                              ; preds = %290
  br label %305

301:                                              ; preds = %195
  br label %305

302:                                              ; preds = %195, %195
  br label %305

303:                                              ; preds = %195
  %304 = call i32 (...) @gcc_unreachable()
  br label %305

305:                                              ; preds = %303, %302, %301, %300, %289, %254, %221, %211
  br label %306

306:                                              ; preds = %305
  %307 = load i32, i32* %8, align 4
  %308 = add nsw i32 %307, -1
  store i32 %308, i32* %8, align 4
  br label %192

309:                                              ; preds = %192
  store i32 1, i32* %3, align 4
  br label %310

310:                                              ; preds = %309, %299, %288, %278, %249, %230, %220, %210, %176, %175, %171, %158, %151, %119, %112, %74, %63
  %311 = load i32, i32* %3, align 4
  ret i32 %311
}

declare dso_local i64 @REG_P(i64) #1

declare dso_local i64 @MEM_P(i64) #1

declare dso_local %struct.TYPE_7__* @cselib_lookup(i64, i64, i32) #1

declare dso_local i64 @GET_MODE(i64) #1

declare dso_local i32 @GET_CODE(i64) #1

declare dso_local %struct.TYPE_7__* @CSELIB_VAL_PTR(i64) #1

declare dso_local i64 @XEXP(i64, i32) #1

declare dso_local i8* @GET_RTX_FORMAT(i32) #1

declare dso_local i32 @GET_RTX_LENGTH(i32) #1

declare dso_local i32 @XWINT(i64, i32) #1

declare dso_local i32 @XINT(i64, i32) #1

declare dso_local i32 @XVECLEN(i64, i32) #1

declare dso_local i64 @XVECEXP(i64, i32, i32) #1

declare dso_local i32 @strcmp(i32, i32) #1

declare dso_local i32 @XSTR(i64, i32) #1

declare dso_local i32 @gcc_unreachable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
