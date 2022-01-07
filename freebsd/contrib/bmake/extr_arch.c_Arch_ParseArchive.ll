; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bmake/extr_arch.c_Arch_ParseArchive.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bmake/extr_arch.c_Arch_ParseArchive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }

@FALSE = common dso_local global i64 0, align 8
@VARF_UNDEFERR = common dso_local global i32 0, align 4
@VARF_WANTRES = common dso_local global i32 0, align 4
@var_Error = common dso_local global i8* null, align 8
@FAILURE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [49 x i8] c"No closing parenthesis in archive specification\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%s(%s)\00", align 1
@TARG_CREATE = common dso_local global i32 0, align 4
@OP_ARCHV = common dso_local global i32 0, align 4
@SUCCESS = common dso_local global i64 0, align 8
@MAXPATHLEN = common dso_local global i64 0, align 8
@dirSearchPath = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @Arch_ParseArchive(i8** %0, i32 %1, %struct.TYPE_7__* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8, align 1
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i64, align 8
  %26 = alloca i32, align 4
  %27 = alloca i8*, align 8
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = alloca i64, align 8
  store i8** %0, i8*** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %7, align 8
  %31 = load i8**, i8*** %5, align 8
  %32 = load i8*, i8** %31, align 8
  store i8* %32, i8** %10, align 8
  %33 = load i64, i64* @FALSE, align 8
  store i64 %33, i64* %14, align 8
  %34 = load i8*, i8** %10, align 8
  store i8* %34, i8** %8, align 8
  br label %35

35:                                               ; preds = %75, %3
  %36 = load i8*, i8** %8, align 8
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp ne i32 %38, 40
  br i1 %39, label %40, label %45

40:                                               ; preds = %35
  %41 = load i8*, i8** %8, align 8
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp ne i32 %43, 0
  br label %45

45:                                               ; preds = %40, %35
  %46 = phi i1 [ false, %35 ], [ %44, %40 ]
  br i1 %46, label %47, label %78

47:                                               ; preds = %45
  %48 = load i8*, i8** %8, align 8
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp eq i32 %50, 36
  br i1 %51, label %52, label %74

52:                                               ; preds = %47
  %53 = load i8*, i8** %8, align 8
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %55 = load i32, i32* @VARF_UNDEFERR, align 4
  %56 = load i32, i32* @VARF_WANTRES, align 4
  %57 = or i32 %55, %56
  %58 = call i8* @Var_Parse(i8* %53, %struct.TYPE_7__* %54, i32 %57, i32* %15, i8** %16)
  store i8* %58, i8** %17, align 8
  %59 = load i8*, i8** %16, align 8
  %60 = call i32 @free(i8* %59)
  %61 = load i8*, i8** %17, align 8
  %62 = load i8*, i8** @var_Error, align 8
  %63 = icmp eq i8* %61, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %52
  %65 = load i64, i64* @FAILURE, align 8
  store i64 %65, i64* %4, align 8
  br label %386

66:                                               ; preds = %52
  %67 = load i64, i64* @TRUE, align 8
  store i64 %67, i64* %14, align 8
  br label %68

68:                                               ; preds = %66
  %69 = load i32, i32* %15, align 4
  %70 = sub nsw i32 %69, 1
  %71 = load i8*, i8** %8, align 8
  %72 = sext i32 %70 to i64
  %73 = getelementptr inbounds i8, i8* %71, i64 %72
  store i8* %73, i8** %8, align 8
  br label %74

74:                                               ; preds = %68, %47
  br label %75

75:                                               ; preds = %74
  %76 = load i8*, i8** %8, align 8
  %77 = getelementptr inbounds i8, i8* %76, i32 1
  store i8* %77, i8** %8, align 8
  br label %35

78:                                               ; preds = %45
  %79 = load i8*, i8** %8, align 8
  %80 = getelementptr inbounds i8, i8* %79, i32 1
  store i8* %80, i8** %8, align 8
  store i8 0, i8* %79, align 1
  %81 = load i64, i64* %14, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %90

83:                                               ; preds = %78
  %84 = load i8*, i8** %10, align 8
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %86 = load i32, i32* @VARF_UNDEFERR, align 4
  %87 = load i32, i32* @VARF_WANTRES, align 4
  %88 = or i32 %86, %87
  %89 = call i8* @Var_Subst(i32* null, i8* %84, %struct.TYPE_7__* %85, i32 %88)
  store i8* %89, i8** %10, align 8
  br label %90

90:                                               ; preds = %83, %78
  br label %91

91:                                               ; preds = %357, %90
  %92 = load i64, i64* @FALSE, align 8
  store i64 %92, i64* %18, align 8
  br label %93

93:                                               ; preds = %110, %91
  %94 = load i8*, i8** %8, align 8
  %95 = load i8, i8* %94, align 1
  %96 = sext i8 %95 to i32
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %108

98:                                               ; preds = %93
  %99 = load i8*, i8** %8, align 8
  %100 = load i8, i8* %99, align 1
  %101 = sext i8 %100 to i32
  %102 = icmp ne i32 %101, 41
  br i1 %102, label %103, label %108

103:                                              ; preds = %98
  %104 = load i8*, i8** %8, align 8
  %105 = load i8, i8* %104, align 1
  %106 = call i64 @isspace(i8 zeroext %105)
  %107 = icmp ne i64 %106, 0
  br label %108

108:                                              ; preds = %103, %98, %93
  %109 = phi i1 [ false, %98 ], [ false, %93 ], [ %107, %103 ]
  br i1 %109, label %110, label %113

110:                                              ; preds = %108
  %111 = load i8*, i8** %8, align 8
  %112 = getelementptr inbounds i8, i8* %111, i32 1
  store i8* %112, i8** %8, align 8
  br label %93

113:                                              ; preds = %108
  %114 = load i8*, i8** %8, align 8
  store i8* %114, i8** %11, align 8
  br label %115

115:                                              ; preds = %162, %113
  %116 = load i8*, i8** %8, align 8
  %117 = load i8, i8* %116, align 1
  %118 = sext i8 %117 to i32
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %131

120:                                              ; preds = %115
  %121 = load i8*, i8** %8, align 8
  %122 = load i8, i8* %121, align 1
  %123 = sext i8 %122 to i32
  %124 = icmp ne i32 %123, 41
  br i1 %124, label %125, label %131

125:                                              ; preds = %120
  %126 = load i8*, i8** %8, align 8
  %127 = load i8, i8* %126, align 1
  %128 = call i64 @isspace(i8 zeroext %127)
  %129 = icmp ne i64 %128, 0
  %130 = xor i1 %129, true
  br label %131

131:                                              ; preds = %125, %120, %115
  %132 = phi i1 [ false, %120 ], [ false, %115 ], [ %130, %125 ]
  br i1 %132, label %133, label %163

133:                                              ; preds = %131
  %134 = load i8*, i8** %8, align 8
  %135 = load i8, i8* %134, align 1
  %136 = sext i8 %135 to i32
  %137 = icmp eq i32 %136, 36
  br i1 %137, label %138, label %159

138:                                              ; preds = %133
  %139 = load i8*, i8** %8, align 8
  %140 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %141 = load i32, i32* @VARF_UNDEFERR, align 4
  %142 = load i32, i32* @VARF_WANTRES, align 4
  %143 = or i32 %141, %142
  %144 = call i8* @Var_Parse(i8* %139, %struct.TYPE_7__* %140, i32 %143, i32* %19, i8** %20)
  store i8* %144, i8** %21, align 8
  %145 = load i8*, i8** %20, align 8
  %146 = call i32 @free(i8* %145)
  %147 = load i8*, i8** %21, align 8
  %148 = load i8*, i8** @var_Error, align 8
  %149 = icmp eq i8* %147, %148
  br i1 %149, label %150, label %152

150:                                              ; preds = %138
  %151 = load i64, i64* @FAILURE, align 8
  store i64 %151, i64* %4, align 8
  br label %386

152:                                              ; preds = %138
  %153 = load i64, i64* @TRUE, align 8
  store i64 %153, i64* %18, align 8
  br label %154

154:                                              ; preds = %152
  %155 = load i32, i32* %19, align 4
  %156 = load i8*, i8** %8, align 8
  %157 = sext i32 %155 to i64
  %158 = getelementptr inbounds i8, i8* %156, i64 %157
  store i8* %158, i8** %8, align 8
  br label %162

159:                                              ; preds = %133
  %160 = load i8*, i8** %8, align 8
  %161 = getelementptr inbounds i8, i8* %160, i32 1
  store i8* %161, i8** %8, align 8
  br label %162

162:                                              ; preds = %159, %154
  br label %115

163:                                              ; preds = %131
  %164 = load i8*, i8** %8, align 8
  %165 = load i8, i8* %164, align 1
  %166 = sext i8 %165 to i32
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %168, label %171

168:                                              ; preds = %163
  %169 = call i32 @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %170 = load i64, i64* @FAILURE, align 8
  store i64 %170, i64* %4, align 8
  br label %386

171:                                              ; preds = %163
  %172 = load i8*, i8** %8, align 8
  %173 = load i8*, i8** %11, align 8
  %174 = icmp eq i8* %172, %173
  br i1 %174, label %175, label %176

175:                                              ; preds = %171
  br label %360

176:                                              ; preds = %171
  %177 = load i8*, i8** %8, align 8
  %178 = load i8, i8* %177, align 1
  store i8 %178, i8* %13, align 1
  %179 = load i8*, i8** %8, align 8
  store i8 0, i8* %179, align 1
  %180 = load i64, i64* %18, align 8
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %246

182:                                              ; preds = %176
  %183 = load i8*, i8** %11, align 8
  store i8* %183, i8** %24, align 8
  %184 = load i8*, i8** %11, align 8
  %185 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %186 = load i32, i32* @VARF_UNDEFERR, align 4
  %187 = load i32, i32* @VARF_WANTRES, align 4
  %188 = or i32 %186, %187
  %189 = call i8* @Var_Subst(i32* null, i8* %184, %struct.TYPE_7__* %185, i32 %188)
  store i8* %189, i8** %11, align 8
  %190 = load i8*, i8** %11, align 8
  %191 = call i32 @strlen(i8* %190)
  %192 = load i8*, i8** %10, align 8
  %193 = call i32 @strlen(i8* %192)
  %194 = add nsw i32 %191, %193
  %195 = add nsw i32 %194, 3
  %196 = sext i32 %195 to i64
  store i64 %196, i64* %25, align 8
  %197 = load i64, i64* %25, align 8
  %198 = call i8* @bmake_malloc(i64 %197)
  store i8* %198, i8** %23, align 8
  store i8* %198, i8** %22, align 8
  %199 = load i8*, i8** %22, align 8
  %200 = load i64, i64* %25, align 8
  %201 = load i8*, i8** %10, align 8
  %202 = load i8*, i8** %11, align 8
  %203 = call i32 @snprintf(i8* %199, i64 %200, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %201, i8* %202)
  %204 = load i8*, i8** %11, align 8
  %205 = call i64 @strchr(i8* %204, i8 signext 36)
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %207, label %232

207:                                              ; preds = %182
  %208 = load i8*, i8** %11, align 8
  %209 = load i8*, i8** %24, align 8
  %210 = call i64 @strcmp(i8* %208, i8* %209)
  %211 = icmp eq i64 %210, 0
  br i1 %211, label %212, label %232

212:                                              ; preds = %207
  %213 = load i8*, i8** %22, align 8
  %214 = load i32, i32* @TARG_CREATE, align 4
  %215 = call %struct.TYPE_7__* @Targ_FindNode(i8* %213, i32 %214)
  store %struct.TYPE_7__* %215, %struct.TYPE_7__** %9, align 8
  %216 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %217 = icmp eq %struct.TYPE_7__* %216, null
  br i1 %217, label %218, label %222

218:                                              ; preds = %212
  %219 = load i8*, i8** %22, align 8
  %220 = call i32 @free(i8* %219)
  %221 = load i64, i64* @FAILURE, align 8
  store i64 %221, i64* %4, align 8
  br label %386

222:                                              ; preds = %212
  %223 = load i32, i32* @OP_ARCHV, align 4
  %224 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %225 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 4
  %227 = or i32 %226, %223
  store i32 %227, i32* %225, align 4
  %228 = load i32, i32* %6, align 4
  %229 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %230 = call i32 @Lst_AtEnd(i32 %228, %struct.TYPE_7__* %229)
  br label %231

231:                                              ; preds = %222
  br label %243

232:                                              ; preds = %207, %182
  %233 = load i32, i32* %6, align 4
  %234 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %235 = call i64 @Arch_ParseArchive(i8** %23, i32 %233, %struct.TYPE_7__* %234)
  %236 = load i64, i64* @SUCCESS, align 8
  %237 = icmp ne i64 %235, %236
  br i1 %237, label %238, label %242

238:                                              ; preds = %232
  %239 = load i8*, i8** %22, align 8
  %240 = call i32 @free(i8* %239)
  %241 = load i64, i64* @FAILURE, align 8
  store i64 %241, i64* %4, align 8
  br label %386

242:                                              ; preds = %232
  br label %243

243:                                              ; preds = %242, %231
  %244 = load i8*, i8** %22, align 8
  %245 = call i32 @free(i8* %244)
  br label %351

246:                                              ; preds = %176
  %247 = load i8*, i8** %11, align 8
  %248 = call i64 @Dir_HasWildcards(i8* %247)
  %249 = icmp ne i64 %248, 0
  br i1 %249, label %250, label %316

250:                                              ; preds = %246
  %251 = load i64, i64* @FALSE, align 8
  %252 = call i32 @Lst_Init(i64 %251)
  store i32 %252, i32* %26, align 4
  %253 = load i64, i64* @MAXPATHLEN, align 8
  store i64 %253, i64* %28, align 8
  %254 = load i64, i64* %28, align 8
  %255 = call i8* @bmake_malloc(i64 %254)
  store i8* %255, i8** %12, align 8
  %256 = load i8*, i8** %11, align 8
  %257 = load i32, i32* @dirSearchPath, align 4
  %258 = load i32, i32* %26, align 4
  %259 = call i32 @Dir_Expand(i8* %256, i32 %257, i32 %258)
  br label %260

260:                                              ; preds = %310, %250
  %261 = load i32, i32* %26, align 4
  %262 = call i32 @Lst_IsEmpty(i32 %261)
  %263 = icmp ne i32 %262, 0
  %264 = xor i1 %263, true
  br i1 %264, label %265, label %311

265:                                              ; preds = %260
  %266 = load i32, i32* %26, align 4
  %267 = call i64 @Lst_DeQueue(i32 %266)
  %268 = inttoptr i64 %267 to i8*
  store i8* %268, i8** %27, align 8
  %269 = load i8*, i8** %10, align 8
  %270 = call i32 @strlen(i8* %269)
  %271 = load i8*, i8** %27, align 8
  %272 = call i32 @strlen(i8* %271)
  %273 = add nsw i32 %270, %272
  %274 = add nsw i32 %273, 3
  %275 = sext i32 %274 to i64
  store i64 %275, i64* %29, align 8
  %276 = load i64, i64* %28, align 8
  %277 = load i64, i64* %29, align 8
  %278 = icmp ugt i64 %276, %277
  br i1 %278, label %279, label %284

279:                                              ; preds = %265
  %280 = load i8*, i8** %12, align 8
  %281 = load i64, i64* %29, align 8
  %282 = mul i64 %281, 2
  store i64 %282, i64* %28, align 8
  %283 = call i8* @bmake_realloc(i8* %280, i64 %282)
  store i8* %283, i8** %12, align 8
  br label %284

284:                                              ; preds = %279, %265
  %285 = load i8*, i8** %12, align 8
  %286 = load i64, i64* %28, align 8
  %287 = load i8*, i8** %10, align 8
  %288 = load i8*, i8** %27, align 8
  %289 = call i32 @snprintf(i8* %285, i64 %286, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %287, i8* %288)
  %290 = load i8*, i8** %27, align 8
  %291 = call i32 @free(i8* %290)
  %292 = load i8*, i8** %12, align 8
  %293 = load i32, i32* @TARG_CREATE, align 4
  %294 = call %struct.TYPE_7__* @Targ_FindNode(i8* %292, i32 %293)
  store %struct.TYPE_7__* %294, %struct.TYPE_7__** %9, align 8
  %295 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %296 = icmp eq %struct.TYPE_7__* %295, null
  br i1 %296, label %297, label %301

297:                                              ; preds = %284
  %298 = load i8*, i8** %12, align 8
  %299 = call i32 @free(i8* %298)
  %300 = load i64, i64* @FAILURE, align 8
  store i64 %300, i64* %4, align 8
  br label %386

301:                                              ; preds = %284
  %302 = load i32, i32* @OP_ARCHV, align 4
  %303 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %304 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %303, i32 0, i32 0
  %305 = load i32, i32* %304, align 4
  %306 = or i32 %305, %302
  store i32 %306, i32* %304, align 4
  %307 = load i32, i32* %6, align 4
  %308 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %309 = call i32 @Lst_AtEnd(i32 %307, %struct.TYPE_7__* %308)
  br label %310

310:                                              ; preds = %301
  br label %260

311:                                              ; preds = %260
  %312 = load i32, i32* %26, align 4
  %313 = call i32 @Lst_Destroy(i32 %312, i32* null)
  %314 = load i8*, i8** %12, align 8
  %315 = call i32 @free(i8* %314)
  br label %350

316:                                              ; preds = %246
  %317 = load i8*, i8** %10, align 8
  %318 = call i32 @strlen(i8* %317)
  %319 = load i8*, i8** %11, align 8
  %320 = call i32 @strlen(i8* %319)
  %321 = add nsw i32 %318, %320
  %322 = add nsw i32 %321, 3
  %323 = sext i32 %322 to i64
  store i64 %323, i64* %30, align 8
  %324 = load i64, i64* %30, align 8
  %325 = call i8* @bmake_malloc(i64 %324)
  store i8* %325, i8** %12, align 8
  %326 = load i8*, i8** %12, align 8
  %327 = load i64, i64* %30, align 8
  %328 = load i8*, i8** %10, align 8
  %329 = load i8*, i8** %11, align 8
  %330 = call i32 @snprintf(i8* %326, i64 %327, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %328, i8* %329)
  %331 = load i8*, i8** %12, align 8
  %332 = load i32, i32* @TARG_CREATE, align 4
  %333 = call %struct.TYPE_7__* @Targ_FindNode(i8* %331, i32 %332)
  store %struct.TYPE_7__* %333, %struct.TYPE_7__** %9, align 8
  %334 = load i8*, i8** %12, align 8
  %335 = call i32 @free(i8* %334)
  %336 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %337 = icmp eq %struct.TYPE_7__* %336, null
  br i1 %337, label %338, label %340

338:                                              ; preds = %316
  %339 = load i64, i64* @FAILURE, align 8
  store i64 %339, i64* %4, align 8
  br label %386

340:                                              ; preds = %316
  %341 = load i32, i32* @OP_ARCHV, align 4
  %342 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %343 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %342, i32 0, i32 0
  %344 = load i32, i32* %343, align 4
  %345 = or i32 %344, %341
  store i32 %345, i32* %343, align 4
  %346 = load i32, i32* %6, align 4
  %347 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %348 = call i32 @Lst_AtEnd(i32 %346, %struct.TYPE_7__* %347)
  br label %349

349:                                              ; preds = %340
  br label %350

350:                                              ; preds = %349, %311
  br label %351

351:                                              ; preds = %350, %243
  %352 = load i64, i64* %18, align 8
  %353 = icmp ne i64 %352, 0
  br i1 %353, label %354, label %357

354:                                              ; preds = %351
  %355 = load i8*, i8** %11, align 8
  %356 = call i32 @free(i8* %355)
  br label %357

357:                                              ; preds = %354, %351
  %358 = load i8, i8* %13, align 1
  %359 = load i8*, i8** %8, align 8
  store i8 %358, i8* %359, align 1
  br label %91

360:                                              ; preds = %175
  %361 = load i64, i64* %14, align 8
  %362 = icmp ne i64 %361, 0
  br i1 %362, label %363, label %366

363:                                              ; preds = %360
  %364 = load i8*, i8** %10, align 8
  %365 = call i32 @free(i8* %364)
  br label %366

366:                                              ; preds = %363, %360
  br label %367

367:                                              ; preds = %380, %366
  %368 = load i8*, i8** %8, align 8
  %369 = getelementptr inbounds i8, i8* %368, i32 1
  store i8* %369, i8** %8, align 8
  br label %370

370:                                              ; preds = %367
  %371 = load i8*, i8** %8, align 8
  %372 = load i8, i8* %371, align 1
  %373 = sext i8 %372 to i32
  %374 = icmp ne i32 %373, 0
  br i1 %374, label %375, label %380

375:                                              ; preds = %370
  %376 = load i8*, i8** %8, align 8
  %377 = load i8, i8* %376, align 1
  %378 = call i64 @isspace(i8 zeroext %377)
  %379 = icmp ne i64 %378, 0
  br label %380

380:                                              ; preds = %375, %370
  %381 = phi i1 [ false, %370 ], [ %379, %375 ]
  br i1 %381, label %367, label %382

382:                                              ; preds = %380
  %383 = load i8*, i8** %8, align 8
  %384 = load i8**, i8*** %5, align 8
  store i8* %383, i8** %384, align 8
  %385 = load i64, i64* @SUCCESS, align 8
  store i64 %385, i64* %4, align 8
  br label %386

386:                                              ; preds = %382, %338, %297, %238, %218, %168, %150, %64
  %387 = load i64, i64* %4, align 8
  ret i64 %387
}

declare dso_local i8* @Var_Parse(i8*, %struct.TYPE_7__*, i32, i32*, i8**) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @Var_Subst(i32*, i8*, %struct.TYPE_7__*, i32) #1

declare dso_local i64 @isspace(i8 zeroext) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @bmake_malloc(i64) #1

declare dso_local i32 @snprintf(i8*, i64, i8*, i8*, i8*) #1

declare dso_local i64 @strchr(i8*, i8 signext) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local %struct.TYPE_7__* @Targ_FindNode(i8*, i32) #1

declare dso_local i32 @Lst_AtEnd(i32, %struct.TYPE_7__*) #1

declare dso_local i64 @Dir_HasWildcards(i8*) #1

declare dso_local i32 @Lst_Init(i64) #1

declare dso_local i32 @Dir_Expand(i8*, i32, i32) #1

declare dso_local i32 @Lst_IsEmpty(i32) #1

declare dso_local i64 @Lst_DeQueue(i32) #1

declare dso_local i8* @bmake_realloc(i8*, i64) #1

declare dso_local i32 @Lst_Destroy(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
