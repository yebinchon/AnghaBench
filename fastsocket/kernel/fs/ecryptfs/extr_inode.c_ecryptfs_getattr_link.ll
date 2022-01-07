; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ecryptfs/extr_inode.c_ecryptfs_getattr_link.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ecryptfs/extr_inode.c_ecryptfs_getattr_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfsmount = type { i32 }
%struct.dentry = type { i32, i32 }
%struct.kstat = type { i64 }
%struct.ecryptfs_mount_crypt_stat = type { i32 }
%struct.TYPE_2__ = type { %struct.ecryptfs_mount_crypt_stat }

@ECRYPTFS_GLOBAL_ENCRYPT_FILENAMES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecryptfs_getattr_link(%struct.vfsmount* %0, %struct.dentry* %1, %struct.kstat* %2) #0 {
  %4 = alloca %struct.vfsmount*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.kstat*, align 8
  %7 = alloca %struct.ecryptfs_mount_crypt_stat*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store %struct.vfsmount* %0, %struct.vfsmount** %4, align 8
  store %struct.dentry* %1, %struct.dentry** %5, align 8
  store %struct.kstat* %2, %struct.kstat** %6, align 8
  store i32 0, i32* %8, align 4
  %11 = load %struct.dentry*, %struct.dentry** %5, align 8
  %12 = getelementptr inbounds %struct.dentry, %struct.dentry* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.TYPE_2__* @ecryptfs_superblock_to_private(i32 %13)
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store %struct.ecryptfs_mount_crypt_stat* %15, %struct.ecryptfs_mount_crypt_stat** %7, align 8
  %16 = load %struct.dentry*, %struct.dentry** %5, align 8
  %17 = getelementptr inbounds %struct.dentry, %struct.dentry* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.kstat*, %struct.kstat** %6, align 8
  %20 = call i32 @generic_fillattr(i32 %18, %struct.kstat* %19)
  %21 = load %struct.ecryptfs_mount_crypt_stat*, %struct.ecryptfs_mount_crypt_stat** %7, align 8
  %22 = getelementptr inbounds %struct.ecryptfs_mount_crypt_stat, %struct.ecryptfs_mount_crypt_stat* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @ECRYPTFS_GLOBAL_ENCRYPT_FILENAMES, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %39

27:                                               ; preds = %3
  %28 = load %struct.dentry*, %struct.dentry** %5, align 8
  %29 = call i32 @ecryptfs_readlink_lower(%struct.dentry* %28, i8** %9, i64* %10)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %38, label %32

32:                                               ; preds = %27
  %33 = load i8*, i8** %9, align 8
  %34 = call i32 @kfree(i8* %33)
  %35 = load i64, i64* %10, align 8
  %36 = load %struct.kstat*, %struct.kstat** %6, align 8
  %37 = getelementptr inbounds %struct.kstat, %struct.kstat* %36, i32 0, i32 0
  store i64 %35, i64* %37, align 8
  br label %38

38:                                               ; preds = %32, %27
  br label %39

39:                                               ; preds = %38, %3
  %40 = load i32, i32* %8, align 4
  ret i32 %40
}

declare dso_local %struct.TYPE_2__* @ecryptfs_superblock_to_private(i32) #1

declare dso_local i32 @generic_fillattr(i32, %struct.kstat*) #1

declare dso_local i32 @ecryptfs_readlink_lower(%struct.dentry*, i8**, i64*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
