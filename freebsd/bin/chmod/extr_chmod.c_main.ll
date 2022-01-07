; ModuleID = '/home/carl/AnghaBench/freebsd/bin/chmod/extr_chmod.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/chmod/extr_chmod.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32, i8*, %struct.TYPE_6__*, i32, i32 }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"HLPRXfghorstuvwx\00", align 1
@optind = common dso_local global i64 0, align 8
@SIGINFO = common dso_local global i32 0, align 4
@siginfo_handler = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [53 x i8] c"the -R and -h options may not be specified together.\00", align 1
@FTS_LOGICAL = common dso_local global i32 0, align 4
@FTS_PHYSICAL = common dso_local global i32 0, align 4
@FTS_COMFOLLOW = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"invalid file mode: %s\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"fts_open\00", align 1
@FTS_ROOTLEVEL = common dso_local global i64 0, align 8
@AT_SYMLINK_NOFOLLOW = common dso_local global i32 0, align 4
@FTS_SKIP = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@ALLPERMS = common dso_local global i32 0, align 4
@AT_FDCWD = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@siginfo = common dso_local global i64 0, align 8
@S_IFMT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [23 x i8] c": 0%o [%s] -> 0%o [%s]\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@errno = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [9 x i8] c"fts_read\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca [12 x i8], align 1
  %22 = alloca [12 x i8], align 1
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32* null, i32** %8, align 8
  store i32 0, i32* %17, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %23

23:                                               ; preds = %77, %2
  %24 = load i32, i32* %4, align 4
  %25 = load i8**, i8*** %5, align 8
  %26 = call i32 @getopt(i32 %24, i8** %25, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  store i32 %26, i32* %12, align 4
  %27 = icmp ne i32 %26, -1
  br i1 %27, label %28, label %78

28:                                               ; preds = %23
  %29 = load i32, i32* %12, align 4
  switch i32 %29, label %75 [
    i32 72, label %30
    i32 76, label %31
    i32 80, label %32
    i32 82, label %33
    i32 102, label %34
    i32 104, label %35
    i32 103, label %36
    i32 111, label %36
    i32 114, label %36
    i32 115, label %36
    i32 116, label %36
    i32 117, label %36
    i32 119, label %36
    i32 88, label %36
    i32 120, label %36
    i32 118, label %71
    i32 63, label %74
  ]

30:                                               ; preds = %28
  store i32 1, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %77

31:                                               ; preds = %28
  store i32 1, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %77

32:                                               ; preds = %28
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %77

33:                                               ; preds = %28
  store i32 1, i32* %11, align 4
  br label %77

34:                                               ; preds = %28
  store i32 1, i32* %13, align 4
  br label %77

35:                                               ; preds = %28
  store i32 1, i32* %15, align 4
  br label %77

36:                                               ; preds = %28, %28, %28, %28, %28, %28, %28, %28, %28
  %37 = load i8**, i8*** %5, align 8
  %38 = load i64, i64* @optind, align 8
  %39 = sub i64 %38, 1
  %40 = getelementptr inbounds i8*, i8** %37, i64 %39
  %41 = load i8*, i8** %40, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 0
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 45
  br i1 %45, label %46, label %70

46:                                               ; preds = %36
  %47 = load i8**, i8*** %5, align 8
  %48 = load i64, i64* @optind, align 8
  %49 = sub i64 %48, 1
  %50 = getelementptr inbounds i8*, i8** %47, i64 %49
  %51 = load i8*, i8** %50, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 1
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = load i32, i32* %12, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %70

57:                                               ; preds = %46
  %58 = load i8**, i8*** %5, align 8
  %59 = load i64, i64* @optind, align 8
  %60 = sub i64 %59, 1
  %61 = getelementptr inbounds i8*, i8** %58, i64 %60
  %62 = load i8*, i8** %61, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 2
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %57
  %68 = load i64, i64* @optind, align 8
  %69 = add i64 %68, -1
  store i64 %69, i64* @optind, align 8
  br label %70

70:                                               ; preds = %67, %57, %46, %36
  br label %79

71:                                               ; preds = %28
  %72 = load i32, i32* %17, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %17, align 4
  br label %77

74:                                               ; preds = %28
  br label %75

75:                                               ; preds = %28, %74
  %76 = call i32 (...) @usage()
  br label %77

77:                                               ; preds = %75, %71, %35, %34, %33, %32, %31, %30
  br label %23

78:                                               ; preds = %23
  br label %79

79:                                               ; preds = %78, %70
  %80 = load i64, i64* @optind, align 8
  %81 = load i8**, i8*** %5, align 8
  %82 = getelementptr inbounds i8*, i8** %81, i64 %80
  store i8** %82, i8*** %5, align 8
  %83 = load i64, i64* @optind, align 8
  %84 = load i32, i32* %4, align 4
  %85 = sext i32 %84 to i64
  %86 = sub i64 %85, %83
  %87 = trunc i64 %86 to i32
  store i32 %87, i32* %4, align 4
  %88 = load i32, i32* %4, align 4
  %89 = icmp slt i32 %88, 2
  br i1 %89, label %90, label %92

90:                                               ; preds = %79
  %91 = call i32 (...) @usage()
  br label %92

92:                                               ; preds = %90, %79
  %93 = load i32, i32* @SIGINFO, align 4
  %94 = load i32, i32* @siginfo_handler, align 4
  %95 = call i32 @signal(i32 %93, i32 %94)
  %96 = load i32, i32* %11, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %118

98:                                               ; preds = %92
  %99 = load i32, i32* %15, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %98
  %102 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0))
  br label %103

