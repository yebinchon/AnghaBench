; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_dir-item.c_btrfs_delete_one_dir_name.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_dir-item.c_btrfs_delete_one_dir_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_trans_handle = type { i32 }
%struct.btrfs_root = type { i32 }
%struct.btrfs_path = type { i32*, %struct.extent_buffer** }
%struct.extent_buffer = type { i32 }
%struct.btrfs_dir_item = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btrfs_delete_one_dir_name(%struct.btrfs_trans_handle* %0, %struct.btrfs_root* %1, %struct.btrfs_path* %2, %struct.btrfs_dir_item* %3) #0 {
  %5 = alloca %struct.btrfs_trans_handle*, align 8
  %6 = alloca %struct.btrfs_root*, align 8
  %7 = alloca %struct.btrfs_path*, align 8
  %8 = alloca %struct.btrfs_dir_item*, align 8
  %9 = alloca %struct.extent_buffer*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.btrfs_trans_handle* %0, %struct.btrfs_trans_handle** %5, align 8
  store %struct.btrfs_root* %1, %struct.btrfs_root** %6, align 8
  store %struct.btrfs_path* %2, %struct.btrfs_path** %7, align 8
  store %struct.btrfs_dir_item* %3, %struct.btrfs_dir_item** %8, align 8
  store i32 0, i32* %12, align 4
  %15 = load %struct.btrfs_path*, %struct.btrfs_path** %7, align 8
  %16 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %15, i32 0, i32 1
  %17 = load %struct.extent_buffer**, %struct.extent_buffer*** %16, align 8
  %18 = getelementptr inbounds %struct.extent_buffer*, %struct.extent_buffer** %17, i64 0
  %19 = load %struct.extent_buffer*, %struct.extent_buffer** %18, align 8
  store %struct.extent_buffer* %19, %struct.extent_buffer** %9, align 8
  %20 = load %struct.extent_buffer*, %struct.extent_buffer** %9, align 8
  %21 = load %struct.btrfs_dir_item*, %struct.btrfs_dir_item** %8, align 8
  %22 = call i64 @btrfs_dir_name_len(%struct.extent_buffer* %20, %struct.btrfs_dir_item* %21)
  %23 = add i64 4, %22
  %24 = load %struct.extent_buffer*, %struct.extent_buffer** %9, align 8
  %25 = load %struct.btrfs_dir_item*, %struct.btrfs_dir_item** %8, align 8
  %26 = call i64 @btrfs_dir_data_len(%struct.extent_buffer* %24, %struct.btrfs_dir_item* %25)
  %27 = add i64 %23, %26
  store i64 %27, i64* %10, align 8
  %28 = load %struct.extent_buffer*, %struct.extent_buffer** %9, align 8
  %29 = load %struct.btrfs_path*, %struct.btrfs_path** %7, align 8
  %30 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @btrfs_item_size_nr(%struct.extent_buffer* %28, i32 %33)
  store i64 %34, i64* %11, align 8
  %35 = load i64, i64* %10, align 8
  %36 = load i64, i64* %11, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %4
  %39 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %5, align 8
  %40 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %41 = load %struct.btrfs_path*, %struct.btrfs_path** %7, align 8
  %42 = call i32 @btrfs_del_item(%struct.btrfs_trans_handle* %39, %struct.btrfs_root* %40, %struct.btrfs_path* %41)
  store i32 %42, i32* %12, align 4
  br label %73

43:                                               ; preds = %4
  %44 = load %struct.btrfs_dir_item*, %struct.btrfs_dir_item** %8, align 8
  %45 = ptrtoint %struct.btrfs_dir_item* %44 to i64
  store i64 %45, i64* %13, align 8
  %46 = load %struct.extent_buffer*, %struct.extent_buffer** %9, align 8
  %47 = load %struct.btrfs_path*, %struct.btrfs_path** %7, align 8
  %48 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 0
  %51 = load i32, i32* %50, align 4
  %52 = call i64 @btrfs_item_ptr_offset(%struct.extent_buffer* %46, i32 %51)
  store i64 %52, i64* %14, align 8
  %53 = load %struct.extent_buffer*, %struct.extent_buffer** %9, align 8
  %54 = load i64, i64* %13, align 8
  %55 = load i64, i64* %13, align 8
  %56 = load i64, i64* %10, align 8
  %57 = add i64 %55, %56
  %58 = load i64, i64* %11, align 8
  %59 = load i64, i64* %13, align 8
  %60 = load i64, i64* %10, align 8
  %61 = add i64 %59, %60
  %62 = load i64, i64* %14, align 8
  %63 = sub i64 %61, %62
  %64 = sub i64 %58, %63
  %65 = call i32 @memmove_extent_buffer(%struct.extent_buffer* %53, i64 %54, i64 %57, i64 %64)
  %66 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %5, align 8
  %67 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %68 = load %struct.btrfs_path*, %struct.btrfs_path** %7, align 8
  %69 = load i64, i64* %11, align 8
  %70 = load i64, i64* %10, align 8
  %71 = sub nsw i64 %69, %70
  %72 = call i32 @btrfs_truncate_item(%struct.btrfs_trans_handle* %66, %struct.btrfs_root* %67, %struct.btrfs_path* %68, i64 %71, i32 1)
  br label %73

73:                                               ; preds = %43, %38
  %74 = load i32, i32* %12, align 4
  ret i32 %74
}

declare dso_local i64 @btrfs_dir_name_len(%struct.extent_buffer*, %struct.btrfs_dir_item*) #1

declare dso_local i64 @btrfs_dir_data_len(%struct.extent_buffer*, %struct.btrfs_dir_item*) #1

declare dso_local i64 @btrfs_item_size_nr(%struct.extent_buffer*, i32) #1

declare dso_local i32 @btrfs_del_item(%struct.btrfs_trans_handle*, %struct.btrfs_root*, %struct.btrfs_path*) #1

declare dso_local i64 @btrfs_item_ptr_offset(%struct.extent_buffer*, i32) #1

declare dso_local i32 @memmove_extent_buffer(%struct.extent_buffer*, i64, i64, i64) #1

declare dso_local i32 @btrfs_truncate_item(%struct.btrfs_trans_handle*, %struct.btrfs_root*, %struct.btrfs_path*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
