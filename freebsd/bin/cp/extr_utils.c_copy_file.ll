; ModuleID = '/home/carl/AnghaBench/freebsd/bin/cp/extr_utils.c_copy_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/cp/extr_utils.c_copy_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8* }
%struct.TYPE_4__ = type { i8*, %struct.stat* }
%struct.stat = type { i32, i32 }

@copy_file.buf = internal global i8* null, align 8
@copy_file.bufsize = internal global i64 0, align 8
@lflag = common dso_local global i64 0, align 8
@sflag = common dso_local global i64 0, align 8
@O_RDONLY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@nflag = common dso_local global i64 0, align 8
@vflag = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"%s not overwritten\0A\00", align 1
@to = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@iflag = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"overwrite %s? %s\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"(y/n [n]) \00", align 1
@EOF = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [17 x i8] c"not overwritten\0A\00", align 1
@fflag = common dso_local global i64 0, align 8
@O_WRONLY = common dso_local global i32 0, align 4
@O_TRUNC = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@S_ISUID = common dso_local global i32 0, align 4
@S_ISGID = common dso_local global i32 0, align 4
@_SC_PHYS_PAGES = common dso_local global i32 0, align 4
@PHYSPAGES_THRESHOLD = common dso_local global i64 0, align 8
@BUFSIZE_MAX = common dso_local global i32 0, align 4
@MAXPHYS = common dso_local global i32 0, align 4
@BUFSIZE_SMALL = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [18 x i8] c"Not enough memory\00", align 1
@info = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [16 x i8] c"%s -> %s %3d%%\0A\00", align 1
@pflag = common dso_local global i64 0, align 8
@MAP_FAILED = common dso_local global i8* null, align 8
@MAP_SHARED = common dso_local global i32 0, align 4
@PROT_READ = common dso_local global i32 0, align 4
@YESNO = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @copy_file(%struct.TYPE_4__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.stat*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 -1, i32* %15, align 4
  store i32 -1, i32* %12, align 4
  %17 = load i64, i64* @lflag, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %34, label %19

19:                                               ; preds = %2
  %20 = load i64, i64* @sflag, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %34, label %22

22:                                               ; preds = %19
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = load i32, i32* @O_RDONLY, align 4
  %27 = call i32 @open(i8* %25, i32 %26, i32 0)
  store i32 %27, i32* %12, align 4
  %28 = icmp eq i32 %27, -1
  br i1 %28, label %29, label %34

29:                                               ; preds = %22
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = call i32 @warn(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %32)
  store i32 1, i32* %3, align 4
  br label %325

34:                                               ; preds = %22, %19, %2
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %37 = load %struct.stat*, %struct.stat** %36, align 8
  store %struct.stat* %37, %struct.stat** %6, align 8
  %38 = load i32, i32* %5, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %122, label %40

40:                                               ; preds = %34
  %41 = load i64, i64* @nflag, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %40
  %44 = load i64, i64* @vflag, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %43
  %47 = load i8*, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @to, i32 0, i32 0), align 8
  %48 = call i32 @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8* %47)
  br label %49

49:                                               ; preds = %46, %43
  store i32 1, i32* %14, align 4
  br label %317

50:                                               ; preds = %40
  %51 = load i64, i64* @iflag, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %79

