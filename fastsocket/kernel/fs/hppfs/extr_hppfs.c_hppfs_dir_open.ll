; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/hppfs/extr_hppfs.c_hppfs_dir_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/hppfs/extr_hppfs.c_hppfs_dir_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.vfsmount* }
%struct.vfsmount = type { i32 }
%struct.file = type { %struct.hppfs_private*, i32, %struct.cred* }
%struct.hppfs_private = type { i32 }
%struct.cred = type { i32 }
%struct.dentry = type { i32 }
%struct.TYPE_4__ = type { %struct.dentry* }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @hppfs_dir_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hppfs_dir_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.cred*, align 8
  %7 = alloca %struct.hppfs_private*, align 8
  %8 = alloca %struct.vfsmount*, align 8
  %9 = alloca %struct.dentry*, align 8
  %10 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %11 = load %struct.file*, %struct.file** %5, align 8
  %12 = getelementptr inbounds %struct.file, %struct.file* %11, i32 0, i32 2
  %13 = load %struct.cred*, %struct.cred** %12, align 8
  store %struct.cred* %13, %struct.cred** %6, align 8
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %10, align 4
  %16 = call %struct.hppfs_private* (...) @hppfs_data()
  store %struct.hppfs_private* %16, %struct.hppfs_private** %7, align 8
  %17 = load %struct.hppfs_private*, %struct.hppfs_private** %7, align 8
  %18 = icmp eq %struct.hppfs_private* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  br label %59

20:                                               ; preds = %2
  %21 = load %struct.inode*, %struct.inode** %4, align 8
  %22 = call %struct.TYPE_4__* @HPPFS_I(%struct.inode* %21)
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load %struct.dentry*, %struct.dentry** %23, align 8
  store %struct.dentry* %24, %struct.dentry** %9, align 8
  %25 = load %struct.inode*, %struct.inode** %4, align 8
  %26 = getelementptr inbounds %struct.inode, %struct.inode* %25, i32 0, i32 0
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load %struct.vfsmount*, %struct.vfsmount** %28, align 8
  store %struct.vfsmount* %29, %struct.vfsmount** %8, align 8
  %30 = load %struct.dentry*, %struct.dentry** %9, align 8
  %31 = call i32 @dget(%struct.dentry* %30)
  %32 = load %struct.vfsmount*, %struct.vfsmount** %8, align 8
  %33 = call i32 @mntget(%struct.vfsmount* %32)
  %34 = load %struct.file*, %struct.file** %5, align 8
  %35 = getelementptr inbounds %struct.file, %struct.file* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @file_mode(i32 %36)
  %38 = load %struct.cred*, %struct.cred** %6, align 8
  %39 = call i32 @dentry_open(i32 %31, i32 %33, i32 %37, %struct.cred* %38)
  %40 = load %struct.hppfs_private*, %struct.hppfs_private** %7, align 8
  %41 = getelementptr inbounds %struct.hppfs_private, %struct.hppfs_private* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  %42 = load %struct.hppfs_private*, %struct.hppfs_private** %7, align 8
  %43 = getelementptr inbounds %struct.hppfs_private, %struct.hppfs_private* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @PTR_ERR(i32 %44)
  store i32 %45, i32* %10, align 4
  %46 = load %struct.hppfs_private*, %struct.hppfs_private** %7, align 8
  %47 = getelementptr inbounds %struct.hppfs_private, %struct.hppfs_private* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i64 @IS_ERR(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %20
  br label %56

52:                                               ; preds = %20
  %53 = load %struct.hppfs_private*, %struct.hppfs_private** %7, align 8
  %54 = load %struct.file*, %struct.file** %5, align 8
  %55 = getelementptr inbounds %struct.file, %struct.file* %54, i32 0, i32 0
  store %struct.hppfs_private* %53, %struct.hppfs_private** %55, align 8
  store i32 0, i32* %3, align 4
  br label %61

56:                                               ; preds = %51
  %57 = load %struct.hppfs_private*, %struct.hppfs_private** %7, align 8
  %58 = call i32 @kfree(%struct.hppfs_private* %57)
  br label %59

59:                                               ; preds = %56, %19
  %60 = load i32, i32* %10, align 4
  store i32 %60, i32* %3, align 4
  br label %61

61:                                               ; preds = %59, %52
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local %struct.hppfs_private* @hppfs_data(...) #1

declare dso_local %struct.TYPE_4__* @HPPFS_I(%struct.inode*) #1

declare dso_local i32 @dentry_open(i32, i32, i32, %struct.cred*) #1

declare dso_local i32 @dget(%struct.dentry*) #1

declare dso_local i32 @mntget(%struct.vfsmount*) #1

declare dso_local i32 @file_mode(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @kfree(%struct.hppfs_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
