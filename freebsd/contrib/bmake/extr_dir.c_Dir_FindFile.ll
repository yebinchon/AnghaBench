; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bmake/extr_dir.c_Dir_FindFile.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bmake/extr_dir.c_Dir_FindFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.stat = type { i32 }

@FALSE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@TRUE = common dso_local global i64 0, align 8
@DIR = common dso_local global i32 0, align 4
@debug_file = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"Searching for %s ...\00", align 1
@FAILURE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [36 x i8] c"couldn't open path, file not found\0A\00", align 1
@misses = common dso_local global i32 0, align 4
@dotLast = common dso_local global %struct.TYPE_8__* null, align 8
@.str.3 = private unnamed_addr constant [14 x i8] c"[dot last]...\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"   failed.\0A\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"   Trying subdirectories...\0A\00", align 1
@dot = common dso_local global %struct.TYPE_8__* null, align 8
@cur = common dso_local global %struct.TYPE_8__* null, align 8
@.str.7 = private unnamed_addr constant [38 x i8] c"   Checked . already, returning NULL\0A\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"   Trying exact path matches...\0A\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"   Looking for \22%s\22 ...\0A\00", align 1
@bigmisses = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [27 x i8] c"   failed. Returning NULL\0A\00", align 1
@traling_dot = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @Dir_FindFile(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.stat, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %15 = load i64, i64* @FALSE, align 8
  store i64 %15, i64* %10, align 8
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %13, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = call i8* @strrchr(i8* %16, i8 signext 47)
  store i8* %17, i8** %9, align 8
  %18 = load i8*, i8** %9, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %24

20:                                               ; preds = %2
  %21 = load i64, i64* @TRUE, align 8
  store i64 %21, i64* %11, align 8
  %22 = load i8*, i8** %9, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 1
  store i8* %23, i8** %9, align 8
  br label %27

24:                                               ; preds = %2
  %25 = load i64, i64* @FALSE, align 8
  store i64 %25, i64* %11, align 8
  %26 = load i8*, i8** %4, align 8
  store i8* %26, i8** %9, align 8
  br label %27

27:                                               ; preds = %24, %20
  %28 = load i32, i32* @DIR, align 4
  %29 = call i64 @DEBUG(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %27
  %32 = load i32, i32* @debug_file, align 4
  %33 = load i8*, i8** %4, align 8
  %34 = call i32 (i32, i8*, ...) @fprintf(i32 %32, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* %33)
  br label %35

35:                                               ; preds = %31, %27
  %36 = load i32, i32* %5, align 4
  %37 = call i64 @Lst_Open(i32 %36)
  %38 = load i64, i64* @FAILURE, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %50

40:                                               ; preds = %35
  %41 = load i32, i32* @DIR, align 4
  %42 = call i64 @DEBUG(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %40
  %45 = load i32, i32* @debug_file, align 4
  %46 = call i32 (i32, i8*, ...) @fprintf(i32 %45, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  br label %47

47:                                               ; preds = %44, %40
  %48 = load i32, i32* @misses, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* @misses, align 4
  store i8* null, i8** %3, align 8
  br label %401

50:                                               ; preds = %35
  %51 = load i32, i32* %5, align 4
  %52 = call i32* @Lst_First(i32 %51)
  store i32* %52, i32** %6, align 8
  %53 = icmp ne i32* %52, null
  br i1 %53, label %54, label %71

54:                                               ; preds = %50
  %55 = load i32*, i32** %6, align 8
  %56 = call i64 @Lst_Datum(i32* %55)
  %57 = inttoptr i64 %56 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %57, %struct.TYPE_8__** %8, align 8
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** @dotLast, align 8
  %60 = icmp eq %struct.TYPE_8__* %58, %59
  br i1 %60, label %61, label %70

61:                                               ; preds = %54
  %62 = load i64, i64* @TRUE, align 8
  store i64 %62, i64* %10, align 8
  %63 = load i32, i32* @DIR, align 4
  %64 = call i64 @DEBUG(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %61
  %67 = load i32, i32* @debug_file, align 4
  %68 = call i32 (i32, i8*, ...) @fprintf(i32 %67, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  br label %69

69:                                               ; preds = %66, %61
  br label %70

70:                                               ; preds = %69, %54
  br label %71

71:                                               ; preds = %70, %50
  %72 = load i32, i32* @DIR, align 4
  %73 = call i64 @DEBUG(i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %71
  %76 = load i32, i32* @debug_file, align 4
  %77 = call i32 (i32, i8*, ...) @fprintf(i32 %76, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %78

78:                                               ; preds = %75, %71
  %79 = load i64, i64* %11, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %93

81:                                               ; preds = %78
  %82 = load i8*, i8** %9, align 8
  %83 = load i8*, i8** %4, align 8
  %84 = ptrtoint i8* %82 to i64
  %85 = ptrtoint i8* %83 to i64
  %86 = sub i64 %84, %85
  %87 = icmp eq i64 %86, 2
  br i1 %87, label %88, label %145

88:                                               ; preds = %81
  %89 = load i8*, i8** %4, align 8
  %90 = load i8, i8* %89, align 1
  %91 = sext i8 %90 to i32
  %92 = icmp eq i32 %91, 46
  br i1 %92, label %93, label %145

93:                                               ; preds = %88, %78
  %94 = load i64, i64* %10, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %106, label %96

96:                                               ; preds = %93
  %97 = load i64, i64* %11, align 8
  %98 = load i8*, i8** %4, align 8
  %99 = load i8*, i8** %9, align 8
  %100 = call i8* @DirFindDot(i64 %97, i8* %98, i8* %99)
  store i8* %100, i8** %7, align 8
  %101 = icmp ne i8* %100, null
  br i1 %101, label %102, label %106

102:                                              ; preds = %96
  %103 = load i32, i32* %5, align 4
  %104 = call i32 @Lst_Close(i32 %103)
  %105 = load i8*, i8** %7, align 8
  store i8* %105, i8** %3, align 8
  br label %401

106:                                              ; preds = %96, %93
  br label %107

107:                                              ; preds = %130, %118, %106
  %108 = load i32, i32* %5, align 4
  %109 = call i32* @Lst_Next(i32 %108)
  store i32* %109, i32** %6, align 8
  %110 = icmp ne i32* %109, null
  br i1 %110, label %111, label %131

111:                                              ; preds = %107
  %112 = load i32*, i32** %6, align 8
  %113 = call i64 @Lst_Datum(i32* %112)
  %114 = inttoptr i64 %113 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %114, %struct.TYPE_8__** %8, align 8
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** @dotLast, align 8
  %117 = icmp eq %struct.TYPE_8__* %115, %116
  br i1 %117, label %118, label %119

118:                                              ; preds = %111
  br label %107

119:                                              ; preds = %111
  %120 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %121 = load i8*, i8** %4, align 8
  %122 = load i8*, i8** %9, align 8
  %123 = load i64, i64* %11, align 8
  %124 = call i8* @DirLookup(%struct.TYPE_8__* %120, i8* %121, i8* %122, i64 %123)
  store i8* %124, i8** %7, align 8
  %125 = icmp ne i8* %124, null
  br i1 %125, label %126, label %130

126:                                              ; preds = %119
  %127 = load i32, i32* %5, align 4
  %128 = call i32 @Lst_Close(i32 %127)
  %129 = load i8*, i8** %7, align 8
  store i8* %129, i8** %3, align 8
  br label %401

130:                                              ; preds = %119
  br label %107

131:                                              ; preds = %107
  %132 = load i64, i64* %10, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %144

134:                                              ; preds = %131
  %135 = load i64, i64* %11, align 8
  %136 = load i8*, i8** %4, align 8
  %137 = load i8*, i8** %9, align 8
  %138 = call i8* @DirFindDot(i64 %135, i8* %136, i8* %137)
  store i8* %138, i8** %7, align 8
  %139 = icmp ne i8* %138, null
  br i1 %139, label %140, label %144

140:                                              ; preds = %134
  %141 = load i32, i32* %5, align 4
  %142 = call i32 @Lst_Close(i32 %141)
  %143 = load i8*, i8** %7, align 8
  store i8* %143, i8** %3, align 8
  br label %401

144:                                              ; preds = %134, %131
  br label %145

145:                                              ; preds = %144, %88, %81
  %146 = load i32, i32* %5, align 4
  %147 = call i32 @Lst_Close(i32 %146)
  %148 = load i64, i64* %11, align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %160, label %150

150:                                              ; preds = %145
  %151 = load i32, i32* @DIR, align 4
  %152 = call i64 @DEBUG(i32 %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %157

154:                                              ; preds = %150
  %155 = load i32, i32* @debug_file, align 4
  %156 = call i32 (i32, i8*, ...) @fprintf(i32 %155, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  br label %157

157:                                              ; preds = %154, %150
  %158 = load i32, i32* @misses, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* @misses, align 4
  store i8* null, i8** %3, align 8
  br label %401

160:                                              ; preds = %145
  %161 = load i8*, i8** %9, align 8
  %162 = load i8, i8* %161, align 1
  %163 = sext i8 %162 to i32
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %165, label %167

165:                                              ; preds = %160
  %166 = load i8*, i8** %13, align 8
  store i8* %166, i8** %9, align 8
  br label %167

167:                                              ; preds = %165, %160
  %168 = load i8*, i8** %4, align 8
  %169 = getelementptr inbounds i8, i8* %168, i64 0
  %170 = load i8, i8* %169, align 1
  %171 = sext i8 %170 to i32
  %172 = icmp ne i32 %171, 47
  br i1 %172, label %173, label %285

173:                                              ; preds = %167
  %174 = load i64, i64* @FALSE, align 8
  store i64 %174, i64* %14, align 8
  %175 = load i32, i32* @DIR, align 4
  %176 = call i64 @DEBUG(i32 %175)
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %181

178:                                              ; preds = %173
  %179 = load i32, i32* @debug_file, align 4
  %180 = call i32 (i32, i8*, ...) @fprintf(i32 %179, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0))
  br label %181

181:                                              ; preds = %178, %173
  %182 = load i64, i64* %10, align 8
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %207, label %184

184:                                              ; preds = %181
  %185 = load %struct.TYPE_8__*, %struct.TYPE_8__** @dot, align 8
  %186 = icmp ne %struct.TYPE_8__* %185, null
  br i1 %186, label %187, label %196

187:                                              ; preds = %184
  %188 = load i64, i64* @TRUE, align 8
  store i64 %188, i64* %14, align 8
  %189 = load %struct.TYPE_8__*, %struct.TYPE_8__** @dot, align 8
  %190 = load i8*, i8** %4, align 8
  %191 = call i8* @DirLookupSubdir(%struct.TYPE_8__* %189, i8* %190)
  store i8* %191, i8** %7, align 8
  %192 = icmp ne i8* %191, null
  br i1 %192, label %193, label %195

193:                                              ; preds = %187
  %194 = load i8*, i8** %7, align 8
  store i8* %194, i8** %3, align 8
  br label %401

195:                                              ; preds = %187
  br label %196

196:                                              ; preds = %195, %184
  %197 = load %struct.TYPE_8__*, %struct.TYPE_8__** @cur, align 8
  %198 = icmp ne %struct.TYPE_8__* %197, null
  br i1 %198, label %199, label %206

199:                                              ; preds = %196
  %200 = load %struct.TYPE_8__*, %struct.TYPE_8__** @cur, align 8
  %201 = load i8*, i8** %4, align 8
  %202 = call i8* @DirLookupSubdir(%struct.TYPE_8__* %200, i8* %201)
  store i8* %202, i8** %7, align 8
  %203 = icmp ne i8* %202, null
  br i1 %203, label %204, label %206

204:                                              ; preds = %199
  %205 = load i8*, i8** %7, align 8
  store i8* %205, i8** %3, align 8
  br label %401

206:                                              ; preds = %199, %196
  br label %207

207:                                              ; preds = %206, %181
  %208 = load i32, i32* %5, align 4
  %209 = call i64 @Lst_Open(i32 %208)
  br label %210

210:                                              ; preds = %241, %229, %221, %207
  %211 = load i32, i32* %5, align 4
  %212 = call i32* @Lst_Next(i32 %211)
  store i32* %212, i32** %6, align 8
  %213 = icmp ne i32* %212, null
  br i1 %213, label %214, label %242

214:                                              ; preds = %210
  %215 = load i32*, i32** %6, align 8
  %216 = call i64 @Lst_Datum(i32* %215)
  %217 = inttoptr i64 %216 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %217, %struct.TYPE_8__** %8, align 8
  %218 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %219 = load %struct.TYPE_8__*, %struct.TYPE_8__** @dotLast, align 8
  %220 = icmp eq %struct.TYPE_8__* %218, %219
  br i1 %220, label %221, label %222

221:                                              ; preds = %214
  br label %210

222:                                              ; preds = %214
  %223 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %224 = load %struct.TYPE_8__*, %struct.TYPE_8__** @dot, align 8
  %225 = icmp eq %struct.TYPE_8__* %223, %224
  br i1 %225, label %226, label %232

226:                                              ; preds = %222
  %227 = load i64, i64* %14, align 8
  %228 = icmp ne i64 %227, 0
  br i1 %228, label %229, label %230

229:                                              ; preds = %226
  br label %210

230:                                              ; preds = %226
  %231 = load i64, i64* @TRUE, align 8
  store i64 %231, i64* %14, align 8
  br label %232

232:                                              ; preds = %230, %222
  %233 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %234 = load i8*, i8** %4, align 8
  %235 = call i8* @DirLookupSubdir(%struct.TYPE_8__* %233, i8* %234)
  store i8* %235, i8** %7, align 8
  %236 = icmp ne i8* %235, null
  br i1 %236, label %237, label %241

237:                                              ; preds = %232
  %238 = load i32, i32* %5, align 4
  %239 = call i32 @Lst_Close(i32 %238)
  %240 = load i8*, i8** %7, align 8
  store i8* %240, i8** %3, align 8
  br label %401

241:                                              ; preds = %232
  br label %210

242:                                              ; preds = %210
  %243 = load i32, i32* %5, align 4
  %244 = call i32 @Lst_Close(i32 %243)
  %245 = load i64, i64* %10, align 8
  %246 = icmp ne i64 %245, 0
  br i1 %246, label %247, label %273

247:                                              ; preds = %242
  %248 = load %struct.TYPE_8__*, %struct.TYPE_8__** @dot, align 8
  %249 = icmp ne %struct.TYPE_8__* %248, null
  br i1 %249, label %250, label %262

250:                                              ; preds = %247
  %251 = load i64, i64* %14, align 8
  %252 = icmp ne i64 %251, 0
  br i1 %252, label %262, label %253

253:                                              ; preds = %250
  %254 = load i64, i64* @TRUE, align 8
  store i64 %254, i64* %14, align 8
  %255 = load %struct.TYPE_8__*, %struct.TYPE_8__** @dot, align 8
  %256 = load i8*, i8** %4, align 8
  %257 = call i8* @DirLookupSubdir(%struct.TYPE_8__* %255, i8* %256)
  store i8* %257, i8** %7, align 8
  %258 = icmp ne i8* %257, null
  br i1 %258, label %259, label %261

259:                                              ; preds = %253
  %260 = load i8*, i8** %7, align 8
  store i8* %260, i8** %3, align 8
  br label %401

261:                                              ; preds = %253
  br label %262

262:                                              ; preds = %261, %250, %247
  %263 = load %struct.TYPE_8__*, %struct.TYPE_8__** @cur, align 8
  %264 = icmp ne %struct.TYPE_8__* %263, null
  br i1 %264, label %265, label %272

265:                                              ; preds = %262
  %266 = load %struct.TYPE_8__*, %struct.TYPE_8__** @cur, align 8
  %267 = load i8*, i8** %4, align 8
  %268 = call i8* @DirLookupSubdir(%struct.TYPE_8__* %266, i8* %267)
  store i8* %268, i8** %7, align 8
  %269 = icmp ne i8* %268, null
  br i1 %269, label %270, label %272

270:                                              ; preds = %265
  %271 = load i8*, i8** %7, align 8
  store i8* %271, i8** %3, align 8
  br label %401

272:                                              ; preds = %265, %262
  br label %273

273:                                              ; preds = %272, %242
  %274 = load i64, i64* %14, align 8
  %275 = icmp ne i64 %274, 0
  br i1 %275, label %276, label %284

276:                                              ; preds = %273
  %277 = load i32, i32* @DIR, align 4
  %278 = call i64 @DEBUG(i32 %277)
  %279 = icmp ne i64 %278, 0
  br i1 %279, label %280, label %283

280:                                              ; preds = %276
  %281 = load i32, i32* @debug_file, align 4
  %282 = call i32 (i32, i8*, ...) @fprintf(i32 %281, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i64 0, i64 0))
  br label %283

283:                                              ; preds = %280, %276
  store i8* null, i8** %3, align 8
  br label %401

284:                                              ; preds = %273
  br label %376

285:                                              ; preds = %167
  %286 = load i32, i32* @DIR, align 4
  %287 = call i64 @DEBUG(i32 %286)
  %288 = icmp ne i64 %287, 0
  br i1 %288, label %289, label %292

289:                                              ; preds = %285
  %290 = load i32, i32* @debug_file, align 4
  %291 = call i32 (i32, i8*, ...) @fprintf(i32 %290, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0))
  br label %292

292:                                              ; preds = %289, %285
  %293 = load i64, i64* %10, align 8
  %294 = icmp ne i64 %293, 0
  br i1 %294, label %315, label %295

295:                                              ; preds = %292
  %296 = load %struct.TYPE_8__*, %struct.TYPE_8__** @cur, align 8
  %297 = icmp ne %struct.TYPE_8__* %296, null
  br i1 %297, label %298, label %315

298:                                              ; preds = %295
  %299 = load %struct.TYPE_8__*, %struct.TYPE_8__** @cur, align 8
  %300 = load i8*, i8** %4, align 8
  %301 = load i8*, i8** %9, align 8
  %302 = call i8* @DirLookupAbs(%struct.TYPE_8__* %299, i8* %300, i8* %301)
  store i8* %302, i8** %7, align 8
  %303 = icmp ne i8* %302, null
  br i1 %303, label %304, label %315

304:                                              ; preds = %298
  %305 = load i8*, i8** %7, align 8
  %306 = getelementptr inbounds i8, i8* %305, i64 0
  %307 = load i8, i8* %306, align 1
  %308 = sext i8 %307 to i32
  %309 = icmp eq i32 %308, 0
  br i1 %309, label %310, label %313

310:                                              ; preds = %304
  %311 = load i8*, i8** %7, align 8
  %312 = call i32 @free(i8* %311)
  store i8* null, i8** %3, align 8
  br label %401

313:                                              ; preds = %304
  %314 = load i8*, i8** %7, align 8
  store i8* %314, i8** %3, align 8
  br label %401

315:                                              ; preds = %298, %295, %292
  %316 = load i32, i32* %5, align 4
  %317 = call i64 @Lst_Open(i32 %316)
  br label %318

318:                                              ; preds = %349, %329, %315
  %319 = load i32, i32* %5, align 4
  %320 = call i32* @Lst_Next(i32 %319)
  store i32* %320, i32** %6, align 8
  %321 = icmp ne i32* %320, null
  br i1 %321, label %322, label %350

322:                                              ; preds = %318
  %323 = load i32*, i32** %6, align 8
  %324 = call i64 @Lst_Datum(i32* %323)
  %325 = inttoptr i64 %324 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %325, %struct.TYPE_8__** %8, align 8
  %326 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %327 = load %struct.TYPE_8__*, %struct.TYPE_8__** @dotLast, align 8
  %328 = icmp eq %struct.TYPE_8__* %326, %327
  br i1 %328, label %329, label %330

329:                                              ; preds = %322
  br label %318

330:                                              ; preds = %322
  %331 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %332 = load i8*, i8** %4, align 8
  %333 = load i8*, i8** %9, align 8
  %334 = call i8* @DirLookupAbs(%struct.TYPE_8__* %331, i8* %332, i8* %333)
  store i8* %334, i8** %7, align 8
  %335 = icmp ne i8* %334, null
  br i1 %335, label %336, label %349

336:                                              ; preds = %330
  %337 = load i32, i32* %5, align 4
  %338 = call i32 @Lst_Close(i32 %337)
  %339 = load i8*, i8** %7, align 8
  %340 = getelementptr inbounds i8, i8* %339, i64 0
  %341 = load i8, i8* %340, align 1
  %342 = sext i8 %341 to i32
  %343 = icmp eq i32 %342, 0
  br i1 %343, label %344, label %347

344:                                              ; preds = %336
  %345 = load i8*, i8** %7, align 8
  %346 = call i32 @free(i8* %345)
  store i8* null, i8** %3, align 8
  br label %401

347:                                              ; preds = %336
  %348 = load i8*, i8** %7, align 8
  store i8* %348, i8** %3, align 8
  br label %401

349:                                              ; preds = %330
  br label %318

350:                                              ; preds = %318
  %351 = load i32, i32* %5, align 4
  %352 = call i32 @Lst_Close(i32 %351)
  %353 = load i64, i64* %10, align 8
  %354 = icmp ne i64 %353, 0
  br i1 %354, label %355, label %375

355:                                              ; preds = %350
  %356 = load %struct.TYPE_8__*, %struct.TYPE_8__** @cur, align 8
  %357 = icmp ne %struct.TYPE_8__* %356, null
  br i1 %357, label %358, label %375

358:                                              ; preds = %355
  %359 = load %struct.TYPE_8__*, %struct.TYPE_8__** @cur, align 8
  %360 = load i8*, i8** %4, align 8
  %361 = load i8*, i8** %9, align 8
  %362 = call i8* @DirLookupAbs(%struct.TYPE_8__* %359, i8* %360, i8* %361)
  store i8* %362, i8** %7, align 8
  %363 = icmp ne i8* %362, null
  br i1 %363, label %364, label %375

364:                                              ; preds = %358
  %365 = load i8*, i8** %7, align 8
  %366 = getelementptr inbounds i8, i8* %365, i64 0
  %367 = load i8, i8* %366, align 1
  %368 = sext i8 %367 to i32
  %369 = icmp eq i32 %368, 0
  br i1 %369, label %370, label %373

370:                                              ; preds = %364
  %371 = load i8*, i8** %7, align 8
  %372 = call i32 @free(i8* %371)
  store i8* null, i8** %3, align 8
  br label %401

373:                                              ; preds = %364
  %374 = load i8*, i8** %7, align 8
  store i8* %374, i8** %3, align 8
  br label %401

375:                                              ; preds = %358, %355, %350
  br label %376

376:                                              ; preds = %375, %284
  %377 = load i32, i32* @DIR, align 4
  %378 = call i64 @DEBUG(i32 %377)
  %379 = icmp ne i64 %378, 0
  br i1 %379, label %380, label %384

380:                                              ; preds = %376
  %381 = load i32, i32* @debug_file, align 4
  %382 = load i8*, i8** %4, align 8
  %383 = call i32 (i32, i8*, ...) @fprintf(i32 %381, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0), i8* %382)
  br label %384

384:                                              ; preds = %380, %376
  %385 = load i32, i32* @bigmisses, align 4
  %386 = add nsw i32 %385, 1
  store i32 %386, i32* @bigmisses, align 4
  %387 = load i8*, i8** %4, align 8
  %388 = call i64 @cached_stat(i8* %387, %struct.stat* %12)
  %389 = icmp eq i64 %388, 0
  br i1 %389, label %390, label %393

390:                                              ; preds = %384
  %391 = load i8*, i8** %4, align 8
  %392 = call i8* @bmake_strdup(i8* %391)
  store i8* %392, i8** %3, align 8
  br label %401

393:                                              ; preds = %384
  %394 = load i32, i32* @DIR, align 4
  %395 = call i64 @DEBUG(i32 %394)
  %396 = icmp ne i64 %395, 0
  br i1 %396, label %397, label %400

397:                                              ; preds = %393
  %398 = load i32, i32* @debug_file, align 4
  %399 = call i32 (i32, i8*, ...) @fprintf(i32 %398, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i64 0, i64 0))
  br label %400

400:                                              ; preds = %397, %393
  store i8* null, i8** %3, align 8
  br label %401

401:                                              ; preds = %400, %390, %373, %370, %347, %344, %313, %310, %283, %270, %259, %237, %204, %193, %157, %140, %126, %102, %47
  %402 = load i8*, i8** %3, align 8
  ret i8* %402
}

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i64 @DEBUG(i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i64 @Lst_Open(i32) #1

declare dso_local i32* @Lst_First(i32) #1

declare dso_local i64 @Lst_Datum(i32*) #1

declare dso_local i8* @DirFindDot(i64, i8*, i8*) #1

declare dso_local i32 @Lst_Close(i32) #1

declare dso_local i32* @Lst_Next(i32) #1

declare dso_local i8* @DirLookup(%struct.TYPE_8__*, i8*, i8*, i64) #1

declare dso_local i8* @DirLookupSubdir(%struct.TYPE_8__*, i8*) #1

declare dso_local i8* @DirLookupAbs(%struct.TYPE_8__*, i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @cached_stat(i8*, %struct.stat*) #1

declare dso_local i8* @bmake_strdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
