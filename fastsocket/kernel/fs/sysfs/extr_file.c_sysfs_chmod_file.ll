; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/sysfs/extr_file.c_sysfs_chmod_file.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/sysfs/extr_file.c_sysfs_chmod_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kobject = type { i32 }
%struct.attribute = type { i32 }
%struct.sysfs_dirent = type { i32 }
%struct.dentry = type { %struct.inode* }
%struct.inode = type { i32, i32, i32 }
%struct.iattr = type { i32, i32, i32 }

@ENOENT = common dso_local global i32 0, align 4
@sysfs_rename_mutex = common dso_local global i32 0, align 4
@S_IALLUGO = common dso_local global i32 0, align 4
@ATTR_MODE = common dso_local global i32 0, align 4
@ATTR_CTIME = common dso_local global i32 0, align 4
@sysfs_mutex = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sysfs_chmod_file(%struct.kobject* %0, %struct.attribute* %1, i32 %2) #0 {
  %4 = alloca %struct.kobject*, align 8
  %5 = alloca %struct.attribute*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sysfs_dirent*, align 8
  %8 = alloca %struct.dentry*, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca %struct.iattr, align 4
  %11 = alloca i32, align 4
  store %struct.kobject* %0, %struct.kobject** %4, align 8
  store %struct.attribute* %1, %struct.attribute** %5, align 8
  store i32 %2, i32* %6, align 4
  store %struct.sysfs_dirent* null, %struct.sysfs_dirent** %7, align 8
  store %struct.dentry* null, %struct.dentry** %8, align 8
  %12 = load i32, i32* @ENOENT, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %11, align 4
  %14 = load %struct.kobject*, %struct.kobject** %4, align 8
  %15 = getelementptr inbounds %struct.kobject, %struct.kobject* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.attribute*, %struct.attribute** %5, align 8
  %18 = getelementptr inbounds %struct.attribute, %struct.attribute* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.sysfs_dirent* @sysfs_get_dirent(i32 %16, i32 %19)
  store %struct.sysfs_dirent* %20, %struct.sysfs_dirent** %7, align 8
  %21 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %7, align 8
  %22 = icmp ne %struct.sysfs_dirent* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %3
  br label %81

24:                                               ; preds = %3
  %25 = call i32 @mutex_lock(i32* @sysfs_rename_mutex)
  %26 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %7, align 8
  %27 = call %struct.dentry* @sysfs_get_dentry(%struct.sysfs_dirent* %26)
  store %struct.dentry* %27, %struct.dentry** %8, align 8
  %28 = call i32 @mutex_unlock(i32* @sysfs_rename_mutex)
  %29 = load %struct.dentry*, %struct.dentry** %8, align 8
  %30 = call i64 @IS_ERR(%struct.dentry* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %24
  %33 = load %struct.dentry*, %struct.dentry** %8, align 8
  %34 = call i32 @PTR_ERR(%struct.dentry* %33)
  store i32 %34, i32* %11, align 4
  store %struct.dentry* null, %struct.dentry** %8, align 8
  br label %81

35:                                               ; preds = %24
  %36 = load %struct.dentry*, %struct.dentry** %8, align 8
  %37 = getelementptr inbounds %struct.dentry, %struct.dentry* %36, i32 0, i32 0
  %38 = load %struct.inode*, %struct.inode** %37, align 8
  store %struct.inode* %38, %struct.inode** %9, align 8
  %39 = load %struct.inode*, %struct.inode** %9, align 8
  %40 = getelementptr inbounds %struct.inode, %struct.inode* %39, i32 0, i32 1
  %41 = call i32 @mutex_lock(i32* %40)
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @S_IALLUGO, align 4
  %44 = and i32 %42, %43
  %45 = load %struct.inode*, %struct.inode** %9, align 8
  %46 = getelementptr inbounds %struct.inode, %struct.inode* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @S_IALLUGO, align 4
  %49 = xor i32 %48, -1
  %50 = and i32 %47, %49
  %51 = or i32 %44, %50
  %52 = getelementptr inbounds %struct.iattr, %struct.iattr* %10, i32 0, i32 0
  store i32 %51, i32* %52, align 4
  %53 = load i32, i32* @ATTR_MODE, align 4
  %54 = load i32, i32* @ATTR_CTIME, align 4
  %55 = or i32 %53, %54
  %56 = getelementptr inbounds %struct.iattr, %struct.iattr* %10, i32 0, i32 1
  store i32 %55, i32* %56, align 4
  %57 = load %struct.inode*, %struct.inode** %9, align 8
  %58 = getelementptr inbounds %struct.inode, %struct.inode* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @current_fs_time(i32 %59)
  %61 = getelementptr inbounds %struct.iattr, %struct.iattr* %10, i32 0, i32 2
  store i32 %60, i32* %61, align 4
  %62 = load %struct.dentry*, %struct.dentry** %8, align 8
  %63 = call i32 @sysfs_setattr(%struct.dentry* %62, %struct.iattr* %10)
  store i32 %63, i32* %11, align 4
  %64 = load i32, i32* %11, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %77

66:                                               ; preds = %35
  %67 = load %struct.dentry*, %struct.dentry** %8, align 8
  %68 = getelementptr inbounds %struct.iattr, %struct.iattr* %10, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @fsnotify_change(%struct.dentry* %67, i32 %69)
  %71 = call i32 @mutex_lock(i32* @sysfs_mutex)
  %72 = getelementptr inbounds %struct.iattr, %struct.iattr* %10, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %7, align 8
  %75 = getelementptr inbounds %struct.sysfs_dirent, %struct.sysfs_dirent* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 4
  %76 = call i32 @mutex_unlock(i32* @sysfs_mutex)
  br label %77

77:                                               ; preds = %66, %35
  %78 = load %struct.inode*, %struct.inode** %9, align 8
  %79 = getelementptr inbounds %struct.inode, %struct.inode* %78, i32 0, i32 1
  %80 = call i32 @mutex_unlock(i32* %79)
  br label %81

81:                                               ; preds = %77, %32, %23
  %82 = load %struct.dentry*, %struct.dentry** %8, align 8
  %83 = call i32 @dput(%struct.dentry* %82)
  %84 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %7, align 8
  %85 = call i32 @sysfs_put(%struct.sysfs_dirent* %84)
  %86 = load i32, i32* %11, align 4
  ret i32 %86
}

declare dso_local %struct.sysfs_dirent* @sysfs_get_dirent(i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.dentry* @sysfs_get_dentry(%struct.sysfs_dirent*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i64 @IS_ERR(%struct.dentry*) #1

declare dso_local i32 @PTR_ERR(%struct.dentry*) #1

declare dso_local i32 @current_fs_time(i32) #1

declare dso_local i32 @sysfs_setattr(%struct.dentry*, %struct.iattr*) #1

declare dso_local i32 @fsnotify_change(%struct.dentry*, i32) #1

declare dso_local i32 @dput(%struct.dentry*) #1

declare dso_local i32 @sysfs_put(%struct.sysfs_dirent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