103:                                              ; preds = %101, %98
  %104 = load i32, i32* %10, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %103
  %107 = load i32, i32* @FTS_LOGICAL, align 4
  store i32 %107, i32* %14, align 4
  br label %117

108:                                              ; preds = %103
  %109 = load i32, i32* @FTS_PHYSICAL, align 4
  store i32 %109, i32* %14, align 4
  %110 = load i32, i32* %9, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %116

112:                                              ; preds = %108
  %113 = load i32, i32* @FTS_COMFOLLOW, align 4
  %114 = load i32, i32* %14, align 4
  %115 = or i32 %114, %113
  store i32 %115, i32* %14, align 4
  br label %116

116:                                              ; preds = %112, %108
  br label %117

117:                                              ; preds = %116, %106
  br label %126

118:                                              ; preds = %92
  %119 = load i32, i32* %15, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %118
  %122 = load i32, i32* @FTS_PHYSICAL, align 4
  store i32 %122, i32* %14, align 4
  br label %125

123:                                              ; preds = %118
  %124 = load i32, i32* @FTS_LOGICAL, align 4
  store i32 %124, i32* %14, align 4
  br label %125

125:                                              ; preds = %123, %121
  br label %126

126:                                              ; preds = %125, %117
  %127 = load i8**, i8*** %5, align 8
  %128 = load i8*, i8** %127, align 8
  store i8* %128, i8** %18, align 8
  %129 = load i8*, i8** %18, align 8
  %130 = call i32* @setmode(i8* %129)
  store i32* %130, i32** %8, align 8
  %131 = icmp eq i32* %130, null
  br i1 %131, label %132, label %135

132:                                              ; preds = %126
  %133 = load i8*, i8** %18, align 8
  %134 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i8* %133)
  br label %135

135:                                              ; preds = %132, %126
  %136 = load i8**, i8*** %5, align 8
  %137 = getelementptr inbounds i8*, i8** %136, i32 1
  store i8** %137, i8*** %5, align 8
  %138 = load i32, i32* %14, align 4
  %139 = call i32* @fts_open(i8** %137, i32 %138, i32 0)
  store i32* %139, i32** %6, align 8
  %140 = icmp eq i32* %139, null
  br i1 %140, label %141, label %143

