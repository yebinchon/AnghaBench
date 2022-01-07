; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_volumes.c_del_balance_item.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_volumes.c_del_balance_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_root = type { i32 }
%struct.btrfs_trans_handle = type { i32 }
%struct.btrfs_path = type { i32 }
%struct.btrfs_key = type { i64, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@BTRFS_BALANCE_OBJECTID = common dso_local global i32 0, align 4
@BTRFS_BALANCE_ITEM_KEY = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfs_root*)* @del_balance_item to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @del_balance_item(%struct.btrfs_root* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.btrfs_root*, align 8
  %4 = alloca %struct.btrfs_trans_handle*, align 8
  %5 = alloca %struct.btrfs_path*, align 8
  %6 = alloca %struct.btrfs_key, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.btrfs_root* %0, %struct.btrfs_root** %3, align 8
  %9 = call %struct.btrfs_path* (...) @btrfs_alloc_path()
  store %struct.btrfs_path* %9, %struct.btrfs_path** %5, align 8
  %10 = load %struct.btrfs_path*, %struct.btrfs_path** %5, align 8
  %11 = icmp ne %struct.btrfs_path* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %65

15:                                               ; preds = %1
  %16 = load %struct.btrfs_root*, %struct.btrfs_root** %3, align 8
  %17 = call %struct.btrfs_trans_handle* @btrfs_start_transaction(%struct.btrfs_root* %16, i32 0)
  store %struct.btrfs_trans_handle* %17, %struct.btrfs_trans_handle** %4, align 8
  %18 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %4, align 8
  %19 = call i64 @IS_ERR(%struct.btrfs_trans_handle* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %15
  %22 = load %struct.btrfs_path*, %struct.btrfs_path** %5, align 8
  %23 = call i32 @btrfs_free_path(%struct.btrfs_path* %22)
  %24 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %4, align 8
  %25 = call i32 @PTR_ERR(%struct.btrfs_trans_handle* %24)
  store i32 %25, i32* %2, align 4
  br label %65

26:                                               ; preds = %15
  %27 = load i32, i32* @BTRFS_BALANCE_OBJECTID, align 4
  %28 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %6, i32 0, i32 2
  store i32 %27, i32* %28, align 4
  %29 = load i32, i32* @BTRFS_BALANCE_ITEM_KEY, align 4
  %30 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %6, i32 0, i32 1
  store i32 %29, i32* %30, align 8
  %31 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %6, i32 0, i32 0
  store i64 0, i64* %31, align 8
  %32 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %4, align 8
  %33 = load %struct.btrfs_root*, %struct.btrfs_root** %3, align 8
  %34 = load %struct.btrfs_path*, %struct.btrfs_path** %5, align 8
  %35 = call i32 @btrfs_search_slot(%struct.btrfs_trans_handle* %32, %struct.btrfs_root* %33, %struct.btrfs_key* %6, %struct.btrfs_path* %34, i32 -1, i32 1)
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %26
  br label %50

39:                                               ; preds = %26
  %40 = load i32, i32* %7, align 4
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %39
  %43 = load i32, i32* @ENOENT, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %7, align 4
  br label %50

45:                                               ; preds = %39
  %46 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %4, align 8
  %47 = load %struct.btrfs_root*, %struct.btrfs_root** %3, align 8
  %48 = load %struct.btrfs_path*, %struct.btrfs_path** %5, align 8
  %49 = call i32 @btrfs_del_item(%struct.btrfs_trans_handle* %46, %struct.btrfs_root* %47, %struct.btrfs_path* %48)
  store i32 %49, i32* %7, align 4
  br label %50

50:                                               ; preds = %45, %42, %38
  %51 = load %struct.btrfs_path*, %struct.btrfs_path** %5, align 8
  %52 = call i32 @btrfs_free_path(%struct.btrfs_path* %51)
  %53 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %4, align 8
  %54 = load %struct.btrfs_root*, %struct.btrfs_root** %3, align 8
  %55 = call i32 @btrfs_commit_transaction(%struct.btrfs_trans_handle* %53, %struct.btrfs_root* %54)
  store i32 %55, i32* %8, align 4
  %56 = load i32, i32* %8, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %50
  %59 = load i32, i32* %7, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %63, label %61

61:                                               ; preds = %58
  %62 = load i32, i32* %8, align 4
  store i32 %62, i32* %7, align 4
  br label %63

63:                                               ; preds = %61, %58, %50
  %64 = load i32, i32* %7, align 4
  store i32 %64, i32* %2, align 4
  br label %65

65:                                               ; preds = %63, %21, %12
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local %struct.btrfs_path* @btrfs_alloc_path(...) #1

declare dso_local %struct.btrfs_trans_handle* @btrfs_start_transaction(%struct.btrfs_root*, i32) #1

declare dso_local i64 @IS_ERR(%struct.btrfs_trans_handle*) #1

declare dso_local i32 @btrfs_free_path(%struct.btrfs_path*) #1

declare dso_local i32 @PTR_ERR(%struct.btrfs_trans_handle*) #1

declare dso_local i32 @btrfs_search_slot(%struct.btrfs_trans_handle*, %struct.btrfs_root*, %struct.btrfs_key*, %struct.btrfs_path*, i32, i32) #1

declare dso_local i32 @btrfs_del_item(%struct.btrfs_trans_handle*, %struct.btrfs_root*, %struct.btrfs_path*) #1

declare dso_local i32 @btrfs_commit_transaction(%struct.btrfs_trans_handle*, %struct.btrfs_root*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
