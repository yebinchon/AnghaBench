; ModuleID = '/home/carl/AnghaBench/freebsd/bin/cp/extr_cp.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/cp/extr_cp.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i8*, i8* }
%struct.stat = type { i32 }

@FTS_NOCHDIR = common dso_local global i32 0, align 4
@FTS_PHYSICAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"HLPRafilnprsvx\00", align 1
@Rflag = common dso_local global i32 0, align 4
@pflag = common dso_local global i32 0, align 4
@fflag = common dso_local global i32 0, align 4
@nflag = common dso_local global i8* null, align 8
@iflag = common dso_local global i32 0, align 4
@lflag = common dso_local global i32 0, align 4
@rflag = common dso_local global i32 0, align 4
@sflag = common dso_local global i32 0, align 4
@vflag = common dso_local global i32 0, align 4
@FTS_XDEV = common dso_local global i32 0, align 4
@optind = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [52 x i8] c"the -R and -r options may not be specified together\00", align 1
@.str.2 = private unnamed_addr constant [52 x i8] c"the -l and -s options may not be specified together\00", align 1
@FTS_COMFOLLOW = common dso_local global i32 0, align 4
@FTS_LOGICAL = common dso_local global i32 0, align 4
@SIGINFO = common dso_local global i32 0, align 4
@siginfo = common dso_local global i32 0, align 4
@to = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@.str.3 = private unnamed_addr constant [18 x i8] c"%s: name too long\00", align 1
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"%s is not a directory\00", align 1
@DIR_TO_DNE = common dso_local global i32 0, align 4
@FILE_TO_FILE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [28 x i8] c"directory %s does not exist\00", align 1
@FILE_TO_DIR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.stat, align 4
  %7 = alloca %struct.stat, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %16 = load i32, i32* @FTS_NOCHDIR, align 4
  %17 = load i32, i32* @FTS_PHYSICAL, align 4
  %18 = or i32 %16, %17
  store i32 %18, i32* %12, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %19

19:                                               ; preds = %45, %2
  %20 = load i32, i32* %4, align 4
  %21 = load i8**, i8*** %5, align 8
  %22 = call i32 @getopt(i32 %20, i8** %21, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store i32 %22, i32* %11, align 4
  %23 = icmp ne i32 %22, -1
  br i1 %23, label %24, label %46

24:                                               ; preds = %19
  %25 = load i32, i32* %11, align 4
  switch i32 %25, label %43 [
    i32 72, label %26
    i32 76, label %27
    i32 80, label %28
    i32 82, label %29
    i32 97, label %30
    i32 102, label %31
    i32 105, label %32
    i32 108, label %33
    i32 110, label %34
    i32 112, label %35
    i32 114, label %36
    i32 115, label %37
    i32 118, label %38
    i32 120, label %39
  ]

26:                                               ; preds = %24
  store i32 1, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %45

27:                                               ; preds = %24
  store i32 1, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %45

28:                                               ; preds = %24
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %45

29:                                               ; preds = %24
  store i32 1, i32* @Rflag, align 4
  br label %45

30:                                               ; preds = %24
  store i32 1, i32* @pflag, align 4
  store i32 1, i32* @Rflag, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %45

31:                                               ; preds = %24
  store i32 1, i32* @fflag, align 4
  store i8* null, i8** @nflag, align 8
  store i32 0, i32* @iflag, align 4
  br label %45

32:                                               ; preds = %24
  store i32 1, i32* @iflag, align 4
  store i8* null, i8** @nflag, align 8
  store i32 0, i32* @fflag, align 4
  br label %45

33:                                               ; preds = %24
  store i32 1, i32* @lflag, align 4
  br label %45

34:                                               ; preds = %24
  store i8* inttoptr (i64 1 to i8*), i8** @nflag, align 8
  store i32 0, i32* @iflag, align 4
  store i32 0, i32* @fflag, align 4
  br label %45

35:                                               ; preds = %24
  store i32 1, i32* @pflag, align 4
  br label %45

36:                                               ; preds = %24
  store i32 1, i32* %10, align 4
  store i32 1, i32* @rflag, align 4
  store i32 0, i32* %9, align 4
  br label %45

37:                                               ; preds = %24
  store i32 1, i32* @sflag, align 4
  br label %45

38:                                               ; preds = %24
  store i32 1, i32* @vflag, align 4
  br label %45

39:                                               ; preds = %24
  %40 = load i32, i32* @FTS_XDEV, align 4
  %41 = load i32, i32* %12, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %12, align 4
  br label %45

43:                                               ; preds = %24
  %44 = call i32 (...) @usage()
  br label %45

45:                                               ; preds = %43, %39, %38, %37, %36, %35, %34, %33, %32, %31, %30, %29, %28, %27, %26
  br label %19

46:                                               ; preds = %19
  %47 = load i64, i64* @optind, align 8
  %48 = load i32, i32* %4, align 4
  %49 = sext i32 %48 to i64
  %50 = sub nsw i64 %49, %47
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %4, align 4
  %52 = load i64, i64* @optind, align 8
  %53 = load i8**, i8*** %5, align 8
  %54 = getelementptr inbounds i8*, i8** %53, i64 %52
  store i8** %54, i8*** %5, align 8
  %55 = load i32, i32* %4, align 4
  %56 = icmp slt i32 %55, 2
  br i1 %56, label %57, label %59

57:                                               ; preds = %46
  %58 = call i32 (...) @usage()
  br label %59

59:                                               ; preds = %57, %46
  %60 = load i32, i32* @Rflag, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %59
  %63 = load i32, i32* @rflag, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %62
  %66 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0))
  br label %67

