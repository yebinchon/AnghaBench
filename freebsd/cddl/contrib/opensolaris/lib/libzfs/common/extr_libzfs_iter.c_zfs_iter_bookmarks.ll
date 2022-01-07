; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_iter.c_zfs_iter_bookmarks.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_iter.c_zfs_iter_bookmarks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i8* }

@ZFS_TYPE_SNAPSHOT = common dso_local global i32 0, align 4
@ZFS_TYPE_BOOKMARK = common dso_local global i32 0, align 4
@ZFS_PROP_GUID = common dso_local global i32 0, align 4
@ZFS_PROP_CREATETXG = common dso_local global i32 0, align 4
@ZFS_PROP_CREATION = common dso_local global i32 0, align 4
@ZFS_MAX_DATASET_NAME_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s#%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfs_iter_bookmarks(%struct.TYPE_8__* %0, i32 (%struct.TYPE_8__*, i8*)* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32 (%struct.TYPE_8__*, i8*)*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i32 (%struct.TYPE_8__*, i8*)* %1, i32 (%struct.TYPE_8__*, i8*)** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32* null, i32** %9, align 8
  store i32* null, i32** %10, align 8
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %19 = call i32 @zfs_get_type(%struct.TYPE_8__* %18)
  %20 = load i32, i32* @ZFS_TYPE_SNAPSHOT, align 4
  %21 = load i32, i32* @ZFS_TYPE_BOOKMARK, align 4
  %22 = or i32 %20, %21
  %23 = and i32 %19, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %97

26:                                               ; preds = %3
  %27 = call i32* (...) @fnvlist_alloc()
  store i32* %27, i32** %9, align 8
  %28 = load i32*, i32** %9, align 8
  %29 = load i32, i32* @ZFS_PROP_GUID, align 4
  %30 = call i32 @zfs_prop_to_name(i32 %29)
  %31 = call i32 @fnvlist_add_boolean(i32* %28, i32 %30)
  %32 = load i32*, i32** %9, align 8
  %33 = load i32, i32* @ZFS_PROP_CREATETXG, align 4
  %34 = call i32 @zfs_prop_to_name(i32 %33)
  %35 = call i32 @fnvlist_add_boolean(i32* %32, i32 %34)
  %36 = load i32*, i32** %9, align 8
  %37 = load i32, i32* @ZFS_PROP_CREATION, align 4
  %38 = call i32 @zfs_prop_to_name(i32 %37)
  %39 = call i32 @fnvlist_add_boolean(i32* %36, i32 %38)
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = load i32*, i32** %9, align 8
  %44 = call i32 @lzc_get_bookmarks(i8* %42, i32* %43, i32** %10)
  store i32 %44, i32* %11, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %26
  br label %91

47:                                               ; preds = %26
  %48 = load i32*, i32** %10, align 8
  %49 = call i32* @nvlist_next_nvpair(i32* %48, i32* null)
  store i32* %49, i32** %12, align 8
  br label %50

50:                                               ; preds = %86, %47
  %51 = load i32*, i32** %12, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %53, label %90

53:                                               ; preds = %50
  %54 = load i32, i32* @ZFS_MAX_DATASET_NAME_LEN, align 4
  %55 = zext i32 %54 to i64
  %56 = call i8* @llvm.stacksave()
  store i8* %56, i8** %13, align 8
  %57 = alloca i8, i64 %55, align 16
  store i64 %55, i64* %14, align 8
  %58 = load i32*, i32** %12, align 8
  %59 = call i8* @nvpair_name(i32* %58)
  store i8* %59, i8** %15, align 8
  %60 = load i32*, i32** %12, align 8
  %61 = call i32* @fnvpair_value_nvlist(i32* %60)
  store i32* %61, i32** %16, align 8
  %62 = trunc i64 %55 to i32
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  %65 = load i8*, i8** %64, align 8
  %66 = load i8*, i8** %15, align 8
  %67 = call i32 @snprintf(i8* %57, i32 %62, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %65, i8* %66)
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %69 = load i32*, i32** %16, align 8
  %70 = call %struct.TYPE_8__* @make_bookmark_handle(%struct.TYPE_8__* %68, i8* %57, i32* %69)
  store %struct.TYPE_8__* %70, %struct.TYPE_8__** %8, align 8
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %72 = icmp eq %struct.TYPE_8__* %71, null
  br i1 %72, label %73, label %74

73:                                               ; preds = %53
  store i32 5, i32* %17, align 4
  br label %82

74:                                               ; preds = %53
  %75 = load i32 (%struct.TYPE_8__*, i8*)*, i32 (%struct.TYPE_8__*, i8*)** %6, align 8
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %77 = load i8*, i8** %7, align 8
  %78 = call i32 %75(%struct.TYPE_8__* %76, i8* %77)
  store i32 %78, i32* %11, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %74
  store i32 2, i32* %17, align 4
  br label %82

81:                                               ; preds = %74
  store i32 0, i32* %17, align 4
  br label %82

82:                                               ; preds = %80, %81, %73
  %83 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %83)
  %84 = load i32, i32* %17, align 4
  switch i32 %84, label %99 [
    i32 0, label %85
    i32 5, label %86
    i32 2, label %91
  ]

85:                                               ; preds = %82
  br label %86

86:                                               ; preds = %85, %82
  %87 = load i32*, i32** %10, align 8
  %88 = load i32*, i32** %12, align 8
  %89 = call i32* @nvlist_next_nvpair(i32* %87, i32* %88)
  store i32* %89, i32** %12, align 8
  br label %50

90:                                               ; preds = %50
  br label %91

91:                                               ; preds = %90, %82, %46
  %92 = load i32*, i32** %9, align 8
  %93 = call i32 @fnvlist_free(i32* %92)
  %94 = load i32*, i32** %10, align 8
  %95 = call i32 @fnvlist_free(i32* %94)
  %96 = load i32, i32* %11, align 4
  store i32 %96, i32* %4, align 4
  br label %97

97:                                               ; preds = %91, %25
  %98 = load i32, i32* %4, align 4
  ret i32 %98

99:                                               ; preds = %82
  unreachable
}

declare dso_local i32 @zfs_get_type(%struct.TYPE_8__*) #1

declare dso_local i32* @fnvlist_alloc(...) #1

declare dso_local i32 @fnvlist_add_boolean(i32*, i32) #1

declare dso_local i32 @zfs_prop_to_name(i32) #1

declare dso_local i32 @lzc_get_bookmarks(i8*, i32*, i32**) #1

declare dso_local i32* @nvlist_next_nvpair(i32*, i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i8* @nvpair_name(i32*) #1

declare dso_local i32* @fnvpair_value_nvlist(i32*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #1

declare dso_local %struct.TYPE_8__* @make_bookmark_handle(%struct.TYPE_8__*, i8*, i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @fnvlist_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
