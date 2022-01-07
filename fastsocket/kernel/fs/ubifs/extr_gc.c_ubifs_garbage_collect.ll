; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_gc.c_ubifs_garbage_collect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_gc.c_ubifs_garbage_collect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32, i32, i32, i32, i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.ubifs_wbuf }
%struct.ubifs_wbuf = type { i32, i32, i32, i32, i32 }
%struct.ubifs_lprops = type { i32, i64, i64, i32 }

@GCHD = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i32 0, align 4
@EROFS = common dso_local global i32 0, align 4
@SOFT_LEBS_LIMIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"soft limit, some index LEBs GC'ed, -EAGAIN\00", align 1
@HARD_LEBS_LIMIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"hard limit, -ENOSPC\00", align 1
@ENOSPC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"no more dirty LEBs\00", align 1
@.str.3 = private unnamed_addr constant [56 x i8] c"found LEB %d: free %d, dirty %d, sum %d (min. space %d)\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"LEB %d is free, return it\00", align 1
@LPROPS_INDEX = common dso_local global i32 0, align 4
@LEB_FREED = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [21 x i8] c"LEB %d freed, return\00", align 1
@LEB_FREED_IDX = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [32 x i8] c"indexing LEB %d freed, continue\00", align 1
@LEB_RETAINED = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [32 x i8] c"LEB %d retained, freed %d bytes\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"did not make progress\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"try again\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"set min. space to %d\00", align 1
@.str.11 = private unnamed_addr constant [41 x i8] c"no space, some index LEBs GC'ed, -EAGAIN\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ubifs_garbage_collect(%struct.ubifs_info* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ubifs_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ubifs_lprops, align 8
  %11 = alloca %struct.ubifs_wbuf*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ubifs_info* %0, %struct.ubifs_info** %4, align 8
  store i32 %1, i32* %5, align 4
  %14 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %15 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %9, align 4
  %17 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %18 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %17, i32 0, i32 6
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = load i64, i64* @GCHD, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  store %struct.ubifs_wbuf* %22, %struct.ubifs_wbuf** %11, align 8
  %23 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %24 = call i32 @ubifs_assert_cmt_locked(%struct.ubifs_info* %23)
  %25 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %26 = call i64 @ubifs_gc_should_commit(%struct.ubifs_info* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %2
  %29 = load i32, i32* @EAGAIN, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %380

31:                                               ; preds = %2
  %32 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %11, align 8
  %33 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %32, i32 0, i32 3
  %34 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %11, align 8
  %35 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @mutex_lock_nested(i32* %33, i32 %36)
  %38 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %39 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %38, i32 0, i32 5
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %31
  %43 = load i32, i32* @EROFS, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %8, align 4
  br label %344

45:                                               ; preds = %31
  %46 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %11, align 8
  %47 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 0
  %50 = xor i1 %49, true
  %51 = zext i1 %50 to i32
  %52 = call i32 @ubifs_assert(i32 %51)
  store i32 0, i32* %6, align 4
  br label %53

53:                                               ; preds = %308, %45
  %54 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %55 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %11, align 8
  %58 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = sub nsw i32 %56, %59
  %61 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %11, align 8
  %62 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = sub nsw i32 %60, %63
  store i32 %64, i32* %12, align 4
  %65 = call i32 (...) @cond_resched()
  %66 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %67 = call i64 @ubifs_gc_should_commit(%struct.ubifs_info* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %53
  %70 = load i32, i32* @EAGAIN, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %8, align 4
  br label %311

72:                                               ; preds = %53
  %73 = load i32, i32* %6, align 4
  %74 = load i32, i32* @SOFT_LEBS_LIMIT, align 4
  %75 = icmp sgt i32 %73, %74
  br i1 %75, label %76, label %87

76:                                               ; preds = %72
  %77 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %78 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %77, i32 0, i32 4
  %79 = call i32 @list_empty(i32* %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %87, label %81

81:                                               ; preds = %76
  %82 = call i32 (i8*, ...) @dbg_gc(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %83 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %84 = call i32 @ubifs_commit_required(%struct.ubifs_info* %83)
  %85 = load i32, i32* @EAGAIN, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %8, align 4
  br label %311

87:                                               ; preds = %76, %72
  %88 = load i32, i32* %6, align 4
  %89 = load i32, i32* @HARD_LEBS_LIMIT, align 4
  %90 = icmp sgt i32 %88, %89
  br i1 %90, label %91, label %95

91:                                               ; preds = %87
  %92 = call i32 (i8*, ...) @dbg_gc(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %93 = load i32, i32* @ENOSPC, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %8, align 4
  br label %311

95:                                               ; preds = %87
  %96 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %97 = load i32, i32* %9, align 4
  %98 = load i32, i32* %5, align 4
  %99 = icmp ne i32 %98, 0
  %100 = zext i1 %99 to i64
  %101 = select i1 %99, i32 0, i32 1
  %102 = call i32 @ubifs_find_dirty_leb(%struct.ubifs_info* %96, %struct.ubifs_lprops* %10, i32 %97, i32 %101)
  store i32 %102, i32* %8, align 4
  %103 = load i32, i32* %8, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %113

105:                                              ; preds = %95
  %106 = load i32, i32* %8, align 4
  %107 = load i32, i32* @ENOSPC, align 4
  %108 = sub nsw i32 0, %107
  %109 = icmp eq i32 %106, %108
  br i1 %109, label %110, label %112

110:                                              ; preds = %105
  %111 = call i32 (i8*, ...) @dbg_gc(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  br label %112

112:                                              ; preds = %110, %105
  br label %311

113:                                              ; preds = %95
  %114 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %10, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %10, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %10, i32 0, i32 2
  %119 = load i64, i64* %118, align 8
  %120 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %10, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %10, i32 0, i32 2
  %123 = load i64, i64* %122, align 8
  %124 = add nsw i64 %121, %123
  %125 = load i32, i32* %9, align 4
  %126 = call i32 (i8*, ...) @dbg_gc(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0), i32 %115, i64 %117, i64 %119, i64 %124, i32 %125)
  %127 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %10, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %10, i32 0, i32 2
  %130 = load i64, i64* %129, align 8
  %131 = add nsw i64 %128, %130
  %132 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %133 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = sext i32 %134 to i64
  %136 = icmp eq i64 %131, %135
  br i1 %136, label %137, label %186

137:                                              ; preds = %113
  %138 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %10, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = call i32 (i8*, ...) @dbg_gc(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 %139)
  %141 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %10, i32 0, i32 3
  %142 = load i32, i32* %141, align 8
  %143 = load i32, i32* @LPROPS_INDEX, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  %146 = xor i1 %145, true
  %147 = zext i1 %146 to i32
  %148 = call i32 @ubifs_assert(i32 %147)
  %149 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %10, i32 0, i32 1
  %150 = load i64, i64* %149, align 8
  %151 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %152 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = sext i32 %153 to i64
  %155 = icmp ne i64 %150, %154
  br i1 %155, label %156, label %175

156:                                              ; preds = %137
  %157 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %158 = call i32 @gc_sync_wbufs(%struct.ubifs_info* %157)
  store i32 %158, i32* %8, align 4
  %159 = load i32, i32* %8, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %162

161:                                              ; preds = %156
  br label %349

162:                                              ; preds = %156
  %163 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %164 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %10, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %167 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = sext i32 %168 to i64
  %170 = call i32 @ubifs_change_one_lp(%struct.ubifs_info* %163, i32 %165, i64 %169, i32 0, i32 0, i32 0, i32 0)
  store i32 %170, i32* %8, align 4
  %171 = load i32, i32* %8, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %174

173:                                              ; preds = %162
  br label %349

174:                                              ; preds = %162
  br label %175

175:                                              ; preds = %174, %137
  %176 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %177 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %10, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = call i32 @ubifs_leb_unmap(%struct.ubifs_info* %176, i32 %178)
  store i32 %179, i32* %8, align 4
  %180 = load i32, i32* %8, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %183

182:                                              ; preds = %175
  br label %349

183:                                              ; preds = %175
  %184 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %10, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  store i32 %185, i32* %8, align 4
  br label %311

186:                                              ; preds = %113
  %187 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %188 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  %190 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %11, align 8
  %191 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  %193 = sub nsw i32 %189, %192
  %194 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %11, align 8
  %195 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 4
  %197 = sub nsw i32 %193, %196
  store i32 %197, i32* %12, align 4
  %198 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %11, align 8
  %199 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %198, i32 0, i32 2
  %200 = load i32, i32* %199, align 4
  %201 = icmp eq i32 %200, -1
  br i1 %201, label %202, label %203

202:                                              ; preds = %186
  store i32 0, i32* %12, align 4
  br label %203

203:                                              ; preds = %202, %186
  %204 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %205 = call i32 @ubifs_garbage_collect_leb(%struct.ubifs_info* %204, %struct.ubifs_lprops* %10)
  store i32 %205, i32* %8, align 4
  %206 = load i32, i32* %8, align 4
  %207 = icmp slt i32 %206, 0
  br i1 %207, label %208, label %229

208:                                              ; preds = %203
  %209 = load i32, i32* %8, align 4
  %210 = load i32, i32* @EAGAIN, align 4
  %211 = sub nsw i32 0, %210
  %212 = icmp eq i32 %209, %211
  br i1 %212, label %218, label %213

213:                                              ; preds = %208
  %214 = load i32, i32* %8, align 4
  %215 = load i32, i32* @ENOSPC, align 4
  %216 = sub nsw i32 0, %215
  %217 = icmp eq i32 %214, %216
  br i1 %217, label %218, label %228

218:                                              ; preds = %213, %208
  %219 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %220 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %10, i32 0, i32 0
  %221 = load i32, i32* %220, align 8
  %222 = call i32 @ubifs_return_leb(%struct.ubifs_info* %219, i32 %221)
  store i32 %222, i32* %7, align 4
  %223 = load i32, i32* %7, align 4
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %227

225:                                              ; preds = %218
  %226 = load i32, i32* %7, align 4
  store i32 %226, i32* %8, align 4
  br label %227

227:                                              ; preds = %225, %218
  br label %311

228:                                              ; preds = %213
  br label %349

229:                                              ; preds = %203
  %230 = load i32, i32* %8, align 4
  %231 = load i32, i32* @LEB_FREED, align 4
  %232 = icmp eq i32 %230, %231
  br i1 %232, label %233, label %239

233:                                              ; preds = %229
  %234 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %10, i32 0, i32 0
  %235 = load i32, i32* %234, align 8
  %236 = call i32 (i8*, ...) @dbg_gc(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i32 %235)
  %237 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %10, i32 0, i32 0
  %238 = load i32, i32* %237, align 8
  store i32 %238, i32* %8, align 4
  br label %311

239:                                              ; preds = %229
  %240 = load i32, i32* %8, align 4
  %241 = load i32, i32* @LEB_FREED_IDX, align 4
  %242 = icmp eq i32 %240, %241
  br i1 %242, label %243, label %247

243:                                              ; preds = %239
  %244 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %10, i32 0, i32 0
  %245 = load i32, i32* %244, align 8
  %246 = call i32 (i8*, ...) @dbg_gc(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0), i32 %245)
  br label %308

247:                                              ; preds = %239
  %248 = load i32, i32* %8, align 4
  %249 = load i32, i32* @LEB_RETAINED, align 4
  %250 = icmp eq i32 %248, %249
  %251 = zext i1 %250 to i32
  %252 = call i32 @ubifs_assert(i32 %251)
  %253 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %254 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %253, i32 0, i32 1
  %255 = load i32, i32* %254, align 4
  %256 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %11, align 8
  %257 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %256, i32 0, i32 1
  %258 = load i32, i32* %257, align 4
  %259 = sub nsw i32 %255, %258
  %260 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %11, align 8
  %261 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 4
  %263 = sub nsw i32 %259, %262
  store i32 %263, i32* %13, align 4
  %264 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %10, i32 0, i32 0
  %265 = load i32, i32* %264, align 8
  %266 = load i32, i32* %13, align 4
  %267 = load i32, i32* %12, align 4
  %268 = sub nsw i32 %266, %267
  %269 = call i32 (i8*, ...) @dbg_gc(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0), i32 %265, i32 %268)
  %270 = load i32, i32* %13, align 4
  %271 = load i32, i32* %12, align 4
  %272 = icmp sgt i32 %270, %271
  br i1 %272, label %273, label %286

273:                                              ; preds = %247
  %274 = load i32, i32* %9, align 4
  %275 = ashr i32 %274, 1
  store i32 %275, i32* %9, align 4
  %276 = load i32, i32* %9, align 4
  %277 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %278 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %277, i32 0, i32 0
  %279 = load i32, i32* %278, align 8
  %280 = icmp slt i32 %276, %279
  br i1 %280, label %281, label %285

281:                                              ; preds = %273
  %282 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %283 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %282, i32 0, i32 0
  %284 = load i32, i32* %283, align 8
  store i32 %284, i32* %9, align 4
  br label %285

285:                                              ; preds = %281, %273
  br label %308

286:                                              ; preds = %247
  %287 = call i32 (i8*, ...) @dbg_gc(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0))
  %288 = load i32, i32* %6, align 4
  %289 = load i32, i32* @SOFT_LEBS_LIMIT, align 4
  %290 = icmp slt i32 %288, %289
  br i1 %290, label %291, label %293

291:                                              ; preds = %286
  %292 = call i32 (i8*, ...) @dbg_gc(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0))
  br label %308

293:                                              ; preds = %286
  %294 = load i32, i32* %9, align 4
  %295 = shl i32 %294, 1
  store i32 %295, i32* %9, align 4
  %296 = load i32, i32* %9, align 4
  %297 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %298 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %297, i32 0, i32 2
  %299 = load i32, i32* %298, align 8
  %300 = icmp sgt i32 %296, %299
  br i1 %300, label %301, label %305

301:                                              ; preds = %293
  %302 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %303 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %302, i32 0, i32 2
  %304 = load i32, i32* %303, align 8
  store i32 %304, i32* %9, align 4
  br label %305

305:                                              ; preds = %301, %293
  %306 = load i32, i32* %9, align 4
  %307 = call i32 (i8*, ...) @dbg_gc(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0), i32 %306)
  br label %308

