; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_consume.c_dt_print_bytes.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_consume.c_dt_print_bytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64* }

@DTRACEOPT_RAWBYTES = common dso_local global i64 0, align 8
@DTRACEOPT_UNSET = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c" %s%*s\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"  %-*s\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"\0A%*s      \00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"  %c\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"0123456789abcdef\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"  0123456789abcdef\0A\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"%*s%5x:\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c" %02x\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"   \00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"  \00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32*, i64, i64, i32, i32, i32)* @dt_print_bytes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dt_print_bytes(%struct.TYPE_4__* %0, i32* %1, i64 %2, i64 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_4__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %9, align 8
  store i32* %1, i32** %10, align 8
  store i64 %2, i64* %11, align 8
  store i64 %3, i64* %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 5, i32* %18, align 4
  %21 = load i64, i64* %11, align 8
  %22 = inttoptr i64 %21 to i8*
  store i8* %22, i8** %19, align 8
  %23 = load i64, i64* %12, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %7
  store i32 0, i32* %8, align 4
  br label %319

26:                                               ; preds = %7
  %27 = load i32, i32* %15, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  br label %164

30:                                               ; preds = %26
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i64*, i64** %32, align 8
  %34 = load i64, i64* @DTRACEOPT_RAWBYTES, align 8
  %35 = getelementptr inbounds i64, i64* %33, i64 %34
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @DTRACEOPT_UNSET, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %30
  br label %164

40:                                               ; preds = %30
  store i32 0, i32* %16, align 4
  br label %41

41:                                               ; preds = %138, %40
  %42 = load i32, i32* %16, align 4
  %43 = sext i32 %42 to i64
  %44 = load i64, i64* %12, align 8
  %45 = icmp ult i64 %43, %44
  br i1 %45, label %46, label %141

46:                                               ; preds = %41
  %47 = load i8*, i8** %19, align 8
  %48 = load i32, i32* %16, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8, i8* %47, i64 %49
  %51 = load i8, i8* %50, align 1
  %52 = call i64 @isprint(i8 signext %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %78, label %54

54:                                               ; preds = %46
  %55 = load i8*, i8** %19, align 8
  %56 = load i32, i32* %16, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8, i8* %55, i64 %57
  %59 = load i8, i8* %58, align 1
  %60 = call i64 @isspace(i8 signext %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %78, label %62

62:                                               ; preds = %54
  %63 = load i8*, i8** %19, align 8
  %64 = load i32, i32* %16, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8, i8* %63, i64 %65
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp eq i32 %68, 8
  br i1 %69, label %78, label %70

70:                                               ; preds = %62
  %71 = load i8*, i8** %19, align 8
  %72 = load i32, i32* %16, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i8, i8* %71, i64 %73
  %75 = load i8, i8* %74, align 1
  %76 = sext i8 %75 to i32
  %77 = icmp eq i32 %76, 7
  br i1 %77, label %78, label %79

78:                                               ; preds = %70, %62, %54, %46
  br label %138

79:                                               ; preds = %70
  %80 = load i8*, i8** %19, align 8
  %81 = load i32, i32* %16, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i8, i8* %80, i64 %82
  %84 = load i8, i8* %83, align 1
  %85 = sext i8 %84 to i32
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %137

87:                                               ; preds = %79
  %88 = load i32, i32* %16, align 4
  %89 = icmp sgt i32 %88, 0
  br i1 %89, label %90, label %137

90:                                               ; preds = %87
  %91 = load i32, i32* %16, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %17, align 4
  br label %93

93:                                               ; preds = %108, %90
  %94 = load i32, i32* %17, align 4
  %95 = sext i32 %94 to i64
  %96 = load i64, i64* %12, align 8
  %97 = icmp ult i64 %95, %96
  br i1 %97, label %98, label %111

98:                                               ; preds = %93
  %99 = load i8*, i8** %19, align 8
  %100 = load i32, i32* %17, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i8, i8* %99, i64 %101
  %103 = load i8, i8* %102, align 1
  %104 = sext i8 %103 to i32
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %98
  br label %111

107:                                              ; preds = %98
  br label %108

108:                                              ; preds = %107
  %109 = load i32, i32* %17, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %17, align 4
  br label %93

111:                                              ; preds = %106, %93
  %112 = load i32, i32* %17, align 4
  %113 = sext i32 %112 to i64
  %114 = load i64, i64* %12, align 8
  %115 = icmp ne i64 %113, %114
  br i1 %115, label %116, label %117

116:                                              ; preds = %111
  br label %141

117:                                              ; preds = %111
  %118 = load i32, i32* %14, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %126

120:                                              ; preds = %117
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %122 = load i32*, i32** %10, align 8
  %123 = load i8*, i8** %19, align 8
  %124 = call i64 (%struct.TYPE_4__*, i32*, i8*, ...) @dt_printf(%struct.TYPE_4__* %121, i32* %122, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %123)
  %125 = trunc i64 %124 to i32
  store i32 %125, i32* %8, align 4
  br label %319

126:                                              ; preds = %117
  %127 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %128 = load i32*, i32** %10, align 8
  %129 = load i32, i32* %13, align 4
  %130 = icmp slt i32 %129, 0
  %131 = zext i1 %130 to i64
  %132 = select i1 %130, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %133 = load i32, i32* %13, align 4
  %134 = load i8*, i8** %19, align 8
  %135 = call i64 (%struct.TYPE_4__*, i32*, i8*, ...) @dt_printf(%struct.TYPE_4__* %127, i32* %128, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %132, i32 %133, i8* %134)
  %136 = trunc i64 %135 to i32
  store i32 %136, i32* %8, align 4
  br label %319

137:                                              ; preds = %87, %79
  br label %141

138:                                              ; preds = %78
  %139 = load i32, i32* %16, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %16, align 4
  br label %41

141:                                              ; preds = %137, %116, %41
  %142 = load i32, i32* %16, align 4
  %143 = sext i32 %142 to i64
  %144 = load i64, i64* %12, align 8
  %145 = icmp eq i64 %143, %144
  br i1 %145, label %146, label %163

146:                                              ; preds = %141
  %147 = load i64, i64* %12, align 8
  %148 = add i64 %147, 1
  %149 = call i8* @alloca(i64 %148)
  store i8* %149, i8** %20, align 8
  %150 = load i8*, i8** %19, align 8
  %151 = load i8*, i8** %20, align 8
  %152 = load i64, i64* %12, align 8
  %153 = call i32 @bcopy(i8* %150, i8* %151, i64 %152)
  %154 = load i8*, i8** %20, align 8
  %155 = load i64, i64* %12, align 8
  %156 = getelementptr inbounds i8, i8* %154, i64 %155
  store i8 0, i8* %156, align 1
  %157 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %158 = load i32*, i32** %10, align 8
  %159 = load i32, i32* %13, align 4
  %160 = load i8*, i8** %20, align 8
  %161 = call i64 (%struct.TYPE_4__*, i32*, i8*, ...) @dt_printf(%struct.TYPE_4__* %157, i32* %158, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 %159, i8* %160)
  %162 = trunc i64 %161 to i32
  store i32 %162, i32* %8, align 4
  br label %319

163:                                              ; preds = %141
  br label %164

164:                                              ; preds = %163, %39, %29
  %165 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %166 = load i32*, i32** %10, align 8
  %167 = load i32, i32* %18, align 4
  %168 = call i64 (%struct.TYPE_4__*, i32*, i8*, ...) @dt_printf(%struct.TYPE_4__* %165, i32* %166, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32 %167, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0))
  %169 = icmp slt i64 %168, 0
  br i1 %169, label %170, label %171

170:                                              ; preds = %164
  store i32 -1, i32* %8, align 4
  br label %319

171:                                              ; preds = %164
  store i32 0, i32* %16, align 4
  br label %172

172:                                              ; preds = %187, %171
  %173 = load i32, i32* %16, align 4
  %174 = icmp slt i32 %173, 16
  br i1 %174, label %175, label %190

175:                                              ; preds = %172
  %176 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %177 = load i32*, i32** %10, align 8
  %178 = load i32, i32* %16, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds [17 x i8], [17 x i8]* @.str.7, i64 0, i64 %179
  %181 = load i8, i8* %180, align 1
  %182 = sext i8 %181 to i32
  %183 = call i64 (%struct.TYPE_4__*, i32*, i8*, ...) @dt_printf(%struct.TYPE_4__* %176, i32* %177, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i32 %182)
  %184 = icmp slt i64 %183, 0
  br i1 %184, label %185, label %186

185:                                              ; preds = %175
  store i32 -1, i32* %8, align 4
  br label %319

186:                                              ; preds = %175
  br label %187

187:                                              ; preds = %186
  %188 = load i32, i32* %16, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %16, align 4
  br label %172

190:                                              ; preds = %172
  %191 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %192 = load i32*, i32** %10, align 8
  %193 = call i64 (%struct.TYPE_4__*, i32*, i8*, ...) @dt_printf(%struct.TYPE_4__* %191, i32* %192, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0))
  %194 = icmp slt i64 %193, 0
  br i1 %194, label %195, label %196

195:                                              ; preds = %190
  store i32 -1, i32* %8, align 4
  br label %319

196:                                              ; preds = %190
  store i32 0, i32* %16, align 4
  br label %197

197:                                              ; preds = %315, %196
  %198 = load i32, i32* %16, align 4
  %199 = sext i32 %198 to i64
  %200 = load i64, i64* %12, align 8
  %201 = icmp ult i64 %199, %200
  br i1 %201, label %202, label %318

202:                                              ; preds = %197
  %203 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %204 = load i32*, i32** %10, align 8
  %205 = load i32, i32* %18, align 4
  %206 = load i32, i32* %16, align 4
  %207 = call i64 (%struct.TYPE_4__*, i32*, i8*, ...) @dt_printf(%struct.TYPE_4__* %203, i32* %204, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i32 %205, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i32 %206)
  %208 = icmp slt i64 %207, 0
  br i1 %208, label %209, label %210

209:                                              ; preds = %202
  store i32 -1, i32* %8, align 4
  br label %319

210:                                              ; preds = %202
  %211 = load i32, i32* %16, align 4
  store i32 %211, i32* %17, align 4
  br label %212

212:                                              ; preds = %237, %210
  %213 = load i32, i32* %17, align 4
  %214 = load i32, i32* %16, align 4
  %215 = add nsw i32 %214, 16
  %216 = icmp slt i32 %213, %215
  br i1 %216, label %217, label %222

217:                                              ; preds = %212
  %218 = load i32, i32* %17, align 4
  %219 = sext i32 %218 to i64
  %220 = load i64, i64* %12, align 8
  %221 = icmp ult i64 %219, %220
  br label %222

222:                                              ; preds = %217, %212
  %223 = phi i1 [ false, %212 ], [ %221, %217 ]
  br i1 %223, label %224, label %240

224:                                              ; preds = %222
  %225 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %226 = load i32*, i32** %10, align 8
  %227 = load i8*, i8** %19, align 8
  %228 = load i32, i32* %17, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds i8, i8* %227, i64 %229
  %231 = load i8, i8* %230, align 1
  %232 = sext i8 %231 to i32
  %233 = call i64 (%struct.TYPE_4__*, i32*, i8*, ...) @dt_printf(%struct.TYPE_4__* %225, i32* %226, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i32 %232)
  %234 = icmp slt i64 %233, 0
  br i1 %234, label %235, label %236

235:                                              ; preds = %224
  store i32 -1, i32* %8, align 4
  br label %319

236:                                              ; preds = %224
  br label %237

237:                                              ; preds = %236
  %238 = load i32, i32* %17, align 4
  %239 = add nsw i32 %238, 1
  store i32 %239, i32* %17, align 4
  br label %212

240:                                              ; preds = %222
  br label %241

241:                                              ; preds = %252, %240
  %242 = load i32, i32* %17, align 4
  %243 = add nsw i32 %242, 1
  store i32 %243, i32* %17, align 4
  %244 = srem i32 %242, 16
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %253

246:                                              ; preds = %241
  %247 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %248 = load i32*, i32** %10, align 8
  %249 = call i64 (%struct.TYPE_4__*, i32*, i8*, ...) @dt_printf(%struct.TYPE_4__* %247, i32* %248, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0))
  %250 = icmp slt i64 %249, 0
  br i1 %250, label %251, label %252

