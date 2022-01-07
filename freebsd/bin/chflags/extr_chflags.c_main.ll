; ModuleID = '/home/carl/AnghaBench/freebsd/bin/chflags/extr_chflags.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/chflags/extr_chflags.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32, i8*, %struct.TYPE_5__*, i32, i32 }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"HLPRfhvx\00", align 1
@optind = common dso_local global i64 0, align 8
@SIGINFO = common dso_local global i32 0, align 4
@siginfo_handler = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [53 x i8] c"the -R and -h options may not be specified together.\00", align 1
@FTS_LOGICAL = common dso_local global i32 0, align 4
@FTS_PHYSICAL = common dso_local global i32 0, align 4
@FTS_COMFOLLOW = common dso_local global i32 0, align 4
@FTS_XDEV = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ERANGE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [18 x i8] c"invalid flags: %s\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"invalid flag: %s\00", align 1
@FTS_ROOTLEVEL = common dso_local global i64 0, align 8
@AT_SYMLINK_NOFOLLOW = common dso_local global i32 0, align 4
@FTS_SKIP = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@AT_FDCWD = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@siginfo = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [15 x i8] c": 0%lo -> 0%lo\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"fts_read\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i8*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %18, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %12, align 4
  br label %26

26:                                               ; preds = %46, %2
  %27 = load i32, i32* %4, align 4
  %28 = load i8**, i8*** %5, align 8
  %29 = call i32 @getopt(i32 %27, i8** %28, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i32 %29, i32* %19, align 4
  %30 = icmp ne i32 %29, -1
  br i1 %30, label %31, label %47

31:                                               ; preds = %26
  %32 = load i32, i32* %19, align 4
  switch i32 %32, label %44 [
    i32 72, label %33
    i32 76, label %34
    i32 80, label %35
    i32 82, label %36
    i32 102, label %37
    i32 104, label %38
    i32 118, label %39
    i32 120, label %42
    i32 63, label %43
  ]

33:                                               ; preds = %31
  store i32 1, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %46

34:                                               ; preds = %31
  store i32 1, i32* %13, align 4
  store i32 0, i32* %12, align 4
  br label %46

35:                                               ; preds = %31
  store i32 0, i32* %13, align 4
  store i32 0, i32* %12, align 4
  br label %46

36:                                               ; preds = %31
  store i32 1, i32* %14, align 4
  br label %46

37:                                               ; preds = %31
  store i32 1, i32* %15, align 4
  br label %46

38:                                               ; preds = %31
  store i32 1, i32* %16, align 4
  br label %46

39:                                               ; preds = %31
  %40 = load i32, i32* %17, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %17, align 4
  br label %46

42:                                               ; preds = %31
  store i32 1, i32* %18, align 4
  br label %46

43:                                               ; preds = %31
  br label %44

44:                                               ; preds = %31, %43
  %45 = call i32 (...) @usage()
  br label %46

46:                                               ; preds = %44, %42, %39, %38, %37, %36, %35, %34, %33
  br label %26

47:                                               ; preds = %26
  %48 = load i64, i64* @optind, align 8
  %49 = load i8**, i8*** %5, align 8
  %50 = getelementptr inbounds i8*, i8** %49, i64 %48
  store i8** %50, i8*** %5, align 8
  %51 = load i64, i64* @optind, align 8
  %52 = load i32, i32* %4, align 4
  %53 = sext i32 %52 to i64
  %54 = sub nsw i64 %53, %51
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %4, align 4
  %56 = load i32, i32* %4, align 4
  %57 = icmp slt i32 %56, 2
  br i1 %57, label %58, label %60

58:                                               ; preds = %47
  %59 = call i32 (...) @usage()
  br label %60

60:                                               ; preds = %58, %47
  %61 = load i32, i32* @SIGINFO, align 4
  %62 = load i32, i32* @siginfo_handler, align 4
  %63 = call i32 @signal(i32 %61, i32 %62)
  %64 = load i32, i32* %14, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %86

66:                                               ; preds = %60
  %67 = load i32, i32* %16, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %66
  %70 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0))
  br label %71

