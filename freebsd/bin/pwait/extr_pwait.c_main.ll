; ModuleID = '/home/carl/AnghaBench/freebsd/bin/pwait/extr_pwait.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/pwait/extr_pwait.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.itimerval = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { double, i32 }
%struct.kevent = type { i64, i64, i32 }

@.str = private unnamed_addr constant [4 x i8] c"t:v\00", align 1
@errno = common dso_local global i64 0, align 8
@optarg = common dso_local global i8* null, align 8
@ERANGE = common dso_local global i64 0, align 8
@EX_DATAERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"timeout value\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"timeout unit\00", align 1
@optind = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [7 x i8] c"kqueue\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"malloc\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"/proc/\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"%s: bad process id\00", align 1
@EVFILT_PROC = common dso_local global i64 0, align 8
@EV_ADD = common dso_local global i32 0, align 4
@NOTE_EXIT = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@SIGALRM = common dso_local global i64 0, align 8
@EVFILT_SIGNAL = common dso_local global i64 0, align 8
@EX_OSERR = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [7 x i8] c"kevent\00", align 1
@SIG_IGN = common dso_local global i32 0, align 4
@ITIMER_REAL = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [10 x i8] c"setitimer\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"timeout\0A\00", align 1
@.str.11 = private unnamed_addr constant [29 x i8] c"%ld: exited with status %d.\0A\00", align 1
@.str.12 = private unnamed_addr constant [27 x i8] c"%ld: killed by signal %d.\0A\00", align 1
@.str.13 = private unnamed_addr constant [18 x i8] c"%ld: terminated.\0A\00", align 1
@EX_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.itimerval, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.kevent*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca double, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  %21 = call i32 @memset(%struct.itimerval* %6, i32 0, i32 16)
  br label %22

