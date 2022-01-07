; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/amd/amd/extr_opts.c_expand_op.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/amd/amd/extr_opts.c_expand_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.opt = type { i32, i8**, i8**, i64 }

@MAXPATHLEN = common dso_local global i32 0, align 4
@NLEN = common dso_local global i32 0, align 4
@XLOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"No space to expand \22%s\22\00", align 1
@XLOG_USER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"No closing '}' in \22%s\22\00", align 1
@opt_fields = common dso_local global %struct.opt* null, align 8
@.str.2 = private unnamed_addr constant [10 x i8] c"${%s%s%s}\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@D_STR = common dso_local global i32 0, align 4
@XLOG_DEBUG = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [30 x i8] c"Environment gave \22%s\22 -> \22%s\22\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"Unknown sequence \22${%s}\22\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"Unknown $ sequence in \22%s\22\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"Expansion of \22%s\22...\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"......... is \22%s\22\00", align 1
@EXPAND_ERROR = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i32)* @expand_op to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @expand_op(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.opt*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8, align 1
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i8*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i8*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %28 = load i32, i32* @MAXPATHLEN, align 4
  %29 = add nsw i32 %28, 1
  %30 = zext i32 %29 to i64
  %31 = call i8* @llvm.stacksave()
  store i8* %31, i8** %6, align 8
  %32 = alloca i8, i64 %30, align 16
  store i64 %30, i64* %7, align 8
  %33 = load i32, i32* @NLEN, align 4
  %34 = add nsw i32 %33, 1
  %35 = zext i32 %34 to i64
  %36 = alloca i8, i64 %35, align 16
  store i64 %35, i64* %8, align 8
  store i8* %32, i8** %9, align 8
  %37 = load i8*, i8** %4, align 8
  store i8* %37, i8** %10, align 8
  %38 = load i8*, i8** %4, align 8
  store i8* %38, i8** %13, align 8
  br label %39

39:                                               ; preds = %384, %2
  %40 = load i8*, i8** %10, align 8
  %41 = call i8* @strchr(i8* %40, i8 signext 36)
  store i8* %41, i8** %11, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %43, label %385

43:                                               ; preds = %39
  %44 = load i8*, i8** %11, align 8
  %45 = load i8*, i8** %10, align 8
  %46 = ptrtoint i8* %44 to i64
  %47 = ptrtoint i8* %45 to i64
  %48 = sub i64 %46, %47
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %15, align 4
  %50 = load i32, i32* %15, align 4
  %51 = icmp sgt i32 %50, 0
  br i1 %51, label %52, label %71

52:                                               ; preds = %43
  %53 = load i8*, i8** %9, align 8
  %54 = load i32, i32* %15, align 4
  %55 = call i64 @BUFSPACE(i8* %53, i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %66

57:                                               ; preds = %52
  %58 = load i8*, i8** %9, align 8
  %59 = load i8*, i8** %10, align 8
  %60 = load i32, i32* %15, align 4
  %61 = call i32 @strncpy(i8* %58, i8* %59, i32 %60)
  %62 = load i32, i32* %15, align 4
  %63 = load i8*, i8** %9, align 8
  %64 = sext i32 %62 to i64
  %65 = getelementptr inbounds i8, i8* %63, i64 %64
  store i8* %65, i8** %9, align 8
  br label %70

66:                                               ; preds = %52
  %67 = load i32, i32* @XLOG_ERROR, align 4
  %68 = load i8*, i8** %4, align 8
  %69 = call i32 (i32, i8*, i8*, ...) @plog(i32 %67, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* %68)
  br label %386

70:                                               ; preds = %57
  br label %71

71:                                               ; preds = %70, %43
  %72 = load i8*, i8** %11, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 1
  store i8* %73, i8** %10, align 8
  %74 = load i8*, i8** %10, align 8
  %75 = getelementptr inbounds i8, i8* %74, i32 1
  store i8* %75, i8** %10, align 8
  %76 = load i8, i8* %74, align 1
  store i8 %76, i8* %14, align 1
  %77 = load i8, i8* %14, align 1
  %78 = sext i8 %77 to i32
  %79 = icmp eq i32 %78, 36
  br i1 %79, label %80, label %92

80:                                               ; preds = %71
  %81 = load i8*, i8** %9, align 8
  %82 = call i64 @BUFSPACE(i8* %81, i32 1)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %80
  %85 = load i8*, i8** %9, align 8
  %86 = getelementptr inbounds i8, i8* %85, i32 1
  store i8* %86, i8** %9, align 8
  store i8 36, i8* %85, align 1
  br label %91

87:                                               ; preds = %80
  %88 = load i32, i32* @XLOG_ERROR, align 4
  %89 = load i8*, i8** %4, align 8
  %90 = call i32 (i32, i8*, i8*, ...) @plog(i32 %88, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* %89)
  br label %386

91:                                               ; preds = %84
  br label %384

92:                                               ; preds = %71
  %93 = load i8, i8* %14, align 1
  %94 = sext i8 %93 to i32
  %95 = icmp eq i32 %94, 123
  br i1 %95, label %96, label %379

96:                                               ; preds = %92
  %97 = load i8*, i8** %10, align 8
  %98 = call i8* @strchr(i8* %97, i8 signext 125)
  store i8* %98, i8** %17, align 8
  %99 = load i8*, i8** %17, align 8
  %100 = icmp ne i8* %99, null
  br i1 %100, label %105, label %101

101:                                              ; preds = %96
  %102 = load i32, i32* @XLOG_USER, align 4
  %103 = load i8*, i8** %4, align 8
  %104 = call i32 (i32, i8*, i8*, ...) @plog(i32 %102, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* %103)
  br label %386

105:                                              ; preds = %96
  %106 = load i8*, i8** %17, align 8
  %107 = load i8*, i8** %10, align 8
  %108 = ptrtoint i8* %106 to i64
  %109 = ptrtoint i8* %107 to i64
  %110 = sub i64 %108, %109
  %111 = trunc i64 %110 to i32
  store i32 %111, i32* %18, align 4
  %112 = load i8*, i8** %10, align 8
  %113 = load i8, i8* %112, align 1
  %114 = sext i8 %113 to i32
  %115 = icmp eq i32 %114, 47
  br i1 %115, label %116, label %121

116:                                              ; preds = %105
  store i32 2, i32* %16, align 4
  %117 = load i8*, i8** %10, align 8
  %118 = getelementptr inbounds i8, i8* %117, i32 1
  store i8* %118, i8** %10, align 8
  %119 = load i32, i32* %18, align 4
  %120 = add nsw i32 %119, -1
  store i32 %120, i32* %18, align 4
  br label %153

121:                                              ; preds = %105
  %122 = load i8*, i8** %17, align 8
  %123 = getelementptr inbounds i8, i8* %122, i64 -1
  %124 = load i8, i8* %123, align 1
  %125 = sext i8 %124 to i32
  %126 = icmp eq i32 %125, 47
  br i1 %126, label %127, label %130

127:                                              ; preds = %121
  store i32 1, i32* %16, align 4
  %128 = load i32, i32* %18, align 4
  %129 = add nsw i32 %128, -1
  store i32 %129, i32* %18, align 4
  br label %152

130:                                              ; preds = %121
  %131 = load i8*, i8** %10, align 8
  %132 = load i8, i8* %131, align 1
  %133 = sext i8 %132 to i32
  %134 = icmp eq i32 %133, 46
  br i1 %134, label %135, label %140

135:                                              ; preds = %130
  store i32 3, i32* %16, align 4
  %136 = load i8*, i8** %10, align 8
  %137 = getelementptr inbounds i8, i8* %136, i32 1
  store i8* %137, i8** %10, align 8
  %138 = load i32, i32* %18, align 4
  %139 = add nsw i32 %138, -1
  store i32 %139, i32* %18, align 4
  br label %151

140:                                              ; preds = %130
  %141 = load i8*, i8** %17, align 8
  %142 = getelementptr inbounds i8, i8* %141, i64 -1
  %143 = load i8, i8* %142, align 1
  %144 = sext i8 %143 to i32
  %145 = icmp eq i32 %144, 46
  br i1 %145, label %146, label %149

146:                                              ; preds = %140
  store i32 4, i32* %16, align 4
  %147 = load i32, i32* %18, align 4
  %148 = add nsw i32 %147, -1
  store i32 %148, i32* %18, align 4
  br label %150

149:                                              ; preds = %140
  store i32 0, i32* %16, align 4
  br label %150

150:                                              ; preds = %149, %146
  br label %151

151:                                              ; preds = %150, %135
  br label %152

152:                                              ; preds = %151, %127
  br label %153

153:                                              ; preds = %152, %116
  %154 = load i32, i32* %18, align 4
  %155 = load i32, i32* @NLEN, align 4
  %156 = icmp sgt i32 %154, %155
  br i1 %156, label %157, label %159

157:                                              ; preds = %153
  %158 = load i32, i32* @NLEN, align 4
  store i32 %158, i32* %18, align 4
  br label %159

159:                                              ; preds = %157, %153
  %160 = load i8*, i8** %10, align 8
  %161 = load i32, i32* %18, align 4
  %162 = call i32 @strncpy(i8* %36, i8* %160, i32 %161)
  %163 = load i32, i32* %18, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i8, i8* %36, i64 %164
  store i8 0, i8* %165, align 1
  %166 = load i8*, i8** %17, align 8
  %167 = getelementptr inbounds i8, i8* %166, i64 1
  store i8* %167, i8** %10, align 8
  %168 = load %struct.opt*, %struct.opt** @opt_fields, align 8
  store %struct.opt* %168, %struct.opt** %12, align 8
  br label %169

169:                                              ; preds = %331, %159
  %170 = load %struct.opt*, %struct.opt** %12, align 8
  %171 = getelementptr inbounds %struct.opt, %struct.opt* %170, i32 0, i32 3
  %172 = load i64, i64* %171, align 8
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %334

174:                                              ; preds = %169
  %175 = load i32, i32* %18, align 4
  %176 = load %struct.opt*, %struct.opt** %12, align 8
  %177 = getelementptr inbounds %struct.opt, %struct.opt* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = icmp eq i32 %175, %178
  br i1 %179, label %180, label %330

180:                                              ; preds = %174
  %181 = load %struct.opt*, %struct.opt** %12, align 8
  %182 = getelementptr inbounds %struct.opt, %struct.opt* %181, i32 0, i32 3
  %183 = load i64, i64* %182, align 8
  %184 = call i64 @STREQ(i64 %183, i8* %36)
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %330

186:                                              ; preds = %180
  %187 = load i32, i32* @NLEN, align 4
  %188 = add nsw i32 %187, 3
  %189 = zext i32 %188 to i64
  %190 = call i8* @llvm.stacksave()
  store i8* %190, i8** %19, align 8
  %191 = alloca i8, i64 %189, align 16
  store i64 %189, i64* %20, align 8
  %192 = load %struct.opt*, %struct.opt** %12, align 8
  %193 = getelementptr inbounds %struct.opt, %struct.opt* %192, i32 0, i32 1
  %194 = load i8**, i8*** %193, align 8
  %195 = icmp ne i8** %194, null
  %196 = xor i1 %195, true
  %197 = zext i1 %196 to i32
  %198 = load i32, i32* %5, align 4
  %199 = icmp ne i32 %198, 0
  %200 = xor i1 %199, true
  %201 = zext i1 %200 to i32
  %202 = icmp eq i32 %197, %201
  br i1 %202, label %226, label %203

203:                                              ; preds = %186
  %204 = trunc i64 %189 to i32
  %205 = load i32, i32* %16, align 4
  %206 = icmp eq i32 %205, 2
  br i1 %206, label %207, label %208

207:                                              ; preds = %203
  br label %213

208:                                              ; preds = %203
  %209 = load i32, i32* %16, align 4
  %210 = icmp eq i32 %209, 3
  %211 = zext i1 %210 to i64
  %212 = select i1 %210, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)
  br label %213

213:                                              ; preds = %208, %207
  %214 = phi i8* [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), %207 ], [ %212, %208 ]
  %215 = load i32, i32* %16, align 4
  %216 = icmp eq i32 %215, 1
  br i1 %216, label %217, label %218