308:                                              ; preds = %305, %291, %285, %243
  %309 = load i32, i32* %6, align 4
  %310 = add nsw i32 %309, 1
  store i32 %310, i32* %6, align 4
  br label %53

311:                                              ; preds = %233, %227, %183, %112, %91, %81, %69
  %312 = load i32, i32* %8, align 4
  %313 = load i32, i32* @ENOSPC, align 4
  %314 = sub nsw i32 0, %313
  %315 = icmp eq i32 %312, %314
  br i1 %315, label %316, label %327

316:                                              ; preds = %311
  %317 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %318 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %317, i32 0, i32 4
  %319 = call i32 @list_empty(i32* %318)
  %320 = icmp ne i32 %319, 0
  br i1 %320, label %327, label %321

321:                                              ; preds = %316
  %322 = call i32 (i8*, ...) @dbg_gc(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.11, i64 0, i64 0))
  %323 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %324 = call i32 @ubifs_commit_required(%struct.ubifs_info* %323)
  %325 = load i32, i32* @EAGAIN, align 4
  %326 = sub nsw i32 0, %325
  store i32 %326, i32* %8, align 4
  br label %327

327:                                              ; preds = %321, %316, %311
  %328 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %11, align 8
  %329 = call i32 @ubifs_wbuf_sync_nolock(%struct.ubifs_wbuf* %328)
  store i32 %329, i32* %7, align 4
  %330 = load i32, i32* %7, align 4
  %331 = icmp ne i32 %330, 0
  br i1 %331, label %338, label %332

