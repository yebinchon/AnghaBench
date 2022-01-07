; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/libiberty/extr_cplus-dem.c_demangle_function_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/libiberty/extr_cplus-dem.c_demangle_function_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i8*, i8* }
%struct.work_stuff = type { i32, i32 }
%struct.TYPE_14__ = type { i8*, i8* }

@HP_DEMANGLING = common dso_local global i64 0, align 8
@LUCID_DEMANGLING = common dso_local global i64 0, align 8
@ARM_DEMANGLING = common dso_local global i64 0, align 8
@EDG_DEMANGLING = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"__ct\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"__dt\00", align 1
@cplus_markers = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"assign_\00", align 1
@optable = common dso_local global %struct.TYPE_15__* null, align 8
@.str.3 = private unnamed_addr constant [9 x i8] c"operator\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"operator \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.work_stuff*, i8**, %struct.TYPE_14__*, i8*)* @demangle_function_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @demangle_function_name(%struct.work_stuff* %0, i8** %1, %struct.TYPE_14__* %2, i8* %3) #0 {
  %5 = alloca %struct.work_stuff*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_14__, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.work_stuff* %0, %struct.work_stuff** %5, align 8
  store i8** %1, i8*** %6, align 8
  store %struct.TYPE_14__* %2, %struct.TYPE_14__** %7, align 8
  store i8* %3, i8** %8, align 8
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %15 = load i8**, i8*** %6, align 8
  %16 = load i8*, i8** %15, align 8
  %17 = load i8*, i8** %8, align 8
  %18 = load i8**, i8*** %6, align 8
  %19 = load i8*, i8** %18, align 8
  %20 = ptrtoint i8* %17 to i64
  %21 = ptrtoint i8* %19 to i64
  %22 = sub i64 %20, %21
  %23 = trunc i64 %22 to i32
  %24 = call i32 @string_appendn(%struct.TYPE_14__* %14, i8* %16, i32 %23)
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %26 = call i32 @string_need(%struct.TYPE_14__* %25, i32 1)
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  store i8 0, i8* %29, align 1
  %30 = load i8*, i8** %8, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 2
  %32 = load i8**, i8*** %6, align 8
  store i8* %31, i8** %32, align 8
  %33 = load i64, i64* @HP_DEMANGLING, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %46

35:                                               ; preds = %4
  %36 = load i8**, i8*** %6, align 8
  %37 = load i8*, i8** %36, align 8
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %39, 88
  br i1 %40, label %41, label %46

41:                                               ; preds = %35
  %42 = load %struct.work_stuff*, %struct.work_stuff** %5, align 8
  %43 = load i8**, i8*** %6, align 8
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %45 = call i32 @demangle_arm_hp_template(%struct.work_stuff* %42, i8** %43, i32 0, %struct.TYPE_14__* %44)
  br label %46

46:                                               ; preds = %41, %35, %4
  %47 = load i64, i64* @LUCID_DEMANGLING, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %58, label %49

49:                                               ; preds = %46
  %50 = load i64, i64* @ARM_DEMANGLING, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %58, label %52

52:                                               ; preds = %49
  %53 = load i64, i64* @HP_DEMANGLING, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %52
  %56 = load i64, i64* @EDG_DEMANGLING, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %86