251:                                              ; preds = %246
  store i32 -1, i32* %8, align 4
  br label %319

252:                                              ; preds = %246
  br label %241

253:                                              ; preds = %241
  %254 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %255 = load i32*, i32** %10, align 8
  %256 = call i64 (%struct.TYPE_4__*, i32*, i8*, ...) @dt_printf(%struct.TYPE_4__* %254, i32* %255, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0))
  %257 = icmp slt i64 %256, 0
  br i1 %257, label %258, label %259

258:                                              ; preds = %253
  store i32 -1, i32* %8, align 4
  br label %319

259:                                              ; preds = %253
  %260 = load i32, i32* %16, align 4
  store i32 %260, i32* %17, align 4
  br label %261

261:                                              ; preds = %305, %259
  %262 = load i32, i32* %17, align 4
  %263 = load i32, i32* %16, align 4
  %264 = add nsw i32 %263, 16
  %265 = icmp slt i32 %262, %264
  br i1 %265, label %266, label %271

266:                                              ; preds = %261
  %267 = load i32, i32* %17, align 4
  %268 = sext i32 %267 to i64
  %269 = load i64, i64* %12, align 8
  %270 = icmp ult i64 %268, %269
  br label %271

271:                                              ; preds = %266, %261
  %272 = phi i1 [ false, %261 ], [ %270, %266 ]
  br i1 %272, label %273, label %308

