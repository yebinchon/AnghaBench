; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_dataset.c_zfs_destroy.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_dataset.c_zfs_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32, i32 }

@ZFS_TYPE_SNAPSHOT = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ZFS_TYPE_BOOKMARK = common dso_local global i64 0, align 8
@TEXT_DOMAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"cannot destroy '%s'\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfs_destroy(%struct.TYPE_4__* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @ZFS_TYPE_SNAPSHOT, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %19

14:                                               ; preds = %2
  %15 = load i64, i64* %5, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  %18 = load i32, i32* @EINVAL, align 4
  store i32 %18, i32* %3, align 4
  br label %94

19:                                               ; preds = %14, %2
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @ZFS_TYPE_BOOKMARK, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %50

25:                                               ; preds = %19
  %26 = call i32* (...) @fnvlist_alloc()
  store i32* %26, i32** %7, align 8
  %27 = load i32*, i32** %7, align 8
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @fnvlist_add_boolean(i32* %27, i32 %30)
  %32 = load i32*, i32** %7, align 8
  %33 = call i32 @lzc_destroy_bookmarks(i32* %32, i32* null)
  store i32 %33, i32* %6, align 4
  %34 = load i32*, i32** %7, align 8
  %35 = call i32 @fnvlist_free(i32* %34)
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %49

38:                                               ; preds = %25
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @TEXT_DOMAIN, align 4
  %44 = call i32 @dgettext(i32 %43, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @zfs_standard_error_fmt(i32 %41, i32 %42, i32 %44, i32 %47)
  store i32 %48, i32* %3, align 4
  br label %94

49:                                               ; preds = %25
  store i32 0, i32* %3, align 4
  br label %94

50:                                               ; preds = %19
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @ZFS_TYPE_SNAPSHOT, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %68

56:                                               ; preds = %50
  %57 = call i32* (...) @fnvlist_alloc()
  store i32* %57, i32** %8, align 8
  %58 = load i32*, i32** %8, align 8
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @fnvlist_add_boolean(i32* %58, i32 %61)
  %63 = load i32*, i32** %8, align 8
  %64 = load i64, i64* %5, align 8
  %65 = call i32 @lzc_destroy_snaps(i32* %63, i64 %64, i32* null)
  store i32 %65, i32* %6, align 4
  %66 = load i32*, i32** %8, align 8
  %67 = call i32 @fnvlist_free(i32* %66)
  br label %73

68:                                               ; preds = %50
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @lzc_destroy(i32 %71)
  store i32 %72, i32* %6, align 4
  br label %73

73:                                               ; preds = %68, %56
  %74 = load i32, i32* %6, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %91

76:                                               ; preds = %73
  %77 = load i32, i32* %6, align 4
  %78 = load i32, i32* @ENOENT, align 4
  %79 = icmp ne i32 %77, %78
  br i1 %79, label %80, label %91

80:                                               ; preds = %76
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @errno, align 4
  %85 = load i32, i32* @TEXT_DOMAIN, align 4
  %86 = call i32 @dgettext(i32 %85, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @zfs_standard_error_fmt(i32 %83, i32 %84, i32 %86, i32 %89)
  store i32 %90, i32* %3, align 4
  br label %94

91:                                               ; preds = %76, %73
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %93 = call i32 @remove_mountpoint(%struct.TYPE_4__* %92)
  store i32 0, i32* %3, align 4
  br label %94

94:                                               ; preds = %91, %80, %49, %38, %17
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

declare dso_local i32* @fnvlist_alloc(...) #1

declare dso_local i32 @fnvlist_add_boolean(i32*, i32) #1

declare dso_local i32 @lzc_destroy_bookmarks(i32*, i32*) #1

declare dso_local i32 @fnvlist_free(i32*) #1

declare dso_local i32 @zfs_standard_error_fmt(i32, i32, i32, i32) #1

declare dso_local i32 @dgettext(i32, i8*) #1

declare dso_local i32 @lzc_destroy_snaps(i32*, i64, i32*) #1

declare dso_local i32 @lzc_destroy(i32) #1

declare dso_local i32 @remove_mountpoint(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
