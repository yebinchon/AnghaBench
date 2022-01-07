; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bzip2/extr_bzip2.c_uncompressStream.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bzip2/extr_bzip2.c_uncompressStream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BZ_MAX_UNUSED = common dso_local global i32 0, align 4
@True = common dso_local global i64 0, align 8
@verbosity = common dso_local global i32 0, align 4
@smallMode = common dso_local global i64 0, align 8
@BZ_OK = common dso_local global i64 0, align 8
@BZ_STREAM_END = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"decompress:bzReadGetUnused\00", align 1
@stdout = common dso_local global i32* null, align 8
@EOF = common dso_local global i64 0, align 8
@outputHandleJustInCase = common dso_local global i32* null, align 8
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"\0A    \00", align 1
@forceOverwrite = common dso_local global i64 0, align 8
@stdin = common dso_local global i32* null, align 8
@False = common dso_local global i64 0, align 8
@noisy = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [45 x i8] c"\0A%s: %s: trailing garbage after EOF ignored\0A\00", align 1
@progName = common dso_local global i8* null, align 8
@inName = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [28 x i8] c"decompress:unexpected error\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"decompress:end\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i32*)* @uncompressStream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @uncompressStream(i32* %0, i32* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca [5000 x i32], align 16
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* null, i32** %6, align 8
  %21 = load i32, i32* @BZ_MAX_UNUSED, align 4
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %14, align 8
  %24 = alloca i32, i64 %22, align 16
  store i64 %22, i64* %15, align 8
  store i64 0, i64* %16, align 8
  store i64 0, i64* %11, align 8
  %25 = load i32*, i32** %5, align 8
  %26 = call i32 @SET_BINARY_MODE(i32* %25)
  %27 = load i32*, i32** %4, align 8
  %28 = call i32 @SET_BINARY_MODE(i32* %27)
  %29 = load i32*, i32** %5, align 8
  %30 = call i64 @ferror(i32* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %2
  br label %241

33:                                               ; preds = %2
  %34 = load i32*, i32** %4, align 8
  %35 = call i64 @ferror(i32* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  br label %241

38:                                               ; preds = %33
  br label %39

39:                                               ; preds = %138, %38
  %40 = load i64, i64* @True, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %139

42:                                               ; preds = %39
  %43 = load i32*, i32** %4, align 8
  %44 = load i32, i32* @verbosity, align 4
  %45 = load i64, i64* @smallMode, align 8
  %46 = trunc i64 %45 to i32
  %47 = load i64, i64* %16, align 8
  %48 = call i32* @BZ2_bzReadOpen(i64* %7, i32* %43, i32 %44, i32 %46, i32* %24, i64 %47)
  store i32* %48, i32** %6, align 8
  %49 = load i32*, i32** %6, align 8
  %50 = icmp eq i32* %49, null
  br i1 %50, label %55, label %51

51:                                               ; preds = %42
  %52 = load i64, i64* %7, align 8
  %53 = load i64, i64* @BZ_OK, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %51, %42
  br label %234

56:                                               ; preds = %51
  %57 = load i64, i64* %11, align 8
  %58 = add nsw i64 %57, 1
  store i64 %58, i64* %11, align 8
  br label %59

59:                                               ; preds = %91, %56
  %60 = load i64, i64* %7, align 8
  %61 = load i64, i64* @BZ_OK, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %92

63:                                               ; preds = %59
  %64 = load i32*, i32** %6, align 8
  %65 = getelementptr inbounds [5000 x i32], [5000 x i32]* %13, i64 0, i64 0
  %66 = call i64 @BZ2_bzRead(i64* %7, i32* %64, i32* %65, i32 5000)
  store i64 %66, i64* %10, align 8
  %67 = load i64, i64* %7, align 8
  %68 = icmp eq i64 %67, 131
  br i1 %68, label %69, label %70

69:                                               ; preds = %63
  br label %196

70:                                               ; preds = %63
  %71 = load i64, i64* %7, align 8
  %72 = load i64, i64* @BZ_OK, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %78, label %74

74:                                               ; preds = %70
  %75 = load i64, i64* %7, align 8
  %76 = load i64, i64* @BZ_STREAM_END, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %86

78:                                               ; preds = %74, %70
  %79 = load i64, i64* %10, align 8
  %80 = icmp sgt i64 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %78
  %82 = getelementptr inbounds [5000 x i32], [5000 x i32]* %13, i64 0, i64 0
  %83 = load i64, i64* %10, align 8
  %84 = load i32*, i32** %5, align 8
  %85 = call i32 @fwrite(i32* %82, i32 4, i64 %83, i32* %84)
  br label %86

86:                                               ; preds = %81, %78, %74
  %87 = load i32*, i32** %5, align 8
  %88 = call i64 @ferror(i32* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %86
  br label %241

91:                                               ; preds = %86
  br label %59

92:                                               ; preds = %59
  %93 = load i64, i64* %7, align 8
  %94 = load i64, i64* @BZ_STREAM_END, align 8
  %95 = icmp ne i64 %93, %94
  br i1 %95, label %96, label %97

96:                                               ; preds = %92
  br label %234

97:                                               ; preds = %92
  %98 = load i32*, i32** %6, align 8
  %99 = call i32 @BZ2_bzReadGetUnused(i64* %7, i32* %98, i8** %17, i64* %16)
  %100 = load i64, i64* %7, align 8
  %101 = load i64, i64* @BZ_OK, align 8
  %102 = icmp ne i64 %100, %101
  br i1 %102, label %103, label %105

103:                                              ; preds = %97
  %104 = call i32 @panic(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %105

105:                                              ; preds = %103, %97
  %106 = load i8*, i8** %17, align 8
  %107 = bitcast i8* %106 to i32*
  store i32* %107, i32** %18, align 8
  store i64 0, i64* %12, align 8
  br label %108

108:                                              ; preds = %119, %105
  %109 = load i64, i64* %12, align 8
  %110 = load i64, i64* %16, align 8
  %111 = icmp slt i64 %109, %110
  br i1 %111, label %112, label %122

112:                                              ; preds = %108
  %113 = load i32*, i32** %18, align 8
  %114 = load i64, i64* %12, align 8
  %115 = getelementptr inbounds i32, i32* %113, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = load i64, i64* %12, align 8
  %118 = getelementptr inbounds i32, i32* %24, i64 %117
  store i32 %116, i32* %118, align 4
  br label %119

119:                                              ; preds = %112
  %120 = load i64, i64* %12, align 8
  %121 = add nsw i64 %120, 1
  store i64 %121, i64* %12, align 8
  br label %108

122:                                              ; preds = %108
  %123 = load i32*, i32** %6, align 8
  %124 = call i32 @BZ2_bzReadClose(i64* %7, i32* %123)
  %125 = load i64, i64* %7, align 8
  %126 = load i64, i64* @BZ_OK, align 8
  %127 = icmp ne i64 %125, %126
  br i1 %127, label %128, label %130

128:                                              ; preds = %122
  %129 = call i32 @panic(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %130

130:                                              ; preds = %128, %122
  %131 = load i64, i64* %16, align 8
  %132 = icmp eq i64 %131, 0
  br i1 %132, label %133, label %138

133:                                              ; preds = %130
  %134 = load i32*, i32** %4, align 8
  %135 = call i64 @myfeof(i32* %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %133
  br label %139

138:                                              ; preds = %133, %130
  br label %39

139:                                              ; preds = %137, %39
  br label %140

140:                                              ; preds = %232, %139
  %141 = load i32*, i32** %4, align 8
  %142 = call i64 @ferror(i32* %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %140
  br label %241

145:                                              ; preds = %140
  %146 = load i32*, i32** %5, align 8
  %147 = load i32*, i32** @stdout, align 8
  %148 = icmp ne i32* %146, %147
  br i1 %148, label %149, label %158

149:                                              ; preds = %145
  %150 = load i32*, i32** %5, align 8
  %151 = call i64 @fileno(i32* %150)
  store i64 %151, i64* %19, align 8
  %152 = load i64, i64* %19, align 8
  %153 = icmp slt i64 %152, 0
  br i1 %153, label %154, label %155

154:                                              ; preds = %149
  br label %241

155:                                              ; preds = %149
  %156 = load i64, i64* %19, align 8
  %157 = call i32 @applySavedFileAttrToOutputFile(i64 %156)
  br label %158

158:                                              ; preds = %155, %145
  %159 = load i32*, i32** %4, align 8
  %160 = call i64 @fclose(i32* %159)
  store i64 %160, i64* %9, align 8
  %161 = load i64, i64* %9, align 8
  %162 = load i64, i64* @EOF, align 8
  %163 = icmp eq i64 %161, %162
  br i1 %163, label %164, label %165

164:                                              ; preds = %158
  br label %241

165:                                              ; preds = %158
  %166 = load i32*, i32** %5, align 8
  %167 = call i64 @ferror(i32* %166)
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %170

169:                                              ; preds = %165
  br label %241

170:                                              ; preds = %165
  %171 = load i32*, i32** %5, align 8
  %172 = call i64 @fflush(i32* %171)
  store i64 %172, i64* %9, align 8
  %173 = load i64, i64* %9, align 8
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %176

175:                                              ; preds = %170
  br label %241

176:                                              ; preds = %170
  %177 = load i32*, i32** %5, align 8
  %178 = load i32*, i32** @stdout, align 8
  %179 = icmp ne i32* %177, %178
  br i1 %179, label %180, label %188

180:                                              ; preds = %176
  %181 = load i32*, i32** %5, align 8
  %182 = call i64 @fclose(i32* %181)
  store i64 %182, i64* %9, align 8
  store i32* null, i32** @outputHandleJustInCase, align 8
  %183 = load i64, i64* %9, align 8
  %184 = load i64, i64* @EOF, align 8
  %185 = icmp eq i64 %183, %184
  br i1 %185, label %186, label %187

186:                                              ; preds = %180
  br label %241

187:                                              ; preds = %180
  br label %188

188:                                              ; preds = %187, %176
  store i32* null, i32** @outputHandleJustInCase, align 8
  %189 = load i32, i32* @verbosity, align 4
  %190 = icmp sge i32 %189, 2
  br i1 %190, label %191, label %194

191:                                              ; preds = %188
  %192 = load i32, i32* @stderr, align 4
  %193 = call i32 (i32, i8*, ...) @fprintf(i32 %192, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  br label %194

194:                                              ; preds = %191, %188
  %195 = load i64, i64* @True, align 8
  store i64 %195, i64* %3, align 8
  store i32 1, i32* %20, align 4
  br label %283

196:                                              ; preds = %69
  %197 = load i64, i64* @forceOverwrite, align 8
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %233

199:                                              ; preds = %196
  %200 = load i32*, i32** %4, align 8
  %201 = call i32 @rewind(i32* %200)
  br label %202

202:                                              ; preds = %231, %199
  %203 = load i64, i64* @True, align 8
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %232

205:                                              ; preds = %202
  %206 = load i32*, i32** %4, align 8
  %207 = call i64 @myfeof(i32* %206)
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %209, label %210

209:                                              ; preds = %205
  br label %232

210:                                              ; preds = %205
  %211 = getelementptr inbounds [5000 x i32], [5000 x i32]* %13, i64 0, i64 0
  %212 = load i32*, i32** %4, align 8
  %213 = call i64 @fread(i32* %211, i32 4, i32 5000, i32* %212)
  store i64 %213, i64* %10, align 8
  %214 = load i32*, i32** %4, align 8
  %215 = call i64 @ferror(i32* %214)
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %218

217:                                              ; preds = %210
  br label %241

218:                                              ; preds = %210
  %219 = load i64, i64* %10, align 8
  %220 = icmp sgt i64 %219, 0
  br i1 %220, label %221, label %226

221:                                              ; preds = %218
  %222 = getelementptr inbounds [5000 x i32], [5000 x i32]* %13, i64 0, i64 0
  %223 = load i64, i64* %10, align 8
  %224 = load i32*, i32** %5, align 8
  %225 = call i32 @fwrite(i32* %222, i32 4, i64 %223, i32* %224)
  br label %226

226:                                              ; preds = %221, %218
  %227 = load i32*, i32** %5, align 8
  %228 = call i64 @ferror(i32* %227)
  %229 = icmp ne i64 %228, 0
  br i1 %229, label %230, label %231

230:                                              ; preds = %226
  br label %241

231:                                              ; preds = %226
  br label %202

232:                                              ; preds = %209, %202
  br label %140

233:                                              ; preds = %196
  br label %234

234:                                              ; preds = %233, %96, %55
  %235 = load i32*, i32** %6, align 8
  %236 = call i32 @BZ2_bzReadClose(i64* %8, i32* %235)
  %237 = load i64, i64* %7, align 8
  switch i64 %237, label %278 [
    i64 133, label %238
    i64 130, label %240
    i64 132, label %243
    i64 129, label %245
    i64 128, label %247
    i64 131, label %249
  ]

238:                                              ; preds = %234
  %239 = call i32 (...) @configError()
  br label %280

240:                                              ; preds = %234
  br label %241

241:                                              ; preds = %240, %230, %217, %186, %175, %169, %164, %154, %144, %90, %37, %32
  %242 = call i32 (...) @ioError()
  br label %280

243:                                              ; preds = %234
  %244 = call i32 (...) @crcError()
  br label %245

245:                                              ; preds = %234, %243
  %246 = call i32 (...) @outOfMemory()
  br label %247

247:                                              ; preds = %234, %245
  %248 = call i32 (...) @compressedStreamEOF()
  br label %249

249:                                              ; preds = %234, %247
  %250 = load i32*, i32** %4, align 8
  %251 = load i32*, i32** @stdin, align 8
  %252 = icmp ne i32* %250, %251
  br i1 %252, label %253, label %256

253:                                              ; preds = %249
  %254 = load i32*, i32** %4, align 8
  %255 = call i64 @fclose(i32* %254)
  br label %256

256:                                              ; preds = %253, %249
  %257 = load i32*, i32** %5, align 8
  %258 = load i32*, i32** @stdout, align 8
  %259 = icmp ne i32* %257, %258
  br i1 %259, label %260, label %263

260:                                              ; preds = %256
  %261 = load i32*, i32** %5, align 8
  %262 = call i64 @fclose(i32* %261)
  br label %263

263:                                              ; preds = %260, %256
  %264 = load i64, i64* %11, align 8
  %265 = icmp eq i64 %264, 1
  br i1 %265, label %266, label %268

266:                                              ; preds = %263
  %267 = load i64, i64* @False, align 8
  store i64 %267, i64* %3, align 8
  store i32 1, i32* %20, align 4
  br label %283

268:                                              ; preds = %263
  %269 = load i32, i32* @noisy, align 4
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %271, label %276

271:                                              ; preds = %268
  %272 = load i32, i32* @stderr, align 4
  %273 = load i8*, i8** @progName, align 8
  %274 = load i8*, i8** @inName, align 8
  %275 = call i32 (i32, i8*, ...) @fprintf(i32 %272, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i8* %273, i8* %274)
  br label %276

276:                                              ; preds = %271, %268
  %277 = load i64, i64* @True, align 8
  store i64 %277, i64* %3, align 8
  store i32 1, i32* %20, align 4
  br label %283

278:                                              ; preds = %234
  %279 = call i32 @panic(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  br label %280

280:                                              ; preds = %278, %241, %238
  %281 = call i32 @panic(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  %282 = load i64, i64* @True, align 8
  store i64 %282, i64* %3, align 8
  store i32 1, i32* %20, align 4
  br label %283

283:                                              ; preds = %280, %276, %266, %194
  %284 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %284)
  %285 = load i64, i64* %3, align 8
  ret i64 %285
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @SET_BINARY_MODE(i32*) #2

declare dso_local i64 @ferror(i32*) #2

declare dso_local i32* @BZ2_bzReadOpen(i64*, i32*, i32, i32, i32*, i64) #2

declare dso_local i64 @BZ2_bzRead(i64*, i32*, i32*, i32) #2

declare dso_local i32 @fwrite(i32*, i32, i64, i32*) #2

declare dso_local i32 @BZ2_bzReadGetUnused(i64*, i32*, i8**, i64*) #2

declare dso_local i32 @panic(i8*) #2

declare dso_local i32 @BZ2_bzReadClose(i64*, i32*) #2

declare dso_local i64 @myfeof(i32*) #2

declare dso_local i64 @fileno(i32*) #2

declare dso_local i32 @applySavedFileAttrToOutputFile(i64) #2

declare dso_local i64 @fclose(i32*) #2

declare dso_local i64 @fflush(i32*) #2

declare dso_local i32 @fprintf(i32, i8*, ...) #2

declare dso_local i32 @rewind(i32*) #2

declare dso_local i64 @fread(i32*, i32, i32, i32*) #2

declare dso_local i32 @configError(...) #2

declare dso_local i32 @ioError(...) #2

declare dso_local i32 @crcError(...) #2

declare dso_local i32 @outOfMemory(...) #2

declare dso_local i32 @compressedStreamEOF(...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
