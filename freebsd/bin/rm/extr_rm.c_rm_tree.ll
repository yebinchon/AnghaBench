; ModuleID = '/home/carl/AnghaBench/freebsd/bin/rm/extr_rm.c_rm_tree.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/rm/extr_rm.c_rm_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i64, i8*, i32, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32 }

@uid = common dso_local global i32 0, align 4
@fflag = common dso_local global i64 0, align 8
@iflag = common dso_local global i32 0, align 4
@stdin_ok = common dso_local global i64 0, align 8
@FTS_PHYSICAL = common dso_local global i32 0, align 4
@FTS_NOSTAT = common dso_local global i32 0, align 4
@Wflag = common dso_local global i64 0, align 8
@FTS_WHITEOUT = common dso_local global i32 0, align 4
@xflag = common dso_local global i64 0, align 8
@FTS_XDEV = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c"fts_open\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@eval = common dso_local global i32 0, align 4
@FTS_SKIP = common dso_local global i32 0, align 4
@UF_APPEND = common dso_local global i32 0, align 4
@UF_IMMUTABLE = common dso_local global i32 0, align 4
@SF_APPEND = common dso_local global i32 0, align 4
@SF_IMMUTABLE = common dso_local global i32 0, align 4
@vflag = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@info = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"fts_read\00", align 1
@SKIPPED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8**)* @rm_tree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rm_tree(i8** %0) #0 {
  %2 = alloca i8**, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8** %0, i8*** %2, align 8
  %8 = load i32, i32* @uid, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %21

10:                                               ; preds = %1
  %11 = load i64, i64* @fflag, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %19, label %13

13:                                               ; preds = %10
  %14 = load i32, i32* @iflag, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %13
  %17 = load i64, i64* @stdin_ok, align 8
  %18 = icmp ne i64 %17, 0
  br label %19

19:                                               ; preds = %16, %13, %10
  %20 = phi i1 [ false, %13 ], [ false, %10 ], [ %18, %16 ]
  br label %21

21:                                               ; preds = %19, %1
  %22 = phi i1 [ true, %1 ], [ %20, %19 ]
  %23 = zext i1 %22 to i32
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* @FTS_PHYSICAL, align 4
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %21
  %28 = load i32, i32* @FTS_NOSTAT, align 4
  %29 = load i32, i32* %6, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %6, align 4
  br label %31

31:                                               ; preds = %27, %21
  %32 = load i64, i64* @Wflag, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %31
  %35 = load i32, i32* @FTS_WHITEOUT, align 4
  %36 = load i32, i32* %6, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %6, align 4
  br label %38

38:                                               ; preds = %34, %31
  %39 = load i64, i64* @xflag, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %38
  %42 = load i32, i32* @FTS_XDEV, align 4
  %43 = load i32, i32* %6, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %6, align 4
  br label %45

45:                                               ; preds = %41, %38
  %46 = load i8**, i8*** %2, align 8
  %47 = load i32, i32* %6, align 4
  %48 = call i32* @fts_open(i8** %46, i32 %47, i32* null)
  store i32* %48, i32** %3, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %60, label %50

50:                                               ; preds = %45
  %51 = load i64, i64* @fflag, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %50
  %54 = load i64, i64* @errno, align 8
  %55 = load i64, i64* @ENOENT, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %53
  br label %389