58:                                               ; preds = %55, %52, %49, %46
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i32 0, i32 1
  %61 = load i8*, i8** %60, align 8
  %62 = call i64 @strcmp(i8* %61, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %71

64:                                               ; preds = %58
  %65 = load %struct.work_stuff*, %struct.work_stuff** %5, align 8
  %66 = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %66, align 4
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %70 = call i32 @string_clear(%struct.TYPE_14__* %69)
  br label %494

71:                                               ; preds = %58
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %72, i32 0, i32 1
  %74 = load i8*, i8** %73, align 8
  %75 = call i64 @strcmp(i8* %74, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %77, label %84

77:                                               ; preds = %71
  %78 = load %struct.work_stuff*, %struct.work_stuff** %5, align 8
  %79 = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %79, align 4
  %82 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %83 = call i32 @string_clear(%struct.TYPE_14__* %82)
  br label %494

84:                                               ; preds = %71
  br label %85

85:                                               ; preds = %84
  br label %86

86:                                               ; preds = %85, %55
  %87 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i32 0, i32 0
  %89 = load i8*, i8** %88, align 8
  %90 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %91 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %90, i32 0, i32 1
  %92 = load i8*, i8** %91, align 8
  %93 = ptrtoint i8* %89 to i64
  %94 = ptrtoint i8* %92 to i64
  %95 = sub i64 %93, %94
  %96 = icmp sge i64 %95, 3
  br i1 %96, label %97, label %255

97:                                               ; preds = %86
  %98 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %98, i32 0, i32 1
  %100 = load i8*, i8** %99, align 8
  %101 = getelementptr inbounds i8, i8* %100, i64 0
  %102 = load i8, i8* %101, align 1
  %103 = sext i8 %102 to i32
  %104 = icmp eq i32 %103, 111
  br i1 %104, label %105, label %255

105:                                              ; preds = %97
  %106 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %107 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %106, i32 0, i32 1
  %108 = load i8*, i8** %107, align 8
  %109 = getelementptr inbounds i8, i8* %108, i64 1
  %110 = load i8, i8* %109, align 1
  %111 = sext i8 %110 to i32
  %112 = icmp eq i32 %111, 112
  br i1 %112, label %113, label %255

113:                                              ; preds = %105
  %114 = load i32, i32* @cplus_markers, align 4
  %115 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %116 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %115, i32 0, i32 1
  %117 = load i8*, i8** %116, align 8
  %118 = getelementptr inbounds i8, i8* %117, i64 2
  %119 = load i8, i8* %118, align 1
  %120 = call i32* @strchr(i32 %114, i8 signext %119)
  %121 = icmp ne i32* %120, null
  br i1 %121, label %122, label %255

122:                                              ; preds = %113
  %123 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %124 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %123, i32 0, i32 0
  %125 = load i8*, i8** %124, align 8
  %126 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %127 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %126, i32 0, i32 1
  %128 = load i8*, i8** %127, align 8
  %129 = ptrtoint i8* %125 to i64
  %130 = ptrtoint i8* %128 to i64
  %131 = sub i64 %129, %130
  %132 = icmp sge i64 %131, 10
  br i1 %132, label %133, label %198

133:                                              ; preds = %122
  %134 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %135 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %134, i32 0, i32 1
  %136 = load i8*, i8** %135, align 8
  %137 = getelementptr inbounds i8, i8* %136, i64 3
  %138 = call i64 @memcmp(i8* %137, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 7)
  %139 = icmp eq i64 %138, 0
  br i1 %139, label %140, label %198

140:                                              ; preds = %133
  store i64 0, i64* %9, align 8
  br label %141

141:                                              ; preds = %194, %140
  %142 = load i64, i64* %9, align 8
  %143 = load %struct.TYPE_15__*, %struct.TYPE_15__** @optable, align 8
  %144 = call i64 @ARRAY_SIZE(%struct.TYPE_15__* %143)
  %145 = icmp ult i64 %142, %144
  br i1 %145, label %146, label %197

146:                                              ; preds = %141
  %147 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %148 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %147, i32 0, i32 0
  %149 = load i8*, i8** %148, align 8
  %150 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %151 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %150, i32 0, i32 1
  %152 = load i8*, i8** %151, align 8
  %153 = ptrtoint i8* %149 to i64
  %154 = ptrtoint i8* %152 to i64
  %155 = sub i64 %153, %154
  %156 = sub nsw i64 %155, 10
  %157 = trunc i64 %156 to i32
  store i32 %157, i32* %12, align 4
  %158 = load %struct.TYPE_15__*, %struct.TYPE_15__** @optable, align 8
  %159 = load i64, i64* %9, align 8
  %160 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %158, i64 %159
  %161 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %160, i32 0, i32 0
  %162 = load i8*, i8** %161, align 8
  %163 = call i32 @strlen(i8* %162)
  %164 = load i32, i32* %12, align 4
  %165 = icmp eq i32 %163, %164
  br i1 %165, label %166, label %193

166:                                              ; preds = %146
  %167 = load %struct.TYPE_15__*, %struct.TYPE_15__** @optable, align 8
  %168 = load i64, i64* %9, align 8
  %169 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %167, i64 %168
  %170 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %169, i32 0, i32 0
  %171 = load i8*, i8** %170, align 8
  %172 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %173 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %172, i32 0, i32 1
  %174 = load i8*, i8** %173, align 8
  %175 = getelementptr inbounds i8, i8* %174, i64 10
  %176 = load i32, i32* %12, align 4
  %177 = call i64 @memcmp(i8* %171, i8* %175, i32 %176)
  %178 = icmp eq i64 %177, 0
  br i1 %178, label %179, label %193

179:                                              ; preds = %166
  %180 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %181 = call i32 @string_clear(%struct.TYPE_14__* %180)
  %182 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %183 = call i32 @string_append(%struct.TYPE_14__* %182, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %184 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %185 = load %struct.TYPE_15__*, %struct.TYPE_15__** @optable, align 8
  %186 = load i64, i64* %9, align 8
  %187 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %185, i64 %186
  %188 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %187, i32 0, i32 1
  %189 = load i8*, i8** %188, align 8
  %190 = call i32 @string_append(%struct.TYPE_14__* %184, i8* %189)
  %191 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %192 = call i32 @string_append(%struct.TYPE_14__* %191, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %197

193:                                              ; preds = %166, %146
  br label %194

194:                                              ; preds = %193
  %195 = load i64, i64* %9, align 8
  %196 = add i64 %195, 1
  store i64 %196, i64* %9, align 8
  br label %141

197:                                              ; preds = %179, %141
  br label %254

198:                                              ; preds = %133, %122
  store i64 0, i64* %9, align 8
  br label %199

199:                                              ; preds = %250, %198
  %200 = load i64, i64* %9, align 8
  %201 = load %struct.TYPE_15__*, %struct.TYPE_15__** @optable, align 8
  %202 = call i64 @ARRAY_SIZE(%struct.TYPE_15__* %201)
  %203 = icmp ult i64 %200, %202
  br i1 %203, label %204, label %253

204:                                              ; preds = %199
  %205 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %206 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %205, i32 0, i32 0
  %207 = load i8*, i8** %206, align 8
  %208 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %209 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %208, i32 0, i32 1
  %210 = load i8*, i8** %209, align 8
  %211 = ptrtoint i8* %207 to i64
  %212 = ptrtoint i8* %210 to i64
  %213 = sub i64 %211, %212
  %214 = sub nsw i64 %213, 3
  %215 = trunc i64 %214 to i32
  store i32 %215, i32* %13, align 4
  %216 = load %struct.TYPE_15__*, %struct.TYPE_15__** @optable, align 8
  %217 = load i64, i64* %9, align 8
  %218 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %216, i64 %217
  %219 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %218, i32 0, i32 0
  %220 = load i8*, i8** %219, align 8
  %221 = call i32 @strlen(i8* %220)
  %222 = load i32, i32* %13, align 4
  %223 = icmp eq i32 %221, %222
  br i1 %223, label %224, label %249

224:                                              ; preds = %204
  %225 = load %struct.TYPE_15__*, %struct.TYPE_15__** @optable, align 8
  %226 = load i64, i64* %9, align 8
  %227 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %225, i64 %226
  %228 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %227, i32 0, i32 0
  %229 = load i8*, i8** %228, align 8
  %230 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %231 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %230, i32 0, i32 1
  %232 = load i8*, i8** %231, align 8
  %233 = getelementptr inbounds i8, i8* %232, i64 3
  %234 = load i32, i32* %13, align 4
  %235 = call i64 @memcmp(i8* %229, i8* %233, i32 %234)
  %236 = icmp eq i64 %235, 0
  br i1 %236, label %237, label %249

237:                                              ; preds = %224
  %238 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %239 = call i32 @string_clear(%struct.TYPE_14__* %238)
  %240 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %241 = call i32 @string_append(%struct.TYPE_14__* %240, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %242 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %243 = load %struct.TYPE_15__*, %struct.TYPE_15__** @optable, align 8
  %244 = load i64, i64* %9, align 8
  %245 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %243, i64 %244
  %246 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %245, i32 0, i32 1
  %247 = load i8*, i8** %246, align 8
  %248 = call i32 @string_append(%struct.TYPE_14__* %242, i8* %247)
  br label %253

249:                                              ; preds = %224, %204
  br label %250

250:                                              ; preds = %249
  %251 = load i64, i64* %9, align 8
  %252 = add i64 %251, 1
  store i64 %252, i64* %9, align 8
  br label %199

253:                                              ; preds = %237, %199
  br label %254

254:                                              ; preds = %253, %197
  br label %494

255:                                              ; preds = %113, %105, %97, %86
  %256 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %257 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %256, i32 0, i32 0
  %258 = load i8*, i8** %257, align 8
  %259 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %260 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %259, i32 0, i32 1
  %261 = load i8*, i8** %260, align 8
  %262 = ptrtoint i8* %258 to i64
  %263 = ptrtoint i8* %261 to i64
  %264 = sub i64 %262, %263
  %265 = icmp sge i64 %264, 5
  br i1 %265, label %266, label %298

266:                                              ; preds = %255
  %267 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %268 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %267, i32 0, i32 1
  %269 = load i8*, i8** %268, align 8
  %270 = call i64 @memcmp(i8* %269, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 4)
  %271 = icmp eq i64 %270, 0
  br i1 %271, label %272, label %298

272:                                              ; preds = %266
  %273 = load i32, i32* @cplus_markers, align 4
  %274 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %275 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %274, i32 0, i32 1
  %276 = load i8*, i8** %275, align 8
  %277 = getelementptr inbounds i8, i8* %276, i64 4
  %278 = load i8, i8* %277, align 1
  %279 = call i32* @strchr(i32 %273, i8 signext %278)
  %280 = icmp ne i32* %279, null
  br i1 %280, label %281, label %298

281:                                              ; preds = %272
  %282 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %283 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %282, i32 0, i32 1
  %284 = load i8*, i8** %283, align 8
  %285 = getelementptr inbounds i8, i8* %284, i64 5
  store i8* %285, i8** %11, align 8
  %286 = load %struct.work_stuff*, %struct.work_stuff** %5, align 8
  %287 = call i64 @do_type(%struct.work_stuff* %286, i8** %11, %struct.TYPE_14__* %10)
  %288 = icmp ne i64 %287, 0
  br i1 %288, label %289, label %297

289:                                              ; preds = %281
  %290 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %291 = call i32 @string_clear(%struct.TYPE_14__* %290)
  %292 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %293 = call i32 @string_append(%struct.TYPE_14__* %292, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  %294 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %295 = call i32 @string_appends(%struct.TYPE_14__* %294, %struct.TYPE_14__* %10)
  %296 = call i32 @string_delete(%struct.TYPE_14__* %10)
  br label %297

297:                                              ; preds = %289, %281
  br label %493

298:                                              ; preds = %272, %266, %255
  %299 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %300 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %299, i32 0, i32 1
  %301 = load i8*, i8** %300, align 8
  %302 = getelementptr inbounds i8, i8* %301, i64 0
  %303 = load i8, i8* %302, align 1
  %304 = sext i8 %303 to i32
  %305 = icmp eq i32 %304, 95
  br i1 %305, label %306, label %347

306:                                              ; preds = %298
  %307 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %308 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %307, i32 0, i32 1
  %309 = load i8*, i8** %308, align 8
  %310 = getelementptr inbounds i8, i8* %309, i64 1
  %311 = load i8, i8* %310, align 1
  %312 = sext i8 %311 to i32
  %313 = icmp eq i32 %312, 95
  br i1 %313, label %314, label %347

314:                                              ; preds = %306
  %315 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %316 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %315, i32 0, i32 1
  %317 = load i8*, i8** %316, align 8
  %318 = getelementptr inbounds i8, i8* %317, i64 2
  %319 = load i8, i8* %318, align 1
  %320 = sext i8 %319 to i32
  %321 = icmp eq i32 %320, 111
  br i1 %321, label %322, label %347

322:                                              ; preds = %314
  %323 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %324 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %323, i32 0, i32 1
  %325 = load i8*, i8** %324, align 8
  %326 = getelementptr inbounds i8, i8* %325, i64 3
  %327 = load i8, i8* %326, align 1
  %328 = sext i8 %327 to i32
  %329 = icmp eq i32 %328, 112
  br i1 %329, label %330, label %347

330:                                              ; preds = %322
  %331 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %332 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %331, i32 0, i32 1
  %333 = load i8*, i8** %332, align 8
  %334 = getelementptr inbounds i8, i8* %333, i64 4
  store i8* %334, i8** %11, align 8
  %335 = load %struct.work_stuff*, %struct.work_stuff** %5, align 8
  %336 = call i64 @do_type(%struct.work_stuff* %335, i8** %11, %struct.TYPE_14__* %10)
  %337 = icmp ne i64 %336, 0
  br i1 %337, label %338, label %346

338:                                              ; preds = %330
  %339 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %340 = call i32 @string_clear(%struct.TYPE_14__* %339)
  %341 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %342 = call i32 @string_append(%struct.TYPE_14__* %341, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  %343 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %344 = call i32 @string_appends(%struct.TYPE_14__* %343, %struct.TYPE_14__* %10)
  %345 = call i32 @string_delete(%struct.TYPE_14__* %10)
  br label %346

346:                                              ; preds = %338, %330
  br label %492

347:                                              ; preds = %322, %314, %306, %298
  %348 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %349 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %348, i32 0, i32 1
  %350 = load i8*, i8** %349, align 8
  %351 = getelementptr inbounds i8, i8* %350, i64 0
  %352 = load i8, i8* %351, align 1
  %353 = sext i8 %352 to i32
  %354 = icmp eq i32 %353, 95
  br i1 %354, label %355, label %491

355:                                              ; preds = %347
  %356 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %357 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %356, i32 0, i32 1
  %358 = load i8*, i8** %357, align 8
  %359 = getelementptr inbounds i8, i8* %358, i64 1
  %360 = load i8, i8* %359, align 1
  %361 = sext i8 %360 to i32
  %362 = icmp eq i32 %361, 95
  br i1 %362, label %363, label %491

363:                                              ; preds = %355
  %364 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %365 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %364, i32 0, i32 1
  %366 = load i8*, i8** %365, align 8
  %367 = getelementptr inbounds i8, i8* %366, i64 2
  %368 = load i8, i8* %367, align 1
  %369 = call i64 @ISLOWER(i8 zeroext %368)
  %370 = icmp ne i64 %369, 0
  br i1 %370, label %371, label %491

371:                                              ; preds = %363
  %372 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %373 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %372, i32 0, i32 1
  %374 = load i8*, i8** %373, align 8
  %375 = getelementptr inbounds i8, i8* %374, i64 3
  %376 = load i8, i8* %375, align 1
  %377 = call i64 @ISLOWER(i8 zeroext %376)
  %378 = icmp ne i64 %377, 0
  br i1 %378, label %379, label %491

379:                                              ; preds = %371
  %380 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %381 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %380, i32 0, i32 1
  %382 = load i8*, i8** %381, align 8
  %383 = getelementptr inbounds i8, i8* %382, i64 4
  %384 = load i8, i8* %383, align 1
  %385 = sext i8 %384 to i32
  %386 = icmp eq i32 %385, 0
  br i1 %386, label %387, label %430

387:                                              ; preds = %379
  store i64 0, i64* %9, align 8
  br label %388

388:                                              ; preds = %426, %387
  %389 = load i64, i64* %9, align 8
  %390 = load %struct.TYPE_15__*, %struct.TYPE_15__** @optable, align 8
  %391 = call i64 @ARRAY_SIZE(%struct.TYPE_15__* %390)
  %392 = icmp ult i64 %389, %391
  br i1 %392, label %393, label %429

393:                                              ; preds = %388
  %394 = load %struct.TYPE_15__*, %struct.TYPE_15__** @optable, align 8
  %395 = load i64, i64* %9, align 8
  %396 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %394, i64 %395
  %397 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %396, i32 0, i32 0
  %398 = load i8*, i8** %397, align 8
  %399 = call i32 @strlen(i8* %398)
  %400 = icmp eq i32 %399, 2
  br i1 %400, label %401, label %425

401:                                              ; preds = %393
  %402 = load %struct.TYPE_15__*, %struct.TYPE_15__** @optable, align 8
  %403 = load i64, i64* %9, align 8
  %404 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %402, i64 %403
  %405 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %404, i32 0, i32 0
  %406 = load i8*, i8** %405, align 8
  %407 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %408 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %407, i32 0, i32 1
  %409 = load i8*, i8** %408, align 8
  %410 = getelementptr inbounds i8, i8* %409, i64 2
  %411 = call i64 @memcmp(i8* %406, i8* %410, i32 2)
  %412 = icmp eq i64 %411, 0
  br i1 %412, label %413, label %425

413:                                              ; preds = %401
  %414 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %415 = call i32 @string_clear(%struct.TYPE_14__* %414)
  %416 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %417 = call i32 @string_append(%struct.TYPE_14__* %416, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %418 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %419 = load %struct.TYPE_15__*, %struct.TYPE_15__** @optable, align 8
  %420 = load i64, i64* %9, align 8
  %421 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %419, i64 %420
  %422 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %421, i32 0, i32 1
  %423 = load i8*, i8** %422, align 8
  %424 = call i32 @string_append(%struct.TYPE_14__* %418, i8* %423)
  br label %429

425:                                              ; preds = %401, %393
  br label %426

426:                                              ; preds = %425
  %427 = load i64, i64* %9, align 8
  %428 = add i64 %427, 1
  store i64 %428, i64* %9, align 8
  br label %388

429:                                              ; preds = %413, %388
  br label %490

430:                                              ; preds = %379
  %431 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %432 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %431, i32 0, i32 1
  %433 = load i8*, i8** %432, align 8
  %434 = getelementptr inbounds i8, i8* %433, i64 2
  %435 = load i8, i8* %434, align 1
  %436 = sext i8 %435 to i32
  %437 = icmp eq i32 %436, 97
  br i1 %437, label %438, label %489

438:                                              ; preds = %430
  %439 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %440 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %439, i32 0, i32 1
  %441 = load i8*, i8** %440, align 8
  %442 = getelementptr inbounds i8, i8* %441, i64 5
  %443 = load i8, i8* %442, align 1
  %444 = sext i8 %443 to i32
  %445 = icmp eq i32 %444, 0
  br i1 %445, label %446, label %489

446:                                              ; preds = %438
  store i64 0, i64* %9, align 8
  br label %447

447:                                              ; preds = %485, %446
  %448 = load i64, i64* %9, align 8
  %449 = load %struct.TYPE_15__*, %struct.TYPE_15__** @optable, align 8
  %450 = call i64 @ARRAY_SIZE(%struct.TYPE_15__* %449)
  %451 = icmp ult i64 %448, %450
  br i1 %451, label %452, label %488

452:                                              ; preds = %447
  %453 = load %struct.TYPE_15__*, %struct.TYPE_15__** @optable, align 8
  %454 = load i64, i64* %9, align 8
  %455 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %453, i64 %454
  %456 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %455, i32 0, i32 0
  %457 = load i8*, i8** %456, align 8
  %458 = call i32 @strlen(i8* %457)
  %459 = icmp eq i32 %458, 3
  br i1 %459, label %460, label %484

460:                                              ; preds = %452
  %461 = load %struct.TYPE_15__*, %struct.TYPE_15__** @optable, align 8
  %462 = load i64, i64* %9, align 8
  %463 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %461, i64 %462
  %464 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %463, i32 0, i32 0
  %465 = load i8*, i8** %464, align 8
  %466 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %467 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %466, i32 0, i32 1
  %468 = load i8*, i8** %467, align 8
  %469 = getelementptr inbounds i8, i8* %468, i64 2
  %470 = call i64 @memcmp(i8* %465, i8* %469, i32 3)
  %471 = icmp eq i64 %470, 0
  br i1 %471, label %472, label %484

472:                                              ; preds = %460
  %473 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %474 = call i32 @string_clear(%struct.TYPE_14__* %473)
  %475 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %476 = call i32 @string_append(%struct.TYPE_14__* %475, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %477 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %478 = load %struct.TYPE_15__*, %struct.TYPE_15__** @optable, align 8
  %479 = load i64, i64* %9, align 8
  %480 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %478, i64 %479
  %481 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %480, i32 0, i32 1
  %482 = load i8*, i8** %481, align 8
  %483 = call i32 @string_append(%struct.TYPE_14__* %477, i8* %482)
  br label %488

484:                                              ; preds = %460, %452
  br label %485

485:                                              ; preds = %484
  %486 = load i64, i64* %9, align 8
  %487 = add i64 %486, 1
  store i64 %487, i64* %9, align 8
  br label %447

488:                                              ; preds = %472, %447
  br label %489

489:                                              ; preds = %488, %438, %430
  br label %490

490:                                              ; preds = %489, %429
  br label %491

491:                                              ; preds = %490, %371, %363, %355, %347
  br label %492

492:                                              ; preds = %491, %346
  br label %493

493:                                              ; preds = %492, %297
  br label %494

494:                                              ; preds = %64, %77, %493, %254
  ret void
}

declare dso_local i32 @string_appendn(%struct.TYPE_14__*, i8*, i32) #1

declare dso_local i32 @string_need(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @demangle_arm_hp_template(%struct.work_stuff*, i8**, i32, %struct.TYPE_14__*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @string_clear(%struct.TYPE_14__*) #1

declare dso_local i32* @strchr(i32, i8 signext) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

declare dso_local i64 @ARRAY_SIZE(%struct.TYPE_15__*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @string_append(%struct.TYPE_14__*, i8*) #1

declare dso_local i64 @do_type(%struct.work_stuff*, i8**, %struct.TYPE_14__*) #1

declare dso_local i32 @string_appends(%struct.TYPE_14__*, %struct.TYPE_14__*) #1

declare dso_local i32 @string_delete(%struct.TYPE_14__*) #1

declare dso_local i64 @ISLOWER(i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
