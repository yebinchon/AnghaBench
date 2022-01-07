; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_transaction.c_btrfs_defrag_root.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_transaction.c_btrfs_defrag_root.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_root = type { i64, %struct.btrfs_fs_info* }
%struct.btrfs_fs_info = type { i32 }
%struct.btrfs_trans_handle = type { i64 }

@EAGAIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btrfs_defrag_root(%struct.btrfs_root* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.btrfs_root*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.btrfs_fs_info*, align 8
  %7 = alloca %struct.btrfs_trans_handle*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.btrfs_root* %0, %struct.btrfs_root** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %11 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %10, i32 0, i32 1
  %12 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %11, align 8
  store %struct.btrfs_fs_info* %12, %struct.btrfs_fs_info** %6, align 8
  %13 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %14 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %13, i32 0, i32 0
  %15 = call i64 @xchg(i64* %14, i32 1)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %61

18:                                               ; preds = %2
  br label %19

19:                                               ; preds = %18, %56
  %20 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %21 = call %struct.btrfs_trans_handle* @btrfs_start_transaction(%struct.btrfs_root* %20, i32 0)
  store %struct.btrfs_trans_handle* %21, %struct.btrfs_trans_handle** %7, align 8
  %22 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %7, align 8
  %23 = call i64 @IS_ERR(%struct.btrfs_trans_handle* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %19
  %26 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %7, align 8
  %27 = call i32 @PTR_ERR(%struct.btrfs_trans_handle* %26)
  store i32 %27, i32* %3, align 4
  br label %61

28:                                               ; preds = %19
  %29 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %7, align 8
  %30 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @btrfs_defrag_leaves(%struct.btrfs_trans_handle* %29, %struct.btrfs_root* %30, i32 %31)
  store i32 %32, i32* %8, align 4
  %33 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %7, align 8
  %34 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %9, align 8
  %36 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %7, align 8
  %37 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %38 = call i32 @btrfs_end_transaction(%struct.btrfs_trans_handle* %36, %struct.btrfs_root* %37)
  %39 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %6, align 8
  %40 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i64, i64* %9, align 8
  %43 = call i32 @btrfs_btree_balance_dirty(i32 %41, i64 %42)
  %44 = call i32 (...) @cond_resched()
  %45 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %46 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %45, i32 0, i32 1
  %47 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %46, align 8
  %48 = call i64 @btrfs_fs_closing(%struct.btrfs_fs_info* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %55, label %50

50:                                               ; preds = %28
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* @EAGAIN, align 4
  %53 = sub nsw i32 0, %52
  %54 = icmp ne i32 %51, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %50, %28
  br label %57

56:                                               ; preds = %50
  br label %19

57:                                               ; preds = %55
  %58 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %59 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %58, i32 0, i32 0
  store i64 0, i64* %59, align 8
  %60 = load i32, i32* %8, align 4
  store i32 %60, i32* %3, align 4
  br label %61

61:                                               ; preds = %57, %25, %17
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i64 @xchg(i64*, i32) #1

declare dso_local %struct.btrfs_trans_handle* @btrfs_start_transaction(%struct.btrfs_root*, i32) #1

declare dso_local i64 @IS_ERR(%struct.btrfs_trans_handle*) #1

declare dso_local i32 @PTR_ERR(%struct.btrfs_trans_handle*) #1

declare dso_local i32 @btrfs_defrag_leaves(%struct.btrfs_trans_handle*, %struct.btrfs_root*, i32) #1

declare dso_local i32 @btrfs_end_transaction(%struct.btrfs_trans_handle*, %struct.btrfs_root*) #1

declare dso_local i32 @btrfs_btree_balance_dirty(i32, i64) #1

declare dso_local i32 @cond_resched(...) #1

declare dso_local i64 @btrfs_fs_closing(%struct.btrfs_fs_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
