; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/amd/libamu/extr_mount_fs.c_compute_nfs_attrcache_flags.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/amd/libamu/extr_mount_fs.c_compute_nfs_attrcache_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_common_args = type { i32, i32, i32, i32, i32 }

@MNT2_NFS_OPT_ACDIRMAX = common dso_local global i32 0, align 4
@MNT2_NFS_OPT_ACDIRMIN = common dso_local global i32 0, align 4
@MNT2_NFS_OPT_ACREGMAX = common dso_local global i32 0, align 4
@MNT2_NFS_OPT_ACREGMIN = common dso_local global i32 0, align 4
@MNT2_NFS_OPT_NOAC = common dso_local global i32 0, align 4
@MNTTAB_OPT_ACDIRMAX = common dso_local global i32 0, align 4
@MNTTAB_OPT_ACDIRMIN = common dso_local global i32 0, align 4
@MNTTAB_OPT_ACREGMAX = common dso_local global i32 0, align 4
@MNTTAB_OPT_ACREGMIN = common dso_local global i32 0, align 4
@MNTTAB_OPT_ACTIMEO = common dso_local global i32 0, align 4
@MNTTAB_OPT_NOAC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfs_common_args*, i32*)* @compute_nfs_attrcache_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @compute_nfs_attrcache_flags(%struct.nfs_common_args* %0, i32* %1) #0 {
  %3 = alloca %struct.nfs_common_args*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.nfs_common_args* %0, %struct.nfs_common_args** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 1, i32* %6, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