22:                                               ; preds = %80, %2
  %23 = load i32, i32* %4, align 4
  %24 = load i8**, i8*** %5, align 8
  %25 = call i32 @getopt(i32 %23, i8** %24, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i32 %25, i32* %11, align 4
  %26 = icmp ne i32 %25, -1
  br i1 %26, label %27, label %81

27:                                               ; preds = %22
  %28 = load i32, i32* %11, align 4
  switch i32 %28, label %78 [
    i32 116, label %29
    i32 118, label %77
  ]

29:                                               ; preds = %27
  store i32 1, i32* %9, align 4
  store i64 0, i64* @errno, align 8
  %30 = load i8*, i8** @optarg, align 8
  %31 = call double @strtod(i8* %30, i8** %19)
  store double %31, double* %20, align 8
  %32 = load i8*, i8** %19, align 8
  %33 = load i8*, i8** @optarg, align 8
  %34 = icmp eq i8* %32, %33
  br i1 %34, label %42, label %35

35:                                               ; preds = %29
  %36 = load i64, i64* @errno, align 8
  %37 = load i64, i64* @ERANGE, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %42, label %39

39:                                               ; preds = %35
  %40 = load double, double* %20, align 8
  %41 = fcmp olt double %40, 0.000000e+00
  br i1 %41, label %42, label %45

42:                                               ; preds = %39, %35, %29
  %43 = load i32, i32* @EX_DATAERR, align 4
  %44 = call i32 @errx(i32 %43, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  br label %45

45:                                               ; preds = %42, %39
  %46 = load i8*, i8** %19, align 8
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  switch i32 %48, label %56 [
    i32 0, label %49
    i32 115, label %49
    i32 104, label %50
    i32 109, label %53
  ]

49:                                               ; preds = %45, %45
  br label %59

50:                                               ; preds = %45
  %51 = load double, double* %20, align 8
  %52 = fmul double %51, 6.000000e+01
  store double %52, double* %20, align 8
  br label %53

53:                                               ; preds = %45, %50
  %54 = load double, double* %20, align 8
  %55 = fmul double %54, 6.000000e+01
  store double %55, double* %20, align 8
  br label %59

56:                                               ; preds = %45
  %57 = load i32, i32* @EX_DATAERR, align 4
  %58 = call i32 @errx(i32 %57, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  br label %59

59:                                               ; preds = %56, %53, %49
  %60 = load double, double* %20, align 8
  %61 = fcmp ogt double %60, 1.000000e+08
  br i1 %61, label %62, label %65

62:                                               ; preds = %59
  %63 = load i32, i32* @EX_DATAERR, align 4
  %64 = call i32 @errx(i32 %63, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  br label %65

65:                                               ; preds = %62, %59
  %66 = load double, double* %20, align 8
  %67 = getelementptr inbounds %struct.itimerval, %struct.itimerval* %6, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  store double %66, double* %68, align 8
  %69 = load double, double* %20, align 8
  %70 = load double, double* %20, align 8
  %71 = fsub double %70, %69
  store double %71, double* %20, align 8
  %72 = load double, double* %20, align 8
  %73 = fmul double %72, 1.000000e+06
  %74 = fptosi double %73 to i32
  %75 = getelementptr inbounds %struct.itimerval, %struct.itimerval* %6, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 1
  store i32 %74, i32* %76, align 8
  br label %80

77:                                               ; preds = %27
  store i32 1, i32* %10, align 4
  br label %80

78:                                               ; preds = %27
  %79 = call i32 (...) @usage()
  br label %80

80:                                               ; preds = %78, %77, %65
  br label %22

81:                                               ; preds = %22
  %82 = load i64, i64* @optind, align 8
  %83 = load i32, i32* %4, align 4
  %84 = sext i32 %83 to i64
  %85 = sub nsw i64 %84, %82
  %86 = trunc i64 %85 to i32
  store i32 %86, i32* %4, align 4
  %87 = load i64, i64* @optind, align 8
  %88 = load i8**, i8*** %5, align 8
  %89 = getelementptr inbounds i8*, i8** %88, i64 %87
  store i8** %89, i8*** %5, align 8
  %90 = load i32, i32* %4, align 4
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %81
  %93 = call i32 (...) @usage()
  br label %94

94:                                               ; preds = %92, %81
  %95 = call i32 (...) @kqueue()
  store i32 %95, i32* %7, align 4
  %96 = load i32, i32* %7, align 4
  %97 = icmp eq i32 %96, -1
  br i1 %97, label %98, label %100

98:                                               ; preds = %94
  %99 = call i32 @err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  br label %100

100:                                              ; preds = %98, %94
  %101 = load i32, i32* %4, align 4
  %102 = load i32, i32* %9, align 4
  %103 = add nsw i32 %101, %102
  %104 = sext i32 %103 to i64
  %105 = mul i64 %104, 24
  %106 = trunc i64 %105 to i32
  %107 = call %struct.kevent* @malloc(i32 %106)
  store %struct.kevent* %107, %struct.kevent** %8, align 8
  %108 = load %struct.kevent*, %struct.kevent** %8, align 8
  %109 = icmp eq %struct.kevent* %108, null
  br i1 %109, label %110, label %112

110:                                              ; preds = %100
  %111 = call i32 @err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  br label %112

112:                                              ; preds = %110, %100
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %113

113:                                              ; preds = %192, %112
  %114 = load i32, i32* %13, align 4
  %115 = load i32, i32* %4, align 4
  %116 = icmp slt i32 %114, %115
  br i1 %116, label %117, label %195

117:                                              ; preds = %113
  %118 = load i8**, i8*** %5, align 8
  %119 = load i32, i32* %13, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i8*, i8** %118, i64 %120
  %122 = load i8*, i8** %121, align 8
  store i8* %122, i8** %18, align 8
  %123 = load i8*, i8** %18, align 8
  %124 = call i32 @strncmp(i8* %123, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32 6)
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %129, label %126

126:                                              ; preds = %117
  %127 = load i8*, i8** %18, align 8
  %128 = getelementptr inbounds i8, i8* %127, i64 6
  store i8* %128, i8** %18, align 8
  br label %129

129:                                              ; preds = %126, %117
  store i64 0, i64* @errno, align 8
  %130 = load i8*, i8** %18, align 8
  %131 = call i64 @strtol(i8* %130, i8** %19, i32 10)
  store i64 %131, i64* %17, align 8
  %132 = load i64, i64* %17, align 8
  %133 = icmp slt i64 %132, 0
  br i1 %133, label %142, label %134

134:                                              ; preds = %129
  %135 = load i8*, i8** %19, align 8
  %136 = load i8, i8* %135, align 1
  %137 = sext i8 %136 to i32
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %142, label %139

139:                                              ; preds = %134
  %140 = load i64, i64* @errno, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %145

142:                                              ; preds = %139, %134, %129
  %143 = load i8*, i8** %18, align 8
  %144 = call i32 @warnx(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i8* %143)
  br label %192

145:                                              ; preds = %139
  store i32 0, i32* %15, align 4
  store i32 0, i32* %14, align 4
  br label %146

146:                                              ; preds = %161, %145
  %147 = load i32, i32* %14, align 4
  %148 = load i32, i32* %12, align 4
  %149 = icmp slt i32 %147, %148
  br i1 %149, label %150, label %164

150:                                              ; preds = %146
  %151 = load %struct.kevent*, %struct.kevent** %8, align 8
  %152 = load i32, i32* %14, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds %struct.kevent, %struct.kevent* %151, i64 %153
  %155 = getelementptr inbounds %struct.kevent, %struct.kevent* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = load i64, i64* %17, align 8
  %158 = icmp eq i64 %156, %157
  br i1 %158, label %159, label %160

159:                                              ; preds = %150
  store i32 1, i32* %15, align 4
  br label %160

160:                                              ; preds = %159, %150
  br label %161

161:                                              ; preds = %160
  %162 = load i32, i32* %14, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %14, align 4
  br label %146

164:                                              ; preds = %146
  %165 = load i32, i32* %15, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %191, label %167

167:                                              ; preds = %164
  %168 = load %struct.kevent*, %struct.kevent** %8, align 8
  %169 = load i32, i32* %12, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds %struct.kevent, %struct.kevent* %168, i64 %170
  %172 = load i64, i64* %17, align 8
  %173 = load i64, i64* @EVFILT_PROC, align 8
  %174 = load i32, i32* @EV_ADD, align 4
  %175 = load i32, i32* @NOTE_EXIT, align 4
  %176 = call i32 @EV_SET(%struct.kevent* %171, i64 %172, i64 %173, i32 %174, i32 %175, i32 0, i32* null)
  %177 = load i32, i32* %7, align 4
  %178 = load %struct.kevent*, %struct.kevent** %8, align 8
  %179 = load i32, i32* %12, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds %struct.kevent, %struct.kevent* %178, i64 %180
  %182 = call i32 @kevent(i32 %177, %struct.kevent* %181, i32 1, %struct.kevent* null, i32 0, i32* null)
  %183 = icmp eq i32 %182, -1
  br i1 %183, label %184, label %187

184:                                              ; preds = %167
  %185 = load i64, i64* %17, align 8
  %186 = call i32 @warn(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i64 %185)
  br label %190

187:                                              ; preds = %167
  %188 = load i32, i32* %12, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %12, align 4
  br label %190

190:                                              ; preds = %187, %184
  br label %191

191:                                              ; preds = %190, %164
  br label %192

192:                                              ; preds = %191, %142
  %193 = load i32, i32* %13, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %13, align 4
  br label %113

195:                                              ; preds = %113
  %196 = load i32, i32* %9, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %228

198:                                              ; preds = %195
  %199 = load %struct.kevent*, %struct.kevent** %8, align 8
  %200 = load i32, i32* %12, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds %struct.kevent, %struct.kevent* %199, i64 %201
  %203 = load i64, i64* @SIGALRM, align 8
  %204 = load i64, i64* @EVFILT_SIGNAL, align 8
  %205 = load i32, i32* @EV_ADD, align 4
  %206 = call i32 @EV_SET(%struct.kevent* %202, i64 %203, i64 %204, i32 %205, i32 0, i32 0, i32* null)
  %207 = load i32, i32* %7, align 4
  %208 = load %struct.kevent*, %struct.kevent** %8, align 8
  %209 = load i32, i32* %12, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds %struct.kevent, %struct.kevent* %208, i64 %210
  %212 = call i32 @kevent(i32 %207, %struct.kevent* %211, i32 1, %struct.kevent* null, i32 0, i32* null)
  %213 = icmp eq i32 %212, -1
  br i1 %213, label %214, label %217

214:                                              ; preds = %198
  %215 = load i32, i32* @EX_OSERR, align 4
  %216 = call i32 @err(i32 %215, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0))
  br label %217

217:                                              ; preds = %214, %198
  %218 = load i64, i64* @SIGALRM, align 8
  %219 = load i32, i32* @SIG_IGN, align 4
  %220 = call i32 @signal(i64 %218, i32 %219)
  %221 = load i32, i32* @ITIMER_REAL, align 4
  %222 = call i32 @setitimer(i32 %221, %struct.itimerval* %6, i32* null)
  %223 = icmp eq i32 %222, -1
  br i1 %223, label %224, label %227

224:                                              ; preds = %217
  %225 = load i32, i32* @EX_OSERR, align 4
  %226 = call i32 @err(i32 %225, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0))
  br label %227

227:                                              ; preds = %224, %217
  br label %228

228:                                              ; preds = %227, %195
  br label %229

229:                                              ; preds = %316, %228
  %230 = load i32, i32* %12, align 4
  %231 = icmp sgt i32 %230, 0
  br i1 %231, label %232, label %317

232:                                              ; preds = %229
  %233 = load i32, i32* %7, align 4
  %234 = load %struct.kevent*, %struct.kevent** %8, align 8
  %235 = load i32, i32* %12, align 4
  %236 = load i32, i32* %9, align 4
  %237 = add nsw i32 %235, %236
  %238 = call i32 @kevent(i32 %233, %struct.kevent* null, i32 0, %struct.kevent* %234, i32 %237, i32* null)
  store i32 %238, i32* %13, align 4
  %239 = load i32, i32* %13, align 4
  %240 = icmp eq i32 %239, -1
  br i1 %240, label %241, label %243

241:                                              ; preds = %232
  %242 = call i32 @err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0))
  br label %243

