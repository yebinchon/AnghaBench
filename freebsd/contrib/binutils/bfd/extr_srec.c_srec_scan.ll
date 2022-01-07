; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_srec.c_srec_scan.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_srec.c_srec_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }
%struct.TYPE_15__ = type { i32, i32, i32, i32 }

@FALSE = common dso_local global i64 0, align 8
@SEEK_SET = common dso_local global i32 0, align 4
@EOF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c".sec%d\00", align 1
@SEC_HAS_CONTENTS = common dso_local global i32 0, align 4
@SEC_LOAD = common dso_local global i32 0, align 4
@SEC_ALLOC = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_14__*)* @srec_scan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @srec_scan(%struct.TYPE_14__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca [3 x i8], align 1
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca [20 x i8], align 16
  %22 = alloca i8*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  store i32 1, i32* %5, align 4
  %25 = load i64, i64* @FALSE, align 8
  store i64 %25, i64* %6, align 8
  store i8* null, i8** %7, align 8
  store i64 0, i64* %8, align 8
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %9, align 8
  store i8* null, i8** %10, align 8
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %27 = load i32, i32* @SEEK_SET, align 4
  %28 = call i64 @bfd_seek(%struct.TYPE_14__* %26, i32 0, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %1
  br label %524

31:                                               ; preds = %1
  br label %32

32:                                               ; preds = %511, %31
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %34 = call i32 @srec_get_byte(%struct.TYPE_14__* %33, i64* %6)
  store i32 %34, i32* %4, align 4
  %35 = load i32, i32* @EOF, align 4
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %37, label %512

37:                                               ; preds = %32
  %38 = load i32, i32* %4, align 4
  %39 = icmp ne i32 %38, 83
  br i1 %39, label %40, label %47

40:                                               ; preds = %37
  %41 = load i32, i32* %4, align 4
  %42 = icmp ne i32 %41, 13
  br i1 %42, label %43, label %47

43:                                               ; preds = %40
  %44 = load i32, i32* %4, align 4
  %45 = icmp ne i32 %44, 10
  br i1 %45, label %46, label %47

46:                                               ; preds = %43
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %9, align 8
  br label %47

47:                                               ; preds = %46, %43, %40, %37
  %48 = load i32, i32* %4, align 4
  switch i32 %48, label %49 [
    i32 10, label %55
    i32 13, label %58
    i32 36, label %59
    i32 32, label %84
    i32 83, label %297
  ]

49:                                               ; preds = %47
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* %4, align 4
  %53 = load i64, i64* %6, align 8
  %54 = call i32 @srec_bad_byte(%struct.TYPE_14__* %50, i32 %51, i32 %52, i64 %53)
  br label %524

55:                                               ; preds = %47
  %56 = load i32, i32* %5, align 4
  %57 = add i32 %56, 1
  store i32 %57, i32* %5, align 4
  br label %511

58:                                               ; preds = %47
  br label %511

59:                                               ; preds = %47
  br label %60

60:                                               ; preds = %70, %59
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %62 = call i32 @srec_get_byte(%struct.TYPE_14__* %61, i64* %6)
  store i32 %62, i32* %4, align 4
  %63 = icmp ne i32 %62, 10
  br i1 %63, label %64, label %68

64:                                               ; preds = %60
  %65 = load i32, i32* %4, align 4
  %66 = load i32, i32* @EOF, align 4
  %67 = icmp ne i32 %65, %66
  br label %68

68:                                               ; preds = %64, %60
  %69 = phi i1 [ false, %60 ], [ %67, %64 ]
  br i1 %69, label %70, label %71

70:                                               ; preds = %68
  br label %60

71:                                               ; preds = %68
  %72 = load i32, i32* %4, align 4
  %73 = load i32, i32* @EOF, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %81

75:                                               ; preds = %71
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %77 = load i32, i32* %5, align 4
  %78 = load i32, i32* %4, align 4
  %79 = load i64, i64* %6, align 8
  %80 = call i32 @srec_bad_byte(%struct.TYPE_14__* %76, i32 %77, i32 %78, i64 %79)
  br label %524

81:                                               ; preds = %71
  %82 = load i32, i32* %5, align 4
  %83 = add i32 %82, 1
  store i32 %83, i32* %5, align 4
  br label %511

84:                                               ; preds = %47
  br label %85

85:                                               ; preds = %278, %84
  br label %86

86:                                               ; preds = %101, %85
  %87 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %88 = call i32 @srec_get_byte(%struct.TYPE_14__* %87, i64* %6)
  store i32 %88, i32* %4, align 4
  %89 = load i32, i32* @EOF, align 4
  %90 = icmp ne i32 %88, %89
  br i1 %90, label %91, label %99

91:                                               ; preds = %86
  %92 = load i32, i32* %4, align 4
  %93 = icmp eq i32 %92, 32
  br i1 %93, label %97, label %94

94:                                               ; preds = %91
  %95 = load i32, i32* %4, align 4
  %96 = icmp eq i32 %95, 9
  br label %97

97:                                               ; preds = %94, %91
  %98 = phi i1 [ true, %91 ], [ %96, %94 ]
  br label %99

99:                                               ; preds = %97, %86
  %100 = phi i1 [ false, %86 ], [ %98, %97 ]
  br i1 %100, label %101, label %102

101:                                              ; preds = %99
  br label %86

102:                                              ; preds = %99
  %103 = load i32, i32* %4, align 4
  %104 = icmp eq i32 %103, 10
  br i1 %104, label %108, label %105

105:                                              ; preds = %102
  %106 = load i32, i32* %4, align 4
  %107 = icmp eq i32 %106, 13
  br i1 %107, label %108, label %109

108:                                              ; preds = %105, %102
  br label %280

109:                                              ; preds = %105
  %110 = load i32, i32* %4, align 4
  %111 = load i32, i32* @EOF, align 4
  %112 = icmp eq i32 %110, %111
  br i1 %112, label %113, label %119

113:                                              ; preds = %109
  %114 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %115 = load i32, i32* %5, align 4
  %116 = load i32, i32* %4, align 4
  %117 = load i64, i64* %6, align 8
  %118 = call i32 @srec_bad_byte(%struct.TYPE_14__* %114, i32 %115, i32 %116, i64 %117)
  br label %524

119:                                              ; preds = %109
  store i32 10, i32* %11, align 4
  %120 = load i32, i32* %11, align 4
  %121 = add nsw i32 %120, 1
  %122 = call i8* @bfd_malloc(i32 %121)
  store i8* %122, i8** %10, align 8
  %123 = load i8*, i8** %10, align 8
  %124 = icmp eq i8* %123, null
  br i1 %124, label %125, label %126

125:                                              ; preds = %119
  br label %524

126:                                              ; preds = %119
  %127 = load i8*, i8** %10, align 8
  store i8* %127, i8** %12, align 8
  %128 = load i32, i32* %4, align 4
  %129 = trunc i32 %128 to i8
  %130 = load i8*, i8** %12, align 8
  %131 = getelementptr inbounds i8, i8* %130, i32 1
  store i8* %131, i8** %12, align 8
  store i8 %129, i8* %130, align 1
  br label %132

132:                                              ; preds = %172, %126
  %133 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %134 = call i32 @srec_get_byte(%struct.TYPE_14__* %133, i64* %6)
  store i32 %134, i32* %4, align 4
  %135 = load i32, i32* @EOF, align 4
  %136 = icmp ne i32 %134, %135
  br i1 %136, label %137, label %142

137:                                              ; preds = %132
  %138 = load i32, i32* %4, align 4
  %139 = call i32 @ISSPACE(i32 %138)
  %140 = icmp ne i32 %139, 0
  %141 = xor i1 %140, true
  br label %142

142:                                              ; preds = %137, %132
  %143 = phi i1 [ false, %132 ], [ %141, %137 ]
  br i1 %143, label %144, label %177

144:                                              ; preds = %142
  %145 = load i8*, i8** %12, align 8
  %146 = load i8*, i8** %10, align 8
  %147 = ptrtoint i8* %145 to i64
  %148 = ptrtoint i8* %146 to i64
  %149 = sub i64 %147, %148
  %150 = trunc i64 %149 to i32
  %151 = load i32, i32* %11, align 4
  %152 = icmp sge i32 %150, %151
  br i1 %152, label %153, label %172

153:                                              ; preds = %144
  %154 = load i32, i32* %11, align 4
  %155 = mul nsw i32 %154, 2
  store i32 %155, i32* %11, align 4
  %156 = load i8*, i8** %10, align 8
  %157 = load i32, i32* %11, align 4
  %158 = add nsw i32 %157, 1
  %159 = call i8* @bfd_realloc(i8* %156, i32 %158)
  store i8* %159, i8** %15, align 8
  %160 = load i8*, i8** %15, align 8
  %161 = icmp eq i8* %160, null
  br i1 %161, label %162, label %163

162:                                              ; preds = %153
  br label %524

163:                                              ; preds = %153
  %164 = load i8*, i8** %15, align 8
  %165 = load i8*, i8** %12, align 8
  %166 = load i8*, i8** %10, align 8
  %167 = ptrtoint i8* %165 to i64
  %168 = ptrtoint i8* %166 to i64
  %169 = sub i64 %167, %168
  %170 = getelementptr inbounds i8, i8* %164, i64 %169
  store i8* %170, i8** %12, align 8
  %171 = load i8*, i8** %15, align 8
  store i8* %171, i8** %10, align 8
  br label %172

172:                                              ; preds = %163, %144
  %173 = load i32, i32* %4, align 4
  %174 = trunc i32 %173 to i8
  %175 = load i8*, i8** %12, align 8
  %176 = getelementptr inbounds i8, i8* %175, i32 1
  store i8* %176, i8** %12, align 8
  store i8 %174, i8* %175, align 1
  br label %132

177:                                              ; preds = %142
  %178 = load i32, i32* %4, align 4
  %179 = load i32, i32* @EOF, align 4
  %180 = icmp eq i32 %178, %179
  br i1 %180, label %181, label %187

181:                                              ; preds = %177
  %182 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %183 = load i32, i32* %5, align 4
  %184 = load i32, i32* %4, align 4
  %185 = load i64, i64* %6, align 8
  %186 = call i32 @srec_bad_byte(%struct.TYPE_14__* %182, i32 %183, i32 %184, i64 %185)
  br label %524

187:                                              ; preds = %177
  %188 = load i8*, i8** %12, align 8
  %189 = getelementptr inbounds i8, i8* %188, i32 1
  store i8* %189, i8** %12, align 8
  store i8 0, i8* %188, align 1
  %190 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %191 = load i8*, i8** %12, align 8
  %192 = load i8*, i8** %10, align 8
  %193 = ptrtoint i8* %191 to i64
  %194 = ptrtoint i8* %192 to i64
  %195 = sub i64 %193, %194
  %196 = trunc i64 %195 to i32
  %197 = call i8* @bfd_alloc(%struct.TYPE_14__* %190, i32 %196)
  store i8* %197, i8** %13, align 8
  %198 = load i8*, i8** %13, align 8
  %199 = icmp eq i8* %198, null
  br i1 %199, label %200, label %201

200:                                              ; preds = %187
  br label %524

201:                                              ; preds = %187
  %202 = load i8*, i8** %13, align 8
  %203 = load i8*, i8** %10, align 8
  %204 = call i32 @strcpy(i8* %202, i8* %203)
  %205 = load i8*, i8** %10, align 8
  %206 = call i32 @free(i8* %205)
  store i8* null, i8** %10, align 8
  br label %207

207:                                              ; preds = %222, %201
  %208 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %209 = call i32 @srec_get_byte(%struct.TYPE_14__* %208, i64* %6)
  store i32 %209, i32* %4, align 4
  %210 = load i32, i32* @EOF, align 4
  %211 = icmp ne i32 %209, %210
  br i1 %211, label %212, label %220

212:                                              ; preds = %207
  %213 = load i32, i32* %4, align 4
  %214 = icmp eq i32 %213, 32
  br i1 %214, label %218, label %215

215:                                              ; preds = %212
  %216 = load i32, i32* %4, align 4
  %217 = icmp eq i32 %216, 9
  br label %218

218:                                              ; preds = %215, %212
  %219 = phi i1 [ true, %212 ], [ %217, %215 ]
  br label %220

220:                                              ; preds = %218, %207
  %221 = phi i1 [ false, %207 ], [ %219, %218 ]
  br i1 %221, label %222, label %223

222:                                              ; preds = %220
  br label %207

223:                                              ; preds = %220
  %224 = load i32, i32* %4, align 4
  %225 = load i32, i32* @EOF, align 4
  %226 = icmp eq i32 %224, %225
  br i1 %226, label %227, label %233

227:                                              ; preds = %223
  %228 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %229 = load i32, i32* %5, align 4
  %230 = load i32, i32* %4, align 4
  %231 = load i64, i64* %6, align 8
  %232 = call i32 @srec_bad_byte(%struct.TYPE_14__* %228, i32 %229, i32 %230, i64 %231)
  br label %524

233:                                              ; preds = %223
  %234 = load i32, i32* %4, align 4
  %235 = icmp eq i32 %234, 36
  br i1 %235, label %236, label %249

236:                                              ; preds = %233
  %237 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %238 = call i32 @srec_get_byte(%struct.TYPE_14__* %237, i64* %6)
  store i32 %238, i32* %4, align 4
  %239 = load i32, i32* %4, align 4
  %240 = load i32, i32* @EOF, align 4
  %241 = icmp eq i32 %239, %240
  br i1 %241, label %242, label %248

242:                                              ; preds = %236
  %243 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %244 = load i32, i32* %5, align 4
  %245 = load i32, i32* %4, align 4
  %246 = load i64, i64* %6, align 8
  %247 = call i32 @srec_bad_byte(%struct.TYPE_14__* %243, i32 %244, i32 %245, i64 %246)
  br label %524

248:                                              ; preds = %236
  br label %249

249:                                              ; preds = %248, %233
  store i32 0, i32* %14, align 4
  br label %250

250:                                              ; preds = %255, %249
  %251 = load i32, i32* %4, align 4
  %252 = trunc i32 %251 to i8
  %253 = call i32 @ISHEX(i8 signext %252)
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %255, label %264

255:                                              ; preds = %250
  %256 = load i32, i32* %14, align 4
  %257 = shl i32 %256, 4
  store i32 %257, i32* %14, align 4
  %258 = load i32, i32* %4, align 4
  %259 = call i32 @NIBBLE(i32 %258)
  %260 = load i32, i32* %14, align 4
  %261 = add nsw i32 %260, %259
  store i32 %261, i32* %14, align 4
  %262 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %263 = call i32 @srec_get_byte(%struct.TYPE_14__* %262, i64* %6)
  store i32 %263, i32* %4, align 4
  br label %250

264:                                              ; preds = %250
  %265 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %266 = load i8*, i8** %13, align 8
  %267 = load i32, i32* %14, align 4
  %268 = call i32 @srec_new_symbol(%struct.TYPE_14__* %265, i8* %266, i32 %267)
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %271, label %270

270:                                              ; preds = %264
  br label %524

271:                                              ; preds = %264
  br label %272

272:                                              ; preds = %271
  %273 = load i32, i32* %4, align 4
  %274 = icmp eq i32 %273, 32
  br i1 %274, label %278, label %275

275:                                              ; preds = %272
  %276 = load i32, i32* %4, align 4
  %277 = icmp eq i32 %276, 9
  br label %278

278:                                              ; preds = %275, %272
  %279 = phi i1 [ true, %272 ], [ %277, %275 ]
  br i1 %279, label %85, label %280

280:                                              ; preds = %278, %108
  %281 = load i32, i32* %4, align 4
  %282 = icmp eq i32 %281, 10
  br i1 %282, label %283, label %286

283:                                              ; preds = %280
  %284 = load i32, i32* %5, align 4
  %285 = add i32 %284, 1
  store i32 %285, i32* %5, align 4
  br label %296

286:                                              ; preds = %280
  %287 = load i32, i32* %4, align 4
  %288 = icmp ne i32 %287, 13
  br i1 %288, label %289, label %295

289:                                              ; preds = %286
  %290 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %291 = load i32, i32* %5, align 4
  %292 = load i32, i32* %4, align 4
  %293 = load i64, i64* %6, align 8
  %294 = call i32 @srec_bad_byte(%struct.TYPE_14__* %290, i32 %291, i32 %292, i64 %293)
  br label %524

295:                                              ; preds = %286
  br label %296

296:                                              ; preds = %295, %283
  br label %511

297:                                              ; preds = %47
  %298 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %299 = call i32 @bfd_tell(%struct.TYPE_14__* %298)
  %300 = sub nsw i32 %299, 1
  store i32 %300, i32* %16, align 4
  %301 = getelementptr inbounds [3 x i8], [3 x i8]* %17, i64 0, i64 0
  %302 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %303 = call i32 @bfd_bread(i8* %301, i32 3, %struct.TYPE_14__* %302)
  %304 = icmp ne i32 %303, 3
  br i1 %304, label %305, label %306

305:                                              ; preds = %297
  br label %524

306:                                              ; preds = %297
  %307 = getelementptr inbounds [3 x i8], [3 x i8]* %17, i64 0, i64 1
  %308 = load i8, i8* %307, align 1
  %309 = call i32 @ISHEX(i8 signext %308)
  %310 = icmp ne i32 %309, 0
  br i1 %310, label %311, label %316

311:                                              ; preds = %306
  %312 = getelementptr inbounds [3 x i8], [3 x i8]* %17, i64 0, i64 2
  %313 = load i8, i8* %312, align 1
  %314 = call i32 @ISHEX(i8 signext %313)
  %315 = icmp ne i32 %314, 0
  br i1 %315, label %335, label %316

316:                                              ; preds = %311, %306
  %317 = getelementptr inbounds [3 x i8], [3 x i8]* %17, i64 0, i64 1
  %318 = load i8, i8* %317, align 1
  %319 = call i32 @ISHEX(i8 signext %318)
  %320 = icmp ne i32 %319, 0
  br i1 %320, label %325, label %321

321:                                              ; preds = %316
  %322 = getelementptr inbounds [3 x i8], [3 x i8]* %17, i64 0, i64 1
  %323 = load i8, i8* %322, align 1
  %324 = sext i8 %323 to i32
  store i32 %324, i32* %4, align 4
  br label %329

325:                                              ; preds = %316
  %326 = getelementptr inbounds [3 x i8], [3 x i8]* %17, i64 0, i64 2
  %327 = load i8, i8* %326, align 1
  %328 = sext i8 %327 to i32
  store i32 %328, i32* %4, align 4
  br label %329

329:                                              ; preds = %325, %321
  %330 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %331 = load i32, i32* %5, align 4
  %332 = load i32, i32* %4, align 4
  %333 = load i64, i64* %6, align 8
  %334 = call i32 @srec_bad_byte(%struct.TYPE_14__* %330, i32 %331, i32 %332, i64 %333)
  br label %524

335:                                              ; preds = %311
  %336 = getelementptr inbounds [3 x i8], [3 x i8]* %17, i64 0, i64 0
  %337 = getelementptr inbounds i8, i8* %336, i64 1
  %338 = call i32 @HEX(i8* %337)
  store i32 %338, i32* %18, align 4
  %339 = load i32, i32* %18, align 4
  %340 = mul i32 %339, 2
  %341 = zext i32 %340 to i64
  %342 = load i64, i64* %8, align 8
  %343 = icmp ugt i64 %341, %342
  br i1 %343, label %344, label %361

344:                                              ; preds = %335
  %345 = load i8*, i8** %7, align 8
  %346 = icmp ne i8* %345, null
  br i1 %346, label %347, label %350

347:                                              ; preds = %344
  %348 = load i8*, i8** %7, align 8
  %349 = call i32 @free(i8* %348)
  br label %350

350:                                              ; preds = %347, %344
  %351 = load i32, i32* %18, align 4
  %352 = mul nsw i32 %351, 2
  %353 = call i8* @bfd_malloc(i32 %352)
  store i8* %353, i8** %7, align 8
  %354 = load i8*, i8** %7, align 8
  %355 = icmp eq i8* %354, null
  br i1 %355, label %356, label %357

356:                                              ; preds = %350
  br label %524

357:                                              ; preds = %350
  %358 = load i32, i32* %18, align 4
  %359 = mul i32 %358, 2
  %360 = zext i32 %359 to i64
  store i64 %360, i64* %8, align 8
  br label %361

361:                                              ; preds = %357, %335
  %362 = load i8*, i8** %7, align 8
  %363 = load i32, i32* %18, align 4
  %364 = mul nsw i32 %363, 2
  %365 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %366 = call i32 @bfd_bread(i8* %362, i32 %364, %struct.TYPE_14__* %365)
  %367 = load i32, i32* %18, align 4
  %368 = mul i32 %367, 2
  %369 = icmp ne i32 %366, %368
  br i1 %369, label %370, label %371

370:                                              ; preds = %361
  br label %524

371:                                              ; preds = %361
  %372 = load i32, i32* %18, align 4
  %373 = add i32 %372, -1
  store i32 %373, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %374 = load i8*, i8** %7, align 8
  store i8* %374, i8** %20, align 8
  %375 = getelementptr inbounds [3 x i8], [3 x i8]* %17, i64 0, i64 0
  %376 = load i8, i8* %375, align 1
  %377 = sext i8 %376 to i32
  switch i32 %377, label %510 [
    i32 48, label %378
    i32 53, label %378
    i32 51, label %379
    i32 50, label %386
    i32 49, label %396
    i32 55, label %472
    i32 56, label %477
    i32 57, label %485
  ]

378:                                              ; preds = %371, %371
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %9, align 8
  br label %510

379:                                              ; preds = %371
  %380 = load i8*, i8** %20, align 8
  %381 = call i32 @HEX(i8* %380)
  store i32 %381, i32* %19, align 4
  %382 = load i8*, i8** %20, align 8
  %383 = getelementptr inbounds i8, i8* %382, i64 2
  store i8* %383, i8** %20, align 8
  %384 = load i32, i32* %18, align 4
  %385 = add i32 %384, -1
  store i32 %385, i32* %18, align 4
  br label %386

386:                                              ; preds = %371, %379
  %387 = load i32, i32* %19, align 4
  %388 = shl i32 %387, 8
  %389 = load i8*, i8** %20, align 8
  %390 = call i32 @HEX(i8* %389)
  %391 = or i32 %388, %390
  store i32 %391, i32* %19, align 4
  %392 = load i8*, i8** %20, align 8
  %393 = getelementptr inbounds i8, i8* %392, i64 2
  store i8* %393, i8** %20, align 8
  %394 = load i32, i32* %18, align 4
  %395 = add i32 %394, -1
  store i32 %395, i32* %18, align 4
  br label %396

396:                                              ; preds = %371, %386
  %397 = load i32, i32* %19, align 4
  %398 = shl i32 %397, 8
  %399 = load i8*, i8** %20, align 8
  %400 = call i32 @HEX(i8* %399)
  %401 = or i32 %398, %400
  store i32 %401, i32* %19, align 4
  %402 = load i8*, i8** %20, align 8
  %403 = getelementptr inbounds i8, i8* %402, i64 2
  store i8* %403, i8** %20, align 8
  %404 = load i32, i32* %19, align 4
  %405 = shl i32 %404, 8
  %406 = load i8*, i8** %20, align 8
  %407 = call i32 @HEX(i8* %406)
  %408 = or i32 %405, %407
  store i32 %408, i32* %19, align 4
  %409 = load i8*, i8** %20, align 8
  %410 = getelementptr inbounds i8, i8* %409, i64 2
  store i8* %410, i8** %20, align 8
  %411 = load i32, i32* %18, align 4
  %412 = sub i32 %411, 2
  store i32 %412, i32* %18, align 4
  %413 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %414 = icmp ne %struct.TYPE_15__* %413, null
  br i1 %414, label %415, label %431

415:                                              ; preds = %396
  %416 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %417 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %416, i32 0, i32 0
  %418 = load i32, i32* %417, align 4
  %419 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %420 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %419, i32 0, i32 1
  %421 = load i32, i32* %420, align 4
  %422 = add nsw i32 %418, %421
  %423 = load i32, i32* %19, align 4
  %424 = icmp eq i32 %422, %423
  br i1 %424, label %425, label %431

425:                                              ; preds = %415
  %426 = load i32, i32* %18, align 4
  %427 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %428 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %427, i32 0, i32 1
  %429 = load i32, i32* %428, align 4
  %430 = add i32 %429, %426
  store i32 %430, i32* %428, align 4
  br label %471

431:                                              ; preds = %415, %396
  %432 = getelementptr inbounds [20 x i8], [20 x i8]* %21, i64 0, i64 0
  %433 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %434 = call i32 @bfd_count_sections(%struct.TYPE_14__* %433)
  %435 = add nsw i32 %434, 1
  %436 = call i32 @sprintf(i8* %432, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %435)
  %437 = getelementptr inbounds [20 x i8], [20 x i8]* %21, i64 0, i64 0
  %438 = call i32 @strlen(i8* %437)
  %439 = add nsw i32 %438, 1
  store i32 %439, i32* %23, align 4
  %440 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %441 = load i32, i32* %23, align 4
  %442 = call i8* @bfd_alloc(%struct.TYPE_14__* %440, i32 %441)
  store i8* %442, i8** %22, align 8
  %443 = load i8*, i8** %22, align 8
  %444 = getelementptr inbounds [20 x i8], [20 x i8]* %21, i64 0, i64 0
  %445 = call i32 @strcpy(i8* %443, i8* %444)
  %446 = load i32, i32* @SEC_HAS_CONTENTS, align 4
  %447 = load i32, i32* @SEC_LOAD, align 4
  %448 = or i32 %446, %447
  %449 = load i32, i32* @SEC_ALLOC, align 4
  %450 = or i32 %448, %449
  store i32 %450, i32* %24, align 4
  %451 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %452 = load i8*, i8** %22, align 8
  %453 = load i32, i32* %24, align 4
  %454 = call %struct.TYPE_15__* @bfd_make_section_with_flags(%struct.TYPE_14__* %451, i8* %452, i32 %453)
  store %struct.TYPE_15__* %454, %struct.TYPE_15__** %9, align 8
  %455 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %456 = icmp eq %struct.TYPE_15__* %455, null
  br i1 %456, label %457, label %458

457:                                              ; preds = %431
  br label %524

458:                                              ; preds = %431
  %459 = load i32, i32* %19, align 4
  %460 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %461 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %460, i32 0, i32 0
  store i32 %459, i32* %461, align 4
  %462 = load i32, i32* %19, align 4
  %463 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %464 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %463, i32 0, i32 2
  store i32 %462, i32* %464, align 4
  %465 = load i32, i32* %18, align 4
  %466 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %467 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %466, i32 0, i32 1
  store i32 %465, i32* %467, align 4
  %468 = load i32, i32* %16, align 4
  %469 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %470 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %469, i32 0, i32 3
  store i32 %468, i32* %470, align 4
  br label %471

471:                                              ; preds = %458, %425
  br label %510

472:                                              ; preds = %371
  %473 = load i8*, i8** %20, align 8
  %474 = call i32 @HEX(i8* %473)
  store i32 %474, i32* %19, align 4
  %475 = load i8*, i8** %20, align 8
  %476 = getelementptr inbounds i8, i8* %475, i64 2
  store i8* %476, i8** %20, align 8
  br label %477

477:                                              ; preds = %371, %472
  %478 = load i32, i32* %19, align 4
  %479 = shl i32 %478, 8
  %480 = load i8*, i8** %20, align 8
  %481 = call i32 @HEX(i8* %480)
  %482 = or i32 %479, %481
  store i32 %482, i32* %19, align 4
  %483 = load i8*, i8** %20, align 8
  %484 = getelementptr inbounds i8, i8* %483, i64 2
  store i8* %484, i8** %20, align 8
  br label %485

485:                                              ; preds = %371, %477
  %486 = load i32, i32* %19, align 4
  %487 = shl i32 %486, 8
  %488 = load i8*, i8** %20, align 8
  %489 = call i32 @HEX(i8* %488)
  %490 = or i32 %487, %489
  store i32 %490, i32* %19, align 4
  %491 = load i8*, i8** %20, align 8
  %492 = getelementptr inbounds i8, i8* %491, i64 2
  store i8* %492, i8** %20, align 8
  %493 = load i32, i32* %19, align 4
  %494 = shl i32 %493, 8
  %495 = load i8*, i8** %20, align 8
  %496 = call i32 @HEX(i8* %495)
  %497 = or i32 %494, %496
  store i32 %497, i32* %19, align 4
  %498 = load i8*, i8** %20, align 8
  %499 = getelementptr inbounds i8, i8* %498, i64 2
  store i8* %499, i8** %20, align 8
  %500 = load i32, i32* %19, align 4
  %501 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %502 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %501, i32 0, i32 0
  store i32 %500, i32* %502, align 4
  %503 = load i8*, i8** %7, align 8
  %504 = icmp ne i8* %503, null
  br i1 %504, label %505, label %508

505:                                              ; preds = %485
  %506 = load i8*, i8** %7, align 8
  %507 = call i32 @free(i8* %506)
  br label %508

508:                                              ; preds = %505, %485
  %509 = load i64, i64* @TRUE, align 8
  store i64 %509, i64* %2, align 8
  br label %538

510:                                              ; preds = %371, %471, %378
  br label %511

511:                                              ; preds = %510, %296, %81, %58, %55
  br label %32

512:                                              ; preds = %32
  %513 = load i64, i64* %6, align 8
  %514 = icmp ne i64 %513, 0
  br i1 %514, label %515, label %516

515:                                              ; preds = %512
  br label %524

516:                                              ; preds = %512
  %517 = load i8*, i8** %7, align 8
  %518 = icmp ne i8* %517, null
  br i1 %518, label %519, label %522

519:                                              ; preds = %516
  %520 = load i8*, i8** %7, align 8
  %521 = call i32 @free(i8* %520)
  br label %522

522:                                              ; preds = %519, %516
  %523 = load i64, i64* @TRUE, align 8
  store i64 %523, i64* %2, align 8
  br label %538

524:                                              ; preds = %515, %457, %370, %356, %329, %305, %289, %270, %242, %227, %200, %181, %162, %125, %113, %75, %49, %30
  %525 = load i8*, i8** %10, align 8
  %526 = icmp ne i8* %525, null
  br i1 %526, label %527, label %530

527:                                              ; preds = %524
  %528 = load i8*, i8** %10, align 8
  %529 = call i32 @free(i8* %528)
  br label %530

530:                                              ; preds = %527, %524
  %531 = load i8*, i8** %7, align 8
  %532 = icmp ne i8* %531, null
  br i1 %532, label %533, label %536

533:                                              ; preds = %530
  %534 = load i8*, i8** %7, align 8
  %535 = call i32 @free(i8* %534)
  br label %536

536:                                              ; preds = %533, %530
  %537 = load i64, i64* @FALSE, align 8
  store i64 %537, i64* %2, align 8
  br label %538

538:                                              ; preds = %536, %522, %508
  %539 = load i64, i64* %2, align 8
  ret i64 %539
}

declare dso_local i64 @bfd_seek(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i32 @srec_get_byte(%struct.TYPE_14__*, i64*) #1

declare dso_local i32 @srec_bad_byte(%struct.TYPE_14__*, i32, i32, i64) #1

declare dso_local i8* @bfd_malloc(i32) #1

declare dso_local i32 @ISSPACE(i32) #1

declare dso_local i8* @bfd_realloc(i8*, i32) #1

declare dso_local i8* @bfd_alloc(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @ISHEX(i8 signext) #1

declare dso_local i32 @NIBBLE(i32) #1

declare dso_local i32 @srec_new_symbol(%struct.TYPE_14__*, i8*, i32) #1

declare dso_local i32 @bfd_tell(%struct.TYPE_14__*) #1

declare dso_local i32 @bfd_bread(i8*, i32, %struct.TYPE_14__*) #1

declare dso_local i32 @HEX(i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @bfd_count_sections(%struct.TYPE_14__*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local %struct.TYPE_15__* @bfd_make_section_with_flags(%struct.TYPE_14__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
