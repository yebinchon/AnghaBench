; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/diff/src/extr_diff3.c_output_diff3_merge.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/diff/src/extr_diff3.c_output_diff3_merge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.diff3_block = type { i64, %struct.diff3_block* }

@DIFF_1ST = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [12 x i8] c"<<<<<<< %s\0A\00", align 1
@show_2nd = common dso_local global i64 0, align 8
@overlap_only = common dso_local global i32 0, align 4
@simple_only = common dso_local global i32 0, align 4
@flagging = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"||||||| %s\0A\00", align 1
@FILE0 = common dso_local global i64 0, align 8
@EOF = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"read failed\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"input file shrank\00", align 1
@FILE1 = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [9 x i8] c"=======\0A\00", align 1
@FILE2 = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [12 x i8] c">>>>>>> %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, %struct.diff3_block*, i32*, i32*, i8*, i8*, i8*)* @output_diff3_merge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @output_diff3_merge(i32* %0, i32* %1, %struct.diff3_block* %2, i32* %3, i32* %4, i8* %5, i8* %6, i8* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.diff3_block*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.diff3_block*, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  %25 = alloca i8*, align 8
  store i32* %0, i32** %10, align 8
  store i32* %1, i32** %11, align 8
  store %struct.diff3_block* %2, %struct.diff3_block** %12, align 8
  store i32* %3, i32** %13, align 8
  store i32* %4, i32** %14, align 8
  store i8* %5, i8** %15, align 8
  store i8* %6, i8** %16, align 8
  store i8* %7, i8** %17, align 8
  store i32 0, i32* %20, align 4
  store i64 0, i64* %23, align 8
  %26 = load %struct.diff3_block*, %struct.diff3_block** %12, align 8
  store %struct.diff3_block* %26, %struct.diff3_block** %22, align 8
  br label %27

27:                                               ; preds = %280, %8
  %28 = load %struct.diff3_block*, %struct.diff3_block** %22, align 8
  %29 = icmp ne %struct.diff3_block* %28, null
  br i1 %29, label %30, label %284

30:                                               ; preds = %27
  %31 = load %struct.diff3_block*, %struct.diff3_block** %22, align 8
  %32 = getelementptr inbounds %struct.diff3_block, %struct.diff3_block* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %33, 128
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  br label %48

36:                                               ; preds = %30
  %37 = load i64, i64* @DIFF_1ST, align 8
  %38 = load i32*, i32** %14, align 8
  %39 = load %struct.diff3_block*, %struct.diff3_block** %22, align 8
  %40 = getelementptr inbounds %struct.diff3_block, %struct.diff3_block* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @DIFF_1ST, align 8
  %43 = sub i64 %41, %42
  %44 = getelementptr inbounds i32, i32* %38, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = sext i32 %45 to i64
  %47 = add i64 %37, %46
  br label %48

48:                                               ; preds = %36, %35
  %49 = phi i64 [ 128, %35 ], [ %47, %36 ]
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %24, align 4
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8** %25, align 8
  %51 = load i32, i32* %24, align 4
  switch i32 %51, label %52 [
    i32 130, label %53
    i32 129, label %58
    i32 128, label %63
  ]

52:                                               ; preds = %48
  br label %280

53:                                               ; preds = %48
  %54 = load i64, i64* @show_2nd, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %53
  br label %280

57:                                               ; preds = %53
  store i32 1, i32* %21, align 4
  br label %69

58:                                               ; preds = %48
  %59 = load i32, i32* @overlap_only, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %58
  br label %280

62:                                               ; preds = %58
  store i32 0, i32* %21, align 4
  br label %69

63:                                               ; preds = %48
  %64 = load i32, i32* @simple_only, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %63
  br label %280

67:                                               ; preds = %63
  %68 = load i32, i32* @flagging, align 4
  store i32 %68, i32* %21, align 4
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8** %25, align 8
  br label %69

69:                                               ; preds = %67, %62, %57
  %70 = load %struct.diff3_block*, %struct.diff3_block** %22, align 8
  %71 = load i64, i64* @FILE0, align 8
  %72 = call i64 @D_LOWLINE(%struct.diff3_block* %70, i64 %71)
  %73 = load i64, i64* %23, align 8
  %74 = sub nsw i64 %72, %73
  %75 = sub nsw i64 %74, 1
  store i64 %75, i64* %19, align 8
  %76 = load i64, i64* %19, align 8
  %77 = load i64, i64* %23, align 8
  %78 = add nsw i64 %77, %76
  store i64 %78, i64* %23, align 8
  br label %79

79:                                               ; preds = %112, %69
  %80 = load i64, i64* %19, align 8
  %81 = add nsw i64 %80, -1
  store i64 %81, i64* %19, align 8
  %82 = icmp sle i64 0, %81
  br i1 %82, label %83, label %113

