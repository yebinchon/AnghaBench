; ModuleID = '/home/carl/AnghaBench/freebsd/bin/sh/extr_jobs.c_dowait.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/sh/extr_jobs.c_dowait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.job = type { i32, i64, i32, %struct.procstat*, i64, i32, i64 }
%struct.procstat = type { i32, i32 }
%struct.sigaction = type { i32, i64, i32 }
%struct.rusage = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"dowait(%d, %p) called\0A\00", align 1
@DOWAIT_SIG = common dso_local global i32 0, align 4
@SIG_BLOCK = common dso_local global i32 0, align 4
@INTOFF = common dso_local global i32 0, align 4
@dummy_handler = common dso_local global i32 0, align 4
@SIGCHLD = common dso_local global i32 0, align 4
@DOWAIT_BLOCK = common dso_local global i32 0, align 4
@WNOHANG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"wait returns %d, status=%d\0A\00", align 1
@DOWAIT_SIG_TRAP = common dso_local global i32 0, align 4
@pendingsig = common dso_local global i64 0, align 8
@pendingsig_waitcmd = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@errno = common dso_local global i64 0, align 8
@ECHILD = common dso_local global i64 0, align 8
@JOBDONE = common dso_local global i8* null, align 8
@SIG_SETMASK = common dso_local global i32 0, align 4
@INTON = common dso_local global i32 0, align 4
@jobtab = common dso_local global %struct.job* null, align 8
@njobs = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [46 x i8] c"Changing status of proc %d from 0x%x to 0x%x\0A\00", align 1
@JOBSTOPPED = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [39 x i8] c"Job %td: changing state from %d to %d\0A\00", align 1
@iflag = common dso_local global i64 0, align 8
@bgjob = common dso_local global %struct.job* null, align 8
@rootshell = common dso_local global i32 0, align 4
@SIGINT = common dso_local global i32 0, align 4
@SIGPIPE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [15 x i8] c"Unknown signal\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c" (core dumped)\00", align 1
@out2 = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [43 x i8] c"Not printing status, rootshell=%d, job=%p\0A\00", align 1
@WCONTINUED = common dso_local global i32 0, align 4
@WUNTRACED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.job*)* @dowait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dowait(i32 %0, %struct.job* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.job*, align 8
  %6 = alloca %struct.sigaction, align 8
  %7 = alloca %struct.sigaction, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.procstat*, align 8
  %13 = alloca %struct.job*, align 8
  %14 = alloca %struct.job*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.job* %1, %struct.job** %5, align 8
  %23 = load i32, i32* %4, align 4
  %24 = load %struct.job*, %struct.job** %5, align 8
  %25 = bitcast %struct.job* %24 to i8*
  %26 = call i32 @TRACE(i8* %25)
  store i32 0, i32* %21, align 4
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @DOWAIT_SIG, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %47

31:                                               ; preds = %2
  %32 = call i32 @sigfillset(i32* %8)
  %33 = load i32, i32* @SIG_BLOCK, align 4
  %34 = call i32 @sigprocmask(i32 %33, i32* %8, i32* %9)
  %35 = load i32, i32* @INTOFF, align 4
  %36 = call i32 (...) @issigchldtrapped()
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %46, label %38

38:                                               ; preds = %31
  store i32 1, i32* %21, align 4
  %39 = load i32, i32* @dummy_handler, align 4
  %40 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %6, i32 0, i32 2
  store i32 %39, i32* %40, align 8
  %41 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %6, i32 0, i32 1
  store i64 0, i64* %41, align 8
  %42 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %6, i32 0, i32 0
  %43 = call i32 @sigemptyset(i32* %42)
  %44 = load i32, i32* @SIGCHLD, align 4
  %45 = call i32 @sigaction(i32 %44, %struct.sigaction* %6, %struct.sigaction* %7)
  br label %46

46:                                               ; preds = %38, %31
  br label %47

47:                                               ; preds = %46, %2
  br label %48

48:                                               ; preds = %103, %47
  store i32 0, i32* %20, align 4
  %49 = load i32, i32* %4, align 4
  %50 = load i32, i32* @DOWAIT_BLOCK, align 4
  %51 = load i32, i32* @DOWAIT_SIG, align 4
  %52 = or i32 %50, %51
  %53 = and i32 %49, %52
  %54 = load i32, i32* @DOWAIT_BLOCK, align 4
  %55 = icmp ne i32 %53, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %48
  %57 = load i32, i32* @WNOHANG, align 4
  %58 = load i32, i32* %20, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %20, align 4
  br label %60

60:                                               ; preds = %56, %48
  %61 = load i32, i32* %20, align 4
  %62 = call i32 @wait3(i32* %11, i32 %61, %struct.rusage* null)
  store i32 %62, i32* %10, align 4
  %63 = load i32, i32* %10, align 4
  %64 = load i32, i32* %11, align 4
  %65 = sext i32 %64 to i64
  %66 = inttoptr i64 %65 to i8*
  %67 = call i32 @TRACE(i8* %66)
  %68 = load i32, i32* %10, align 4
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %95

70:                                               ; preds = %60
  %71 = load i32, i32* %4, align 4
  %72 = load i32, i32* @DOWAIT_SIG, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %95

75:                                               ; preds = %70
  store i32 -1, i32* %10, align 4
  %76 = load i32, i32* %4, align 4
  %77 = load i32, i32* @DOWAIT_SIG_TRAP, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %75
  %81 = load i64, i64* @pendingsig, align 8
  br label %84

82:                                               ; preds = %75
  %83 = load i64, i64* @pendingsig_waitcmd, align 8
  br label %84

84:                                               ; preds = %82, %80
  %85 = phi i64 [ %81, %80 ], [ %83, %82 ]
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %84
  %88 = load i64, i64* @EINTR, align 8
  store i64 %88, i64* @errno, align 8
  br label %105

89:                                               ; preds = %84
  %90 = call i32 @sigsuspend(i32* %9)
  %91 = call i64 (...) @int_pending()
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %89
  br label %105

94:                                               ; preds = %89
  br label %95

95:                                               ; preds = %94, %70, %60
  br label %96

96:                                               ; preds = %95
  %97 = load i32, i32* %10, align 4
  %98 = icmp eq i32 %97, -1
  br i1 %98, label %99, label %103

99:                                               ; preds = %96
  %100 = load i64, i64* @errno, align 8
  %101 = load i64, i64* @EINTR, align 8
  %102 = icmp eq i64 %100, %101
  br label %103

103:                                              ; preds = %99, %96
  %104 = phi i1 [ false, %96 ], [ %102, %99 ]
  br i1 %104, label %48, label %105

105:                                              ; preds = %103, %93, %87
  %106 = load i32, i32* %10, align 4
  %107 = icmp eq i32 %106, -1
  br i1 %107, label %108, label %120

108:                                              ; preds = %105
  %109 = load i64, i64* @errno, align 8
  %110 = load i64, i64* @ECHILD, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %112, label %120

112:                                              ; preds = %108
  %113 = load %struct.job*, %struct.job** %5, align 8
  %114 = icmp ne %struct.job* %113, null
  br i1 %114, label %115, label %120

115:                                              ; preds = %112
  %116 = load i8*, i8** @JOBDONE, align 8
  %117 = ptrtoint i8* %116 to i32
  %118 = load %struct.job*, %struct.job** %5, align 8
  %119 = getelementptr inbounds %struct.job, %struct.job* %118, i32 0, i32 0
  store i32 %117, i32* %119, align 8
  br label %120

120:                                              ; preds = %115, %112, %108, %105
  %121 = load i32, i32* %4, align 4
  %122 = load i32, i32* @DOWAIT_SIG, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %135

125:                                              ; preds = %120
  %126 = load i32, i32* %21, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %125
  %129 = load i32, i32* @SIGCHLD, align 4
  %130 = call i32 @sigaction(i32 %129, %struct.sigaction* %7, %struct.sigaction* null)
  br label %131

131:                                              ; preds = %128, %125
  %132 = load i32, i32* @SIG_SETMASK, align 4
  %133 = call i32 @sigprocmask(i32 %132, i32* %9, i32* null)
  %134 = load i32, i32* @INTON, align 4
  br label %135

135:                                              ; preds = %131, %120
  %136 = load i32, i32* %10, align 4
  %137 = icmp sle i32 %136, 0
  br i1 %137, label %138, label %140

138:                                              ; preds = %135
  %139 = load i32, i32* %10, align 4
  store i32 %139, i32* %3, align 4
  br label %410

140:                                              ; preds = %135
  %141 = load i32, i32* @INTOFF, align 4
  store %struct.job* null, %struct.job** %14, align 8
  %142 = load %struct.job*, %struct.job** @jobtab, align 8
  store %struct.job* %142, %struct.job** %13, align 8
  br label %143

143:                                              ; preds = %300, %140
  %144 = load %struct.job*, %struct.job** %13, align 8
  %145 = load %struct.job*, %struct.job** @jobtab, align 8
  %146 = load i32, i32* @njobs, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.job, %struct.job* %145, i64 %147
  %149 = icmp ult %struct.job* %144, %148
  br i1 %149, label %150, label %303

150:                                              ; preds = %143
  %151 = load %struct.job*, %struct.job** %13, align 8
  %152 = getelementptr inbounds %struct.job, %struct.job* %151, i32 0, i32 6
  %153 = load i64, i64* %152, align 8
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %299

155:                                              ; preds = %150
  %156 = load %struct.job*, %struct.job** %13, align 8
  %157 = getelementptr inbounds %struct.job, %struct.job* %156, i32 0, i32 1
  %158 = load i64, i64* %157, align 8
  %159 = icmp sgt i64 %158, 0
  br i1 %159, label %160, label %299

160:                                              ; preds = %155
  store i32 1, i32* %16, align 4
  store i32 1, i32* %17, align 4
  %161 = load %struct.job*, %struct.job** %13, align 8
  %162 = getelementptr inbounds %struct.job, %struct.job* %161, i32 0, i32 3
  %163 = load %struct.procstat*, %struct.procstat** %162, align 8
  store %struct.procstat* %163, %struct.procstat** %12, align 8
  br label %164

164:                                              ; preds = %235, %160
  %165 = load %struct.procstat*, %struct.procstat** %12, align 8
  %166 = load %struct.job*, %struct.job** %13, align 8
  %167 = getelementptr inbounds %struct.job, %struct.job* %166, i32 0, i32 3
  %168 = load %struct.procstat*, %struct.procstat** %167, align 8
  %169 = load %struct.job*, %struct.job** %13, align 8
  %170 = getelementptr inbounds %struct.job, %struct.job* %169, i32 0, i32 1
  %171 = load i64, i64* %170, align 8
  %172 = getelementptr inbounds %struct.procstat, %struct.procstat* %168, i64 %171
  %173 = icmp ult %struct.procstat* %165, %172
  br i1 %173, label %174, label %238

174:                                              ; preds = %164
  %175 = load %struct.procstat*, %struct.procstat** %12, align 8
  %176 = getelementptr inbounds %struct.procstat, %struct.procstat* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = icmp eq i32 %177, -1
  br i1 %178, label %179, label %180

179:                                              ; preds = %174
  br label %235

180:                                              ; preds = %174
  %181 = load %struct.procstat*, %struct.procstat** %12, align 8
  %182 = getelementptr inbounds %struct.procstat, %struct.procstat* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = load i32, i32* %10, align 4
  %185 = icmp eq i32 %183, %184
  br i1 %185, label %186, label %220

186:                                              ; preds = %180
  %187 = load %struct.procstat*, %struct.procstat** %12, align 8
  %188 = getelementptr inbounds %struct.procstat, %struct.procstat* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  %190 = icmp eq i32 %189, -1
  br i1 %190, label %197, label %191

191:                                              ; preds = %186
  %192 = load %struct.procstat*, %struct.procstat** %12, align 8
  %193 = getelementptr inbounds %struct.procstat, %struct.procstat* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 4
  %195 = call i64 @WIFSTOPPED(i32 %194)
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %220

197:                                              ; preds = %191, %186
  %198 = load i32, i32* %10, align 4
  %199 = load %struct.procstat*, %struct.procstat** %12, align 8
  %200 = getelementptr inbounds %struct.procstat, %struct.procstat* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 4
  %202 = load i32, i32* %11, align 4
  %203 = sext i32 %202 to i64
  %204 = inttoptr i64 %203 to i8*
  %205 = call i32 @TRACE(i8* %204)
  %206 = load i32, i32* %11, align 4
  %207 = call i64 @WIFCONTINUED(i32 %206)
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %209, label %214

209:                                              ; preds = %197
  %210 = load %struct.procstat*, %struct.procstat** %12, align 8
  %211 = getelementptr inbounds %struct.procstat, %struct.procstat* %210, i32 0, i32 1
  store i32 -1, i32* %211, align 4
  %212 = load %struct.job*, %struct.job** %13, align 8
  %213 = getelementptr inbounds %struct.job, %struct.job* %212, i32 0, i32 0
  store i32 0, i32* %213, align 8
  br label %218

214:                                              ; preds = %197
  %215 = load i32, i32* %11, align 4
  %216 = load %struct.procstat*, %struct.procstat** %12, align 8
  %217 = getelementptr inbounds %struct.procstat, %struct.procstat* %216, i32 0, i32 1
  store i32 %215, i32* %217, align 4
  br label %218

218:                                              ; preds = %214, %209
  %219 = load %struct.job*, %struct.job** %13, align 8
  store %struct.job* %219, %struct.job** %14, align 8
  br label %220

220:                                              ; preds = %218, %191, %180
  %221 = load %struct.procstat*, %struct.procstat** %12, align 8
  %222 = getelementptr inbounds %struct.procstat, %struct.procstat* %221, i32 0, i32 1
  %223 = load i32, i32* %222, align 4
  %224 = icmp eq i32 %223, -1
  br i1 %224, label %225, label %226

225:                                              ; preds = %220
  store i32 0, i32* %17, align 4
  br label %234

226:                                              ; preds = %220
  %227 = load %struct.procstat*, %struct.procstat** %12, align 8
  %228 = getelementptr inbounds %struct.procstat, %struct.procstat* %227, i32 0, i32 1
  %229 = load i32, i32* %228, align 4
  %230 = call i64 @WIFSTOPPED(i32 %229)
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %232, label %233

232:                                              ; preds = %226
  store i32 0, i32* %16, align 4
  br label %233

233:                                              ; preds = %232, %226
  br label %234

234:                                              ; preds = %233, %225
  br label %235

235:                                              ; preds = %234, %179
  %236 = load %struct.procstat*, %struct.procstat** %12, align 8
  %237 = getelementptr inbounds %struct.procstat, %struct.procstat* %236, i32 1
  store %struct.procstat* %237, %struct.procstat** %12, align 8
  br label %164

238:                                              ; preds = %164
  %239 = load i32, i32* %17, align 4
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %298

241:                                              ; preds = %238
  %242 = load i32, i32* %16, align 4
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %246

244:                                              ; preds = %241
  %245 = load i8*, i8** @JOBDONE, align 8
  br label %248

246:                                              ; preds = %241
  %247 = load i8*, i8** @JOBSTOPPED, align 8
  br label %248

248:                                              ; preds = %246, %244
  %249 = phi i8* [ %245, %244 ], [ %247, %246 ]
  %250 = ptrtoint i8* %249 to i32
  store i32 %250, i32* %22, align 4
  %251 = load %struct.job*, %struct.job** %13, align 8
  %252 = getelementptr inbounds %struct.job, %struct.job* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 8
  %254 = load i32, i32* %22, align 4
  %255 = icmp ne i32 %253, %254
  br i1 %255, label %256, label %297

256:                                              ; preds = %248
  %257 = load %struct.job*, %struct.job** %13, align 8
  %258 = load %struct.job*, %struct.job** @jobtab, align 8
  %259 = ptrtoint %struct.job* %257 to i64
  %260 = ptrtoint %struct.job* %258 to i64
  %261 = sub i64 %259, %260
  %262 = sdiv exact i64 %261, 56
  %263 = add nsw i64 %262, 1
  %264 = load %struct.job*, %struct.job** %13, align 8
  %265 = getelementptr inbounds %struct.job, %struct.job* %264, i32 0, i32 0
  %266 = load i32, i32* %265, align 8
  %267 = load i32, i32* %22, align 4
  %268 = sext i32 %267 to i64
  %269 = inttoptr i64 %268 to i8*
  %270 = call i32 @TRACE(i8* %269)
  %271 = load i32, i32* %22, align 4
  %272 = load %struct.job*, %struct.job** %13, align 8
  %273 = getelementptr inbounds %struct.job, %struct.job* %272, i32 0, i32 0
  store i32 %271, i32* %273, align 8
  %274 = load %struct.job*, %struct.job** %13, align 8
  %275 = load %struct.job*, %struct.job** %5, align 8
  %276 = icmp ne %struct.job* %274, %275
  br i1 %276, label %277, label %296

277:                                              ; preds = %256
  %278 = load i32, i32* %16, align 4
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %280, label %295

280:                                              ; preds = %277
  %281 = load %struct.job*, %struct.job** %13, align 8
  %282 = getelementptr inbounds %struct.job, %struct.job* %281, i32 0, i32 5
  %283 = load i32, i32* %282, align 8
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %295, label %285

285:                                              ; preds = %280
  %286 = load i64, i64* @iflag, align 8
  %287 = icmp ne i64 %286, 0
  br i1 %287, label %295, label %288

288:                                              ; preds = %285
  %289 = load %struct.job*, %struct.job** %13, align 8
  %290 = load %struct.job*, %struct.job** @bgjob, align 8
  %291 = icmp ne %struct.job* %289, %290
  br i1 %291, label %292, label %295

292:                                              ; preds = %288
  %293 = load %struct.job*, %struct.job** %13, align 8
  %294 = call i32 @freejob(%struct.job* %293)
  br label %295

295:                                              ; preds = %292, %288, %285, %280, %277
  br label %296

296:                                              ; preds = %295, %256
  br label %297

297:                                              ; preds = %296, %248
  br label %298

298:                                              ; preds = %297, %238
  br label %299

299:                                              ; preds = %298, %155, %150
  br label %300

300:                                              ; preds = %299
  %301 = load %struct.job*, %struct.job** %13, align 8
  %302 = getelementptr inbounds %struct.job, %struct.job* %301, i32 1
  store %struct.job* %302, %struct.job** %13, align 8
  br label %143

303:                                              ; preds = %143
  %304 = load i32, i32* @INTON, align 4
  %305 = load %struct.job*, %struct.job** %14, align 8
  %306 = icmp ne %struct.job* %305, null
  br i1 %306, label %307, label %312

307:                                              ; preds = %303
  %308 = load %struct.job*, %struct.job** %14, align 8
  %309 = getelementptr inbounds %struct.job, %struct.job* %308, i32 0, i32 0
  %310 = load i32, i32* %309, align 8
  %311 = icmp eq i32 %310, 0
  br i1 %311, label %312, label %313

312:                                              ; preds = %307, %303
  br label %408

313:                                              ; preds = %307
  %314 = load i32, i32* @rootshell, align 4
  %315 = icmp ne i32 %314, 0
  br i1 %315, label %316, label %323

316:                                              ; preds = %313
  %317 = load i64, i64* @iflag, align 8
  %318 = icmp ne i64 %317, 0
  br i1 %318, label %319, label %323

319:                                              ; preds = %316
  %320 = load %struct.job*, %struct.job** %14, align 8
  %321 = load %struct.job*, %struct.job** %5, align 8
  %322 = icmp eq %struct.job* %320, %321
  br i1 %322, label %323, label %400

323:                                              ; preds = %319, %316, %313
  %324 = load %struct.job*, %struct.job** %14, align 8
  %325 = getelementptr inbounds %struct.job, %struct.job* %324, i32 0, i32 4
  %326 = load i64, i64* %325, align 8
  %327 = icmp ne i64 %326, 0
  br i1 %327, label %328, label %400

328:                                              ; preds = %323
  %329 = load %struct.job*, %struct.job** %14, align 8
  %330 = getelementptr inbounds %struct.job, %struct.job* %329, i32 0, i32 0
  %331 = load i32, i32* %330, align 8
  %332 = sext i32 %331 to i64
  %333 = inttoptr i64 %332 to i8*
  %334 = load i8*, i8** @JOBSTOPPED, align 8
  %335 = icmp ne i8* %333, %334
  br i1 %335, label %336, label %400

336:                                              ; preds = %328
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %337 = load %struct.job*, %struct.job** %14, align 8
  %338 = getelementptr inbounds %struct.job, %struct.job* %337, i32 0, i32 3
  %339 = load %struct.procstat*, %struct.procstat** %338, align 8
  store %struct.procstat* %339, %struct.procstat** %12, align 8
  br label %340

340:                                              ; preds = %366, %336
  %341 = load %struct.procstat*, %struct.procstat** %12, align 8
  %342 = load %struct.job*, %struct.job** %14, align 8
  %343 = getelementptr inbounds %struct.job, %struct.job* %342, i32 0, i32 3
  %344 = load %struct.procstat*, %struct.procstat** %343, align 8
  %345 = load %struct.job*, %struct.job** %14, align 8
  %346 = getelementptr inbounds %struct.job, %struct.job* %345, i32 0, i32 1
  %347 = load i64, i64* %346, align 8
  %348 = getelementptr inbounds %struct.procstat, %struct.procstat* %344, i64 %347
  %349 = icmp ult %struct.procstat* %341, %348
  br i1 %349, label %350, label %369

350:                                              ; preds = %340
  %351 = load %struct.procstat*, %struct.procstat** %12, align 8
  %352 = getelementptr inbounds %struct.procstat, %struct.procstat* %351, i32 0, i32 1
  %353 = load i32, i32* %352, align 4
  %354 = call i64 @WIFSIGNALED(i32 %353)
  %355 = icmp ne i64 %354, 0
  br i1 %355, label %356, label %365

356:                                              ; preds = %350
  %357 = load %struct.procstat*, %struct.procstat** %12, align 8
  %358 = getelementptr inbounds %struct.procstat, %struct.procstat* %357, i32 0, i32 1
  %359 = load i32, i32* %358, align 4
  %360 = call i32 @WTERMSIG(i32 %359)
  store i32 %360, i32* %18, align 4
  %361 = load %struct.procstat*, %struct.procstat** %12, align 8
  %362 = getelementptr inbounds %struct.procstat, %struct.procstat* %361, i32 0, i32 1
  %363 = load i32, i32* %362, align 4
  %364 = call i32 @WCOREDUMP(i32 %363)
  store i32 %364, i32* %19, align 4
  br label %365

365:                                              ; preds = %356, %350
  br label %366

366:                                              ; preds = %365
  %367 = load %struct.procstat*, %struct.procstat** %12, align 8
  %368 = getelementptr inbounds %struct.procstat, %struct.procstat* %367, i32 1
  store %struct.procstat* %368, %struct.procstat** %12, align 8
  br label %340

369:                                              ; preds = %340
  %370 = load i32, i32* %18, align 4
  %371 = icmp sgt i32 %370, 0
  br i1 %371, label %372, label %399

372:                                              ; preds = %369
  %373 = load i32, i32* %18, align 4
  %374 = load i32, i32* @SIGINT, align 4
  %375 = icmp ne i32 %373, %374
  br i1 %375, label %376, label %399

376:                                              ; preds = %372
  %377 = load i32, i32* %18, align 4
  %378 = load i32, i32* @SIGPIPE, align 4
  %379 = icmp ne i32 %377, %378
  br i1 %379, label %380, label %399

380:                                              ; preds = %376
  %381 = load i32, i32* %18, align 4
  %382 = call i8* @strsignal(i32 %381)
  store i8* %382, i8** %15, align 8
  %383 = load i8*, i8** %15, align 8
  %384 = icmp ne i8* %383, null
  br i1 %384, label %385, label %388

385:                                              ; preds = %380
  %386 = load i8*, i8** %15, align 8
  %387 = call i32 @out2str(i8* %386)
  br label %390

388:                                              ; preds = %380
  %389 = call i32 @out2str(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  br label %390

390:                                              ; preds = %388, %385
  %391 = load i32, i32* %19, align 4
  %392 = icmp ne i32 %391, 0
  br i1 %392, label %393, label %395

393:                                              ; preds = %390
  %394 = call i32 @out2str(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  br label %395

395:                                              ; preds = %393, %390
  %396 = call i32 @out2c(i8 signext 10)
  %397 = load i32, i32* @out2, align 4
  %398 = call i32 @flushout(i32 %397)
  br label %399

399:                                              ; preds = %395, %376, %372, %369
  br label %407

400:                                              ; preds = %328, %323, %319
  %401 = load i32, i32* @rootshell, align 4
  %402 = load %struct.job*, %struct.job** %5, align 8
  %403 = bitcast %struct.job* %402 to i8*
  %404 = call i32 @TRACE(i8* %403)
  %405 = load %struct.job*, %struct.job** %14, align 8
  %406 = getelementptr inbounds %struct.job, %struct.job* %405, i32 0, i32 2
  store i32 1, i32* %406, align 8
  br label %407

407:                                              ; preds = %400, %399
  br label %408

408:                                              ; preds = %407, %312
  %409 = load i32, i32* %10, align 4
  store i32 %409, i32* %3, align 4
  br label %410

410:                                              ; preds = %408, %138
  %411 = load i32, i32* %3, align 4
  ret i32 %411
}

declare dso_local i32 @TRACE(i8*) #1

declare dso_local i32 @sigfillset(i32*) #1

declare dso_local i32 @sigprocmask(i32, i32*, i32*) #1

declare dso_local i32 @issigchldtrapped(...) #1

declare dso_local i32 @sigemptyset(i32*) #1

declare dso_local i32 @sigaction(i32, %struct.sigaction*, %struct.sigaction*) #1

declare dso_local i32 @wait3(i32*, i32, %struct.rusage*) #1

declare dso_local i32 @sigsuspend(i32*) #1

declare dso_local i64 @int_pending(...) #1

declare dso_local i64 @WIFSTOPPED(i32) #1

declare dso_local i64 @WIFCONTINUED(i32) #1

declare dso_local i32 @freejob(%struct.job*) #1

declare dso_local i64 @WIFSIGNALED(i32) #1

declare dso_local i32 @WTERMSIG(i32) #1

declare dso_local i32 @WCOREDUMP(i32) #1

declare dso_local i8* @strsignal(i32) #1

declare dso_local i32 @out2str(i8*) #1

declare dso_local i32 @out2c(i8 signext) #1

declare dso_local i32 @flushout(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