58:                                               ; preds = %53, %50
  %59 = call i32 @err(i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  br label %60

60:                                               ; preds = %58, %45
  br label %61

61:                                               ; preds = %373, %369, %330, %325, %293, %208, %191, %185, %119, %87, %60
  %62 = load i32*, i32** %3, align 8
  %63 = call %struct.TYPE_5__* @fts_read(i32* %62)
  store %struct.TYPE_5__* %63, %struct.TYPE_5__** %4, align 8
  %64 = icmp ne %struct.TYPE_5__* %63, null
  br i1 %64, label %65, label %378

65:                                               ; preds = %61
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  switch i32 %68, label %193 [
    i32 134, label %69
    i32 132, label %88
    i32 130, label %97
    i32 135, label %120
    i32 133, label %186
  ]

69:                                               ; preds = %65
  %70 = load i64, i64* @fflag, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %69
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @ENOENT, align 8
  %77 = icmp ne i64 %75, %76
  br i1 %77, label %78, label %87

78:                                               ; preds = %72, %69
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 2
  %81 = load i8*, i8** %80, align 8
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = call i32 @strerror(i64 %84)
  %86 = call i32 @warnx(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %81, i32 %85)
  store i32 1, i32* @eval, align 4
  br label %87

87:                                               ; preds = %78, %72
  br label %61

88:                                               ; preds = %65
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 2
  %91 = load i8*, i8** %90, align 8
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = call i32 @strerror(i64 %94)
  %96 = call i32 @errx(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %91, i32 %95)
  br label %97

97:                                               ; preds = %65, %88
  %98 = load i32, i32* %5, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %101, label %100

100:                                              ; preds = %97
  br label %210

101:                                              ; preds = %97
  %102 = load i64, i64* @fflag, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %110

104:                                              ; preds = %101
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @ENOENT, align 8
  %109 = icmp ne i64 %107, %108
  br i1 %109, label %110, label %119

110:                                              ; preds = %104, %101
  %111 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 2
  %113 = load i8*, i8** %112, align 8
  %114 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = call i32 @strerror(i64 %116)
  %118 = call i32 @warnx(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %113, i32 %117)
  store i32 1, i32* @eval, align 4
  br label %119

119:                                              ; preds = %110, %104
  br label %61

120:                                              ; preds = %65
  %121 = load i64, i64* @fflag, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %142, label %123

123:                                              ; preds = %120
  %124 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 2
  %126 = load i8*, i8** %125, align 8
  %127 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 3
  %129 = load i32, i32* %128, align 8
  %130 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 4
  %132 = load %struct.TYPE_6__*, %struct.TYPE_6__** %131, align 8
  %133 = call i32 @check(i8* %126, i32 %129, %struct.TYPE_6__* %132)
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %142, label %135

135:                                              ; preds = %123
  %136 = load i32*, i32** %3, align 8
  %137 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %138 = load i32, i32* @FTS_SKIP, align 4
  %139 = call i32 @fts_set(i32* %136, %struct.TYPE_5__* %137, i32 %138)
  %140 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i32 0, i32 5
  store i32 1, i32* %141, align 8
  br label %185

142:                                              ; preds = %123, %120
  %143 = load i32, i32* @uid, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %184, label %145

145:                                              ; preds = %142
  %146 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %147 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %146, i32 0, i32 4
  %148 = load %struct.TYPE_6__*, %struct.TYPE_6__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* @UF_APPEND, align 4
  %152 = load i32, i32* @UF_IMMUTABLE, align 4
  %153 = or i32 %151, %152
  %154 = and i32 %150, %153
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %184

156:                                              ; preds = %145
  %157 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %158 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %157, i32 0, i32 4
  %159 = load %struct.TYPE_6__*, %struct.TYPE_6__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* @SF_APPEND, align 4
  %163 = load i32, i32* @SF_IMMUTABLE, align 4
  %164 = or i32 %162, %163
  %165 = and i32 %161, %164
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %184, label %167

167:                                              ; preds = %156
  %168 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %169 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %168, i32 0, i32 3
  %170 = load i32, i32* %169, align 8
  %171 = load i32, i32* @UF_APPEND, align 4
  %172 = load i32, i32* @UF_IMMUTABLE, align 4
  %173 = or i32 %171, %172
  %174 = xor i32 %173, -1
  %175 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %176 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %175, i32 0, i32 4
  %177 = load %struct.TYPE_6__*, %struct.TYPE_6__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = and i32 %179, %174
  store i32 %180, i32* %178, align 4
  %181 = call i32 @lchflags(i32 %170, i32 %180)
  %182 = icmp slt i32 %181, 0
  br i1 %182, label %183, label %184

183:                                              ; preds = %167
  br label %373

184:                                              ; preds = %167, %156, %145, %142
  br label %185

185:                                              ; preds = %184, %135
  br label %61

186:                                              ; preds = %65
  %187 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %188 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %187, i32 0, i32 5
  %189 = load i32, i32* %188, align 8
  %190 = icmp eq i32 %189, 1
  br i1 %190, label %191, label %192

191:                                              ; preds = %186
  br label %61

192:                                              ; preds = %186
  br label %210

193:                                              ; preds = %65
  %194 = load i64, i64* @fflag, align 8
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %209, label %196

196:                                              ; preds = %193
  %197 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %198 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %197, i32 0, i32 2
  %199 = load i8*, i8** %198, align 8
  %200 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %201 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %200, i32 0, i32 3
  %202 = load i32, i32* %201, align 8
  %203 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %204 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %203, i32 0, i32 4
  %205 = load %struct.TYPE_6__*, %struct.TYPE_6__** %204, align 8
  %206 = call i32 @check(i8* %199, i32 %202, %struct.TYPE_6__* %205)
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %209, label %208

208:                                              ; preds = %196
  br label %61

209:                                              ; preds = %196, %193
  br label %210

210:                                              ; preds = %209, %192, %100
  store i32 0, i32* %7, align 4
  %211 = load i32, i32* @uid, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %250, label %213

213:                                              ; preds = %210
  %214 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %215 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %214, i32 0, i32 4
  %216 = load %struct.TYPE_6__*, %struct.TYPE_6__** %215, align 8
  %217 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 4
  %219 = load i32, i32* @UF_APPEND, align 4
  %220 = load i32, i32* @UF_IMMUTABLE, align 4
  %221 = or i32 %219, %220
  %222 = and i32 %218, %221
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %250

224:                                              ; preds = %213
  %225 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %226 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %225, i32 0, i32 4
  %227 = load %struct.TYPE_6__*, %struct.TYPE_6__** %226, align 8
  %228 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 4
  %230 = load i32, i32* @SF_APPEND, align 4
  %231 = load i32, i32* @SF_IMMUTABLE, align 4
  %232 = or i32 %230, %231
  %233 = and i32 %229, %232
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %250, label %235

235:                                              ; preds = %224
  %236 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %237 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %236, i32 0, i32 3
  %238 = load i32, i32* %237, align 8
  %239 = load i32, i32* @UF_APPEND, align 4
  %240 = load i32, i32* @UF_IMMUTABLE, align 4
  %241 = or i32 %239, %240
  %242 = xor i32 %241, -1
  %243 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %244 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %243, i32 0, i32 4
  %245 = load %struct.TYPE_6__*, %struct.TYPE_6__** %244, align 8
  %246 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 4
  %248 = and i32 %247, %242
  store i32 %248, i32* %246, align 4
  %249 = call i32 @lchflags(i32 %238, i32 %248)
  store i32 %249, i32* %7, align 4
  br label %250

250:                                              ; preds = %235, %224, %213, %210
  %251 = load i32, i32* %7, align 4
  %252 = icmp eq i32 %251, 0
  br i1 %252, label %253, label %372

253:                                              ; preds = %250
  %254 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %255 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %254, i32 0, i32 0
  %256 = load i32, i32* %255, align 8
  switch i32 %256, label %333 [
    i32 133, label %257
    i32 134, label %257
    i32 128, label %295
    i32 130, label %327
    i32 131, label %332
    i32 129, label %332
  ]

257:                                              ; preds = %253, %253
  %258 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %259 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %258, i32 0, i32 3
  %260 = load i32, i32* %259, align 8
  %261 = call i32 @rmdir(i32 %260)
  store i32 %261, i32* %7, align 4
  %262 = load i32, i32* %7, align 4
  %263 = icmp eq i32 %262, 0
  br i1 %263, label %271, label %264

264:                                              ; preds = %257
  %265 = load i64, i64* @fflag, align 8
  %266 = icmp ne i64 %265, 0
  br i1 %266, label %267, label %294

267:                                              ; preds = %264
  %268 = load i64, i64* @errno, align 8
  %269 = load i64, i64* @ENOENT, align 8
  %270 = icmp eq i64 %268, %269
  br i1 %270, label %271, label %294

271:                                              ; preds = %267, %257
  %272 = load i32, i32* %7, align 4
  %273 = icmp eq i32 %272, 0
  br i1 %273, label %274, label %282

274:                                              ; preds = %271
  %275 = load i32, i32* @vflag, align 4
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %277, label %282

277:                                              ; preds = %274
  %278 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %279 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %278, i32 0, i32 2
  %280 = load i8*, i8** %279, align 8
  %281 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %280)
  br label %282