141:                                              ; preds = %135
  %142 = call i32 @err(i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  br label %143

143:                                              ; preds = %141, %135
  store i32 0, i32* %16, align 4
  br label %144

144:                                              ; preds = %297, %224, %190, %189, %143
  %145 = load i32*, i32** %6, align 8
  %146 = call %struct.TYPE_7__* @fts_read(i32* %145)
  store %struct.TYPE_7__* %146, %struct.TYPE_7__** %7, align 8
  %147 = icmp ne %struct.TYPE_7__* %146, null
  br i1 %147, label %148, label %298

148:                                              ; preds = %144
  %149 = load i32, i32* %14, align 4
  %150 = load i32, i32* @FTS_LOGICAL, align 4
  %151 = and i32 %149, %150
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %164, label %153

153:                                              ; preds = %148
  %154 = load i32, i32* %14, align 4
  %155 = load i32, i32* @FTS_COMFOLLOW, align 4
  %156 = and i32 %154, %155
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %165

158:                                              ; preds = %153
  %159 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %160 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = load i64, i64* @FTS_ROOTLEVEL, align 8
  %163 = icmp eq i64 %161, %162
  br i1 %163, label %164, label %165

164:                                              ; preds = %158, %148
  store i32 0, i32* %20, align 4
  br label %167

165:                                              ; preds = %158, %153
  %166 = load i32, i32* @AT_SYMLINK_NOFOLLOW, align 4
  store i32 %166, i32* %20, align 4
  br label %167

167:                                              ; preds = %165, %164
  %168 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %169 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 8
  switch i32 %170, label %199 [
    i32 132, label %171
    i32 131, label %180
    i32 130, label %189
    i32 129, label %190
    i32 128, label %190
  ]

171:                                              ; preds = %167
  %172 = load i32, i32* %11, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %179, label %174

174:                                              ; preds = %171
  %175 = load i32*, i32** %6, align 8
  %176 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %177 = load i32, i32* @FTS_SKIP, align 4
  %178 = call i32 @fts_set(i32* %175, %struct.TYPE_7__* %176, i32 %177)
  br label %179

179:                                              ; preds = %174, %171
  br label %200

180:                                              ; preds = %167
  %181 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %182 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %181, i32 0, i32 2
  %183 = load i8*, i8** %182, align 8
  %184 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %185 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %184, i32 0, i32 5
  %186 = load i32, i32* %185, align 4
  %187 = call i32 @strerror(i32 %186)
  %188 = call i32 @warnx(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* %183, i32 %187)
  store i32 1, i32* %16, align 4
  br label %200

189:                                              ; preds = %167
  br label %144

190:                                              ; preds = %167, %167
  %191 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %192 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %191, i32 0, i32 2
  %193 = load i8*, i8** %192, align 8
  %194 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %195 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %194, i32 0, i32 5
  %196 = load i32, i32* %195, align 4
  %197 = call i32 @strerror(i32 %196)
  %198 = call i32 @warnx(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* %193, i32 %197)
  store i32 1, i32* %16, align 4
  br label %144

199:                                              ; preds = %167
  br label %200

200:                                              ; preds = %199, %180, %179
  %201 = load i32*, i32** %8, align 8
  %202 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %203 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %202, i32 0, i32 3
  %204 = load %struct.TYPE_6__*, %struct.TYPE_6__** %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 4
  %207 = call i32 @getmode(i32* %201, i32 %206)
  store i32 %207, i32* %19, align 4
  %208 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %209 = load i32, i32* %15, align 4
  %210 = call i64 @may_have_nfs4acl(%struct.TYPE_7__* %208, i32 %209)
  %211 = icmp eq i64 %210, 0
  br i1 %211, label %212, label %225

212:                                              ; preds = %200
  %213 = load i32, i32* %19, align 4
  %214 = load i32, i32* @ALLPERMS, align 4
  %215 = and i32 %213, %214
  %216 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %217 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %216, i32 0, i32 3
  %218 = load %struct.TYPE_6__*, %struct.TYPE_6__** %217, align 8
  %219 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 4
  %221 = load i32, i32* @ALLPERMS, align 4
  %222 = and i32 %220, %221
  %223 = icmp eq i32 %215, %222
  br i1 %223, label %224, label %225

224:                                              ; preds = %212
  br label %144

225:                                              ; preds = %212, %200
  %226 = load i32, i32* @AT_FDCWD, align 4
  %227 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %228 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %227, i32 0, i32 4
  %229 = load i32, i32* %228, align 8
  %230 = load i32, i32* %19, align 4
  %231 = load i32, i32* %20, align 4
  %232 = call i32 @fchmodat(i32 %226, i32 %229, i32 %230, i32 %231)
  %233 = icmp eq i32 %232, -1
  br i1 %233, label %234, label %242

234:                                              ; preds = %225
  %235 = load i32, i32* %13, align 4
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %242, label %237

237:                                              ; preds = %234
  %238 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %239 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %238, i32 0, i32 2
  %240 = load i8*, i8** %239, align 8
  %241 = call i32 @warn(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* %240)
  store i32 1, i32* %16, align 4
  br label %297

242:                                              ; preds = %234, %225
  %243 = load i32, i32* %17, align 4
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %248, label %245

245:                                              ; preds = %242
  %246 = load i64, i64* @siginfo, align 8
  %247 = icmp ne i64 %246, 0
  br i1 %247, label %248, label %296

248:                                              ; preds = %245, %242
  %249 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %250 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %249, i32 0, i32 2
  %251 = load i8*, i8** %250, align 8
  %252 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* %251)
  %253 = load i32, i32* %17, align 4
  %254 = icmp sgt i32 %253, 1
  br i1 %254, label %258, label %255

