; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_dataset.c_zfs_hold_nvl.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_dataset.c_zfs_hold_nvl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32* }

@TEXT_DOMAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"cannot hold\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"pool must be upgraded\00", align 1
@EZFS_BADVERSION = common dso_local global i32 0, align 4
@EZFS_BADTYPE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"cannot hold snapshot '%s'\00", align 1
@EZFS_TAGTOOLONG = common dso_local global i32 0, align 4
@EZFS_REFTAG_HOLD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfs_hold_nvl(%struct.TYPE_3__* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca [1024 x i8], align 16
  %12 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %10, align 8
  store i32* null, i32** %9, align 8
  %16 = load i32*, i32** %7, align 8
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @lzc_hold(i32* %16, i32 %17, i32** %9)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %3
  %22 = load i32*, i32** %9, align 8
  %23 = call i32 @fnvlist_free(i32* %22)
  store i32 0, i32* %4, align 4
  br label %99

24:                                               ; preds = %3
  %25 = load i32*, i32** %9, align 8
  %26 = call i64 @nvlist_empty(i32* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %54

28:                                               ; preds = %24
  %29 = getelementptr inbounds [1024 x i8], [1024 x i8]* %11, i64 0, i64 0
  %30 = load i32, i32* @TEXT_DOMAIN, align 4
  %31 = call i8* @dgettext(i32 %30, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %32 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %29, i32 1024, i8* %31)
  %33 = load i32, i32* %8, align 4
  switch i32 %33, label %48 [
    i32 128, label %34
    i32 129, label %43
  ]

34:                                               ; preds = %28
  %35 = load i32*, i32** %10, align 8
  %36 = load i32, i32* @TEXT_DOMAIN, align 4
  %37 = call i8* @dgettext(i32 %36, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %38 = call i32 @zfs_error_aux(i32* %35, i8* %37)
  %39 = load i32*, i32** %10, align 8
  %40 = load i32, i32* @EZFS_BADVERSION, align 4
  %41 = getelementptr inbounds [1024 x i8], [1024 x i8]* %11, i64 0, i64 0
  %42 = call i32 @zfs_error(i32* %39, i32 %40, i8* %41)
  br label %53

43:                                               ; preds = %28
  %44 = load i32*, i32** %10, align 8
  %45 = load i32, i32* @EZFS_BADTYPE, align 4
  %46 = getelementptr inbounds [1024 x i8], [1024 x i8]* %11, i64 0, i64 0
  %47 = call i32 @zfs_error(i32* %44, i32 %45, i8* %46)
  br label %53

48:                                               ; preds = %28
  %49 = load i32*, i32** %10, align 8
  %50 = load i32, i32* %8, align 4
  %51 = getelementptr inbounds [1024 x i8], [1024 x i8]* %11, i64 0, i64 0
  %52 = call i32 @zfs_standard_error(i32* %49, i32 %50, i8* %51)
  br label %53

53:                                               ; preds = %48, %43, %34
  br label %54

54:                                               ; preds = %53, %24
  %55 = load i32*, i32** %9, align 8
  %56 = call i32* @nvlist_next_nvpair(i32* %55, i32* null)
  store i32* %56, i32** %12, align 8
  br label %57

57:                                               ; preds = %91, %54
  %58 = load i32*, i32** %12, align 8
  %59 = icmp ne i32* %58, null
  br i1 %59, label %60, label %95

60:                                               ; preds = %57
  %61 = getelementptr inbounds [1024 x i8], [1024 x i8]* %11, i64 0, i64 0
  %62 = load i32, i32* @TEXT_DOMAIN, align 4
  %63 = call i8* @dgettext(i32 %62, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %64 = load i32*, i32** %12, align 8
  %65 = call i32 @nvpair_name(i32* %64)
  %66 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %61, i32 1024, i8* %63, i32 %65)
  %67 = load i32*, i32** %12, align 8
  %68 = call i32 @fnvpair_value_int32(i32* %67)
  switch i32 %68, label %84 [
    i32 131, label %69
    i32 129, label %74
    i32 130, label %79
  ]

69:                                               ; preds = %60
  %70 = load i32*, i32** %10, align 8
  %71 = load i32, i32* @EZFS_TAGTOOLONG, align 4
  %72 = getelementptr inbounds [1024 x i8], [1024 x i8]* %11, i64 0, i64 0
  %73 = call i32 @zfs_error(i32* %70, i32 %71, i8* %72)
  br label %90

74:                                               ; preds = %60
  %75 = load i32*, i32** %10, align 8
  %76 = load i32, i32* @EZFS_BADTYPE, align 4
  %77 = getelementptr inbounds [1024 x i8], [1024 x i8]* %11, i64 0, i64 0
  %78 = call i32 @zfs_error(i32* %75, i32 %76, i8* %77)
  br label %90

79:                                               ; preds = %60
  %80 = load i32*, i32** %10, align 8
  %81 = load i32, i32* @EZFS_REFTAG_HOLD, align 4
  %82 = getelementptr inbounds [1024 x i8], [1024 x i8]* %11, i64 0, i64 0
  %83 = call i32 @zfs_error(i32* %80, i32 %81, i8* %82)
  br label %90

84:                                               ; preds = %60
  %85 = load i32*, i32** %10, align 8
  %86 = load i32*, i32** %12, align 8
  %87 = call i32 @fnvpair_value_int32(i32* %86)
  %88 = getelementptr inbounds [1024 x i8], [1024 x i8]* %11, i64 0, i64 0
  %89 = call i32 @zfs_standard_error(i32* %85, i32 %87, i8* %88)
  br label %90

90:                                               ; preds = %84, %79, %74, %69
  br label %91

91:                                               ; preds = %90
  %92 = load i32*, i32** %9, align 8
  %93 = load i32*, i32** %12, align 8
  %94 = call i32* @nvlist_next_nvpair(i32* %92, i32* %93)
  store i32* %94, i32** %12, align 8
  br label %57

95:                                               ; preds = %57
  %96 = load i32*, i32** %9, align 8
  %97 = call i32 @fnvlist_free(i32* %96)
  %98 = load i32, i32* %8, align 4
  store i32 %98, i32* %4, align 4
  br label %99

99:                                               ; preds = %95, %21
  %100 = load i32, i32* %4, align 4
  ret i32 %100
}

declare dso_local i32 @lzc_hold(i32*, i32, i32**) #1

declare dso_local i32 @fnvlist_free(i32*) #1

declare dso_local i64 @nvlist_empty(i32*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #1

declare dso_local i8* @dgettext(i32, i8*) #1

declare dso_local i32 @zfs_error_aux(i32*, i8*) #1

declare dso_local i32 @zfs_error(i32*, i32, i8*) #1

declare dso_local i32 @zfs_standard_error(i32*, i32, i8*) #1

declare dso_local i32* @nvlist_next_nvpair(i32*, i32*) #1

declare dso_local i32 @nvpair_name(i32*) #1

declare dso_local i32 @fnvpair_value_int32(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
