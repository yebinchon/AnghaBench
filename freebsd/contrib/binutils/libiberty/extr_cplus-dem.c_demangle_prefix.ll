; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/libiberty/extr_cplus-dem.c_demangle_prefix.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/libiberty/extr_cplus-dem.c_demangle_prefix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.work_stuff = type { i32, i32, i32, i64 }

@.str = private unnamed_addr constant [7 x i8] c"_imp__\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"__imp_\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"_GLOBAL_\00", align 1
@cplus_markers = common dso_local global i8* null, align 8
@ARM_DEMANGLING = common dso_local global i64 0, align 8
@HP_DEMANGLING = common dso_local global i64 0, align 8
@EDG_DEMANGLING = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [8 x i8] c"__std__\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"__sti__\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"_\00", align 1
@LUCID_DEMANGLING = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [3 x i8] c"__\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.work_stuff*, i8**, i32*)* @demangle_prefix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @demangle_prefix(%struct.work_stuff* %0, i8** %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.work_stuff*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store %struct.work_stuff* %0, %struct.work_stuff** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 1, i32* %8, align 4
  %12 = load i8**, i8*** %6, align 8
  %13 = load i8*, i8** %12, align 8
  %14 = call i32 @strlen(i8* %13)
  %15 = icmp sgt i32 %14, 6
  br i1 %15, label %16, label %32

16:                                               ; preds = %3
  %17 = load i8**, i8*** %6, align 8
  %18 = load i8*, i8** %17, align 8
  %19 = call i64 @strncmp(i8* %18, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 6)
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %16
  %22 = load i8**, i8*** %6, align 8
  %23 = load i8*, i8** %22, align 8
  %24 = call i64 @strncmp(i8* %23, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 6)
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %21, %16
  %27 = load i8**, i8*** %6, align 8
  %28 = load i8*, i8** %27, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 6
  store i8* %29, i8** %27, align 8
  %30 = load %struct.work_stuff*, %struct.work_stuff** %5, align 8
  %31 = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %30, i32 0, i32 0
  store i32 1, i32* %31, align 8
  br label %149

32:                                               ; preds = %21, %3
  %33 = load i8**, i8*** %6, align 8
  %34 = load i8*, i8** %33, align 8
  %35 = call i32 @strlen(i8* %34)
  %36 = icmp sge i32 %35, 11
  br i1 %36, label %37, label %106

37:                                               ; preds = %32
  %38 = load i8**, i8*** %6, align 8
  %39 = load i8*, i8** %38, align 8
  %40 = call i64 @strncmp(i8* %39, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 8)
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %106

42:                                               ; preds = %37
  %43 = load i8*, i8** @cplus_markers, align 8
  %44 = load i8**, i8*** %6, align 8
  %45 = load i8*, i8** %44, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 8
  %47 = load i8, i8* %46, align 1
  %48 = call i8* @strchr(i8* %43, i8 signext %47)
  store i8* %48, i8** %11, align 8
  %49 = load i8*, i8** %11, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %51, label %105

51:                                               ; preds = %42
  %52 = load i8*, i8** %11, align 8
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = load i8**, i8*** %6, align 8
  %56 = load i8*, i8** %55, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 10
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp eq i32 %54, %59
  br i1 %60, label %61, label %105

61:                                               ; preds = %51
  %62 = load i8**, i8*** %6, align 8
  %63 = load i8*, i8** %62, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 9
  %65 = load i8, i8* %64, align 1
  %66 = sext i8 %65 to i32
  %67 = icmp eq i32 %66, 68
  br i1 %67, label %68, label %82

