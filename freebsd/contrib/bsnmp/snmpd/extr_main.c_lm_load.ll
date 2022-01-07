; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmpd/extr_main.c_lm_load.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmpd/extr_main.c_lm_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lmodule = type { i32, %struct.lmodule*, i32*, %struct.TYPE_4__*, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i32 (%struct.lmodule*, i32, i8**)* }
%struct.TYPE_3__ = type { i64*, i32 }

@MAX_MOD_ARGS = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"lm_load: %m\00", align 1
@RTLD_NOW = common dso_local global i32 0, align 4
@RTLD_GLOBAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"lm_load: open %s\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"config\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"lm_load: no 'config' symbol %s\00", align 1
@lmodules = common dso_local global i32 0, align 4
@community = common dso_local global i64 0, align 8
@COMM_INITIALIZE = common dso_local global i64 0, align 8
@LM_ONSTARTLIST = common dso_local global i32 0, align 4
@modules_start = common dso_local global i32 0, align 4
@start = common dso_local global i32 0, align 4
@nprogargs = common dso_local global i32 0, align 4
@progargs = common dso_local global i8** null, align 8
@LOG_WARNING = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [34 x i8] c"too many arguments for module '%s\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"lm_load: init failed: %d\00", align 1
@link = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.lmodule* @lm_load(i8* %0, i8* %1) #0 {
  %3 = alloca %struct.lmodule*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.lmodule*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %14 = load i32, i32* @MAX_MOD_ARGS, align 4
  %15 = add nsw i32 %14, 1
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %9, align 8
  %18 = alloca i8*, i64 %16, align 16
  store i64 %16, i64* %10, align 8
  %19 = call %struct.lmodule* @malloc(i32 56)
  store %struct.lmodule* %19, %struct.lmodule** %6, align 8
  %20 = icmp eq %struct.lmodule* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load i32, i32* @LOG_ERR, align 4
  %23 = call i32 (i32, i8*, ...) @syslog(i32 %22, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  store %struct.lmodule* null, %struct.lmodule** %3, align 8
  store i32 1, i32* %13, align 4
  br label %246

24:                                               ; preds = %2
  %25 = load %struct.lmodule*, %struct.lmodule** %6, align 8
  %26 = getelementptr inbounds %struct.lmodule, %struct.lmodule* %25, i32 0, i32 2
  store i32* null, i32** %26, align 8
  %27 = load %struct.lmodule*, %struct.lmodule** %6, align 8
  %28 = getelementptr inbounds %struct.lmodule, %struct.lmodule* %27, i32 0, i32 0
  store i32 0, i32* %28, align 8
  %29 = load %struct.lmodule*, %struct.lmodule** %6, align 8
  %30 = getelementptr inbounds %struct.lmodule, %struct.lmodule* %29, i32 0, i32 5
  %31 = load i32, i32* %30, align 8
  %32 = load i8*, i8** %5, align 8
  %33 = call i32 @strlcpy(i32 %31, i8* %32, i32 4)
  %34 = load i8*, i8** %4, align 8
  %35 = call %struct.lmodule* @strdup(i8* %34)
  %36 = load %struct.lmodule*, %struct.lmodule** %6, align 8
  %37 = getelementptr inbounds %struct.lmodule, %struct.lmodule* %36, i32 0, i32 1
  store %struct.lmodule* %35, %struct.lmodule** %37, align 8
  %38 = icmp eq %struct.lmodule* %35, null
  br i1 %38, label %39, label %42

39:                                               ; preds = %24
  %40 = load i32, i32* @LOG_ERR, align 4
  %41 = call i32 (i32, i8*, ...) @syslog(i32 %40, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  br label %218

42:                                               ; preds = %24
  %43 = load i8*, i8** %5, align 8
  %44 = call i64 @strlen(i8* %43)
  %45 = load %struct.lmodule*, %struct.lmodule** %6, align 8
  %46 = getelementptr inbounds %struct.lmodule, %struct.lmodule* %45, i32 0, i32 4
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i64*, i64** %47, align 8
  %49 = getelementptr inbounds i64, i64* %48, i64 0
  store i64 %44, i64* %49, align 8
  %50 = load %struct.lmodule*, %struct.lmodule** %6, align 8
  %51 = getelementptr inbounds %struct.lmodule, %struct.lmodule* %50, i32 0, i32 4
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i64*, i64** %52, align 8
  %54 = getelementptr inbounds i64, i64* %53, i64 0
  %55 = load i64, i64* %54, align 8
  %56 = add i64 %55, 1
  %57 = trunc i64 %56 to i32
  %58 = load %struct.lmodule*, %struct.lmodule** %6, align 8
  %59 = getelementptr inbounds %struct.lmodule, %struct.lmodule* %58, i32 0, i32 4
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 1
  store i32 %57, i32* %60, align 8
  store i32 0, i32* %12, align 4
  br label %61

61:                                               ; preds = %86, %42
  %62 = load i32, i32* %12, align 4
  %63 = sext i32 %62 to i64
  %64 = load %struct.lmodule*, %struct.lmodule** %6, align 8
  %65 = getelementptr inbounds %struct.lmodule, %struct.lmodule* %64, i32 0, i32 4
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  %67 = load i64*, i64** %66, align 8
  %68 = getelementptr inbounds i64, i64* %67, i64 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp ult i64 %63, %69
  br i1 %70, label %71, label %89

71:                                               ; preds = %61
  %72 = load i8*, i8** %5, align 8
  %73 = load i32, i32* %12, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i8, i8* %72, i64 %74
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i64
  %78 = load %struct.lmodule*, %struct.lmodule** %6, align 8
  %79 = getelementptr inbounds %struct.lmodule, %struct.lmodule* %78, i32 0, i32 4
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  %81 = load i64*, i64** %80, align 8
  %82 = load i32, i32* %12, align 4
  %83 = add nsw i32 %82, 1
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i64, i64* %81, i64 %84
  store i64 %77, i64* %85, align 8
  br label %86

86:                                               ; preds = %71
  %87 = load i32, i32* %12, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %12, align 4
  br label %61

89:                                               ; preds = %61
  %90 = load %struct.lmodule*, %struct.lmodule** %6, align 8
  %91 = getelementptr inbounds %struct.lmodule, %struct.lmodule* %90, i32 0, i32 1
  %92 = load %struct.lmodule*, %struct.lmodule** %91, align 8
  %93 = load i32, i32* @RTLD_NOW, align 4
  %94 = load i32, i32* @RTLD_GLOBAL, align 4
  %95 = or i32 %93, %94
  %96 = call i32* @dlopen(%struct.lmodule* %92, i32 %95)
  %97 = load %struct.lmodule*, %struct.lmodule** %6, align 8
  %98 = getelementptr inbounds %struct.lmodule, %struct.lmodule* %97, i32 0, i32 2
  store i32* %96, i32** %98, align 8
  %99 = icmp eq i32* %96, null
  br i1 %99, label %100, label %104

100:                                              ; preds = %89
  %101 = load i32, i32* @LOG_ERR, align 4
  %102 = call i32 (...) @dlerror()
  %103 = call i32 (i32, i8*, ...) @syslog(i32 %101, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %102)
  br label %218

104:                                              ; preds = %89
  %105 = load %struct.lmodule*, %struct.lmodule** %6, align 8
  %106 = getelementptr inbounds %struct.lmodule, %struct.lmodule* %105, i32 0, i32 2
  %107 = load i32*, i32** %106, align 8
  %108 = call %struct.TYPE_4__* @dlsym(i32* %107, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %109 = load %struct.lmodule*, %struct.lmodule** %6, align 8
  %110 = getelementptr inbounds %struct.lmodule, %struct.lmodule* %109, i32 0, i32 3
  store %struct.TYPE_4__* %108, %struct.TYPE_4__** %110, align 8
  %111 = icmp eq %struct.TYPE_4__* %108, null
  br i1 %111, label %112, label %116

112:                                              ; preds = %104
  %113 = load i32, i32* @LOG_ERR, align 4
  %114 = call i32 (...) @dlerror()
  %115 = call i32 (i32, i8*, ...) @syslog(i32 %113, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %114)
  br label %218

116:                                              ; preds = %104
  %117 = load %struct.lmodule*, %struct.lmodule** %6, align 8
  %118 = call i32 @INSERT_OBJECT_OID(%struct.lmodule* %117, i32* @lmodules)
  %119 = load i64, i64* @community, align 8
  %120 = load i64, i64* @COMM_INITIALIZE, align 8
  %121 = icmp eq i64 %119, %120
  br i1 %121, label %122, label %131

122:                                              ; preds = %116
  %123 = load i32, i32* @LM_ONSTARTLIST, align 4
  %124 = load %struct.lmodule*, %struct.lmodule** %6, align 8
  %125 = getelementptr inbounds %struct.lmodule, %struct.lmodule* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = or i32 %126, %123
  store i32 %127, i32* %125, align 8
  %128 = load %struct.lmodule*, %struct.lmodule** %6, align 8
  %129 = load i32, i32* @start, align 4
  %130 = call i32 @TAILQ_INSERT_TAIL(i32* @modules_start, %struct.lmodule* %128, i32 %129)
  br label %131

131:                                              ; preds = %122, %116
  store i32 0, i32* %11, align 4
  store i32 0, i32* %8, align 4
  br label %132

132:                                              ; preds = %193, %131
  %133 = load i32, i32* %8, align 4
  %134 = load i32, i32* @nprogargs, align 4
  %135 = icmp slt i32 %133, %134
  br i1 %135, label %136, label %196

136:                                              ; preds = %132
  %137 = load i8**, i8*** @progargs, align 8
  %138 = load i32, i32* %8, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i8*, i8** %137, i64 %139
  %141 = load i8*, i8** %140, align 8
  %142 = call i64 @strlen(i8* %141)
  %143 = load i8*, i8** %5, align 8
  %144 = call i64 @strlen(i8* %143)
  %145 = add i64 %144, 1
  %146 = icmp uge i64 %142, %145
  br i1 %146, label %147, label %192

147:                                              ; preds = %136
  %148 = load i8**, i8*** @progargs, align 8
  %149 = load i32, i32* %8, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i8*, i8** %148, i64 %150
  %152 = load i8*, i8** %151, align 8
  %153 = load i8*, i8** %5, align 8
  %154 = load i8*, i8** %5, align 8
  %155 = call i64 @strlen(i8* %154)
  %156 = call i64 @strncmp(i8* %152, i8* %153, i64 %155)
  %157 = icmp eq i64 %156, 0
  br i1 %157, label %158, label %192

158:                                              ; preds = %147
  %159 = load i8**, i8*** @progargs, align 8
  %160 = load i32, i32* %8, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i8*, i8** %159, i64 %161
  %163 = load i8*, i8** %162, align 8
  %164 = load i8*, i8** %5, align 8
  %165 = call i64 @strlen(i8* %164)
  %166 = getelementptr inbounds i8, i8* %163, i64 %165
  %167 = load i8, i8* %166, align 1
  %168 = sext i8 %167 to i32
  %169 = icmp eq i32 %168, 58
  br i1 %169, label %170, label %192

170:                                              ; preds = %158
  %171 = load i32, i32* %11, align 4
  %172 = load i32, i32* @MAX_MOD_ARGS, align 4
  %173 = icmp eq i32 %171, %172
  br i1 %173, label %174, label %178

174:                                              ; preds = %170
  %175 = load i32, i32* @LOG_WARNING, align 4
  %176 = load i8*, i8** %5, align 8
  %177 = call i32 (i32, i8*, ...) @syslog(i32 %175, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i8* %176)
  br label %196

178:                                              ; preds = %170
  %179 = load i8**, i8*** @progargs, align 8
  %180 = load i32, i32* %8, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i8*, i8** %179, i64 %181
  %183 = load i8*, i8** %182, align 8
  %184 = load i8*, i8** %5, align 8
  %185 = call i64 @strlen(i8* %184)
  %186 = add i64 %185, 1
  %187 = getelementptr inbounds i8, i8* %183, i64 %186
  %188 = load i32, i32* %11, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %11, align 4
  %190 = sext i32 %188 to i64
  %191 = getelementptr inbounds i8*, i8** %18, i64 %190
  store i8* %187, i8** %191, align 8
  br label %192

192:                                              ; preds = %178, %158, %147, %136
  br label %193

193:                                              ; preds = %192
  %194 = load i32, i32* %8, align 4
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* %8, align 4
  br label %132

196:                                              ; preds = %174, %132
  %197 = load i32, i32* %11, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds i8*, i8** %18, i64 %198
  store i8* null, i8** %199, align 8
  %200 = load %struct.lmodule*, %struct.lmodule** %6, align 8
  %201 = getelementptr inbounds %struct.lmodule, %struct.lmodule* %200, i32 0, i32 3
  %202 = load %struct.TYPE_4__*, %struct.TYPE_4__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %202, i32 0, i32 0
  %204 = load i32 (%struct.lmodule*, i32, i8**)*, i32 (%struct.lmodule*, i32, i8**)** %203, align 8
  %205 = load %struct.lmodule*, %struct.lmodule** %6, align 8
  %206 = load i32, i32* %11, align 4
  %207 = call i32 %204(%struct.lmodule* %205, i32 %206, i8** %18)
  store i32 %207, i32* %7, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %216

209:                                              ; preds = %196
  %210 = load i32, i32* @LOG_ERR, align 4
  %211 = load i32, i32* %7, align 4
  %212 = call i32 (i32, i8*, ...) @syslog(i32 %210, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i32 %211)
  %213 = load %struct.lmodule*, %struct.lmodule** %6, align 8
  %214 = load i32, i32* @link, align 4
  %215 = call i32 @TAILQ_REMOVE(i32* @lmodules, %struct.lmodule* %213, i32 %214)
  br label %218

216:                                              ; preds = %196
  %217 = load %struct.lmodule*, %struct.lmodule** %6, align 8
  store %struct.lmodule* %217, %struct.lmodule** %3, align 8
  store i32 1, i32* %13, align 4
  br label %246

218:                                              ; preds = %209, %112, %100, %39
  %219 = load %struct.lmodule*, %struct.lmodule** %6, align 8
  %220 = getelementptr inbounds %struct.lmodule, %struct.lmodule* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 8
  %222 = load i32, i32* @LM_ONSTARTLIST, align 4
  %223 = and i32 %221, %222
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %229

225:                                              ; preds = %218
  %226 = load %struct.lmodule*, %struct.lmodule** %6, align 8
  %227 = load i32, i32* @start, align 4
  %228 = call i32 @TAILQ_REMOVE(i32* @modules_start, %struct.lmodule* %226, i32 %227)
  br label %229

229:                                              ; preds = %225, %218
  %230 = load %struct.lmodule*, %struct.lmodule** %6, align 8
  %231 = getelementptr inbounds %struct.lmodule, %struct.lmodule* %230, i32 0, i32 2
  %232 = load i32*, i32** %231, align 8
  %233 = icmp ne i32* %232, null
  br i1 %233, label %234, label %239

234:                                              ; preds = %229
  %235 = load %struct.lmodule*, %struct.lmodule** %6, align 8
  %236 = getelementptr inbounds %struct.lmodule, %struct.lmodule* %235, i32 0, i32 2
  %237 = load i32*, i32** %236, align 8
  %238 = call i32 @dlclose(i32* %237)
  br label %239

239:                                              ; preds = %234, %229
  %240 = load %struct.lmodule*, %struct.lmodule** %6, align 8
  %241 = getelementptr inbounds %struct.lmodule, %struct.lmodule* %240, i32 0, i32 1
  %242 = load %struct.lmodule*, %struct.lmodule** %241, align 8
  %243 = call i32 @free(%struct.lmodule* %242)
  %244 = load %struct.lmodule*, %struct.lmodule** %6, align 8
  %245 = call i32 @free(%struct.lmodule* %244)
  store %struct.lmodule* null, %struct.lmodule** %3, align 8
  store i32 1, i32* %13, align 4
  br label %246

246:                                              ; preds = %239, %216, %21
  %247 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %247)
  %248 = load %struct.lmodule*, %struct.lmodule** %3, align 8
  ret %struct.lmodule* %248
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.lmodule* @malloc(i32) #2

declare dso_local i32 @syslog(i32, i8*, ...) #2

declare dso_local i32 @strlcpy(i32, i8*, i32) #2

declare dso_local %struct.lmodule* @strdup(i8*) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local i32* @dlopen(%struct.lmodule*, i32) #2

declare dso_local i32 @dlerror(...) #2

declare dso_local %struct.TYPE_4__* @dlsym(i32*, i8*) #2

declare dso_local i32 @INSERT_OBJECT_OID(%struct.lmodule*, i32*) #2

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.lmodule*, i32) #2

declare dso_local i64 @strncmp(i8*, i8*, i64) #2

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.lmodule*, i32) #2

declare dso_local i32 @dlclose(i32*) #2

declare dso_local i32 @free(%struct.lmodule*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
