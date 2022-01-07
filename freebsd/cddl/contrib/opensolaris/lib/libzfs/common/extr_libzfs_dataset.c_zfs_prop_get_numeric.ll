; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_dataset.c_zfs_prop_get_numeric.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_dataset.c_zfs_prop_get_numeric.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }

@EZFS_PROPTYPE = common dso_local global i32 0, align 4
@TEXT_DOMAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"cannot get property '%s'\00", align 1
@ZPROP_SRC_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfs_prop_get_numeric(%struct.TYPE_5__* %0, i32 %1, i32* %2, i32* %3, i8* %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i8* %4, i8** %12, align 8
  store i64 %5, i64* %13, align 8
  %15 = load i32, i32* %9, align 4
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @zfs_prop_valid_for_type(i32 %15, i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %31, label %21

21:                                               ; preds = %6
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @EZFS_PROPTYPE, align 4
  %26 = load i32, i32* @TEXT_DOMAIN, align 4
  %27 = call i32 @dgettext(i32 %26, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* %9, align 4
  %29 = call i32 @zfs_prop_to_name(i32 %28)
  %30 = call i32 @zfs_error_fmt(i32 %24, i32 %25, i32 %27, i32 %29)
  store i32 %30, i32* %7, align 4
  br label %52

31:                                               ; preds = %6
  %32 = load i32*, i32** %11, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %31
  %35 = load i32, i32* @ZPROP_SRC_NONE, align 4
  %36 = load i32*, i32** %11, align 8
  store i32 %35, i32* %36, align 4
  br label %37

37:                                               ; preds = %34, %31
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %39 = load i32, i32* %9, align 4
  %40 = load i32*, i32** %11, align 8
  %41 = load i32*, i32** %10, align 8
  %42 = call i64 @get_numeric_property(%struct.TYPE_5__* %38, i32 %39, i32* %40, i8** %14, i32* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %37
  store i32 -1, i32* %7, align 4
  br label %52

45:                                               ; preds = %37
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %47 = load i32*, i32** %11, align 8
  %48 = load i8*, i8** %14, align 8
  %49 = load i8*, i8** %12, align 8
  %50 = load i64, i64* %13, align 8
  %51 = call i32 @get_source(%struct.TYPE_5__* %46, i32* %47, i8* %48, i8* %49, i64 %50)
  store i32 0, i32* %7, align 4
  br label %52

52:                                               ; preds = %45, %44, %21
  %53 = load i32, i32* %7, align 4
  ret i32 %53
}

declare dso_local i32 @zfs_prop_valid_for_type(i32, i32) #1

declare dso_local i32 @zfs_error_fmt(i32, i32, i32, i32) #1

declare dso_local i32 @dgettext(i32, i8*) #1

declare dso_local i32 @zfs_prop_to_name(i32) #1

declare dso_local i64 @get_numeric_property(%struct.TYPE_5__*, i32, i32*, i8**, i32*) #1

declare dso_local i32 @get_source(%struct.TYPE_5__*, i32*, i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
