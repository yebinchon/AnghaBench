; ModuleID = '/home/carl/AnghaBench/freebsd/bin/pax/extr_ar_subs.c_extract.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/pax/extr_ar_subs.c_extract.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i64 (...)*, i64 (...)*, i32 (%struct.TYPE_20__*, i32, i64*)*, i32 (...)* }
%struct.TYPE_20__ = type { i64, %struct.TYPE_19__*, i64, i64, i32, %struct.TYPE_18__ }
%struct.TYPE_19__ = type { i32* }
%struct.TYPE_18__ = type { i64, i64 }
%struct.stat = type { i64, i64 }

@frmt = common dso_local global %struct.TYPE_17__* null, align 8
@iflag = common dso_local global i64 0, align 8
@uflag = common dso_local global i64 0, align 8
@Dflag = common dso_local global i64 0, align 8
@Yflag = common dso_local global i64 0, align 8
@Zflag = common dso_local global i64 0, align 8
@vflag = common dso_local global i32 0, align 4
@listf = common dso_local global i32 0, align 4
@vfpart = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Cannot chdir to %s\00", align 1
@PAX_REG = common dso_local global i64 0, align 8
@PAX_CTG = common dso_local global i64 0, align 8
@PAX_HLK = common dso_local global i64 0, align 8
@PAX_HRG = common dso_local global i64 0, align 8
@cwdfd = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Can't fchdir to starting directory\00", align 1
@SIG_BLOCK = common dso_local global i32 0, align 4
@s_mask = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @extract() #0 {
  %1 = alloca %struct.TYPE_20__*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_20__, align 8
  %5 = alloca %struct.stat, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_20__* %4, %struct.TYPE_20__** %1, align 8
  %8 = call i64 (...) @get_arc()
  %9 = icmp slt i64 %8, 0
  br i1 %9, label %25, label %10

10:                                               ; preds = %0
  %11 = load %struct.TYPE_17__*, %struct.TYPE_17__** @frmt, align 8
  %12 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %11, i32 0, i32 0
  %13 = load i64 (...)*, i64 (...)** %12, align 8
  %14 = call i64 (...) %13()
  %15 = icmp slt i64 %14, 0
  br i1 %15, label %25, label %16

16:                                               ; preds = %10
  %17 = load %struct.TYPE_17__*, %struct.TYPE_17__** @frmt, align 8
  %18 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %17, i32 0, i32 1
  %19 = load i64 (...)*, i64 (...)** %18, align 8
  %20 = call i64 (...) %19()
  %21 = icmp slt i64 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %16
  %23 = call i64 (...) @dir_start()
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %22, %16, %10, %0
  br label %428

26:                                               ; preds = %22
  %27 = load i64, i64* @iflag, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %26
  %30 = call i64 (...) @name_start()
  %31 = icmp slt i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  br label %428

33:                                               ; preds = %29, %26
  %34 = call i32 @time(i32* null)
  store i32 %34, i32* %7, align 4
  br label %35

35:                                               ; preds = %417, %358, %353, %241, %223, %202, %157, %133, %115, %94, %51, %33
  %36 = load %struct.TYPE_20__*, %struct.TYPE_20__** %1, align 8
  %37 = call i64 @next_head(%struct.TYPE_20__* %36)
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %418

39:                                               ; preds = %35
  %40 = load %struct.TYPE_20__*, %struct.TYPE_20__** %1, align 8
  %41 = call i32 @pat_match(%struct.TYPE_20__* %40)
  store i32 %41, i32* %2, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  br label %418

