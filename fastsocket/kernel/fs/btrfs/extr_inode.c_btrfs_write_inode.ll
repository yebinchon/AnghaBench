; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_inode.c_btrfs_write_inode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_inode.c_btrfs_write_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.writeback_control = type { i64 }
%struct.btrfs_root = type { i32 }
%struct.btrfs_trans_handle = type { i32 }
%struct.TYPE_2__ = type { i32, %struct.btrfs_root* }

@BTRFS_INODE_DUMMY = common dso_local global i32 0, align 4
@WB_SYNC_ALL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btrfs_write_inode(%struct.inode* %0, %struct.writeback_control* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.writeback_control*, align 8
  %6 = alloca %struct.btrfs_root*, align 8
  %7 = alloca %struct.btrfs_trans_handle*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.writeback_control* %1, %struct.writeback_control** %5, align 8
  %10 = load %struct.inode*, %struct.inode** %4, align 8
  %11 = call %struct.TYPE_2__* @BTRFS_I(%struct.inode* %10)
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %13 = load %struct.btrfs_root*, %struct.btrfs_root** %12, align 8
  store %struct.btrfs_root* %13, %struct.btrfs_root** %6, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %14 = load i32, i32* @BTRFS_INODE_DUMMY, align 4
  %15 = load %struct.inode*, %struct.inode** %4, align 8
  %16 = call %struct.TYPE_2__* @BTRFS_I(%struct.inode* %15)
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = call i64 @test_bit(i32 %14, i32* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %69

21:                                               ; preds = %2
  %22 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %23 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @btrfs_fs_closing(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %21
  %28 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %29 = load %struct.inode*, %struct.inode** %4, align 8
  %30 = call i64 @btrfs_is_free_space_inode(%struct.btrfs_root* %28, %struct.inode* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  store i32 1, i32* %9, align 4
  br label %33

33:                                               ; preds = %32, %27, %21
  %34 = load %struct.writeback_control*, %struct.writeback_control** %5, align 8
  %35 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @WB_SYNC_ALL, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %67

39:                                               ; preds = %33
  %40 = load i32, i32* %9, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %39
  %43 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %44 = call %struct.btrfs_trans_handle* @btrfs_join_transaction_nolock(%struct.btrfs_root* %43)
  store %struct.btrfs_trans_handle* %44, %struct.btrfs_trans_handle** %7, align 8
  br label %48

45:                                               ; preds = %39
  %46 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %47 = call %struct.btrfs_trans_handle* @btrfs_join_transaction(%struct.btrfs_root* %46)
  store %struct.btrfs_trans_handle* %47, %struct.btrfs_trans_handle** %7, align 8
  br label %48

48:                                               ; preds = %45, %42
  %49 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %7, align 8
  %50 = call i64 @IS_ERR(%struct.btrfs_trans_handle* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %48
  %53 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %7, align 8
  %54 = call i32 @PTR_ERR(%struct.btrfs_trans_handle* %53)
  store i32 %54, i32* %3, align 4
  br label %69

55:                                               ; preds = %48
  %56 = load i32, i32* %9, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %55
  %59 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %7, align 8
  %60 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %61 = call i32 @btrfs_end_transaction_nolock(%struct.btrfs_trans_handle* %59, %struct.btrfs_root* %60)
  store i32 %61, i32* %8, align 4
  br label %66

62:                                               ; preds = %55
  %63 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %7, align 8
  %64 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %65 = call i32 @btrfs_commit_transaction(%struct.btrfs_trans_handle* %63, %struct.btrfs_root* %64)
  store i32 %65, i32* %8, align 4
  br label %66

66:                                               ; preds = %62, %58
  br label %67

67:                                               ; preds = %66, %33
  %68 = load i32, i32* %8, align 4
  store i32 %68, i32* %3, align 4
  br label %69

69:                                               ; preds = %67, %52, %20
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local %struct.TYPE_2__* @BTRFS_I(%struct.inode*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i64 @btrfs_fs_closing(i32) #1

declare dso_local i64 @btrfs_is_free_space_inode(%struct.btrfs_root*, %struct.inode*) #1

declare dso_local %struct.btrfs_trans_handle* @btrfs_join_transaction_nolock(%struct.btrfs_root*) #1

declare dso_local %struct.btrfs_trans_handle* @btrfs_join_transaction(%struct.btrfs_root*) #1

declare dso_local i64 @IS_ERR(%struct.btrfs_trans_handle*) #1

declare dso_local i32 @PTR_ERR(%struct.btrfs_trans_handle*) #1

declare dso_local i32 @btrfs_end_transaction_nolock(%struct.btrfs_trans_handle*, %struct.btrfs_root*) #1

declare dso_local i32 @btrfs_commit_transaction(%struct.btrfs_trans_handle*, %struct.btrfs_root*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