282:                                              ; preds = %277, %274, %271
  %283 = load i32, i32* %7, align 4
  %284 = icmp eq i32 %283, 0
  br i1 %284, label %285, label %293

285:                                              ; preds = %282
  %286 = load i32, i32* @info, align 4
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %288, label %293

288:                                              ; preds = %285
  store i32 0, i32* @info, align 4
  %289 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %290 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %289, i32 0, i32 2
  %291 = load i8*, i8** %290, align 8
  %292 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %291)
  br label %293

293:                                              ; preds = %288, %285, %282
  br label %61

294:                                              ; preds = %267, %264
  br label %371

295:                                              ; preds = %253
  %296 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %297 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %296, i32 0, i32 3
  %298 = load i32, i32* %297, align 8
  %299 = call i32 @undelete(i32 %298)
  store i32 %299, i32* %7, align 4
  %300 = load i32, i32* %7, align 4
  %301 = icmp eq i32 %300, 0
  br i1 %301, label %302, label %326

302:                                              ; preds = %295
  %303 = load i64, i64* @fflag, align 8
  %304 = icmp ne i64 %303, 0
  br i1 %304, label %305, label %326

305:                                              ; preds = %302
  %306 = load i64, i64* @errno, align 8
  %307 = load i64, i64* @ENOENT, align 8
  %308 = icmp eq i64 %306, %307
  br i1 %308, label %309, label %326

309:                                              ; preds = %305
  %310 = load i32, i32* @vflag, align 4
  %311 = icmp ne i32 %310, 0
  br i1 %311, label %312, label %317

