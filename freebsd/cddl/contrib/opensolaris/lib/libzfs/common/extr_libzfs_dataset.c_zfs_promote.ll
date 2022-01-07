; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_dataset.c_zfs_promote.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_dataset.c_zfs_promote.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__, i32, i32, i32* }
%struct.TYPE_4__ = type { i8* }

@ZFS_MAX_DATASET_NAME_LEN = common dso_local global i32 0, align 4
@TEXT_DOMAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"cannot promote '%s'\00", align 1
@ZFS_TYPE_SNAPSHOT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"snapshots can not be promoted\00", align 1
@EZFS_BADTYPE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"not a cloned filesystem\00", align 1
@B_TRUE = common dso_local global i32 0, align 4
@EZFS_INVALIDNAME = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [43 x i8] c"conflicting snapshot '%s' from parent '%s'\00", align 1
@EZFS_EXISTS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfs_promote(%struct.TYPE_5__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca [1024 x i8], align 16
  %9 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 3
  %12 = load i32*, i32** %11, align 8
  store i32* %12, i32** %4, align 8
  %13 = load i32, i32* @ZFS_MAX_DATASET_NAME_LEN, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %5, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %6, align 8
  %17 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0
  %18 = load i32, i32* @TEXT_DOMAIN, align 4
  %19 = call i8* @dgettext(i32 %18, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @snprintf(i8* %17, i32 1024, i8* %19, i32 %22)
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @ZFS_TYPE_SNAPSHOT, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %38

29:                                               ; preds = %1
  %30 = load i32*, i32** %4, align 8
  %31 = load i32, i32* @TEXT_DOMAIN, align 4
  %32 = call i8* @dgettext(i32 %31, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %33 = call i32 (i32*, i8*, ...) @zfs_error_aux(i32* %30, i8* %32)
  %34 = load i32*, i32** %4, align 8
  %35 = load i32, i32* @EZFS_BADTYPE, align 4
  %36 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0
  %37 = call i32 @zfs_error(i32* %34, i32 %35, i8* %36)
  store i32 %37, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %102

38:                                               ; preds = %1
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 0
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %56

47:                                               ; preds = %38
  %48 = load i32*, i32** %4, align 8
  %49 = load i32, i32* @TEXT_DOMAIN, align 4
  %50 = call i8* @dgettext(i32 %49, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %51 = call i32 (i32*, i8*, ...) @zfs_error_aux(i32* %48, i8* %50)
  %52 = load i32*, i32** %4, align 8
  %53 = load i32, i32* @EZFS_BADTYPE, align 4
  %54 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0
  %55 = call i32 @zfs_error(i32* %52, i32 %53, i8* %54)
  store i32 %55, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %102

56:                                               ; preds = %38
  %57 = load i32*, i32** %4, align 8
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @B_TRUE, align 4
  %65 = call i32 @zfs_validate_name(i32* %57, i32 %60, i32 %63, i32 %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %72, label %67

67:                                               ; preds = %56
  %68 = load i32*, i32** %4, align 8
  %69 = load i32, i32* @EZFS_INVALIDNAME, align 4
  %70 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0
  %71 = call i32 @zfs_error(i32* %68, i32 %69, i8* %70)
  store i32 %71, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %102

72:                                               ; preds = %56
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = trunc i64 %14 to i32
  %77 = call i32 @lzc_promote(i32 %75, i8* %16, i32 %76)
  store i32 %77, i32* %7, align 4
  %78 = load i32, i32* %7, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %100

80:                                               ; preds = %72
  %81 = load i32, i32* %7, align 4
  switch i32 %81, label %95 [
    i32 128, label %82
  ]

82:                                               ; preds = %80
  %83 = load i32*, i32** %4, align 8
  %84 = load i32, i32* @TEXT_DOMAIN, align 4
  %85 = call i8* @dgettext(i32 %84, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0))
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = load i8*, i8** %88, align 8
  %90 = call i32 (i32*, i8*, ...) @zfs_error_aux(i32* %83, i8* %85, i8* %16, i8* %89)
  %91 = load i32*, i32** %4, align 8
  %92 = load i32, i32* @EZFS_EXISTS, align 4
  %93 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0
  %94 = call i32 @zfs_error(i32* %91, i32 %92, i8* %93)
  store i32 %94, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %102

95:                                               ; preds = %80
  %96 = load i32*, i32** %4, align 8
  %97 = load i32, i32* %7, align 4
  %98 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0
  %99 = call i32 @zfs_standard_error(i32* %96, i32 %97, i8* %98)
  store i32 %99, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %102

100:                                              ; preds = %72
  %101 = load i32, i32* %7, align 4
  store i32 %101, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %102

102:                                              ; preds = %100, %95, %82, %67, %47, %29
  %103 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %103)
  %104 = load i32, i32* %2, align 4
  ret i32 %104
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #2

declare dso_local i8* @dgettext(i32, i8*) #2

declare dso_local i32 @zfs_error_aux(i32*, i8*, ...) #2

declare dso_local i32 @zfs_error(i32*, i32, i8*) #2

declare dso_local i32 @zfs_validate_name(i32*, i32, i32, i32) #2

declare dso_local i32 @lzc_promote(i32, i8*, i32) #2

declare dso_local i32 @zfs_standard_error(i32*, i32, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
