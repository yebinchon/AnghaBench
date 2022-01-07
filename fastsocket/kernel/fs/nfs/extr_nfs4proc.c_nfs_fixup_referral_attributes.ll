; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4proc.c_nfs_fixup_referral_attributes.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4proc.c_nfs_fixup_referral_attributes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_fattr = type { i32, i32, i32 }

@NFS_ATTR_FATTR_MOUNTED_ON_FILEID = common dso_local global i32 0, align 4
@NFS_ATTR_FATTR_FILEID = common dso_local global i32 0, align 4
@NFS_ATTR_FATTR_FSID = common dso_local global i32 0, align 4
@NFS_ATTR_FATTR_V4_REFERRAL = common dso_local global i32 0, align 4
@NFS_ATTR_FATTR_TYPE = common dso_local global i32 0, align 4
@NFS_ATTR_FATTR_MODE = common dso_local global i32 0, align 4
@NFS_ATTR_FATTR_NLINK = common dso_local global i32 0, align 4
@S_IFDIR = common dso_local global i32 0, align 4
@S_IRUGO = common dso_local global i32 0, align 4
@S_IXUGO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfs_fattr*)* @nfs_fixup_referral_attributes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfs_fixup_referral_attributes(%struct.nfs_fattr* %0) #0 {
  %2 = alloca %struct.nfs_fattr*, align 8
  store %struct.nfs_fattr* %0, %struct.nfs_fattr** %2, align 8
  %3 = load %struct.nfs_fattr*, %struct.nfs_fattr** %2, align 8
  %4 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @NFS_ATTR_FATTR_MOUNTED_ON_FILEID, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %16, label %9

9:                                                ; preds = %1
  %10 = load %struct.nfs_fattr*, %struct.nfs_fattr** %2, align 8
  %11 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @NFS_ATTR_FATTR_FILEID, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %30

16:                                               ; preds = %9, %1
  %17 = load %struct.nfs_fattr*, %struct.nfs_fattr** %2, align 8
  %18 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @NFS_ATTR_FATTR_FSID, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %16
  %24 = load %struct.nfs_fattr*, %struct.nfs_fattr** %2, align 8
  %25 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @NFS_ATTR_FATTR_V4_REFERRAL, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %23, %16, %9
  br label %50

31:                                               ; preds = %23
  %32 = load i32, i32* @NFS_ATTR_FATTR_TYPE, align 4
  %33 = load i32, i32* @NFS_ATTR_FATTR_MODE, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @NFS_ATTR_FATTR_NLINK, align 4
  %36 = or i32 %34, %35
  %37 = load %struct.nfs_fattr*, %struct.nfs_fattr** %2, align 8
  %38 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = or i32 %39, %36
  store i32 %40, i32* %38, align 4
  %41 = load i32, i32* @S_IFDIR, align 4
  %42 = load i32, i32* @S_IRUGO, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @S_IXUGO, align 4
  %45 = or i32 %43, %44
  %46 = load %struct.nfs_fattr*, %struct.nfs_fattr** %2, align 8
  %47 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  %48 = load %struct.nfs_fattr*, %struct.nfs_fattr** %2, align 8
  %49 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %48, i32 0, i32 2
  store i32 2, i32* %49, align 4
  br label %50

50:                                               ; preds = %31, %30
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
