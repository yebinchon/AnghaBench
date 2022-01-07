; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_pool.c_zpool_label_disk.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_pool.c_zpool_label_disk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64 }
%struct.TYPE_10__ = type { i64, i32 }

@BACKUP_SLICE = common dso_local global i32 0, align 4
@EFI_MIN_RESV_SIZE = common dso_local global i32 0, align 4
@EFI_NUMPAR = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i64 0, align 8
@EZFS_LABELFAILED = common dso_local global i32 0, align 4
@EZFS_NOCAP = common dso_local global i32 0, align 4
@EZFS_OPENFAILED = common dso_local global i32 0, align 4
@MAXOFFSET_T = common dso_local global i64 0, align 8
@MAXPATHLEN = common dso_local global i32 0, align 4
@NEW_START_BLOCK = common dso_local global i64 0, align 8
@O_NDELAY = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@TEXT_DOMAIN = common dso_local global i32 0, align 4
@V_RESERVED = common dso_local global i8* null, align 8
@V_SYSTEM = common dso_local global i8* null, align 8
@V_USR = common dso_local global i8* null, align 8
@ZFS_RDISK_ROOT = common dso_local global i8* null, align 8
@ZPOOL_CONFIG_VDEV_TREE = common dso_local global i32 0, align 4
@ZPOOL_CREATE_BOOT_LABEL = common dso_local global i64 0, align 8
@errno = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zpool_label_disk(%struct.TYPE_11__* %0, %struct.TYPE_10__* %1, i8* %2, i64 %3, i32 %4, i32* %5) #0 {
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %7, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  store i32* %5, i32** %12, align 8
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
