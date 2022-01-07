; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4proc.c_nfs_fixup_secinfo_attributes.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4proc.c_nfs_fixup_secinfo_attributes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_fattr = type { i32, i32, i32 }

@NFS_ATTR_FATTR_TYPE = common dso_local global i32 0, align 4
@NFS_ATTR_FATTR_MODE = common dso_local global i32 0, align 4
@NFS_ATTR_FATTR_NLINK = common dso_local global i32 0, align 4
@NFS_ATTR_FATTR_MOUNTPOINT = common dso_local global i32 0, align 4
@S_IFDIR = common dso_local global i32 0, align 4
@S_IRUGO = common dso_local global i32 0, align 4
@S_IXUGO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nfs_fixup_secinfo_attributes(%struct.nfs_fattr* %0) #0 {
  %2 = alloca %struct.nfs_fattr*, align 8
  store %struct.nfs_fattr* %0, %struct.nfs_fattr** %2, align 8
  %3 = load i32, i32* @NFS_ATTR_FATTR_TYPE, align 4
  %4 = load i32, i32* @NFS_ATTR_FATTR_MODE, align 4
  %5 = or i32 %3, %4
  %6 = load i32, i32* @NFS_ATTR_FATTR_NLINK, align 4
  %7 = or i32 %5, %6
  %8 = load i32, i32* @NFS_ATTR_FATTR_MOUNTPOINT, align 4
  %9 = or i32 %7, %8
  %10 = load %struct.nfs_fattr*, %struct.nfs_fattr** %2, align 8
  %11 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = or i32 %12, %9
  store i32 %13, i32* %11, align 4
  %14 = load i32, i32* @S_IFDIR, align 4
  %15 = load i32, i32* @S_IRUGO, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @S_IXUGO, align 4
  %18 = or i32 %16, %17
  %19 = load %struct.nfs_fattr*, %struct.nfs_fattr** %2, align 8
  %20 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 4
  %21 = load %struct.nfs_fattr*, %struct.nfs_fattr** %2, align 8
  %22 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %21, i32 0, i32 2
  store i32 2, i32* %22, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
