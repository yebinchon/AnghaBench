; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_compat.c_zcmd_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_compat.c_zcmd_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }

@ZFS_CMD_COMPAT_NONE = common dso_local global i32 0, align 4
@zfs_ioctl_version = common dso_local global i32 0, align 4
@ZFS_IOCVER_UNDEF = common dso_local global i32 0, align 4
@ZFS_CMD_COMPAT_INLANES = common dso_local global i32 0, align 4
@ZFS_CMD_COMPAT_RESUME = common dso_local global i32 0, align 4
@ZFS_CMD_COMPAT_EDBP = common dso_local global i32 0, align 4
@ZFS_CMD_COMPAT_ZCMD = common dso_local global i32 0, align 4
@ZFS_CMD_COMPAT_LZC = common dso_local global i32 0, align 4
@ZFS_CMD_COMPAT_DEADMAN = common dso_local global i32 0, align 4
@ZFS_CMD_COMPAT_V28 = common dso_local global i32 0, align 4
@zfs_spa_version = common dso_local global i64 0, align 8
@SPA_VERSION_15 = common dso_local global i64 0, align 8
@SPA_VERSION_14 = common dso_local global i64 0, align 8
@SPA_VERSION_13 = common dso_local global i64 0, align 8
@ZFS_CMD_COMPAT_V15 = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zcmd_ioctl(i32 %0, i32 %1, %struct.TYPE_4__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store %struct.TYPE_4__* %2, %struct.TYPE_4__** %6, align 8
  %10 = load i32, i32* @ZFS_CMD_COMPAT_NONE, align 4
  store i32 %10, i32* %9, align 4
  %11 = load i32, i32* @zfs_ioctl_version, align 4
  %12 = load i32, i32* @ZFS_IOCVER_UNDEF, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = call i32 (...) @get_zfs_ioctl_version()
  store i32 %15, i32* @zfs_ioctl_version, align 4
  br label %16

16:                                               ; preds = %14, %3
  %17 = load i32, i32* @zfs_ioctl_version, align 4
  %18 = icmp sge i32 %17, 133
  br i1 %18, label %19, label %34

19:                                               ; preds = %16
  %20 = load i32, i32* @zfs_ioctl_version, align 4
  switch i32 %20, label %33 [
    i32 131, label %21
    i32 129, label %23
    i32 132, label %25
    i32 128, label %27
    i32 130, label %29
    i32 133, label %31
  ]

21:                                               ; preds = %19
  %22 = load i32, i32* @ZFS_CMD_COMPAT_INLANES, align 4
  store i32 %22, i32* %9, align 4
  br label %33

23:                                               ; preds = %19
  %24 = load i32, i32* @ZFS_CMD_COMPAT_RESUME, align 4
  store i32 %24, i32* %9, align 4
  br label %33

25:                                               ; preds = %19
  %26 = load i32, i32* @ZFS_CMD_COMPAT_EDBP, align 4
  store i32 %26, i32* %9, align 4
  br label %33

27:                                               ; preds = %19
  %28 = load i32, i32* @ZFS_CMD_COMPAT_ZCMD, align 4
  store i32 %28, i32* %9, align 4
  br label %33

29:                                               ; preds = %19
  %30 = load i32, i32* @ZFS_CMD_COMPAT_LZC, align 4
  store i32 %30, i32* %9, align 4
  br label %33

31:                                               ; preds = %19
  %32 = load i32, i32* @ZFS_CMD_COMPAT_DEADMAN, align 4
  store i32 %32, i32* %9, align 4
  br label %33

33:                                               ; preds = %19, %31, %29, %27, %25, %23, %21
  br label %55

34:                                               ; preds = %16
  %35 = load i32, i32* @ZFS_CMD_COMPAT_V28, align 4
  store i32 %35, i32* %9, align 4
  %36 = load i64, i64* @zfs_spa_version, align 8
  %37 = icmp slt i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = call i64 (...) @get_zfs_spa_version()
  store i64 %39, i64* @zfs_spa_version, align 8
  br label %40

40:                                               ; preds = %38, %34
  %41 = load i64, i64* @zfs_spa_version, align 8
  %42 = load i64, i64* @SPA_VERSION_15, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %52, label %44

44:                                               ; preds = %40
  %45 = load i64, i64* @zfs_spa_version, align 8
  %46 = load i64, i64* @SPA_VERSION_14, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %52, label %48

48:                                               ; preds = %44
  %49 = load i64, i64* @zfs_spa_version, align 8
  %50 = load i64, i64* @SPA_VERSION_13, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %48, %44, %40
  %53 = load i32, i32* @ZFS_CMD_COMPAT_V15, align 4
  store i32 %53, i32* %9, align 4
  br label %54

54:                                               ; preds = %52, %48
  br label %55

55:                                               ; preds = %54, %33
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  store i64 %58, i64* %7, align 8
  %59 = load i32, i32* %4, align 4
  %60 = load i32, i32* %5, align 4
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %62 = load i32, i32* %9, align 4
  %63 = call i32 @zcmd_ioctl_compat(i32 %59, i32 %60, %struct.TYPE_4__* %61, i32 %62)
  store i32 %63, i32* %8, align 4
  %64 = load i32, i32* %8, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %74

66:                                               ; preds = %55
  %67 = load i64, i64* %7, align 8
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp ult i64 %67, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %66
  store i32 -1, i32* %8, align 4
  %73 = load i32, i32* @ENOMEM, align 4
  store i32 %73, i32* @errno, align 4
  br label %74

74:                                               ; preds = %72, %66, %55
  %75 = load i32, i32* %8, align 4
  ret i32 %75
}

declare dso_local i32 @get_zfs_ioctl_version(...) #1

declare dso_local i64 @get_zfs_spa_version(...) #1

declare dso_local i32 @zcmd_ioctl_compat(i32, i32, %struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
