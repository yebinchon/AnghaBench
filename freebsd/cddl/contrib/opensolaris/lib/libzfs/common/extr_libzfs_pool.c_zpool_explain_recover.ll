; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_pool.c_zpool_explain_recover.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_pool.c_zpool_explain_recover.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.tm = type { i32 }

@UINT64_MAX = common dso_local global i32 0, align 4
@TEXT_DOMAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"action: \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\09\00", align 1
@ZPOOL_CONFIG_LOAD_INFO = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_REWIND_INFO = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_LOAD_TIME = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_REWIND_TIME = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_LOAD_DATA_ERRORS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [58 x i8] c"Recovery is possible, but will result in some data loss.\0A\00", align 1
@.str.3 = private unnamed_addr constant [73 x i8] c"\09Returning the pool to its state as of %s\0A\09should correct the problem.  \00", align 1
@.str.4 = private unnamed_addr constant [70 x i8] c"\09Reverting the pool to an earlier state should correct the problem.\0A\09\00", align 1
@.str.5 = private unnamed_addr constant [71 x i8] c"Approximately %lld minutes of data\0A\09must be discarded, irreversibly.  \00", align 1
@.str.6 = private unnamed_addr constant [71 x i8] c"Approximately %lld seconds of data\0A\09must be discarded, irreversibly.  \00", align 1
@.str.7 = private unnamed_addr constant [70 x i8] c"After rewind, at least\0A\09one persistent user-data error will remain.  \00", align 1
@.str.8 = private unnamed_addr constant [66 x i8] c"After rewind, several\0A\09persistent user-data errors will remain.  \00", align 1
@.str.9 = private unnamed_addr constant [60 x i8] c"Recovery can be attempted\0A\09by executing 'zpool %s -F %s'.  \00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"clear\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"import\00", align 1
@.str.12 = private unnamed_addr constant [62 x i8] c"A scrub of the pool\0A\09is strongly recommended after recovery.\0A\00", align 1
@.str.13 = private unnamed_addr constant [55 x i8] c"Destroy and re-create the pool from\0A\09a backup source.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zpool_explain_recover(%struct.TYPE_3__* %0, i8* %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.tm, align 4
  %14 = alloca [128 x i8], align 16
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  store i32* null, i32** %9, align 8
  store i32 -1, i32* %10, align 4
  %15 = load i32, i32* @UINT64_MAX, align 4
  store i32 %15, i32* %11, align 4
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %4
  br label %127

21:                                               ; preds = %4
  %22 = load i32, i32* %7, align 4
  %23 = icmp sge i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %21
  %25 = load i32, i32* @TEXT_DOMAIN, align 4
  %26 = call i8* @dgettext(i32 %25, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %27 = call i32 (i8*, ...) @printf(i8* %26)
  br label %32

28:                                               ; preds = %21
  %29 = load i32, i32* @TEXT_DOMAIN, align 4
  %30 = call i8* @dgettext(i32 %29, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %31 = call i32 (i8*, ...) @printf(i8* %30)
  br label %32

32:                                               ; preds = %28, %24
  %33 = load i32*, i32** %8, align 8
  %34 = load i32, i32* @ZPOOL_CONFIG_LOAD_INFO, align 4
  %35 = call i64 @nvlist_lookup_nvlist(i32* %33, i32 %34, i32** %9)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %47, label %37

37:                                               ; preds = %32
  %38 = load i32*, i32** %9, align 8
  %39 = load i32, i32* @ZPOOL_CONFIG_REWIND_INFO, align 4
  %40 = call i64 @nvlist_lookup_nvlist(i32* %38, i32 %39, i32** %9)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %47, label %42

42:                                               ; preds = %37
  %43 = load i32*, i32** %9, align 8
  %44 = load i32, i32* @ZPOOL_CONFIG_LOAD_TIME, align 4
  %45 = call i64 @nvlist_lookup_uint64(i32* %43, i32 %44, i32* %12)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %42, %37, %32
  br label %123

48:                                               ; preds = %42
  %49 = load i32*, i32** %9, align 8
  %50 = load i32, i32* @ZPOOL_CONFIG_REWIND_TIME, align 4
  %51 = call i32 @nvlist_lookup_int64(i32* %49, i32 %50, i32* %10)
  %52 = load i32*, i32** %9, align 8
  %53 = load i32, i32* @ZPOOL_CONFIG_LOAD_DATA_ERRORS, align 4
  %54 = call i64 @nvlist_lookup_uint64(i32* %52, i32 %53, i32* %11)
  %55 = load i32, i32* @TEXT_DOMAIN, align 4
  %56 = call i8* @dgettext(i32 %55, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.2, i64 0, i64 0))
  %57 = call i32 (i8*, ...) @printf(i8* %56)
  %58 = call i32* @localtime_r(i32* %12, %struct.tm* %13)
  %59 = icmp ne i32* %58, null
  br i1 %59, label %60, label %69

60:                                               ; preds = %48
  %61 = getelementptr inbounds [128 x i8], [128 x i8]* %14, i64 0, i64 0
  %62 = call i64 @strftime(i8* %61, i32 128, i32 0, %struct.tm* %13)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %60
  %65 = load i32, i32* @TEXT_DOMAIN, align 4
  %66 = call i8* @dgettext(i32 %65, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.3, i64 0, i64 0))
  %67 = getelementptr inbounds [128 x i8], [128 x i8]* %14, i64 0, i64 0
  %68 = call i32 (i8*, ...) @printf(i8* %66, i8* %67)
  br label %73

