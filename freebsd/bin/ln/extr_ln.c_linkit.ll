; ModuleID = '/home/carl/AnghaBench/freebsd/bin/ln/extr_ln.c_linkit.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/ln/extr_ln.c_linkit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@PATH_MAX = common dso_local global i32 0, align 4
@sflag = common dso_local global i64 0, align 8
@Pflag = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@EISDIR = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@Fflag = common dso_local global i64 0, align 8
@hflag = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@ENAMETOOLONG = common dso_local global i32 0, align 4
@wflag = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [25 x i8] c"warning: %s inaccessible\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"warning: %s\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"%s and %s are the same directory entry\00", align 1
@fflag = common dso_local global i64 0, align 8
@iflag = common dso_local global i64 0, align 8
@stdout = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [13 x i8] c"replace %s? \00", align 1
@EOF = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [14 x i8] c"not replaced\0A\00", align 1
@AT_FDCWD = common dso_local global i32 0, align 4
@AT_SYMLINK_FOLLOW = common dso_local global i32 0, align 4
@vflag = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [11 x i8] c"%s %c> %s\0A\00", align 1
@linkch = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32)* @linkit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @linkit(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.stat, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %18 = load i32, i32* @PATH_MAX, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %13, align 8
  %21 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %14, align 8
  %22 = load i32, i32* @PATH_MAX, align 4
  %23 = zext i32 %22 to i64
  %24 = alloca i8, i64 %23, align 16
  store i64 %23, i64* %15, align 8
  %25 = load i32, i32* @PATH_MAX, align 4
  %26 = zext i32 %25 to i64
  %27 = alloca i8, i64 %26, align 16
  store i64 %26, i64* %16, align 8
  %28 = load i64, i64* @sflag, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %51, label %30

30:                                               ; preds = %3
  %31 = load i64, i64* @Pflag, align 8
  %32 = icmp ne i64 %31, 0
  %33 = zext i1 %32 to i64
  %34 = select i1 %32, i64 (i8*, %struct.stat*)* @lstat, i64 (i8*, %struct.stat*)* @stat
  %35 = load i8*, i8** %5, align 8
  %36 = call i64 %34(i8* %35, %struct.stat* %8)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %30
  %39 = load i8*, i8** %5, align 8
  %40 = call i32 @warn(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %39)
  store i32 1, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %282

41:                                               ; preds = %30
  %42 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @S_ISDIR(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %41
  %47 = load i32, i32* @EISDIR, align 4
  store i32 %47, i32* @errno, align 4
  %48 = load i8*, i8** %5, align 8
  %49 = call i32 @warn(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %48)
  store i32 1, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %282

50:                                               ; preds = %41
  br label %51

51:                                               ; preds = %50, %3
  %52 = load i64, i64* @Fflag, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %98, label %54

54:                                               ; preds = %51
  %55 = load i32, i32* %7, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %78, label %57

57:                                               ; preds = %54
  %58 = load i8*, i8** %6, align 8
  %59 = call i64 @lstat(i8* %58, %struct.stat* %8)
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i64 @S_ISDIR(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %78, label %66

66:                                               ; preds = %61, %57
  %67 = load i32, i32* @hflag, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %98, label %69

69:                                               ; preds = %66
  %70 = load i8*, i8** %6, align 8
  %71 = call i64 @stat(i8* %70, %struct.stat* %8)
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %73, label %98

73:                                               ; preds = %69
  %74 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i64 @S_ISDIR(i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %98

78:                                               ; preds = %73, %61, %54
  %79 = load i8*, i8** %5, align 8
  %80 = trunc i64 %26 to i32
  %81 = call i32 @strlcpy(i8* %27, i8* %79, i32 %80)
  %82 = sext i32 %81 to i64
  %83 = icmp uge i64 %82, %26
  br i1 %83, label %93, label %84

84:                                               ; preds = %78
  %85 = call i8* @basename(i8* %27)
  store i8* %85, i8** %9, align 8
  %86 = icmp eq i8* %85, null
  br i1 %86, label %93, label %87

87:                                               ; preds = %84
  %88 = trunc i64 %19 to i32
  %89 = load i8*, i8** %6, align 8
  %90 = load i8*, i8** %9, align 8
  %91 = call i64 @snprintf(i8* %21, i32 %88, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %89, i8* %90)
  %92 = icmp sge i64 %91, %19
  br i1 %92, label %93, label %97

93:                                               ; preds = %87, %84, %78
  %94 = load i32, i32* @ENAMETOOLONG, align 4
  store i32 %94, i32* @errno, align 4
  %95 = load i8*, i8** %5, align 8
  %96 = call i32 @warn(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %95)
  store i32 1, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %282

97:                                               ; preds = %87
  store i8* %21, i8** %6, align 8
  br label %98

98:                                               ; preds = %97, %73, %69, %66, %51
  %99 = load i64, i64* @sflag, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %137

101:                                              ; preds = %98
  %102 = load i64, i64* @wflag, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %137

104:                                              ; preds = %101
  %105 = load i8*, i8** %5, align 8
  %106 = load i8, i8* %105, align 1
  %107 = sext i8 %106 to i32
  %108 = icmp eq i32 %107, 47
  br i1 %108, label %109, label %117

109:                                              ; preds = %104
  %110 = load i8*, i8** %5, align 8
  %111 = call i64 @stat(i8* %110, %struct.stat* %8)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %109
  %114 = load i8*, i8** %5, align 8
  %115 = call i32 @warn(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i8* %114)
  br label %116

116:                                              ; preds = %113, %109
  br label %136

117:                                              ; preds = %104
  %118 = load i8*, i8** %6, align 8
  %119 = trunc i64 %26 to i32
  %120 = call i32 @strlcpy(i8* %27, i8* %118, i32 %119)
  %121 = call i8* @dirname(i8* %27)
  store i8* %121, i8** %9, align 8
  %122 = load i8*, i8** %9, align 8
  %123 = icmp ne i8* %122, null
  br i1 %123, label %124, label %135

124:                                              ; preds = %117
  %125 = trunc i64 %23 to i32
  %126 = load i8*, i8** %9, align 8
  %127 = load i8*, i8** %5, align 8
  %128 = call i64 @snprintf(i8* %24, i32 %125, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %126, i8* %127)
  %129 = call i64 @stat(i8* %24, %struct.stat* %8)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %134

131:                                              ; preds = %124
  %132 = load i8*, i8** %5, align 8
  %133 = call i32 @warn(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8* %132)
  br label %134

134:                                              ; preds = %131, %124
  br label %135

135:                                              ; preds = %134, %117
  br label %136

136:                                              ; preds = %135, %116
  br label %137

137:                                              ; preds = %136, %101, %98
  %138 = load i8*, i8** %6, align 8
  %139 = call i64 @lstat(i8* %138, %struct.stat* %8)
  %140 = icmp ne i64 %139, 0
  %141 = xor i1 %140, true
  %142 = zext i1 %141 to i32
  store i32 %142, i32* %11, align 4
  %143 = load i32, i32* %11, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %158

145:                                              ; preds = %137
  %146 = load i64, i64* @sflag, align 8
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %157, label %148

148:                                              ; preds = %145
  %149 = load i8*, i8** %5, align 8
  %150 = load i8*, i8** %6, align 8
  %151 = call i64 @samedirent(i8* %149, i8* %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %157

153:                                              ; preds = %148
  %154 = load i8*, i8** %5, align 8
  %155 = load i8*, i8** %6, align 8
  %156 = call i32 @warnx(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i8* %154, i8* %155)
  store i32 1, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %282

157:                                              ; preds = %148, %145
  br label %158

158:                                              ; preds = %157, %137
  %159 = load i64, i64* @fflag, align 8
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %189

161:                                              ; preds = %158
  %162 = load i32, i32* %11, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %189

164:                                              ; preds = %161
  %165 = load i64, i64* @Fflag, align 8
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %180

167:                                              ; preds = %164
  %168 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = call i64 @S_ISDIR(i32 %169)
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %180

172:                                              ; preds = %167
  %173 = load i8*, i8** %6, align 8
  %174 = call i64 @rmdir(i8* %173)
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %179

176:                                              ; preds = %172
  %177 = load i8*, i8** %6, align 8
  %178 = call i32 @warn(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %177)
  store i32 1, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %282

179:                                              ; preds = %172
  br label %188

180:                                              ; preds = %167, %164
  %181 = load i8*, i8** %6, align 8
  %182 = call i64 @unlink(i8* %181)
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %187

184:                                              ; preds = %180
  %185 = load i8*, i8** %6, align 8
  %186 = call i32 @warn(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %185)
  store i32 1, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %282

187:                                              ; preds = %180
  br label %188

188:                                              ; preds = %187, %179
  br label %248

189:                                              ; preds = %161, %158
  %190 = load i64, i64* @iflag, align 8
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %247

192:                                              ; preds = %189
  %193 = load i32, i32* %11, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %247

195:                                              ; preds = %192
  %196 = load i32, i32* @stdout, align 4
  %197 = call i32 @fflush(i32 %196)
  %198 = load i32, i32* @stderr, align 4
  %199 = load i8*, i8** %6, align 8
  %200 = call i32 (i32, i8*, ...) @fprintf(i32 %198, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i8* %199)
  %201 = call i32 (...) @getchar()
  store i32 %201, i32* %10, align 4
  store i32 %201, i32* %12, align 4
  br label %202

202:                                              ; preds = %211, %195
  %203 = load i32, i32* %10, align 4
  %204 = icmp ne i32 %203, 10
  br i1 %204, label %205, label %209

205:                                              ; preds = %202
  %206 = load i32, i32* %10, align 4
  %207 = load i32, i32* @EOF, align 4
  %208 = icmp ne i32 %206, %207
  br label %209

209:                                              ; preds = %205, %202
  %210 = phi i1 [ false, %202 ], [ %208, %205 ]
  br i1 %210, label %211, label %213

211:                                              ; preds = %209
  %212 = call i32 (...) @getchar()
  store i32 %212, i32* %10, align 4
  br label %202

213:                                              ; preds = %209
  %214 = load i32, i32* %12, align 4
  %215 = icmp ne i32 %214, 121
  br i1 %215, label %216, label %222

216:                                              ; preds = %213
  %217 = load i32, i32* %12, align 4
  %218 = icmp ne i32 %217, 89
  br i1 %218, label %219, label %222

219:                                              ; preds = %216
  %220 = load i32, i32* @stderr, align 4
  %221 = call i32 (i32, i8*, ...) @fprintf(i32 %220, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  store i32 1, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %282

222:                                              ; preds = %216, %213
  %223 = load i64, i64* @Fflag, align 8
  %224 = icmp ne i64 %223, 0
  br i1 %224, label %225, label %238

225:                                              ; preds = %222
  %226 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 0
  %227 = load i32, i32* %226, align 4
  %228 = call i64 @S_ISDIR(i32 %227)
  %229 = icmp ne i64 %228, 0
  br i1 %229, label %230, label %238

230:                                              ; preds = %225
  %231 = load i8*, i8** %6, align 8
  %232 = call i64 @rmdir(i8* %231)
  %233 = icmp ne i64 %232, 0
  br i1 %233, label %234, label %237

234:                                              ; preds = %230
  %235 = load i8*, i8** %6, align 8
  %236 = call i32 @warn(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %235)
  store i32 1, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %282

237:                                              ; preds = %230
  br label %246

238:                                              ; preds = %225, %222
  %239 = load i8*, i8** %6, align 8
  %240 = call i64 @unlink(i8* %239)
  %241 = icmp ne i64 %240, 0
  br i1 %241, label %242, label %245

242:                                              ; preds = %238
  %243 = load i8*, i8** %6, align 8
  %244 = call i32 @warn(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %243)
  store i32 1, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %282

245:                                              ; preds = %238
  br label %246

246:                                              ; preds = %245, %237
  br label %247

247:                                              ; preds = %246, %192, %189
  br label %248

248:                                              ; preds = %247, %188
  %249 = load i64, i64* @sflag, align 8
  %250 = icmp ne i64 %249, 0
  br i1 %250, label %251, label %256

251:                                              ; preds = %248
  %252 = load i8*, i8** %5, align 8
  %253 = load i8*, i8** %6, align 8
  %254 = call i64 @symlink(i8* %252, i8* %253)
  %255 = icmp ne i64 %254, 0
  br i1 %255, label %270, label %273

256:                                              ; preds = %248
  %257 = load i32, i32* @AT_FDCWD, align 4
  %258 = load i8*, i8** %5, align 8
  %259 = load i32, i32* @AT_FDCWD, align 4
  %260 = load i8*, i8** %6, align 8
  %261 = load i64, i64* @Pflag, align 8
  %262 = icmp ne i64 %261, 0
  br i1 %262, label %263, label %264

263:                                              ; preds = %256
  br label %266

264:                                              ; preds = %256
  %265 = load i32, i32* @AT_SYMLINK_FOLLOW, align 4
  br label %266

266:                                              ; preds = %264, %263
  %267 = phi i32 [ 0, %263 ], [ %265, %264 ]
  %268 = call i64 @linkat(i32 %257, i8* %258, i32 %259, i8* %260, i32 %267)
  %269 = icmp ne i64 %268, 0
  br i1 %269, label %270, label %273

270:                                              ; preds = %266, %251
  %271 = load i8*, i8** %6, align 8
  %272 = call i32 @warn(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %271)
  store i32 1, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %282

273:                                              ; preds = %266, %251
  %274 = load i64, i64* @vflag, align 8
  %275 = icmp ne i64 %274, 0
  br i1 %275, label %276, label %281

276:                                              ; preds = %273
  %277 = load i8*, i8** %6, align 8
  %278 = load i32, i32* @linkch, align 4
  %279 = load i8*, i8** %5, align 8
  %280 = call i32 @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i8* %277, i32 %278, i8* %279)
  br label %281

281:                                              ; preds = %276, %273
  store i32 0, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %282

282:                                              ; preds = %281, %270, %242, %234, %219, %184, %176, %153, %93, %46, %38
  %283 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %283)
  %284 = load i32, i32* %4, align 4
  ret i32 %284
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @lstat(i8*, %struct.stat*) #2

declare dso_local i64 @stat(i8*, %struct.stat*) #2

declare dso_local i32 @warn(i8*, i8*) #2

declare dso_local i64 @S_ISDIR(i32) #2

declare dso_local i32 @strlcpy(i8*, i8*, i32) #2

declare dso_local i8* @basename(i8*) #2

declare dso_local i64 @snprintf(i8*, i32, i8*, i8*, i8*) #2

declare dso_local i8* @dirname(i8*) #2

declare dso_local i64 @samedirent(i8*, i8*) #2

declare dso_local i32 @warnx(i8*, i8*, i8*) #2

declare dso_local i64 @rmdir(i8*) #2

declare dso_local i64 @unlink(i8*) #2

declare dso_local i32 @fflush(i32) #2

declare dso_local i32 @fprintf(i32, i8*, ...) #2

declare dso_local i32 @getchar(...) #2

declare dso_local i64 @symlink(i8*, i8*) #2

declare dso_local i64 @linkat(i32, i8*, i32, i8*, i32) #2

declare dso_local i32 @printf(i8*, i8*, i32, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
