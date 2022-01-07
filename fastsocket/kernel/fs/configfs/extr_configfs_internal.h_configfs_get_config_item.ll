; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/configfs/extr_configfs_internal.h_configfs_get_config_item.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/configfs/extr_configfs_internal.h_configfs_get_config_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_item = type { i32 }
%struct.dentry = type { %struct.configfs_dirent* }
%struct.configfs_dirent = type { i32, %struct.configfs_symlink* }
%struct.configfs_symlink = type { %struct.configfs_symlink* }

@dcache_lock = common dso_local global i32 0, align 4
@CONFIGFS_ITEM_LINK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.config_item* (%struct.dentry*)* @configfs_get_config_item to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.config_item* @configfs_get_config_item(%struct.dentry* %0) #0 {
  %2 = alloca %struct.dentry*, align 8
  %3 = alloca %struct.config_item*, align 8
  %4 = alloca %struct.configfs_dirent*, align 8
  %5 = alloca %struct.configfs_symlink*, align 8
  store %struct.dentry* %0, %struct.dentry** %2, align 8
  store %struct.config_item* null, %struct.config_item** %3, align 8
  %6 = call i32 @spin_lock(i32* @dcache_lock)
  %7 = load %struct.dentry*, %struct.dentry** %2, align 8
  %8 = call i32 @d_unhashed(%struct.dentry* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %34, label %10

10:                                               ; preds = %1
  %11 = load %struct.dentry*, %struct.dentry** %2, align 8
  %12 = getelementptr inbounds %struct.dentry, %struct.dentry* %11, i32 0, i32 0
  %13 = load %struct.configfs_dirent*, %struct.configfs_dirent** %12, align 8
  store %struct.configfs_dirent* %13, %struct.configfs_dirent** %4, align 8
  %14 = load %struct.configfs_dirent*, %struct.configfs_dirent** %4, align 8
  %15 = getelementptr inbounds %struct.configfs_dirent, %struct.configfs_dirent* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @CONFIGFS_ITEM_LINK, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %10
  %21 = load %struct.configfs_dirent*, %struct.configfs_dirent** %4, align 8
  %22 = getelementptr inbounds %struct.configfs_dirent, %struct.configfs_dirent* %21, i32 0, i32 1
  %23 = load %struct.configfs_symlink*, %struct.configfs_symlink** %22, align 8
  store %struct.configfs_symlink* %23, %struct.configfs_symlink** %5, align 8
  %24 = load %struct.configfs_symlink*, %struct.configfs_symlink** %5, align 8
  %25 = getelementptr inbounds %struct.configfs_symlink, %struct.configfs_symlink* %24, i32 0, i32 0
  %26 = load %struct.configfs_symlink*, %struct.configfs_symlink** %25, align 8
  %27 = call %struct.config_item* @config_item_get(%struct.configfs_symlink* %26)
  store %struct.config_item* %27, %struct.config_item** %3, align 8
  br label %33

28:                                               ; preds = %10
  %29 = load %struct.configfs_dirent*, %struct.configfs_dirent** %4, align 8
  %30 = getelementptr inbounds %struct.configfs_dirent, %struct.configfs_dirent* %29, i32 0, i32 1
  %31 = load %struct.configfs_symlink*, %struct.configfs_symlink** %30, align 8
  %32 = call %struct.config_item* @config_item_get(%struct.configfs_symlink* %31)
  store %struct.config_item* %32, %struct.config_item** %3, align 8
  br label %33

33:                                               ; preds = %28, %20
  br label %34

34:                                               ; preds = %33, %1
  %35 = call i32 @spin_unlock(i32* @dcache_lock)
  %36 = load %struct.config_item*, %struct.config_item** %3, align 8
  ret %struct.config_item* %36
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @d_unhashed(%struct.dentry*) #1

declare dso_local %struct.config_item* @config_item_get(%struct.configfs_symlink*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