243:                                              ; preds = %241, %232
  store i32 0, i32* %14, align 4
  br label %244

244:                                              ; preds = %313, %243
  %245 = load i32, i32* %14, align 4
  %246 = load i32, i32* %13, align 4
  %247 = icmp slt i32 %245, %246
  br i1 %247, label %248, label %316

248:                                              ; preds = %244
  %249 = load %struct.kevent*, %struct.kevent** %8, align 8
  %250 = load i32, i32* %14, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds %struct.kevent, %struct.kevent* %249, i64 %251
  %253 = getelementptr inbounds %struct.kevent, %struct.kevent* %252, i32 0, i32 1
  %254 = load i64, i64* %253, align 8
  %255 = load i64, i64* @EVFILT_SIGNAL, align 8
  %256 = icmp eq i64 %254, %255
  br i1 %256, label %257, label %263

257:                                              ; preds = %248
  %258 = load i32, i32* %10, align 4
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %260, label %262

260:                                              ; preds = %257
  %261 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0))
  br label %262

262:                                              ; preds = %260, %257
  ret i32 124

263:                                              ; preds = %248
  %264 = load i32, i32* %10, align 4
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %266, label %310

266:                                              ; preds = %263
  %267 = load %struct.kevent*, %struct.kevent** %8, align 8
  %268 = load i32, i32* %14, align 4
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds %struct.kevent, %struct.kevent* %267, i64 %269
  %271 = getelementptr inbounds %struct.kevent, %struct.kevent* %270, i32 0, i32 2
  %272 = load i32, i32* %271, align 8
  store i32 %272, i32* %16, align 4
  %273 = load i32, i32* %16, align 4
  %274 = call i64 @WIFEXITED(i32 %273)
  %275 = icmp ne i64 %274, 0
  br i1 %275, label %276, label %286

