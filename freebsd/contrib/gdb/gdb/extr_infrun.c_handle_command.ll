; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_infrun.c_handle_command.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_infrun.c_handle_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cleanup = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"signal to handle\00", align 1
@TARGET_SIGNAL_LAST = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"stop\00", align 1
@signal_stop = common dso_local global i32 0, align 4
@signal_print = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"ignore\00", align 1
@signal_program = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"print\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"pass\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"nostop\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"noignore\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"noprint\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"nopass\00", align 1
@.str.10 = private unnamed_addr constant [43 x i8] c"Unrecognized or ambiguous flag word: \22%s\22.\00", align 1
@.str.11 = private unnamed_addr constant [65 x i8] c"%s is used by the debugger.\0AAre you sure you want to change it? \00", align 1
@.str.12 = private unnamed_addr constant [27 x i8] c"Not confirmed, unchanged.\0A\00", align 1
@gdb_stdout = common dso_local global i32 0, align 4
@inferior_ptid = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @handle_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_command(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca %struct.cleanup*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %16 = load i8*, i8** %3, align 8
  %17 = icmp eq i8* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = call i32 @error_no_arg(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %20

20:                                               ; preds = %18, %2
  %21 = load i64, i64* @TARGET_SIGNAL_LAST, align 8
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %13, align 4
  %23 = load i32, i32* %13, align 4
  %24 = call i64 @alloca(i32 %23)
  %25 = inttoptr i64 %24 to i8*
  store i8* %25, i8** %14, align 8
  %26 = load i8*, i8** %14, align 8
  %27 = load i32, i32* %13, align 4
  %28 = call i32 @memset(i8* %26, i32 0, i32 %27)
  %29 = load i8*, i8** %3, align 8
  %30 = call i8** @buildargv(i8* %29)
  store i8** %30, i8*** %5, align 8
  %31 = load i8**, i8*** %5, align 8
  %32 = icmp eq i8** %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %20
  %34 = call i32 @nomem(i32 0)
  br label %35

35:                                               ; preds = %33, %20
  %36 = load i8**, i8*** %5, align 8
  %37 = call %struct.cleanup* @make_cleanup_freeargv(i8** %36)
  store %struct.cleanup* %37, %struct.cleanup** %15, align 8
  br label %38

38:                                               ; preds = %298, %35
  %39 = load i8**, i8*** %5, align 8
  %40 = load i8*, i8** %39, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %301

42:                                               ; preds = %38
  %43 = load i8**, i8*** %5, align 8
  %44 = load i8*, i8** %43, align 8
  %45 = call i32 @strlen(i8* %44)
  store i32 %45, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %46

46:                                               ; preds = %56, %42
  %47 = load i8**, i8*** %5, align 8
  %48 = load i8*, i8** %47, align 8
  %49 = load i32, i32* %6, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8, i8* %48, i64 %50
  %52 = load i8, i8* %51, align 1
  %53 = call i64 @isdigit(i8 signext %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %46
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %6, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %6, align 4
  br label %46

59:                                               ; preds = %46
  store i32 0, i32* %12, align 4
  store i32 -1, i32* %10, align 4
  store i32 -1, i32* %8, align 4
  %60 = load i32, i32* %7, align 4
  %61 = icmp sge i32 %60, 1
  br i1 %61, label %62, label %71

62:                                               ; preds = %59
  %63 = load i8**, i8*** %5, align 8
  %64 = load i8*, i8** %63, align 8
  %65 = load i32, i32* %7, align 4
  %66 = call i32 @strncmp(i8* %64, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %62
  store i32 1, i32* %12, align 4
  store i32 0, i32* %8, align 4
  %69 = load i32, i32* %13, align 4
  %70 = sub nsw i32 %69, 1
  store i32 %70, i32* %10, align 4
  br label %249

71:                                               ; preds = %62, %59
  %72 = load i32, i32* %7, align 4
  %73 = icmp sge i32 %72, 1
  br i1 %73, label %74, label %89

74:                                               ; preds = %71
  %75 = load i8**, i8*** %5, align 8
  %76 = load i8*, i8** %75, align 8
  %77 = load i32, i32* %7, align 4
  %78 = call i32 @strncmp(i8* %76, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %89, label %80

80:                                               ; preds = %74
  %81 = load i32, i32* %13, align 4
  %82 = load i8*, i8** %14, align 8
  %83 = load i32, i32* @signal_stop, align 4
  %84 = call i32 @SET_SIGS(i32 %81, i8* %82, i32 %83)
  %85 = load i32, i32* %13, align 4
  %86 = load i8*, i8** %14, align 8
  %87 = load i32, i32* @signal_print, align 4
  %88 = call i32 @SET_SIGS(i32 %85, i8* %86, i32 %87)
  br label %248

89:                                               ; preds = %74, %71
  %90 = load i32, i32* %7, align 4
  %91 = icmp sge i32 %90, 1
  br i1 %91, label %92, label %103

92:                                               ; preds = %89
  %93 = load i8**, i8*** %5, align 8
  %94 = load i8*, i8** %93, align 8
  %95 = load i32, i32* %7, align 4
  %96 = call i32 @strncmp(i8* %94, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %95)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %103, label %98

98:                                               ; preds = %92
  %99 = load i32, i32* %13, align 4
  %100 = load i8*, i8** %14, align 8
  %101 = load i32, i32* @signal_program, align 4
  %102 = call i32 @UNSET_SIGS(i32 %99, i8* %100, i32 %101)
  br label %247

103:                                              ; preds = %92, %89
  %104 = load i32, i32* %7, align 4
  %105 = icmp sge i32 %104, 2
  br i1 %105, label %106, label %117

106:                                              ; preds = %103
  %107 = load i8**, i8*** %5, align 8
  %108 = load i8*, i8** %107, align 8
  %109 = load i32, i32* %7, align 4
  %110 = call i32 @strncmp(i8* %108, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 %109)
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %117, label %112

112:                                              ; preds = %106
  %113 = load i32, i32* %13, align 4
  %114 = load i8*, i8** %14, align 8
  %115 = load i32, i32* @signal_print, align 4
  %116 = call i32 @SET_SIGS(i32 %113, i8* %114, i32 %115)
  br label %246

117:                                              ; preds = %106, %103
  %118 = load i32, i32* %7, align 4
  %119 = icmp sge i32 %118, 2
  br i1 %119, label %120, label %131

120:                                              ; preds = %117
  %121 = load i8**, i8*** %5, align 8
  %122 = load i8*, i8** %121, align 8
  %123 = load i32, i32* %7, align 4
  %124 = call i32 @strncmp(i8* %122, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %123)
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %131, label %126

126:                                              ; preds = %120
  %127 = load i32, i32* %13, align 4
  %128 = load i8*, i8** %14, align 8
  %129 = load i32, i32* @signal_program, align 4
  %130 = call i32 @SET_SIGS(i32 %127, i8* %128, i32 %129)
  br label %245

131:                                              ; preds = %120, %117
  %132 = load i32, i32* %7, align 4
  %133 = icmp sge i32 %132, 3
  br i1 %133, label %134, label %145

134:                                              ; preds = %131
  %135 = load i8**, i8*** %5, align 8
  %136 = load i8*, i8** %135, align 8
  %137 = load i32, i32* %7, align 4
  %138 = call i32 @strncmp(i8* %136, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i32 %137)
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %145, label %140

140:                                              ; preds = %134
  %141 = load i32, i32* %13, align 4
  %142 = load i8*, i8** %14, align 8
  %143 = load i32, i32* @signal_stop, align 4
  %144 = call i32 @UNSET_SIGS(i32 %141, i8* %142, i32 %143)
  br label %244

145:                                              ; preds = %134, %131
  %146 = load i32, i32* %7, align 4
  %147 = icmp sge i32 %146, 3
  br i1 %147, label %148, label %159

148:                                              ; preds = %145
  %149 = load i8**, i8*** %5, align 8
  %150 = load i8*, i8** %149, align 8
  %151 = load i32, i32* %7, align 4
  %152 = call i32 @strncmp(i8* %150, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i32 %151)
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %159, label %154

154:                                              ; preds = %148
  %155 = load i32, i32* %13, align 4
  %156 = load i8*, i8** %14, align 8
  %157 = load i32, i32* @signal_program, align 4
  %158 = call i32 @SET_SIGS(i32 %155, i8* %156, i32 %157)
  br label %243

159:                                              ; preds = %148, %145
  %160 = load i32, i32* %7, align 4
  %161 = icmp sge i32 %160, 4
  br i1 %161, label %162, label %177

162:                                              ; preds = %159
  %163 = load i8**, i8*** %5, align 8
  %164 = load i8*, i8** %163, align 8
  %165 = load i32, i32* %7, align 4
  %166 = call i32 @strncmp(i8* %164, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i32 %165)
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %177, label %168

168:                                              ; preds = %162
  %169 = load i32, i32* %13, align 4
  %170 = load i8*, i8** %14, align 8
  %171 = load i32, i32* @signal_print, align 4
  %172 = call i32 @UNSET_SIGS(i32 %169, i8* %170, i32 %171)
  %173 = load i32, i32* %13, align 4
  %174 = load i8*, i8** %14, align 8
  %175 = load i32, i32* @signal_stop, align 4
  %176 = call i32 @UNSET_SIGS(i32 %173, i8* %174, i32 %175)
  br label %242

177:                                              ; preds = %162, %159
  %178 = load i32, i32* %7, align 4
  %179 = icmp sge i32 %178, 4
  br i1 %179, label %180, label %191

180:                                              ; preds = %177
  %181 = load i8**, i8*** %5, align 8
  %182 = load i8*, i8** %181, align 8
  %183 = load i32, i32* %7, align 4
  %184 = call i32 @strncmp(i8* %182, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i32 %183)
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %191, label %186

186:                                              ; preds = %180
  %187 = load i32, i32* %13, align 4
  %188 = load i8*, i8** %14, align 8
  %189 = load i32, i32* @signal_program, align 4
  %190 = call i32 @UNSET_SIGS(i32 %187, i8* %188, i32 %189)
  br label %241

191:                                              ; preds = %180, %177
  %192 = load i32, i32* %6, align 4
  %193 = icmp sgt i32 %192, 0
  br i1 %193, label %194, label %227

194:                                              ; preds = %191
  %195 = load i8**, i8*** %5, align 8
  %196 = load i8*, i8** %195, align 8
  %197 = call i32 @atoi(i8* %196)
  %198 = call i64 @target_signal_from_command(i32 %197)
  %199 = trunc i64 %198 to i32
  store i32 %199, i32* %10, align 4
  store i32 %199, i32* %8, align 4
  %200 = load i8**, i8*** %5, align 8
  %201 = load i8*, i8** %200, align 8
  %202 = load i32, i32* %6, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i8, i8* %201, i64 %203
  %205 = load i8, i8* %204, align 1
  %206 = sext i8 %205 to i32
  %207 = icmp eq i32 %206, 45
  br i1 %207, label %208, label %218

208:                                              ; preds = %194
  %209 = load i8**, i8*** %5, align 8
  %210 = load i8*, i8** %209, align 8
  %211 = load i32, i32* %6, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds i8, i8* %210, i64 %212
  %214 = getelementptr inbounds i8, i8* %213, i64 1
  %215 = call i32 @atoi(i8* %214)
  %216 = call i64 @target_signal_from_command(i32 %215)
  %217 = trunc i64 %216 to i32
  store i32 %217, i32* %10, align 4
  br label %218

218:                                              ; preds = %208, %194
  %219 = load i32, i32* %8, align 4
  %220 = load i32, i32* %10, align 4
  %221 = icmp sgt i32 %219, %220
  br i1 %221, label %222, label %226

222:                                              ; preds = %218
  %223 = load i32, i32* %8, align 4
  store i32 %223, i32* %9, align 4
  %224 = load i32, i32* %10, align 4
  store i32 %224, i32* %8, align 4
  %225 = load i32, i32* %9, align 4
  store i32 %225, i32* %10, align 4
  br label %226

226:                                              ; preds = %222, %218
  br label %240

227:                                              ; preds = %191
  %228 = load i8**, i8*** %5, align 8
  %229 = load i8*, i8** %228, align 8
  %230 = call i32 @target_signal_from_name(i8* %229)
  store i32 %230, i32* %11, align 4
  %231 = load i32, i32* %11, align 4
  %232 = icmp ne i32 %231, 128
  br i1 %232, label %233, label %235

233:                                              ; preds = %227
  %234 = load i32, i32* %11, align 4
  store i32 %234, i32* %10, align 4
  store i32 %234, i32* %8, align 4
  br label %239

235:                                              ; preds = %227
  %236 = load i8**, i8*** %5, align 8
  %237 = load i8*, i8** %236, align 8
  %238 = call i32 @error(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.10, i64 0, i64 0), i8* %237)
  br label %239

239:                                              ; preds = %235, %233
  br label %240

240:                                              ; preds = %239, %226
  br label %241

241:                                              ; preds = %240, %186
  br label %242

242:                                              ; preds = %241, %168
  br label %243

243:                                              ; preds = %242, %154
  br label %244

244:                                              ; preds = %243, %140
  br label %245

245:                                              ; preds = %244, %126
  br label %246

246:                                              ; preds = %245, %112
  br label %247

247:                                              ; preds = %246, %98
  br label %248

248:                                              ; preds = %247, %80
  br label %249

249:                                              ; preds = %248, %68
  %250 = load i32, i32* %8, align 4
  store i32 %250, i32* %9, align 4
  br label %251

251:                                              ; preds = %295, %249
  %252 = load i32, i32* %9, align 4
  %253 = icmp sge i32 %252, 0
  br i1 %253, label %254, label %258

254:                                              ; preds = %251
  %255 = load i32, i32* %9, align 4
  %256 = load i32, i32* %10, align 4
  %257 = icmp sle i32 %255, %256
  br label %258

258:                                              ; preds = %254, %251
  %259 = phi i1 [ false, %251 ], [ %257, %254 ]
  br i1 %259, label %260, label %298

260:                                              ; preds = %258
  %261 = load i32, i32* %9, align 4
  switch i32 %261, label %289 [
    i32 129, label %262
    i32 130, label %262
    i32 132, label %288
    i32 131, label %288
    i32 128, label %288
  ]

262:                                              ; preds = %260, %260
  %263 = load i32, i32* %12, align 4
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %287, label %265

265:                                              ; preds = %262
  %266 = load i8*, i8** %14, align 8
  %267 = load i32, i32* %9, align 4
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds i8, i8* %266, i64 %268
  %270 = load i8, i8* %269, align 1
  %271 = icmp ne i8 %270, 0
  br i1 %271, label %287, label %272

272:                                              ; preds = %265
  %273 = load i32, i32* %9, align 4
  %274 = call i32 @target_signal_to_name(i32 %273)
  %275 = call i32 @query(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.11, i64 0, i64 0), i32 %274)
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %277, label %282

277:                                              ; preds = %272
  %278 = load i8*, i8** %14, align 8
  %279 = load i32, i32* %9, align 4
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds i8, i8* %278, i64 %280
  store i8 1, i8* %281, align 1
  br label %286

282:                                              ; preds = %272
  %283 = call i32 @printf_unfiltered(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.12, i64 0, i64 0))
  %284 = load i32, i32* @gdb_stdout, align 4
  %285 = call i32 @gdb_flush(i32 %284)
  br label %286

286:                                              ; preds = %282, %277
  br label %287

287:                                              ; preds = %286, %265, %262
  br label %294

288:                                              ; preds = %260, %260, %260
  br label %294

289:                                              ; preds = %260
  %290 = load i8*, i8** %14, align 8
  %291 = load i32, i32* %9, align 4
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds i8, i8* %290, i64 %292
  store i8 1, i8* %293, align 1
  br label %294

294:                                              ; preds = %289, %288, %287
  br label %295

295:                                              ; preds = %294
  %296 = load i32, i32* %9, align 4
  %297 = add nsw i32 %296, 1
  store i32 %297, i32* %9, align 4
  br label %251

298:                                              ; preds = %258
  %299 = load i8**, i8*** %5, align 8
  %300 = getelementptr inbounds i8*, i8** %299, i32 1
  store i8** %300, i8*** %5, align 8
  br label %38

301:                                              ; preds = %38
  %302 = load i32, i32* @inferior_ptid, align 4
  %303 = call i32 @target_notice_signals(i32 %302)
  %304 = load i32, i32* %4, align 4
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %306, label %327

306:                                              ; preds = %301
  %307 = call i32 (...) @sig_print_header()
  store i32 0, i32* %9, align 4
  br label %308

308:                                              ; preds = %323, %306
  %309 = load i32, i32* %9, align 4
  %310 = load i32, i32* %13, align 4
  %311 = icmp slt i32 %309, %310
  br i1 %311, label %312, label %326

312:                                              ; preds = %308
  %313 = load i8*, i8** %14, align 8
  %314 = load i32, i32* %9, align 4
  %315 = sext i32 %314 to i64
  %316 = getelementptr inbounds i8, i8* %313, i64 %315
  %317 = load i8, i8* %316, align 1
  %318 = icmp ne i8 %317, 0
  br i1 %318, label %319, label %322

319:                                              ; preds = %312
  %320 = load i32, i32* %9, align 4
  %321 = call i32 @sig_print_info(i32 %320)
  br label %322

322:                                              ; preds = %319, %312
  br label %323

323:                                              ; preds = %322
  %324 = load i32, i32* %9, align 4
  %325 = add nsw i32 %324, 1
  store i32 %325, i32* %9, align 4
  br label %308

326:                                              ; preds = %308
  br label %327

327:                                              ; preds = %326, %301
  %328 = load %struct.cleanup*, %struct.cleanup** %15, align 8
  %329 = call i32 @do_cleanups(%struct.cleanup* %328)
  ret void
}

declare dso_local i32 @error_no_arg(i8*) #1

declare dso_local i64 @alloca(i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i8** @buildargv(i8*) #1

declare dso_local i32 @nomem(i32) #1

declare dso_local %struct.cleanup* @make_cleanup_freeargv(i8**) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @isdigit(i8 signext) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @SET_SIGS(i32, i8*, i32) #1

declare dso_local i32 @UNSET_SIGS(i32, i8*, i32) #1

declare dso_local i64 @target_signal_from_command(i32) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @target_signal_from_name(i8*) #1

declare dso_local i32 @error(i8*, i8*) #1

declare dso_local i32 @query(i8*, i32) #1

declare dso_local i32 @target_signal_to_name(i32) #1

declare dso_local i32 @printf_unfiltered(i8*) #1

declare dso_local i32 @gdb_flush(i32) #1

declare dso_local i32 @target_notice_signals(i32) #1

declare dso_local i32 @sig_print_header(...) #1

declare dso_local i32 @sig_print_info(i32) #1

declare dso_local i32 @do_cleanups(%struct.cleanup*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