273:                                              ; preds = %271
  %274 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %275 = load i32*, i32** %10, align 8
  %276 = load i8*, i8** %19, align 8
  %277 = load i32, i32* %17, align 4
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds i8, i8* %276, i64 %278
  %280 = load i8, i8* %279, align 1
  %281 = sext i8 %280 to i32
  %282 = icmp slt i32 %281, 32
  br i1 %282, label %291, label %283

283:                                              ; preds = %273
  %284 = load i8*, i8** %19, align 8
  %285 = load i32, i32* %17, align 4
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds i8, i8* %284, i64 %286
  %288 = load i8, i8* %287, align 1
  %289 = sext i8 %288 to i32
  %290 = icmp sgt i32 %289, 126
  br i1 %290, label %291, label %292

291:                                              ; preds = %283, %273
  br label %299

292:                                              ; preds = %283
  %293 = load i8*, i8** %19, align 8
  %294 = load i32, i32* %17, align 4
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds i8, i8* %293, i64 %295
  %297 = load i8, i8* %296, align 1
  %298 = sext i8 %297 to i32
  br label %299

299:                                              ; preds = %292, %291
  %300 = phi i32 [ 46, %291 ], [ %298, %292 ]
  %301 = call i64 (%struct.TYPE_4__*, i32*, i8*, ...) @dt_printf(%struct.TYPE_4__* %274, i32* %275, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0), i32 %300)
  %302 = icmp slt i64 %301, 0
  br i1 %302, label %303, label %304

