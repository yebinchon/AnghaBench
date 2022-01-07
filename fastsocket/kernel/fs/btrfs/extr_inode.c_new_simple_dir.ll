; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_inode.c_new_simple_dir.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_inode.c_new_simple_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, i32, i32, i32*, i32*, i32 }
%struct.super_block = type { i32 }
%struct.btrfs_key = type { i32 }
%struct.btrfs_root = type { i32 }
%struct.TYPE_2__ = type { i32, i32, %struct.btrfs_root* }

@ENOMEM = common dso_local global i32 0, align 4
@BTRFS_INODE_DUMMY = common dso_local global i32 0, align 4
@BTRFS_EMPTY_SUBVOL_DIR_OBJECTID = common dso_local global i32 0, align 4
@btrfs_dir_ro_inode_operations = common dso_local global i32 0, align 4
@simple_dir_operations = common dso_local global i32 0, align 4
@S_IFDIR = common dso_local global i32 0, align 4
@S_IRUGO = common dso_local global i32 0, align 4
@S_IWUSR = common dso_local global i32 0, align 4
@S_IXUGO = common dso_local global i32 0, align 4
@CURRENT_TIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.inode* (%struct.super_block*, %struct.btrfs_key*, %struct.btrfs_root*)* @new_simple_dir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.inode* @new_simple_dir(%struct.super_block* %0, %struct.btrfs_key* %1, %struct.btrfs_root* %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca %struct.btrfs_key*, align 8
  %7 = alloca %struct.btrfs_root*, align 8
  %8 = alloca %struct.inode*, align 8
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store %struct.btrfs_key* %1, %struct.btrfs_key** %6, align 8
  store %struct.btrfs_root* %2, %struct.btrfs_root** %7, align 8
  %9 = load %struct.super_block*, %struct.super_block** %5, align 8
  %10 = call %struct.inode* @new_inode(%struct.super_block* %9)
  store %struct.inode* %10, %struct.inode** %8, align 8
  %11 = load %struct.inode*, %struct.inode** %8, align 8
  %12 = icmp ne %struct.inode* %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %3
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  %16 = call %struct.inode* @ERR_PTR(i32 %15)
  store %struct.inode* %16, %struct.inode** %4, align 8
  br label %56

17:                                               ; preds = %3
  %18 = load %struct.btrfs_root*, %struct.btrfs_root** %7, align 8
  %19 = load %struct.inode*, %struct.inode** %8, align 8
  %20 = call %struct.TYPE_2__* @BTRFS_I(%struct.inode* %19)
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 2
  store %struct.btrfs_root* %18, %struct.btrfs_root** %21, align 8
  %22 = load %struct.inode*, %struct.inode** %8, align 8
  %23 = call %struct.TYPE_2__* @BTRFS_I(%struct.inode* %22)
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load %struct.btrfs_key*, %struct.btrfs_key** %6, align 8
  %26 = call i32 @memcpy(i32* %24, %struct.btrfs_key* %25, i32 4)
  %27 = load i32, i32* @BTRFS_INODE_DUMMY, align 4
  %28 = load %struct.inode*, %struct.inode** %8, align 8
  %29 = call %struct.TYPE_2__* @BTRFS_I(%struct.inode* %28)
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = call i32 @set_bit(i32 %27, i32* %30)
  %32 = load i32, i32* @BTRFS_EMPTY_SUBVOL_DIR_OBJECTID, align 4
  %33 = load %struct.inode*, %struct.inode** %8, align 8
  %34 = getelementptr inbounds %struct.inode, %struct.inode* %33, i32 0, i32 6
  store i32 %32, i32* %34, align 8
  %35 = load %struct.inode*, %struct.inode** %8, align 8
  %36 = getelementptr inbounds %struct.inode, %struct.inode* %35, i32 0, i32 5
  store i32* @btrfs_dir_ro_inode_operations, i32** %36, align 8
  %37 = load %struct.inode*, %struct.inode** %8, align 8
  %38 = getelementptr inbounds %struct.inode, %struct.inode* %37, i32 0, i32 4
  store i32* @simple_dir_operations, i32** %38, align 8
  %39 = load i32, i32* @S_IFDIR, align 4
  %40 = load i32, i32* @S_IRUGO, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @S_IWUSR, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @S_IXUGO, align 4
  %45 = or i32 %43, %44
  %46 = load %struct.inode*, %struct.inode** %8, align 8
  %47 = getelementptr inbounds %struct.inode, %struct.inode* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  %48 = load i32, i32* @CURRENT_TIME, align 4
  %49 = load %struct.inode*, %struct.inode** %8, align 8
  %50 = getelementptr inbounds %struct.inode, %struct.inode* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  %51 = load %struct.inode*, %struct.inode** %8, align 8
  %52 = getelementptr inbounds %struct.inode, %struct.inode* %51, i32 0, i32 2
  store i32 %48, i32* %52, align 8
  %53 = load %struct.inode*, %struct.inode** %8, align 8
  %54 = getelementptr inbounds %struct.inode, %struct.inode* %53, i32 0, i32 3
  store i32 %48, i32* %54, align 4
  %55 = load %struct.inode*, %struct.inode** %8, align 8
  store %struct.inode* %55, %struct.inode** %4, align 8
  br label %56

56:                                               ; preds = %17, %13
  %57 = load %struct.inode*, %struct.inode** %4, align 8
  ret %struct.inode* %57
}

declare dso_local %struct.inode* @new_inode(%struct.super_block*) #1

declare dso_local %struct.inode* @ERR_PTR(i32) #1

declare dso_local %struct.TYPE_2__* @BTRFS_I(%struct.inode*) #1

declare dso_local i32 @memcpy(i32*, %struct.btrfs_key*, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
