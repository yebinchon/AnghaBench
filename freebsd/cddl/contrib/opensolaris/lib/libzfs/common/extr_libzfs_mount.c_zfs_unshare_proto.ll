; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_mount.c_zfs_unshare_proto.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_mount.c_zfs_unshare_proto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }
%struct.mnttab = type { i8* }

@ZFS_TYPE_FILESYSTEM = common dso_local global i64 0, align 8
@PROTO_END = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfs_unshare_proto(%struct.TYPE_10__* %0, i8* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca %struct.mnttab, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64* %2, i64** %7, align 8
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  store %struct.TYPE_11__* %14, %struct.TYPE_11__** %8, align 8
  store i8* null, i8** %10, align 8
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @rewind(i32 %19)
  %21 = load i8*, i8** %6, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %3
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %25 = load i8*, i8** %6, align 8
  %26 = call i8* @zfs_strdup(%struct.TYPE_11__* %24, i8* %25)
  store i8* %26, i8** %10, align 8
  store i8* %26, i8** %6, align 8
  br label %27

27:                                               ; preds = %23, %3
  %28 = load i8*, i8** %6, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %41, label %30

30:                                               ; preds = %27
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %32 = call i64 @zfs_get_type(%struct.TYPE_10__* %31)
  %33 = load i64, i64* @ZFS_TYPE_FILESYSTEM, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %87

35:                                               ; preds = %30
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %38 = call i32 @zfs_get_name(%struct.TYPE_10__* %37)
  %39 = call i64 @libzfs_mnttab_find(%struct.TYPE_11__* %36, i32 %38, %struct.mnttab* %9)
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %87

41:                                               ; preds = %35, %27
  %42 = load i8*, i8** %6, align 8
  %43 = icmp eq i8* %42, null
  br i1 %43, label %44, label %51

44:                                               ; preds = %41
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 1
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %46, align 8
  %48 = getelementptr inbounds %struct.mnttab, %struct.mnttab* %9, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = call i8* @zfs_strdup(%struct.TYPE_11__* %47, i8* %49)
  store i8* %50, i8** %10, align 8
  br label %51

51:                                               ; preds = %44, %41
  %52 = load i64*, i64** %7, align 8
  store i64* %52, i64** %11, align 8
  br label %53

53:                                               ; preds = %83, %51
  %54 = load i64*, i64** %11, align 8
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @PROTO_END, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %86

58:                                               ; preds = %53
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %60 = load i8*, i8** %10, align 8
  %61 = load i64*, i64** %11, align 8
  %62 = load i64, i64* %61, align 8
  %63 = call i64 @is_shared(%struct.TYPE_11__* %59, i8* %60, i64 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %82

65:                                               ; preds = %58
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i8*, i8** %10, align 8
  %71 = load i64*, i64** %11, align 8
  %72 = load i64, i64* %71, align 8
  %73 = call i64 @unshare_one(%struct.TYPE_11__* %66, i32 %69, i8* %70, i64 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %82

75:                                               ; preds = %65
  %76 = load i8*, i8** %10, align 8
  %77 = icmp ne i8* %76, null
  br i1 %77, label %78, label %81

78:                                               ; preds = %75
  %79 = load i8*, i8** %10, align 8
  %80 = call i32 @free(i8* %79)
  br label %81

81:                                               ; preds = %78, %75
  store i32 -1, i32* %4, align 4
  br label %94

82:                                               ; preds = %65, %58
  br label %83

83:                                               ; preds = %82
  %84 = load i64*, i64** %11, align 8
  %85 = getelementptr inbounds i64, i64* %84, i32 1
  store i64* %85, i64** %11, align 8
  br label %53

86:                                               ; preds = %53
  br label %87

87:                                               ; preds = %86, %35, %30
  %88 = load i8*, i8** %10, align 8
  %89 = icmp ne i8* %88, null
  br i1 %89, label %90, label %93

90:                                               ; preds = %87
  %91 = load i8*, i8** %10, align 8
  %92 = call i32 @free(i8* %91)
  br label %93

93:                                               ; preds = %90, %87
  store i32 0, i32* %4, align 4
  br label %94

94:                                               ; preds = %93, %81
  %95 = load i32, i32* %4, align 4
  ret i32 %95
}

declare dso_local i32 @rewind(i32) #1

declare dso_local i8* @zfs_strdup(%struct.TYPE_11__*, i8*) #1

declare dso_local i64 @zfs_get_type(%struct.TYPE_10__*) #1

declare dso_local i64 @libzfs_mnttab_find(%struct.TYPE_11__*, i32, %struct.mnttab*) #1

declare dso_local i32 @zfs_get_name(%struct.TYPE_10__*) #1

declare dso_local i64 @is_shared(%struct.TYPE_11__*, i8*, i64) #1

declare dso_local i64 @unshare_one(%struct.TYPE_11__*, i32, i8*, i64) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
