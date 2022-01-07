; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/configfs/extr_dir.c_configfs_attach_group.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/configfs/extr_dir.c_configfs_attach_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_item = type { i32 }
%struct.dentry = type { %struct.TYPE_2__*, %struct.configfs_dirent* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.configfs_dirent = type { i32 }

@CONFIGFS_USET_DIR = common dso_local global i32 0, align 4
@I_MUTEX_CHILD = common dso_local global i32 0, align 4
@S_DEAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.config_item*, %struct.config_item*, %struct.dentry*)* @configfs_attach_group to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @configfs_attach_group(%struct.config_item* %0, %struct.config_item* %1, %struct.dentry* %2) #0 {
  %4 = alloca %struct.config_item*, align 8
  %5 = alloca %struct.config_item*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.configfs_dirent*, align 8
  store %struct.config_item* %0, %struct.config_item** %4, align 8
  store %struct.config_item* %1, %struct.config_item** %5, align 8
  store %struct.dentry* %2, %struct.dentry** %6, align 8
  %9 = load %struct.config_item*, %struct.config_item** %4, align 8
  %10 = load %struct.config_item*, %struct.config_item** %5, align 8
  %11 = load %struct.dentry*, %struct.dentry** %6, align 8
  %12 = call i32 @configfs_attach_item(%struct.config_item* %9, %struct.config_item* %10, %struct.dentry* %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %61, label %15

15:                                               ; preds = %3
  %16 = load %struct.dentry*, %struct.dentry** %6, align 8
  %17 = getelementptr inbounds %struct.dentry, %struct.dentry* %16, i32 0, i32 1
  %18 = load %struct.configfs_dirent*, %struct.configfs_dirent** %17, align 8
  store %struct.configfs_dirent* %18, %struct.configfs_dirent** %8, align 8
  %19 = load i32, i32* @CONFIGFS_USET_DIR, align 4
  %20 = load %struct.configfs_dirent*, %struct.configfs_dirent** %8, align 8
  %21 = getelementptr inbounds %struct.configfs_dirent, %struct.configfs_dirent* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = or i32 %22, %19
  store i32 %23, i32* %21, align 4
  %24 = load %struct.dentry*, %struct.dentry** %6, align 8
  %25 = getelementptr inbounds %struct.dentry, %struct.dentry* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* @I_MUTEX_CHILD, align 4
  %29 = call i32 @mutex_lock_nested(i32* %27, i32 %28)
  %30 = load %struct.configfs_dirent*, %struct.configfs_dirent** %8, align 8
  %31 = call i32 @configfs_adjust_dir_dirent_depth_before_populate(%struct.configfs_dirent* %30)
  %32 = load %struct.config_item*, %struct.config_item** %5, align 8
  %33 = call i32 @to_config_group(%struct.config_item* %32)
  %34 = call i32 @populate_groups(i32 %33)
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %47

37:                                               ; preds = %15
  %38 = load %struct.config_item*, %struct.config_item** %5, align 8
  %39 = call i32 @configfs_detach_item(%struct.config_item* %38)
  %40 = load i32, i32* @S_DEAD, align 4
  %41 = load %struct.dentry*, %struct.dentry** %6, align 8
  %42 = getelementptr inbounds %struct.dentry, %struct.dentry* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = or i32 %45, %40
  store i32 %46, i32* %44, align 4
  br label %47

47:                                               ; preds = %37, %15
  %48 = load %struct.configfs_dirent*, %struct.configfs_dirent** %8, align 8
  %49 = call i32 @configfs_adjust_dir_dirent_depth_after_populate(%struct.configfs_dirent* %48)
  %50 = load %struct.dentry*, %struct.dentry** %6, align 8
  %51 = getelementptr inbounds %struct.dentry, %struct.dentry* %50, i32 0, i32 0
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = call i32 @mutex_unlock(i32* %53)
  %55 = load i32, i32* %7, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %47
  %58 = load %struct.dentry*, %struct.dentry** %6, align 8
  %59 = call i32 @d_delete(%struct.dentry* %58)
  br label %60

60:                                               ; preds = %57, %47
  br label %61

61:                                               ; preds = %60, %3
  %62 = load i32, i32* %7, align 4
  ret i32 %62
}

declare dso_local i32 @configfs_attach_item(%struct.config_item*, %struct.config_item*, %struct.dentry*) #1

declare dso_local i32 @mutex_lock_nested(i32*, i32) #1

declare dso_local i32 @configfs_adjust_dir_dirent_depth_before_populate(%struct.configfs_dirent*) #1

declare dso_local i32 @populate_groups(i32) #1

declare dso_local i32 @to_config_group(%struct.config_item*) #1

declare dso_local i32 @configfs_detach_item(%struct.config_item*) #1

declare dso_local i32 @configfs_adjust_dir_dirent_depth_after_populate(%struct.configfs_dirent*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @d_delete(%struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