217:                                              ; preds = %213
  br label %223

218:                                              ; preds = %213
  %219 = load i32, i32* %16, align 4
  %220 = icmp eq i32 %219, 4
  %221 = zext i1 %220 to i64
  %222 = select i1 %220, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)
  br label %223

223:                                              ; preds = %218, %217
  %224 = phi i8* [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), %217 ], [ %222, %218 ]
  %225 = call i32 @xsnprintf(i8* %191, i32 %204, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* %214, i8* %36, i8* %224)
  store i8* %191, i8** %21, align 8
  store i32 0, i32* %16, align 4
  br label %242

226:                                              ; preds = %186
  %227 = load %struct.opt*, %struct.opt** %12, align 8
  %228 = getelementptr inbounds %struct.opt, %struct.opt* %227, i32 0, i32 1
  %229 = load i8**, i8*** %228, align 8
  %230 = icmp ne i8** %229, null
  br i1 %230, label %231, label %236

231:                                              ; preds = %226
  %232 = load %struct.opt*, %struct.opt** %12, align 8
  %233 = getelementptr inbounds %struct.opt, %struct.opt* %232, i32 0, i32 1
  %234 = load i8**, i8*** %233, align 8
  %235 = load i8*, i8** %234, align 8
  store i8* %235, i8** %21, align 8
  br label %241