332:                                              ; preds = %327
  %333 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %334 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %335 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %334, i32 0, i32 3
  %336 = load i32, i32* %335, align 4
  %337 = call i32 @ubifs_leb_unmap(%struct.ubifs_info* %333, i32 %336)
  store i32 %337, i32* %7, align 4
  br label %338

338:                                              ; preds = %332, %327
  %339 = load i32, i32* %7, align 4
  %340 = icmp ne i32 %339, 0
  br i1 %340, label %341, label %343

341:                                              ; preds = %338
  %342 = load i32, i32* %7, align 4
  store i32 %342, i32* %8, align 4
  br label %349

343:                                              ; preds = %338
  br label %344

344:                                              ; preds = %343, %42
  %345 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %11, align 8
  %346 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %345, i32 0, i32 3
  %347 = call i32 @mutex_unlock(i32* %346)
  %348 = load i32, i32* %8, align 4
  store i32 %348, i32* %3, align 4
  br label %380

349:                                              ; preds = %341, %228, %182, %173, %161
  %350 = load i32, i32* %8, align 4
  %351 = icmp slt i32 %350, 0
  %352 = zext i1 %351 to i32
  %353 = call i32 @ubifs_assert(i32 %352)
  %354 = load i32, i32* %8, align 4
  %355 = load i32, i32* @ENOSPC, align 4
  %356 = sub nsw i32 0, %355
  %357 = icmp ne i32 %354, %356
  br i1 %357, label %358, label %363