69:                                               ; preds = %60, %48
  %70 = load i32, i32* @TEXT_DOMAIN, align 4
  %71 = call i8* @dgettext(i32 %70, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.4, i64 0, i64 0))
  %72 = call i32 (i8*, ...) @printf(i8* %71)
  br label %73

73:                                               ; preds = %69, %64
  %74 = load i32, i32* %10, align 4
  %75 = icmp sgt i32 %74, 120
  br i1 %75, label %76, label %83

76:                                               ; preds = %73
  %77 = load i32, i32* @TEXT_DOMAIN, align 4
  %78 = call i8* @dgettext(i32 %77, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.5, i64 0, i64 0))
  %79 = load i32, i32* %10, align 4
  %80 = add nsw i32 %79, 30
  %81 = sdiv i32 %80, 60
  %82 = call i32 (i8*, ...) @printf(i8* %78, i32 %81)
  br label %92

83:                                               ; preds = %73
  %84 = load i32, i32* %10, align 4
  %85 = icmp sgt i32 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %83
  %87 = load i32, i32* @TEXT_DOMAIN, align 4
  %88 = call i8* @dgettext(i32 %87, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.6, i64 0, i64 0))
  %89 = load i32, i32* %10, align 4
  %90 = call i32 (i8*, ...) @printf(i8* %88, i32 %89)
  br label %91

91:                                               ; preds = %86, %83
  br label %92

92:                                               ; preds = %91, %76
  %93 = load i32, i32* %11, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %111

95:                                               ; preds = %92
  %96 = load i32, i32* %11, align 4
  %97 = load i32, i32* @UINT64_MAX, align 4
  %98 = icmp ne i32 %96, %97
  br i1 %98, label %99, label %111

99:                                               ; preds = %95
  %100 = load i32, i32* %11, align 4
  %101 = icmp eq i32 %100, 1
  br i1 %101, label %102, label %106

102:                                              ; preds = %99
  %103 = load i32, i32* @TEXT_DOMAIN, align 4
  %104 = call i8* @dgettext(i32 %103, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.7, i64 0, i64 0))
  %105 = call i32 (i8*, ...) @printf(i8* %104)
  br label %110

106:                                              ; preds = %99
  %107 = load i32, i32* @TEXT_DOMAIN, align 4
  %108 = call i8* @dgettext(i32 %107, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.8, i64 0, i64 0))
  %109 = call i32 (i8*, ...) @printf(i8* %108)
  br label %110

110:                                              ; preds = %106, %102
  br label %111

111:                                              ; preds = %110, %95, %92
  %112 = load i32, i32* @TEXT_DOMAIN, align 4
  %113 = call i8* @dgettext(i32 %112, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.9, i64 0, i64 0))
  %114 = load i32, i32* %7, align 4
  %115 = icmp sge i32 %114, 0
  %116 = zext i1 %115 to i64
  %117 = select i1 %115, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0)
  %118 = load i8*, i8** %6, align 8
  %119 = call i32 (i8*, ...) @printf(i8* %113, i8* %117, i8* %118)
  %120 = load i32, i32* @TEXT_DOMAIN, align 4
  %121 = call i8* @dgettext(i32 %120, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.12, i64 0, i64 0))
  %122 = call i32 (i8*, ...) @printf(i8* %121)
  br label %127

123:                                              ; preds = %47
  %124 = load i32, i32* @TEXT_DOMAIN, align 4
  %125 = call i8* @dgettext(i32 %124, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.13, i64 0, i64 0))
  %126 = call i32 (i8*, ...) @printf(i8* %125)
  br label %127

127:                                              ; preds = %123, %111, %20
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @dgettext(i32, i8*) #1

declare dso_local i64 @nvlist_lookup_nvlist(i32*, i32, i32**) #1

declare dso_local i64 @nvlist_lookup_uint64(i32*, i32, i32*) #1

declare dso_local i32 @nvlist_lookup_int64(i32*, i32, i32*) #1

declare dso_local i32* @localtime_r(i32*, %struct.tm*) #1

declare dso_local i64 @strftime(i8*, i32, i32, %struct.tm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
