; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_dir-item.c_btrfs_insert_xattr_item.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_dir-item.c_btrfs_insert_xattr_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_trans_handle = type { i32 }
%struct.btrfs_root = type { i32 }
%struct.btrfs_path = type { %struct.extent_buffer** }
%struct.extent_buffer = type { i32 }
%struct.btrfs_dir_item = type { i32 }
%struct.btrfs_key = type { i32, i32 }
%struct.btrfs_disk_key = type { i32 }

@BTRFS_XATTR_ITEM_KEY = common dso_local global i32 0, align 4
@BTRFS_FT_XATTR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btrfs_insert_xattr_item(%struct.btrfs_trans_handle* %0, %struct.btrfs_root* %1, %struct.btrfs_path* %2, i32 %3, i8* %4, i64 %5, i8* %6, i64 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.btrfs_trans_handle*, align 8
  %11 = alloca %struct.btrfs_root*, align 8
  %12 = alloca %struct.btrfs_path*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.btrfs_dir_item*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca %struct.btrfs_key, align 4
  %23 = alloca %struct.btrfs_key, align 4
  %24 = alloca %struct.btrfs_disk_key, align 4
  %25 = alloca %struct.extent_buffer*, align 8
  %26 = alloca i64, align 8
  store %struct.btrfs_trans_handle* %0, %struct.btrfs_trans_handle** %10, align 8
  store %struct.btrfs_root* %1, %struct.btrfs_root** %11, align 8
  store %struct.btrfs_path* %2, %struct.btrfs_path** %12, align 8
  store i32 %3, i32* %13, align 4
  store i8* %4, i8** %14, align 8
  store i64 %5, i64* %15, align 8
  store i8* %6, i8** %16, align 8
  store i64 %7, i64* %17, align 8
  store i32 0, i32* %18, align 4
  %27 = load i64, i64* %15, align 8
  %28 = load i64, i64* %17, align 8
  %29 = add nsw i64 %27, %28
  %30 = load %struct.btrfs_root*, %struct.btrfs_root** %11, align 8
  %31 = call i64 @BTRFS_MAX_XATTR_SIZE(%struct.btrfs_root* %30)
  %32 = icmp sgt i64 %29, %31
  %33 = zext i1 %32 to i32
  %34 = call i32 @BUG_ON(i32 %33)
  %35 = load i32, i32* %13, align 4
  %36 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %22, i32 0, i32 1
  store i32 %35, i32* %36, align 4
  %37 = load i32, i32* @BTRFS_XATTR_ITEM_KEY, align 4
  %38 = call i32 @btrfs_set_key_type(%struct.btrfs_key* %22, i32 %37)
  %39 = load i8*, i8** %14, align 8
  %40 = load i64, i64* %15, align 8
  %41 = call i32 @btrfs_name_hash(i8* %39, i64 %40)
  %42 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %22, i32 0, i32 0
  store i32 %41, i32* %42, align 4
  %43 = load i64, i64* %15, align 8
  %44 = add i64 4, %43
  %45 = load i64, i64* %17, align 8
  %46 = add i64 %44, %45
  store i64 %46, i64* %26, align 8
  %47 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %10, align 8
  %48 = load %struct.btrfs_root*, %struct.btrfs_root** %11, align 8
  %49 = load %struct.btrfs_path*, %struct.btrfs_path** %12, align 8
  %50 = load i64, i64* %26, align 8
  %51 = load i8*, i8** %14, align 8
  %52 = load i64, i64* %15, align 8
  %53 = call %struct.btrfs_dir_item* @insert_with_overflow(%struct.btrfs_trans_handle* %47, %struct.btrfs_root* %48, %struct.btrfs_path* %49, %struct.btrfs_key* %22, i64 %50, i8* %51, i64 %52)
  store %struct.btrfs_dir_item* %53, %struct.btrfs_dir_item** %19, align 8
  %54 = load %struct.btrfs_dir_item*, %struct.btrfs_dir_item** %19, align 8
  %55 = call i64 @IS_ERR(%struct.btrfs_dir_item* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %8
  %58 = load %struct.btrfs_dir_item*, %struct.btrfs_dir_item** %19, align 8
  %59 = call i32 @PTR_ERR(%struct.btrfs_dir_item* %58)
  store i32 %59, i32* %9, align 4
  br label %114

60:                                               ; preds = %8
  %61 = call i32 @memset(%struct.btrfs_key* %23, i32 0, i32 8)
  %62 = load %struct.btrfs_path*, %struct.btrfs_path** %12, align 8
  %63 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %62, i32 0, i32 0
  %64 = load %struct.extent_buffer**, %struct.extent_buffer*** %63, align 8
  %65 = getelementptr inbounds %struct.extent_buffer*, %struct.extent_buffer** %64, i64 0
  %66 = load %struct.extent_buffer*, %struct.extent_buffer** %65, align 8
  store %struct.extent_buffer* %66, %struct.extent_buffer** %25, align 8
  %67 = call i32 @btrfs_cpu_key_to_disk(%struct.btrfs_disk_key* %24, %struct.btrfs_key* %23)
  %68 = load %struct.extent_buffer*, %struct.extent_buffer** %25, align 8
  %69 = load %struct.btrfs_dir_item*, %struct.btrfs_dir_item** %19, align 8
  %70 = call i32 @btrfs_set_dir_item_key(%struct.extent_buffer* %68, %struct.btrfs_dir_item* %69, %struct.btrfs_disk_key* %24)
  %71 = load %struct.extent_buffer*, %struct.extent_buffer** %25, align 8
  %72 = load %struct.btrfs_dir_item*, %struct.btrfs_dir_item** %19, align 8
  %73 = load i32, i32* @BTRFS_FT_XATTR, align 4
  %74 = call i32 @btrfs_set_dir_type(%struct.extent_buffer* %71, %struct.btrfs_dir_item* %72, i32 %73)
  %75 = load %struct.extent_buffer*, %struct.extent_buffer** %25, align 8
  %76 = load %struct.btrfs_dir_item*, %struct.btrfs_dir_item** %19, align 8
  %77 = load i64, i64* %15, align 8
  %78 = call i32 @btrfs_set_dir_name_len(%struct.extent_buffer* %75, %struct.btrfs_dir_item* %76, i64 %77)
  %79 = load %struct.extent_buffer*, %struct.extent_buffer** %25, align 8
  %80 = load %struct.btrfs_dir_item*, %struct.btrfs_dir_item** %19, align 8
  %81 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %10, align 8
  %82 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @btrfs_set_dir_transid(%struct.extent_buffer* %79, %struct.btrfs_dir_item* %80, i32 %83)
  %85 = load %struct.extent_buffer*, %struct.extent_buffer** %25, align 8
  %86 = load %struct.btrfs_dir_item*, %struct.btrfs_dir_item** %19, align 8
  %87 = load i64, i64* %17, align 8
  %88 = call i32 @btrfs_set_dir_data_len(%struct.extent_buffer* %85, %struct.btrfs_dir_item* %86, i64 %87)
  %89 = load %struct.btrfs_dir_item*, %struct.btrfs_dir_item** %19, align 8
  %90 = getelementptr inbounds %struct.btrfs_dir_item, %struct.btrfs_dir_item* %89, i64 1
  %91 = ptrtoint %struct.btrfs_dir_item* %90 to i64
  store i64 %91, i64* %20, align 8
  %92 = load i64, i64* %20, align 8
  %93 = inttoptr i64 %92 to i8*
  %94 = load i64, i64* %15, align 8
  %95 = getelementptr inbounds i8, i8* %93, i64 %94
  %96 = ptrtoint i8* %95 to i64
  store i64 %96, i64* %21, align 8
  %97 = load %struct.extent_buffer*, %struct.extent_buffer** %25, align 8
  %98 = load i8*, i8** %14, align 8
  %99 = load i64, i64* %20, align 8
  %100 = load i64, i64* %15, align 8
  %101 = call i32 @write_extent_buffer(%struct.extent_buffer* %97, i8* %98, i64 %99, i64 %100)
  %102 = load %struct.extent_buffer*, %struct.extent_buffer** %25, align 8
  %103 = load i8*, i8** %16, align 8
  %104 = load i64, i64* %21, align 8
  %105 = load i64, i64* %17, align 8
  %106 = call i32 @write_extent_buffer(%struct.extent_buffer* %102, i8* %103, i64 %104, i64 %105)
  %107 = load %struct.btrfs_path*, %struct.btrfs_path** %12, align 8
  %108 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %107, i32 0, i32 0
  %109 = load %struct.extent_buffer**, %struct.extent_buffer*** %108, align 8
  %110 = getelementptr inbounds %struct.extent_buffer*, %struct.extent_buffer** %109, i64 0
  %111 = load %struct.extent_buffer*, %struct.extent_buffer** %110, align 8
  %112 = call i32 @btrfs_mark_buffer_dirty(%struct.extent_buffer* %111)
  %113 = load i32, i32* %18, align 4
  store i32 %113, i32* %9, align 4
  br label %114

114:                                              ; preds = %60, %57
  %115 = load i32, i32* %9, align 4
  ret i32 %115
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @BTRFS_MAX_XATTR_SIZE(%struct.btrfs_root*) #1

declare dso_local i32 @btrfs_set_key_type(%struct.btrfs_key*, i32) #1

declare dso_local i32 @btrfs_name_hash(i8*, i64) #1

declare dso_local %struct.btrfs_dir_item* @insert_with_overflow(%struct.btrfs_trans_handle*, %struct.btrfs_root*, %struct.btrfs_path*, %struct.btrfs_key*, i64, i8*, i64) #1

declare dso_local i64 @IS_ERR(%struct.btrfs_dir_item*) #1

declare dso_local i32 @PTR_ERR(%struct.btrfs_dir_item*) #1

declare dso_local i32 @memset(%struct.btrfs_key*, i32, i32) #1

declare dso_local i32 @btrfs_cpu_key_to_disk(%struct.btrfs_disk_key*, %struct.btrfs_key*) #1

declare dso_local i32 @btrfs_set_dir_item_key(%struct.extent_buffer*, %struct.btrfs_dir_item*, %struct.btrfs_disk_key*) #1

declare dso_local i32 @btrfs_set_dir_type(%struct.extent_buffer*, %struct.btrfs_dir_item*, i32) #1

declare dso_local i32 @btrfs_set_dir_name_len(%struct.extent_buffer*, %struct.btrfs_dir_item*, i64) #1

declare dso_local i32 @btrfs_set_dir_transid(%struct.extent_buffer*, %struct.btrfs_dir_item*, i32) #1

declare dso_local i32 @btrfs_set_dir_data_len(%struct.extent_buffer*, %struct.btrfs_dir_item*, i64) #1

declare dso_local i32 @write_extent_buffer(%struct.extent_buffer*, i8*, i64, i64) #1

declare dso_local i32 @btrfs_mark_buffer_dirty(%struct.extent_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