236:                                              ; preds = %226
  %237 = load %struct.opt*, %struct.opt** %12, align 8
  %238 = getelementptr inbounds %struct.opt, %struct.opt* %237, i32 0, i32 2
  %239 = load i8**, i8*** %238, align 8
  %240 = load i8*, i8** %239, align 8
  store i8* %240, i8** %21, align 8
  br label %241

241:                                              ; preds = %236, %231
  br label %242

242:                                              ; preds = %241, %223
  %243 = load i8*, i8** %21, align 8
  %244 = icmp ne i8* %243, null
  br i1 %244, label %245, label %326

245:                                              ; preds = %242
  %246 = load i8*, i8** %21, align 8
  %247 = call i32 @strlen(i8* %246)
  store i32 %247, i32* %22, align 4
  %248 = load i8*, i8** %21, align 8
  store i8* %248, i8** %23, align 8
  %249 = load i32, i32* %16, align 4
  switch i32 %249, label %304 [
    i32 1, label %250
    i32 2, label %264
    i32 3, label %277
    i32 4, label %289
    i32 0, label %303
  ]

250:                                              ; preds = %245
  %251 = load i8*, i8** %21, align 8
  %252 = call i8* @strrchr(i8* %251, i8 signext 47)
  store i8* %252, i8** %23, align 8
  %253 = load i8*, i8** %23, align 8
  %254 = icmp ne i8* %253, null
  br i1 %254, label %255, label %262

