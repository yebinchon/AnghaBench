; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/sysfs/extr_dir.c_sysfs_lookup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/sysfs/extr_dir.c_sysfs_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.dentry = type { i32, i32*, %struct.TYPE_3__, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { %struct.sysfs_dirent* }
%struct.sysfs_dirent = type { i32 }
%struct.nameidata = type { i32 }

@sysfs_mutex = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@sysfs_dentry_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dentry* (%struct.inode*, %struct.dentry*, %struct.nameidata*)* @sysfs_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dentry* @sysfs_lookup(%struct.inode* %0, %struct.dentry* %1, %struct.nameidata* %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.nameidata*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca %struct.sysfs_dirent*, align 8
  %9 = alloca %struct.sysfs_dirent*, align 8
  %10 = alloca %struct.inode*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.dentry* %1, %struct.dentry** %5, align 8
  store %struct.nameidata* %2, %struct.nameidata** %6, align 8
  store %struct.dentry* null, %struct.dentry** %7, align 8
  %11 = load %struct.dentry*, %struct.dentry** %5, align 8
  %12 = getelementptr inbounds %struct.dentry, %struct.dentry* %11, i32 0, i32 3
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %14, align 8
  store %struct.sysfs_dirent* %15, %struct.sysfs_dirent** %8, align 8
  %16 = call i32 @mutex_lock(i32* @sysfs_mutex)
  %17 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %8, align 8
  %18 = load %struct.dentry*, %struct.dentry** %5, align 8
  %19 = getelementptr inbounds %struct.dentry, %struct.dentry* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call %struct.sysfs_dirent* @sysfs_find_dirent(%struct.sysfs_dirent* %17, i32 %21)
  store %struct.sysfs_dirent* %22, %struct.sysfs_dirent** %9, align 8
  %23 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %9, align 8
  %24 = icmp ne %struct.sysfs_dirent* %23, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %3
  %26 = load i32, i32* @ENOENT, align 4
  %27 = sub nsw i32 0, %26
  %28 = call %struct.dentry* @ERR_PTR(i32 %27)
  store %struct.dentry* %28, %struct.dentry** %7, align 8
  br label %50

29:                                               ; preds = %3
  %30 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %9, align 8
  %31 = call %struct.inode* @sysfs_get_inode(%struct.sysfs_dirent* %30)
  store %struct.inode* %31, %struct.inode** %10, align 8
  %32 = load %struct.inode*, %struct.inode** %10, align 8
  %33 = icmp ne %struct.inode* %32, null
  br i1 %33, label %38, label %34

34:                                               ; preds = %29
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  %37 = call %struct.dentry* @ERR_PTR(i32 %36)
  store %struct.dentry* %37, %struct.dentry** %7, align 8
  br label %50

38:                                               ; preds = %29
  %39 = load %struct.dentry*, %struct.dentry** %5, align 8
  %40 = getelementptr inbounds %struct.dentry, %struct.dentry* %39, i32 0, i32 1
  store i32* @sysfs_dentry_ops, i32** %40, align 8
  %41 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %9, align 8
  %42 = call i32 @sysfs_get(%struct.sysfs_dirent* %41)
  %43 = load %struct.dentry*, %struct.dentry** %5, align 8
  %44 = getelementptr inbounds %struct.dentry, %struct.dentry* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  %45 = load %struct.dentry*, %struct.dentry** %5, align 8
  %46 = load %struct.inode*, %struct.inode** %10, align 8
  %47 = call i32 @d_instantiate(%struct.dentry* %45, %struct.inode* %46)
  %48 = load %struct.dentry*, %struct.dentry** %5, align 8
  %49 = call i32 @d_rehash(%struct.dentry* %48)
  br label %50

50:                                               ; preds = %38, %34, %25
  %51 = call i32 @mutex_unlock(i32* @sysfs_mutex)
  %52 = load %struct.dentry*, %struct.dentry** %7, align 8
  ret %struct.dentry* %52
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.sysfs_dirent* @sysfs_find_dirent(%struct.sysfs_dirent*, i32) #1

declare dso_local %struct.dentry* @ERR_PTR(i32) #1

declare dso_local %struct.inode* @sysfs_get_inode(%struct.sysfs_dirent*) #1

declare dso_local i32 @sysfs_get(%struct.sysfs_dirent*) #1

declare dso_local i32 @d_instantiate(%struct.dentry*, %struct.inode*) #1

declare dso_local i32 @d_rehash(%struct.dentry*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