53:                                               ; preds = %50
  %54 = load i32, i32* @stderr, align 4
  %55 = load i8*, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @to, i32 0, i32 0), align 8
  %56 = call i32 (i32, i8*, ...) @fprintf(i32 %54, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i8* %55, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %57 = call i32 (...) @getchar()
  store i32 %57, i32* %10, align 4
  store i32 %57, i32* %11, align 4
  br label %58

58:                                               ; preds = %67, %53
  %59 = load i32, i32* %10, align 4
  %60 = icmp ne i32 %59, 10
  br i1 %60, label %61, label %65

61:                                               ; preds = %58
  %62 = load i32, i32* %10, align 4
  %63 = load i32, i32* @EOF, align 4
  %64 = icmp ne i32 %62, %63
  br label %65

65:                                               ; preds = %61, %58
  %66 = phi i1 [ false, %58 ], [ %64, %61 ]
  br i1 %66, label %67, label %69

67:                                               ; preds = %65
  %68 = call i32 (...) @getchar()
  store i32 %68, i32* %10, align 4
  br label %58

69:                                               ; preds = %65
  %70 = load i32, i32* %11, align 4
  %71 = icmp ne i32 %70, 121
  br i1 %71, label %72, label %78

72:                                               ; preds = %69
  %73 = load i32, i32* %11, align 4
  %74 = icmp ne i32 %73, 89
  br i1 %74, label %75, label %78

75:                                               ; preds = %72
  %76 = load i32, i32* @stderr, align 4
  %77 = call i32 (i32, i8*, ...) @fprintf(i32 %76, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  store i32 1, i32* %14, align 4
  br label %317

78:                                               ; preds = %72, %69
  br label %79

79:                                               ; preds = %78, %50
  br label %80

80:                                               ; preds = %79
  %81 = load i64, i64* @fflag, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %108

83:                                               ; preds = %80
  %84 = load i8*, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @to, i32 0, i32 0), align 8
  %85 = call i32 @unlink(i8* %84)
  %86 = load i64, i64* @lflag, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %107, label %88

88:                                               ; preds = %83
  %89 = load i64, i64* @sflag, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %107, label %91

91:                                               ; preds = %88
  %92 = load i8*, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @to, i32 0, i32 0), align 8
  %93 = load i32, i32* @O_WRONLY, align 4
  %94 = load i32, i32* @O_TRUNC, align 4
  %95 = or i32 %93, %94
  %96 = load i32, i32* @O_CREAT, align 4
  %97 = or i32 %95, %96
  %98 = load %struct.stat*, %struct.stat** %6, align 8
  %99 = getelementptr inbounds %struct.stat, %struct.stat* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @S_ISUID, align 4
  %102 = load i32, i32* @S_ISGID, align 4
  %103 = or i32 %101, %102
  %104 = xor i32 %103, -1
  %105 = and i32 %100, %104
  %106 = call i32 @open(i8* %92, i32 %97, i32 %105)
  store i32 %106, i32* %15, align 4
  br label %107

107:                                              ; preds = %91, %88, %83
  br label %121

108:                                              ; preds = %80
  %109 = load i64, i64* @lflag, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %120, label %111

111:                                              ; preds = %108
  %112 = load i64, i64* @sflag, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %120, label %114

114:                                              ; preds = %111
  %115 = load i8*, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @to, i32 0, i32 0), align 8
  %116 = load i32, i32* @O_WRONLY, align 4
  %117 = load i32, i32* @O_TRUNC, align 4
  %118 = or i32 %116, %117
  %119 = call i32 @open(i8* %115, i32 %118, i32 0)
  store i32 %119, i32* %15, align 4
  br label %120

120:                                              ; preds = %114, %111, %108
  br label %121

121:                                              ; preds = %120, %107
  br label %145

122:                                              ; preds = %34
  %123 = load i64, i64* @lflag, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %144, label %125

125:                                              ; preds = %122
  %126 = load i64, i64* @sflag, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %144, label %128

128:                                              ; preds = %125
  %129 = load i8*, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @to, i32 0, i32 0), align 8
  %130 = load i32, i32* @O_WRONLY, align 4
  %131 = load i32, i32* @O_TRUNC, align 4
  %132 = or i32 %130, %131
  %133 = load i32, i32* @O_CREAT, align 4
  %134 = or i32 %132, %133
  %135 = load %struct.stat*, %struct.stat** %6, align 8
  %136 = getelementptr inbounds %struct.stat, %struct.stat* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* @S_ISUID, align 4
  %139 = load i32, i32* @S_ISGID, align 4
  %140 = or i32 %138, %139
  %141 = xor i32 %140, -1
  %142 = and i32 %137, %141
  %143 = call i32 @open(i8* %129, i32 %134, i32 %142)
  store i32 %143, i32* %15, align 4
  br label %144