71:                                               ; preds = %69, %66
  %72 = load i32, i32* %13, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %71
  %75 = load i32, i32* @FTS_LOGICAL, align 4
  store i32 %75, i32* %20, align 4
  br label %85

76:                                               ; preds = %71
  %77 = load i32, i32* @FTS_PHYSICAL, align 4
  store i32 %77, i32* %20, align 4
  %78 = load i32, i32* %12, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %76
  %81 = load i32, i32* @FTS_COMFOLLOW, align 4
  %82 = load i32, i32* %20, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %20, align 4
  br label %84

84:                                               ; preds = %80, %76
  br label %85

85:                                               ; preds = %84, %74
  br label %94

86:                                               ; preds = %60
  %87 = load i32, i32* %16, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %86
  %90 = load i32, i32* @FTS_PHYSICAL, align 4
  store i32 %90, i32* %20, align 4
  br label %93

91:                                               ; preds = %86
  %92 = load i32, i32* @FTS_LOGICAL, align 4
  store i32 %92, i32* %20, align 4
  br label %93

93:                                               ; preds = %91, %89
  br label %94

94:                                               ; preds = %93, %85
  %95 = load i32, i32* %18, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %94
  %98 = load i32, i32* @FTS_XDEV, align 4
  %99 = load i32, i32* %20, align 4
  %100 = or i32 %99, %98
  store i32 %100, i32* %20, align 4
  br label %101

101:                                              ; preds = %97, %94
  %102 = load i8**, i8*** %5, align 8
  %103 = load i8*, i8** %102, align 8
  store i8* %103, i8** %23, align 8
  %104 = load i8*, i8** %23, align 8
  %105 = load i8, i8* %104, align 1
  %106 = sext i8 %105 to i32
  %107 = icmp sge i32 %106, 48
  br i1 %107, label %108, label %136

108:                                              ; preds = %101
  %109 = load i8*, i8** %23, align 8
  %110 = load i8, i8* %109, align 1
  %111 = sext i8 %110 to i32
  %112 = icmp sle i32 %111, 55
  br i1 %112, label %113, label %136

113:                                              ; preds = %108
  store i64 0, i64* @errno, align 8
  %114 = load i8*, i8** %23, align 8
  %115 = call i64 @strtol(i8* %114, i8** %24, i32 8)
  store i64 %115, i64* %11, align 8
  %116 = load i64, i64* %11, align 8
  %117 = icmp slt i64 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %113
  %119 = load i64, i64* @ERANGE, align 8
  store i64 %119, i64* @errno, align 8
  br label %120

120:                                              ; preds = %118, %113
  %121 = load i64, i64* @errno, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %126

123:                                              ; preds = %120
  %124 = load i8*, i8** %23, align 8
  %125 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i8* %124)
  br label %126

126:                                              ; preds = %123, %120
  %127 = load i8*, i8** %24, align 8
  %128 = load i8, i8* %127, align 1
  %129 = icmp ne i8 %128, 0
  br i1 %129, label %130, label %133

130:                                              ; preds = %126
  %131 = load i8*, i8** %23, align 8
  %132 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i8* %131)
  br label %133

133:                                              ; preds = %130, %126
  %134 = load i64, i64* %11, align 8
  %135 = trunc i64 %134 to i32
  store i32 %135, i32* %10, align 4
  store i32 1, i32* %21, align 4
  br label %145

136:                                              ; preds = %108, %101
  %137 = call i64 @strtofflags(i8** %23, i32* %10, i32* %8)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %142

139:                                              ; preds = %136
  %140 = load i8*, i8** %23, align 8
  %141 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i8* %140)
  br label %142

142:                                              ; preds = %139, %136
  %143 = load i32, i32* %8, align 4
  %144 = xor i32 %143, -1
  store i32 %144, i32* %8, align 4
  store i32 0, i32* %21, align 4
  br label %145