255:                                              ; preds = %250
  %256 = load i8*, i8** %23, align 8
  %257 = load i8*, i8** %21, align 8
  %258 = ptrtoint i8* %256 to i64
  %259 = ptrtoint i8* %257 to i64
  %260 = sub i64 %258, %259
  %261 = trunc i64 %260 to i32
  store i32 %261, i32* %22, align 4
  br label %262

262:                                              ; preds = %255, %250
  %263 = load i8*, i8** %21, align 8
  store i8* %263, i8** %23, align 8
  br label %304

264:                                              ; preds = %245
  %265 = load i8*, i8** %21, align 8
  %266 = call i8* @strrchr(i8* %265, i8 signext 47)
  store i8* %266, i8** %23, align 8
  %267 = load i8*, i8** %23, align 8
  %268 = icmp ne i8* %267, null
  br i1 %268, label %269, label %274

269:                                              ; preds = %264
  %270 = load i8*, i8** %23, align 8
  %271 = getelementptr inbounds i8, i8* %270, i32 1
  store i8* %271, i8** %23, align 8
  %272 = load i8*, i8** %23, align 8
  %273 = call i32 @strlen(i8* %272)
  store i32 %273, i32* %22, align 4
  br label %276

274:                                              ; preds = %264
  %275 = load i8*, i8** %21, align 8
  store i8* %275, i8** %23, align 8
  br label %276

