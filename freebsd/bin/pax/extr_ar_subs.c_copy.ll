; ModuleID = '/home/carl/AnghaBench/freebsd/bin/pax/extr_ar_subs.c_copy.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/pax/extr_ar_subs.c_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i8*, i32, i64, i8*, %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i64, i64 }
%struct.stat = type { i64, i64, i32 }

@PAXPATHLEN = common dso_local global i32 0, align 4
@dirptr = common dso_local global i8* null, align 8
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Cannot access destination directory %s\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"Destination is not a directory %s\00", align 1
@iflag = common dso_local global i64 0, align 8
@uflag = common dso_local global i64 0, align 8
@Dflag = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [33 x i8] c"Destination pathname too long %s\00", align 1
@Yflag = common dso_local global i64 0, align 8
@Zflag = common dso_local global i64 0, align 8
@vflag = common dso_local global i64 0, align 8
@listf = common dso_local global i32 0, align 4
@vfpart = common dso_local global i32 0, align 4
@flcnt = common dso_local global i32 0, align 4
@lflag = common dso_local global i64 0, align 8
@PAX_REG = common dso_local global i64 0, align 8
@PAX_CTG = common dso_local global i64 0, align 8
@PAX_HLK = common dso_local global i64 0, align 8
@PAX_HRG = common dso_local global i64 0, align 8
@O_RDONLY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"Unable to open %s to read\00", align 1
@SIG_BLOCK = common dso_local global i32 0, align 4
@s_mask = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @copy() #0 {
  %1 = alloca %struct.TYPE_19__*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.stat, align 8
  %9 = alloca %struct.TYPE_19__, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i32 -1, i32* %7, align 4
  %13 = load i32, i32* @PAXPATHLEN, align 4
  %14 = add nsw i32 %13, 1
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %10, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %11, align 8
  store %struct.TYPE_19__* %9, %struct.TYPE_19__** %1, align 8
  %18 = load i8*, i8** @dirptr, align 8
  %19 = sub i64 %15, 1
  %20 = trunc i64 %19 to i32
  %21 = call i32 @l_strncpy(i8* %17, i8* %18, i32 %20)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8, i8* %17, i64 %23
  store i8* %24, i8** %4, align 8
  %25 = load i8*, i8** %4, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 -1
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp ne i32 %28, 47
  br i1 %29, label %30, label %35

30:                                               ; preds = %0
  %31 = load i8*, i8** %4, align 8
  %32 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %32, i8** %4, align 8
  store i8 47, i8* %31, align 1
  %33 = load i32, i32* %5, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %5, align 4
  br label %35

35:                                               ; preds = %30, %0
  %36 = load i8*, i8** %4, align 8
  store i8 0, i8* %36, align 1
  %37 = load i32, i32* @PAXPATHLEN, align 4
  %38 = load i32, i32* %5, align 4
  %39 = sub nsw i32 %37, %38
  store i32 %39, i32* %6, align 4
  %40 = load i8*, i8** @dirptr, align 8
  %41 = call i64 @stat(i8* %40, %struct.stat* %8)
  %42 = icmp slt i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %35
  %44 = load i32, i32* @errno, align 4
  %45 = load i8*, i8** @dirptr, align 8
  %46 = call i32 @syswarn(i32 1, i32 %44, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i8* %45)
  store i32 1, i32* %12, align 4
  br label %391

