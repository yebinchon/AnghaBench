; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_run-command.c_start_command.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_run-command.c_start_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.child_process = type { i32, i32, i32, i64, i32*, i64, i32 (...)*, i64*, i64, i64, i64, i64, i64 }

@ERR_RUN_COMMAND_PIPE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"exec %s: cd to %s failed (%s)\00", align 1
@errno = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@ERR_RUN_COMMAND_EXEC = common dso_local global i32 0, align 4
@ERR_RUN_COMMAND_FORK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @start_command(%struct.child_process* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.child_process*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [2 x i32], align 4
  %8 = alloca [2 x i32], align 4
  %9 = alloca [2 x i32], align 4
  %10 = alloca i32, align 4
  store %struct.child_process* %0, %struct.child_process** %3, align 8
  %11 = load %struct.child_process*, %struct.child_process** %3, align 8
  %12 = getelementptr inbounds %struct.child_process, %struct.child_process* %11, i32 0, i32 12
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %1
  %16 = load %struct.child_process*, %struct.child_process** %3, align 8
  %17 = getelementptr inbounds %struct.child_process, %struct.child_process* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %18, 0
  br label %20

20:                                               ; preds = %15, %1
  %21 = phi i1 [ false, %1 ], [ %19, %15 ]
  %22 = zext i1 %21 to i32
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %47

25:                                               ; preds = %20
  %26 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %27 = call i64 @pipe(i32* %26)
  %28 = icmp slt i64 %27, 0
  br i1 %28, label %29, label %42

29:                                               ; preds = %25
  %30 = load %struct.child_process*, %struct.child_process** %3, align 8
  %31 = getelementptr inbounds %struct.child_process, %struct.child_process* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %29
  %35 = load %struct.child_process*, %struct.child_process** %3, align 8
  %36 = getelementptr inbounds %struct.child_process, %struct.child_process* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @close(i32 %37)
  br label %39

39:                                               ; preds = %34, %29
  %40 = load i32, i32* @ERR_RUN_COMMAND_PIPE, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %2, align 4
  br label %452

42:                                               ; preds = %25
  %43 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.child_process*, %struct.child_process** %3, align 8
  %46 = getelementptr inbounds %struct.child_process, %struct.child_process* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  br label %47

47:                                               ; preds = %42, %20
  %48 = load %struct.child_process*, %struct.child_process** %3, align 8
  %49 = getelementptr inbounds %struct.child_process, %struct.child_process* %48, i32 0, i32 10
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %62, label %52

52:                                               ; preds = %47
  %53 = load %struct.child_process*, %struct.child_process** %3, align 8
  %54 = getelementptr inbounds %struct.child_process, %struct.child_process* %53, i32 0, i32 9
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %62, label %57

57:                                               ; preds = %52
  %58 = load %struct.child_process*, %struct.child_process** %3, align 8
  %59 = getelementptr inbounds %struct.child_process, %struct.child_process* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = icmp slt i32 %60, 0
  br label %62

62:                                               ; preds = %57, %52, %47
  %63 = phi i1 [ false, %52 ], [ false, %47 ], [ %61, %57 ]
  %64 = zext i1 %63 to i32
  store i32 %64, i32* %5, align 4
  %65 = load i32, i32* %5, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %96

67:                                               ; preds = %62
  %68 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %69 = call i64 @pipe(i32* %68)
  %70 = icmp slt i64 %69, 0
  br i1 %70, label %71, label %91

71:                                               ; preds = %67
  %72 = load i32, i32* %4, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %71
  %75 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %76 = call i32 @close_pair(i32* %75)
  br label %88

77:                                               ; preds = %71
  %78 = load %struct.child_process*, %struct.child_process** %3, align 8
  %79 = getelementptr inbounds %struct.child_process, %struct.child_process* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %77
  %83 = load %struct.child_process*, %struct.child_process** %3, align 8
  %84 = getelementptr inbounds %struct.child_process, %struct.child_process* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @close(i32 %85)
  br label %87

87:                                               ; preds = %82, %77
  br label %88

88:                                               ; preds = %87, %74
  %89 = load i32, i32* @ERR_RUN_COMMAND_PIPE, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %2, align 4
  br label %452

91:                                               ; preds = %67
  %92 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.child_process*, %struct.child_process** %3, align 8
  %95 = getelementptr inbounds %struct.child_process, %struct.child_process* %94, i32 0, i32 1
  store i32 %93, i32* %95, align 4
  br label %96

96:                                               ; preds = %91, %62
  %97 = load %struct.child_process*, %struct.child_process** %3, align 8
  %98 = getelementptr inbounds %struct.child_process, %struct.child_process* %97, i32 0, i32 11
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %106, label %101

101:                                              ; preds = %96
  %102 = load %struct.child_process*, %struct.child_process** %3, align 8
  %103 = getelementptr inbounds %struct.child_process, %struct.child_process* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = icmp slt i32 %104, 0
  br label %106

106:                                              ; preds = %101, %96
  %107 = phi i1 [ false, %96 ], [ %105, %101 ]
  %108 = zext i1 %107 to i32
  store i32 %108, i32* %6, align 4
  %109 = load i32, i32* %6, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %157

111:                                              ; preds = %106
  %112 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %113 = call i64 @pipe(i32* %112)
  %114 = icmp slt i64 %113, 0
  br i1 %114, label %115, label %152

115:                                              ; preds = %111
  %116 = load i32, i32* %4, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %115
  %119 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %120 = call i32 @close_pair(i32* %119)
  br label %132

121:                                              ; preds = %115
  %122 = load %struct.child_process*, %struct.child_process** %3, align 8
  %123 = getelementptr inbounds %struct.child_process, %struct.child_process* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %131

126:                                              ; preds = %121
  %127 = load %struct.child_process*, %struct.child_process** %3, align 8
  %128 = getelementptr inbounds %struct.child_process, %struct.child_process* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = call i32 @close(i32 %129)
  br label %131

131:                                              ; preds = %126, %121
  br label %132

132:                                              ; preds = %131, %118
  %133 = load i32, i32* %5, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %138

135:                                              ; preds = %132
  %136 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %137 = call i32 @close_pair(i32* %136)
  br label %149

138:                                              ; preds = %132
  %139 = load %struct.child_process*, %struct.child_process** %3, align 8
  %140 = getelementptr inbounds %struct.child_process, %struct.child_process* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %148

143:                                              ; preds = %138
  %144 = load %struct.child_process*, %struct.child_process** %3, align 8
  %145 = getelementptr inbounds %struct.child_process, %struct.child_process* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @close(i32 %146)
  br label %148

148:                                              ; preds = %143, %138
  br label %149

149:                                              ; preds = %148, %135
  %150 = load i32, i32* @ERR_RUN_COMMAND_PIPE, align 4
  %151 = sub nsw i32 0, %150
  store i32 %151, i32* %2, align 4
  br label %452

152:                                              ; preds = %111
  %153 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.child_process*, %struct.child_process** %3, align 8
  %156 = getelementptr inbounds %struct.child_process, %struct.child_process* %155, i32 0, i32 2
  store i32 %154, i32* %156, align 8
  br label %157

157:                                              ; preds = %152, %106
  %158 = call i32 @fflush(i32* null)
  %159 = call i64 (...) @fork()
  %160 = load %struct.child_process*, %struct.child_process** %3, align 8
  %161 = getelementptr inbounds %struct.child_process, %struct.child_process* %160, i32 0, i32 3
  store i64 %159, i64* %161, align 8
  %162 = load %struct.child_process*, %struct.child_process** %3, align 8
  %163 = getelementptr inbounds %struct.child_process, %struct.child_process* %162, i32 0, i32 3
  %164 = load i64, i64* %163, align 8
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %350, label %166

166:                                              ; preds = %157
  %167 = load %struct.child_process*, %struct.child_process** %3, align 8
  %168 = getelementptr inbounds %struct.child_process, %struct.child_process* %167, i32 0, i32 12
  %169 = load i64, i64* %168, align 8
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %173

171:                                              ; preds = %166
  %172 = call i32 @dup_devnull(i32 0)
  br label %198

173:                                              ; preds = %166
  %174 = load i32, i32* %4, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %182

176:                                              ; preds = %173
  %177 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %178 = load i32, i32* %177, align 4
  %179 = call i32 @dup2(i32 %178, i32 0)
  %180 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %181 = call i32 @close_pair(i32* %180)
  br label %197

182:                                              ; preds = %173
  %183 = load %struct.child_process*, %struct.child_process** %3, align 8
  %184 = getelementptr inbounds %struct.child_process, %struct.child_process* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %196

187:                                              ; preds = %182
  %188 = load %struct.child_process*, %struct.child_process** %3, align 8
  %189 = getelementptr inbounds %struct.child_process, %struct.child_process* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = call i32 @dup2(i32 %190, i32 0)
  %192 = load %struct.child_process*, %struct.child_process** %3, align 8
  %193 = getelementptr inbounds %struct.child_process, %struct.child_process* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = call i32 @close(i32 %194)
  br label %196

196:                                              ; preds = %187, %182
  br label %197

197:                                              ; preds = %196, %176
  br label %198

198:                                              ; preds = %197, %171
  %199 = load %struct.child_process*, %struct.child_process** %3, align 8
  %200 = getelementptr inbounds %struct.child_process, %struct.child_process* %199, i32 0, i32 11
  %201 = load i64, i64* %200, align 8
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %205

203:                                              ; preds = %198
  %204 = call i32 @dup_devnull(i32 2)
  br label %215

205:                                              ; preds = %198
  %206 = load i32, i32* %6, align 4
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %214

208:                                              ; preds = %205
  %209 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  %210 = load i32, i32* %209, align 4
  %211 = call i32 @dup2(i32 %210, i32 2)
  %212 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %213 = call i32 @close_pair(i32* %212)
  br label %214

214:                                              ; preds = %208, %205
  br label %215

215:                                              ; preds = %214, %203
  %216 = load %struct.child_process*, %struct.child_process** %3, align 8
  %217 = getelementptr inbounds %struct.child_process, %struct.child_process* %216, i32 0, i32 10
  %218 = load i64, i64* %217, align 8
  %219 = icmp ne i64 %218, 0
  br i1 %219, label %220, label %222

220:                                              ; preds = %215
  %221 = call i32 @dup_devnull(i32 1)
  br label %255

222:                                              ; preds = %215
  %223 = load %struct.child_process*, %struct.child_process** %3, align 8
  %224 = getelementptr inbounds %struct.child_process, %struct.child_process* %223, i32 0, i32 9
  %225 = load i64, i64* %224, align 8
  %226 = icmp ne i64 %225, 0
  br i1 %226, label %227, label %229

227:                                              ; preds = %222
  %228 = call i32 @dup2(i32 2, i32 1)
  br label %254

229:                                              ; preds = %222
  %230 = load i32, i32* %5, align 4
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %238

232:                                              ; preds = %229
  %233 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1
  %234 = load i32, i32* %233, align 4
  %235 = call i32 @dup2(i32 %234, i32 1)
  %236 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %237 = call i32 @close_pair(i32* %236)
  br label %253

238:                                              ; preds = %229
  %239 = load %struct.child_process*, %struct.child_process** %3, align 8
  %240 = getelementptr inbounds %struct.child_process, %struct.child_process* %239, i32 0, i32 1
  %241 = load i32, i32* %240, align 4
  %242 = icmp sgt i32 %241, 1
  br i1 %242, label %243, label %252

243:                                              ; preds = %238
  %244 = load %struct.child_process*, %struct.child_process** %3, align 8
  %245 = getelementptr inbounds %struct.child_process, %struct.child_process* %244, i32 0, i32 1
  %246 = load i32, i32* %245, align 4
  %247 = call i32 @dup2(i32 %246, i32 1)
  %248 = load %struct.child_process*, %struct.child_process** %3, align 8
  %249 = getelementptr inbounds %struct.child_process, %struct.child_process* %248, i32 0, i32 1
  %250 = load i32, i32* %249, align 4
  %251 = call i32 @close(i32 %250)
  br label %252

252:                                              ; preds = %243, %238
  br label %253

253:                                              ; preds = %252, %232
  br label %254

254:                                              ; preds = %253, %227
  br label %255

255:                                              ; preds = %254, %220
  %256 = load %struct.child_process*, %struct.child_process** %3, align 8
  %257 = getelementptr inbounds %struct.child_process, %struct.child_process* %256, i32 0, i32 8
  %258 = load i64, i64* %257, align 8
  %259 = icmp ne i64 %258, 0
  br i1 %259, label %260, label %278

260:                                              ; preds = %255
  %261 = load %struct.child_process*, %struct.child_process** %3, align 8
  %262 = getelementptr inbounds %struct.child_process, %struct.child_process* %261, i32 0, i32 8
  %263 = load i64, i64* %262, align 8
  %264 = call i64 @chdir(i64 %263)
  %265 = icmp ne i64 %264, 0
  br i1 %265, label %266, label %278

266:                                              ; preds = %260
  %267 = load %struct.child_process*, %struct.child_process** %3, align 8
  %268 = getelementptr inbounds %struct.child_process, %struct.child_process* %267, i32 0, i32 4
  %269 = load i32*, i32** %268, align 8
  %270 = getelementptr inbounds i32, i32* %269, i64 0
  %271 = load i32, i32* %270, align 4
  %272 = load %struct.child_process*, %struct.child_process** %3, align 8
  %273 = getelementptr inbounds %struct.child_process, %struct.child_process* %272, i32 0, i32 8
  %274 = load i64, i64* %273, align 8
  %275 = load i32, i32* @errno, align 4
  %276 = call i32 @strerror(i32 %275)
  %277 = call i32 @die(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %271, i64 %274, i32 %276)
  br label %278

278:                                              ; preds = %266, %260, %255
  %279 = load %struct.child_process*, %struct.child_process** %3, align 8
  %280 = getelementptr inbounds %struct.child_process, %struct.child_process* %279, i32 0, i32 7
  %281 = load i64*, i64** %280, align 8
  %282 = icmp ne i64* %281, null
  br i1 %282, label %283, label %317

283:                                              ; preds = %278
  br label %284

284:                                              ; preds = %311, %283
  %285 = load %struct.child_process*, %struct.child_process** %3, align 8
  %286 = getelementptr inbounds %struct.child_process, %struct.child_process* %285, i32 0, i32 7
  %287 = load i64*, i64** %286, align 8
  %288 = load i64, i64* %287, align 8
  %289 = icmp ne i64 %288, 0
  br i1 %289, label %290, label %316

290:                                              ; preds = %284
  %291 = load %struct.child_process*, %struct.child_process** %3, align 8
  %292 = getelementptr inbounds %struct.child_process, %struct.child_process* %291, i32 0, i32 7
  %293 = load i64*, i64** %292, align 8
  %294 = load i64, i64* %293, align 8
  %295 = call i64 @strchr(i64 %294, i8 signext 61)
  %296 = icmp ne i64 %295, 0
  br i1 %296, label %297, label %304

297:                                              ; preds = %290
  %298 = load %struct.child_process*, %struct.child_process** %3, align 8
  %299 = getelementptr inbounds %struct.child_process, %struct.child_process* %298, i32 0, i32 7
  %300 = load i64*, i64** %299, align 8
  %301 = load i64, i64* %300, align 8
  %302 = inttoptr i64 %301 to i8*
  %303 = call i32 @putenv(i8* %302)
  br label %310

304:                                              ; preds = %290
  %305 = load %struct.child_process*, %struct.child_process** %3, align 8
  %306 = getelementptr inbounds %struct.child_process, %struct.child_process* %305, i32 0, i32 7
  %307 = load i64*, i64** %306, align 8
  %308 = load i64, i64* %307, align 8
  %309 = call i32 @unsetenv(i64 %308)
  br label %310

310:                                              ; preds = %304, %297
  br label %311

311:                                              ; preds = %310
  %312 = load %struct.child_process*, %struct.child_process** %3, align 8
  %313 = getelementptr inbounds %struct.child_process, %struct.child_process* %312, i32 0, i32 7
  %314 = load i64*, i64** %313, align 8
  %315 = getelementptr inbounds i64, i64* %314, i32 1
  store i64* %315, i64** %313, align 8
  br label %284

316:                                              ; preds = %284
  br label %317

317:                                              ; preds = %316, %278
  %318 = load %struct.child_process*, %struct.child_process** %3, align 8
  %319 = getelementptr inbounds %struct.child_process, %struct.child_process* %318, i32 0, i32 6
  %320 = load i32 (...)*, i32 (...)** %319, align 8
  %321 = icmp ne i32 (...)* %320, null
  br i1 %321, label %322, label %327

322:                                              ; preds = %317
  %323 = load %struct.child_process*, %struct.child_process** %3, align 8
  %324 = getelementptr inbounds %struct.child_process, %struct.child_process* %323, i32 0, i32 6
  %325 = load i32 (...)*, i32 (...)** %324, align 8
  %326 = call i32 (...) %325()
  br label %327

327:                                              ; preds = %322, %317
  %328 = load %struct.child_process*, %struct.child_process** %3, align 8
  %329 = getelementptr inbounds %struct.child_process, %struct.child_process* %328, i32 0, i32 5
  %330 = load i64, i64* %329, align 8
  %331 = icmp ne i64 %330, 0
  br i1 %331, label %332, label %337

332:                                              ; preds = %327
  %333 = load %struct.child_process*, %struct.child_process** %3, align 8
  %334 = getelementptr inbounds %struct.child_process, %struct.child_process* %333, i32 0, i32 4
  %335 = load i32*, i32** %334, align 8
  %336 = call i32 @execv_perf_cmd(i32* %335)
  br label %348

337:                                              ; preds = %327
  %338 = load %struct.child_process*, %struct.child_process** %3, align 8
  %339 = getelementptr inbounds %struct.child_process, %struct.child_process* %338, i32 0, i32 4
  %340 = load i32*, i32** %339, align 8
  %341 = getelementptr inbounds i32, i32* %340, i64 0
  %342 = load i32, i32* %341, align 4
  %343 = load %struct.child_process*, %struct.child_process** %3, align 8
  %344 = getelementptr inbounds %struct.child_process, %struct.child_process* %343, i32 0, i32 4
  %345 = load i32*, i32** %344, align 8
  %346 = bitcast i32* %345 to i8**
  %347 = call i32 @execvp(i32 %342, i8** %346)
  br label %348

348:                                              ; preds = %337, %332
  %349 = call i32 @exit(i32 127) #3
  unreachable

350:                                              ; preds = %157
  %351 = load %struct.child_process*, %struct.child_process** %3, align 8
  %352 = getelementptr inbounds %struct.child_process, %struct.child_process* %351, i32 0, i32 3
  %353 = load i64, i64* %352, align 8
  %354 = icmp slt i64 %353, 0
  br i1 %354, label %355, label %408

355:                                              ; preds = %350
  %356 = load i32, i32* @errno, align 4
  store i32 %356, i32* %10, align 4
  %357 = load i32, i32* %4, align 4
  %358 = icmp ne i32 %357, 0
  br i1 %358, label %359, label %362

359:                                              ; preds = %355
  %360 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %361 = call i32 @close_pair(i32* %360)
  br label %373

362:                                              ; preds = %355
  %363 = load %struct.child_process*, %struct.child_process** %3, align 8
  %364 = getelementptr inbounds %struct.child_process, %struct.child_process* %363, i32 0, i32 0
  %365 = load i32, i32* %364, align 8
  %366 = icmp ne i32 %365, 0
  br i1 %366, label %367, label %372

367:                                              ; preds = %362
  %368 = load %struct.child_process*, %struct.child_process** %3, align 8
  %369 = getelementptr inbounds %struct.child_process, %struct.child_process* %368, i32 0, i32 0
  %370 = load i32, i32* %369, align 8
  %371 = call i32 @close(i32 %370)
  br label %372

372:                                              ; preds = %367, %362
  br label %373

373:                                              ; preds = %372, %359
  %374 = load i32, i32* %5, align 4
  %375 = icmp ne i32 %374, 0
  br i1 %375, label %376, label %379

376:                                              ; preds = %373
  %377 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %378 = call i32 @close_pair(i32* %377)
  br label %390

379:                                              ; preds = %373
  %380 = load %struct.child_process*, %struct.child_process** %3, align 8
  %381 = getelementptr inbounds %struct.child_process, %struct.child_process* %380, i32 0, i32 1
  %382 = load i32, i32* %381, align 4
  %383 = icmp ne i32 %382, 0
  br i1 %383, label %384, label %389

384:                                              ; preds = %379
  %385 = load %struct.child_process*, %struct.child_process** %3, align 8
  %386 = getelementptr inbounds %struct.child_process, %struct.child_process* %385, i32 0, i32 1
  %387 = load i32, i32* %386, align 4
  %388 = call i32 @close(i32 %387)
  br label %389

389:                                              ; preds = %384, %379
  br label %390

390:                                              ; preds = %389, %376
  %391 = load i32, i32* %6, align 4
  %392 = icmp ne i32 %391, 0
  br i1 %392, label %393, label %396

393:                                              ; preds = %390
  %394 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %395 = call i32 @close_pair(i32* %394)
  br label %396

396:                                              ; preds = %393, %390
  %397 = load i32, i32* %10, align 4
  %398 = load i32, i32* @ENOENT, align 4
  %399 = icmp eq i32 %397, %398
  br i1 %399, label %400, label %403

400:                                              ; preds = %396
  %401 = load i32, i32* @ERR_RUN_COMMAND_EXEC, align 4
  %402 = sub nsw i32 0, %401
  br label %406

403:                                              ; preds = %396
  %404 = load i32, i32* @ERR_RUN_COMMAND_FORK, align 4
  %405 = sub nsw i32 0, %404
  br label %406

406:                                              ; preds = %403, %400
  %407 = phi i32 [ %402, %400 ], [ %405, %403 ]
  store i32 %407, i32* %2, align 4
  br label %452

408:                                              ; preds = %350
  %409 = load i32, i32* %4, align 4
  %410 = icmp ne i32 %409, 0
  br i1 %410, label %411, label %415

411:                                              ; preds = %408
  %412 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %413 = load i32, i32* %412, align 4
  %414 = call i32 @close(i32 %413)
  br label %426

415:                                              ; preds = %408
  %416 = load %struct.child_process*, %struct.child_process** %3, align 8
  %417 = getelementptr inbounds %struct.child_process, %struct.child_process* %416, i32 0, i32 0
  %418 = load i32, i32* %417, align 8
  %419 = icmp ne i32 %418, 0
  br i1 %419, label %420, label %425

420:                                              ; preds = %415
  %421 = load %struct.child_process*, %struct.child_process** %3, align 8
  %422 = getelementptr inbounds %struct.child_process, %struct.child_process* %421, i32 0, i32 0
  %423 = load i32, i32* %422, align 8
  %424 = call i32 @close(i32 %423)
  br label %425

425:                                              ; preds = %420, %415
  br label %426

426:                                              ; preds = %425, %411
  %427 = load i32, i32* %5, align 4
  %428 = icmp ne i32 %427, 0
  br i1 %428, label %429, label %433

429:                                              ; preds = %426
  %430 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1
  %431 = load i32, i32* %430, align 4
  %432 = call i32 @close(i32 %431)
  br label %444

433:                                              ; preds = %426
  %434 = load %struct.child_process*, %struct.child_process** %3, align 8
  %435 = getelementptr inbounds %struct.child_process, %struct.child_process* %434, i32 0, i32 1
  %436 = load i32, i32* %435, align 4
  %437 = icmp ne i32 %436, 0
  br i1 %437, label %438, label %443

438:                                              ; preds = %433
  %439 = load %struct.child_process*, %struct.child_process** %3, align 8
  %440 = getelementptr inbounds %struct.child_process, %struct.child_process* %439, i32 0, i32 1
  %441 = load i32, i32* %440, align 4
  %442 = call i32 @close(i32 %441)
  br label %443

443:                                              ; preds = %438, %433
  br label %444

444:                                              ; preds = %443, %429
  %445 = load i32, i32* %6, align 4
  %446 = icmp ne i32 %445, 0
  br i1 %446, label %447, label %451

447:                                              ; preds = %444
  %448 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  %449 = load i32, i32* %448, align 4
  %450 = call i32 @close(i32 %449)
  br label %451

451:                                              ; preds = %447, %444
  store i32 0, i32* %2, align 4
  br label %452

452:                                              ; preds = %451, %406, %149, %88, %39
  %453 = load i32, i32* %2, align 4
  ret i32 %453
}

declare dso_local i64 @pipe(i32*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @close_pair(i32*) #1

declare dso_local i32 @fflush(i32*) #1

declare dso_local i64 @fork(...) #1

declare dso_local i32 @dup_devnull(i32) #1

declare dso_local i32 @dup2(i32, i32) #1

declare dso_local i64 @chdir(i64) #1

declare dso_local i32 @die(i8*, i32, i64, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i64 @strchr(i64, i8 signext) #1

declare dso_local i32 @putenv(i8*) #1

declare dso_local i32 @unsetenv(i64) #1

declare dso_local i32 @execv_perf_cmd(i32*) #1

declare dso_local i32 @execvp(i32, i8**) #1

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
