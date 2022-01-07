; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_dir-item.c_btrfs_lookup_dir_item.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_dir-item.c_btrfs_lookup_dir_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_dir_item = type { i32 }
%struct.btrfs_trans_handle = type { i32 }
%struct.btrfs_root = type { i32 }
%struct.btrfs_path = type { i32 }
%struct.btrfs_key = type { i32, i32 }

@BTRFS_DIR_ITEM_KEY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.btrfs_dir_item* @btrfs_lookup_dir_item(%struct.btrfs_trans_handle* %0, %struct.btrfs_root* %1, %struct.btrfs_path* %2, i32 %3, i8* %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.btrfs_dir_item*, align 8
  %9 = alloca %struct.btrfs_trans_handle*, align 8
  %10 = alloca %struct.btrfs_root*, align 8
  %11 = alloca %struct.btrfs_path*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.btrfs_key, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.btrfs_trans_handle* %0, %struct.btrfs_trans_handle** %9, align 8
  store %struct.btrfs_root* %1, %struct.btrfs_root** %10, align 8
  store %struct.btrfs_path* %2, %struct.btrfs_path** %11, align 8
  store i32 %3, i32* %12, align 4
  store i8* %4, i8** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %20 = load i32, i32* %15, align 4
  %21 = icmp slt i32 %20, 0
  %22 = zext i1 %21 to i64
  %23 = select i1 %21, i32 -1, i32 0
  store i32 %23, i32* %18, align 4
  %24 = load i32, i32* %15, align 4
  %25 = icmp ne i32 %24, 0
  %26 = zext i1 %25 to i32
  store i32 %26, i32* %19, align 4
  %27 = load i32, i32* %12, align 4
  %28 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %17, i32 0, i32 1
  store i32 %27, i32* %28, align 4
  %29 = load i32, i32* @BTRFS_DIR_ITEM_KEY, align 4
  %30 = call i32 @btrfs_set_key_type(%struct.btrfs_key* %17, i32 %29)
  %31 = load i8*, i8** %13, align 8
  %32 = load i32, i32* %14, align 4
  %33 = call i32 @btrfs_name_hash(i8* %31, i32 %32)
  %34 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %17, i32 0, i32 0
  store i32 %33, i32* %34, align 4
  %35 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %9, align 8
  %36 = load %struct.btrfs_root*, %struct.btrfs_root** %10, align 8
  %37 = load %struct.btrfs_path*, %struct.btrfs_path** %11, align 8
  %38 = load i32, i32* %18, align 4
  %39 = load i32, i32* %19, align 4
  %40 = call i32 @btrfs_search_slot(%struct.btrfs_trans_handle* %35, %struct.btrfs_root* %36, %struct.btrfs_key* %17, %struct.btrfs_path* %37, i32 %38, i32 %39)
  store i32 %40, i32* %16, align 4
  %41 = load i32, i32* %16, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %7
  %44 = load i32, i32* %16, align 4
  %45 = call %struct.btrfs_dir_item* @ERR_PTR(i32 %44)
  store %struct.btrfs_dir_item* %45, %struct.btrfs_dir_item** %8, align 8
  br label %56

46:                                               ; preds = %7
  %47 = load i32, i32* %16, align 4
  %48 = icmp sgt i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %46
  store %struct.btrfs_dir_item* null, %struct.btrfs_dir_item** %8, align 8
  br label %56

50:                                               ; preds = %46
  %51 = load %struct.btrfs_root*, %struct.btrfs_root** %10, align 8
  %52 = load %struct.btrfs_path*, %struct.btrfs_path** %11, align 8
  %53 = load i8*, i8** %13, align 8
  %54 = load i32, i32* %14, align 4
  %55 = call %struct.btrfs_dir_item* @btrfs_match_dir_item_name(%struct.btrfs_root* %51, %struct.btrfs_path* %52, i8* %53, i32 %54)
  store %struct.btrfs_dir_item* %55, %struct.btrfs_dir_item** %8, align 8
  br label %56

56:                                               ; preds = %50, %49, %43
  %57 = load %struct.btrfs_dir_item*, %struct.btrfs_dir_item** %8, align 8
  ret %struct.btrfs_dir_item* %57
}

declare dso_local i32 @btrfs_set_key_type(%struct.btrfs_key*, i32) #1

declare dso_local i32 @btrfs_name_hash(i8*, i32) #1

declare dso_local i32 @btrfs_search_slot(%struct.btrfs_trans_handle*, %struct.btrfs_root*, %struct.btrfs_key*, %struct.btrfs_path*, i32, i32) #1

declare dso_local %struct.btrfs_dir_item* @ERR_PTR(i32) #1

declare dso_local %struct.btrfs_dir_item* @btrfs_match_dir_item_name(%struct.btrfs_root*, %struct.btrfs_path*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
