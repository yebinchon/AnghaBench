; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_mount.c_zpool_enable_datasets.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_mount.c_zpool_enable_datasets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32, i32*, i32 }
%struct.TYPE_9__ = type { i8*, i32, i32, i32 }

@ZFS_TYPE_DATASET = common dso_local global i32 0, align 4
@zfs_iter_cb = common dso_local global i32 0, align 4
@zfs_mount_one = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i32 0, align 4
@zfs_share_one = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zpool_enable_datasets(%struct.TYPE_8__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_10__, align 8
  %8 = alloca %struct.TYPE_9__, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = bitcast %struct.TYPE_10__* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %12, i8 0, i64 24, i1 false)
  %13 = bitcast %struct.TYPE_9__* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %13, i8 0, i64 24, i1 false)
  store i32 0, i32* %10, align 4
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @ZFS_TYPE_DATASET, align 4
  %21 = call i32* @zfs_open(i32 %16, i32 %19, i32 %20)
  store i32* %21, i32** %9, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %3
  br label %72

24:                                               ; preds = %3
  %25 = load i32*, i32** %9, align 8
  %26 = call i32 @libzfs_add_handle(%struct.TYPE_10__* %7, i32* %25)
  %27 = load i32*, i32** %9, align 8
  %28 = load i32, i32* @zfs_iter_cb, align 4
  %29 = call i64 @zfs_iter_filesystems(i32* %27, i32 %28, %struct.TYPE_10__* %7)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  br label %72

32:                                               ; preds = %24
  %33 = load i8*, i8** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  store i8* %33, i8** %34, align 8
  %35 = load i32, i32* %6, align 4
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 1
  store i32 %35, i32* %36, align 8
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @zfs_mount_one, align 4
  %45 = load i32, i32* @B_TRUE, align 4
  %46 = call i32 @zfs_foreach_mountpoint(i32 %39, i32* %41, i32 %43, i32 %44, %struct.TYPE_9__* %8, i32 %45)
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %32
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %10, align 4
  br label %53

53:                                               ; preds = %50, %32
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 2
  store i32 0, i32* %54, align 4
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @zfs_share_one, align 4
  %63 = load i32, i32* @B_FALSE, align 4
  %64 = call i32 @zfs_foreach_mountpoint(i32 %57, i32* %59, i32 %61, i32 %62, %struct.TYPE_9__* %8, i32 %63)
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %53
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* %10, align 4
  br label %71

71:                                               ; preds = %68, %53
  br label %72

72:                                               ; preds = %71, %31, %23
  store i32 0, i32* %11, align 4
  br label %73

73:                                               ; preds = %86, %72
  %74 = load i32, i32* %11, align 4
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = icmp slt i32 %74, %76
  br i1 %77, label %78, label %89

78:                                               ; preds = %73
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 1
  %80 = load i32*, i32** %79, align 8
  %81 = load i32, i32* %11, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @zfs_close(i32 %84)
  br label %86

86:                                               ; preds = %78
  %87 = load i32, i32* %11, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %11, align 4
  br label %73

89:                                               ; preds = %73
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 1
  %91 = load i32*, i32** %90, align 8
  %92 = call i32 @free(i32* %91)
  %93 = load i32, i32* %10, align 4
  ret i32 %93
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32* @zfs_open(i32, i32, i32) #2

declare dso_local i32 @libzfs_add_handle(%struct.TYPE_10__*, i32*) #2

declare dso_local i64 @zfs_iter_filesystems(i32*, i32, %struct.TYPE_10__*) #2

declare dso_local i32 @zfs_foreach_mountpoint(i32, i32*, i32, i32, %struct.TYPE_9__*, i32) #2

declare dso_local i32 @zfs_close(i32) #2

declare dso_local i32 @free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