358:                                              ; preds = %349
  %359 = load i32, i32* %8, align 4
  %360 = load i32, i32* @EAGAIN, align 4
  %361 = sub nsw i32 0, %360
  %362 = icmp ne i32 %359, %361
  br label %363

363:                                              ; preds = %358, %349
  %364 = phi i1 [ false, %349 ], [ %362, %358 ]
  %365 = zext i1 %364 to i32
  %366 = call i32 @ubifs_assert(i32 %365)
  %367 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %368 = load i32, i32* %8, align 4
  %369 = call i32 @ubifs_ro_mode(%struct.ubifs_info* %367, i32 %368)
  %370 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %11, align 8
  %371 = call i32 @ubifs_wbuf_sync_nolock(%struct.ubifs_wbuf* %370)
  %372 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %11, align 8
  %373 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %372, i32 0, i32 3
  %374 = call i32 @mutex_unlock(i32* %373)
  %375 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %376 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %10, i32 0, i32 0
  %377 = load i32, i32* %376, align 8
  %378 = call i32 @ubifs_return_leb(%struct.ubifs_info* %375, i32 %377)
  %379 = load i32, i32* %8, align 4
  store i32 %379, i32* %3, align 4
  br label %380

380:                                              ; preds = %363, %344, %28
  %381 = load i32, i32* %3, align 4
  ret i32 %381
}

