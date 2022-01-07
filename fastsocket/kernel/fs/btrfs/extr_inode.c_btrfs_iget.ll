; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_inode.c_btrfs_iget.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_inode.c_btrfs_iget.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.super_block = type { i32 }
%struct.btrfs_key = type { i32 }
%struct.btrfs_root = type { i32 }
%struct.TYPE_2__ = type { i32, %struct.btrfs_root* }

@ENOMEM = common dso_local global i32 0, align 4
@I_NEW = common dso_local global i32 0, align 4
@ESTALE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.inode* @btrfs_iget(%struct.super_block* %0, %struct.btrfs_key* %1, %struct.btrfs_root* %2, i32* %3) #0 {
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca %struct.btrfs_key*, align 8
  %8 = alloca %struct.btrfs_root*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.inode*, align 8
  store %struct.super_block* %0, %struct.super_block** %6, align 8
  store %struct.btrfs_key* %1, %struct.btrfs_key** %7, align 8
  store %struct.btrfs_root* %2, %struct.btrfs_root** %8, align 8
  store i32* %3, i32** %9, align 8
  %11 = load %struct.super_block*, %struct.super_block** %6, align 8
  %12 = load %struct.btrfs_key*, %struct.btrfs_key** %7, align 8
  %13 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.btrfs_root*, %struct.btrfs_root** %8, align 8
  %16 = call %struct.inode* @btrfs_iget_locked(%struct.super_block* %11, i32 %14, %struct.btrfs_root* %15)
  store %struct.inode* %16, %struct.inode** %10, align 8
  %17 = load %struct.inode*, %struct.inode** %10, align 8
  %18 = icmp ne %struct.inode* %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %4
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  %22 = call %struct.inode* @ERR_PTR(i32 %21)
  store %struct.inode* %22, %struct.inode** %5, align 8
  br label %66

23:                                               ; preds = %4
  %24 = load %struct.inode*, %struct.inode** %10, align 8
  %25 = getelementptr inbounds %struct.inode, %struct.inode* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @I_NEW, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %64

30:                                               ; preds = %23
  %31 = load %struct.btrfs_root*, %struct.btrfs_root** %8, align 8
  %32 = load %struct.inode*, %struct.inode** %10, align 8
  %33 = call %struct.TYPE_2__* @BTRFS_I(%struct.inode* %32)
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  store %struct.btrfs_root* %31, %struct.btrfs_root** %34, align 8
  %35 = load %struct.inode*, %struct.inode** %10, align 8
  %36 = call %struct.TYPE_2__* @BTRFS_I(%struct.inode* %35)
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load %struct.btrfs_key*, %struct.btrfs_key** %7, align 8
  %39 = call i32 @memcpy(i32* %37, %struct.btrfs_key* %38, i32 4)
  %40 = load %struct.inode*, %struct.inode** %10, align 8
  %41 = call i32 @btrfs_read_locked_inode(%struct.inode* %40)
  %42 = load %struct.inode*, %struct.inode** %10, align 8
  %43 = call i32 @is_bad_inode(%struct.inode* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %55, label %45

45:                                               ; preds = %30
  %46 = load %struct.inode*, %struct.inode** %10, align 8
  %47 = call i32 @inode_tree_add(%struct.inode* %46)
  %48 = load %struct.inode*, %struct.inode** %10, align 8
  %49 = call i32 @unlock_new_inode(%struct.inode* %48)
  %50 = load i32*, i32** %9, align 8
  %51 = icmp ne i32* %50, null
  br i1 %51, label %52, label %54

52:                                               ; preds = %45
  %53 = load i32*, i32** %9, align 8
  store i32 1, i32* %53, align 4
  br label %54

54:                                               ; preds = %52, %45
  br label %63

55:                                               ; preds = %30
  %56 = load %struct.inode*, %struct.inode** %10, align 8
  %57 = call i32 @unlock_new_inode(%struct.inode* %56)
  %58 = load %struct.inode*, %struct.inode** %10, align 8
  %59 = call i32 @iput(%struct.inode* %58)
  %60 = load i32, i32* @ESTALE, align 4
  %61 = sub nsw i32 0, %60
  %62 = call %struct.inode* @ERR_PTR(i32 %61)
  store %struct.inode* %62, %struct.inode** %10, align 8
  br label %63

63:                                               ; preds = %55, %54
  br label %64

64:                                               ; preds = %63, %23
  %65 = load %struct.inode*, %struct.inode** %10, align 8
  store %struct.inode* %65, %struct.inode** %5, align 8
  br label %66

66:                                               ; preds = %64, %19
  %67 = load %struct.inode*, %struct.inode** %5, align 8
  ret %struct.inode* %67
}

declare dso_local %struct.inode* @btrfs_iget_locked(%struct.super_block*, i32, %struct.btrfs_root*) #1

declare dso_local %struct.inode* @ERR_PTR(i32) #1

declare dso_local %struct.TYPE_2__* @BTRFS_I(%struct.inode*) #1

declare dso_local i32 @memcpy(i32*, %struct.btrfs_key*, i32) #1

declare dso_local i32 @btrfs_read_locked_inode(%struct.inode*) #1

declare dso_local i32 @is_bad_inode(%struct.inode*) #1

declare dso_local i32 @inode_tree_add(%struct.inode*) #1

declare dso_local i32 @unlock_new_inode(%struct.inode*) #1

declare dso_local i32 @iput(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
