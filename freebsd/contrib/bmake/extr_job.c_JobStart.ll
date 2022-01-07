; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bmake/extr_job.c_JobStart.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bmake/extr_job.c_JobStart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i64, i32, i8*, %struct.TYPE_24__*, i32*, i32* }
%struct.TYPE_24__ = type { i32, i32, i32 }

@job_table = common dso_local global %struct.TYPE_23__* null, align 8
@job_table_end = common dso_local global %struct.TYPE_23__* null, align 8
@JOB_ST_FREE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"JobStart no job slots vacant\00", align 1
@JOB_ST_SETUP = common dso_local global i64 0, align 8
@OP_SPECIAL = common dso_local global i32 0, align 4
@JOB_SPECIAL = common dso_local global i32 0, align 4
@JOB_IGNERR = common dso_local global i32 0, align 4
@JOB_SILENT = common dso_local global i32 0, align 4
@Error = common dso_local global i32 0, align 4
@OP_MAKE = common dso_local global i32 0, align 4
@noRecursiveExecute = common dso_local global i32 0, align 4
@noExecute = common dso_local global i32 0, align 4
@touchFlag = common dso_local global i32 0, align 4
@TMPPAT = common dso_local global i32 0, align 4
@SCRIPT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"w+\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"Could not fdopen %s\00", align 1
@F_SETFD = common dso_local global i32 0, align 4
@FD_CLOEXEC = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@numCommands = common dso_local global i64 0, align 8
@JobPrintCommand = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@lastNode = common dso_local global %struct.TYPE_24__* null, align 8
@stdout = common dso_local global i8* null, align 8
@aborting = common dso_local global i64 0, align 8
@JobSaveCommand = common dso_local global i32 0, align 4
@MADE = common dso_local global i32 0, align 4
@JOB_FINISHED = common dso_local global i32 0, align 4
@JOB_ERROR = common dso_local global i32 0, align 4
@JOB_RUNNING = common dso_local global i32 0, align 4
@useMeta = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_24__*, i32)* @JobStart to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @JobStart(%struct.TYPE_24__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_24__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_23__*, align 8
  %7 = alloca [10 x i8*], align 16
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load %struct.TYPE_23__*, %struct.TYPE_23__** @job_table, align 8
  store %struct.TYPE_23__* %13, %struct.TYPE_23__** %6, align 8
  br label %14

14:                                               ; preds = %26, %2
  %15 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %16 = load %struct.TYPE_23__*, %struct.TYPE_23__** @job_table_end, align 8
  %17 = icmp ult %struct.TYPE_23__* %15, %16
  br i1 %17, label %18, label %29

18:                                               ; preds = %14
  %19 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @JOB_ST_FREE, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  br label %29

25:                                               ; preds = %18
  br label %26

26:                                               ; preds = %25
  %27 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %27, i32 1
  store %struct.TYPE_23__* %28, %struct.TYPE_23__** %6, align 8
  br label %14

29:                                               ; preds = %24, %14
  %30 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %31 = load %struct.TYPE_23__*, %struct.TYPE_23__** @job_table_end, align 8
  %32 = icmp uge %struct.TYPE_23__* %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = call i32 (i8*, ...) @Punt(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %35

35:                                               ; preds = %33, %29
  %36 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %37 = call i32 @memset(%struct.TYPE_23__* %36, i32 0, i32 48)
  %38 = load i64, i64* @JOB_ST_SETUP, align 8
  %39 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %39, i32 0, i32 0
  store i64 %38, i64* %40, align 8
  %41 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @OP_SPECIAL, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %35
  %48 = load i32, i32* @JOB_SPECIAL, align 4
  %49 = load i32, i32* %5, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %5, align 4
  br label %51

51:                                               ; preds = %47, %35
  %52 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %53 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %53, i32 0, i32 3
  store %struct.TYPE_24__* %52, %struct.TYPE_24__** %54, align 8
  %55 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %55, i32 0, i32 4
  store i32* null, i32** %56, align 8
  %57 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %57, i32 0, i32 1
  store i32 0, i32* %58, align 8
  %59 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %60 = call i64 @Targ_Ignore(%struct.TYPE_24__* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %51
  %63 = load i32, i32* @JOB_IGNERR, align 4
  %64 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = or i32 %66, %63
  store i32 %67, i32* %65, align 8
  br label %68

68:                                               ; preds = %62, %51
  %69 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %70 = call i64 @Targ_Silent(%struct.TYPE_24__* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %68
  %73 = load i32, i32* @JOB_SILENT, align 4
  %74 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = or i32 %76, %73
  store i32 %77, i32* %75, align 8
  br label %78

78:                                               ; preds = %72, %68
  %79 = load i32, i32* %5, align 4
  %80 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = or i32 %82, %79
  store i32 %83, i32* %81, align 8
  %84 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %85 = load i32, i32* @Error, align 4
  %86 = call i64 @Job_CheckCommands(%struct.TYPE_24__* %84, i32 %85)
  store i64 %86, i64* %8, align 8
  %87 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %87, i32 0, i32 5
  store i32* null, i32** %88, align 8
  %89 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @OP_MAKE, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %78
  %96 = load i32, i32* @noRecursiveExecute, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %104

98:                                               ; preds = %95, %78
  %99 = load i32, i32* @noExecute, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %156, label %101

101:                                              ; preds = %98
  %102 = load i32, i32* @touchFlag, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %156, label %104

104:                                              ; preds = %101, %95
  %105 = load i64, i64* %8, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %111, label %107

107:                                              ; preds = %104
  %108 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %109 = call i32 @PrintOnError(%struct.TYPE_24__* %108, i32* null)
  %110 = call i32 (...) @DieHorribly()
  br label %111

111:                                              ; preds = %107, %104
  %112 = call i32 @JobSigLock(i32* %12)
  %113 = load i32, i32* @TMPPAT, align 4
  %114 = call i32 @mkTempFile(i32 %113, i8** %11)
  store i32 %114, i32* %10, align 4
  %115 = load i32, i32* @SCRIPT, align 4
  %116 = call i32 @DEBUG(i32 %115)
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %121, label %118

118:                                              ; preds = %111
  %119 = load i8*, i8** %11, align 8
  %120 = call i32 @eunlink(i8* %119)
  br label %121

121:                                              ; preds = %118, %111
  %122 = call i32 @JobSigUnlock(i32* %12)
  %123 = load i32, i32* %10, align 4
  %124 = call i8* @fdopen(i32 %123, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %125 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %126 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %125, i32 0, i32 2
  store i8* %124, i8** %126, align 8
  %127 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %128 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %127, i32 0, i32 2
  %129 = load i8*, i8** %128, align 8
  %130 = icmp eq i8* %129, null
  br i1 %130, label %131, label %134

131:                                              ; preds = %121
  %132 = load i8*, i8** %11, align 8
  %133 = call i32 (i8*, ...) @Punt(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i8* %132)
  br label %134

134:                                              ; preds = %131, %121
  %135 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %136 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %135, i32 0, i32 2
  %137 = load i8*, i8** %136, align 8
  %138 = call i32 @FILENO(i8* %137)
  %139 = load i32, i32* @F_SETFD, align 4
  %140 = load i32, i32* @FD_CLOEXEC, align 4
  %141 = call i32 @fcntl(i32 %138, i32 %139, i32 %140)
  %142 = load i64, i64* @FALSE, align 8
  store i64 %142, i64* %9, align 8
  store i64 0, i64* @numCommands, align 8
  %143 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %144 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* @JobPrintCommand, align 4
  %147 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %148 = call i32 @Lst_ForEach(i32 %145, i32 %146, %struct.TYPE_23__* %147)
  %149 = load i64, i64* @numCommands, align 8
  %150 = icmp eq i64 %149, 0
  br i1 %150, label %151, label %153

151:                                              ; preds = %134
  %152 = load i64, i64* @TRUE, align 8
  store i64 %152, i64* %9, align 8
  br label %153

153:                                              ; preds = %151, %134
  %154 = load i8*, i8** %11, align 8
  %155 = call i32 @free(i8* %154)
  br label %197

156:                                              ; preds = %101, %98
  %157 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %158 = call i64 @NoExecute(%struct.TYPE_24__* %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %184

160:                                              ; preds = %156
  %161 = load %struct.TYPE_24__*, %struct.TYPE_24__** @lastNode, align 8
  %162 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %163 = icmp ne %struct.TYPE_24__* %161, %162
  br i1 %163, label %164, label %169

164:                                              ; preds = %160
  %165 = load i8*, i8** @stdout, align 8
  %166 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %167 = call i32 @MESSAGE(i8* %165, %struct.TYPE_24__* %166)
  %168 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  store %struct.TYPE_24__* %168, %struct.TYPE_24__** @lastNode, align 8
  br label %169

169:                                              ; preds = %164, %160
  %170 = load i8*, i8** @stdout, align 8
  %171 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %172 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %171, i32 0, i32 2
  store i8* %170, i8** %172, align 8
  %173 = load i64, i64* %8, align 8
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %182

175:                                              ; preds = %169
  %176 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %177 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %176, i32 0, i32 2
  %178 = load i32, i32* %177, align 4
  %179 = load i32, i32* @JobPrintCommand, align 4
  %180 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %181 = call i32 @Lst_ForEach(i32 %178, i32 %179, %struct.TYPE_23__* %180)
  br label %182

182:                                              ; preds = %175, %169
  %183 = load i64, i64* @TRUE, align 8
  store i64 %183, i64* %9, align 8
  br label %196

184:                                              ; preds = %156
  %185 = load i8*, i8** @stdout, align 8
  %186 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %187 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %186, i32 0, i32 2
  store i8* %185, i8** %187, align 8
  %188 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %189 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %190 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 8
  %192 = load i32, i32* @JOB_SILENT, align 4
  %193 = and i32 %191, %192
  %194 = call i32 @Job_Touch(%struct.TYPE_24__* %188, i32 %193)
  %195 = load i64, i64* @TRUE, align 8
  store i64 %195, i64* %9, align 8
  br label %196

196:                                              ; preds = %184, %182
  br label %197

197:                                              ; preds = %196, %153
  %198 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %199 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %198, i32 0, i32 2
  %200 = load i8*, i8** %199, align 8
  %201 = call i32 @fflush(i8* %200)
  %202 = load i64, i64* %9, align 8
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %279

204:                                              ; preds = %197
  %205 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %206 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 8
  %208 = load i32, i32* @JOB_SPECIAL, align 4
  %209 = and i32 %207, %208
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %213, label %211

211:                                              ; preds = %204
  %212 = call i32 (...) @Job_TokenReturn()
  br label %213

213:                                              ; preds = %211, %204
  %214 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %215 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %214, i32 0, i32 2
  %216 = load i8*, i8** %215, align 8
  %217 = load i8*, i8** @stdout, align 8
  %218 = icmp ne i8* %216, %217
  br i1 %218, label %219, label %232

219:                                              ; preds = %213
  %220 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %221 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %220, i32 0, i32 2
  %222 = load i8*, i8** %221, align 8
  %223 = icmp ne i8* %222, null
  br i1 %223, label %224, label %231

224:                                              ; preds = %219
  %225 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %226 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %225, i32 0, i32 2
  %227 = load i8*, i8** %226, align 8
  %228 = call i32 @fclose(i8* %227)
  %229 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %230 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %229, i32 0, i32 2
  store i8* null, i8** %230, align 8
  br label %231

231:                                              ; preds = %224, %219
  br label %232

232:                                              ; preds = %231, %213
  %233 = load i64, i64* %8, align 8
  %234 = icmp ne i64 %233, 0
  br i1 %234, label %235, label %267

235:                                              ; preds = %232
  %236 = load i64, i64* @aborting, align 8
  %237 = icmp eq i64 %236, 0
  br i1 %237, label %238, label %267

238:                                              ; preds = %235
  %239 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %240 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %239, i32 0, i32 4
  %241 = load i32*, i32** %240, align 8
  %242 = icmp ne i32* %241, null
  br i1 %242, label %243, label %257

243:                                              ; preds = %238
  %244 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %245 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %244, i32 0, i32 3
  %246 = load %struct.TYPE_24__*, %struct.TYPE_24__** %245, align 8
  %247 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %246, i32 0, i32 2
  %248 = load i32, i32* %247, align 4
  %249 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %250 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %249, i32 0, i32 4
  %251 = load i32*, i32** %250, align 8
  %252 = load i32, i32* @JobSaveCommand, align 4
  %253 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %254 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %253, i32 0, i32 3
  %255 = load %struct.TYPE_24__*, %struct.TYPE_24__** %254, align 8
  %256 = call i32 @Lst_ForEachFrom(i32 %248, i32* %251, i32 %252, %struct.TYPE_24__* %255)
  br label %257

257:                                              ; preds = %243, %238
  %258 = load i32, i32* @MADE, align 4
  %259 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %260 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %259, i32 0, i32 3
  %261 = load %struct.TYPE_24__*, %struct.TYPE_24__** %260, align 8
  %262 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %261, i32 0, i32 1
  store i32 %258, i32* %262, align 4
  %263 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %264 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %263, i32 0, i32 3
  %265 = load %struct.TYPE_24__*, %struct.TYPE_24__** %264, align 8
  %266 = call i32 @Make_Update(%struct.TYPE_24__* %265)
  br label %267

267:                                              ; preds = %257, %235, %232
  %268 = load i64, i64* @JOB_ST_FREE, align 8
  %269 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %270 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %269, i32 0, i32 0
  store i64 %268, i64* %270, align 8
  %271 = load i64, i64* %8, align 8
  %272 = icmp ne i64 %271, 0
  br i1 %272, label %273, label %275

273:                                              ; preds = %267
  %274 = load i32, i32* @JOB_FINISHED, align 4
  br label %277

275:                                              ; preds = %267
  %276 = load i32, i32* @JOB_ERROR, align 4
  br label %277

277:                                              ; preds = %275, %273
  %278 = phi i32 [ %274, %273 ], [ %276, %275 ]
  store i32 %278, i32* %3, align 4
  br label %289

279:                                              ; preds = %197
  %280 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %281 = getelementptr inbounds [10 x i8*], [10 x i8*]* %7, i64 0, i64 0
  %282 = call i32 @JobMakeArgv(%struct.TYPE_23__* %280, i8** %281)
  %283 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %284 = call i32 @JobCreatePipe(%struct.TYPE_23__* %283, i32 3)
  %285 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %286 = getelementptr inbounds [10 x i8*], [10 x i8*]* %7, i64 0, i64 0
  %287 = call i32 @JobExec(%struct.TYPE_23__* %285, i8** %286)
  %288 = load i32, i32* @JOB_RUNNING, align 4
  store i32 %288, i32* %3, align 4
  br label %289

289:                                              ; preds = %279, %277
  %290 = load i32, i32* %3, align 4
  ret i32 %290
}

declare dso_local i32 @Punt(i8*, ...) #1

declare dso_local i32 @memset(%struct.TYPE_23__*, i32, i32) #1

declare dso_local i64 @Targ_Ignore(%struct.TYPE_24__*) #1

declare dso_local i64 @Targ_Silent(%struct.TYPE_24__*) #1

declare dso_local i64 @Job_CheckCommands(%struct.TYPE_24__*, i32) #1

declare dso_local i32 @PrintOnError(%struct.TYPE_24__*, i32*) #1

declare dso_local i32 @DieHorribly(...) #1

declare dso_local i32 @JobSigLock(i32*) #1

declare dso_local i32 @mkTempFile(i32, i8**) #1

declare dso_local i32 @DEBUG(i32) #1

declare dso_local i32 @eunlink(i8*) #1

declare dso_local i32 @JobSigUnlock(i32*) #1

declare dso_local i8* @fdopen(i32, i8*) #1

declare dso_local i32 @fcntl(i32, i32, i32) #1

declare dso_local i32 @FILENO(i8*) #1

declare dso_local i32 @Lst_ForEach(i32, i32, %struct.TYPE_23__*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @NoExecute(%struct.TYPE_24__*) #1

declare dso_local i32 @MESSAGE(i8*, %struct.TYPE_24__*) #1

declare dso_local i32 @Job_Touch(%struct.TYPE_24__*, i32) #1

declare dso_local i32 @fflush(i8*) #1

declare dso_local i32 @Job_TokenReturn(...) #1

declare dso_local i32 @fclose(i8*) #1

declare dso_local i32 @Lst_ForEachFrom(i32, i32*, i32, %struct.TYPE_24__*) #1

declare dso_local i32 @Make_Update(%struct.TYPE_24__*) #1

declare dso_local i32 @JobMakeArgv(%struct.TYPE_23__*, i8**) #1

declare dso_local i32 @JobCreatePipe(%struct.TYPE_23__*, i32) #1

declare dso_local i32 @JobExec(%struct.TYPE_23__*, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
