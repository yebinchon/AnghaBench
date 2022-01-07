; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_rclex.c_handle_quotes.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_rclex.c_handle_quotes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@rclex_tok = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [27 x i8] c"backslash at end of string\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"use \22\22 to put \22 in a string\00", align 1
@ESCAPE_B = common dso_local global i8* null, align 8
@ESCAPE_F = common dso_local global i32 0, align 4
@ESCAPE_N = common dso_local global i32 0, align 4
@ESCAPE_R = common dso_local global i32 0, align 4
@ESCAPE_T = common dso_local global i32 0, align 4
@ESCAPE_V = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"unrecognized escape sequence\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"unexpected character after '\22'\00", align 1
@rc_lineno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*)* @handle_quotes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @handle_quotes(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %9 = load i8*, i8** @rclex_tok, align 8
  store i8* %9, i8** %3, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = call i64 @strlen(i8* %10)
  %12 = add nsw i64 %11, 1
  %13 = call i8* @get_string(i64 %12)
  store i8* %13, i8** %4, align 8
  %14 = load i8*, i8** %4, align 8
  store i8* %14, i8** %5, align 8
  %15 = load i8*, i8** %3, align 8
  store i8* %15, i8** %6, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp eq i32 %18, 34
  br i1 %19, label %20, label %23

20:                                               ; preds = %1
  %21 = load i8*, i8** %6, align 8
  %22 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %22, i8** %6, align 8
  br label %23

23:                                               ; preds = %20, %1
  br label %24

24:                                               ; preds = %309, %23
  %25 = load i8*, i8** %6, align 8
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %310

29:                                               ; preds = %24
  %30 = load i8*, i8** %6, align 8
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 92
  br i1 %33, label %34, label %238

34:                                               ; preds = %29
  %35 = load i8*, i8** %6, align 8
  %36 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %36, i8** %6, align 8
  %37 = load i8*, i8** %6, align 8
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  switch i32 %39, label %228 [
    i32 0, label %40
    i32 34, label %42
    i32 97, label %48
    i32 98, label %55
    i32 102, label %62
    i32 110, label %69
    i32 114, label %76
    i32 116, label %83
    i32 118, label %90
    i32 92, label %97
    i32 48, label %103
    i32 49, label %103
    i32 50, label %103
    i32 51, label %103
    i32 52, label %103
    i32 53, label %103
    i32 54, label %103
    i32 55, label %103
    i32 120, label %154
    i32 88, label %154
  ]

40:                                               ; preds = %34
  %41 = call i32 @rcparse_warning(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %237

42:                                               ; preds = %34
  %43 = call i32 @rcparse_warning(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %44 = load i8*, i8** %5, align 8
  %45 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %45, i8** %5, align 8
  store i8 34, i8* %44, align 1
  %46 = load i8*, i8** %6, align 8
  %47 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %47, i8** %6, align 8
  br label %237

48:                                               ; preds = %34
  %49 = load i8*, i8** @ESCAPE_B, align 8
  %50 = ptrtoint i8* %49 to i8
  %51 = load i8*, i8** %5, align 8
  %52 = getelementptr inbounds i8, i8* %51, i32 1
  store i8* %52, i8** %5, align 8
  store i8 %50, i8* %51, align 1
  %53 = load i8*, i8** %6, align 8
  %54 = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %54, i8** %6, align 8
  br label %237

55:                                               ; preds = %34
  %56 = load i8*, i8** @ESCAPE_B, align 8
  %57 = ptrtoint i8* %56 to i8
  %58 = load i8*, i8** %5, align 8
  %59 = getelementptr inbounds i8, i8* %58, i32 1
  store i8* %59, i8** %5, align 8
  store i8 %57, i8* %58, align 1
  %60 = load i8*, i8** %6, align 8
  %61 = getelementptr inbounds i8, i8* %60, i32 1
  store i8* %61, i8** %6, align 8
  br label %237

62:                                               ; preds = %34
  %63 = load i32, i32* @ESCAPE_F, align 4
  %64 = trunc i32 %63 to i8
  %65 = load i8*, i8** %5, align 8
  %66 = getelementptr inbounds i8, i8* %65, i32 1
  store i8* %66, i8** %5, align 8
  store i8 %64, i8* %65, align 1
  %67 = load i8*, i8** %6, align 8
  %68 = getelementptr inbounds i8, i8* %67, i32 1
  store i8* %68, i8** %6, align 8
  br label %237

69:                                               ; preds = %34
  %70 = load i32, i32* @ESCAPE_N, align 4
  %71 = trunc i32 %70 to i8
  %72 = load i8*, i8** %5, align 8
  %73 = getelementptr inbounds i8, i8* %72, i32 1
  store i8* %73, i8** %5, align 8
  store i8 %71, i8* %72, align 1
  %74 = load i8*, i8** %6, align 8
  %75 = getelementptr inbounds i8, i8* %74, i32 1
  store i8* %75, i8** %6, align 8
  br label %237

76:                                               ; preds = %34
  %77 = load i32, i32* @ESCAPE_R, align 4
  %78 = trunc i32 %77 to i8
  %79 = load i8*, i8** %5, align 8
  %80 = getelementptr inbounds i8, i8* %79, i32 1
  store i8* %80, i8** %5, align 8
  store i8 %78, i8* %79, align 1
  %81 = load i8*, i8** %6, align 8
  %82 = getelementptr inbounds i8, i8* %81, i32 1
  store i8* %82, i8** %6, align 8
  br label %237

83:                                               ; preds = %34
  %84 = load i32, i32* @ESCAPE_T, align 4
  %85 = trunc i32 %84 to i8
  %86 = load i8*, i8** %5, align 8
  %87 = getelementptr inbounds i8, i8* %86, i32 1
  store i8* %87, i8** %5, align 8
  store i8 %85, i8* %86, align 1
  %88 = load i8*, i8** %6, align 8
  %89 = getelementptr inbounds i8, i8* %88, i32 1
  store i8* %89, i8** %6, align 8
  br label %237

90:                                               ; preds = %34
  %91 = load i32, i32* @ESCAPE_V, align 4
  %92 = trunc i32 %91 to i8
  %93 = load i8*, i8** %5, align 8
  %94 = getelementptr inbounds i8, i8* %93, i32 1
  store i8* %94, i8** %5, align 8
  store i8 %92, i8* %93, align 1
  %95 = load i8*, i8** %6, align 8
  %96 = getelementptr inbounds i8, i8* %95, i32 1
  store i8* %96, i8** %6, align 8
  br label %237

97:                                               ; preds = %34
  %98 = load i8*, i8** %6, align 8
  %99 = getelementptr inbounds i8, i8* %98, i32 1
  store i8* %99, i8** %6, align 8
  %100 = load i8, i8* %98, align 1
  %101 = load i8*, i8** %5, align 8
  %102 = getelementptr inbounds i8, i8* %101, i32 1
  store i8* %102, i8** %5, align 8
  store i8 %100, i8* %101, align 1
  br label %237

103:                                              ; preds = %34, %34, %34, %34, %34, %34, %34, %34
  %104 = load i8*, i8** %6, align 8
  %105 = load i8, i8* %104, align 1
  %106 = sext i8 %105 to i32
  %107 = sub nsw i32 %106, 48
  store i32 %107, i32* %7, align 4
  %108 = load i8*, i8** %6, align 8
  %109 = getelementptr inbounds i8, i8* %108, i32 1
  store i8* %109, i8** %6, align 8
  %110 = load i8*, i8** %6, align 8
  %111 = load i8, i8* %110, align 1
  %112 = sext i8 %111 to i32
  %113 = icmp sge i32 %112, 48
  br i1 %113, label %114, label %149

114:                                              ; preds = %103
  %115 = load i8*, i8** %6, align 8
  %116 = load i8, i8* %115, align 1
  %117 = sext i8 %116 to i32
  %118 = icmp sle i32 %117, 55
  br i1 %118, label %119, label %149

119:                                              ; preds = %114
  %120 = load i32, i32* %7, align 4
  %121 = shl i32 %120, 3
  %122 = load i8*, i8** %6, align 8
  %123 = load i8, i8* %122, align 1
  %124 = sext i8 %123 to i32
  %125 = sub nsw i32 %124, 48
  %126 = or i32 %121, %125
  store i32 %126, i32* %7, align 4
  %127 = load i8*, i8** %6, align 8
  %128 = getelementptr inbounds i8, i8* %127, i32 1
  store i8* %128, i8** %6, align 8
  %129 = load i8*, i8** %6, align 8
  %130 = load i8, i8* %129, align 1
  %131 = sext i8 %130 to i32
  %132 = icmp sge i32 %131, 48
  br i1 %132, label %133, label %148

133:                                              ; preds = %119
  %134 = load i8*, i8** %6, align 8
  %135 = load i8, i8* %134, align 1
  %136 = sext i8 %135 to i32
  %137 = icmp sle i32 %136, 55
  br i1 %137, label %138, label %148

138:                                              ; preds = %133
  %139 = load i32, i32* %7, align 4
  %140 = shl i32 %139, 3
  %141 = load i8*, i8** %6, align 8
  %142 = load i8, i8* %141, align 1
  %143 = sext i8 %142 to i32
  %144 = sub nsw i32 %143, 48
  %145 = or i32 %140, %144
  store i32 %145, i32* %7, align 4
  %146 = load i8*, i8** %6, align 8
  %147 = getelementptr inbounds i8, i8* %146, i32 1
  store i8* %147, i8** %6, align 8
  br label %148

148:                                              ; preds = %138, %133, %119
  br label %149

149:                                              ; preds = %148, %114, %103
  %150 = load i32, i32* %7, align 4
  %151 = trunc i32 %150 to i8
  %152 = load i8*, i8** %5, align 8
  %153 = getelementptr inbounds i8, i8* %152, i32 1
  store i8* %153, i8** %5, align 8
  store i8 %151, i8* %152, align 1
  br label %237

154:                                              ; preds = %34, %34
  %155 = load i8*, i8** %6, align 8
  %156 = getelementptr inbounds i8, i8* %155, i32 1
  store i8* %156, i8** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 2, i32* %8, align 4
  br label %157

157:                                              ; preds = %220, %154
  %158 = load i32, i32* %8, align 4
  %159 = add nsw i32 %158, -1
  store i32 %159, i32* %8, align 4
  %160 = icmp ne i32 %158, 0
  br i1 %160, label %161, label %223

161:                                              ; preds = %157
  %162 = load i8*, i8** %6, align 8
  %163 = load i8, i8* %162, align 1
  %164 = sext i8 %163 to i32
  %165 = icmp sge i32 %164, 48
  br i1 %165, label %166, label %179

166:                                              ; preds = %161
  %167 = load i8*, i8** %6, align 8
  %168 = load i8, i8* %167, align 1
  %169 = sext i8 %168 to i32
  %170 = icmp sle i32 %169, 57
  br i1 %170, label %171, label %179

171:                                              ; preds = %166
  %172 = load i32, i32* %7, align 4
  %173 = shl i32 %172, 4
  %174 = load i8*, i8** %6, align 8
  %175 = load i8, i8* %174, align 1
  %176 = sext i8 %175 to i32
  %177 = sub nsw i32 %176, 48
  %178 = or i32 %173, %177
  store i32 %178, i32* %7, align 4
  br label %220

179:                                              ; preds = %166, %161
  %180 = load i8*, i8** %6, align 8
  %181 = load i8, i8* %180, align 1
  %182 = sext i8 %181 to i32
  %183 = icmp sge i32 %182, 97
  br i1 %183, label %184, label %198

184:                                              ; preds = %179
  %185 = load i8*, i8** %6, align 8
  %186 = load i8, i8* %185, align 1
  %187 = sext i8 %186 to i32
  %188 = icmp sle i32 %187, 102
  br i1 %188, label %189, label %198

189:                                              ; preds = %184
  %190 = load i32, i32* %7, align 4
  %191 = shl i32 %190, 4
  %192 = load i8*, i8** %6, align 8
  %193 = load i8, i8* %192, align 1
  %194 = sext i8 %193 to i32
  %195 = sub nsw i32 %194, 97
  %196 = add nsw i32 %195, 10
  %197 = or i32 %191, %196
  store i32 %197, i32* %7, align 4
  br label %219

198:                                              ; preds = %184, %179
  %199 = load i8*, i8** %6, align 8
  %200 = load i8, i8* %199, align 1
  %201 = sext i8 %200 to i32
  %202 = icmp sge i32 %201, 65
  br i1 %202, label %203, label %217

203:                                              ; preds = %198
  %204 = load i8*, i8** %6, align 8
  %205 = load i8, i8* %204, align 1
  %206 = sext i8 %205 to i32
  %207 = icmp sle i32 %206, 70
  br i1 %207, label %208, label %217

208:                                              ; preds = %203
  %209 = load i32, i32* %7, align 4
  %210 = shl i32 %209, 4
  %211 = load i8*, i8** %6, align 8
  %212 = load i8, i8* %211, align 1
  %213 = sext i8 %212 to i32
  %214 = sub nsw i32 %213, 65
  %215 = add nsw i32 %214, 10
  %216 = or i32 %210, %215
  store i32 %216, i32* %7, align 4
  br label %218

217:                                              ; preds = %203, %198
  br label %223

218:                                              ; preds = %208
  br label %219

219:                                              ; preds = %218, %189
  br label %220

220:                                              ; preds = %219, %171
  %221 = load i8*, i8** %6, align 8
  %222 = getelementptr inbounds i8, i8* %221, i32 1
  store i8* %222, i8** %6, align 8
  br label %157

223:                                              ; preds = %217, %157
  %224 = load i32, i32* %7, align 4
  %225 = trunc i32 %224 to i8
  %226 = load i8*, i8** %5, align 8
  %227 = getelementptr inbounds i8, i8* %226, i32 1
  store i8* %227, i8** %5, align 8
  store i8 %225, i8* %226, align 1
  br label %237

228:                                              ; preds = %34
  %229 = call i32 @rcparse_warning(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %230 = load i8*, i8** %5, align 8
  %231 = getelementptr inbounds i8, i8* %230, i32 1
  store i8* %231, i8** %5, align 8
  store i8 92, i8* %230, align 1
  %232 = load i8*, i8** %6, align 8
  %233 = getelementptr inbounds i8, i8* %232, i32 1
  store i8* %233, i8** %6, align 8
  %234 = load i8, i8* %232, align 1
  %235 = load i8*, i8** %5, align 8
  %236 = getelementptr inbounds i8, i8* %235, i32 1
  store i8* %236, i8** %5, align 8
  store i8 %234, i8* %235, align 1
  br label %237

237:                                              ; preds = %228, %223, %149, %97, %90, %83, %76, %69, %62, %55, %48, %42, %40
  br label %309

238:                                              ; preds = %29
  %239 = load i8*, i8** %6, align 8
  %240 = load i8, i8* %239, align 1
  %241 = sext i8 %240 to i32
  %242 = icmp ne i32 %241, 34
  br i1 %242, label %243, label %249

243:                                              ; preds = %238
  %244 = load i8*, i8** %6, align 8
  %245 = getelementptr inbounds i8, i8* %244, i32 1
  store i8* %245, i8** %6, align 8
  %246 = load i8, i8* %244, align 1
  %247 = load i8*, i8** %5, align 8
  %248 = getelementptr inbounds i8, i8* %247, i32 1
  store i8* %248, i8** %5, align 8
  store i8 %246, i8* %247, align 1
  br label %308

249:                                              ; preds = %238
  %250 = load i8*, i8** %6, align 8
  %251 = getelementptr inbounds i8, i8* %250, i64 1
  %252 = load i8, i8* %251, align 1
  %253 = sext i8 %252 to i32
  %254 = icmp eq i32 %253, 0
  br i1 %254, label %255, label %256

255:                                              ; preds = %249
  br label %310

256:                                              ; preds = %249
  %257 = load i8*, i8** %6, align 8
  %258 = getelementptr inbounds i8, i8* %257, i64 1
  %259 = load i8, i8* %258, align 1
  %260 = sext i8 %259 to i32
  %261 = icmp eq i32 %260, 34
  br i1 %261, label %262, label %267

262:                                              ; preds = %256
  %263 = load i8*, i8** %5, align 8
  %264 = getelementptr inbounds i8, i8* %263, i32 1
  store i8* %264, i8** %5, align 8
  store i8 34, i8* %263, align 1
  %265 = load i8*, i8** %6, align 8
  %266 = getelementptr inbounds i8, i8* %265, i64 2
  store i8* %266, i8** %6, align 8
  br label %306

267:                                              ; preds = %256
  %268 = call i32 @rcparse_warning(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  %269 = load i8*, i8** %6, align 8
  %270 = getelementptr inbounds i8, i8* %269, i32 1
  store i8* %270, i8** %6, align 8
  %271 = load i8*, i8** %6, align 8
  %272 = load i8, i8* %271, align 1
  %273 = call i32 @ISSPACE(i8 signext %272)
  %274 = call i32 @assert(i32 %273)
  br label %275

275:                                              ; preds = %288, %267
  %276 = load i8*, i8** %6, align 8
  %277 = load i8, i8* %276, align 1
  %278 = call i32 @ISSPACE(i8 signext %277)
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %280, label %291

280:                                              ; preds = %275
  %281 = load i8*, i8** %6, align 8
  %282 = load i8, i8* %281, align 1
  %283 = sext i8 %282 to i32
  %284 = icmp eq i32 %283, 10
  br i1 %284, label %285, label %288

285:                                              ; preds = %280
  %286 = load i32, i32* @rc_lineno, align 4
  %287 = add nsw i32 %286, 1
  store i32 %287, i32* @rc_lineno, align 4
  br label %288

288:                                              ; preds = %285, %280
  %289 = load i8*, i8** %6, align 8
  %290 = getelementptr inbounds i8, i8* %289, i32 1
  store i8* %290, i8** %6, align 8
  br label %275

291:                                              ; preds = %275
  %292 = load i8*, i8** %6, align 8
  %293 = load i8, i8* %292, align 1
  %294 = sext i8 %293 to i32
  %295 = icmp eq i32 %294, 0
  br i1 %295, label %296, label %297

296:                                              ; preds = %291
  br label %310

297:                                              ; preds = %291
  %298 = load i8*, i8** %6, align 8
  %299 = load i8, i8* %298, align 1
  %300 = sext i8 %299 to i32
  %301 = icmp eq i32 %300, 34
  %302 = zext i1 %301 to i32
  %303 = call i32 @assert(i32 %302)
  %304 = load i8*, i8** %6, align 8
  %305 = getelementptr inbounds i8, i8* %304, i32 1
  store i8* %305, i8** %6, align 8
  br label %306

306:                                              ; preds = %297, %262
  br label %307

307:                                              ; preds = %306
  br label %308

308:                                              ; preds = %307, %243
  br label %309

309:                                              ; preds = %308, %237
  br label %24

310:                                              ; preds = %296, %255, %24
  %311 = load i8*, i8** %5, align 8
  store i8 0, i8* %311, align 1
  %312 = load i8*, i8** %5, align 8
  %313 = load i8*, i8** %4, align 8
  %314 = ptrtoint i8* %312 to i64
  %315 = ptrtoint i8* %313 to i64
  %316 = sub i64 %314, %315
  %317 = trunc i64 %316 to i32
  %318 = load i32*, i32** %2, align 8
  store i32 %317, i32* %318, align 4
  %319 = load i8*, i8** %4, align 8
  ret i8* %319
}

declare dso_local i8* @get_string(i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @rcparse_warning(i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @ISSPACE(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
