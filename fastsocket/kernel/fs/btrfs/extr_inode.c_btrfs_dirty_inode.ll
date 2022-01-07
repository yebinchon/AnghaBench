; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_inode.c_btrfs_dirty_inode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_inode.c_btrfs_dirty_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.btrfs_root = type { i32 }
%struct.btrfs_trans_handle = type { i32 }
%struct.TYPE_2__ = type { i64, i32, %struct.btrfs_root* }

@BTRFS_INODE_DUMMY = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btrfs_dirty_inode(%struct.inode* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.btrfs_root*, align 8
  %5 = alloca %struct.btrfs_trans_handle*, align 8
  %6 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  %7 = load %struct.inode*, %struct.inode** %3, align 8
  %8 = call %struct.TYPE_2__* @BTRFS_I(%struct.inode* %7)
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 2
  %10 = load %struct.btrfs_root*, %struct.btrfs_root** %9, align 8
  store %struct.btrfs_root* %10, %struct.btrfs_root** %4, align 8
  %11 = load i32, i32* @BTRFS_INODE_DUMMY, align 4
  %12 = load %struct.inode*, %struct.inode** %3, align 8
  %13 = call %struct.TYPE_2__* @BTRFS_I(%struct.inode* %12)
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = call i64 @test_bit(i32 %11, i32* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %70

18:                                               ; preds = %1
  %19 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %20 = call %struct.btrfs_trans_handle* @btrfs_join_transaction(%struct.btrfs_root* %19)
  store %struct.btrfs_trans_handle* %20, %struct.btrfs_trans_handle** %5, align 8
  %21 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %5, align 8
  %22 = call i64 @IS_ERR(%struct.btrfs_trans_handle* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %18
  %25 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %5, align 8
  %26 = call i32 @PTR_ERR(%struct.btrfs_trans_handle* %25)
  store i32 %26, i32* %2, align 4
  br label %70

27:                                               ; preds = %18
  %28 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %5, align 8
  %29 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %30 = load %struct.inode*, %struct.inode** %3, align 8
  %31 = call i32 @btrfs_update_inode(%struct.btrfs_trans_handle* %28, %struct.btrfs_root* %29, %struct.inode* %30)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %56

34:                                               ; preds = %27
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @ENOSPC, align 4
  %37 = sub nsw i32 0, %36
  %38 = icmp eq i32 %35, %37
  br i1 %38, label %39, label %56

39:                                               ; preds = %34
  %40 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %5, align 8
  %41 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %42 = call i32 @btrfs_end_transaction(%struct.btrfs_trans_handle* %40, %struct.btrfs_root* %41)
  %43 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %44 = call %struct.btrfs_trans_handle* @btrfs_start_transaction(%struct.btrfs_root* %43, i32 1)
  store %struct.btrfs_trans_handle* %44, %struct.btrfs_trans_handle** %5, align 8
  %45 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %5, align 8
  %46 = call i64 @IS_ERR(%struct.btrfs_trans_handle* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %39
  %49 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %5, align 8
  %50 = call i32 @PTR_ERR(%struct.btrfs_trans_handle* %49)
  store i32 %50, i32* %2, align 4
  br label %70

51:                                               ; preds = %39
  %52 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %5, align 8
  %53 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %54 = load %struct.inode*, %struct.inode** %3, align 8
  %55 = call i32 @btrfs_update_inode(%struct.btrfs_trans_handle* %52, %struct.btrfs_root* %53, %struct.inode* %54)
  store i32 %55, i32* %6, align 4
  br label %56

56:                                               ; preds = %51, %34, %27
  %57 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %5, align 8
  %58 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %59 = call i32 @btrfs_end_transaction(%struct.btrfs_trans_handle* %57, %struct.btrfs_root* %58)
  %60 = load %struct.inode*, %struct.inode** %3, align 8
  %61 = call %struct.TYPE_2__* @BTRFS_I(%struct.inode* %60)
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %56
  %66 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %67 = call i32 @btrfs_balance_delayed_items(%struct.btrfs_root* %66)
  br label %68

68:                                               ; preds = %65, %56
  %69 = load i32, i32* %6, align 4
  store i32 %69, i32* %2, align 4
  br label %70

70:                                               ; preds = %68, %48, %24, %17
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local %struct.TYPE_2__* @BTRFS_I(%struct.inode*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local %struct.btrfs_trans_handle* @btrfs_join_transaction(%struct.btrfs_root*) #1

declare dso_local i64 @IS_ERR(%struct.btrfs_trans_handle*) #1

declare dso_local i32 @PTR_ERR(%struct.btrfs_trans_handle*) #1

declare dso_local i32 @btrfs_update_inode(%struct.btrfs_trans_handle*, %struct.btrfs_root*, %struct.inode*) #1

declare dso_local i32 @btrfs_end_transaction(%struct.btrfs_trans_handle*, %struct.btrfs_root*) #1

declare dso_local %struct.btrfs_trans_handle* @btrfs_start_transaction(%struct.btrfs_root*, i32) #1

declare dso_local i32 @btrfs_balance_delayed_items(%struct.btrfs_root*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
