; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bsnmp/lib/extr_snmp.c_snmp_value_parse.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bsnmp/lib/extr_snmp.c_snmp_value_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.snmp_values = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32* }
%struct.hostent = type { i32, i32 }
%struct.TYPE_3__ = type { i8*, i32 }

@ASN_MAXOIDLEN = common dso_local global i32 0, align 4
@ASN_MAXID = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snmp_value_parse(i8* %0, i32 %1, %union.snmp_values* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %union.snmp_values*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8, align 1
  %15 = alloca i32, align 4
  %16 = alloca %struct.hostent*, align 8
  %17 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store %union.snmp_values* %2, %union.snmp_values** %7, align 8
  %18 = load i32, i32* %6, align 4
  switch i32 %18, label %410 [
    i32 131, label %19
    i32 132, label %19
    i32 133, label %19
    i32 137, label %19
    i32 135, label %26
    i32 130, label %37
    i32 129, label %306
    i32 134, label %354
    i32 139, label %383
    i32 136, label %383
    i32 128, label %383
    i32 138, label %399
  ]

19:                                               ; preds = %3, %3, %3, %3
  %20 = load i8*, i8** %5, align 8
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  store i32 -1, i32* %4, align 4
  br label %412

25:                                               ; preds = %19
  store i32 0, i32* %4, align 4
  br label %412

26:                                               ; preds = %3
  %27 = load i8*, i8** %5, align 8
  %28 = call i32 @strtoll(i8* %27, i8** %8, i32 0)
  %29 = load %union.snmp_values*, %union.snmp_values** %7, align 8
  %30 = bitcast %union.snmp_values* %29 to i32*
  store i32 %28, i32* %30, align 8
  %31 = load i8*, i8** %8, align 8
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %26
  store i32 -1, i32* %4, align 4
  br label %412

36:                                               ; preds = %26
  store i32 0, i32* %4, align 4
  br label %412

37:                                               ; preds = %3
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  store i8* null, i8** %11, align 8
  %38 = load i8*, i8** %5, align 8
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp eq i32 %40, 34
  br i1 %41, label %42, label %239

42:                                               ; preds = %37
  %43 = load i8*, i8** %5, align 8
  %44 = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %44, i8** %5, align 8
  br label %45

45:                                               ; preds = %231, %42
  %46 = load i8*, i8** %5, align 8
  %47 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %47, i8** %5, align 8
  %48 = load i8, i8* %46, align 1
  store i8 %48, i8* %14, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %238

51:                                               ; preds = %45
  %52 = load i8, i8* %14, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp eq i32 %53, 34
  br i1 %54, label %55, label %64

55:                                               ; preds = %51
  %56 = load i8*, i8** %5, align 8
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %55
  %61 = load i8*, i8** %11, align 8
  %62 = call i32 @free(i8* %61)
  store i32 -1, i32* %4, align 4
  br label %412

63:                                               ; preds = %55
  br label %238

64:                                               ; preds = %51
  %65 = load i8, i8* %14, align 1
  %66 = sext i8 %65 to i32
  %67 = icmp eq i32 %66, 92
  br i1 %67, label %68, label %214

68:                                               ; preds = %64
  %69 = load i8*, i8** %5, align 8
  %70 = getelementptr inbounds i8, i8* %69, i32 1
  store i8* %70, i8** %5, align 8
  %71 = load i8, i8* %69, align 1
  store i8 %71, i8* %14, align 1
  %72 = sext i8 %71 to i32
  switch i32 %72, label %212 [
    i32 92, label %73
    i32 97, label %74
    i32 98, label %75
    i32 102, label %76
    i32 110, label %77
    i32 114, label %78
    i32 116, label %79
    i32 118, label %80
    i32 120, label %81
    i32 48, label %171
    i32 49, label %171
    i32 50, label %171
    i32 51, label %171
    i32 52, label %171
    i32 53, label %171
    i32 54, label %171
    i32 55, label %171
  ]

73:                                               ; preds = %68
  br label %213

74:                                               ; preds = %68
  store i8 7, i8* %14, align 1
  br label %213

75:                                               ; preds = %68
  store i8 8, i8* %14, align 1
  br label %213

76:                                               ; preds = %68
  store i8 12, i8* %14, align 1
  br label %213

77:                                               ; preds = %68
  store i8 10, i8* %14, align 1
  br label %213

78:                                               ; preds = %68
  store i8 13, i8* %14, align 1
  br label %213

79:                                               ; preds = %68
  store i8 9, i8* %14, align 1
  br label %213

80:                                               ; preds = %68
  store i8 11, i8* %14, align 1
  br label %213

81:                                               ; preds = %68
  store i8 0, i8* %14, align 1
  %82 = load i8*, i8** %5, align 8
  %83 = load i8, i8* %82, align 1
  %84 = call i32 @isxdigit(i8 signext %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %87, label %86

86:                                               ; preds = %81
  br label %213

87:                                               ; preds = %81
  %88 = load i8*, i8** %5, align 8
  %89 = load i8, i8* %88, align 1
  %90 = call i32 @isdigit(i8 signext %89)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %99

92:                                               ; preds = %87
  %93 = load i8*, i8** %5, align 8
  %94 = getelementptr inbounds i8, i8* %93, i32 1
  store i8* %94, i8** %5, align 8
  %95 = load i8, i8* %93, align 1
  %96 = sext i8 %95 to i32
  %97 = sub nsw i32 %96, 48
  %98 = trunc i32 %97 to i8
  store i8 %98, i8* %14, align 1
  br label %121

99:                                               ; preds = %87
  %100 = load i8*, i8** %5, align 8
  %101 = load i8, i8* %100, align 1
  %102 = call i32 @isupper(i8 signext %101)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %112

104:                                              ; preds = %99
  %105 = load i8*, i8** %5, align 8
  %106 = getelementptr inbounds i8, i8* %105, i32 1
  store i8* %106, i8** %5, align 8
  %107 = load i8, i8* %105, align 1
  %108 = sext i8 %107 to i32
  %109 = sub nsw i32 %108, 65
  %110 = add nsw i32 %109, 10
  %111 = trunc i32 %110 to i8
  store i8 %111, i8* %14, align 1
  br label %120

112:                                              ; preds = %99
  %113 = load i8*, i8** %5, align 8
  %114 = getelementptr inbounds i8, i8* %113, i32 1
  store i8* %114, i8** %5, align 8
  %115 = load i8, i8* %113, align 1
  %116 = sext i8 %115 to i32
  %117 = sub nsw i32 %116, 97
  %118 = add nsw i32 %117, 10
  %119 = trunc i32 %118 to i8
  store i8 %119, i8* %14, align 1
  br label %120

120:                                              ; preds = %112, %104
  br label %121

121:                                              ; preds = %120, %92
  %122 = load i8*, i8** %5, align 8
  %123 = load i8, i8* %122, align 1
  %124 = call i32 @isxdigit(i8 signext %123)
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %127, label %126

126:                                              ; preds = %121
  br label %213

127:                                              ; preds = %121
  %128 = load i8*, i8** %5, align 8
  %129 = load i8, i8* %128, align 1
  %130 = call i32 @isdigit(i8 signext %129)
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %142

132:                                              ; preds = %127
  %133 = load i8*, i8** %5, align 8
  %134 = getelementptr inbounds i8, i8* %133, i32 1
  store i8* %134, i8** %5, align 8
  %135 = load i8, i8* %133, align 1
  %136 = sext i8 %135 to i32
  %137 = sub nsw i32 %136, 48
  %138 = load i8, i8* %14, align 1
  %139 = sext i8 %138 to i32
  %140 = add nsw i32 %139, %137
  %141 = trunc i32 %140 to i8
  store i8 %141, i8* %14, align 1
  br label %170

142:                                              ; preds = %127
  %143 = load i8*, i8** %5, align 8
  %144 = load i8, i8* %143, align 1
  %145 = call i32 @isupper(i8 signext %144)
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %158

147:                                              ; preds = %142
  %148 = load i8*, i8** %5, align 8
  %149 = getelementptr inbounds i8, i8* %148, i32 1
  store i8* %149, i8** %5, align 8
  %150 = load i8, i8* %148, align 1
  %151 = sext i8 %150 to i32
  %152 = sub nsw i32 %151, 65
  %153 = add nsw i32 %152, 10
  %154 = load i8, i8* %14, align 1
  %155 = sext i8 %154 to i32
  %156 = add nsw i32 %155, %153
  %157 = trunc i32 %156 to i8
  store i8 %157, i8* %14, align 1
  br label %169

158:                                              ; preds = %142
  %159 = load i8*, i8** %5, align 8
  %160 = getelementptr inbounds i8, i8* %159, i32 1
  store i8* %160, i8** %5, align 8
  %161 = load i8, i8* %159, align 1
  %162 = sext i8 %161 to i32
  %163 = sub nsw i32 %162, 97
  %164 = add nsw i32 %163, 10
  %165 = load i8, i8* %14, align 1
  %166 = sext i8 %165 to i32
  %167 = add nsw i32 %166, %164
  %168 = trunc i32 %167 to i8
  store i8 %168, i8* %14, align 1
  br label %169

169:                                              ; preds = %158, %147
  br label %170

170:                                              ; preds = %169, %132
  br label %213

171:                                              ; preds = %68, %68, %68, %68, %68, %68, %68, %68
  %172 = load i8*, i8** %5, align 8
  %173 = getelementptr inbounds i8, i8* %172, i32 1
  store i8* %173, i8** %5, align 8
  %174 = load i8, i8* %172, align 1
  %175 = sext i8 %174 to i32
  %176 = sub nsw i32 %175, 48
  %177 = trunc i32 %176 to i8
  store i8 %177, i8* %14, align 1
  %178 = load i8*, i8** %5, align 8
  %179 = load i8, i8* %178, align 1
  %180 = sext i8 %179 to i32
  %181 = icmp slt i32 %180, 48
  br i1 %181, label %187, label %182

182:                                              ; preds = %171
  %183 = load i8*, i8** %5, align 8
  %184 = load i8, i8* %183, align 1
  %185 = sext i8 %184 to i32
  %186 = icmp sgt i32 %185, 55
  br i1 %186, label %187, label %188

187:                                              ; preds = %182, %171
  br label %213

188:                                              ; preds = %182
  %189 = load i8*, i8** %5, align 8
  %190 = getelementptr inbounds i8, i8* %189, i32 1
  store i8* %190, i8** %5, align 8
  %191 = load i8, i8* %189, align 1
  %192 = sext i8 %191 to i32
  %193 = sub nsw i32 %192, 48
  %194 = trunc i32 %193 to i8
  store i8 %194, i8* %14, align 1
  %195 = load i8*, i8** %5, align 8
  %196 = load i8, i8* %195, align 1
  %197 = sext i8 %196 to i32
  %198 = icmp slt i32 %197, 48
  br i1 %198, label %204, label %199

199:                                              ; preds = %188
  %200 = load i8*, i8** %5, align 8
  %201 = load i8, i8* %200, align 1
  %202 = sext i8 %201 to i32
  %203 = icmp sgt i32 %202, 55
  br i1 %203, label %204, label %205

204:                                              ; preds = %199, %188
  br label %213

205:                                              ; preds = %199
  %206 = load i8*, i8** %5, align 8
  %207 = getelementptr inbounds i8, i8* %206, i32 1
  store i8* %207, i8** %5, align 8
  %208 = load i8, i8* %206, align 1
  %209 = sext i8 %208 to i32
  %210 = sub nsw i32 %209, 48
  %211 = trunc i32 %210 to i8
  store i8 %211, i8* %14, align 1
  br label %213

212:                                              ; preds = %68
  br label %213

213:                                              ; preds = %212, %205, %204, %187, %170, %126, %86, %80, %79, %78, %77, %76, %75, %74, %73
  br label %214

214:                                              ; preds = %213, %64
  %215 = load i32, i32* %10, align 4
  %216 = load i32, i32* %9, align 4
  %217 = icmp eq i32 %215, %216
  br i1 %217, label %218, label %231

218:                                              ; preds = %214
  %219 = load i32, i32* %10, align 4
  %220 = add nsw i32 %219, 100
  store i32 %220, i32* %10, align 4
  %221 = load i8*, i8** %11, align 8
  %222 = load i32, i32* %10, align 4
  %223 = sext i32 %222 to i64
  %224 = call i8* @realloc(i8* %221, i64 %223)
  store i8* %224, i8** %13, align 8
  %225 = icmp eq i8* %224, null
  br i1 %225, label %226, label %229

226:                                              ; preds = %218
  %227 = load i8*, i8** %11, align 8
  %228 = call i32 @free(i8* %227)
  store i32 -1, i32* %4, align 4
  br label %412

229:                                              ; preds = %218
  %230 = load i8*, i8** %13, align 8
  store i8* %230, i8** %11, align 8
  br label %231

231:                                              ; preds = %229, %214
  %232 = load i8, i8* %14, align 1
  %233 = load i8*, i8** %11, align 8
  %234 = load i32, i32* %9, align 4
  %235 = add nsw i32 %234, 1
  store i32 %235, i32* %9, align 4
  %236 = sext i32 %234 to i64
  %237 = getelementptr inbounds i8, i8* %233, i64 %236
  store i8 %232, i8* %237, align 1
  br label %45

238:                                              ; preds = %63, %45
  br label %297

239:                                              ; preds = %37
  br label %240

240:                                              ; preds = %295, %239
  %241 = load i8*, i8** %5, align 8
  %242 = load i8, i8* %241, align 1
  %243 = sext i8 %242 to i32
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %296

245:                                              ; preds = %240
  %246 = load i8*, i8** %5, align 8
  %247 = call i32 @strtoul(i8* %246, i8** %8, i32 16)
  store i32 %247, i32* %12, align 4
  %248 = load i8*, i8** %8, align 8
  store i8* %248, i8** %5, align 8
  %249 = load i32, i32* %12, align 4
  %250 = icmp sgt i32 %249, 255
  br i1 %250, label %251, label %254

251:                                              ; preds = %245
  %252 = load i8*, i8** %11, align 8
  %253 = call i32 @free(i8* %252)
  store i32 -1, i32* %4, align 4
  br label %412

254:                                              ; preds = %245
  %255 = load i32, i32* %10, align 4
  %256 = load i32, i32* %9, align 4
  %257 = icmp eq i32 %255, %256
  br i1 %257, label %258, label %271

258:                                              ; preds = %254
  %259 = load i32, i32* %10, align 4
  %260 = add nsw i32 %259, 100
  store i32 %260, i32* %10, align 4
  %261 = load i8*, i8** %11, align 8
  %262 = load i32, i32* %10, align 4
  %263 = sext i32 %262 to i64
  %264 = call i8* @realloc(i8* %261, i64 %263)
  store i8* %264, i8** %13, align 8
  %265 = icmp eq i8* %264, null
  br i1 %265, label %266, label %269

266:                                              ; preds = %258
  %267 = load i8*, i8** %11, align 8
  %268 = call i32 @free(i8* %267)
  store i32 -1, i32* %4, align 4
  br label %412

269:                                              ; preds = %258
  %270 = load i8*, i8** %13, align 8
  store i8* %270, i8** %11, align 8
  br label %271

271:                                              ; preds = %269, %254
  %272 = load i32, i32* %12, align 4
  %273 = trunc i32 %272 to i8
  %274 = load i8*, i8** %11, align 8
  %275 = load i32, i32* %9, align 4
  %276 = add nsw i32 %275, 1
  store i32 %276, i32* %9, align 4
  %277 = sext i32 %275 to i64
  %278 = getelementptr inbounds i8, i8* %274, i64 %277
  store i8 %273, i8* %278, align 1
  %279 = load i8*, i8** %5, align 8
  %280 = load i8, i8* %279, align 1
  %281 = sext i8 %280 to i32
  %282 = icmp eq i32 %281, 58
  br i1 %282, label %283, label %286

283:                                              ; preds = %271
  %284 = load i8*, i8** %5, align 8
  %285 = getelementptr inbounds i8, i8* %284, i32 1
  store i8* %285, i8** %5, align 8
  br label %295

286:                                              ; preds = %271
  %287 = load i8*, i8** %5, align 8
  %288 = load i8, i8* %287, align 1
  %289 = sext i8 %288 to i32
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %291, label %294

291:                                              ; preds = %286
  %292 = load i8*, i8** %11, align 8
  %293 = call i32 @free(i8* %292)
  store i32 -1, i32* %4, align 4
  br label %412

294:                                              ; preds = %286
  br label %295

295:                                              ; preds = %294, %283
  br label %240

296:                                              ; preds = %240
  br label %297

297:                                              ; preds = %296, %238
  %298 = load i8*, i8** %11, align 8
  %299 = load %union.snmp_values*, %union.snmp_values** %7, align 8
  %300 = bitcast %union.snmp_values* %299 to %struct.TYPE_3__*
  %301 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %300, i32 0, i32 0
  store i8* %298, i8** %301, align 8
  %302 = load i32, i32* %9, align 4
  %303 = load %union.snmp_values*, %union.snmp_values** %7, align 8
  %304 = bitcast %union.snmp_values* %303 to %struct.TYPE_3__*
  %305 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %304, i32 0, i32 1
  store i32 %302, i32* %305, align 8
  store i32 0, i32* %4, align 4
  br label %412

306:                                              ; preds = %3
  %307 = load %union.snmp_values*, %union.snmp_values** %7, align 8
  %308 = bitcast %union.snmp_values* %307 to %struct.TYPE_4__*
  %309 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %308, i32 0, i32 0
  store i32 0, i32* %309, align 8
  br label %310

310:                                              ; preds = %350, %306
  %311 = load %union.snmp_values*, %union.snmp_values** %7, align 8
  %312 = bitcast %union.snmp_values* %311 to %struct.TYPE_4__*
  %313 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %312, i32 0, i32 0
  %314 = load i32, i32* %313, align 8
  %315 = load i32, i32* @ASN_MAXOIDLEN, align 4
  %316 = icmp eq i32 %314, %315
  br i1 %316, label %317, label %318

317:                                              ; preds = %310
  store i32 -1, i32* %4, align 4
  br label %412

318:                                              ; preds = %310
  %319 = load i8*, i8** %5, align 8
  %320 = call i32 @strtoul(i8* %319, i8** %8, i32 10)
  store i32 %320, i32* %15, align 4
  %321 = load i8*, i8** %8, align 8
  store i8* %321, i8** %5, align 8
  %322 = load i32, i32* %15, align 4
  %323 = load i32, i32* @ASN_MAXID, align 4
  %324 = icmp sgt i32 %322, %323
  br i1 %324, label %325, label %326

325:                                              ; preds = %318
  store i32 -1, i32* %4, align 4
  br label %412

326:                                              ; preds = %318
  %327 = load i32, i32* %15, align 4
  %328 = load %union.snmp_values*, %union.snmp_values** %7, align 8
  %329 = bitcast %union.snmp_values* %328 to %struct.TYPE_4__*
  %330 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %329, i32 0, i32 1
  %331 = load i32*, i32** %330, align 8
  %332 = load %union.snmp_values*, %union.snmp_values** %7, align 8
  %333 = bitcast %union.snmp_values* %332 to %struct.TYPE_4__*
  %334 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %333, i32 0, i32 0
  %335 = load i32, i32* %334, align 8
  %336 = add nsw i32 %335, 1
  store i32 %336, i32* %334, align 8
  %337 = sext i32 %335 to i64
  %338 = getelementptr inbounds i32, i32* %331, i64 %337
  store i32 %327, i32* %338, align 4
  %339 = load i8*, i8** %5, align 8
  %340 = load i8, i8* %339, align 1
  %341 = sext i8 %340 to i32
  %342 = icmp eq i32 %341, 0
  br i1 %342, label %343, label %344

343:                                              ; preds = %326
  br label %353

344:                                              ; preds = %326
  %345 = load i8*, i8** %5, align 8
  %346 = load i8, i8* %345, align 1
  %347 = sext i8 %346 to i32
  %348 = icmp ne i32 %347, 46
  br i1 %348, label %349, label %350

349:                                              ; preds = %344
  store i32 -1, i32* %4, align 4
  br label %412

350:                                              ; preds = %344
  %351 = load i8*, i8** %5, align 8
  %352 = getelementptr inbounds i8, i8* %351, i32 1
  store i8* %352, i8** %5, align 8
  br label %310

353:                                              ; preds = %343
  store i32 0, i32* %4, align 4
  br label %412

354:                                              ; preds = %3
  %355 = load i32, i32* @AF_INET, align 4
  %356 = load i8*, i8** %5, align 8
  %357 = load %union.snmp_values*, %union.snmp_values** %7, align 8
  %358 = bitcast %union.snmp_values* %357 to i32*
  %359 = call i32 @inet_pton(i32 %355, i8* %356, i32* %358)
  %360 = icmp eq i32 %359, 1
  br i1 %360, label %361, label %362

361:                                              ; preds = %354
  store i32 0, i32* %4, align 4
  br label %412

362:                                              ; preds = %354
  %363 = load i8*, i8** %5, align 8
  %364 = load i32, i32* @AF_INET, align 4
  %365 = call %struct.hostent* @gethostbyname2(i8* %363, i32 %364)
  store %struct.hostent* %365, %struct.hostent** %16, align 8
  %366 = icmp eq %struct.hostent* %365, null
  br i1 %366, label %367, label %368

367:                                              ; preds = %362
  store i32 -1, i32* %4, align 4
  br label %412

368:                                              ; preds = %362
  %369 = load %struct.hostent*, %struct.hostent** %16, align 8
  %370 = getelementptr inbounds %struct.hostent, %struct.hostent* %369, i32 0, i32 1
  %371 = load i32, i32* %370, align 4
  %372 = load i32, i32* @AF_INET, align 4
  %373 = icmp ne i32 %371, %372
  br i1 %373, label %374, label %375

374:                                              ; preds = %368
  store i32 -1, i32* %4, align 4
  br label %412

375:                                              ; preds = %368
  %376 = load %union.snmp_values*, %union.snmp_values** %7, align 8
  %377 = bitcast %union.snmp_values* %376 to i32*
  %378 = load i32, i32* %377, align 8
  %379 = load %struct.hostent*, %struct.hostent** %16, align 8
  %380 = getelementptr inbounds %struct.hostent, %struct.hostent* %379, i32 0, i32 0
  %381 = load i32, i32* %380, align 4
  %382 = call i32 @memcpy(i32 %378, i32 %381, i32 4)
  store i32 0, i32* %4, align 4
  br label %412

383:                                              ; preds = %3, %3, %3
  %384 = load i8*, i8** %5, align 8
  %385 = call i8* @strtoull(i8* %384, i8** %8, i32 0)
  %386 = ptrtoint i8* %385 to i32
  store i32 %386, i32* %17, align 4
  %387 = load i8*, i8** %8, align 8
  %388 = load i8, i8* %387, align 1
  %389 = sext i8 %388 to i32
  %390 = icmp ne i32 %389, 0
  br i1 %390, label %394, label %391

391:                                              ; preds = %383
  %392 = load i32, i32* %17, align 4
  %393 = icmp ugt i32 %392, -1
  br i1 %393, label %394, label %395

394:                                              ; preds = %391, %383
  store i32 -1, i32* %4, align 4
  br label %412

395:                                              ; preds = %391
  %396 = load i32, i32* %17, align 4
  %397 = load %union.snmp_values*, %union.snmp_values** %7, align 8
  %398 = bitcast %union.snmp_values* %397 to i32*
  store i32 %396, i32* %398, align 8
  store i32 0, i32* %4, align 4
  br label %412

399:                                              ; preds = %3
  %400 = load i8*, i8** %5, align 8
  %401 = call i8* @strtoull(i8* %400, i8** %8, i32 0)
  %402 = load %union.snmp_values*, %union.snmp_values** %7, align 8
  %403 = bitcast %union.snmp_values* %402 to i8**
  store i8* %401, i8** %403, align 8
  %404 = load i8*, i8** %8, align 8
  %405 = load i8, i8* %404, align 1
  %406 = sext i8 %405 to i32
  %407 = icmp ne i32 %406, 0
  br i1 %407, label %408, label %409

408:                                              ; preds = %399
  store i32 -1, i32* %4, align 4
  br label %412

409:                                              ; preds = %399
  store i32 0, i32* %4, align 4
  br label %412

410:                                              ; preds = %3
  %411 = call i32 (...) @abort() #3
  unreachable

412:                                              ; preds = %409, %408, %395, %394, %375, %374, %367, %361, %353, %349, %325, %317, %297, %291, %266, %251, %226, %60, %36, %35, %25, %24
  %413 = load i32, i32* %4, align 4
  ret i32 %413
}

declare dso_local i32 @strtoll(i8*, i8**, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @isxdigit(i8 signext) #1

declare dso_local i32 @isdigit(i8 signext) #1

declare dso_local i32 @isupper(i8 signext) #1

declare dso_local i8* @realloc(i8*, i64) #1

declare dso_local i32 @strtoul(i8*, i8**, i32) #1

declare dso_local i32 @inet_pton(i32, i8*, i32*) #1

declare dso_local %struct.hostent* @gethostbyname2(i8*, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i8* @strtoull(i8*, i8**, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
