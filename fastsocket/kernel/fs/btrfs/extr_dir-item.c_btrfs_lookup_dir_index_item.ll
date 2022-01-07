; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_dir-item.c_btrfs_lookup_dir_index_item.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_dir-item.c_btrfs_lookup_dir_index_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_dir_item = type { i32 }
%struct.btrfs_trans_handle = type { i32 }
%struct.btrfs_root = type { i32 }
%struct.btrfs_path = type { i32 }
%struct.btrfs_key = type { i8*, i8* }

@BTRFS_DIR_INDEX_KEY = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.btrfs_dir_item* @btrfs_lookup_dir_index_item(%struct.btrfs_trans_handle* %0, %struct.btrfs_root* %1, %struct.btrfs_path* %2, i8* %3, i8* %4, i8* %5, i32 %6, i32 %7) #0 {
  %9 = alloca %struct.btrfs_dir_item*, align 8
  %10 = alloca %struct.btrfs_trans_handle*, align 8
  %11 = alloca %struct.btrfs_root*, align 8
  %12 = alloca %struct.btrfs_path*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.btrfs_key, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.btrfs_trans_handle* %0, %struct.btrfs_trans_handle** %10, align 8
  store %struct.btrfs_root* %1, %struct.btrfs_root** %11, align 8
  store %struct.btrfs_path* %2, %struct.btrfs_path** %12, align 8
  store i8* %3, i8** %13, align 8
  store i8* %4, i8** %14, align 8
  store i8* %5, i8** %15, align 8
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  %22 = load i32, i32* %17, align 4
  %23 = icmp slt i32 %22, 0
  %24 = zext i1 %23 to i64
  %25 = select i1 %23, i32 -1, i32 0
  store i32 %25, i32* %20, align 4
  %26 = load i32, i32* %17, align 4
  %27 = icmp ne i32 %26, 0
  %28 = zext i1 %27 to i32
  store i32 %28, i32* %21, align 4
  %29 = load i8*, i8** %13, align 8
  %30 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %19, i32 0, i32 1
  store i8* %29, i8** %30, align 8
  %31 = load i32, i32* @BTRFS_DIR_INDEX_KEY, align 4
  %32 = call i32 @btrfs_set_key_type(%struct.btrfs_key* %19, i32 %31)
  %33 = load i8*, i8** %14, align 8
  %34 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %19, i32 0, i32 0
  store i8* %33, i8** %34, align 8
  %35 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %10, align 8
  %36 = load %struct.btrfs_root*, %struct.btrfs_root** %11, align 8
  %37 = load %struct.btrfs_path*, %struct.btrfs_path** %12, align 8
  %38 = load i32, i32* %20, align 4
  %39 = load i32, i32* %21, align 4
  %40 = call i32 @btrfs_search_slot(%struct.btrfs_trans_handle* %35, %struct.btrfs_root* %36, %struct.btrfs_key* %19, %struct.btrfs_path* %37, i32 %38, i32 %39)
  store i32 %40, i32* %18, align 4
  %41 = load i32, i32* %18, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %8
  %44 = load i32, i32* %18, align 4
  %45 = call %struct.btrfs_dir_item* @ERR_PTR(i32 %44)
  store %struct.btrfs_dir_item* %45, %struct.btrfs_dir_item** %9, align 8
  br label %59

46:                                               ; preds = %8
  %47 = load i32, i32* %18, align 4
  %48 = icmp sgt i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %46
  %50 = load i32, i32* @ENOENT, align 4
  %51 = sub nsw i32 0, %50
  %52 = call %struct.btrfs_dir_item* @ERR_PTR(i32 %51)
  store %struct.btrfs_dir_item* %52, %struct.btrfs_dir_item** %9, align 8
  br label %59

53:                                               ; preds = %46
  %54 = load %struct.btrfs_root*, %struct.btrfs_root** %11, align 8
  %55 = load %struct.btrfs_path*, %struct.btrfs_path** %12, align 8
  %56 = load i8*, i8** %15, align 8
  %57 = load i32, i32* %16, align 4
  %58 = call %struct.btrfs_dir_item* @btrfs_match_dir_item_name(%struct.btrfs_root* %54, %struct.btrfs_path* %55, i8* %56, i32 %57)
  store %struct.btrfs_dir_item* %58, %struct.btrfs_dir_item** %9, align 8
  br label %59

59:                                               ; preds = %53, %49, %43
  %60 = load %struct.btrfs_dir_item*, %struct.btrfs_dir_item** %9, align 8
  ret %struct.btrfs_dir_item* %60
}

declare dso_local i32 @btrfs_set_key_type(%struct.btrfs_key*, i32) #1

declare dso_local i32 @btrfs_search_slot(%struct.btrfs_trans_handle*, %struct.btrfs_root*, %struct.btrfs_key*, %struct.btrfs_path*, i32, i32) #1

declare dso_local %struct.btrfs_dir_item* @ERR_PTR(i32) #1

declare dso_local %struct.btrfs_dir_item* @btrfs_match_dir_item_name(%struct.btrfs_root*, %struct.btrfs_path*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