67:                                               ; preds = %65, %62, %59
  %68 = load i32, i32* @lflag, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %67
  %71 = load i32, i32* @sflag, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %70
  %74 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0))
  br label %75

75:                                               ; preds = %73, %70, %67
  %76 = load i32, i32* @rflag, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %75
  store i32 1, i32* @Rflag, align 4
  br label %79

79:                                               ; preds = %78, %75
  %80 = load i32, i32* @Rflag, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %101

82:                                               ; preds = %79
  %83 = load i32, i32* %9, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %82
  %86 = load i32, i32* @FTS_COMFOLLOW, align 4
  %87 = load i32, i32* %12, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %12, align 4
  br label %89

89:                                               ; preds = %85, %82
  %90 = load i32, i32* %10, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %100

92:                                               ; preds = %89
  %93 = load i32, i32* @FTS_PHYSICAL, align 4
  %94 = xor i32 %93, -1
  %95 = load i32, i32* %12, align 4
  %96 = and i32 %95, %94
  store i32 %96, i32* %12, align 4
  %97 = load i32, i32* @FTS_LOGICAL, align 4
  %98 = load i32, i32* %12, align 4
  %99 = or i32 %98, %97
  store i32 %99, i32* %12, align 4
  br label %100

100:                                              ; preds = %92, %89
  br label %111

101:                                              ; preds = %79
  %102 = load i32, i32* @FTS_PHYSICAL, align 4
  %103 = xor i32 %102, -1
  %104 = load i32, i32* %12, align 4
  %105 = and i32 %104, %103
  store i32 %105, i32* %12, align 4
  %106 = load i32, i32* @FTS_LOGICAL, align 4
  %107 = load i32, i32* @FTS_COMFOLLOW, align 4
  %108 = or i32 %106, %107
  %109 = load i32, i32* %12, align 4
  %110 = or i32 %109, %108
  store i32 %110, i32* %12, align 4
  br label %111