144:                                              ; preds = %128, %125, %122
  br label %145

145:                                              ; preds = %144, %121
  %146 = load i64, i64* @lflag, align 8
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %157, label %148

148:                                              ; preds = %145
  %149 = load i64, i64* @sflag, align 8
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %157, label %151

151:                                              ; preds = %148
  %152 = load i32, i32* %15, align 4
  %153 = icmp eq i32 %152, -1
  br i1 %153, label %154, label %157

154:                                              ; preds = %151
  %155 = load i8*, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @to, i32 0, i32 0), align 8
  %156 = call i32 @warn(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %155)
  store i32 1, i32* %14, align 4
  br label %317

157:                                              ; preds = %151, %148, %145
  store i32 0, i32* %14, align 4
  %158 = load i64, i64* @lflag, align 8
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %254, label %160

160:                                              ; preds = %157
  %161 = load i64, i64* @sflag, align 8
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %254, label %163

163:                                              ; preds = %160
  %164 = load i8*, i8** @copy_file.buf, align 8
  %165 = icmp eq i8* %164, null
  br i1 %165, label %166, label %186

166:                                              ; preds = %163
  %167 = load i32, i32* @_SC_PHYS_PAGES, align 4
  %168 = call i64 @sysconf(i32 %167)
  %169 = load i64, i64* @PHYSPAGES_THRESHOLD, align 8
  %170 = icmp sgt i64 %168, %169
  br i1 %170, label %171, label %176

171:                                              ; preds = %166
  %172 = load i32, i32* @BUFSIZE_MAX, align 4
  %173 = load i32, i32* @MAXPHYS, align 4
  %174 = mul nsw i32 %173, 8
  %175 = call i64 @MIN(i32 %172, i32 %174)
  store i64 %175, i64* @copy_file.bufsize, align 8
  br label %178

176:                                              ; preds = %166
  %177 = load i64, i64* @BUFSIZE_SMALL, align 8
  store i64 %177, i64* @copy_file.bufsize, align 8
  br label %178

178:                                              ; preds = %176, %171
  %179 = load i64, i64* @copy_file.bufsize, align 8
  %180 = call i8* @malloc(i64 %179)
  store i8* %180, i8** @copy_file.buf, align 8
  %181 = load i8*, i8** @copy_file.buf, align 8
  %182 = icmp eq i8* %181, null
  br i1 %182, label %183, label %185

183:                                              ; preds = %178
  %184 = call i32 @err(i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0))
  br label %185

185:                                              ; preds = %183, %178
  br label %186

186:                                              ; preds = %185, %163
  store i64 0, i64* %9, align 8
  br label %187

187:                                              ; preds = %244, %186
  %188 = load i32, i32* %12, align 4
  %189 = load i8*, i8** @copy_file.buf, align 8
  %190 = load i64, i64* @copy_file.bufsize, align 8
  %191 = call i32 @read(i32 %188, i8* %189, i64 %190)
  store i32 %191, i32* %13, align 4
  %192 = icmp sgt i32 %191, 0
  br i1 %192, label %193, label %245

193:                                              ; preds = %187
  %194 = load i8*, i8** @copy_file.buf, align 8
  store i8* %194, i8** %16, align 8
  %195 = load i32, i32* %13, align 4
  %196 = sext i32 %195 to i64
  store i64 %196, i64* %8, align 8
  br label %197

197:                                              ; preds = %230, %193
  %198 = load i32, i32* %15, align 4
  %199 = load i8*, i8** %16, align 8
  %200 = load i64, i64* %8, align 8
  %201 = call i64 @write(i32 %198, i8* %199, i64 %200)
  store i64 %201, i64* %7, align 8
  %202 = load i64, i64* %7, align 8
  %203 = icmp sle i64 %202, 0
  br i1 %203, label %204, label %205

204:                                              ; preds = %197
  br label %237