276:                                              ; preds = %274, %269
  br label %304

277:                                              ; preds = %245
  %278 = load i8*, i8** %21, align 8
  %279 = call i8* @strchr(i8* %278, i8 signext 46)
  store i8* %279, i8** %23, align 8
  %280 = load i8*, i8** %23, align 8
  %281 = icmp ne i8* %280, null
  br i1 %281, label %282, label %287

282:                                              ; preds = %277
  %283 = load i8*, i8** %23, align 8
  %284 = getelementptr inbounds i8, i8* %283, i32 1
  store i8* %284, i8** %23, align 8
  %285 = load i8*, i8** %23, align 8
  %286 = call i32 @strlen(i8* %285)
  store i32 %286, i32* %22, align 4
  br label %288

287:                                              ; preds = %277
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), i8** %23, align 8
  store i32 0, i32* %22, align 4
  br label %288

288:                                              ; preds = %287, %282
  br label %304

289:                                              ; preds = %245
  %290 = load i8*, i8** %21, align 8
  %291 = call i8* @strchr(i8* %290, i8 signext 46)
  store i8* %291, i8** %23, align 8
  %292 = load i8*, i8** %23, align 8
  %293 = icmp ne i8* %292, null
  br i1 %293, label %294, label %301

294:                                              ; preds = %289
  %295 = load i8*, i8** %23, align 8
  %296 = load i8*, i8** %21, align 8
  %297 = ptrtoint i8* %295 to i64
  %298 = ptrtoint i8* %296 to i64
  %299 = sub i64 %297, %298
  %300 = trunc i64 %299 to i32
  store i32 %300, i32* %22, align 4
  br label %301

301:                                              ; preds = %294, %289
  %302 = load i8*, i8** %21, align 8
  store i8* %302, i8** %23, align 8
  br label %304

303:                                              ; preds = %245
  br label %304

304:                                              ; preds = %245, %303, %301, %288, %276, %262
  %305 = load i8*, i8** %9, align 8
  %306 = load i32, i32* %22, align 4
  %307 = add nsw i32 %306, 1
  %308 = call i64 @BUFSPACE(i8* %305, i32 %307)
  %309 = icmp ne i64 %308, 0
  br i1 %309, label %310, label %321

310:                                              ; preds = %304
  %311 = load i8*, i8** %9, align 8
  %312 = load i8*, i8** %23, align 8
  %313 = load i32, i32* %22, align 4
  %314 = add nsw i32 %313, 1
  %315 = call i32 @memcpy(i8* %311, i8* %312, i32 %314)
  %316 = load i32, i32* %22, align 4
  %317 = load i8*, i8** %9, align 8
  %318 = sext i32 %316 to i64
  %319 = getelementptr inbounds i8, i8* %317, i64 %318
  store i8* %319, i8** %9, align 8
  %320 = load i8*, i8** %9, align 8
  store i8 0, i8* %320, align 1
  br label %325

321:                                              ; preds = %304
  %322 = load i32, i32* @XLOG_ERROR, align 4
  %323 = load i8*, i8** %4, align 8
  %324 = call i32 (i32, i8*, i8*, ...) @plog(i32 %322, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* %323)
  store i32 4, i32* %24, align 4
  br label %327