276:                                              ; preds = %266
  %277 = load %struct.kevent*, %struct.kevent** %8, align 8
  %278 = load i32, i32* %14, align 4
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds %struct.kevent, %struct.kevent* %277, i64 %279
  %281 = getelementptr inbounds %struct.kevent, %struct.kevent* %280, i32 0, i32 0
  %282 = load i64, i64* %281, align 8
  %283 = load i32, i32* %16, align 4
  %284 = call i32 @WEXITSTATUS(i32 %283)
  %285 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.11, i64 0, i64 0), i64 %282, i32 %284)
  br label %309

286:                                              ; preds = %266
  %287 = load i32, i32* %16, align 4
  %288 = call i64 @WIFSIGNALED(i32 %287)
  %289 = icmp ne i64 %288, 0
  br i1 %289, label %290, label %300

290:                                              ; preds = %286
  %291 = load %struct.kevent*, %struct.kevent** %8, align 8
  %292 = load i32, i32* %14, align 4
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds %struct.kevent, %struct.kevent* %291, i64 %293
  %295 = getelementptr inbounds %struct.kevent, %struct.kevent* %294, i32 0, i32 0
  %296 = load i64, i64* %295, align 8
  %297 = load i32, i32* %16, align 4
  %298 = call i32 @WTERMSIG(i32 %297)
  %299 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.12, i64 0, i64 0), i64 %296, i32 %298)
  br label %308