312:                                              ; preds = %309
  %313 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %314 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %313, i32 0, i32 2
  %315 = load i8*, i8** %314, align 8
  %316 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %315)
  br label %317

317:                                              ; preds = %312, %309
  %318 = load i32, i32* @info, align 4
  %319 = icmp ne i32 %318, 0
  br i1 %319, label %320, label %325

320:                                              ; preds = %317
  store i32 0, i32* @info, align 4
  %321 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %322 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %321, i32 0, i32 2
  %323 = load i8*, i8** %322, align 8
  %324 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %323)
  br label %325

325:                                              ; preds = %320, %317
  br label %61

326:                                              ; preds = %305, %302, %295
  br label %371

327:                                              ; preds = %253
  %328 = load i64, i64* @fflag, align 8
  %329 = icmp ne i64 %328, 0
  br i1 %329, label %330, label %331

330:                                              ; preds = %327
  br label %61

331:                                              ; preds = %327
  br label %332

332:                                              ; preds = %253, %253, %331
  br label %333

333:                                              ; preds = %253, %332
  %334 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %335 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %334, i32 0, i32 3
  %336 = load i32, i32* %335, align 8
  %337 = call i32 @unlink(i32 %336)
  store i32 %337, i32* %7, align 4
  %338 = load i32, i32* %7, align 4
  %339 = icmp eq i32 %338, 0
  br i1 %339, label %347, label %340

340:                                              ; preds = %333
  %341 = load i64, i64* @fflag, align 8
  %342 = icmp ne i64 %341, 0
  br i1 %342, label %343, label %370

343:                                              ; preds = %340
  %344 = load i64, i64* @errno, align 8
  %345 = load i64, i64* @ENOENT, align 8
  %346 = icmp eq i64 %344, %345
  br i1 %346, label %347, label %370

347:                                              ; preds = %343, %333
  %348 = load i32, i32* %7, align 4
  %349 = icmp eq i32 %348, 0
  br i1 %349, label %350, label %358

350:                                              ; preds = %347
  %351 = load i32, i32* @vflag, align 4
  %352 = icmp ne i32 %351, 0
  br i1 %352, label %353, label %358

353:                                              ; preds = %350
  %354 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %355 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %354, i32 0, i32 2
  %356 = load i8*, i8** %355, align 8
  %357 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %356)
  br label %358

358:                                              ; preds = %353, %350, %347
  %359 = load i32, i32* %7, align 4
  %360 = icmp eq i32 %359, 0
  br i1 %360, label %361, label %369

361:                                              ; preds = %358
  %362 = load i32, i32* @info, align 4
  %363 = icmp ne i32 %362, 0
  br i1 %363, label %364, label %369

364:                                              ; preds = %361
  store i32 0, i32* @info, align 4
  %365 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %366 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %365, i32 0, i32 2
  %367 = load i8*, i8** %366, align 8
  %368 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %367)
  br label %369

369:                                              ; preds = %364, %361, %358
  br label %61

370:                                              ; preds = %343, %340
  br label %371

371:                                              ; preds = %370, %326, %294
  br label %372

372:                                              ; preds = %371, %250
  br label %373

373:                                              ; preds = %372, %183
  %374 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %375 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %374, i32 0, i32 2
  %376 = load i8*, i8** %375, align 8
  %377 = call i32 @warn(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %376)
  store i32 1, i32* @eval, align 4
  br label %61

378:                                              ; preds = %61
  %379 = load i64, i64* @fflag, align 8
  %380 = icmp ne i64 %379, 0
  br i1 %380, label %386, label %381

381:                                              ; preds = %378
  %382 = load i64, i64* @errno, align 8
  %383 = icmp ne i64 %382, 0
  br i1 %383, label %384, label %386

384:                                              ; preds = %381
  %385 = call i32 @err(i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  br label %386

386:                                              ; preds = %384, %381, %378
  %387 = load i32*, i32** %3, align 8
  %388 = call i32 @fts_close(i32* %387)
  br label %389

389:                                              ; preds = %386, %57
  ret void
}

declare dso_local i32* @fts_open(i8**, i32, i32*) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local %struct.TYPE_5__* @fts_read(i32*) #1

declare dso_local i32 @warnx(i8*, i8*, i32) #1

declare dso_local i32 @strerror(i64) #1

declare dso_local i32 @errx(i32, i8*, i8*, i32) #1

declare dso_local i32 @check(i8*, i32, %struct.TYPE_6__*) #1

declare dso_local i32 @fts_set(i32*, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @lchflags(i32, i32) #1

declare dso_local i32 @rmdir(i32) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @undelete(i32) #1

declare dso_local i32 @unlink(i32) #1

declare dso_local i32 @warn(i8*, i8*) #1

declare dso_local i32 @fts_close(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
