; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_cgroup.c_cgroup_get_rootdir.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_cgroup.c_cgroup_get_rootdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { %struct.dentry* }
%struct.dentry = type { i32 }
%struct.inode = type { i32*, i32* }

@S_IFDIR = common dso_local global i32 0, align 4
@S_IRUGO = common dso_local global i32 0, align 4
@S_IXUGO = common dso_local global i32 0, align 4
@S_IWUSR = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@simple_dir_operations = common dso_local global i32 0, align 4
@cgroup_dir_inode_operations = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*)* @cgroup_get_rootdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cgroup_get_rootdir(%struct.super_block* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.dentry*, align 8
  store %struct.super_block* %0, %struct.super_block** %3, align 8
  %6 = load i32, i32* @S_IFDIR, align 4
  %7 = load i32, i32* @S_IRUGO, align 4
  %8 = or i32 %6, %7
  %9 = load i32, i32* @S_IXUGO, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @S_IWUSR, align 4
  %12 = or i32 %10, %11
  %13 = load %struct.super_block*, %struct.super_block** %3, align 8
  %14 = call %struct.inode* @cgroup_new_inode(i32 %12, %struct.super_block* %13)
  store %struct.inode* %14, %struct.inode** %4, align 8
  %15 = load %struct.inode*, %struct.inode** %4, align 8
  %16 = icmp ne %struct.inode* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %40

20:                                               ; preds = %1
  %21 = load %struct.inode*, %struct.inode** %4, align 8
  %22 = getelementptr inbounds %struct.inode, %struct.inode* %21, i32 0, i32 1
  store i32* @simple_dir_operations, i32** %22, align 8
  %23 = load %struct.inode*, %struct.inode** %4, align 8
  %24 = getelementptr inbounds %struct.inode, %struct.inode* %23, i32 0, i32 0
  store i32* @cgroup_dir_inode_operations, i32** %24, align 8
  %25 = load %struct.inode*, %struct.inode** %4, align 8
  %26 = call i32 @inc_nlink(%struct.inode* %25)
  %27 = load %struct.inode*, %struct.inode** %4, align 8
  %28 = call %struct.dentry* @d_alloc_root(%struct.inode* %27)
  store %struct.dentry* %28, %struct.dentry** %5, align 8
  %29 = load %struct.dentry*, %struct.dentry** %5, align 8
  %30 = icmp ne %struct.dentry* %29, null
  br i1 %30, label %36, label %31

31:                                               ; preds = %20
  %32 = load %struct.inode*, %struct.inode** %4, align 8
  %33 = call i32 @iput(%struct.inode* %32)
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %40

36:                                               ; preds = %20
  %37 = load %struct.dentry*, %struct.dentry** %5, align 8
  %38 = load %struct.super_block*, %struct.super_block** %3, align 8
  %39 = getelementptr inbounds %struct.super_block, %struct.super_block* %38, i32 0, i32 0
  store %struct.dentry* %37, %struct.dentry** %39, align 8
  store i32 0, i32* %2, align 4
  br label %40

40:                                               ; preds = %36, %31, %17
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local %struct.inode* @cgroup_new_inode(i32, %struct.super_block*) #1

declare dso_local i32 @inc_nlink(%struct.inode*) #1

declare dso_local %struct.dentry* @d_alloc_root(%struct.inode*) #1

declare dso_local i32 @iput(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
