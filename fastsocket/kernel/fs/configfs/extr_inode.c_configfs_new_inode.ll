; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/configfs/extr_inode.c_configfs_new_inode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/configfs/extr_inode.c_configfs_new_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32*, i32* }
%struct.configfs_dirent = type { i32 }

@configfs_sb = common dso_local global i32 0, align 4
@configfs_aops = common dso_local global i32 0, align 4
@configfs_backing_dev_info = common dso_local global i32 0, align 4
@configfs_inode_operations = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.inode* @configfs_new_inode(i32 %0, %struct.configfs_dirent* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.configfs_dirent*, align 8
  %5 = alloca %struct.inode*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.configfs_dirent* %1, %struct.configfs_dirent** %4, align 8
  %6 = load i32, i32* @configfs_sb, align 4
  %7 = call %struct.inode* @new_inode(i32 %6)
  store %struct.inode* %7, %struct.inode** %5, align 8
  %8 = load %struct.inode*, %struct.inode** %5, align 8
  %9 = icmp ne %struct.inode* %8, null
  br i1 %9, label %10, label %36

10:                                               ; preds = %2
  %11 = load %struct.inode*, %struct.inode** %5, align 8
  %12 = getelementptr inbounds %struct.inode, %struct.inode* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  store i32* @configfs_aops, i32** %14, align 8
  %15 = load %struct.inode*, %struct.inode** %5, align 8
  %16 = getelementptr inbounds %struct.inode, %struct.inode* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store i32* @configfs_backing_dev_info, i32** %18, align 8
  %19 = load %struct.inode*, %struct.inode** %5, align 8
  %20 = getelementptr inbounds %struct.inode, %struct.inode* %19, i32 0, i32 0
  store i32* @configfs_inode_operations, i32** %20, align 8
  %21 = load %struct.configfs_dirent*, %struct.configfs_dirent** %4, align 8
  %22 = getelementptr inbounds %struct.configfs_dirent, %struct.configfs_dirent* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %10
  %26 = load %struct.inode*, %struct.inode** %5, align 8
  %27 = load %struct.configfs_dirent*, %struct.configfs_dirent** %4, align 8
  %28 = getelementptr inbounds %struct.configfs_dirent, %struct.configfs_dirent* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @set_inode_attr(%struct.inode* %26, i32 %29)
  br label %35

31:                                               ; preds = %10
  %32 = load %struct.inode*, %struct.inode** %5, align 8
  %33 = load i32, i32* %3, align 4
  %34 = call i32 @set_default_inode_attr(%struct.inode* %32, i32 %33)
  br label %35

35:                                               ; preds = %31, %25
  br label %36

36:                                               ; preds = %35, %2
  %37 = load %struct.inode*, %struct.inode** %5, align 8
  ret %struct.inode* %37
}

declare dso_local %struct.inode* @new_inode(i32) #1

declare dso_local i32 @set_inode_attr(%struct.inode*, i32) #1

declare dso_local i32 @set_default_inode_attr(%struct.inode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