44:                                               ; preds = %39
  %45 = load i32, i32* %2, align 4
  %46 = icmp sgt i32 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %44
  %48 = load %struct.TYPE_20__*, %struct.TYPE_20__** %1, align 8
  %49 = call i64 @sel_chk(%struct.TYPE_20__* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %60

51:                                               ; preds = %47, %44
  %52 = load %struct.TYPE_20__*, %struct.TYPE_20__** %1, align 8
  %53 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %52, i32 0, i32 3
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.TYPE_20__*, %struct.TYPE_20__** %1, align 8
  %56 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = add nsw i64 %54, %57
  %59 = call i32 @rd_skip(i64 %58)
  br label %35

60:                                               ; preds = %47
  %61 = load i64, i64* @uflag, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %60
  %64 = load i64, i64* @Dflag, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %145

66:                                               ; preds = %63, %60
  %67 = load %struct.TYPE_20__*, %struct.TYPE_20__** %1, align 8
  %68 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 8
  %70 = call i64 @lstat(i32 %69, %struct.stat* %5)
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %72, label %145

72:                                               ; preds = %66
  %73 = load i64, i64* @uflag, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %104

75:                                               ; preds = %72
  %76 = load i64, i64* @Dflag, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %104

78:                                               ; preds = %75
  %79 = load %struct.TYPE_20__*, %struct.TYPE_20__** %1, align 8
  %80 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %79, i32 0, i32 5
  %81 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = getelementptr inbounds %struct.stat, %struct.stat* %5, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = icmp sle i64 %82, %84
  br i1 %85, label %86, label %103

86:                                               ; preds = %78
  %87 = load %struct.TYPE_20__*, %struct.TYPE_20__** %1, align 8
  %88 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %87, i32 0, i32 5
  %89 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = getelementptr inbounds %struct.stat, %struct.stat* %5, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = icmp sle i64 %90, %92
  br i1 %93, label %94, label %103

94:                                               ; preds = %86
  %95 = load %struct.TYPE_20__*, %struct.TYPE_20__** %1, align 8
  %96 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %95, i32 0, i32 3
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.TYPE_20__*, %struct.TYPE_20__** %1, align 8
  %99 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %98, i32 0, i32 2
  %100 = load i64, i64* %99, align 8
  %101 = add nsw i64 %97, %100
  %102 = call i32 @rd_skip(i64 %101)
  br label %35

103:                                              ; preds = %86, %78
  br label %144

104:                                              ; preds = %75, %72
  %105 = load i64, i64* @Dflag, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %125

107:                                              ; preds = %104
  %108 = load %struct.TYPE_20__*, %struct.TYPE_20__** %1, align 8
  %109 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %108, i32 0, i32 5
  %110 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = getelementptr inbounds %struct.stat, %struct.stat* %5, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = icmp sle i64 %111, %113
  br i1 %114, label %115, label %124

115:                                              ; preds = %107
  %116 = load %struct.TYPE_20__*, %struct.TYPE_20__** %1, align 8
  %117 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %116, i32 0, i32 3
  %118 = load i64, i64* %117, align 8
  %119 = load %struct.TYPE_20__*, %struct.TYPE_20__** %1, align 8
  %120 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %119, i32 0, i32 2
  %121 = load i64, i64* %120, align 8
  %122 = add nsw i64 %118, %121
  %123 = call i32 @rd_skip(i64 %122)
  br label %35

124:                                              ; preds = %107
  br label %143

125:                                              ; preds = %104
  %126 = load %struct.TYPE_20__*, %struct.TYPE_20__** %1, align 8
  %127 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %126, i32 0, i32 5
  %128 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = getelementptr inbounds %struct.stat, %struct.stat* %5, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = icmp sle i64 %129, %131
  br i1 %132, label %133, label %142

133:                                              ; preds = %125
  %134 = load %struct.TYPE_20__*, %struct.TYPE_20__** %1, align 8
  %135 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %134, i32 0, i32 3
  %136 = load i64, i64* %135, align 8
  %137 = load %struct.TYPE_20__*, %struct.TYPE_20__** %1, align 8
  %138 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %137, i32 0, i32 2
  %139 = load i64, i64* %138, align 8
  %140 = add nsw i64 %136, %139
  %141 = call i32 @rd_skip(i64 %140)
  br label %35

142:                                              ; preds = %125
  br label %143

143:                                              ; preds = %142, %124
  br label %144

144:                                              ; preds = %143, %103
  br label %145

145:                                              ; preds = %144, %66, %63
  %146 = load %struct.TYPE_20__*, %struct.TYPE_20__** %1, align 8
  %147 = call i64 @pat_sel(%struct.TYPE_20__* %146)
  %148 = icmp slt i64 %147, 0
  br i1 %148, label %153, label %149

149:                                              ; preds = %145
  %150 = load %struct.TYPE_20__*, %struct.TYPE_20__** %1, align 8
  %151 = call i32 @mod_name(%struct.TYPE_20__* %150)
  store i32 %151, i32* %2, align 4
  %152 = icmp slt i32 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %149, %145
  br label %418

154:                                              ; preds = %149
  %155 = load i32, i32* %2, align 4
  %156 = icmp sgt i32 %155, 0
  br i1 %156, label %157, label %168

157:                                              ; preds = %154
  %158 = load %struct.TYPE_20__*, %struct.TYPE_20__** %1, align 8
  %159 = call i32 @purg_lnk(%struct.TYPE_20__* %158)
  %160 = load %struct.TYPE_20__*, %struct.TYPE_20__** %1, align 8
  %161 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %160, i32 0, i32 3
  %162 = load i64, i64* %161, align 8
  %163 = load %struct.TYPE_20__*, %struct.TYPE_20__** %1, align 8
  %164 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %163, i32 0, i32 2
  %165 = load i64, i64* %164, align 8
  %166 = add nsw i64 %162, %165
  %167 = call i32 @rd_skip(i64 %166)
  br label %35

168:                                              ; preds = %154
  %169 = load i64, i64* @Yflag, align 8
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %174, label %171

171:                                              ; preds = %168
  %172 = load i64, i64* @Zflag, align 8
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %253

174:                                              ; preds = %171, %168
  %175 = load %struct.TYPE_20__*, %struct.TYPE_20__** %1, align 8
  %176 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %175, i32 0, i32 4
  %177 = load i32, i32* %176, align 8
  %178 = call i64 @lstat(i32 %177, %struct.stat* %5)
  %179 = icmp eq i64 %178, 0
  br i1 %179, label %180, label %253

180:                                              ; preds = %174
  %181 = load i64, i64* @Yflag, align 8
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %212

183:                                              ; preds = %180
  %184 = load i64, i64* @Zflag, align 8
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %212

186:                                              ; preds = %183
  %187 = load %struct.TYPE_20__*, %struct.TYPE_20__** %1, align 8
  %188 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %187, i32 0, i32 5
  %189 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %188, i32 0, i32 0
  %190 = load i64, i64* %189, align 8
  %191 = getelementptr inbounds %struct.stat, %struct.stat* %5, i32 0, i32 0
  %192 = load i64, i64* %191, align 8
  %193 = icmp sle i64 %190, %192
  br i1 %193, label %194, label %211

194:                                              ; preds = %186
  %195 = load %struct.TYPE_20__*, %struct.TYPE_20__** %1, align 8
  %196 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %195, i32 0, i32 5
  %197 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %196, i32 0, i32 1
  %198 = load i64, i64* %197, align 8
  %199 = getelementptr inbounds %struct.stat, %struct.stat* %5, i32 0, i32 1
  %200 = load i64, i64* %199, align 8
  %201 = icmp sle i64 %198, %200
  br i1 %201, label %202, label %211

202:                                              ; preds = %194
  %203 = load %struct.TYPE_20__*, %struct.TYPE_20__** %1, align 8
  %204 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %203, i32 0, i32 3
  %205 = load i64, i64* %204, align 8
  %206 = load %struct.TYPE_20__*, %struct.TYPE_20__** %1, align 8
  %207 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %206, i32 0, i32 2
  %208 = load i64, i64* %207, align 8
  %209 = add nsw i64 %205, %208
  %210 = call i32 @rd_skip(i64 %209)
  br label %35

211:                                              ; preds = %194, %186
  br label %252

212:                                              ; preds = %183, %180
  %213 = load i64, i64* @Yflag, align 8
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %233

215:                                              ; preds = %212
  %216 = load %struct.TYPE_20__*, %struct.TYPE_20__** %1, align 8
  %217 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %216, i32 0, i32 5
  %218 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %217, i32 0, i32 1
  %219 = load i64, i64* %218, align 8
  %220 = getelementptr inbounds %struct.stat, %struct.stat* %5, i32 0, i32 1
  %221 = load i64, i64* %220, align 8
  %222 = icmp sle i64 %219, %221
  br i1 %222, label %223, label %232

223:                                              ; preds = %215
  %224 = load %struct.TYPE_20__*, %struct.TYPE_20__** %1, align 8
  %225 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %224, i32 0, i32 3
  %226 = load i64, i64* %225, align 8
  %227 = load %struct.TYPE_20__*, %struct.TYPE_20__** %1, align 8
  %228 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %227, i32 0, i32 2
  %229 = load i64, i64* %228, align 8
  %230 = add nsw i64 %226, %229
  %231 = call i32 @rd_skip(i64 %230)
  br label %35

232:                                              ; preds = %215
  br label %251

233:                                              ; preds = %212
  %234 = load %struct.TYPE_20__*, %struct.TYPE_20__** %1, align 8
  %235 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %234, i32 0, i32 5
  %236 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %235, i32 0, i32 0
  %237 = load i64, i64* %236, align 8
  %238 = getelementptr inbounds %struct.stat, %struct.stat* %5, i32 0, i32 0
  %239 = load i64, i64* %238, align 8
  %240 = icmp sle i64 %237, %239
  br i1 %240, label %241, label %250

241:                                              ; preds = %233
  %242 = load %struct.TYPE_20__*, %struct.TYPE_20__** %1, align 8
  %243 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %242, i32 0, i32 3
  %244 = load i64, i64* %243, align 8
  %245 = load %struct.TYPE_20__*, %struct.TYPE_20__** %1, align 8
  %246 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %245, i32 0, i32 2
  %247 = load i64, i64* %246, align 8
  %248 = add nsw i64 %244, %247
  %249 = call i32 @rd_skip(i64 %248)
  br label %35

250:                                              ; preds = %233
  br label %251

251:                                              ; preds = %250, %232
  br label %252

252:                                              ; preds = %251, %211
  br label %253

253:                                              ; preds = %252, %174, %171
  %254 = load i32, i32* @vflag, align 4
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %256, label %271

256:                                              ; preds = %253
  %257 = load i32, i32* @vflag, align 4
  %258 = icmp sgt i32 %257, 1
  br i1 %258, label %259, label %264

259:                                              ; preds = %256
  %260 = load %struct.TYPE_20__*, %struct.TYPE_20__** %1, align 8
  %261 = load i32, i32* %7, align 4
  %262 = load i32, i32* @listf, align 4
  %263 = call i32 @ls_list(%struct.TYPE_20__* %260, i32 %261, i32 %262)
  br label %270

264:                                              ; preds = %256
  %265 = load %struct.TYPE_20__*, %struct.TYPE_20__** %1, align 8
  %266 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %265, i32 0, i32 4
  %267 = load i32, i32* %266, align 8
  %268 = load i32, i32* @listf, align 4
  %269 = call i32 @fputs(i32 %267, i32 %268)
  store i32 1, i32* @vfpart, align 4
  br label %270

270:                                              ; preds = %264, %259
  br label %271

271:                                              ; preds = %270, %253
  %272 = load %struct.TYPE_20__*, %struct.TYPE_20__** %1, align 8
  %273 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %272, i32 0, i32 1
  %274 = load %struct.TYPE_19__*, %struct.TYPE_19__** %273, align 8
  %275 = icmp ne %struct.TYPE_19__* %274, null
  br i1 %275, label %276, label %300

276:                                              ; preds = %271
  %277 = load %struct.TYPE_20__*, %struct.TYPE_20__** %1, align 8
  %278 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %277, i32 0, i32 1
  %279 = load %struct.TYPE_19__*, %struct.TYPE_19__** %278, align 8
  %280 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %279, i32 0, i32 0
  %281 = load i32*, i32** %280, align 8
  %282 = icmp ne i32* %281, null
  br i1 %282, label %283, label %300

283:                                              ; preds = %276
  %284 = load %struct.TYPE_20__*, %struct.TYPE_20__** %1, align 8
  %285 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %284, i32 0, i32 1
  %286 = load %struct.TYPE_19__*, %struct.TYPE_19__** %285, align 8
  %287 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %286, i32 0, i32 0
  %288 = load i32*, i32** %287, align 8
  %289 = call i64 @chdir(i32* %288)
  %290 = icmp ne i64 %289, 0
  br i1 %290, label %291, label %299

291:                                              ; preds = %283
  %292 = load i32, i32* @errno, align 4
  %293 = load %struct.TYPE_20__*, %struct.TYPE_20__** %1, align 8
  %294 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %293, i32 0, i32 1
  %295 = load %struct.TYPE_19__*, %struct.TYPE_19__** %294, align 8
  %296 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %295, i32 0, i32 0
  %297 = load i32*, i32** %296, align 8
  %298 = call i32 (i32, i32, i8*, ...) @syswarn(i32 1, i32 %292, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32* %297)
  br label %299

299:                                              ; preds = %291, %283
  br label %300

300:                                              ; preds = %299, %276, %271
  %301 = load %struct.TYPE_20__*, %struct.TYPE_20__** %1, align 8
  %302 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %301, i32 0, i32 0
  %303 = load i64, i64* %302, align 8
  %304 = load i64, i64* @PAX_REG, align 8
  %305 = icmp ne i64 %303, %304
  br i1 %305, label %306, label %354

306:                                              ; preds = %300
  %307 = load %struct.TYPE_20__*, %struct.TYPE_20__** %1, align 8
  %308 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %307, i32 0, i32 0
  %309 = load i64, i64* %308, align 8
  %310 = load i64, i64* @PAX_CTG, align 8
  %311 = icmp ne i64 %309, %310
  br i1 %311, label %312, label %354

312:                                              ; preds = %306
  %313 = load %struct.TYPE_20__*, %struct.TYPE_20__** %1, align 8
  %314 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %313, i32 0, i32 0
  %315 = load i64, i64* %314, align 8
  %316 = load i64, i64* @PAX_HLK, align 8
  %317 = icmp eq i64 %315, %316
  br i1 %317, label %324, label %318

318:                                              ; preds = %312
  %319 = load %struct.TYPE_20__*, %struct.TYPE_20__** %1, align 8
  %320 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %319, i32 0, i32 0
  %321 = load i64, i64* %320, align 8
  %322 = load i64, i64* @PAX_HRG, align 8
  %323 = icmp eq i64 %321, %322
  br i1 %323, label %324, label %327

324:                                              ; preds = %318, %312
  %325 = load %struct.TYPE_20__*, %struct.TYPE_20__** %1, align 8
  %326 = call i32 @lnk_creat(%struct.TYPE_20__* %325)
  store i32 %326, i32* %2, align 4
  br label %330

327:                                              ; preds = %318
  %328 = load %struct.TYPE_20__*, %struct.TYPE_20__** %1, align 8
  %329 = call i32 @node_creat(%struct.TYPE_20__* %328)
  store i32 %329, i32* %2, align 4
  br label %330

330:                                              ; preds = %327, %324
  %331 = load %struct.TYPE_20__*, %struct.TYPE_20__** %1, align 8
  %332 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %331, i32 0, i32 3
  %333 = load i64, i64* %332, align 8
  %334 = load %struct.TYPE_20__*, %struct.TYPE_20__** %1, align 8
  %335 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %334, i32 0, i32 2
  %336 = load i64, i64* %335, align 8
  %337 = add nsw i64 %333, %336
  %338 = call i32 @rd_skip(i64 %337)
  %339 = load i32, i32* %2, align 4
  %340 = icmp slt i32 %339, 0
  br i1 %340, label %341, label %344

341:                                              ; preds = %330
  %342 = load %struct.TYPE_20__*, %struct.TYPE_20__** %1, align 8
  %343 = call i32 @purg_lnk(%struct.TYPE_20__* %342)
  br label %344

344:                                              ; preds = %341, %330
  %345 = load i32, i32* @vflag, align 4
  %346 = icmp ne i32 %345, 0
  br i1 %346, label %347, label %353

347:                                              ; preds = %344
  %348 = load i32, i32* @vfpart, align 4
  %349 = icmp ne i32 %348, 0
  br i1 %349, label %350, label %353

350:                                              ; preds = %347
  %351 = load i32, i32* @listf, align 4
  %352 = call i32 @putc(i8 signext 10, i32 %351)
  store i32 0, i32* @vfpart, align 4
  br label %353

353:                                              ; preds = %350, %347, %344
  br label %35

354:                                              ; preds = %306, %300
  %355 = load %struct.TYPE_20__*, %struct.TYPE_20__** %1, align 8
  %356 = call i32 @file_creat(%struct.TYPE_20__* %355)
  store i32 %356, i32* %6, align 4
  %357 = icmp slt i32 %356, 0
  br i1 %357, label %358, label %369

358:                                              ; preds = %354
  %359 = load %struct.TYPE_20__*, %struct.TYPE_20__** %1, align 8
  %360 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %359, i32 0, i32 3
  %361 = load i64, i64* %360, align 8
  %362 = load %struct.TYPE_20__*, %struct.TYPE_20__** %1, align 8
  %363 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %362, i32 0, i32 2
  %364 = load i64, i64* %363, align 8
  %365 = add nsw i64 %361, %364
  %366 = call i32 @rd_skip(i64 %365)
  %367 = load %struct.TYPE_20__*, %struct.TYPE_20__** %1, align 8
  %368 = call i32 @purg_lnk(%struct.TYPE_20__* %367)
  br label %35

369:                                              ; preds = %354
  %370 = load %struct.TYPE_17__*, %struct.TYPE_17__** @frmt, align 8
  %371 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %370, i32 0, i32 2
  %372 = load i32 (%struct.TYPE_20__*, i32, i64*)*, i32 (%struct.TYPE_20__*, i32, i64*)** %371, align 8
  %373 = load %struct.TYPE_20__*, %struct.TYPE_20__** %1, align 8
  %374 = load i32, i32* %6, align 4
  %375 = call i32 %372(%struct.TYPE_20__* %373, i32 %374, i64* %3)
  store i32 %375, i32* %2, align 4
  %376 = load %struct.TYPE_20__*, %struct.TYPE_20__** %1, align 8
  %377 = load i32, i32* %6, align 4
  %378 = call i32 @file_close(%struct.TYPE_20__* %376, i32 %377)
  %379 = load i32, i32* @vflag, align 4
  %380 = icmp ne i32 %379, 0
  br i1 %380, label %381, label %387

381:                                              ; preds = %369
  %382 = load i32, i32* @vfpart, align 4
  %383 = icmp ne i32 %382, 0
  br i1 %383, label %384, label %387

384:                                              ; preds = %381
  %385 = load i32, i32* @listf, align 4
  %386 = call i32 @putc(i8 signext 10, i32 %385)
  store i32 0, i32* @vfpart, align 4
  br label %387

387:                                              ; preds = %384, %381, %369
  %388 = load i32, i32* %2, align 4
  %389 = icmp ne i32 %388, 0
  br i1 %389, label %397, label %390

390:                                              ; preds = %387
  %391 = load i64, i64* %3, align 8
  %392 = load %struct.TYPE_20__*, %struct.TYPE_20__** %1, align 8
  %393 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %392, i32 0, i32 2
  %394 = load i64, i64* %393, align 8
  %395 = add nsw i64 %391, %394
  %396 = call i32 @rd_skip(i64 %395)
  br label %397

397:                                              ; preds = %390, %387
  %398 = load %struct.TYPE_20__*, %struct.TYPE_20__** %1, align 8
  %399 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %398, i32 0, i32 1
  %400 = load %struct.TYPE_19__*, %struct.TYPE_19__** %399, align 8
  %401 = icmp ne %struct.TYPE_19__* %400, null
  br i1 %401, label %402, label %417

402:                                              ; preds = %397
  %403 = load %struct.TYPE_20__*, %struct.TYPE_20__** %1, align 8
  %404 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %403, i32 0, i32 1
  %405 = load %struct.TYPE_19__*, %struct.TYPE_19__** %404, align 8
  %406 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %405, i32 0, i32 0
  %407 = load i32*, i32** %406, align 8
  %408 = icmp ne i32* %407, null
  br i1 %408, label %409, label %417

409:                                              ; preds = %402
  %410 = load i32, i32* @cwdfd, align 4
  %411 = call i64 @fchdir(i32 %410)
  %412 = icmp ne i64 %411, 0
  br i1 %412, label %413, label %416

413:                                              ; preds = %409
  %414 = load i32, i32* @errno, align 4
  %415 = call i32 (i32, i32, i8*, ...) @syswarn(i32 1, i32 %414, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %416

416:                                              ; preds = %413, %409
  br label %417

417:                                              ; preds = %416, %402, %397
  br label %35

418:                                              ; preds = %153, %43, %35
  %419 = load %struct.TYPE_17__*, %struct.TYPE_17__** @frmt, align 8
  %420 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %419, i32 0, i32 3
  %421 = load i32 (...)*, i32 (...)** %420, align 8
  %422 = call i32 (...) %421()
  %423 = load i32, i32* @SIG_BLOCK, align 4
  %424 = call i32 @sigprocmask(i32 %423, i32* @s_mask, i32* null)
  %425 = call i32 (...) @ar_close()
  %426 = call i32 (...) @proc_dir()
  %427 = call i32 (...) @pat_chk()
  br label %428

428:                                              ; preds = %418, %32, %25
  ret void
}

declare dso_local i64 @get_arc(...) #1

declare dso_local i64 @dir_start(...) #1

declare dso_local i64 @name_start(...) #1

declare dso_local i32 @time(i32*) #1

declare dso_local i64 @next_head(%struct.TYPE_20__*) #1

declare dso_local i32 @pat_match(%struct.TYPE_20__*) #1

declare dso_local i64 @sel_chk(%struct.TYPE_20__*) #1

declare dso_local i32 @rd_skip(i64) #1

declare dso_local i64 @lstat(i32, %struct.stat*) #1

declare dso_local i64 @pat_sel(%struct.TYPE_20__*) #1

declare dso_local i32 @mod_name(%struct.TYPE_20__*) #1

declare dso_local i32 @purg_lnk(%struct.TYPE_20__*) #1

declare dso_local i32 @ls_list(%struct.TYPE_20__*, i32, i32) #1

declare dso_local i32 @fputs(i32, i32) #1

declare dso_local i64 @chdir(i32*) #1

declare dso_local i32 @syswarn(i32, i32, i8*, ...) #1

declare dso_local i32 @lnk_creat(%struct.TYPE_20__*) #1

declare dso_local i32 @node_creat(%struct.TYPE_20__*) #1

declare dso_local i32 @putc(i8 signext, i32) #1

declare dso_local i32 @file_creat(%struct.TYPE_20__*) #1

declare dso_local i32 @file_close(%struct.TYPE_20__*, i32) #1

declare dso_local i64 @fchdir(i32) #1

declare dso_local i32 @sigprocmask(i32, i32*, i32*) #1

declare dso_local i32 @ar_close(...) #1

declare dso_local i32 @proc_dir(...) #1

declare dso_local i32 @pat_chk(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
