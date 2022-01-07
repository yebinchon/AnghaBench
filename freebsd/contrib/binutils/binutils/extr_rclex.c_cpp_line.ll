; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_rclex.c_cpp_line.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_rclex.c_cpp_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@rclex_tok = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [7 x i8] c"pragma\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"code_page\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"DEFAULT\00", align 1
@wind_default_codepage = common dso_local global i64 0, align 8
@wind_current_codepage = common dso_local global i64 0, align 8
@CP_UTF16 = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [47 x i8] c"invalid value specified for pragma code_page.\0A\00", align 1
@rc_lineno = common dso_local global i32 0, align 4
@rc_filename = common dso_local global i8* null, align 8
@initial_fn = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [3 x i8] c".h\00", align 1
@suppress_cpp_data = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @cpp_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cpp_line() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = load i8*, i8** @rclex_tok, align 8
  store i8* %9, i8** %1, align 8
  %10 = load i8*, i8** %1, align 8
  %11 = getelementptr inbounds i8, i8* %10, i32 1
  store i8* %11, i8** %1, align 8
  br label %12

12:                                               ; preds = %17, %0
  %13 = load i8*, i8** %1, align 8
  %14 = load i8, i8* %13, align 1
  %15 = call i64 @ISSPACE(i8 signext %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %12
  %18 = load i8*, i8** %1, align 8
  %19 = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %19, i8** %1, align 8
  br label %12

20:                                               ; preds = %12
  %21 = load i8*, i8** %1, align 8
  %22 = call i64 @strlen(i8* %21)
  store i64 %22, i64* %5, align 8
  store i64 6, i64* %6, align 8
  %23 = load i64, i64* %5, align 8
  %24 = load i64, i64* %6, align 8
  %25 = icmp ugt i64 %23, %24
  br i1 %25, label %26, label %210

26:                                               ; preds = %20
  %27 = load i8*, i8** %1, align 8
  %28 = load i64, i64* %6, align 8
  %29 = call i64 @memcmp(i8* %27, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i64 %28)
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %210

31:                                               ; preds = %26
  %32 = load i8*, i8** %1, align 8
  %33 = load i64, i64* %6, align 8
  %34 = getelementptr inbounds i8, i8* %32, i64 %33
  %35 = load i8, i8* %34, align 1
  %36 = call i64 @ISSPACE(i8 signext %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %210

38:                                               ; preds = %31
  %39 = load i64, i64* %6, align 8
  %40 = add i64 %39, 1
  %41 = load i8*, i8** %1, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 %40
  store i8* %42, i8** %1, align 8
  br label %43

43:                                               ; preds = %48, %38
  %44 = load i8*, i8** %1, align 8
  %45 = load i8, i8* %44, align 1
  %46 = call i64 @ISSPACE(i8 signext %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %43
  %49 = load i8*, i8** %1, align 8
  %50 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %50, i8** %1, align 8
  br label %43

51:                                               ; preds = %43
  %52 = load i8*, i8** %1, align 8
  %53 = call i64 @strlen(i8* %52)
  store i64 %53, i64* %5, align 8
  store i64 9, i64* %6, align 8
  %54 = load i64, i64* %5, align 8
  %55 = load i64, i64* %6, align 8
  %56 = icmp ule i64 %54, %55
  br i1 %56, label %62, label %57

57:                                               ; preds = %51
  %58 = load i8*, i8** %1, align 8
  %59 = load i64, i64* %6, align 8
  %60 = call i64 @memcmp(i8* %58, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i64 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %57, %51
  br label %303

63:                                               ; preds = %57
  %64 = load i64, i64* %6, align 8
  %65 = load i8*, i8** %1, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 %64
  store i8* %66, i8** %1, align 8
  br label %67

67:                                               ; preds = %72, %63
  %68 = load i8*, i8** %1, align 8
  %69 = load i8, i8* %68, align 1
  %70 = call i64 @ISSPACE(i8 signext %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %67
  %73 = load i8*, i8** %1, align 8
  %74 = getelementptr inbounds i8, i8* %73, i32 1
  store i8* %74, i8** %1, align 8
  br label %67

75:                                               ; preds = %67
  %76 = load i8*, i8** %1, align 8
  %77 = load i8, i8* %76, align 1
  %78 = sext i8 %77 to i32
  %79 = icmp ne i32 %78, 40
  br i1 %79, label %80, label %81

80:                                               ; preds = %75
  br label %303

81:                                               ; preds = %75
  %82 = load i8*, i8** %1, align 8
  %83 = getelementptr inbounds i8, i8* %82, i32 1
  store i8* %83, i8** %1, align 8
  br label %84

84:                                               ; preds = %89, %81
  %85 = load i8*, i8** %1, align 8
  %86 = load i8, i8* %85, align 1
  %87 = call i64 @ISSPACE(i8 signext %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %84
  %90 = load i8*, i8** %1, align 8
  %91 = getelementptr inbounds i8, i8* %90, i32 1
  store i8* %91, i8** %1, align 8
  br label %84

92:                                               ; preds = %84
  %93 = load i8*, i8** %1, align 8
  %94 = load i8, i8* %93, align 1
  %95 = sext i8 %94 to i32
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %101, label %97

97:                                               ; preds = %92
  %98 = load i8*, i8** %1, align 8
  %99 = call i8* @strchr(i8* %98, i8 signext 41)
  store i8* %99, i8** %7, align 8
  %100 = icmp eq i8* %99, null
  br i1 %100, label %101, label %102

101:                                              ; preds = %97, %92
  br label %303

102:                                              ; preds = %97
  %103 = load i8*, i8** %7, align 8
  %104 = load i8*, i8** %1, align 8
  %105 = ptrtoint i8* %103 to i64
  %106 = ptrtoint i8* %104 to i64
  %107 = sub i64 %105, %106
  store i64 %107, i64* %5, align 8
  %108 = load i64, i64* %5, align 8
  %109 = add i64 %108, 1
  %110 = trunc i64 %109 to i32
  %111 = call i8* @xmalloc(i32 %110)
  store i8* %111, i8** %4, align 8
  %112 = load i64, i64* %5, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %119

114:                                              ; preds = %102
  %115 = load i8*, i8** %4, align 8
  %116 = load i8*, i8** %1, align 8
  %117 = load i64, i64* %5, align 8
  %118 = call i32 @memcpy(i8* %115, i8* %116, i64 %117)
  br label %119

119:                                              ; preds = %114, %102
  %120 = load i8*, i8** %4, align 8
  %121 = load i64, i64* %5, align 8
  %122 = getelementptr inbounds i8, i8* %120, i64 %121
  store i8 0, i8* %122, align 1
  br label %123

123:                                              ; preds = %146, %119
  %124 = load i64, i64* %5, align 8
  %125 = icmp ugt i64 %124, 0
  br i1 %125, label %126, label %144

126:                                              ; preds = %123
  %127 = load i8*, i8** %4, align 8
  %128 = load i64, i64* %5, align 8
  %129 = sub i64 %128, 1
  %130 = getelementptr inbounds i8, i8* %127, i64 %129
  %131 = load i8, i8* %130, align 1
  %132 = sext i8 %131 to i32
  %133 = icmp sgt i32 %132, 0
  br i1 %133, label %134, label %142

134:                                              ; preds = %126
  %135 = load i8*, i8** %4, align 8
  %136 = load i64, i64* %5, align 8
  %137 = sub i64 %136, 1
  %138 = getelementptr inbounds i8, i8* %135, i64 %137
  %139 = load i8, i8* %138, align 1
  %140 = sext i8 %139 to i32
  %141 = icmp sle i32 %140, 32
  br label %142

142:                                              ; preds = %134, %126
  %143 = phi i1 [ false, %126 ], [ %141, %134 ]
  br label %144

144:                                              ; preds = %142, %123
  %145 = phi i1 [ false, %123 ], [ %143, %142 ]
  br i1 %145, label %146, label %151

146:                                              ; preds = %144
  %147 = load i8*, i8** %4, align 8
  %148 = load i64, i64* %5, align 8
  %149 = add i64 %148, -1
  store i64 %149, i64* %5, align 8
  %150 = getelementptr inbounds i8, i8* %147, i64 %149
  store i8 0, i8* %150, align 1
  br label %123

151:                                              ; preds = %144
  %152 = load i64, i64* %5, align 8
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %161

154:                                              ; preds = %151
  %155 = load i64, i64* %5, align 8
  %156 = icmp eq i64 %155, 7
  br i1 %156, label %157, label %163

157:                                              ; preds = %154
  %158 = load i8*, i8** %4, align 8
  %159 = call i64 @strcasecmp(i8* %158, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %160 = icmp eq i64 %159, 0
  br i1 %160, label %161, label %163

161:                                              ; preds = %157, %151
  %162 = load i64, i64* @wind_default_codepage, align 8
  store i64 %162, i64* @wind_current_codepage, align 8
  br label %207

163:                                              ; preds = %157, %154
  %164 = load i64, i64* %5, align 8
  %165 = icmp ugt i64 %164, 0
  br i1 %165, label %166, label %206

166:                                              ; preds = %163
  %167 = load i8*, i8** %4, align 8
  %168 = getelementptr inbounds i8, i8* %167, i64 0
  %169 = load i8, i8* %168, align 1
  %170 = sext i8 %169 to i32
  %171 = icmp eq i32 %170, 48
  br i1 %171, label %172, label %189

172:                                              ; preds = %166
  %173 = load i8*, i8** %4, align 8
  %174 = getelementptr inbounds i8, i8* %173, i64 1
  %175 = load i8, i8* %174, align 1
  %176 = sext i8 %175 to i32
  %177 = icmp eq i32 %176, 120
  br i1 %177, label %184, label %178

178:                                              ; preds = %172
  %179 = load i8*, i8** %4, align 8
  %180 = getelementptr inbounds i8, i8* %179, i64 1
  %181 = load i8, i8* %180, align 1
  %182 = sext i8 %181 to i32
  %183 = icmp eq i32 %182, 88
  br i1 %183, label %184, label %189

184:                                              ; preds = %178, %172
  %185 = load i8*, i8** %4, align 8
  %186 = getelementptr inbounds i8, i8* %185, i64 2
  %187 = call i32 @strtol(i8* %186, i8** null, i32 16)
  %188 = sext i32 %187 to i64
  store i64 %188, i64* %8, align 8
  br label %193

189:                                              ; preds = %178, %166
  %190 = load i8*, i8** %4, align 8
  %191 = call i32 @strtol(i8* %190, i8** null, i32 10)
  %192 = sext i32 %191 to i64
  store i64 %192, i64* %8, align 8
  br label %193

193:                                              ; preds = %189, %184
  %194 = load i64, i64* %8, align 8
  %195 = load i64, i64* @CP_UTF16, align 8
  %196 = icmp eq i64 %194, %195
  br i1 %196, label %201, label %197

197:                                              ; preds = %193
  %198 = load i64, i64* %8, align 8
  %199 = call i32 @unicode_is_valid_codepage(i64 %198)
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %204, label %201

201:                                              ; preds = %197, %193
  %202 = call i32 @_(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0))
  %203 = call i32 @fatal(i32 %202)
  br label %204

204:                                              ; preds = %201, %197
  %205 = load i64, i64* %8, align 8
  store i64 %205, i64* @wind_current_codepage, align 8
  br label %206

206:                                              ; preds = %204, %163
  br label %207

207:                                              ; preds = %206, %161
  %208 = load i8*, i8** %4, align 8
  %209 = call i32 @free(i8* %208)
  br label %303

210:                                              ; preds = %31, %26, %20
  %211 = load i8*, i8** %1, align 8
  %212 = call i32 @strtol(i8* %211, i8** %3, i32 0)
  store i32 %212, i32* %2, align 4
  %213 = load i8*, i8** %3, align 8
  %214 = load i8, i8* %213, align 1
  %215 = sext i8 %214 to i32
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %223

217:                                              ; preds = %210
  %218 = load i8*, i8** %3, align 8
  %219 = load i8, i8* %218, align 1
  %220 = call i64 @ISSPACE(i8 signext %219)
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %223, label %222

222:                                              ; preds = %217
  br label %303

223:                                              ; preds = %217, %210
  %224 = load i32, i32* %2, align 4
  %225 = sub nsw i32 %224, 1
  store i32 %225, i32* @rc_lineno, align 4
  %226 = load i8*, i8** %3, align 8
  store i8* %226, i8** %1, align 8
  br label %227

227:                                              ; preds = %232, %223
  %228 = load i8*, i8** %1, align 8
  %229 = load i8, i8* %228, align 1
  %230 = call i64 @ISSPACE(i8 signext %229)
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %232, label %235

232:                                              ; preds = %227
  %233 = load i8*, i8** %1, align 8
  %234 = getelementptr inbounds i8, i8* %233, i32 1
  store i8* %234, i8** %1, align 8
  br label %227

235:                                              ; preds = %227
  %236 = load i8*, i8** %1, align 8
  %237 = load i8, i8* %236, align 1
  %238 = sext i8 %237 to i32
  %239 = icmp ne i32 %238, 34
  br i1 %239, label %240, label %241

240:                                              ; preds = %235
  br label %303

241:                                              ; preds = %235
  %242 = load i8*, i8** %1, align 8
  %243 = getelementptr inbounds i8, i8* %242, i32 1
  store i8* %243, i8** %1, align 8
  %244 = load i8*, i8** %1, align 8
  %245 = call i8* @strchr(i8* %244, i8 signext 34)
  store i8* %245, i8** %3, align 8
  %246 = load i8*, i8** %3, align 8
  %247 = icmp eq i8* %246, null
  br i1 %247, label %248, label %249

248:                                              ; preds = %241
  br label %303

249:                                              ; preds = %241
  %250 = load i8*, i8** %3, align 8
  %251 = load i8*, i8** %1, align 8
  %252 = ptrtoint i8* %250 to i64
  %253 = ptrtoint i8* %251 to i64
  %254 = sub i64 %252, %253
  %255 = add nsw i64 %254, 1
  %256 = trunc i64 %255 to i32
  %257 = call i8* @xmalloc(i32 %256)
  store i8* %257, i8** %4, align 8
  %258 = load i8*, i8** %4, align 8
  %259 = load i8*, i8** %1, align 8
  %260 = load i8*, i8** %3, align 8
  %261 = load i8*, i8** %1, align 8
  %262 = ptrtoint i8* %260 to i64
  %263 = ptrtoint i8* %261 to i64
  %264 = sub i64 %262, %263
  %265 = trunc i64 %264 to i32
  %266 = call i32 @strncpy(i8* %258, i8* %259, i32 %265)
  %267 = load i8*, i8** %4, align 8
  %268 = load i8*, i8** %3, align 8
  %269 = load i8*, i8** %1, align 8
  %270 = ptrtoint i8* %268 to i64
  %271 = ptrtoint i8* %269 to i64
  %272 = sub i64 %270, %271
  %273 = getelementptr inbounds i8, i8* %267, i64 %272
  store i8 0, i8* %273, align 1
  %274 = load i8*, i8** @rc_filename, align 8
  %275 = call i32 @free(i8* %274)
  %276 = load i8*, i8** %4, align 8
  store i8* %276, i8** @rc_filename, align 8
  %277 = load i8*, i8** @initial_fn, align 8
  %278 = icmp ne i8* %277, null
  br i1 %278, label %288, label %279

279:                                              ; preds = %249
  %280 = load i8*, i8** %4, align 8
  %281 = call i64 @strlen(i8* %280)
  %282 = add i64 %281, 1
  %283 = trunc i64 %282 to i32
  %284 = call i8* @xmalloc(i32 %283)
  store i8* %284, i8** @initial_fn, align 8
  %285 = load i8*, i8** @initial_fn, align 8
  %286 = load i8*, i8** %4, align 8
  %287 = call i32 @strcpy(i8* %285, i8* %286)
  br label %288

288:                                              ; preds = %279, %249
  %289 = load i8*, i8** @initial_fn, align 8
  %290 = load i8*, i8** %4, align 8
  %291 = call i64 @strcmp(i8* %289, i8* %290)
  %292 = icmp eq i64 %291, 0
  br i1 %292, label %301, label %293

293:                                              ; preds = %288
  %294 = load i8*, i8** %4, align 8
  %295 = load i8*, i8** %4, align 8
  %296 = call i64 @strlen(i8* %295)
  %297 = getelementptr inbounds i8, i8* %294, i64 %296
  %298 = getelementptr inbounds i8, i8* %297, i64 -2
  %299 = call i64 @strcmp(i8* %298, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %300 = icmp ne i64 %299, 0
  br i1 %300, label %301, label %302

301:                                              ; preds = %293, %288
  store i32 0, i32* @suppress_cpp_data, align 4
  br label %303

302:                                              ; preds = %293
  store i32 1, i32* @suppress_cpp_data, align 4
  br label %303

303:                                              ; preds = %62, %80, %101, %207, %222, %240, %248, %302, %301
  ret void
}

declare dso_local i64 @ISSPACE(i8 signext) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @memcmp(i8*, i8*, i64) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i8* @xmalloc(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i64 @strcasecmp(i8*, i8*) #1

declare dso_local i32 @strtol(i8*, i8**, i32) #1

declare dso_local i32 @unicode_is_valid_codepage(i64) #1

declare dso_local i32 @fatal(i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