145:                                              ; preds = %142, %133
  %146 = load i8**, i8*** %5, align 8
  %147 = getelementptr inbounds i8*, i8** %146, i32 1
  store i8** %147, i8*** %5, align 8
  %148 = load i32, i32* %20, align 4
  %149 = call i32* @fts_open(i8** %147, i32 %148, i32 0)
  store i32* %149, i32** %6, align 8
  %150 = icmp eq i32* %149, null
  br i1 %150, label %151, label %153

151:                                              ; preds = %145
  %152 = call i32 (i32, i8*, ...) @err(i32 1, i8* null)
  br label %153

153:                                              ; preds = %151, %145
  store i32 0, i32* %22, align 4
  br label %154

154:                                              ; preds = %277, %232, %199, %189, %153
  %155 = load i32*, i32** %6, align 8
  %156 = call %struct.TYPE_6__* @fts_read(i32* %155)
  store %struct.TYPE_6__* %156, %struct.TYPE_6__** %7, align 8
  %157 = icmp ne %struct.TYPE_6__* %156, null
  br i1 %157, label %158, label %278

158:                                              ; preds = %154
  %159 = load i32, i32* %20, align 4
  %160 = load i32, i32* @FTS_LOGICAL, align 4
  %161 = and i32 %159, %160
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %174, label %163

163:                                              ; preds = %158
  %164 = load i32, i32* %20, align 4
  %165 = load i32, i32* @FTS_COMFOLLOW, align 4
  %166 = and i32 %164, %165
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %175

168:                                              ; preds = %163
  %169 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %170 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = load i64, i64* @FTS_ROOTLEVEL, align 8
  %173 = icmp eq i64 %171, %172
  br i1 %173, label %174, label %175

174:                                              ; preds = %168, %158
  store i32 0, i32* %25, align 4
  br label %177

175:                                              ; preds = %168, %163
  %176 = load i32, i32* @AT_SYMLINK_NOFOLLOW, align 4
  store i32 %176, i32* %25, align 4
  br label %177

177:                                              ; preds = %175, %174
  %178 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %179 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 8
  switch i32 %180, label %208 [
    i32 131, label %181
    i32 130, label %190
    i32 129, label %199
    i32 128, label %199
  ]

181:                                              ; preds = %177
  %182 = load i32, i32* %14, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %189, label %184

184:                                              ; preds = %181
  %185 = load i32*, i32** %6, align 8
  %186 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %187 = load i32, i32* @FTS_SKIP, align 4
  %188 = call i32 @fts_set(i32* %185, %struct.TYPE_6__* %186, i32 %187)
  br label %189

189:                                              ; preds = %184, %181
  br label %154

190:                                              ; preds = %177
  %191 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %192 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %191, i32 0, i32 2
  %193 = load i8*, i8** %192, align 8
  %194 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %195 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %194, i32 0, i32 5
  %196 = load i32, i32* %195, align 4
  %197 = call i32 @strerror(i32 %196)
  %198 = call i32 @warnx(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* %193, i32 %197)
  store i32 1, i32* %22, align 4
  br label %209

199:                                              ; preds = %177, %177
  %200 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %201 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %200, i32 0, i32 2
  %202 = load i8*, i8** %201, align 8
  %203 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %204 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %203, i32 0, i32 5
  %205 = load i32, i32* %204, align 4
  %206 = call i32 @strerror(i32 %205)
  %207 = call i32 @warnx(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* %202, i32 %206)
  store i32 1, i32* %22, align 4
  br label %154

208:                                              ; preds = %177
  br label %209

209:                                              ; preds = %208, %190
  %210 = load i32, i32* %21, align 4
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %214

212:                                              ; preds = %209
  %213 = load i32, i32* %10, align 4
  store i32 %213, i32* %9, align 4
  br label %224