47:                                               ; preds = %35
  %48 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @S_ISDIR(i32 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %47
  %53 = load i8*, i8** @dirptr, align 8
  %54 = call i32 @paxwarn(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i8* %53)
  store i32 1, i32* %12, align 4
  br label %391

55:                                               ; preds = %47
  %56 = call i64 (...) @lnk_start()
  %57 = icmp slt i64 %56, 0
  br i1 %57, label %64, label %58

58:                                               ; preds = %55
  %59 = call i64 (...) @ftree_start()
  %60 = icmp slt i64 %59, 0
  br i1 %60, label %64, label %61

61:                                               ; preds = %58
  %62 = call i64 (...) @dir_start()
  %63 = icmp slt i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %61, %58, %55
  store i32 1, i32* %12, align 4
  br label %391

65:                                               ; preds = %61
  %66 = load i64, i64* @iflag, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %65
  %69 = call i64 (...) @name_start()
  %70 = icmp slt i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %68
  store i32 1, i32* %12, align 4
  br label %391

72:                                               ; preds = %68, %65
  %73 = call i32 (...) @cp_start()
  br label %74

74:                                               ; preds = %384, %361, %349, %341, %295, %259, %249, %236, %199, %175, %165, %152, %107, %82, %72
  %75 = load %struct.TYPE_19__*, %struct.TYPE_19__** %1, align 8
  %76 = call i64 @next_file(%struct.TYPE_19__* %75)
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %78, label %385

78:                                               ; preds = %74
  store i32 -1, i32* %7, align 4
  %79 = load %struct.TYPE_19__*, %struct.TYPE_19__** %1, align 8
  %80 = call i64 @sel_chk(%struct.TYPE_19__* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %78
  %83 = call i32 (...) @ftree_notsel()
  br label %74

84:                                               ; preds = %78
  %85 = load i64, i64* @uflag, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %90, label %87

87:                                               ; preds = %84
  %88 = load i64, i64* @Dflag, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %180

90:                                               ; preds = %87, %84
  %91 = load %struct.TYPE_19__*, %struct.TYPE_19__** %1, align 8
  %92 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %91, i32 0, i32 0
  %93 = load i8*, i8** %92, align 8
  %94 = load i8, i8* %93, align 1
  %95 = sext i8 %94 to i32
  %96 = icmp eq i32 %95, 47
  br i1 %96, label %97, label %98

97:                                               ; preds = %90
  store i32 1, i32* %2, align 4
  br label %99

98:                                               ; preds = %90
  store i32 0, i32* %2, align 4
  br label %99

99:                                               ; preds = %98, %97
  %100 = load %struct.TYPE_19__*, %struct.TYPE_19__** %1, align 8
  %101 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* %2, align 4
  %104 = sub nsw i32 %102, %103
  %105 = load i32, i32* %6, align 4
  %106 = icmp sgt i32 %104, %105
  br i1 %106, label %107, label %112

107:                                              ; preds = %99
  %108 = load %struct.TYPE_19__*, %struct.TYPE_19__** %1, align 8
  %109 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %108, i32 0, i32 0
  %110 = load i8*, i8** %109, align 8
  %111 = call i32 @paxwarn(i32 1, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i8* %110)
  br label %74

112:                                              ; preds = %99
  %113 = load i8*, i8** %4, align 8
  %114 = load %struct.TYPE_19__*, %struct.TYPE_19__** %1, align 8
  %115 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %114, i32 0, i32 0
  %116 = load i8*, i8** %115, align 8
  %117 = load i32, i32* %2, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i8, i8* %116, i64 %118
  %120 = load i32, i32* %6, align 4
  %121 = call i32 @strncpy(i8* %113, i8* %119, i32 %120)
  %122 = load i32, i32* @PAXPATHLEN, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i8, i8* %17, i64 %123
  store i8 0, i8* %124, align 1
  %125 = call i64 @lstat(i8* %17, %struct.stat* %8)
  %126 = trunc i64 %125 to i32
  store i32 %126, i32* %2, align 4
  %127 = load i8*, i8** %4, align 8
  store i8 0, i8* %127, align 1
  %128 = load i32, i32* %2, align 4
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %179

130:                                              ; preds = %112
  %131 = load i64, i64* @uflag, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %154

133:                                              ; preds = %130
  %134 = load i64, i64* @Dflag, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %154

136:                                              ; preds = %133
  %137 = load %struct.TYPE_19__*, %struct.TYPE_19__** %1, align 8
  %138 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %137, i32 0, i32 4
  %139 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = icmp sle i64 %140, %142
  br i1 %143, label %144, label %153

144:                                              ; preds = %136
  %145 = load %struct.TYPE_19__*, %struct.TYPE_19__** %1, align 8
  %146 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %145, i32 0, i32 4
  %147 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %146, i32 0, i32 1
  %148 = load i64, i64* %147, align 8
  %149 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 1
  %150 = load i64, i64* %149, align 8
  %151 = icmp sle i64 %148, %150
  br i1 %151, label %152, label %153

152:                                              ; preds = %144
  br label %74

153:                                              ; preds = %144, %136
  br label %178

154:                                              ; preds = %133, %130
  %155 = load i64, i64* @Dflag, align 8
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %167

157:                                              ; preds = %154
  %158 = load %struct.TYPE_19__*, %struct.TYPE_19__** %1, align 8
  %159 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %158, i32 0, i32 4
  %160 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %159, i32 0, i32 1
  %161 = load i64, i64* %160, align 8
  %162 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 1
  %163 = load i64, i64* %162, align 8
  %164 = icmp sle i64 %161, %163
  br i1 %164, label %165, label %166

165:                                              ; preds = %157
  br label %74

166:                                              ; preds = %157
  br label %177

167:                                              ; preds = %154
  %168 = load %struct.TYPE_19__*, %struct.TYPE_19__** %1, align 8
  %169 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %168, i32 0, i32 4
  %170 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = icmp sle i64 %171, %173
  br i1 %174, label %175, label %176

175:                                              ; preds = %167
  br label %74

176:                                              ; preds = %167
  br label %177

177:                                              ; preds = %176, %166
  br label %178

178:                                              ; preds = %177, %153
  br label %179

179:                                              ; preds = %178, %112
  br label %180

180:                                              ; preds = %179, %87
  %181 = load %struct.TYPE_19__*, %struct.TYPE_19__** %1, align 8
  %182 = call i32 @ftree_sel(%struct.TYPE_19__* %181)
  %183 = load %struct.TYPE_19__*, %struct.TYPE_19__** %1, align 8
  %184 = call i64 @chk_lnk(%struct.TYPE_19__* %183)
  %185 = icmp slt i64 %184, 0
  br i1 %185, label %190, label %186

186:                                              ; preds = %180
  %187 = load %struct.TYPE_19__*, %struct.TYPE_19__** %1, align 8
  %188 = call i32 @mod_name(%struct.TYPE_19__* %187)
  store i32 %188, i32* %2, align 4
  %189 = icmp slt i32 %188, 0
  br i1 %189, label %190, label %191

190:                                              ; preds = %186, %180
  br label %385

191:                                              ; preds = %186
  %192 = load i32, i32* %2, align 4
  %193 = icmp sgt i32 %192, 0
  br i1 %193, label %199, label %194

194:                                              ; preds = %191
  %195 = load %struct.TYPE_19__*, %struct.TYPE_19__** %1, align 8
  %196 = load i32, i32* %5, align 4
  %197 = call i64 @set_dest(%struct.TYPE_19__* %195, i8* %17, i32 %196)
  %198 = icmp slt i64 %197, 0
  br i1 %198, label %199, label %202

199:                                              ; preds = %194, %191
  %200 = load %struct.TYPE_19__*, %struct.TYPE_19__** %1, align 8
  %201 = call i32 @purg_lnk(%struct.TYPE_19__* %200)
  br label %74

202:                                              ; preds = %194
  %203 = load i64, i64* @Yflag, align 8
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %208, label %205

205:                                              ; preds = %202
  %206 = load i64, i64* @Zflag, align 8
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %263

208:                                              ; preds = %205, %202
  %209 = load %struct.TYPE_19__*, %struct.TYPE_19__** %1, align 8
  %210 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %209, i32 0, i32 0
  %211 = load i8*, i8** %210, align 8
  %212 = call i64 @lstat(i8* %211, %struct.stat* %8)
  %213 = icmp eq i64 %212, 0
  br i1 %213, label %214, label %263

214:                                              ; preds = %208
  %215 = load i64, i64* @Yflag, align 8
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %238

217:                                              ; preds = %214
  %218 = load i64, i64* @Zflag, align 8
  %219 = icmp ne i64 %218, 0
  br i1 %219, label %220, label %238

220:                                              ; preds = %217
  %221 = load %struct.TYPE_19__*, %struct.TYPE_19__** %1, align 8
  %222 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %221, i32 0, i32 4
  %223 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %222, i32 0, i32 0
  %224 = load i64, i64* %223, align 8
  %225 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 0
  %226 = load i64, i64* %225, align 8
  %227 = icmp sle i64 %224, %226
  br i1 %227, label %228, label %237

228:                                              ; preds = %220
  %229 = load %struct.TYPE_19__*, %struct.TYPE_19__** %1, align 8
  %230 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %229, i32 0, i32 4
  %231 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %230, i32 0, i32 1
  %232 = load i64, i64* %231, align 8
  %233 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 1
  %234 = load i64, i64* %233, align 8
  %235 = icmp sle i64 %232, %234
  br i1 %235, label %236, label %237

236:                                              ; preds = %228
  br label %74

237:                                              ; preds = %228, %220
  br label %262

238:                                              ; preds = %217, %214
  %239 = load i64, i64* @Yflag, align 8
  %240 = icmp ne i64 %239, 0
  br i1 %240, label %241, label %251

241:                                              ; preds = %238
  %242 = load %struct.TYPE_19__*, %struct.TYPE_19__** %1, align 8
  %243 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %242, i32 0, i32 4
  %244 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %243, i32 0, i32 1
  %245 = load i64, i64* %244, align 8
  %246 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 1
  %247 = load i64, i64* %246, align 8
  %248 = icmp sle i64 %245, %247
  br i1 %248, label %249, label %250

249:                                              ; preds = %241
  br label %74

250:                                              ; preds = %241
  br label %261

251:                                              ; preds = %238
  %252 = load %struct.TYPE_19__*, %struct.TYPE_19__** %1, align 8
  %253 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %252, i32 0, i32 4
  %254 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %253, i32 0, i32 0
  %255 = load i64, i64* %254, align 8
  %256 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 0
  %257 = load i64, i64* %256, align 8
  %258 = icmp sle i64 %255, %257
  br i1 %258, label %259, label %260

259:                                              ; preds = %251
  br label %74

260:                                              ; preds = %251
  br label %261

261:                                              ; preds = %260, %250
  br label %262

262:                                              ; preds = %261, %237
  br label %263

263:                                              ; preds = %262, %208, %205
  %264 = load i64, i64* @vflag, align 8
  %265 = icmp ne i64 %264, 0
  br i1 %265, label %266, label %272

266:                                              ; preds = %263
  %267 = load %struct.TYPE_19__*, %struct.TYPE_19__** %1, align 8
  %268 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %267, i32 0, i32 0
  %269 = load i8*, i8** %268, align 8
  %270 = load i32, i32* @listf, align 4
  %271 = call i32 @fputs(i8* %269, i32 %270)
  store i32 1, i32* @vfpart, align 4
  br label %272

272:                                              ; preds = %266, %263
  %273 = load i32, i32* @flcnt, align 4
  %274 = add nsw i32 %273, 1
  store i32 %274, i32* @flcnt, align 4
  %275 = load i64, i64* @lflag, align 8
  %276 = icmp ne i64 %275, 0
  br i1 %276, label %277, label %280

277:                                              ; preds = %272
  %278 = load %struct.TYPE_19__*, %struct.TYPE_19__** %1, align 8
  %279 = call i32 @cross_lnk(%struct.TYPE_19__* %278)
  store i32 %279, i32* %2, align 4
  br label %283

280:                                              ; preds = %272
  %281 = load %struct.TYPE_19__*, %struct.TYPE_19__** %1, align 8
  %282 = call i32 @chk_same(%struct.TYPE_19__* %281)
  store i32 %282, i32* %2, align 4
  br label %283

283:                                              ; preds = %280, %277
  %284 = load i32, i32* %2, align 4
  %285 = icmp sle i32 %284, 0
  br i1 %285, label %286, label %296

286:                                              ; preds = %283
  %287 = load i64, i64* @vflag, align 8
  %288 = icmp ne i64 %287, 0
  br i1 %288, label %289, label %295

289:                                              ; preds = %286
  %290 = load i32, i32* @vfpart, align 4
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %292, label %295

292:                                              ; preds = %289
  %293 = load i32, i32* @listf, align 4
  %294 = call i32 @putc(i8 signext 10, i32 %293)
  store i32 0, i32* @vfpart, align 4
  br label %295

295:                                              ; preds = %292, %289, %286
  br label %74

296:                                              ; preds = %283
  %297 = load %struct.TYPE_19__*, %struct.TYPE_19__** %1, align 8
  %298 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %297, i32 0, i32 2
  %299 = load i64, i64* %298, align 8
  %300 = load i64, i64* @PAX_REG, align 8
  %301 = icmp ne i64 %299, %300
  br i1 %301, label %302, label %342

302:                                              ; preds = %296
  %303 = load %struct.TYPE_19__*, %struct.TYPE_19__** %1, align 8
  %304 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %303, i32 0, i32 2
  %305 = load i64, i64* %304, align 8
  %306 = load i64, i64* @PAX_CTG, align 8
  %307 = icmp ne i64 %305, %306
  br i1 %307, label %308, label %342

308:                                              ; preds = %302
  %309 = load %struct.TYPE_19__*, %struct.TYPE_19__** %1, align 8
  %310 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %309, i32 0, i32 2
  %311 = load i64, i64* %310, align 8
  %312 = load i64, i64* @PAX_HLK, align 8
  %313 = icmp eq i64 %311, %312
  br i1 %313, label %320, label %314

314:                                              ; preds = %308
  %315 = load %struct.TYPE_19__*, %struct.TYPE_19__** %1, align 8
  %316 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %315, i32 0, i32 2
  %317 = load i64, i64* %316, align 8
  %318 = load i64, i64* @PAX_HRG, align 8
  %319 = icmp eq i64 %317, %318
  br i1 %319, label %320, label %323

320:                                              ; preds = %314, %308
  %321 = load %struct.TYPE_19__*, %struct.TYPE_19__** %1, align 8
  %322 = call i32 @lnk_creat(%struct.TYPE_19__* %321)
  store i32 %322, i32* %2, align 4
  br label %326

323:                                              ; preds = %314
  %324 = load %struct.TYPE_19__*, %struct.TYPE_19__** %1, align 8
  %325 = call i32 @node_creat(%struct.TYPE_19__* %324)
  store i32 %325, i32* %2, align 4
  br label %326

326:                                              ; preds = %323, %320
  %327 = load i32, i32* %2, align 4
  %328 = icmp slt i32 %327, 0
  br i1 %328, label %329, label %332

329:                                              ; preds = %326
  %330 = load %struct.TYPE_19__*, %struct.TYPE_19__** %1, align 8
  %331 = call i32 @purg_lnk(%struct.TYPE_19__* %330)
  br label %332

332:                                              ; preds = %329, %326
  %333 = load i64, i64* @vflag, align 8
  %334 = icmp ne i64 %333, 0
  br i1 %334, label %335, label %341

335:                                              ; preds = %332
  %336 = load i32, i32* @vfpart, align 4
  %337 = icmp ne i32 %336, 0
  br i1 %337, label %338, label %341

338:                                              ; preds = %335
  %339 = load i32, i32* @listf, align 4
  %340 = call i32 @putc(i8 signext 10, i32 %339)
  store i32 0, i32* @vfpart, align 4
  br label %341

341:                                              ; preds = %338, %335, %332
  br label %74

342:                                              ; preds = %302, %296
  %343 = load %struct.TYPE_19__*, %struct.TYPE_19__** %1, align 8
  %344 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %343, i32 0, i32 3
  %345 = load i8*, i8** %344, align 8
  %346 = load i32, i32* @O_RDONLY, align 4
  %347 = call i32 @open(i8* %345, i32 %346, i32 0)
  store i32 %347, i32* %7, align 4
  %348 = icmp slt i32 %347, 0
  br i1 %348, label %349, label %357

349:                                              ; preds = %342
  %350 = load i32, i32* @errno, align 4
  %351 = load %struct.TYPE_19__*, %struct.TYPE_19__** %1, align 8
  %352 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %351, i32 0, i32 3
  %353 = load i8*, i8** %352, align 8
  %354 = call i32 @syswarn(i32 1, i32 %350, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8* %353)
  %355 = load %struct.TYPE_19__*, %struct.TYPE_19__** %1, align 8
  %356 = call i32 @purg_lnk(%struct.TYPE_19__* %355)
  br label %74

357:                                              ; preds = %342
  %358 = load %struct.TYPE_19__*, %struct.TYPE_19__** %1, align 8
  %359 = call i32 @file_creat(%struct.TYPE_19__* %358)
  store i32 %359, i32* %3, align 4
  %360 = icmp slt i32 %359, 0
  br i1 %360, label %361, label %366

361:                                              ; preds = %357
  %362 = load %struct.TYPE_19__*, %struct.TYPE_19__** %1, align 8
  %363 = call i32 @rdfile_close(%struct.TYPE_19__* %362, i32* %7)
  %364 = load %struct.TYPE_19__*, %struct.TYPE_19__** %1, align 8
  %365 = call i32 @purg_lnk(%struct.TYPE_19__* %364)
  br label %74

366:                                              ; preds = %357
  %367 = load %struct.TYPE_19__*, %struct.TYPE_19__** %1, align 8
  %368 = load i32, i32* %7, align 4
  %369 = load i32, i32* %3, align 4
  %370 = call i32 @cp_file(%struct.TYPE_19__* %367, i32 %368, i32 %369)
  %371 = load %struct.TYPE_19__*, %struct.TYPE_19__** %1, align 8
  %372 = load i32, i32* %3, align 4
  %373 = call i32 @file_close(%struct.TYPE_19__* %371, i32 %372)
  %374 = load %struct.TYPE_19__*, %struct.TYPE_19__** %1, align 8
  %375 = call i32 @rdfile_close(%struct.TYPE_19__* %374, i32* %7)
  %376 = load i64, i64* @vflag, align 8
  %377 = icmp ne i64 %376, 0
  br i1 %377, label %378, label %384

378:                                              ; preds = %366
  %379 = load i32, i32* @vfpart, align 4
  %380 = icmp ne i32 %379, 0
  br i1 %380, label %381, label %384

381:                                              ; preds = %378
  %382 = load i32, i32* @listf, align 4
  %383 = call i32 @putc(i8 signext 10, i32 %382)
  store i32 0, i32* @vfpart, align 4
  br label %384

384:                                              ; preds = %381, %378, %366
  br label %74

385:                                              ; preds = %190, %74
  %386 = load i32, i32* @SIG_BLOCK, align 4
  %387 = call i32 @sigprocmask(i32 %386, i32* @s_mask, i32* null)
  %388 = call i32 (...) @ar_close()
  %389 = call i32 (...) @proc_dir()
  %390 = call i32 (...) @ftree_chk()
  store i32 0, i32* %12, align 4
  br label %391

391:                                              ; preds = %385, %71, %64, %52, %43
  %392 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %392)
  %393 = load i32, i32* %12, align 4
  switch i32 %393, label %395 [
    i32 0, label %394
    i32 1, label %394
  ]

394:                                              ; preds = %391, %391
  ret void

395:                                              ; preds = %391
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @l_strncpy(i8*, i8*, i32) #2

declare dso_local i64 @stat(i8*, %struct.stat*) #2

declare dso_local i32 @syswarn(i32, i32, i8*, i8*) #2

declare dso_local i32 @S_ISDIR(i32) #2

declare dso_local i32 @paxwarn(i32, i8*, i8*) #2

declare dso_local i64 @lnk_start(...) #2

declare dso_local i64 @ftree_start(...) #2

declare dso_local i64 @dir_start(...) #2

declare dso_local i64 @name_start(...) #2

declare dso_local i32 @cp_start(...) #2

declare dso_local i64 @next_file(%struct.TYPE_19__*) #2

declare dso_local i64 @sel_chk(%struct.TYPE_19__*) #2

declare dso_local i32 @ftree_notsel(...) #2

declare dso_local i32 @strncpy(i8*, i8*, i32) #2

declare dso_local i64 @lstat(i8*, %struct.stat*) #2

declare dso_local i32 @ftree_sel(%struct.TYPE_19__*) #2

declare dso_local i64 @chk_lnk(%struct.TYPE_19__*) #2

declare dso_local i32 @mod_name(%struct.TYPE_19__*) #2

declare dso_local i64 @set_dest(%struct.TYPE_19__*, i8*, i32) #2

declare dso_local i32 @purg_lnk(%struct.TYPE_19__*) #2

declare dso_local i32 @fputs(i8*, i32) #2

declare dso_local i32 @cross_lnk(%struct.TYPE_19__*) #2

declare dso_local i32 @chk_same(%struct.TYPE_19__*) #2

declare dso_local i32 @putc(i8 signext, i32) #2

declare dso_local i32 @lnk_creat(%struct.TYPE_19__*) #2

declare dso_local i32 @node_creat(%struct.TYPE_19__*) #2

declare dso_local i32 @open(i8*, i32, i32) #2

declare dso_local i32 @file_creat(%struct.TYPE_19__*) #2

declare dso_local i32 @rdfile_close(%struct.TYPE_19__*, i32*) #2

declare dso_local i32 @cp_file(%struct.TYPE_19__*, i32, i32) #2

declare dso_local i32 @file_close(%struct.TYPE_19__*, i32) #2

declare dso_local i32 @sigprocmask(i32, i32*, i32*) #2

declare dso_local i32 @ar_close(...) #2

declare dso_local i32 @proc_dir(...) #2

declare dso_local i32 @ftree_chk(...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