111:                                              ; preds = %101, %100
  %112 = load i32, i32* @SIGINFO, align 4
  %113 = load i32, i32* @siginfo, align 4
  %114 = call i32 @signal(i32 %112, i32 %113)
  %115 = load i8**, i8*** %5, align 8
  %116 = load i32, i32* %4, align 4
  %117 = add nsw i32 %116, -1
  store i32 %117, i32* %4, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i8*, i8** %115, i64 %118
  %120 = load i8*, i8** %119, align 8
  store i8* %120, i8** %15, align 8
  %121 = load i8*, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @to, i32 0, i32 0), align 8
  %122 = load i8*, i8** %15, align 8
  %123 = call i32 @strlcpy(i8* %121, i8* %122, i32 8)
  %124 = sext i32 %123 to i64
  %125 = icmp uge i64 %124, 8
  br i1 %125, label %126, label %129

126:                                              ; preds = %111
  %127 = load i8*, i8** %15, align 8
  %128 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i8* %127)
  br label %129

129:                                              ; preds = %126, %111
  %130 = load i8*, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @to, i32 0, i32 0), align 8
  %131 = load i8*, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @to, i32 0, i32 0), align 8
  %132 = call i32 @strlen(i8* %131)
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i8, i8* %130, i64 %133
  store i8* %134, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @to, i32 0, i32 1), align 8
  %135 = load i8*, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @to, i32 0, i32 0), align 8
  %136 = load i8*, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @to, i32 0, i32 1), align 8
  %137 = icmp eq i8* %135, %136
  br i1 %137, label %138, label %142

138:                                              ; preds = %129
  %139 = load i8*, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @to, i32 0, i32 1), align 8
  %140 = getelementptr inbounds i8, i8* %139, i32 1
  store i8* %140, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @to, i32 0, i32 1), align 8
  store i8 46, i8* %139, align 1
  %141 = load i8*, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @to, i32 0, i32 1), align 8
  store i8 0, i8* %141, align 1
  br label %142

142:                                              ; preds = %138, %129
  %143 = load i8*, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @to, i32 0, i32 1), align 8
  %144 = getelementptr inbounds i8, i8* %143, i64 -1
  %145 = load i8, i8* %144, align 1
  %146 = sext i8 %145 to i32
  %147 = icmp eq i32 %146, 47
  %148 = zext i1 %147 to i32
  store i32 %148, i32* %14, align 4
  %149 = load i32, i32* %14, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %153

151:                                              ; preds = %142
  %152 = call i32 @STRIP_TRAILING_SLASH(%struct.TYPE_3__* byval(%struct.TYPE_3__) align 8 @to)
  br label %153

153:                                              ; preds = %151, %142
  %154 = load i8*, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @to, i32 0, i32 1), align 8
  store i8* %154, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @to, i32 0, i32 2), align 8
  %155 = load i8**, i8*** %5, align 8
  %156 = load i32, i32* %4, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i8*, i8** %155, i64 %157
  store i8* null, i8** %158, align 8
  %159 = load i8*, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @to, i32 0, i32 0), align 8
  %160 = call i32 @stat(i8* %159, %struct.stat* %6)
  store i32 %160, i32* %13, align 4
  %161 = load i32, i32* %13, align 4
  %162 = icmp eq i32 %161, -1
  br i1 %162, label %163, label %170

163:                                              ; preds = %153
  %164 = load i64, i64* @errno, align 8
  %165 = load i64, i64* @ENOENT, align 8
  %166 = icmp ne i64 %164, %165
  br i1 %166, label %167, label %170

167:                                              ; preds = %163
  %168 = load i8*, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @to, i32 0, i32 0), align 8
  %169 = call i32 @err(i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* %168)
  br label %170

170:                                              ; preds = %167, %163, %153
  %171 = load i32, i32* %13, align 4
  %172 = icmp eq i32 %171, -1
  br i1 %172, label %178, label %173

173:                                              ; preds = %170
  %174 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = call i64 @S_ISDIR(i32 %175)
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %237, label %178