68:                                               ; preds = %61
  %69 = load i8**, i8*** %6, align 8
  %70 = load i8*, i8** %69, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 11
  store i8* %71, i8** %69, align 8
  %72 = load %struct.work_stuff*, %struct.work_stuff** %5, align 8
  %73 = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %72, i32 0, i32 1
  store i32 2, i32* %73, align 4
  %74 = load %struct.work_stuff*, %struct.work_stuff** %5, align 8
  %75 = load i8**, i8*** %6, align 8
  %76 = load i32*, i32** %7, align 8
  %77 = call i64 @gnu_special(%struct.work_stuff* %74, i8** %75, i32* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %68
  %80 = load i32, i32* %8, align 4
  store i32 %80, i32* %4, align 4
  br label %477

81:                                               ; preds = %68
  br label %104

82:                                               ; preds = %61
  %83 = load i8**, i8*** %6, align 8
  %84 = load i8*, i8** %83, align 8
  %85 = getelementptr inbounds i8, i8* %84, i64 9
  %86 = load i8, i8* %85, align 1
  %87 = sext i8 %86 to i32
  %88 = icmp eq i32 %87, 73
  br i1 %88, label %89, label %103

89:                                               ; preds = %82
  %90 = load i8**, i8*** %6, align 8
  %91 = load i8*, i8** %90, align 8
  %92 = getelementptr inbounds i8, i8* %91, i64 11
  store i8* %92, i8** %90, align 8
  %93 = load %struct.work_stuff*, %struct.work_stuff** %5, align 8
  %94 = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %93, i32 0, i32 2
  store i32 2, i32* %94, align 8
  %95 = load %struct.work_stuff*, %struct.work_stuff** %5, align 8
  %96 = load i8**, i8*** %6, align 8
  %97 = load i32*, i32** %7, align 8
  %98 = call i64 @gnu_special(%struct.work_stuff* %95, i8** %96, i32* %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %89
  %101 = load i32, i32* %8, align 4
  store i32 %101, i32* %4, align 4
  br label %477

102:                                              ; preds = %89
  br label %103

103:                                              ; preds = %102, %82
  br label %104

104:                                              ; preds = %103, %81
  br label %105

105:                                              ; preds = %104, %51, %42
  br label %148

106:                                              ; preds = %37, %32
  %107 = load i64, i64* @ARM_DEMANGLING, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %115, label %109

109:                                              ; preds = %106
  %110 = load i64, i64* @HP_DEMANGLING, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %115, label %112

112:                                              ; preds = %109
  %113 = load i64, i64* @EDG_DEMANGLING, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %126

115:                                              ; preds = %112, %109, %106
  %116 = load i8**, i8*** %6, align 8
  %117 = load i8*, i8** %116, align 8
  %118 = call i64 @strncmp(i8* %117, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 7)
  %119 = icmp eq i64 %118, 0
  br i1 %119, label %120, label %126

120:                                              ; preds = %115
  %121 = load i8**, i8*** %6, align 8
  %122 = load i8*, i8** %121, align 8
  %123 = getelementptr inbounds i8, i8* %122, i64 7
  store i8* %123, i8** %121, align 8
  %124 = load %struct.work_stuff*, %struct.work_stuff** %5, align 8
  %125 = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %124, i32 0, i32 1
  store i32 2, i32* %125, align 4
  br label %147

126:                                              ; preds = %115, %112
  %127 = load i64, i64* @ARM_DEMANGLING, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %135, label %129

129:                                              ; preds = %126
  %130 = load i64, i64* @HP_DEMANGLING, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %135, label %132

132:                                              ; preds = %129
  %133 = load i64, i64* @EDG_DEMANGLING, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %146

135:                                              ; preds = %132, %129, %126
  %136 = load i8**, i8*** %6, align 8
  %137 = load i8*, i8** %136, align 8
  %138 = call i64 @strncmp(i8* %137, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 7)
  %139 = icmp eq i64 %138, 0
  br i1 %139, label %140, label %146

140:                                              ; preds = %135
  %141 = load i8**, i8*** %6, align 8
  %142 = load i8*, i8** %141, align 8
  %143 = getelementptr inbounds i8, i8* %142, i64 7
  store i8* %143, i8** %141, align 8
  %144 = load %struct.work_stuff*, %struct.work_stuff** %5, align 8
  %145 = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %144, i32 0, i32 2
  store i32 2, i32* %145, align 8
  br label %146

146:                                              ; preds = %140, %135, %132
  br label %147

147:                                              ; preds = %146, %120
  br label %148

148:                                              ; preds = %147, %105
  br label %149

149:                                              ; preds = %148, %26
  %150 = load i8**, i8*** %6, align 8
  %151 = load i8*, i8** %150, align 8
  store i8* %151, i8** %9, align 8
  br label %152

152:                                              ; preds = %164, %149
  %153 = load i8*, i8** %9, align 8
  %154 = call i8* @strchr(i8* %153, i8 signext 95)
  store i8* %154, i8** %9, align 8
  br label %155

155:                                              ; preds = %152
  %156 = load i8*, i8** %9, align 8
  %157 = icmp ne i8* %156, null
  br i1 %157, label %158, label %164

158:                                              ; preds = %155
  %159 = load i8*, i8** %9, align 8
  %160 = getelementptr inbounds i8, i8* %159, i32 1
  store i8* %160, i8** %9, align 8
  %161 = load i8, i8* %160, align 1
  %162 = sext i8 %161 to i32
  %163 = icmp ne i32 %162, 95
  br label %164

164:                                              ; preds = %158, %155
  %165 = phi i1 [ false, %155 ], [ %163, %158 ]
  br i1 %165, label %152, label %166

166:                                              ; preds = %164
  %167 = load i8*, i8** %9, align 8
  %168 = icmp ne i8* %167, null
  br i1 %168, label %169, label %172

169:                                              ; preds = %166
  %170 = load i8*, i8** %9, align 8
  %171 = getelementptr inbounds i8, i8* %170, i32 -1
  store i8* %171, i8** %9, align 8
  br label %172

172:                                              ; preds = %169, %166
  %173 = load i8*, i8** %9, align 8
  %174 = icmp ne i8* %173, null
  br i1 %174, label %175, label %187

175:                                              ; preds = %172
  %176 = load i8*, i8** %9, align 8
  %177 = call i32 @strspn(i8* %176, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  store i32 %177, i32* %10, align 4
  %178 = load i32, i32* %10, align 4
  %179 = icmp sgt i32 %178, 2
  br i1 %179, label %180, label %186

180:                                              ; preds = %175
  %181 = load i32, i32* %10, align 4
  %182 = sub nsw i32 %181, 2
  %183 = load i8*, i8** %9, align 8
  %184 = sext i32 %182 to i64
  %185 = getelementptr inbounds i8, i8* %183, i64 %184
  store i8* %185, i8** %9, align 8
  br label %186

186:                                              ; preds = %180, %175
  br label %187

187:                                              ; preds = %186, %172
  %188 = load i8*, i8** %9, align 8
  %189 = icmp eq i8* %188, null
  br i1 %189, label %190, label %191

190:                                              ; preds = %187
  store i32 0, i32* %8, align 4
  br label %450

191:                                              ; preds = %187
  %192 = load %struct.work_stuff*, %struct.work_stuff** %5, align 8
  %193 = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %192, i32 0, i32 3
  %194 = load i64, i64* %193, align 8
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %210

196:                                              ; preds = %191
  %197 = load i8*, i8** %9, align 8
  %198 = getelementptr inbounds i8, i8* %197, i64 0
  %199 = load i8, i8* %198, align 1
  %200 = call i64 @ISDIGIT(i8 zeroext %199)
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %209, label %202

202:                                              ; preds = %196
  %203 = load i8*, i8** %9, align 8
  %204 = getelementptr inbounds i8, i8* %203, i64 0
  %205 = load i8, i8* %204, align 1
  %206 = sext i8 %205 to i32
  %207 = icmp ne i32 %206, 116
  br i1 %207, label %208, label %209

208:                                              ; preds = %202
  store i32 0, i32* %8, align 4
  br label %209

209:                                              ; preds = %208, %202, %196
  br label %449

210:                                              ; preds = %191
  %211 = load i8*, i8** %9, align 8
  %212 = load i8**, i8*** %6, align 8
  %213 = load i8*, i8** %212, align 8
  %214 = icmp eq i8* %211, %213
  br i1 %214, label %215, label %299

215:                                              ; preds = %210
  %216 = load i8*, i8** %9, align 8
  %217 = getelementptr inbounds i8, i8* %216, i64 2
  %218 = load i8, i8* %217, align 1
  %219 = call i64 @ISDIGIT(i8 zeroext %218)
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %245, label %221

221:                                              ; preds = %215
  %222 = load i8*, i8** %9, align 8
  %223 = getelementptr inbounds i8, i8* %222, i64 2
  %224 = load i8, i8* %223, align 1
  %225 = sext i8 %224 to i32
  %226 = icmp eq i32 %225, 81
  br i1 %226, label %245, label %227

227:                                              ; preds = %221
  %228 = load i8*, i8** %9, align 8
  %229 = getelementptr inbounds i8, i8* %228, i64 2
  %230 = load i8, i8* %229, align 1
  %231 = sext i8 %230 to i32
  %232 = icmp eq i32 %231, 116
  br i1 %232, label %245, label %233

233:                                              ; preds = %227
  %234 = load i8*, i8** %9, align 8
  %235 = getelementptr inbounds i8, i8* %234, i64 2
  %236 = load i8, i8* %235, align 1
  %237 = sext i8 %236 to i32
  %238 = icmp eq i32 %237, 75
  br i1 %238, label %245, label %239

239:                                              ; preds = %233
  %240 = load i8*, i8** %9, align 8
  %241 = getelementptr inbounds i8, i8* %240, i64 2
  %242 = load i8, i8* %241, align 1
  %243 = sext i8 %242 to i32
  %244 = icmp eq i32 %243, 72
  br i1 %244, label %245, label %299

245:                                              ; preds = %239, %233, %227, %221, %215
  %246 = load i64, i64* @LUCID_DEMANGLING, align 8
  %247 = icmp ne i64 %246, 0
  br i1 %247, label %254, label %248

248:                                              ; preds = %245
  %249 = load i64, i64* @ARM_DEMANGLING, align 8
  %250 = icmp ne i64 %249, 0
  br i1 %250, label %254, label %251

251:                                              ; preds = %248
  %252 = load i64, i64* @HP_DEMANGLING, align 8
  %253 = icmp ne i64 %252, 0
  br i1 %253, label %254, label %277

254:                                              ; preds = %251, %248, %245
  %255 = load i8*, i8** %9, align 8
  %256 = getelementptr inbounds i8, i8* %255, i64 2
  %257 = load i8, i8* %256, align 1
  %258 = call i64 @ISDIGIT(i8 zeroext %257)
  %259 = icmp ne i64 %258, 0
  br i1 %259, label %260, label %277

260:                                              ; preds = %254
  %261 = load i8*, i8** %9, align 8
  %262 = getelementptr inbounds i8, i8* %261, i64 2
  %263 = load i8**, i8*** %6, align 8
  store i8* %262, i8** %263, align 8
  %264 = load i8**, i8*** %6, align 8
  %265 = call i32 @consume_count(i8** %264)
  %266 = load i32*, i32** %7, align 8
  %267 = load i8**, i8*** %6, align 8
  %268 = load i8*, i8** %267, align 8
  %269 = call i32 @string_append(i32* %266, i8* %268)
  %270 = load i8**, i8*** %6, align 8
  %271 = load i8*, i8** %270, align 8
  %272 = call i32 @strlen(i8* %271)
  %273 = load i8**, i8*** %6, align 8
  %274 = load i8*, i8** %273, align 8
  %275 = sext i32 %272 to i64
  %276 = getelementptr inbounds i8, i8* %274, i64 %275
  store i8* %276, i8** %273, align 8
  store i32 1, i32* %8, align 4
  br label %298

277:                                              ; preds = %254, %251
  %278 = load i64, i64* @LUCID_DEMANGLING, align 8
  %279 = icmp ne i64 %278, 0
  br i1 %279, label %294, label %280

280:                                              ; preds = %277
  %281 = load i64, i64* @ARM_DEMANGLING, align 8
  %282 = icmp ne i64 %281, 0
  br i1 %282, label %294, label %283

283:                                              ; preds = %280
  %284 = load i64, i64* @HP_DEMANGLING, align 8
  %285 = icmp ne i64 %284, 0
  br i1 %285, label %294, label %286

286:                                              ; preds = %283
  %287 = load i64, i64* @EDG_DEMANGLING, align 8
  %288 = icmp ne i64 %287, 0
  br i1 %288, label %294, label %289

289:                                              ; preds = %286
  %290 = load %struct.work_stuff*, %struct.work_stuff** %5, align 8
  %291 = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %290, i32 0, i32 2
  %292 = load i32, i32* %291, align 8
  %293 = add nsw i32 %292, 1
  store i32 %293, i32* %291, align 8
  br label %294

294:                                              ; preds = %289, %286, %283, %280, %277
  %295 = load i8*, i8** %9, align 8
  %296 = getelementptr inbounds i8, i8* %295, i64 2
  %297 = load i8**, i8*** %6, align 8
  store i8* %296, i8** %297, align 8
  br label %298

298:                                              ; preds = %294, %260
  br label %448

299:                                              ; preds = %239, %210
  %300 = load i64, i64* @ARM_DEMANGLING, align 8
  %301 = icmp ne i64 %300, 0
  br i1 %301, label %302, label %322

302:                                              ; preds = %299
  %303 = load i8*, i8** %9, align 8
  %304 = getelementptr inbounds i8, i8* %303, i64 2
  %305 = load i8, i8* %304, align 1
  %306 = sext i8 %305 to i32
  %307 = icmp eq i32 %306, 112
  br i1 %307, label %308, label %322

308:                                              ; preds = %302
  %309 = load i8*, i8** %9, align 8
  %310 = getelementptr inbounds i8, i8* %309, i64 3
  %311 = load i8, i8* %310, align 1
  %312 = sext i8 %311 to i32
  %313 = icmp eq i32 %312, 116
  br i1 %313, label %314, label %322

314:                                              ; preds = %308
  store i32 1, i32* %8, align 4
  %315 = load %struct.work_stuff*, %struct.work_stuff** %5, align 8
  %316 = load i8**, i8*** %6, align 8
  %317 = load i8**, i8*** %6, align 8
  %318 = load i8*, i8** %317, align 8
  %319 = call i32 @strlen(i8* %318)
  %320 = load i32*, i32** %7, align 8
  %321 = call i32 @demangle_arm_hp_template(%struct.work_stuff* %315, i8** %316, i32 %319, i32* %320)
  br label %447

322:                                              ; preds = %308, %302, %299
  %323 = load i64, i64* @EDG_DEMANGLING, align 8
  %324 = icmp ne i64 %323, 0
  br i1 %324, label %325, label %369

325:                                              ; preds = %322
  %326 = load i8*, i8** %9, align 8
  %327 = getelementptr inbounds i8, i8* %326, i64 2
  %328 = load i8, i8* %327, align 1
  %329 = sext i8 %328 to i32
  %330 = icmp eq i32 %329, 116
  br i1 %330, label %331, label %337

331:                                              ; preds = %325
  %332 = load i8*, i8** %9, align 8
  %333 = getelementptr inbounds i8, i8* %332, i64 3
  %334 = load i8, i8* %333, align 1
  %335 = sext i8 %334 to i32
  %336 = icmp eq i32 %335, 109
  br i1 %336, label %361, label %337

337:                                              ; preds = %331, %325
  %338 = load i8*, i8** %9, align 8
  %339 = getelementptr inbounds i8, i8* %338, i64 2
  %340 = load i8, i8* %339, align 1
  %341 = sext i8 %340 to i32
  %342 = icmp eq i32 %341, 112
  br i1 %342, label %343, label %349

343:                                              ; preds = %337
  %344 = load i8*, i8** %9, align 8
  %345 = getelementptr inbounds i8, i8* %344, i64 3
  %346 = load i8, i8* %345, align 1
  %347 = sext i8 %346 to i32
  %348 = icmp eq i32 %347, 115
  br i1 %348, label %361, label %349

349:                                              ; preds = %343, %337
  %350 = load i8*, i8** %9, align 8
  %351 = getelementptr inbounds i8, i8* %350, i64 2
  %352 = load i8, i8* %351, align 1
  %353 = sext i8 %352 to i32
  %354 = icmp eq i32 %353, 112
  br i1 %354, label %355, label %369

355:                                              ; preds = %349
  %356 = load i8*, i8** %9, align 8
  %357 = getelementptr inbounds i8, i8* %356, i64 3
  %358 = load i8, i8* %357, align 1
  %359 = sext i8 %358 to i32
  %360 = icmp eq i32 %359, 116
  br i1 %360, label %361, label %369

361:                                              ; preds = %355, %343, %331
  store i32 1, i32* %8, align 4
  %362 = load %struct.work_stuff*, %struct.work_stuff** %5, align 8
  %363 = load i8**, i8*** %6, align 8
  %364 = load i8**, i8*** %6, align 8
  %365 = load i8*, i8** %364, align 8
  %366 = call i32 @strlen(i8* %365)
  %367 = load i32*, i32** %7, align 8
  %368 = call i32 @demangle_arm_hp_template(%struct.work_stuff* %362, i8** %363, i32 %366, i32* %367)
  br label %446

369:                                              ; preds = %355, %349, %322
  %370 = load i8*, i8** %9, align 8
  %371 = load i8**, i8*** %6, align 8
  %372 = load i8*, i8** %371, align 8
  %373 = icmp eq i8* %370, %372
  br i1 %373, label %374, label %431

374:                                              ; preds = %369
  %375 = load i8*, i8** %9, align 8
  %376 = getelementptr inbounds i8, i8* %375, i64 2
  %377 = load i8, i8* %376, align 1
  %378 = call i64 @ISDIGIT(i8 zeroext %377)
  %379 = icmp ne i64 %378, 0
  br i1 %379, label %431, label %380

380:                                              ; preds = %374
  %381 = load i8*, i8** %9, align 8
  %382 = getelementptr inbounds i8, i8* %381, i64 2
  %383 = load i8, i8* %382, align 1
  %384 = sext i8 %383 to i32
  %385 = icmp ne i32 %384, 116
  br i1 %385, label %386, label %431

386:                                              ; preds = %380
  %387 = load i64, i64* @ARM_DEMANGLING, align 8
  %388 = icmp ne i64 %387, 0
  br i1 %388, label %398, label %389

389:                                              ; preds = %386
  %390 = load i64, i64* @LUCID_DEMANGLING, align 8
  %391 = icmp ne i64 %390, 0
  br i1 %391, label %398, label %392

392:                                              ; preds = %389
  %393 = load i64, i64* @HP_DEMANGLING, align 8
  %394 = icmp ne i64 %393, 0
  br i1 %394, label %398, label %395

395:                                              ; preds = %392
  %396 = load i64, i64* @EDG_DEMANGLING, align 8
  %397 = icmp ne i64 %396, 0
  br i1 %397, label %398, label %403

398:                                              ; preds = %395, %392, %389, %386
  %399 = load i8**, i8*** %6, align 8
  %400 = load i32*, i32** %7, align 8
  %401 = call i64 @arm_special(i8** %399, i32* %400)
  %402 = icmp eq i64 %401, 0
  br i1 %402, label %403, label %430

403:                                              ; preds = %398, %395
  br label %404

404:                                              ; preds = %409, %403
  %405 = load i8*, i8** %9, align 8
  %406 = load i8, i8* %405, align 1
  %407 = sext i8 %406 to i32
  %408 = icmp eq i32 %407, 95
  br i1 %408, label %409, label %412

409:                                              ; preds = %404
  %410 = load i8*, i8** %9, align 8
  %411 = getelementptr inbounds i8, i8* %410, i32 1
  store i8* %411, i8** %9, align 8
  br label %404

412:                                              ; preds = %404
  %413 = load i8*, i8** %9, align 8
  %414 = call i8* @strstr(i8* %413, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  store i8* %414, i8** %9, align 8
  %415 = icmp eq i8* %414, null
  br i1 %415, label %422, label %416

416:                                              ; preds = %412
  %417 = load i8*, i8** %9, align 8
  %418 = getelementptr inbounds i8, i8* %417, i64 2
  %419 = load i8, i8* %418, align 1
  %420 = sext i8 %419 to i32
  %421 = icmp eq i32 %420, 0
  br i1 %421, label %422, label %423

422:                                              ; preds = %416, %412
  store i32 0, i32* %8, align 4
  br label %429

423:                                              ; preds = %416
  %424 = load %struct.work_stuff*, %struct.work_stuff** %5, align 8
  %425 = load i8**, i8*** %6, align 8
  %426 = load i32*, i32** %7, align 8
  %427 = load i8*, i8** %9, align 8
  %428 = call i32 @iterate_demangle_function(%struct.work_stuff* %424, i8** %425, i32* %426, i8* %427)
  store i32 %428, i32* %4, align 4
  br label %477

429:                                              ; preds = %422
  br label %430

430:                                              ; preds = %429, %398
  br label %445

431:                                              ; preds = %380, %374, %369
  %432 = load i8*, i8** %9, align 8
  %433 = getelementptr inbounds i8, i8* %432, i64 2
  %434 = load i8, i8* %433, align 1
  %435 = sext i8 %434 to i32
  %436 = icmp ne i32 %435, 0
  br i1 %436, label %437, label %443

437:                                              ; preds = %431
  %438 = load %struct.work_stuff*, %struct.work_stuff** %5, align 8
  %439 = load i8**, i8*** %6, align 8
  %440 = load i32*, i32** %7, align 8
  %441 = load i8*, i8** %9, align 8
  %442 = call i32 @iterate_demangle_function(%struct.work_stuff* %438, i8** %439, i32* %440, i8* %441)
  store i32 %442, i32* %4, align 4
  br label %477

443:                                              ; preds = %431
  store i32 0, i32* %8, align 4
  br label %444

444:                                              ; preds = %443
  br label %445

445:                                              ; preds = %444, %430
  br label %446

446:                                              ; preds = %445, %361
  br label %447

447:                                              ; preds = %446, %314
  br label %448

448:                                              ; preds = %447, %298
  br label %449

449:                                              ; preds = %448, %209
  br label %450

450:                                              ; preds = %449, %190
  %451 = load i32, i32* %8, align 4
  %452 = icmp ne i32 %451, 0
  br i1 %452, label %475, label %453

453:                                              ; preds = %450
  %454 = load %struct.work_stuff*, %struct.work_stuff** %5, align 8
  %455 = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %454, i32 0, i32 2
  %456 = load i32, i32* %455, align 8
  %457 = icmp eq i32 %456, 2
  br i1 %457, label %463, label %458

458:                                              ; preds = %453
  %459 = load %struct.work_stuff*, %struct.work_stuff** %5, align 8
  %460 = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %459, i32 0, i32 1
  %461 = load i32, i32* %460, align 4
  %462 = icmp eq i32 %461, 2
  br i1 %462, label %463, label %475

463:                                              ; preds = %458, %453
  %464 = load i32*, i32** %7, align 8
  %465 = load i8**, i8*** %6, align 8
  %466 = load i8*, i8** %465, align 8
  %467 = call i32 @string_append(i32* %464, i8* %466)
  %468 = load i8**, i8*** %6, align 8
  %469 = load i8*, i8** %468, align 8
  %470 = call i32 @strlen(i8* %469)
  %471 = load i8**, i8*** %6, align 8
  %472 = load i8*, i8** %471, align 8
  %473 = sext i32 %470 to i64
  %474 = getelementptr inbounds i8, i8* %472, i64 %473
  store i8* %474, i8** %471, align 8
  store i32 1, i32* %8, align 4
  br label %475

475:                                              ; preds = %463, %458, %450
  %476 = load i32, i32* %8, align 4
  store i32 %476, i32* %4, align 4
  br label %477

477:                                              ; preds = %475, %437, %423, %100, %79
  %478 = load i32, i32* %4, align 4
  ret i32 %478
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i64 @gnu_special(%struct.work_stuff*, i8**, i32*) #1

declare dso_local i32 @strspn(i8*, i8*) #1

declare dso_local i64 @ISDIGIT(i8 zeroext) #1

declare dso_local i32 @consume_count(i8**) #1

declare dso_local i32 @string_append(i32*, i8*) #1

declare dso_local i32 @demangle_arm_hp_template(%struct.work_stuff*, i8**, i32, i32*) #1

declare dso_local i64 @arm_special(i8**, i32*) #1

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i32 @iterate_demangle_function(%struct.work_stuff*, i8**, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