303:                                              ; preds = %299
  store i32 -1, i32* %8, align 4
  br label %319

304:                                              ; preds = %299
  br label %305

305:                                              ; preds = %304
  %306 = load i32, i32* %17, align 4
  %307 = add nsw i32 %306, 1
  store i32 %307, i32* %17, align 4
  br label %261

308:                                              ; preds = %271
  %309 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %310 = load i32*, i32** %10, align 8
  %311 = call i64 (%struct.TYPE_4__*, i32*, i8*, ...) @dt_printf(%struct.TYPE_4__* %309, i32* %310, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0))
  %312 = icmp slt i64 %311, 0
  br i1 %312, label %313, label %314

313:                                              ; preds = %308
  store i32 -1, i32* %8, align 4
  br label %319

314:                                              ; preds = %308
  br label %315

315:                                              ; preds = %314
  %316 = load i32, i32* %16, align 4
  %317 = add nsw i32 %316, 16
  store i32 %317, i32* %16, align 4
  br label %197

318:                                              ; preds = %197
  store i32 0, i32* %8, align 4
  br label %319

319:                                              ; preds = %318, %313, %303, %258, %251, %235, %209, %195, %185, %170, %146, %126, %120, %25
  %320 = load i32, i32* %8, align 4
  ret i32 %320
}

declare dso_local i64 @isprint(i8 signext) #1

declare dso_local i64 @isspace(i8 signext) #1

declare dso_local i64 @dt_printf(%struct.TYPE_4__*, i32*, i8*, ...) #1

declare dso_local i8* @alloca(i64) #1

declare dso_local i32 @bcopy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