178:                                              ; preds = %173, %170
  %179 = load i32, i32* %4, align 4
  %180 = icmp sgt i32 %179, 1
  br i1 %180, label %181, label %184

181:                                              ; preds = %178
  %182 = load i8*, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @to, i32 0, i32 0), align 8
  %183 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i8* %182)
  br label %184

184:                                              ; preds = %181, %178
  %185 = load i32, i32* %13, align 4
  %186 = icmp eq i32 %185, -1
  br i1 %186, label %187, label %217

187:                                              ; preds = %184
  %188 = load i32, i32* @Rflag, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %200

190:                                              ; preds = %187
  %191 = load i32, i32* %10, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %196, label %193

193:                                              ; preds = %190
  %194 = load i32, i32* %9, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %200

196:                                              ; preds = %193, %190
  %197 = load i8**, i8*** %5, align 8
  %198 = load i8*, i8** %197, align 8
  %199 = call i32 @stat(i8* %198, %struct.stat* %7)
  br label %204

200:                                              ; preds = %193, %187
  %201 = load i8**, i8*** %5, align 8
  %202 = load i8*, i8** %201, align 8
  %203 = call i32 @lstat(i8* %202, %struct.stat* %7)
  br label %204

204:                                              ; preds = %200, %196
  %205 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 0
  %206 = load i32, i32* %205, align 4
  %207 = call i64 @S_ISDIR(i32 %206)
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %209, label %214

209:                                              ; preds = %204
  %210 = load i32, i32* @Rflag, align 4
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %214

212:                                              ; preds = %209
  %213 = load i32, i32* @DIR_TO_DNE, align 4
  store i32 %213, i32* %8, align 4
  br label %216

214:                                              ; preds = %209, %204
  %215 = load i32, i32* @FILE_TO_FILE, align 4
  store i32 %215, i32* %8, align 4
  br label %216

216:                                              ; preds = %214, %212
  br label %219

217:                                              ; preds = %184
  %218 = load i32, i32* @FILE_TO_FILE, align 4
  store i32 %218, i32* %8, align 4
  br label %219

219:                                              ; preds = %217, %216
  %220 = load i32, i32* %14, align 4
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %236

222:                                              ; preds = %219
  %223 = load i32, i32* %8, align 4
  %224 = load i32, i32* @FILE_TO_FILE, align 4
  %225 = icmp eq i32 %223, %224
  br i1 %225, label %226, label %236

226:                                              ; preds = %222
  %227 = load i32, i32* %13, align 4
  %228 = icmp eq i32 %227, -1
  br i1 %228, label %229, label %232

229:                                              ; preds = %226
  %230 = load i8*, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @to, i32 0, i32 0), align 8
  %231 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), i8* %230)
  br label %235

232:                                              ; preds = %226
  %233 = load i8*, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @to, i32 0, i32 0), align 8
  %234 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i8* %233)
  br label %235

235:                                              ; preds = %232, %229
  br label %236

236:                                              ; preds = %235, %222, %219
  br label %239

237:                                              ; preds = %173
  %238 = load i32, i32* @FILE_TO_DIR, align 4
  store i32 %238, i32* %8, align 4
  br label %239

239:                                              ; preds = %237, %236
  %240 = load i8**, i8*** %5, align 8
  %241 = load i32, i32* %8, align 4
  %242 = load i32, i32* %12, align 4
  %243 = call i32 @copy(i8** %240, i32 %241, i32 %242)
  %244 = call i32 @exit(i32 %243) #3
  unreachable
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @errx(i32, i8*, ...) #1

declare dso_local i32 @signal(i32, i32) #1

declare dso_local i32 @strlcpy(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @STRIP_TRAILING_SLASH(%struct.TYPE_3__* byval(%struct.TYPE_3__) align 8) #1

declare dso_local i32 @stat(i8*, %struct.stat*) #1

declare dso_local i32 @err(i32, i8*, i8*) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i32 @lstat(i8*, %struct.stat*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @copy(i8**, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
