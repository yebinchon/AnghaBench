; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/zdb/extr_zdb.c_dump_history.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/zdb/extr_zdb.c_dump_history.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32 }

@HIS_BUF_LEN_DEF = common dso_local global i64 0, align 8
@MAXPATHLEN = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Unable to read history: out of memory\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"Unable to read history: error %d\0A\00", align 1
@HIS_BUF_LEN_MAX = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [11 x i8] c"\0AHistory:\0A\00", align 1
@B_FALSE = common dso_local global i32 0, align 4
@ZPOOL_HIST_TIME = common dso_local global i32 0, align 4
@ZPOOL_HIST_CMD = common dso_local global i32 0, align 4
@ZPOOL_HIST_INT_EVENT = common dso_local global i32 0, align 4
@ZPOOL_HIST_TXG = common dso_local global i32 0, align 4
@ZPOOL_HIST_INT_STR = common dso_local global i32 0, align 4
@ZFS_NUM_LEGACY_HISTORY_EVENTS = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [25 x i8] c"[internal %s txg:%ju] %s\00", align 1
@zfs_history_event_names = common dso_local global i8** null, align 8
@.str.4 = private unnamed_addr constant [6 x i8] c"%F.%T\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@B_TRUE = common dso_local global i32 0, align 4
@dump_opt = common dso_local global i32* null, align 8
@.str.6 = private unnamed_addr constant [22 x i8] c"unrecognized record:\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @dump_history to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_history(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32**, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.tm, align 4
  %13 = alloca [30 x i8], align 16
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  store i32** null, i32*** %3, align 8
  store i8* null, i8** %4, align 8
  %24 = load i64, i64* @HIS_BUF_LEN_DEF, align 8
  store i64 %24, i64* %5, align 8
  store i64 0, i64* %8, align 8
  store i32 0, i32* %9, align 4
  %25 = load i32, i32* @MAXPATHLEN, align 4
  %26 = zext i32 %25 to i64
  %27 = call i8* @llvm.stacksave()
  store i8* %27, i8** %14, align 8
  %28 = alloca i8, i64 %26, align 16
  store i64 %26, i64* %15, align 8
  %29 = load i64, i64* %5, align 8
  %30 = call i8* @malloc(i64 %29)
  store i8* %30, i8** %4, align 8
  %31 = icmp eq i8* %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %1
  %33 = load i32, i32* @stderr, align 4
  %34 = call i32 (i32, i8*, ...) @fprintf(i32 %33, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %35

35:                                               ; preds = %32, %1
  br label %36

36:                                               ; preds = %76, %35
  %37 = load i64, i64* %5, align 8
  store i64 %37, i64* %7, align 8
  %38 = load i32*, i32** %2, align 8
  %39 = load i8*, i8** %4, align 8
  %40 = call i32 @spa_history_get(i32* %38, i64* %8, i64* %7, i8* %39)
  store i32 %40, i32* %10, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %36
  %43 = load i32, i32* @stderr, align 4
  %44 = load i32, i32* %10, align 4
  %45 = call i32 (i32, i8*, ...) @fprintf(i32 %43, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %44)
  store i32 1, i32* %16, align 4
  br label %183

46:                                               ; preds = %36
  %47 = load i8*, i8** %4, align 8
  %48 = load i64, i64* %7, align 8
  %49 = call i64 @zpool_history_unpack(i8* %47, i64 %48, i64* %6, i32*** %3, i32* %9)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  br label %79

52:                                               ; preds = %46
  %53 = load i64, i64* %6, align 8
  %54 = load i64, i64* %8, align 8
  %55 = sub nsw i64 %54, %53
  store i64 %55, i64* %8, align 8
  %56 = load i64, i64* %6, align 8
  %57 = load i64, i64* %7, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %75

59:                                               ; preds = %52
  %60 = load i8*, i8** %4, align 8
  %61 = call i32 @free(i8* %60)
  store i8* null, i8** %4, align 8
  %62 = load i64, i64* %5, align 8
  %63 = shl i64 %62, 1
  store i64 %63, i64* %5, align 8
  %64 = load i64, i64* %5, align 8
  %65 = load i64, i64* @HIS_BUF_LEN_MAX, align 8
  %66 = icmp sge i64 %64, %65
  br i1 %66, label %71, label %67

67:                                               ; preds = %59
  %68 = load i64, i64* %5, align 8
  %69 = call i8* @malloc(i64 %68)
  store i8* %69, i8** %4, align 8
  %70 = icmp eq i8* %69, null
  br i1 %70, label %71, label %74

71:                                               ; preds = %67, %59
  %72 = load i32, i32* @stderr, align 4
  %73 = call i32 (i32, i8*, ...) @fprintf(i32 %72, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %16, align 4
  br label %183

74:                                               ; preds = %67
  br label %75

75:                                               ; preds = %74, %52
  br label %76

76:                                               ; preds = %75
  %77 = load i64, i64* %7, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %36, label %79

79:                                               ; preds = %76, %51
  %80 = load i8*, i8** %4, align 8
  %81 = call i32 @free(i8* %80)
  %82 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %17, align 4
  br label %83

83:                                               ; preds = %179, %79
  %84 = load i32, i32* %17, align 4
  %85 = load i32, i32* %9, align 4
  %86 = icmp ult i32 %84, %85
  br i1 %86, label %87, label %182

87:                                               ; preds = %83
  %88 = load i32, i32* @B_FALSE, align 4
  store i32 %88, i32* %23, align 4
  %89 = load i32**, i32*** %3, align 8
  %90 = load i32, i32* %17, align 4
  %91 = zext i32 %90 to i64
  %92 = getelementptr inbounds i32*, i32** %89, i64 %91
  %93 = load i32*, i32** %92, align 8
  %94 = load i32, i32* @ZPOOL_HIST_TIME, align 4
  %95 = call i64 @nvlist_lookup_uint64(i32* %93, i32 %94, i64* %18)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %87
  br label %161

98:                                               ; preds = %87
  %99 = load i32**, i32*** %3, align 8
  %100 = load i32, i32* %17, align 4
  %101 = zext i32 %100 to i64
  %102 = getelementptr inbounds i32*, i32** %99, i64 %101
  %103 = load i32*, i32** %102, align 8
  %104 = load i32, i32* @ZPOOL_HIST_CMD, align 4
  %105 = call i64 @nvlist_lookup_string(i32* %103, i32 %104, i8** %21)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %152

107:                                              ; preds = %98
  %108 = load i32**, i32*** %3, align 8
  %109 = load i32, i32* %17, align 4
  %110 = zext i32 %109 to i64
  %111 = getelementptr inbounds i32*, i32** %108, i64 %110
  %112 = load i32*, i32** %111, align 8
  %113 = load i32, i32* @ZPOOL_HIST_INT_EVENT, align 4
  %114 = call i64 @nvlist_lookup_uint64(i32* %112, i32 %113, i64* %20)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %107
  br label %161

117:                                              ; preds = %107
  %118 = load i32**, i32*** %3, align 8
  %119 = load i32, i32* %17, align 4
  %120 = zext i32 %119 to i64
  %121 = getelementptr inbounds i32*, i32** %118, i64 %120
  %122 = load i32*, i32** %121, align 8
  %123 = load i32, i32* @ZPOOL_HIST_TXG, align 4
  %124 = call i64 @nvlist_lookup_uint64(i32* %122, i32 %123, i64* %19)
  %125 = icmp eq i64 %124, 0
  %126 = zext i1 %125 to i32
  %127 = call i32 @verify(i32 %126)
  %128 = load i32**, i32*** %3, align 8
  %129 = load i32, i32* %17, align 4
  %130 = zext i32 %129 to i64
  %131 = getelementptr inbounds i32*, i32** %128, i64 %130
  %132 = load i32*, i32** %131, align 8
  %133 = load i32, i32* @ZPOOL_HIST_INT_STR, align 4
  %134 = call i64 @nvlist_lookup_string(i32* %132, i32 %133, i8** %22)
  %135 = icmp eq i64 %134, 0
  %136 = zext i1 %135 to i32
  %137 = call i32 @verify(i32 %136)
  %138 = load i64, i64* %20, align 8
  %139 = load i64, i64* @ZFS_NUM_LEGACY_HISTORY_EVENTS, align 8
  %140 = icmp sge i64 %138, %139
  br i1 %140, label %141, label %142

141:                                              ; preds = %117
  br label %161

142:                                              ; preds = %117
  %143 = trunc i64 %26 to i32
  %144 = load i8**, i8*** @zfs_history_event_names, align 8
  %145 = load i64, i64* %20, align 8
  %146 = getelementptr inbounds i8*, i8** %144, i64 %145
  %147 = load i8*, i8** %146, align 8
  %148 = load i64, i64* %19, align 8
  %149 = trunc i64 %148 to i32
  %150 = load i8*, i8** %22, align 8
  %151 = call i32 @snprintf(i8* %28, i32 %143, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i8* %147, i32 %149, i8* %150)
  store i8* %28, i8** %21, align 8
  br label %152

152:                                              ; preds = %142, %98
  %153 = load i64, i64* %18, align 8
  store i64 %153, i64* %11, align 8
  %154 = call i32 @localtime_r(i64* %11, %struct.tm* %12)
  %155 = getelementptr inbounds [30 x i8], [30 x i8]* %13, i64 0, i64 0
  %156 = call i32 @strftime(i8* %155, i32 30, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), %struct.tm* %12)
  %157 = getelementptr inbounds [30 x i8], [30 x i8]* %13, i64 0, i64 0
  %158 = load i8*, i8** %21, align 8
  %159 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* %157, i8* %158)
  %160 = load i32, i32* @B_TRUE, align 4
  store i32 %160, i32* %23, align 4
  br label %161