325:                                              ; preds = %310
  br label %326

326:                                              ; preds = %325, %242
  store i32 5, i32* %24, align 4
  br label %327

327:                                              ; preds = %321, %326
  %328 = load i8*, i8** %19, align 8
  call void @llvm.stackrestore(i8* %328)
  %329 = load i32, i32* %24, align 4
  switch i32 %329, label %428 [
    i32 5, label %334
    i32 4, label %386
  ]

330:                                              ; preds = %180, %174
  br label %331

331:                                              ; preds = %330
  %332 = load %struct.opt*, %struct.opt** %12, align 8
  %333 = getelementptr inbounds %struct.opt, %struct.opt* %332, i32 1
  store %struct.opt* %333, %struct.opt** %12, align 8
  br label %169

334:                                              ; preds = %327, %169
  %335 = load %struct.opt*, %struct.opt** %12, align 8
  %336 = getelementptr inbounds %struct.opt, %struct.opt* %335, i32 0, i32 3
  %337 = load i64, i64* %336, align 8
  %338 = icmp ne i64 %337, 0
  br i1 %338, label %378, label %339

339:                                              ; preds = %334
  %340 = call i8* @getenv(i8* %36)
  store i8* %340, i8** %25, align 8
  %341 = load i8*, i8** %25, align 8
  %342 = icmp ne i8* %341, null
  br i1 %342, label %343, label %374

343:                                              ; preds = %339
  %344 = load i8*, i8** %25, align 8
  %345 = call i32 @strlen(i8* %344)
  store i32 %345, i32* %26, align 4
  %346 = load i8*, i8** %9, align 8
  %347 = load i32, i32* %26, align 4
  %348 = add nsw i32 %347, 1
  %349 = call i64 @BUFSPACE(i8* %346, i32 %348)
  %350 = icmp ne i64 %349, 0
  br i1 %350, label %351, label %361

351:                                              ; preds = %343
  %352 = load i8*, i8** %9, align 8
  %353 = load i8*, i8** %25, align 8
  %354 = load i32, i32* %26, align 4
  %355 = add nsw i32 %354, 1
  %356 = call i32 @xstrlcpy(i8* %352, i8* %353, i32 %355)
  %357 = load i32, i32* %26, align 4
  %358 = load i8*, i8** %9, align 8
  %359 = sext i32 %357 to i64
  %360 = getelementptr inbounds i8, i8* %358, i64 %359
  store i8* %360, i8** %9, align 8
  br label %365

361:                                              ; preds = %343
  %362 = load i32, i32* @XLOG_ERROR, align 4
  %363 = load i8*, i8** %4, align 8
  %364 = call i32 (i32, i8*, i8*, ...) @plog(i32 %362, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* %363)
  br label %386

365:                                              ; preds = %351
  %366 = load i32, i32* @D_STR, align 4
  %367 = call i64 @amuDebug(i32 %366)
  %368 = icmp ne i64 %367, 0
  br i1 %368, label %369, label %373

369:                                              ; preds = %365
  %370 = load i32, i32* @XLOG_DEBUG, align 4
  %371 = load i8*, i8** %25, align 8
  %372 = call i32 (i32, i8*, i8*, ...) @plog(i32 %370, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i8* %36, i8* %371)
  br label %373

373:                                              ; preds = %369, %365
  br label %377

374:                                              ; preds = %339
  %375 = load i32, i32* @XLOG_USER, align 4
  %376 = call i32 (i32, i8*, i8*, ...) @plog(i32 %375, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0), i8* %36)
  br label %377

377:                                              ; preds = %374, %373
  br label %378

378:                                              ; preds = %377, %334
  br label %383

379:                                              ; preds = %92
  %380 = load i32, i32* @XLOG_USER, align 4
  %381 = load i8*, i8** %4, align 8
  %382 = call i32 (i32, i8*, i8*, ...) @plog(i32 %380, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0), i8* %381)
  br label %383

