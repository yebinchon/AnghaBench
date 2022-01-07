; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_pool.c_zpool_rewind_exclaim.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_pool.c_zpool_rewind_exclaim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.tm = type { i32 }

@ZPOOL_CONFIG_LOAD_INFO = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_REWIND_INFO = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_LOAD_TIME = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_REWIND_TIME = common dso_local global i32 0, align 4
@TEXT_DOMAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"Would be able to return %s to its state as of %s.\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"Pool %s returned to its state as of %s.\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"%s approximately %lld \00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"Would discard\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"Discarded\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"minutes of transactions.\0A\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"seconds of transactions.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i8*, i64, i32*)* @zpool_rewind_exclaim to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zpool_rewind_exclaim(%struct.TYPE_3__* %0, i8* %1, i64 %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.tm, align 4
  %13 = alloca [128 x i8], align 16
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32* %3, i32** %8, align 8
  store i32* null, i32** %9, align 8
  store i32 -1, i32* %11, align 4
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %4
  %19 = load i32*, i32** %8, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %18, %4
  br label %98

22:                                               ; preds = %18
  %23 = load i32*, i32** %8, align 8
  %24 = load i32, i32* @ZPOOL_CONFIG_LOAD_INFO, align 4
  %25 = call i64 @nvlist_lookup_nvlist(i32* %23, i32 %24, i32** %9)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %22
  %28 = load i32*, i32** %9, align 8
  %29 = load i32, i32* @ZPOOL_CONFIG_REWIND_INFO, align 4
  %30 = call i64 @nvlist_lookup_nvlist(i32* %28, i32 %29, i32** %9)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27, %22
  br label %98

33:                                               ; preds = %27
  %34 = load i32*, i32** %9, align 8
  %35 = load i32, i32* @ZPOOL_CONFIG_LOAD_TIME, align 4
  %36 = call i64 @nvlist_lookup_uint64(i32* %34, i32 %35, i32* %10)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  br label %98

39:                                               ; preds = %33
  %40 = load i32*, i32** %9, align 8
  %41 = load i32, i32* @ZPOOL_CONFIG_REWIND_TIME, align 4
  %42 = call i32 @nvlist_lookup_int64(i32* %40, i32 %41, i32* %11)
  %43 = call i32* @localtime_r(i32* %10, %struct.tm* %12)
  %44 = icmp ne i32* %43, null
  br i1 %44, label %45, label %98

45:                                               ; preds = %39
  %46 = getelementptr inbounds [128 x i8], [128 x i8]* %13, i64 0, i64 0
  %47 = call i64 @strftime(i8* %46, i32 128, i32 0, %struct.tm* %12)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %98

49:                                               ; preds = %45
  %50 = load i64, i64* %7, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %49
  %53 = load i32, i32* @TEXT_DOMAIN, align 4
  %54 = call i8* @dgettext(i32 %53, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  %55 = load i8*, i8** %6, align 8
  %56 = getelementptr inbounds [128 x i8], [128 x i8]* %13, i64 0, i64 0
  %57 = call i32 (i8*, ...) @printf(i8* %54, i8* %55, i8* %56)
  br label %64

58:                                               ; preds = %49
  %59 = load i32, i32* @TEXT_DOMAIN, align 4
  %60 = call i8* @dgettext(i32 %59, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %61 = load i8*, i8** %6, align 8
  %62 = getelementptr inbounds [128 x i8], [128 x i8]* %13, i64 0, i64 0
  %63 = call i32 (i8*, ...) @printf(i8* %60, i8* %61, i8* %62)
  br label %64

64:                                               ; preds = %58, %52
  %65 = load i32, i32* %11, align 4
  %66 = icmp sgt i32 %65, 120
  br i1 %66, label %67, label %81

67:                                               ; preds = %64
  %68 = load i32, i32* @TEXT_DOMAIN, align 4
  %69 = call i8* @dgettext(i32 %68, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %70 = load i64, i64* %7, align 8
  %71 = icmp ne i64 %70, 0
  %72 = zext i1 %71 to i64
  %73 = select i1 %71, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0)
  %74 = load i32, i32* %11, align 4
  %75 = add nsw i32 %74, 30
  %76 = sdiv i32 %75, 60
  %77 = call i32 (i8*, ...) @printf(i8* %69, i8* %73, i32 %76)
  %78 = load i32, i32* @TEXT_DOMAIN, align 4
  %79 = call i8* @dgettext(i32 %78, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0))
  %80 = call i32 (i8*, ...) @printf(i8* %79)
  br label %97

81:                                               ; preds = %64
  %82 = load i32, i32* %11, align 4
  %83 = icmp sgt i32 %82, 0
  br i1 %83, label %84, label %96

84:                                               ; preds = %81
  %85 = load i32, i32* @TEXT_DOMAIN, align 4
  %86 = call i8* @dgettext(i32 %85, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %87 = load i64, i64* %7, align 8
  %88 = icmp ne i64 %87, 0
  %89 = zext i1 %88 to i64
  %90 = select i1 %88, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0)
  %91 = load i32, i32* %11, align 4
  %92 = call i32 (i8*, ...) @printf(i8* %86, i8* %90, i32 %91)
  %93 = load i32, i32* @TEXT_DOMAIN, align 4
  %94 = call i8* @dgettext(i32 %93, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0))
  %95 = call i32 (i8*, ...) @printf(i8* %94)
  br label %96

96:                                               ; preds = %84, %81
  br label %97

97:                                               ; preds = %96, %67
  br label %98

98:                                               ; preds = %21, %32, %38, %97, %45, %39
  ret void
}

declare dso_local i64 @nvlist_lookup_nvlist(i32*, i32, i32**) #1

declare dso_local i64 @nvlist_lookup_uint64(i32*, i32, i32*) #1

declare dso_local i32 @nvlist_lookup_int64(i32*, i32, i32*) #1

declare dso_local i32* @localtime_r(i32*, %struct.tm*) #1

declare dso_local i64 @strftime(i8*, i32, i32, %struct.tm*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @dgettext(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
