; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_dir.c_nfs_check_verifier.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_dir.c_nfs_check_verifier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.dentry = type { i32 }
%struct.TYPE_3__ = type { i32 }

@NFS_MOUNT_LOOKUP_CACHE_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*)* @nfs_check_verifier to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs_check_verifier(%struct.inode* %0, %struct.dentry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.dentry*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.dentry* %1, %struct.dentry** %5, align 8
  %6 = load %struct.dentry*, %struct.dentry** %5, align 8
  %7 = call i64 @IS_ROOT(%struct.dentry* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store i32 1, i32* %3, align 4
  br label %43

10:                                               ; preds = %2
  %11 = load %struct.inode*, %struct.inode** %4, align 8
  %12 = call %struct.TYPE_3__* @NFS_SERVER(%struct.inode* %11)
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @NFS_MOUNT_LOOKUP_CACHE_NONE, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %10
  store i32 0, i32* %3, align 4
  br label %43

19:                                               ; preds = %10
  %20 = load %struct.inode*, %struct.inode** %4, align 8
  %21 = load %struct.dentry*, %struct.dentry** %5, align 8
  %22 = getelementptr inbounds %struct.dentry, %struct.dentry* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @nfs_verify_change_attribute(%struct.inode* %20, i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %19
  store i32 0, i32* %3, align 4
  br label %43

27:                                               ; preds = %19
  %28 = load %struct.inode*, %struct.inode** %4, align 8
  %29 = call %struct.TYPE_3__* @NFS_SERVER(%struct.inode* %28)
  %30 = load %struct.inode*, %struct.inode** %4, align 8
  %31 = call i64 @nfs_revalidate_inode(%struct.TYPE_3__* %29, %struct.inode* %30)
  %32 = icmp slt i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  store i32 0, i32* %3, align 4
  br label %43

34:                                               ; preds = %27
  %35 = load %struct.inode*, %struct.inode** %4, align 8
  %36 = load %struct.dentry*, %struct.dentry** %5, align 8
  %37 = getelementptr inbounds %struct.dentry, %struct.dentry* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @nfs_verify_change_attribute(%struct.inode* %35, i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %34
  store i32 0, i32* %3, align 4
  br label %43

42:                                               ; preds = %34
  store i32 1, i32* %3, align 4
  br label %43

43:                                               ; preds = %42, %41, %33, %26, %18, %9
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i64 @IS_ROOT(%struct.dentry*) #1

declare dso_local %struct.TYPE_3__* @NFS_SERVER(%struct.inode*) #1

declare dso_local i32 @nfs_verify_change_attribute(%struct.inode*, i32) #1

declare dso_local i64 @nfs_revalidate_inode(%struct.TYPE_3__*, %struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
