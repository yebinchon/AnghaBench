; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/configfs/extr_symlink.c_configfs_unlink.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/configfs/extr_symlink.c_configfs_unlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.inode = type { i32 }
%struct.dentry = type { i64, %struct.configfs_dirent* }
%struct.configfs_dirent = type { i32, i32, %struct.configfs_symlink* }
%struct.configfs_symlink = type { %struct.config_item*, i32 }
%struct.config_item = type { %struct.config_item_type* }
%struct.config_item_type = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.config_item*, %struct.config_item*)* }

@EPERM = common dso_local global i32 0, align 4
@CONFIGFS_ITEM_LINK = common dso_local global i32 0, align 4
@configfs_sb = common dso_local global %struct.TYPE_4__* null, align 8
@configfs_dirent_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @configfs_unlink(%struct.inode* %0, %struct.dentry* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.configfs_dirent*, align 8
  %6 = alloca %struct.configfs_symlink*, align 8
  %7 = alloca %struct.config_item*, align 8
  %8 = alloca %struct.config_item_type*, align 8
  %9 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.dentry* %1, %struct.dentry** %4, align 8
  %10 = load %struct.dentry*, %struct.dentry** %4, align 8
  %11 = getelementptr inbounds %struct.dentry, %struct.dentry* %10, i32 0, i32 1
  %12 = load %struct.configfs_dirent*, %struct.configfs_dirent** %11, align 8
  store %struct.configfs_dirent* %12, %struct.configfs_dirent** %5, align 8
  %13 = load i32, i32* @EPERM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %9, align 4
  %15 = load %struct.configfs_dirent*, %struct.configfs_dirent** %5, align 8
  %16 = getelementptr inbounds %struct.configfs_dirent, %struct.configfs_dirent* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @CONFIGFS_ITEM_LINK, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %2
  br label %95

22:                                               ; preds = %2
  %23 = load %struct.dentry*, %struct.dentry** %4, align 8
  %24 = getelementptr inbounds %struct.dentry, %struct.dentry* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** @configfs_sb, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %25, %28
  %30 = zext i1 %29 to i32
  %31 = call i32 @BUG_ON(i32 %30)
  %32 = load %struct.configfs_dirent*, %struct.configfs_dirent** %5, align 8
  %33 = getelementptr inbounds %struct.configfs_dirent, %struct.configfs_dirent* %32, i32 0, i32 2
  %34 = load %struct.configfs_symlink*, %struct.configfs_symlink** %33, align 8
  store %struct.configfs_symlink* %34, %struct.configfs_symlink** %6, align 8
  %35 = load %struct.dentry*, %struct.dentry** %4, align 8
  %36 = getelementptr inbounds %struct.dentry, %struct.dentry* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = call %struct.config_item* @configfs_get_config_item(i64 %37)
  store %struct.config_item* %38, %struct.config_item** %7, align 8
  %39 = load %struct.config_item*, %struct.config_item** %7, align 8
  %40 = getelementptr inbounds %struct.config_item, %struct.config_item* %39, i32 0, i32 0
  %41 = load %struct.config_item_type*, %struct.config_item_type** %40, align 8
  store %struct.config_item_type* %41, %struct.config_item_type** %8, align 8
  %42 = call i32 @spin_lock(i32* @configfs_dirent_lock)
  %43 = load %struct.configfs_dirent*, %struct.configfs_dirent** %5, align 8
  %44 = getelementptr inbounds %struct.configfs_dirent, %struct.configfs_dirent* %43, i32 0, i32 1
  %45 = call i32 @list_del_init(i32* %44)
  %46 = call i32 @spin_unlock(i32* @configfs_dirent_lock)
  %47 = load %struct.configfs_dirent*, %struct.configfs_dirent** %5, align 8
  %48 = load %struct.dentry*, %struct.dentry** %4, align 8
  %49 = getelementptr inbounds %struct.dentry, %struct.dentry* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @configfs_drop_dentry(%struct.configfs_dirent* %47, i64 %50)
  %52 = load %struct.dentry*, %struct.dentry** %4, align 8
  %53 = call i32 @dput(%struct.dentry* %52)
  %54 = load %struct.configfs_dirent*, %struct.configfs_dirent** %5, align 8
  %55 = call i32 @configfs_put(%struct.configfs_dirent* %54)
  %56 = load %struct.config_item_type*, %struct.config_item_type** %8, align 8
  %57 = icmp ne %struct.config_item_type* %56, null
  br i1 %57, label %58, label %81

58:                                               ; preds = %22
  %59 = load %struct.config_item_type*, %struct.config_item_type** %8, align 8
  %60 = getelementptr inbounds %struct.config_item_type, %struct.config_item_type* %59, i32 0, i32 0
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %60, align 8
  %62 = icmp ne %struct.TYPE_3__* %61, null
  br i1 %62, label %63, label %81

63:                                               ; preds = %58
  %64 = load %struct.config_item_type*, %struct.config_item_type** %8, align 8
  %65 = getelementptr inbounds %struct.config_item_type, %struct.config_item_type* %64, i32 0, i32 0
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = load i32 (%struct.config_item*, %struct.config_item*)*, i32 (%struct.config_item*, %struct.config_item*)** %67, align 8
  %69 = icmp ne i32 (%struct.config_item*, %struct.config_item*)* %68, null
  br i1 %69, label %70, label %81

70:                                               ; preds = %63
  %71 = load %struct.config_item_type*, %struct.config_item_type** %8, align 8
  %72 = getelementptr inbounds %struct.config_item_type, %struct.config_item_type* %71, i32 0, i32 0
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  %75 = load i32 (%struct.config_item*, %struct.config_item*)*, i32 (%struct.config_item*, %struct.config_item*)** %74, align 8
  %76 = load %struct.config_item*, %struct.config_item** %7, align 8
  %77 = load %struct.configfs_symlink*, %struct.configfs_symlink** %6, align 8
  %78 = getelementptr inbounds %struct.configfs_symlink, %struct.configfs_symlink* %77, i32 0, i32 0
  %79 = load %struct.config_item*, %struct.config_item** %78, align 8
  %80 = call i32 %75(%struct.config_item* %76, %struct.config_item* %79)
  br label %81

81:                                               ; preds = %70, %63, %58, %22
  %82 = call i32 @spin_lock(i32* @configfs_dirent_lock)
  %83 = load %struct.configfs_symlink*, %struct.configfs_symlink** %6, align 8
  %84 = getelementptr inbounds %struct.configfs_symlink, %struct.configfs_symlink* %83, i32 0, i32 1
  %85 = call i32 @list_del_init(i32* %84)
  %86 = call i32 @spin_unlock(i32* @configfs_dirent_lock)
  %87 = load %struct.configfs_symlink*, %struct.configfs_symlink** %6, align 8
  %88 = getelementptr inbounds %struct.configfs_symlink, %struct.configfs_symlink* %87, i32 0, i32 0
  %89 = load %struct.config_item*, %struct.config_item** %88, align 8
  %90 = call i32 @config_item_put(%struct.config_item* %89)
  %91 = load %struct.configfs_symlink*, %struct.configfs_symlink** %6, align 8
  %92 = call i32 @kfree(%struct.configfs_symlink* %91)
  %93 = load %struct.config_item*, %struct.config_item** %7, align 8
  %94 = call i32 @config_item_put(%struct.config_item* %93)
  store i32 0, i32* %9, align 4
  br label %95

95:                                               ; preds = %81, %21
  %96 = load i32, i32* %9, align 4
  ret i32 %96
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local %struct.config_item* @configfs_get_config_item(i64) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @configfs_drop_dentry(%struct.configfs_dirent*, i64) #1

declare dso_local i32 @dput(%struct.dentry*) #1

declare dso_local i32 @configfs_put(%struct.configfs_dirent*) #1

declare dso_local i32 @config_item_put(%struct.config_item*) #1

declare dso_local i32 @kfree(%struct.configfs_symlink*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