383:                                              ; preds = %379, %378
  br label %384

384:                                              ; preds = %383, %91
  br label %39

385:                                              ; preds = %39
  br label %386

386:                                              ; preds = %385, %327, %361, %101, %87, %66
  %387 = load i8*, i8** %10, align 8
  %388 = load i8*, i8** %4, align 8
  %389 = icmp eq i8* %387, %388
  br i1 %389, label %390, label %393

390:                                              ; preds = %386
  %391 = load i8*, i8** %10, align 8
  %392 = call i8* @xstrdup(i8* %391)
  store i8* %392, i8** %4, align 8
  br label %413

393:                                              ; preds = %386
  %394 = load i8*, i8** %10, align 8
  %395 = call i32 @strlen(i8* %394)
  store i32 %395, i32* %27, align 4
  %396 = load i8*, i8** %9, align 8
  %397 = load i32, i32* %27, align 4
  %398 = add nsw i32 %397, 1
  %399 = call i64 @BUFSPACE(i8* %396, i32 %398)
  %400 = icmp ne i64 %399, 0
  br i1 %400, label %401, label %407

401:                                              ; preds = %393
  %402 = load i8*, i8** %9, align 8
  %403 = load i8*, i8** %10, align 8
  %404 = load i32, i32* %27, align 4
  %405 = add nsw i32 %404, 1
  %406 = call i32 @xstrlcpy(i8* %402, i8* %403, i32 %405)
  br label %411

407:                                              ; preds = %393
  %408 = load i32, i32* @XLOG_ERROR, align 4
  %409 = load i8*, i8** %4, align 8
  %410 = call i32 (i32, i8*, i8*, ...) @plog(i32 %408, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* %409)
  br label %411

411:                                              ; preds = %407, %401
  %412 = call i8* @xstrdup(i8* %32)
  store i8* %412, i8** %4, align 8
  br label %413

413:                                              ; preds = %411, %390
  %414 = load i8*, i8** %4, align 8
  %415 = call i32 @normalize_slash(i8* %414)
  %416 = load i32, i32* @D_STR, align 4
  %417 = call i64 @amuDebug(i32 %416)
  %418 = icmp ne i64 %417, 0
  br i1 %418, label %419, label %426

419:                                              ; preds = %413
  %420 = load i32, i32* @XLOG_DEBUG, align 4
  %421 = load i8*, i8** %13, align 8
  %422 = call i32 (i32, i8*, i8*, ...) @plog(i32 %420, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0), i8* %421)
  %423 = load i32, i32* @XLOG_DEBUG, align 4
  %424 = load i8*, i8** %4, align 8
  %425 = call i32 (i32, i8*, i8*, ...) @plog(i32 %423, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i64 0, i64 0), i8* %424)
  br label %426

426:                                              ; preds = %419, %413
  %427 = load i8*, i8** %4, align 8
  store i8* %427, i8** %3, align 8
  store i32 1, i32* %24, align 4
  br label %428

428:                                              ; preds = %426, %327
  %429 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %429)
  %430 = load i8*, i8** %3, align 8
  ret i8* %430
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @strchr(i8*, i8 signext) #2

declare dso_local i64 @BUFSPACE(i8*, i32) #2

declare dso_local i32 @strncpy(i8*, i8*, i32) #2

declare dso_local i32 @plog(i32, i8*, i8*, ...) #2

declare dso_local i64 @STREQ(i64, i8*) #2

declare dso_local i32 @xsnprintf(i8*, i32, i8*, i8*, i8*, i8*) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i8* @strrchr(i8*, i8 signext) #2

declare dso_local i32 @memcpy(i8*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

declare dso_local i8* @getenv(i8*) #2

declare dso_local i32 @xstrlcpy(i8*, i8*, i32) #2

declare dso_local i64 @amuDebug(i32) #2

declare dso_local i8* @xstrdup(i8*) #2

declare dso_local i32 @normalize_slash(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