83:                                               ; preds = %79
  br label %84

84:                                               ; preds = %109, %83
  %85 = load i32*, i32** %10, align 8
  %86 = call i32 @getc(i32* %85)
  store i32 %86, i32* %18, align 4
  %87 = load i32, i32* %18, align 4
  %88 = load i32, i32* @EOF, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %105

90:                                               ; preds = %84
  %91 = load i32*, i32** %10, align 8
  %92 = call i32 @ferror(i32* %91)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %90
  %95 = call i32 @_(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %96 = call i32 @perror_with_exit(i32 %95)
  br label %104

97:                                               ; preds = %90
  %98 = load i32*, i32** %10, align 8
  %99 = call i32 @feof(i32* %98)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %97
  %102 = call i32 @fatal(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  br label %103

103:                                              ; preds = %101, %97
  br label %104

104:                                              ; preds = %103, %94
  br label %105

105:                                              ; preds = %104, %84
  %106 = load i32, i32* %18, align 4
  %107 = load i32*, i32** %11, align 8
  %108 = call i32 @putc(i32 %106, i32* %107)
  br label %109

109:                                              ; preds = %105
  %110 = load i32, i32* %18, align 4
  %111 = icmp ne i32 %110, 10
  br i1 %111, label %84, label %112

112:                                              ; preds = %109
  br label %79

113:                                              ; preds = %79
  %114 = load i32, i32* %21, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %194

116:                                              ; preds = %113
  store i32 1, i32* %20, align 4
  %117 = load i32, i32* %24, align 4
  %118 = icmp eq i32 %117, 128
  br i1 %118, label %119, label %153

119:                                              ; preds = %116
  %120 = load i32*, i32** %11, align 8
  %121 = load i8*, i8** %15, align 8
  %122 = call i32 (i32*, i8*, ...) @fprintf(i32* %120, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %121)
  store i64 0, i64* %19, align 8
  br label %123

123:                                              ; preds = %149, %119
  %124 = load i64, i64* %19, align 8
  %125 = load %struct.diff3_block*, %struct.diff3_block** %22, align 8
  %126 = load i32*, i32** %13, align 8
  %127 = load i64, i64* @FILE0, align 8
  %128 = getelementptr inbounds i32, i32* %126, i64 %127
  %129 = load i32, i32* %128, align 4
  %130 = call i64 @D_NUMLINES(%struct.diff3_block* %125, i32 %129)
  %131 = icmp slt i64 %124, %130
  br i1 %131, label %132, label %152

132:                                              ; preds = %123
  %133 = load %struct.diff3_block*, %struct.diff3_block** %22, align 8
  %134 = load i32*, i32** %13, align 8
  %135 = load i64, i64* @FILE0, align 8
  %136 = getelementptr inbounds i32, i32* %134, i64 %135
  %137 = load i32, i32* %136, align 4
  %138 = load i64, i64* %19, align 8
  %139 = call i32 @D_RELNUM(%struct.diff3_block* %133, i32 %137, i64 %138)
  %140 = load %struct.diff3_block*, %struct.diff3_block** %22, align 8
  %141 = load i32*, i32** %13, align 8
  %142 = load i64, i64* @FILE0, align 8
  %143 = getelementptr inbounds i32, i32* %141, i64 %142
  %144 = load i32, i32* %143, align 4
  %145 = load i64, i64* %19, align 8
  %146 = call i32 @D_RELLEN(%struct.diff3_block* %140, i32 %144, i64 %145)
  %147 = load i32*, i32** %11, align 8
  %148 = call i32 @fwrite(i32 %139, i32 1, i32 %146, i32* %147)
  br label %149

149:                                              ; preds = %132
  %150 = load i64, i64* %19, align 8
  %151 = add nsw i64 %150, 1
  store i64 %151, i64* %19, align 8
  br label %123

152:                                              ; preds = %123
  br label %153

153:                                              ; preds = %152, %116
  %154 = load i64, i64* @show_2nd, align 8
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %191

156:                                              ; preds = %153
  %157 = load i32*, i32** %11, align 8
  %158 = load i8*, i8** %25, align 8
  %159 = load i8*, i8** %16, align 8
  %160 = call i32 (i32*, i8*, ...) @fprintf(i32* %157, i8* %158, i8* %159)
  store i64 0, i64* %19, align 8
  br label %161

161:                                              ; preds = %187, %156
  %162 = load i64, i64* %19, align 8
  %163 = load %struct.diff3_block*, %struct.diff3_block** %22, align 8
  %164 = load i32*, i32** %13, align 8
  %165 = load i64, i64* @FILE1, align 8
  %166 = getelementptr inbounds i32, i32* %164, i64 %165
  %167 = load i32, i32* %166, align 4
  %168 = call i64 @D_NUMLINES(%struct.diff3_block* %163, i32 %167)
  %169 = icmp slt i64 %162, %168
  br i1 %169, label %170, label %190

170:                                              ; preds = %161
  %171 = load %struct.diff3_block*, %struct.diff3_block** %22, align 8
  %172 = load i32*, i32** %13, align 8
  %173 = load i64, i64* @FILE1, align 8
  %174 = getelementptr inbounds i32, i32* %172, i64 %173
  %175 = load i32, i32* %174, align 4
  %176 = load i64, i64* %19, align 8
  %177 = call i32 @D_RELNUM(%struct.diff3_block* %171, i32 %175, i64 %176)
  %178 = load %struct.diff3_block*, %struct.diff3_block** %22, align 8
  %179 = load i32*, i32** %13, align 8
  %180 = load i64, i64* @FILE1, align 8
  %181 = getelementptr inbounds i32, i32* %179, i64 %180
  %182 = load i32, i32* %181, align 4
  %183 = load i64, i64* %19, align 8
  %184 = call i32 @D_RELLEN(%struct.diff3_block* %178, i32 %182, i64 %183)
  %185 = load i32*, i32** %11, align 8
  %186 = call i32 @fwrite(i32 %177, i32 1, i32 %184, i32* %185)
  br label %187

187:                                              ; preds = %170
  %188 = load i64, i64* %19, align 8
  %189 = add nsw i64 %188, 1
  store i64 %189, i64* %19, align 8
  br label %161

190:                                              ; preds = %161
  br label %191

191:                                              ; preds = %190, %153
  %192 = load i32*, i32** %11, align 8
  %193 = call i32 (i32*, i8*, ...) @fprintf(i32* %192, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  br label %194

194:                                              ; preds = %191, %113
  store i64 0, i64* %19, align 8
  br label %195

195:                                              ; preds = %221, %194
  %196 = load i64, i64* %19, align 8
  %197 = load %struct.diff3_block*, %struct.diff3_block** %22, align 8
  %198 = load i32*, i32** %13, align 8
  %199 = load i64, i64* @FILE2, align 8
  %200 = getelementptr inbounds i32, i32* %198, i64 %199
  %201 = load i32, i32* %200, align 4
  %202 = call i64 @D_NUMLINES(%struct.diff3_block* %197, i32 %201)
  %203 = icmp slt i64 %196, %202
  br i1 %203, label %204, label %224

204:                                              ; preds = %195
  %205 = load %struct.diff3_block*, %struct.diff3_block** %22, align 8
  %206 = load i32*, i32** %13, align 8
  %207 = load i64, i64* @FILE2, align 8
  %208 = getelementptr inbounds i32, i32* %206, i64 %207
  %209 = load i32, i32* %208, align 4
  %210 = load i64, i64* %19, align 8
  %211 = call i32 @D_RELNUM(%struct.diff3_block* %205, i32 %209, i64 %210)
  %212 = load %struct.diff3_block*, %struct.diff3_block** %22, align 8
  %213 = load i32*, i32** %13, align 8
  %214 = load i64, i64* @FILE2, align 8
  %215 = getelementptr inbounds i32, i32* %213, i64 %214
  %216 = load i32, i32* %215, align 4
  %217 = load i64, i64* %19, align 8
  %218 = call i32 @D_RELLEN(%struct.diff3_block* %212, i32 %216, i64 %217)
  %219 = load i32*, i32** %11, align 8
  %220 = call i32 @fwrite(i32 %211, i32 1, i32 %218, i32* %219)
  br label %221

221:                                              ; preds = %204
  %222 = load i64, i64* %19, align 8
  %223 = add nsw i64 %222, 1
  store i64 %223, i64* %19, align 8
  br label %195

224:                                              ; preds = %195
  %225 = load i32, i32* %21, align 4
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %231

227:                                              ; preds = %224
  %228 = load i32*, i32** %11, align 8
  %229 = load i8*, i8** %17, align 8
  %230 = call i32 (i32*, i8*, ...) @fprintf(i32* %228, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i8* %229)
  br label %231

231:                                              ; preds = %227, %224
  %232 = load %struct.diff3_block*, %struct.diff3_block** %22, align 8
  %233 = load i64, i64* @FILE0, align 8
  %234 = trunc i64 %233 to i32
  %235 = call i64 @D_NUMLINES(%struct.diff3_block* %232, i32 %234)
  store i64 %235, i64* %19, align 8
  %236 = load i64, i64* %19, align 8
  %237 = load i64, i64* %23, align 8
  %238 = add nsw i64 %237, %236
  store i64 %238, i64* %23, align 8
  br label %239

239:                                              ; preds = %278, %231
  %240 = load i64, i64* %19, align 8
  %241 = add nsw i64 %240, -1
  store i64 %241, i64* %19, align 8
  %242 = icmp sle i64 0, %241
  br i1 %242, label %243, label %279

243:                                              ; preds = %239
  br label %244

244:                                              ; preds = %277, %243
  %245 = load i32*, i32** %10, align 8
  %246 = call i32 @getc(i32* %245)
  store i32 %246, i32* %18, align 4
  %247 = icmp ne i32 %246, 10
  br i1 %247, label %248, label %278

248:                                              ; preds = %244
  %249 = load i32, i32* %18, align 4
  %250 = load i32, i32* @EOF, align 4
  %251 = icmp eq i32 %249, %250
  br i1 %251, label %252, label %277

252:                                              ; preds = %248
  %253 = load i32*, i32** %10, align 8
  %254 = call i32 @ferror(i32* %253)
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %256, label %259

256:                                              ; preds = %252
  %257 = call i32 @_(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %258 = call i32 @perror_with_exit(i32 %257)
  br label %276

259:                                              ; preds = %252
  %260 = load i32*, i32** %10, align 8
  %261 = call i32 @feof(i32* %260)
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %263, label %275

263:                                              ; preds = %259
  %264 = load i64, i64* %19, align 8
  %265 = icmp ne i64 %264, 0
  br i1 %265, label %271, label %266

266:                                              ; preds = %263
  %267 = load %struct.diff3_block*, %struct.diff3_block** %22, align 8
  %268 = getelementptr inbounds %struct.diff3_block, %struct.diff3_block* %267, i32 0, i32 1
  %269 = load %struct.diff3_block*, %struct.diff3_block** %268, align 8
  %270 = icmp ne %struct.diff3_block* %269, null
  br i1 %270, label %271, label %273

271:                                              ; preds = %266, %263
  %272 = call i32 @fatal(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  br label %273

273:                                              ; preds = %271, %266
  %274 = load i32, i32* %20, align 4
  store i32 %274, i32* %9, align 4
  br label %306

275:                                              ; preds = %259
  br label %276

276:                                              ; preds = %275, %256
  br label %277

277:                                              ; preds = %276, %248
  br label %244

278:                                              ; preds = %244
  br label %239

279:                                              ; preds = %239
  br label %280

280:                                              ; preds = %279, %66, %61, %56, %52
  %281 = load %struct.diff3_block*, %struct.diff3_block** %22, align 8
  %282 = getelementptr inbounds %struct.diff3_block, %struct.diff3_block* %281, i32 0, i32 1
  %283 = load %struct.diff3_block*, %struct.diff3_block** %282, align 8
  store %struct.diff3_block* %283, %struct.diff3_block** %22, align 8
  br label %27

284:                                              ; preds = %27
  br label %285

285:                                              ; preds = %300, %284
  %286 = load i32*, i32** %10, align 8
  %287 = call i32 @getc(i32* %286)
  store i32 %287, i32* %18, align 4
  %288 = load i32, i32* @EOF, align 4
  %289 = icmp ne i32 %287, %288
  br i1 %289, label %298, label %290

290:                                              ; preds = %285
  %291 = load i32*, i32** %10, align 8
  %292 = call i32 @ferror(i32* %291)
  %293 = load i32*, i32** %10, align 8
  %294 = call i32 @feof(i32* %293)
  %295 = or i32 %292, %294
  %296 = icmp ne i32 %295, 0
  %297 = xor i1 %296, true
  br label %298

298:                                              ; preds = %290, %285
  %299 = phi i1 [ true, %285 ], [ %297, %290 ]
  br i1 %299, label %300, label %304

300:                                              ; preds = %298
  %301 = load i32, i32* %18, align 4
  %302 = load i32*, i32** %11, align 8
  %303 = call i32 @putc(i32 %301, i32* %302)
  br label %285

304:                                              ; preds = %298
  %305 = load i32, i32* %20, align 4
  store i32 %305, i32* %9, align 4
  br label %306

306:                                              ; preds = %304, %273
  %307 = load i32, i32* %9, align 4
  ret i32 %307
}

declare dso_local i64 @D_LOWLINE(%struct.diff3_block*, i64) #1

declare dso_local i32 @getc(i32*) #1

declare dso_local i32 @ferror(i32*) #1

declare dso_local i32 @perror_with_exit(i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @feof(i32*) #1

declare dso_local i32 @fatal(i8*) #1

declare dso_local i32 @putc(i32, i32*) #1

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i64 @D_NUMLINES(%struct.diff3_block*, i32) #1

declare dso_local i32 @fwrite(i32, i32, i32, i32*) #1

declare dso_local i32 @D_RELNUM(%struct.diff3_block*, i32, i64) #1

declare dso_local i32 @D_RELLEN(%struct.diff3_block*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
