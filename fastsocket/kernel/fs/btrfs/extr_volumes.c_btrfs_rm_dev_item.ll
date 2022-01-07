; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_volumes.c_btrfs_rm_dev_item.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_volumes.c_btrfs_rm_dev_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_root = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.btrfs_root* }
%struct.btrfs_device = type { i32 }
%struct.btrfs_path = type { i32 }
%struct.btrfs_key = type { i32, i32, i32 }
%struct.btrfs_trans_handle = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@BTRFS_DEV_ITEMS_OBJECTID = common dso_local global i32 0, align 4
@BTRFS_DEV_ITEM_KEY = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfs_root*, %struct.btrfs_device*)* @btrfs_rm_dev_item to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btrfs_rm_dev_item(%struct.btrfs_root* %0, %struct.btrfs_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.btrfs_root*, align 8
  %5 = alloca %struct.btrfs_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.btrfs_path*, align 8
  %8 = alloca %struct.btrfs_key, align 4
  %9 = alloca %struct.btrfs_trans_handle*, align 8
  store %struct.btrfs_root* %0, %struct.btrfs_root** %4, align 8
  store %struct.btrfs_device* %1, %struct.btrfs_device** %5, align 8
  %10 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %11 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.btrfs_root*, %struct.btrfs_root** %13, align 8
  store %struct.btrfs_root* %14, %struct.btrfs_root** %4, align 8
  %15 = call %struct.btrfs_path* (...) @btrfs_alloc_path()
  store %struct.btrfs_path* %15, %struct.btrfs_path** %7, align 8
  %16 = load %struct.btrfs_path*, %struct.btrfs_path** %7, align 8
  %17 = icmp ne %struct.btrfs_path* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %74

21:                                               ; preds = %2
  %22 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %23 = call %struct.btrfs_trans_handle* @btrfs_start_transaction(%struct.btrfs_root* %22, i32 0)
  store %struct.btrfs_trans_handle* %23, %struct.btrfs_trans_handle** %9, align 8
  %24 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %9, align 8
  %25 = call i64 @IS_ERR(%struct.btrfs_trans_handle* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %21
  %28 = load %struct.btrfs_path*, %struct.btrfs_path** %7, align 8
  %29 = call i32 @btrfs_free_path(%struct.btrfs_path* %28)
  %30 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %9, align 8
  %31 = call i32 @PTR_ERR(%struct.btrfs_trans_handle* %30)
  store i32 %31, i32* %3, align 4
  br label %74

32:                                               ; preds = %21
  %33 = load i32, i32* @BTRFS_DEV_ITEMS_OBJECTID, align 4
  %34 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %8, i32 0, i32 2
  store i32 %33, i32* %34, align 4
  %35 = load i32, i32* @BTRFS_DEV_ITEM_KEY, align 4
  %36 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %8, i32 0, i32 1
  store i32 %35, i32* %36, align 4
  %37 = load %struct.btrfs_device*, %struct.btrfs_device** %5, align 8
  %38 = getelementptr inbounds %struct.btrfs_device, %struct.btrfs_device* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %8, i32 0, i32 0
  store i32 %39, i32* %40, align 4
  %41 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %42 = call i32 @lock_chunks(%struct.btrfs_root* %41)
  %43 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %9, align 8
  %44 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %45 = load %struct.btrfs_path*, %struct.btrfs_path** %7, align 8
  %46 = call i32 @btrfs_search_slot(%struct.btrfs_trans_handle* %43, %struct.btrfs_root* %44, %struct.btrfs_key* %8, %struct.btrfs_path* %45, i32 -1, i32 1)
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %6, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %32
  br label %65

50:                                               ; preds = %32
  %51 = load i32, i32* %6, align 4
  %52 = icmp sgt i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %50
  %54 = load i32, i32* @ENOENT, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %6, align 4
  br label %65

56:                                               ; preds = %50
  %57 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %9, align 8
  %58 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %59 = load %struct.btrfs_path*, %struct.btrfs_path** %7, align 8
  %60 = call i32 @btrfs_del_item(%struct.btrfs_trans_handle* %57, %struct.btrfs_root* %58, %struct.btrfs_path* %59)
  store i32 %60, i32* %6, align 4
  %61 = load i32, i32* %6, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %56
  br label %65

64:                                               ; preds = %56
  br label %65

65:                                               ; preds = %64, %63, %53, %49
  %66 = load %struct.btrfs_path*, %struct.btrfs_path** %7, align 8
  %67 = call i32 @btrfs_free_path(%struct.btrfs_path* %66)
  %68 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %69 = call i32 @unlock_chunks(%struct.btrfs_root* %68)
  %70 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %9, align 8
  %71 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %72 = call i32 @btrfs_commit_transaction(%struct.btrfs_trans_handle* %70, %struct.btrfs_root* %71)
  %73 = load i32, i32* %6, align 4
  store i32 %73, i32* %3, align 4
  br label %74

74:                                               ; preds = %65, %27, %18
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local %struct.btrfs_path* @btrfs_alloc_path(...) #1

declare dso_local %struct.btrfs_trans_handle* @btrfs_start_transaction(%struct.btrfs_root*, i32) #1

declare dso_local i64 @IS_ERR(%struct.btrfs_trans_handle*) #1

declare dso_local i32 @btrfs_free_path(%struct.btrfs_path*) #1

declare dso_local i32 @PTR_ERR(%struct.btrfs_trans_handle*) #1

declare dso_local i32 @lock_chunks(%struct.btrfs_root*) #1

declare dso_local i32 @btrfs_search_slot(%struct.btrfs_trans_handle*, %struct.btrfs_root*, %struct.btrfs_key*, %struct.btrfs_path*, i32, i32) #1

declare dso_local i32 @btrfs_del_item(%struct.btrfs_trans_handle*, %struct.btrfs_root*, %struct.btrfs_path*) #1

declare dso_local i32 @unlock_chunks(%struct.btrfs_root*) #1

declare dso_local i32 @btrfs_commit_transaction(%struct.btrfs_trans_handle*, %struct.btrfs_root*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
