; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_recovery.c_ubifs_rcvry_gc_commit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_recovery.c_ubifs_rcvry_gc_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.ubifs_wbuf }
%struct.ubifs_wbuf = type { i32, i64, i32, i32 }
%struct.ubifs_lprops = type { i32, i32, i64, i64 }

@GCHD = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"no GC head LEB\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"no room in GC head LEB\00", align 1
@ENOSPC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"could not find a dirty LEB\00", align 1
@LPROPS_INDEX = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"allocated LEB %d for GC\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"committing\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"LEB %d doesn't fit in GC head LEB %d:%d\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"GC'ing LEB %d\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"GC failed, error %d\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@LEB_RETAINED = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [15 x i8] c"GC returned %d\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"could not find an empty LEB\00", align 1
@LPROPS_NC = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ubifs_rcvry_gc_commit(%struct.ubifs_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ubifs_info*, align 8
  %4 = alloca %struct.ubifs_wbuf*, align 8
  %5 = alloca %struct.ubifs_lprops, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ubifs_info* %0, %struct.ubifs_info** %3, align 8
  %9 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %10 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %9, i32 0, i32 2
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = load i64, i64* @GCHD, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i64 %12
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store %struct.ubifs_wbuf* %14, %struct.ubifs_wbuf** %4, align 8
  %15 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %16 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %15, i32 0, i32 0
  store i32 -1, i32* %16, align 8
  %17 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %4, align 8
  %18 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp eq i32 %19, -1
  br i1 %20, label %21, label %23

21:                                               ; preds = %1
  %22 = call i32 (i8*, ...) @dbg_rcvry(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %202

23:                                               ; preds = %1
  %24 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %4, align 8
  %25 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %28 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp eq i64 %26, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %23
  %32 = call i32 (i8*, ...) @dbg_rcvry(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %202

33:                                               ; preds = %23
  %34 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %35 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %4, align 8
  %36 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @ubifs_find_dirty_leb(%struct.ubifs_info* %34, %struct.ubifs_lprops* %5, i64 %37, i32 2)
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %50

41:                                               ; preds = %33
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* @ENOSPC, align 4
  %44 = sub nsw i32 0, %43
  %45 = icmp eq i32 %42, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %41
  %47 = call i32 (i8*, ...) @dbg_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  br label %48

48:                                               ; preds = %46, %41
  %49 = load i32, i32* %7, align 4
  store i32 %49, i32* %2, align 4
  br label %230

50:                                               ; preds = %33
  %51 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %5, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @LPROPS_INDEX, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  %56 = xor i1 %55, true
  %57 = zext i1 %56 to i32
  %58 = call i32 @ubifs_assert(i32 %57)
  %59 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %5, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %6, align 4
  %61 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %5, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %5, i32 0, i32 3
  %64 = load i64, i64* %63, align 8
  %65 = add nsw i64 %62, %64
  %66 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %67 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = icmp eq i64 %65, %68
  br i1 %69, label %70, label %106

70:                                               ; preds = %50
  %71 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %5, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %74 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %72, %75
  br i1 %76, label %77, label %89

77:                                               ; preds = %70
  %78 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %79 = load i32, i32* %6, align 4
  %80 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %81 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = call i32 @ubifs_change_one_lp(%struct.ubifs_info* %78, i32 %79, i64 %82, i64 0, i32 0, i32 0, i32 0)
  store i32 %83, i32* %7, align 4
  %84 = load i32, i32* %7, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %77
  %87 = load i32, i32* %7, align 4
  store i32 %87, i32* %2, align 4
  br label %230

88:                                               ; preds = %77
  br label %89

89:                                               ; preds = %88, %70
  %90 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %91 = load i32, i32* %6, align 4
  %92 = call i32 @ubifs_leb_unmap(%struct.ubifs_info* %90, i32 %91)
  store i32 %92, i32* %7, align 4
  %93 = load i32, i32* %7, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %89
  %96 = load i32, i32* %7, align 4
  store i32 %96, i32* %2, align 4
  br label %230

97:                                               ; preds = %89
  %98 = load i32, i32* %6, align 4
  %99 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %100 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %99, i32 0, i32 0
  store i32 %98, i32* %100, align 8
  %101 = load i32, i32* %6, align 4
  %102 = call i32 (i8*, ...) @dbg_rcvry(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %101)
  %103 = call i32 (i8*, ...) @dbg_rcvry(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  %104 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %105 = call i32 @ubifs_run_commit(%struct.ubifs_info* %104)
  store i32 %105, i32* %2, align 4
  br label %230

106:                                              ; preds = %50
  %107 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %5, i32 0, i32 2
  %108 = load i64, i64* %107, align 8
  %109 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %5, i32 0, i32 3
  %110 = load i64, i64* %109, align 8
  %111 = add nsw i64 %108, %110
  %112 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %4, align 8
  %113 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = icmp slt i64 %111, %114
  br i1 %115, label %116, label %133

116:                                              ; preds = %106
  %117 = load i32, i32* %6, align 4
  %118 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %4, align 8
  %119 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %4, align 8
  %122 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = call i32 (i8*, ...) @dbg_rcvry(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0), i32 %117, i32 %120, i64 %123)
  %125 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %126 = load i32, i32* %6, align 4
  %127 = call i32 @ubifs_return_leb(%struct.ubifs_info* %125, i32 %126)
  store i32 %127, i32* %7, align 4
  %128 = load i32, i32* %7, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %132

130:                                              ; preds = %116
  %131 = load i32, i32* %7, align 4
  store i32 %131, i32* %2, align 4
  br label %230

132:                                              ; preds = %116
  br label %202

133:                                              ; preds = %106
  %134 = call i32 (i8*, ...) @dbg_rcvry(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  %135 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %136 = call i32 @ubifs_run_commit(%struct.ubifs_info* %135)
  store i32 %136, i32* %7, align 4
  %137 = load i32, i32* %7, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %141

139:                                              ; preds = %133
  %140 = load i32, i32* %7, align 4
  store i32 %140, i32* %2, align 4
  br label %230

141:                                              ; preds = %133
  %142 = load i32, i32* %6, align 4
  %143 = call i32 (i8*, ...) @dbg_rcvry(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i32 %142)
  %144 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %4, align 8
  %145 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %144, i32 0, i32 2
  %146 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %4, align 8
  %147 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %146, i32 0, i32 3
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @mutex_lock_nested(i32* %145, i32 %148)
  %150 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %151 = call i32 @ubifs_garbage_collect_leb(%struct.ubifs_info* %150, %struct.ubifs_lprops* %5)
  store i32 %151, i32* %7, align 4
  %152 = load i32, i32* %7, align 4
  %153 = icmp sge i32 %152, 0
  br i1 %153, label %154, label %162

154:                                              ; preds = %141
  %155 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %4, align 8
  %156 = call i32 @ubifs_wbuf_sync_nolock(%struct.ubifs_wbuf* %155)
  store i32 %156, i32* %8, align 4
  %157 = load i32, i32* %8, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %161

159:                                              ; preds = %154
  %160 = load i32, i32* %8, align 4
  store i32 %160, i32* %7, align 4
  br label %161

161:                                              ; preds = %159, %154
  br label %162

162:                                              ; preds = %161, %141
  %163 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %4, align 8
  %164 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %163, i32 0, i32 2
  %165 = call i32 @mutex_unlock(i32* %164)
  %166 = load i32, i32* %7, align 4
  %167 = icmp slt i32 %166, 0
  br i1 %167, label %168, label %180

168:                                              ; preds = %162
  %169 = load i32, i32* %7, align 4
  %170 = call i32 (i8*, ...) @dbg_err(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0), i32 %169)
  %171 = load i32, i32* %7, align 4
  %172 = load i32, i32* @EAGAIN, align 4
  %173 = sub nsw i32 0, %172
  %174 = icmp eq i32 %171, %173
  br i1 %174, label %175, label %178

175:                                              ; preds = %168
  %176 = load i32, i32* @EINVAL, align 4
  %177 = sub nsw i32 0, %176
  store i32 %177, i32* %7, align 4
  br label %178

178:                                              ; preds = %175, %168
  %179 = load i32, i32* %7, align 4
  store i32 %179, i32* %2, align 4
  br label %230

180:                                              ; preds = %162
  %181 = load i32, i32* %7, align 4
  %182 = load i32, i32* @LEB_RETAINED, align 4
  %183 = icmp ne i32 %181, %182
  br i1 %183, label %184, label %189

184:                                              ; preds = %180
  %185 = load i32, i32* %7, align 4
  %186 = call i32 (i8*, ...) @dbg_err(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i32 %185)
  %187 = load i32, i32* @EINVAL, align 4
  %188 = sub nsw i32 0, %187
  store i32 %188, i32* %2, align 4
  br label %230

189:                                              ; preds = %180
  %190 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %191 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %192 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = call i32 @ubifs_leb_unmap(%struct.ubifs_info* %190, i32 %193)
  store i32 %194, i32* %7, align 4
  %195 = load i32, i32* %7, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %199

197:                                              ; preds = %189
  %198 = load i32, i32* %7, align 4
  store i32 %198, i32* %2, align 4
  br label %230

199:                                              ; preds = %189
  %200 = load i32, i32* %6, align 4
  %201 = call i32 (i8*, ...) @dbg_rcvry(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %200)
  store i32 0, i32* %2, align 4
  br label %230

202:                                              ; preds = %132, %31, %21
  %203 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %204 = call i32 @ubifs_find_free_leb_for_idx(%struct.ubifs_info* %203)
  store i32 %204, i32* %6, align 4
  %205 = load i32, i32* %6, align 4
  %206 = icmp slt i32 %205, 0
  br i1 %206, label %207, label %210

207:                                              ; preds = %202
  %208 = call i32 (i8*, ...) @dbg_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0))
  %209 = load i32, i32* %6, align 4
  store i32 %209, i32* %2, align 4
  br label %230

210:                                              ; preds = %202
  %211 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %212 = load i32, i32* %6, align 4
  %213 = load i64, i64* @LPROPS_NC, align 8
  %214 = load i64, i64* @LPROPS_NC, align 8
  %215 = load i32, i32* @LPROPS_INDEX, align 4
  %216 = call i32 @ubifs_change_one_lp(%struct.ubifs_info* %211, i32 %212, i64 %213, i64 %214, i32 0, i32 %215, i32 0)
  store i32 %216, i32* %7, align 4
  %217 = load i32, i32* %7, align 4
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %221

219:                                              ; preds = %210
  %220 = load i32, i32* %7, align 4
  store i32 %220, i32* %2, align 4
  br label %230

221:                                              ; preds = %210
  %222 = load i32, i32* %6, align 4
  %223 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %224 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %223, i32 0, i32 0
  store i32 %222, i32* %224, align 8
  %225 = load i32, i32* %6, align 4
  %226 = call i32 (i8*, ...) @dbg_rcvry(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %225)
  %227 = call i32 (i8*, ...) @dbg_rcvry(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  %228 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %229 = call i32 @ubifs_run_commit(%struct.ubifs_info* %228)
  store i32 %229, i32* %2, align 4
  br label %230

230:                                              ; preds = %221, %219, %207, %199, %197, %184, %178, %139, %130, %97, %95, %86, %48
  %231 = load i32, i32* %2, align 4
  ret i32 %231
}

declare dso_local i32 @dbg_rcvry(i8*, ...) #1

declare dso_local i32 @ubifs_find_dirty_leb(%struct.ubifs_info*, %struct.ubifs_lprops*, i64, i32) #1

declare dso_local i32 @dbg_err(i8*, ...) #1

declare dso_local i32 @ubifs_assert(i32) #1

declare dso_local i32 @ubifs_change_one_lp(%struct.ubifs_info*, i32, i64, i64, i32, i32, i32) #1

declare dso_local i32 @ubifs_leb_unmap(%struct.ubifs_info*, i32) #1

declare dso_local i32 @ubifs_run_commit(%struct.ubifs_info*) #1

declare dso_local i32 @ubifs_return_leb(%struct.ubifs_info*, i32) #1

declare dso_local i32 @mutex_lock_nested(i32*, i32) #1

declare dso_local i32 @ubifs_garbage_collect_leb(%struct.ubifs_info*, %struct.ubifs_lprops*) #1

declare dso_local i32 @ubifs_wbuf_sync_nolock(%struct.ubifs_wbuf*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @ubifs_find_free_leb_for_idx(%struct.ubifs_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
