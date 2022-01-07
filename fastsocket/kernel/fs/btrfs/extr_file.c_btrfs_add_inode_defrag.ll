; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_file.c_btrfs_add_inode_defrag.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_file.c_btrfs_add_inode_defrag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_trans_handle = type { i32 }
%struct.inode = type { i32 }
%struct.btrfs_root = type { %struct.TYPE_5__*, %struct.TYPE_4__, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.inode_defrag = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i32, %struct.btrfs_root* }

@AUTO_DEFRAG = common dso_local global i32 0, align 4
@BTRFS_INODE_IN_DEFRAG = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btrfs_add_inode_defrag(%struct.btrfs_trans_handle* %0, %struct.inode* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.btrfs_trans_handle*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.btrfs_root*, align 8
  %7 = alloca %struct.inode_defrag*, align 8
  %8 = alloca i32, align 4
  store %struct.btrfs_trans_handle* %0, %struct.btrfs_trans_handle** %4, align 8
  store %struct.inode* %1, %struct.inode** %5, align 8
  %9 = load %struct.inode*, %struct.inode** %5, align 8
  %10 = call %struct.TYPE_6__* @BTRFS_I(%struct.inode* %9)
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 1
  %12 = load %struct.btrfs_root*, %struct.btrfs_root** %11, align 8
  store %struct.btrfs_root* %12, %struct.btrfs_root** %6, align 8
  %13 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %14 = load i32, i32* @AUTO_DEFRAG, align 4
  %15 = call i32 @btrfs_test_opt(%struct.btrfs_root* %13, i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %93

18:                                               ; preds = %2
  %19 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %20 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %19, i32 0, i32 0
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = call i64 @btrfs_fs_closing(%struct.TYPE_5__* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  store i32 0, i32* %3, align 4
  br label %93

25:                                               ; preds = %18
  %26 = load i32, i32* @BTRFS_INODE_IN_DEFRAG, align 4
  %27 = load %struct.inode*, %struct.inode** %5, align 8
  %28 = call %struct.TYPE_6__* @BTRFS_I(%struct.inode* %27)
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = call i64 @test_bit(i32 %26, i32* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %25
  store i32 0, i32* %3, align 4
  br label %93

33:                                               ; preds = %25
  %34 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %4, align 8
  %35 = icmp ne %struct.btrfs_trans_handle* %34, null
  br i1 %35, label %36, label %40

36:                                               ; preds = %33
  %37 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %4, align 8
  %38 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %8, align 4
  br label %47

40:                                               ; preds = %33
  %41 = load %struct.inode*, %struct.inode** %5, align 8
  %42 = call %struct.TYPE_6__* @BTRFS_I(%struct.inode* %41)
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 1
  %44 = load %struct.btrfs_root*, %struct.btrfs_root** %43, align 8
  %45 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %8, align 4
  br label %47

47:                                               ; preds = %40, %36
  %48 = load i32, i32* @GFP_NOFS, align 4
  %49 = call %struct.inode_defrag* @kzalloc(i32 12, i32 %48)
  store %struct.inode_defrag* %49, %struct.inode_defrag** %7, align 8
  %50 = load %struct.inode_defrag*, %struct.inode_defrag** %7, align 8
  %51 = icmp ne %struct.inode_defrag* %50, null
  br i1 %51, label %55, label %52

52:                                               ; preds = %47
  %53 = load i32, i32* @ENOMEM, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %3, align 4
  br label %93

55:                                               ; preds = %47
  %56 = load %struct.inode*, %struct.inode** %5, align 8
  %57 = call i32 @btrfs_ino(%struct.inode* %56)
  %58 = load %struct.inode_defrag*, %struct.inode_defrag** %7, align 8
  %59 = getelementptr inbounds %struct.inode_defrag, %struct.inode_defrag* %58, i32 0, i32 2
  store i32 %57, i32* %59, align 4
  %60 = load i32, i32* %8, align 4
  %61 = load %struct.inode_defrag*, %struct.inode_defrag** %7, align 8
  %62 = getelementptr inbounds %struct.inode_defrag, %struct.inode_defrag* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 4
  %63 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %64 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.inode_defrag*, %struct.inode_defrag** %7, align 8
  %68 = getelementptr inbounds %struct.inode_defrag, %struct.inode_defrag* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 4
  %69 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %70 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %69, i32 0, i32 0
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = call i32 @spin_lock(i32* %72)
  %74 = load i32, i32* @BTRFS_INODE_IN_DEFRAG, align 4
  %75 = load %struct.inode*, %struct.inode** %5, align 8
  %76 = call %struct.TYPE_6__* @BTRFS_I(%struct.inode* %75)
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = call i64 @test_bit(i32 %74, i32* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %84, label %80

80:                                               ; preds = %55
  %81 = load %struct.inode*, %struct.inode** %5, align 8
  %82 = load %struct.inode_defrag*, %struct.inode_defrag** %7, align 8
  %83 = call i32 @__btrfs_add_inode_defrag(%struct.inode* %81, %struct.inode_defrag* %82)
  br label %87

84:                                               ; preds = %55
  %85 = load %struct.inode_defrag*, %struct.inode_defrag** %7, align 8
  %86 = call i32 @kfree(%struct.inode_defrag* %85)
  br label %87

87:                                               ; preds = %84, %80
  %88 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %89 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %88, i32 0, i32 0
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 0
  %92 = call i32 @spin_unlock(i32* %91)
  store i32 0, i32* %3, align 4
  br label %93

93:                                               ; preds = %87, %52, %32, %24, %17
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

declare dso_local %struct.TYPE_6__* @BTRFS_I(%struct.inode*) #1

declare dso_local i32 @btrfs_test_opt(%struct.btrfs_root*, i32) #1

declare dso_local i64 @btrfs_fs_closing(%struct.TYPE_5__*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local %struct.inode_defrag* @kzalloc(i32, i32) #1

declare dso_local i32 @btrfs_ino(%struct.inode*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @__btrfs_add_inode_defrag(%struct.inode*, %struct.inode_defrag*) #1

declare dso_local i32 @kfree(%struct.inode_defrag*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