205:                                              ; preds = %197
  %206 = load i64, i64* %7, align 8
  %207 = load i64, i64* %9, align 8
  %208 = add nsw i64 %207, %206
  store i64 %208, i64* %9, align 8
  %209 = load i64, i64* @info, align 8
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %211, label %224

211:                                              ; preds = %205
  store i64 0, i64* @info, align 8
  %212 = load i32, i32* @stderr, align 4
  %213 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %214 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %213, i32 0, i32 0
  %215 = load i8*, i8** %214, align 8
  %216 = load i8*, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @to, i32 0, i32 0), align 8
  %217 = load i64, i64* %9, align 8
  %218 = load %struct.stat*, %struct.stat** %6, align 8
  %219 = getelementptr inbounds %struct.stat, %struct.stat* %218, i32 0, i32 1
  %220 = load i32, i32* %219, align 4
  %221 = sext i32 %220 to i64
  %222 = call i32 @cp_pct(i64 %217, i64 %221)
  %223 = call i32 (i32, i8*, ...) @fprintf(i32 %212, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i8* %215, i8* %216, i32 %222)
  br label %224

224:                                              ; preds = %211, %205
  %225 = load i64, i64* %7, align 8
  %226 = load i64, i64* %8, align 8
  %227 = icmp sge i64 %225, %226
  br i1 %227, label %228, label %229

228:                                              ; preds = %224
  br label %237

229:                                              ; preds = %224
  br label %230

230:                                              ; preds = %229
  %231 = load i64, i64* %7, align 8
  %232 = load i8*, i8** %16, align 8
  %233 = getelementptr inbounds i8, i8* %232, i64 %231
  store i8* %233, i8** %16, align 8
  %234 = load i64, i64* %7, align 8
  %235 = load i64, i64* %8, align 8
  %236 = sub i64 %235, %234
  store i64 %236, i64* %8, align 8
  br label %197

237:                                              ; preds = %228, %204
  %238 = load i64, i64* %7, align 8
  %239 = load i64, i64* %8, align 8
  %240 = icmp ne i64 %238, %239
  br i1 %240, label %241, label %244

241:                                              ; preds = %237
  %242 = load i8*, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @to, i32 0, i32 0), align 8
  %243 = call i32 @warn(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %242)
  store i32 1, i32* %14, align 4
  br label %245

244:                                              ; preds = %237
  br label %187

245:                                              ; preds = %241, %187
  %246 = load i32, i32* %13, align 4
  %247 = icmp slt i32 %246, 0
  br i1 %247, label %248, label %253

248:                                              ; preds = %245
  %249 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %250 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %249, i32 0, i32 0
  %251 = load i8*, i8** %250, align 8
  %252 = call i32 @warn(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %251)
  store i32 1, i32* %14, align 4
  br label %253

253:                                              ; preds = %248, %245
  br label %284

254:                                              ; preds = %160, %157
  %255 = load i64, i64* @lflag, align 8
  %256 = icmp ne i64 %255, 0
  br i1 %256, label %257, label %268

257:                                              ; preds = %254
  %258 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %259 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %258, i32 0, i32 0
  %260 = load i8*, i8** %259, align 8
  %261 = load i8*, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @to, i32 0, i32 0), align 8
  %262 = call i64 @link(i8* %260, i8* %261)
  %263 = icmp ne i64 %262, 0
  br i1 %263, label %264, label %267

264:                                              ; preds = %257
  %265 = load i8*, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @to, i32 0, i32 0), align 8
  %266 = call i32 @warn(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %265)
  store i32 1, i32* %14, align 4
  br label %267

267:                                              ; preds = %264, %257
  br label %283

268:                                              ; preds = %254
  %269 = load i64, i64* @sflag, align 8
  %270 = icmp ne i64 %269, 0
  br i1 %270, label %271, label %282

271:                                              ; preds = %268
  %272 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %273 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %272, i32 0, i32 0
  %274 = load i8*, i8** %273, align 8
  %275 = load i8*, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @to, i32 0, i32 0), align 8
  %276 = call i64 @symlink(i8* %274, i8* %275)
  %277 = icmp ne i64 %276, 0
  br i1 %277, label %278, label %281