255:                                              ; preds = %248
  %256 = load i64, i64* @siginfo, align 8
  %257 = icmp ne i64 %256, 0
  br i1 %257, label %258, label %294

258:                                              ; preds = %255, %248
  %259 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %260 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %259, i32 0, i32 3
  %261 = load %struct.TYPE_6__*, %struct.TYPE_6__** %260, align 8
  %262 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 4
  %264 = getelementptr inbounds [12 x i8], [12 x i8]* %21, i64 0, i64 0
  %265 = call i32 @strmode(i32 %263, i8* %264)
  %266 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %267 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %266, i32 0, i32 3
  %268 = load %struct.TYPE_6__*, %struct.TYPE_6__** %267, align 8
  %269 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %268, i32 0, i32 0
  %270 = load i32, i32* %269, align 4
  %271 = load i32, i32* @S_IFMT, align 4
  %272 = and i32 %270, %271
  %273 = load i32, i32* %19, align 4
  %274 = or i32 %272, %273
  %275 = getelementptr inbounds [12 x i8], [12 x i8]* %22, i64 0, i64 0
  %276 = call i32 @strmode(i32 %274, i8* %275)
  %277 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %278 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %277, i32 0, i32 3
  %279 = load %struct.TYPE_6__*, %struct.TYPE_6__** %278, align 8
  %280 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %279, i32 0, i32 0
  %281 = load i32, i32* %280, align 4
  %282 = getelementptr inbounds [12 x i8], [12 x i8]* %21, i64 0, i64 0
  %283 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %284 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %283, i32 0, i32 3
  %285 = load %struct.TYPE_6__*, %struct.TYPE_6__** %284, align 8
  %286 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %285, i32 0, i32 0
  %287 = load i32, i32* %286, align 4
  %288 = load i32, i32* @S_IFMT, align 4
  %289 = and i32 %287, %288
  %290 = load i32, i32* %19, align 4
  %291 = or i32 %289, %290
  %292 = getelementptr inbounds [12 x i8], [12 x i8]* %22, i64 0, i64 0
  %293 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), i32 %281, i8* %282, i32 %291, i8* %292)
  br label %294

294:                                              ; preds = %258, %255
  %295 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  store i64 0, i64* @siginfo, align 8
  br label %296

296:                                              ; preds = %294, %245
  br label %297

297:                                              ; preds = %296, %237
  br label %144

298:                                              ; preds = %144
  %299 = load i64, i64* @errno, align 8
  %300 = icmp ne i64 %299, 0
  br i1 %300, label %301, label %303

301:                                              ; preds = %298
  %302 = call i32 @err(i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0))
  br label %303

303:                                              ; preds = %301, %298
  %304 = load i32, i32* %16, align 4
  %305 = call i32 @exit(i32 %304) #3
  unreachable
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @signal(i32, i32) #1

declare dso_local i32 @errx(i32, i8*, ...) #1

declare dso_local i32* @setmode(i8*) #1

declare dso_local i32* @fts_open(i8**, i32, i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local %struct.TYPE_7__* @fts_read(i32*) #1

declare dso_local i32 @fts_set(i32*, %struct.TYPE_7__*, i32) #1

declare dso_local i32 @warnx(i8*, i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @getmode(i32*, i32) #1

declare dso_local i64 @may_have_nfs4acl(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @fchmodat(i32, i32, i32, i32) #1

declare dso_local i32 @warn(i8*, i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @strmode(i32, i8*) #1

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
