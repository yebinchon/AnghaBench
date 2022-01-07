; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/configfs/extr_symlink.c_configfs_symlink.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/configfs/extr_symlink.c_configfs_symlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.configfs_dirent* }
%struct.configfs_dirent = type { i32 }
%struct.inode = type { i32 }
%struct.dentry = type { %struct.TYPE_6__* }
%struct.path = type { i32 }
%struct.config_item = type { %struct.config_item_type* }
%struct.config_item_type = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.config_item*, %struct.config_item*)*, i32 (%struct.config_item*, %struct.config_item*)* }

@EPERM = common dso_local global i32 0, align 4
@configfs_sb = common dso_local global %struct.TYPE_5__* null, align 8
@ENOENT = common dso_local global i32 0, align 4
@configfs_symlink_mutex = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @configfs_symlink(%struct.inode* %0, %struct.dentry* %1, i8* %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.path, align 4
  %9 = alloca %struct.configfs_dirent*, align 8
  %10 = alloca %struct.config_item*, align 8
  %11 = alloca %struct.config_item*, align 8
  %12 = alloca %struct.config_item_type*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.dentry* %1, %struct.dentry** %5, align 8
  store i8* %2, i8** %6, align 8
  store %struct.config_item* null, %struct.config_item** %11, align 8
  %13 = load i32, i32* @EPERM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %7, align 4
  %15 = load %struct.dentry*, %struct.dentry** %5, align 8
  %16 = getelementptr inbounds %struct.dentry, %struct.dentry* %15, i32 0, i32 0
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** @configfs_sb, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = icmp eq %struct.TYPE_6__* %17, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  br label %110

23:                                               ; preds = %3
  %24 = load %struct.dentry*, %struct.dentry** %5, align 8
  %25 = getelementptr inbounds %struct.dentry, %struct.dentry* %24, i32 0, i32 0
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load %struct.configfs_dirent*, %struct.configfs_dirent** %27, align 8
  store %struct.configfs_dirent* %28, %struct.configfs_dirent** %9, align 8
  %29 = load i32, i32* @ENOENT, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %7, align 4
  %31 = load %struct.configfs_dirent*, %struct.configfs_dirent** %9, align 8
  %32 = call i32 @configfs_dirent_is_ready(%struct.configfs_dirent* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %23
  br label %110

35:                                               ; preds = %23
  %36 = load %struct.dentry*, %struct.dentry** %5, align 8
  %37 = getelementptr inbounds %struct.dentry, %struct.dentry* %36, i32 0, i32 0
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = call %struct.config_item* @configfs_get_config_item(%struct.TYPE_6__* %38)
  store %struct.config_item* %39, %struct.config_item** %10, align 8
  %40 = load %struct.config_item*, %struct.config_item** %10, align 8
  %41 = getelementptr inbounds %struct.config_item, %struct.config_item* %40, i32 0, i32 0
  %42 = load %struct.config_item_type*, %struct.config_item_type** %41, align 8
  store %struct.config_item_type* %42, %struct.config_item_type** %12, align 8
  %43 = load i32, i32* @EPERM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %7, align 4
  %45 = load %struct.config_item_type*, %struct.config_item_type** %12, align 8
  %46 = icmp ne %struct.config_item_type* %45, null
  br i1 %46, label %47, label %59

47:                                               ; preds = %35
  %48 = load %struct.config_item_type*, %struct.config_item_type** %12, align 8
  %49 = getelementptr inbounds %struct.config_item_type, %struct.config_item_type* %48, i32 0, i32 0
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = icmp ne %struct.TYPE_4__* %50, null
  br i1 %51, label %52, label %59

52:                                               ; preds = %47
  %53 = load %struct.config_item_type*, %struct.config_item_type** %12, align 8
  %54 = getelementptr inbounds %struct.config_item_type, %struct.config_item_type* %53, i32 0, i32 0
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32 (%struct.config_item*, %struct.config_item*)*, i32 (%struct.config_item*, %struct.config_item*)** %56, align 8
  %58 = icmp ne i32 (%struct.config_item*, %struct.config_item*)* %57, null
  br i1 %58, label %60, label %59

59:                                               ; preds = %52, %47, %35
  br label %107

60:                                               ; preds = %52
  %61 = load i8*, i8** %6, align 8
  %62 = call i32 @get_target(i8* %61, %struct.path* %8, %struct.config_item** %11)
  store i32 %62, i32* %7, align 4
  %63 = load i32, i32* %7, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %60
  br label %107

66:                                               ; preds = %60
  %67 = load %struct.config_item_type*, %struct.config_item_type** %12, align 8
  %68 = getelementptr inbounds %struct.config_item_type, %struct.config_item_type* %67, i32 0, i32 0
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i32 (%struct.config_item*, %struct.config_item*)*, i32 (%struct.config_item*, %struct.config_item*)** %70, align 8
  %72 = load %struct.config_item*, %struct.config_item** %10, align 8
  %73 = load %struct.config_item*, %struct.config_item** %11, align 8
  %74 = call i32 %71(%struct.config_item* %72, %struct.config_item* %73)
  store i32 %74, i32* %7, align 4
  %75 = load i32, i32* %7, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %103, label %77

77:                                               ; preds = %66
  %78 = call i32 @mutex_lock(i32* @configfs_symlink_mutex)
  %79 = load %struct.config_item*, %struct.config_item** %10, align 8
  %80 = load %struct.config_item*, %struct.config_item** %11, align 8
  %81 = load %struct.dentry*, %struct.dentry** %5, align 8
  %82 = call i32 @create_link(%struct.config_item* %79, %struct.config_item* %80, %struct.dentry* %81)
  store i32 %82, i32* %7, align 4
  %83 = call i32 @mutex_unlock(i32* @configfs_symlink_mutex)
  %84 = load i32, i32* %7, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %102

86:                                               ; preds = %77
  %87 = load %struct.config_item_type*, %struct.config_item_type** %12, align 8
  %88 = getelementptr inbounds %struct.config_item_type, %struct.config_item_type* %87, i32 0, i32 0
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 1
  %91 = load i32 (%struct.config_item*, %struct.config_item*)*, i32 (%struct.config_item*, %struct.config_item*)** %90, align 8
  %92 = icmp ne i32 (%struct.config_item*, %struct.config_item*)* %91, null
  br i1 %92, label %93, label %102

93:                                               ; preds = %86
  %94 = load %struct.config_item_type*, %struct.config_item_type** %12, align 8
  %95 = getelementptr inbounds %struct.config_item_type, %struct.config_item_type* %94, i32 0, i32 0
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 1
  %98 = load i32 (%struct.config_item*, %struct.config_item*)*, i32 (%struct.config_item*, %struct.config_item*)** %97, align 8
  %99 = load %struct.config_item*, %struct.config_item** %10, align 8
  %100 = load %struct.config_item*, %struct.config_item** %11, align 8
  %101 = call i32 %98(%struct.config_item* %99, %struct.config_item* %100)
  br label %102

102:                                              ; preds = %93, %86, %77
  br label %103

103:                                              ; preds = %102, %66
  %104 = load %struct.config_item*, %struct.config_item** %11, align 8
  %105 = call i32 @config_item_put(%struct.config_item* %104)
  %106 = call i32 @path_put(%struct.path* %8)
  br label %107

107:                                              ; preds = %103, %65, %59
  %108 = load %struct.config_item*, %struct.config_item** %10, align 8
  %109 = call i32 @config_item_put(%struct.config_item* %108)
  br label %110

110:                                              ; preds = %107, %34, %22
  %111 = load i32, i32* %7, align 4
  ret i32 %111
}

declare dso_local i32 @configfs_dirent_is_ready(%struct.configfs_dirent*) #1

declare dso_local %struct.config_item* @configfs_get_config_item(%struct.TYPE_6__*) #1

declare dso_local i32 @get_target(i8*, %struct.path*, %struct.config_item**) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @create_link(%struct.config_item*, %struct.config_item*, %struct.dentry*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @config_item_put(%struct.config_item*) #1

declare dso_local i32 @path_put(%struct.path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