161:                                              ; preds = %152, %141, %116, %97
  %162 = load i32*, i32** @dump_opt, align 8
  %163 = getelementptr inbounds i32, i32* %162, i64 104
  %164 = load i32, i32* %163, align 4
  %165 = icmp sgt i32 %164, 1
  br i1 %165, label %166, label %178

166:                                              ; preds = %161
  %167 = load i32, i32* %23, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %171, label %169

169:                                              ; preds = %166
  %170 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0))
  br label %171

171:                                              ; preds = %169, %166
  %172 = load i32**, i32*** %3, align 8
  %173 = load i32, i32* %17, align 4
  %174 = zext i32 %173 to i64
  %175 = getelementptr inbounds i32*, i32** %172, i64 %174
  %176 = load i32*, i32** %175, align 8
  %177 = call i32 @dump_nvlist(i32* %176, i32 2)
  br label %178

178:                                              ; preds = %171, %161
  br label %179

179:                                              ; preds = %178
  %180 = load i32, i32* %17, align 4
  %181 = add i32 %180, 1
  store i32 %181, i32* %17, align 4
  br label %83

182:                                              ; preds = %83
  store i32 0, i32* %16, align 4
  br label %183

183:                                              ; preds = %182, %71, %42
  %184 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %184)
  %185 = load i32, i32* %16, align 4
  switch i32 %185, label %187 [
    i32 0, label %186
    i32 1, label %186
  ]

186:                                              ; preds = %183, %183
  ret void

187:                                              ; preds = %183
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @malloc(i64) #2

declare dso_local i32 @fprintf(i32, i8*, ...) #2

declare dso_local i32 @spa_history_get(i32*, i64*, i64*, i8*) #2

declare dso_local i64 @zpool_history_unpack(i8*, i64, i64*, i32***, i32*) #2

declare dso_local i32 @free(i8*) #2

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i64 @nvlist_lookup_uint64(i32*, i32, i64*) #2

declare dso_local i64 @nvlist_lookup_string(i32*, i32, i8**) #2

declare dso_local i32 @verify(i32) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i32, i8*) #2

declare dso_local i32 @localtime_r(i64*, %struct.tm*) #2

declare dso_local i32 @strftime(i8*, i32, i8*, %struct.tm*) #2

declare dso_local i32 @dump_nvlist(i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
