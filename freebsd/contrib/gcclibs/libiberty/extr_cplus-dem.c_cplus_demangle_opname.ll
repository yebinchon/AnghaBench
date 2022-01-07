; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcclibs/libiberty/extr_cplus-dem.c_cplus_demangle_opname.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcclibs/libiberty/extr_cplus-dem.c_cplus_demangle_opname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8*, i8* }
%struct.TYPE_6__ = type { i64, i64 }
%struct.work_stuff = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"operator \00", align 1
@optable = common dso_local global %struct.TYPE_7__* null, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"operator\00", align 1
@cplus_markers = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"assign_\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"type\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cplus_demangle_opname(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_6__, align 8
  %11 = alloca [1 x %struct.work_stuff], align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %17 = load i8*, i8** %4, align 8
  %18 = call i32 @strlen(i8* %17)
  store i32 %18, i32* %7, align 4
  %19 = load i8*, i8** %5, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 0
  store i8 0, i8* %20, align 1
  store i32 0, i32* %9, align 4
  %21 = getelementptr inbounds [1 x %struct.work_stuff], [1 x %struct.work_stuff]* %11, i64 0, i64 0
  %22 = bitcast %struct.work_stuff* %21 to i8*
  %23 = call i32 @memset(i8* %22, i32 0, i32 4)
  %24 = load i32, i32* %6, align 4
  %25 = getelementptr inbounds [1 x %struct.work_stuff], [1 x %struct.work_stuff]* %11, i64 0, i64 0
  %26 = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  %27 = load i8*, i8** %4, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 0
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %30, 95
  br i1 %31, label %32, label %70

32:                                               ; preds = %3
  %33 = load i8*, i8** %4, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 1
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %36, 95
  br i1 %37, label %38, label %70

38:                                               ; preds = %32
  %39 = load i8*, i8** %4, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 2
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp eq i32 %42, 111
  br i1 %43, label %44, label %70

44:                                               ; preds = %38
  %45 = load i8*, i8** %4, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 3
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp eq i32 %48, 112
  br i1 %49, label %50, label %70

50:                                               ; preds = %44
  %51 = load i8*, i8** %4, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 4
  store i8* %52, i8** %12, align 8
  %53 = getelementptr inbounds [1 x %struct.work_stuff], [1 x %struct.work_stuff]* %11, i64 0, i64 0
  %54 = call i64 @do_type(%struct.work_stuff* %53, i8** %12, %struct.TYPE_6__* %10)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %69

56:                                               ; preds = %50
  %57 = load i8*, i8** %5, align 8
  %58 = call i32 @strcat(i8* %57, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %59 = load i8*, i8** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = sub nsw i64 %63, %65
  %67 = call i32 @strncat(i8* %59, i64 %61, i64 %66)
  %68 = call i32 @string_delete(%struct.TYPE_6__* %10)
  store i32 1, i32* %9, align 4
  br label %69

69:                                               ; preds = %56, %50
  br label %348

70:                                               ; preds = %44, %38, %32, %3
  %71 = load i8*, i8** %4, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 0
  %73 = load i8, i8* %72, align 1
  %74 = sext i8 %73 to i32
  %75 = icmp eq i32 %74, 95
  br i1 %75, label %76, label %192

76:                                               ; preds = %70
  %77 = load i8*, i8** %4, align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 1
  %79 = load i8, i8* %78, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp eq i32 %80, 95
  br i1 %81, label %82, label %192

82:                                               ; preds = %76
  %83 = load i8*, i8** %4, align 8
  %84 = getelementptr inbounds i8, i8* %83, i64 2
  %85 = load i8, i8* %84, align 1
  %86 = call i64 @ISLOWER(i8 zeroext %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %192

88:                                               ; preds = %82
  %89 = load i8*, i8** %4, align 8
  %90 = getelementptr inbounds i8, i8* %89, i64 3
  %91 = load i8, i8* %90, align 1
  %92 = call i64 @ISLOWER(i8 zeroext %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %192

94:                                               ; preds = %88
  %95 = load i8*, i8** %4, align 8
  %96 = getelementptr inbounds i8, i8* %95, i64 4
  %97 = load i8, i8* %96, align 1
  %98 = sext i8 %97 to i32
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %139

100:                                              ; preds = %94
  store i64 0, i64* %13, align 8
  br label %101

101:                                              ; preds = %135, %100
  %102 = load i64, i64* %13, align 8
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** @optable, align 8
  %104 = call i64 @ARRAY_SIZE(%struct.TYPE_7__* %103)
  %105 = icmp ult i64 %102, %104
  br i1 %105, label %106, label %138

106:                                              ; preds = %101
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** @optable, align 8
  %108 = load i64, i64* %13, align 8
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 0
  %111 = load i8*, i8** %110, align 8
  %112 = call i32 @strlen(i8* %111)
  %113 = icmp eq i32 %112, 2
  br i1 %113, label %114, label %134

114:                                              ; preds = %106
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** @optable, align 8
  %116 = load i64, i64* %13, align 8
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 0
  %119 = load i8*, i8** %118, align 8
  %120 = load i8*, i8** %4, align 8
  %121 = getelementptr inbounds i8, i8* %120, i64 2
  %122 = call i64 @memcmp(i8* %119, i8* %121, i32 2)
  %123 = icmp eq i64 %122, 0
  br i1 %123, label %124, label %134

124:                                              ; preds = %114
  %125 = load i8*, i8** %5, align 8
  %126 = call i32 @strcat(i8* %125, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %127 = load i8*, i8** %5, align 8
  %128 = load %struct.TYPE_7__*, %struct.TYPE_7__** @optable, align 8
  %129 = load i64, i64* %13, align 8
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 1
  %132 = load i8*, i8** %131, align 8
  %133 = call i32 @strcat(i8* %127, i8* %132)
  store i32 1, i32* %9, align 4
  br label %138

134:                                              ; preds = %114, %106
  br label %135

135:                                              ; preds = %134
  %136 = load i64, i64* %13, align 8
  %137 = add i64 %136, 1
  store i64 %137, i64* %13, align 8
  br label %101

138:                                              ; preds = %124, %101
  br label %191

139:                                              ; preds = %94
  %140 = load i8*, i8** %4, align 8
  %141 = getelementptr inbounds i8, i8* %140, i64 2
  %142 = load i8, i8* %141, align 1
  %143 = sext i8 %142 to i32
  %144 = icmp eq i32 %143, 97
  br i1 %144, label %145, label %190

145:                                              ; preds = %139
  %146 = load i8*, i8** %4, align 8
  %147 = getelementptr inbounds i8, i8* %146, i64 5
  %148 = load i8, i8* %147, align 1
  %149 = sext i8 %148 to i32
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %151, label %190

151:                                              ; preds = %145
  store i64 0, i64* %14, align 8
  br label %152

152:                                              ; preds = %186, %151
  %153 = load i64, i64* %14, align 8
  %154 = load %struct.TYPE_7__*, %struct.TYPE_7__** @optable, align 8
  %155 = call i64 @ARRAY_SIZE(%struct.TYPE_7__* %154)
  %156 = icmp ult i64 %153, %155
  br i1 %156, label %157, label %189

157:                                              ; preds = %152
  %158 = load %struct.TYPE_7__*, %struct.TYPE_7__** @optable, align 8
  %159 = load i64, i64* %14, align 8
  %160 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %158, i64 %159
  %161 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %160, i32 0, i32 0
  %162 = load i8*, i8** %161, align 8
  %163 = call i32 @strlen(i8* %162)
  %164 = icmp eq i32 %163, 3
  br i1 %164, label %165, label %185

165:                                              ; preds = %157
  %166 = load %struct.TYPE_7__*, %struct.TYPE_7__** @optable, align 8
  %167 = load i64, i64* %14, align 8
  %168 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %166, i64 %167
  %169 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %168, i32 0, i32 0
  %170 = load i8*, i8** %169, align 8
  %171 = load i8*, i8** %4, align 8
  %172 = getelementptr inbounds i8, i8* %171, i64 2
  %173 = call i64 @memcmp(i8* %170, i8* %172, i32 3)
  %174 = icmp eq i64 %173, 0
  br i1 %174, label %175, label %185

175:                                              ; preds = %165
  %176 = load i8*, i8** %5, align 8
  %177 = call i32 @strcat(i8* %176, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %178 = load i8*, i8** %5, align 8
  %179 = load %struct.TYPE_7__*, %struct.TYPE_7__** @optable, align 8
  %180 = load i64, i64* %14, align 8
  %181 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %179, i64 %180
  %182 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %181, i32 0, i32 1
  %183 = load i8*, i8** %182, align 8
  %184 = call i32 @strcat(i8* %178, i8* %183)
  store i32 1, i32* %9, align 4
  br label %189

185:                                              ; preds = %165, %157
  br label %186

186:                                              ; preds = %185
  %187 = load i64, i64* %14, align 8
  %188 = add i64 %187, 1
  store i64 %188, i64* %14, align 8
  br label %152

189:                                              ; preds = %175, %152
  br label %190

190:                                              ; preds = %189, %145, %139
  br label %191

191:                                              ; preds = %190, %138
  br label %347

192:                                              ; preds = %88, %82, %76, %70
  %193 = load i32, i32* %7, align 4
  %194 = icmp sge i32 %193, 3
  br i1 %194, label %195, label %311

195:                                              ; preds = %192
  %196 = load i8*, i8** %4, align 8
  %197 = getelementptr inbounds i8, i8* %196, i64 0
  %198 = load i8, i8* %197, align 1
  %199 = sext i8 %198 to i32
  %200 = icmp eq i32 %199, 111
  br i1 %200, label %201, label %311

201:                                              ; preds = %195
  %202 = load i8*, i8** %4, align 8
  %203 = getelementptr inbounds i8, i8* %202, i64 1
  %204 = load i8, i8* %203, align 1
  %205 = sext i8 %204 to i32
  %206 = icmp eq i32 %205, 112
  br i1 %206, label %207, label %311

207:                                              ; preds = %201
  %208 = load i32, i32* @cplus_markers, align 4
  %209 = load i8*, i8** %4, align 8
  %210 = getelementptr inbounds i8, i8* %209, i64 2
  %211 = load i8, i8* %210, align 1
  %212 = call i32* @strchr(i32 %208, i8 signext %211)
  %213 = icmp ne i32* %212, null
  br i1 %213, label %214, label %311

214:                                              ; preds = %207
  %215 = load i32, i32* %7, align 4
  %216 = icmp sge i32 %215, 10
  br i1 %216, label %217, label %267

217:                                              ; preds = %214
  %218 = load i8*, i8** %4, align 8
  %219 = getelementptr inbounds i8, i8* %218, i64 3
  %220 = call i64 @memcmp(i8* %219, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 7)
  %221 = icmp eq i64 %220, 0
  br i1 %221, label %222, label %267

222:                                              ; preds = %217
  store i64 0, i64* %15, align 8
  br label %223

223:                                              ; preds = %263, %222
  %224 = load i64, i64* %15, align 8
  %225 = load %struct.TYPE_7__*, %struct.TYPE_7__** @optable, align 8
  %226 = call i64 @ARRAY_SIZE(%struct.TYPE_7__* %225)
  %227 = icmp ult i64 %224, %226
  br i1 %227, label %228, label %266

228:                                              ; preds = %223
  %229 = load i32, i32* %7, align 4
  %230 = sub nsw i32 %229, 10
  store i32 %230, i32* %8, align 4
  %231 = load %struct.TYPE_7__*, %struct.TYPE_7__** @optable, align 8
  %232 = load i64, i64* %15, align 8
  %233 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %231, i64 %232
  %234 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %233, i32 0, i32 0
  %235 = load i8*, i8** %234, align 8
  %236 = call i32 @strlen(i8* %235)
  %237 = load i32, i32* %8, align 4
  %238 = icmp eq i32 %236, %237
  br i1 %238, label %239, label %262

239:                                              ; preds = %228
  %240 = load %struct.TYPE_7__*, %struct.TYPE_7__** @optable, align 8
  %241 = load i64, i64* %15, align 8
  %242 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %240, i64 %241
  %243 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %242, i32 0, i32 0
  %244 = load i8*, i8** %243, align 8
  %245 = load i8*, i8** %4, align 8
  %246 = getelementptr inbounds i8, i8* %245, i64 10
  %247 = load i32, i32* %8, align 4
  %248 = call i64 @memcmp(i8* %244, i8* %246, i32 %247)
  %249 = icmp eq i64 %248, 0
  br i1 %249, label %250, label %262

250:                                              ; preds = %239
  %251 = load i8*, i8** %5, align 8
  %252 = call i32 @strcat(i8* %251, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %253 = load i8*, i8** %5, align 8
  %254 = load %struct.TYPE_7__*, %struct.TYPE_7__** @optable, align 8
  %255 = load i64, i64* %15, align 8
  %256 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %254, i64 %255
  %257 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %256, i32 0, i32 1
  %258 = load i8*, i8** %257, align 8
  %259 = call i32 @strcat(i8* %253, i8* %258)
  %260 = load i8*, i8** %5, align 8
  %261 = call i32 @strcat(i8* %260, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %9, align 4
  br label %266

262:                                              ; preds = %239, %228
  br label %263

263:                                              ; preds = %262
  %264 = load i64, i64* %15, align 8
  %265 = add i64 %264, 1
  store i64 %265, i64* %15, align 8
  br label %223

266:                                              ; preds = %250, %223
  br label %310

267:                                              ; preds = %217, %214
  store i64 0, i64* %16, align 8
  br label %268

268:                                              ; preds = %306, %267
  %269 = load i64, i64* %16, align 8
  %270 = load %struct.TYPE_7__*, %struct.TYPE_7__** @optable, align 8
  %271 = call i64 @ARRAY_SIZE(%struct.TYPE_7__* %270)
  %272 = icmp ult i64 %269, %271
  br i1 %272, label %273, label %309

273:                                              ; preds = %268
  %274 = load i32, i32* %7, align 4
  %275 = sub nsw i32 %274, 3
  store i32 %275, i32* %8, align 4
  %276 = load %struct.TYPE_7__*, %struct.TYPE_7__** @optable, align 8
  %277 = load i64, i64* %16, align 8
  %278 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %276, i64 %277
  %279 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %278, i32 0, i32 0
  %280 = load i8*, i8** %279, align 8
  %281 = call i32 @strlen(i8* %280)
  %282 = load i32, i32* %8, align 4
  %283 = icmp eq i32 %281, %282
  br i1 %283, label %284, label %305

284:                                              ; preds = %273
  %285 = load %struct.TYPE_7__*, %struct.TYPE_7__** @optable, align 8
  %286 = load i64, i64* %16, align 8
  %287 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %285, i64 %286
  %288 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %287, i32 0, i32 0
  %289 = load i8*, i8** %288, align 8
  %290 = load i8*, i8** %4, align 8
  %291 = getelementptr inbounds i8, i8* %290, i64 3
  %292 = load i32, i32* %8, align 4
  %293 = call i64 @memcmp(i8* %289, i8* %291, i32 %292)
  %294 = icmp eq i64 %293, 0
  br i1 %294, label %295, label %305

295:                                              ; preds = %284
  %296 = load i8*, i8** %5, align 8
  %297 = call i32 @strcat(i8* %296, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %298 = load i8*, i8** %5, align 8
  %299 = load %struct.TYPE_7__*, %struct.TYPE_7__** @optable, align 8
  %300 = load i64, i64* %16, align 8
  %301 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %299, i64 %300
  %302 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %301, i32 0, i32 1
  %303 = load i8*, i8** %302, align 8
  %304 = call i32 @strcat(i8* %298, i8* %303)
  store i32 1, i32* %9, align 4
  br label %309

305:                                              ; preds = %284, %273
  br label %306

306:                                              ; preds = %305
  %307 = load i64, i64* %16, align 8
  %308 = add i64 %307, 1
  store i64 %308, i64* %16, align 8
  br label %268

309:                                              ; preds = %295, %268
  br label %310

310:                                              ; preds = %309, %266
  br label %346

311:                                              ; preds = %207, %201, %195, %192
  %312 = load i32, i32* %7, align 4
  %313 = icmp sge i32 %312, 5
  br i1 %313, label %314, label %345

314:                                              ; preds = %311
  %315 = load i8*, i8** %4, align 8
  %316 = call i64 @memcmp(i8* %315, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 4)
  %317 = icmp eq i64 %316, 0
  br i1 %317, label %318, label %345

318:                                              ; preds = %314
  %319 = load i32, i32* @cplus_markers, align 4
  %320 = load i8*, i8** %4, align 8
  %321 = getelementptr inbounds i8, i8* %320, i64 4
  %322 = load i8, i8* %321, align 1
  %323 = call i32* @strchr(i32 %319, i8 signext %322)
  %324 = icmp ne i32* %323, null
  br i1 %324, label %325, label %345

325:                                              ; preds = %318
  %326 = load i8*, i8** %4, align 8
  %327 = getelementptr inbounds i8, i8* %326, i64 5
  store i8* %327, i8** %12, align 8
  %328 = getelementptr inbounds [1 x %struct.work_stuff], [1 x %struct.work_stuff]* %11, i64 0, i64 0
  %329 = call i64 @do_type(%struct.work_stuff* %328, i8** %12, %struct.TYPE_6__* %10)
  %330 = icmp ne i64 %329, 0
  br i1 %330, label %331, label %344

331:                                              ; preds = %325
  %332 = load i8*, i8** %5, align 8
  %333 = call i32 @strcat(i8* %332, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %334 = load i8*, i8** %5, align 8
  %335 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %336 = load i64, i64* %335, align 8
  %337 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 1
  %338 = load i64, i64* %337, align 8
  %339 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %340 = load i64, i64* %339, align 8
  %341 = sub nsw i64 %338, %340
  %342 = call i32 @strncat(i8* %334, i64 %336, i64 %341)
  %343 = call i32 @string_delete(%struct.TYPE_6__* %10)
  store i32 1, i32* %9, align 4
  br label %344

344:                                              ; preds = %331, %325
  br label %345

345:                                              ; preds = %344, %318, %314, %311
  br label %346

346:                                              ; preds = %345, %310
  br label %347

347:                                              ; preds = %346, %191
  br label %348

348:                                              ; preds = %347, %69
  %349 = getelementptr inbounds [1 x %struct.work_stuff], [1 x %struct.work_stuff]* %11, i64 0, i64 0
  %350 = call i32 @squangle_mop_up(%struct.work_stuff* %349)
  %351 = load i32, i32* %9, align 4
  ret i32 %351
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i64 @do_type(%struct.work_stuff*, i8**, %struct.TYPE_6__*) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i32 @strncat(i8*, i64, i64) #1

declare dso_local i32 @string_delete(%struct.TYPE_6__*) #1

declare dso_local i64 @ISLOWER(i8 zeroext) #1

declare dso_local i64 @ARRAY_SIZE(%struct.TYPE_7__*) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

declare dso_local i32* @strchr(i32, i8 signext) #1

declare dso_local i32 @squangle_mop_up(%struct.work_stuff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
