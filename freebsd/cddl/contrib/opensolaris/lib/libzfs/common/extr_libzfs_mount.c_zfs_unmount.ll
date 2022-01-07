; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_mount.c_zfs_unmount.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_mount.c_zfs_unmount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32* }
%struct.mnttab = type { i8* }

@ZFS_TYPE_FILESYSTEM = common dso_local global i64 0, align 8
@share_all_proto = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfs_unmount(%struct.TYPE_6__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.mnttab, align 8
  %10 = alloca i8*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 1
  %13 = load i32*, i32** %12, align 8
  store i32* %13, i32** %8, align 8
  store i8* null, i8** %10, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %28, label %16

16:                                               ; preds = %3
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %18 = call i64 @zfs_get_type(%struct.TYPE_6__* %17)
  %19 = load i64, i64* @ZFS_TYPE_FILESYSTEM, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %66

21:                                               ; preds = %16
  %22 = load i32*, i32** %8, align 8
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i64 @libzfs_mnttab_find(i32* %22, i32 %25, %struct.mnttab* %9)
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %66

28:                                               ; preds = %21, %3
  %29 = load i8*, i8** %6, align 8
  %30 = icmp eq i8* %29, null
  br i1 %30, label %31, label %36

31:                                               ; preds = %28
  %32 = load i32*, i32** %8, align 8
  %33 = getelementptr inbounds %struct.mnttab, %struct.mnttab* %9, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = call i8* @zfs_strdup(i32* %32, i8* %34)
  store i8* %35, i8** %10, align 8
  br label %40

36:                                               ; preds = %28
  %37 = load i32*, i32** %8, align 8
  %38 = load i8*, i8** %6, align 8
  %39 = call i8* @zfs_strdup(i32* %37, i8* %38)
  store i8* %39, i8** %10, align 8
  br label %40

40:                                               ; preds = %36, %31
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %42 = load i8*, i8** %10, align 8
  %43 = load i32, i32* @share_all_proto, align 4
  %44 = call i64 @zfs_unshare_proto(%struct.TYPE_6__* %41, i8* %42, i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  store i32 -1, i32* %4, align 4
  br label %67

47:                                               ; preds = %40
  %48 = load i32*, i32** %8, align 8
  %49 = load i8*, i8** %10, align 8
  %50 = load i32, i32* %7, align 4
  %51 = call i64 @unmount_one(i32* %48, i8* %49, i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %47
  %54 = load i8*, i8** %10, align 8
  %55 = call i32 @free(i8* %54)
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %57 = call i32 @zfs_shareall(%struct.TYPE_6__* %56)
  store i32 -1, i32* %4, align 4
  br label %67

58:                                               ; preds = %47
  %59 = load i32*, i32** %8, align 8
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @libzfs_mnttab_remove(i32* %59, i32 %62)
  %64 = load i8*, i8** %10, align 8
  %65 = call i32 @free(i8* %64)
  br label %66

66:                                               ; preds = %58, %21, %16
  store i32 0, i32* %4, align 4
  br label %67

67:                                               ; preds = %66, %53, %46
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

declare dso_local i64 @zfs_get_type(%struct.TYPE_6__*) #1

declare dso_local i64 @libzfs_mnttab_find(i32*, i32, %struct.mnttab*) #1

declare dso_local i8* @zfs_strdup(i32*, i8*) #1

declare dso_local i64 @zfs_unshare_proto(%struct.TYPE_6__*, i8*, i32) #1

declare dso_local i64 @unmount_one(i32*, i8*, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @zfs_shareall(%struct.TYPE_6__*) #1

declare dso_local i32 @libzfs_mnttab_remove(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