declare dso_local i32 @ubifs_assert_cmt_locked(%struct.ubifs_info*) #1

declare dso_local i64 @ubifs_gc_should_commit(%struct.ubifs_info*) #1

declare dso_local i32 @mutex_lock_nested(i32*, i32) #1

declare dso_local i32 @ubifs_assert(i32) #1

declare dso_local i32 @cond_resched(...) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @dbg_gc(i8*, ...) #1

declare dso_local i32 @ubifs_commit_required(%struct.ubifs_info*) #1

declare dso_local i32 @ubifs_find_dirty_leb(%struct.ubifs_info*, %struct.ubifs_lprops*, i32, i32) #1

declare dso_local i32 @gc_sync_wbufs(%struct.ubifs_info*) #1

declare dso_local i32 @ubifs_change_one_lp(%struct.ubifs_info*, i32, i64, i32, i32, i32, i32) #1

declare dso_local i32 @ubifs_leb_unmap(%struct.ubifs_info*, i32) #1

declare dso_local i32 @ubifs_garbage_collect_leb(%struct.ubifs_info*, %struct.ubifs_lprops*) #1

declare dso_local i32 @ubifs_return_leb(%struct.ubifs_info*, i32) #1

declare dso_local i32 @ubifs_wbuf_sync_nolock(%struct.ubifs_wbuf*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @ubifs_ro_mode(%struct.ubifs_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