300:                                              ; preds = %286
  %301 = load %struct.kevent*, %struct.kevent** %8, align 8
  %302 = load i32, i32* %14, align 4
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds %struct.kevent, %struct.kevent* %301, i64 %303
  %305 = getelementptr inbounds %struct.kevent, %struct.kevent* %304, i32 0, i32 0
  %306 = load i64, i64* %305, align 8
  %307 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.13, i64 0, i64 0), i64 %306)
  br label %308

308:                                              ; preds = %300, %290
  br label %309

309:                                              ; preds = %308, %276
  br label %310

310:                                              ; preds = %309, %263
  %311 = load i32, i32* %12, align 4
  %312 = add nsw i32 %311, -1
  store i32 %312, i32* %12, align 4
  br label %313

313:                                              ; preds = %310
  %314 = load i32, i32* %14, align 4
  %315 = add nsw i32 %314, 1
  store i32 %315, i32* %14, align 4
  br label %244

316:                                              ; preds = %244
  br label %229

317:                                              ; preds = %229
  %318 = load i32, i32* @EX_OK, align 4
  %319 = call i32 @exit(i32 %318) #3
  unreachable
}

declare dso_local i32 @memset(%struct.itimerval*, i32, i32) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local double @strtod(i8*, i8**) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @kqueue(...) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local %struct.kevent* @malloc(i32) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i64 @strtol(i8*, i8**, i32) #1

declare dso_local i32 @warnx(i8*, i8*) #1

declare dso_local i32 @EV_SET(%struct.kevent*, i64, i64, i32, i32, i32, i32*) #1

declare dso_local i32 @kevent(i32, %struct.kevent*, i32, %struct.kevent*, i32, i32*) #1

declare dso_local i32 @warn(i8*, i64) #1

declare dso_local i32 @signal(i64, i32) #1

declare dso_local i32 @setitimer(i32, %struct.itimerval*, i32*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i64 @WIFEXITED(i32) #1

declare dso_local i32 @WEXITSTATUS(i32) #1

declare dso_local i64 @WIFSIGNALED(i32) #1

declare dso_local i32 @WTERMSIG(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