214:                                              ; preds = %209
  %215 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %216 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %215, i32 0, i32 3
  %217 = load %struct.TYPE_5__*, %struct.TYPE_5__** %216, align 8
  %218 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 4
  %220 = load i32, i32* %10, align 4
  %221 = or i32 %219, %220
  %222 = load i32, i32* %8, align 4
  %223 = and i32 %221, %222
  store i32 %223, i32* %9, align 4
  br label %224

224:                                              ; preds = %214, %212
  %225 = load i32, i32* %9, align 4
  %226 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %227 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %226, i32 0, i32 3
  %228 = load %struct.TYPE_5__*, %struct.TYPE_5__** %227, align 8
  %229 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 4
  %231 = icmp eq i32 %225, %230
  br i1 %231, label %232, label %233

232:                                              ; preds = %224
  br label %154

233:                                              ; preds = %224
  %234 = load i32, i32* @AT_FDCWD, align 4
  %235 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %236 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %235, i32 0, i32 4
  %237 = load i32, i32* %236, align 8
  %238 = load i32, i32* %9, align 4
  %239 = load i32, i32* %25, align 4
  %240 = call i32 @chflagsat(i32 %234, i32 %237, i32 %238, i32 %239)
  %241 = icmp eq i32 %240, -1
  br i1 %241, label %242, label %250

242:                                              ; preds = %233
  %243 = load i32, i32* %15, align 4
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %250, label %245

245:                                              ; preds = %242
  %246 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %247 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %246, i32 0, i32 2
  %248 = load i8*, i8** %247, align 8
  %249 = call i32 @warn(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* %248)
  store i32 1, i32* %22, align 4
  br label %277

250:                                              ; preds = %242, %233
  %251 = load i32, i32* %17, align 4
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %256, label %253

253:                                              ; preds = %250
  %254 = load i64, i64* @siginfo, align 8
  %255 = icmp ne i64 %254, 0
  br i1 %255, label %256, label %276

256:                                              ; preds = %253, %250
  %257 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %258 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %257, i32 0, i32 2
  %259 = load i8*, i8** %258, align 8
  %260 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* %259)
  %261 = load i32, i32* %17, align 4
  %262 = icmp sgt i32 %261, 1
  br i1 %262, label %266, label %263

263:                                              ; preds = %256
  %264 = load i64, i64* @siginfo, align 8
  %265 = icmp ne i64 %264, 0
  br i1 %265, label %266, label %274

266:                                              ; preds = %263, %256
  %267 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %268 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %267, i32 0, i32 3
  %269 = load %struct.TYPE_5__*, %struct.TYPE_5__** %268, align 8
  %270 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 4
  %272 = load i32, i32* %9, align 4
  %273 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i32 %271, i32 %272)
  br label %274

274:                                              ; preds = %266, %263
  %275 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  store i64 0, i64* @siginfo, align 8
  br label %276

276:                                              ; preds = %274, %253
  br label %277

277:                                              ; preds = %276, %245
  br label %154

278:                                              ; preds = %154
  %279 = load i64, i64* @errno, align 8
  %280 = icmp ne i64 %279, 0
  br i1 %280, label %281, label %283

281:                                              ; preds = %278
  %282 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0))
  br label %283

283:                                              ; preds = %281, %278
  %284 = load i32, i32* %22, align 4
  %285 = call i32 @exit(i32 %284) #3
  unreachable
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @signal(i32, i32) #1

declare dso_local i32 @errx(i32, i8*, ...) #1

declare dso_local i64 @strtol(i8*, i8**, i32) #1

declare dso_local i32 @err(i32, i8*, ...) #1

declare dso_local i64 @strtofflags(i8**, i32*, i32*) #1

declare dso_local i32* @fts_open(i8**, i32, i32) #1

declare dso_local %struct.TYPE_6__* @fts_read(i32*) #1

declare dso_local i32 @fts_set(i32*, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @warnx(i8*, i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @chflagsat(i32, i32, i32, i32) #1

declare dso_local i32 @warn(i8*, i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

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