278:                                              ; preds = %271
  %279 = load i8*, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @to, i32 0, i32 0), align 8
  %280 = call i32 @warn(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %279)
  store i32 1, i32* %14, align 4
  br label %281

281:                                              ; preds = %278, %271
  br label %282

282:                                              ; preds = %281, %268
  br label %283

283:                                              ; preds = %282, %267
  br label %284

284:                                              ; preds = %283, %253
  %285 = load i64, i64* @lflag, align 8
  %286 = icmp ne i64 %285, 0
  br i1 %286, label %316, label %287

287:                                              ; preds = %284
  %288 = load i64, i64* @sflag, align 8
  %289 = icmp ne i64 %288, 0
  br i1 %289, label %316, label %290

290:                                              ; preds = %287
  %291 = load i64, i64* @pflag, align 8
  %292 = icmp ne i64 %291, 0
  br i1 %292, label %293, label %299

293:                                              ; preds = %290
  %294 = load %struct.stat*, %struct.stat** %6, align 8
  %295 = load i32, i32* %15, align 4
  %296 = call i64 @setfile(%struct.stat* %294, i32 %295)
  %297 = icmp ne i64 %296, 0
  br i1 %297, label %298, label %299

298:                                              ; preds = %293
  store i32 1, i32* %14, align 4
  br label %299

299:                                              ; preds = %298, %293, %290
  %300 = load i64, i64* @pflag, align 8
  %301 = icmp ne i64 %300, 0
  br i1 %301, label %302, label %308

302:                                              ; preds = %299
  %303 = load i32, i32* %12, align 4
  %304 = load i32, i32* %15, align 4
  %305 = call i64 @preserve_fd_acls(i32 %303, i32 %304)
  %306 = icmp ne i64 %305, 0
  br i1 %306, label %307, label %308

307:                                              ; preds = %302
  store i32 1, i32* %14, align 4
  br label %308

308:                                              ; preds = %307, %302, %299
  %309 = load i32, i32* %15, align 4
  %310 = call i64 @close(i32 %309)
  %311 = icmp ne i64 %310, 0
  br i1 %311, label %312, label %315

312:                                              ; preds = %308
  %313 = load i8*, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @to, i32 0, i32 0), align 8
  %314 = call i32 @warn(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %313)
  store i32 1, i32* %14, align 4
  br label %315

315:                                              ; preds = %312, %308
  br label %316

316:                                              ; preds = %315, %287, %284
  br label %317

317:                                              ; preds = %316, %154, %75, %49
  %318 = load i32, i32* %12, align 4
  %319 = icmp ne i32 %318, -1
  br i1 %319, label %320, label %323

320:                                              ; preds = %317
  %321 = load i32, i32* %12, align 4
  %322 = call i64 @close(i32 %321)
  br label %323

323:                                              ; preds = %320, %317
  %324 = load i32, i32* %14, align 4
  store i32 %324, i32* %3, align 4
  br label %325

325:                                              ; preds = %323, %29
  %326 = load i32, i32* %3, align 4
  ret i32 %326
}

declare dso_local i32 @open(i8*, i32, i32) #1

declare dso_local i32 @warn(i8*, i8*) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @getchar(...) #1

declare dso_local i32 @unlink(i8*) #1

declare dso_local i64 @sysconf(i32) #1

declare dso_local i64 @MIN(i32, i32) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @read(i32, i8*, i64) #1

declare dso_local i64 @write(i32, i8*, i64) #1

declare dso_local i32 @cp_pct(i64, i64) #1

declare dso_local i64 @link(i8*, i8*) #1

declare dso_local i64 @symlink(i8*, i8*) #1

declare dso_local i64 @setfile(%struct.stat*, i32) #1

declare dso_local i64 @preserve_fd_acls(i32, i32) #1

declare dso_local i64 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
