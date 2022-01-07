; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_dir-item.c_btrfs_insert_dir_item.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_dir-item.c_btrfs_insert_dir_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_trans_handle = type { i32 }
%struct.btrfs_root = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.btrfs_root* }
%struct.inode = type { i32 }
%struct.btrfs_key = type { i32, i32 }
%struct.btrfs_path = type { i32, %struct.extent_buffer** }
%struct.extent_buffer = type { i32 }
%struct.btrfs_dir_item = type { i32 }
%struct.btrfs_disk_key = type { i32 }

@BTRFS_DIR_ITEM_KEY = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btrfs_insert_dir_item(%struct.btrfs_trans_handle* %0, %struct.btrfs_root* %1, i8* %2, i32 %3, %struct.inode* %4, %struct.btrfs_key* %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.btrfs_trans_handle*, align 8
  %11 = alloca %struct.btrfs_root*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.inode*, align 8
  %15 = alloca %struct.btrfs_key*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.btrfs_path*, align 8
  %21 = alloca %struct.btrfs_dir_item*, align 8
  %22 = alloca %struct.extent_buffer*, align 8
  %23 = alloca i64, align 8
  %24 = alloca %struct.btrfs_key, align 4
  %25 = alloca %struct.btrfs_disk_key, align 4
  %26 = alloca i32, align 4
  store %struct.btrfs_trans_handle* %0, %struct.btrfs_trans_handle** %10, align 8
  store %struct.btrfs_root* %1, %struct.btrfs_root** %11, align 8
  store i8* %2, i8** %12, align 8
  store i32 %3, i32* %13, align 4
  store %struct.inode* %4, %struct.inode** %14, align 8
  store %struct.btrfs_key* %5, %struct.btrfs_key** %15, align 8
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %27 = load %struct.inode*, %struct.inode** %14, align 8
  %28 = call i32 @btrfs_ino(%struct.inode* %27)
  %29 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %24, i32 0, i32 1
  store i32 %28, i32* %29, align 4
  %30 = load i32, i32* @BTRFS_DIR_ITEM_KEY, align 4
  %31 = call i32 @btrfs_set_key_type(%struct.btrfs_key* %24, i32 %30)
  %32 = load i8*, i8** %12, align 8
  %33 = load i32, i32* %13, align 4
  %34 = call i32 @btrfs_name_hash(i8* %32, i32 %33)
  %35 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %24, i32 0, i32 0
  store i32 %34, i32* %35, align 4
  %36 = call %struct.btrfs_path* (...) @btrfs_alloc_path()
  store %struct.btrfs_path* %36, %struct.btrfs_path** %20, align 8
  %37 = load %struct.btrfs_path*, %struct.btrfs_path** %20, align 8
  %38 = icmp ne %struct.btrfs_path* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %8
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %9, align 4
  br label %139

42:                                               ; preds = %8
  %43 = load %struct.btrfs_path*, %struct.btrfs_path** %20, align 8
  %44 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %43, i32 0, i32 0
  store i32 1, i32* %44, align 8
  %45 = load %struct.btrfs_key*, %struct.btrfs_key** %15, align 8
  %46 = call i32 @btrfs_cpu_key_to_disk(%struct.btrfs_disk_key* %25, %struct.btrfs_key* %45)
  %47 = load i32, i32* %13, align 4
  %48 = sext i32 %47 to i64
  %49 = add i64 4, %48
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %26, align 4
  %51 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %10, align 8
  %52 = load %struct.btrfs_root*, %struct.btrfs_root** %11, align 8
  %53 = load %struct.btrfs_path*, %struct.btrfs_path** %20, align 8
  %54 = load i32, i32* %26, align 4
  %55 = load i8*, i8** %12, align 8
  %56 = load i32, i32* %13, align 4
  %57 = call %struct.btrfs_dir_item* @insert_with_overflow(%struct.btrfs_trans_handle* %51, %struct.btrfs_root* %52, %struct.btrfs_path* %53, %struct.btrfs_key* %24, i32 %54, i8* %55, i32 %56)
  store %struct.btrfs_dir_item* %57, %struct.btrfs_dir_item** %21, align 8
  %58 = load %struct.btrfs_dir_item*, %struct.btrfs_dir_item** %21, align 8
  %59 = call i64 @IS_ERR(%struct.btrfs_dir_item* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %70

61:                                               ; preds = %42
  %62 = load %struct.btrfs_dir_item*, %struct.btrfs_dir_item** %21, align 8
  %63 = call i32 @PTR_ERR(%struct.btrfs_dir_item* %62)
  store i32 %63, i32* %18, align 4
  %64 = load i32, i32* %18, align 4
  %65 = load i32, i32* @EEXIST, align 4
  %66 = sub nsw i32 0, %65
  %67 = icmp eq i32 %64, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %61
  br label %106

69:                                               ; preds = %61
  br label %126

70:                                               ; preds = %42
  %71 = load %struct.btrfs_path*, %struct.btrfs_path** %20, align 8
  %72 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %71, i32 0, i32 1
  %73 = load %struct.extent_buffer**, %struct.extent_buffer*** %72, align 8
  %74 = getelementptr inbounds %struct.extent_buffer*, %struct.extent_buffer** %73, i64 0
  %75 = load %struct.extent_buffer*, %struct.extent_buffer** %74, align 8
  store %struct.extent_buffer* %75, %struct.extent_buffer** %22, align 8
  %76 = load %struct.extent_buffer*, %struct.extent_buffer** %22, align 8
  %77 = load %struct.btrfs_dir_item*, %struct.btrfs_dir_item** %21, align 8
  %78 = call i32 @btrfs_set_dir_item_key(%struct.extent_buffer* %76, %struct.btrfs_dir_item* %77, %struct.btrfs_disk_key* %25)
  %79 = load %struct.extent_buffer*, %struct.extent_buffer** %22, align 8
  %80 = load %struct.btrfs_dir_item*, %struct.btrfs_dir_item** %21, align 8
  %81 = load i32, i32* %16, align 4
  %82 = call i32 @btrfs_set_dir_type(%struct.extent_buffer* %79, %struct.btrfs_dir_item* %80, i32 %81)
  %83 = load %struct.extent_buffer*, %struct.extent_buffer** %22, align 8
  %84 = load %struct.btrfs_dir_item*, %struct.btrfs_dir_item** %21, align 8
  %85 = call i32 @btrfs_set_dir_data_len(%struct.extent_buffer* %83, %struct.btrfs_dir_item* %84, i32 0)
  %86 = load %struct.extent_buffer*, %struct.extent_buffer** %22, align 8
  %87 = load %struct.btrfs_dir_item*, %struct.btrfs_dir_item** %21, align 8
  %88 = load i32, i32* %13, align 4
  %89 = call i32 @btrfs_set_dir_name_len(%struct.extent_buffer* %86, %struct.btrfs_dir_item* %87, i32 %88)
  %90 = load %struct.extent_buffer*, %struct.extent_buffer** %22, align 8
  %91 = load %struct.btrfs_dir_item*, %struct.btrfs_dir_item** %21, align 8
  %92 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %10, align 8
  %93 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @btrfs_set_dir_transid(%struct.extent_buffer* %90, %struct.btrfs_dir_item* %91, i32 %94)
  %96 = load %struct.btrfs_dir_item*, %struct.btrfs_dir_item** %21, align 8
  %97 = getelementptr inbounds %struct.btrfs_dir_item, %struct.btrfs_dir_item* %96, i64 1
  %98 = ptrtoint %struct.btrfs_dir_item* %97 to i64
  store i64 %98, i64* %23, align 8
  %99 = load %struct.extent_buffer*, %struct.extent_buffer** %22, align 8
  %100 = load i8*, i8** %12, align 8
  %101 = load i64, i64* %23, align 8
  %102 = load i32, i32* %13, align 4
  %103 = call i32 @write_extent_buffer(%struct.extent_buffer* %99, i8* %100, i64 %101, i32 %102)
  %104 = load %struct.extent_buffer*, %struct.extent_buffer** %22, align 8
  %105 = call i32 @btrfs_mark_buffer_dirty(%struct.extent_buffer* %104)
  br label %106

106:                                              ; preds = %70, %68
  %107 = load %struct.btrfs_root*, %struct.btrfs_root** %11, align 8
  %108 = load %struct.btrfs_root*, %struct.btrfs_root** %11, align 8
  %109 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %108, i32 0, i32 0
  %110 = load %struct.TYPE_2__*, %struct.TYPE_2__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 0
  %112 = load %struct.btrfs_root*, %struct.btrfs_root** %111, align 8
  %113 = icmp eq %struct.btrfs_root* %107, %112
  br i1 %113, label %114, label %115

114:                                              ; preds = %106
  store i32 0, i32* %18, align 4
  br label %126

115:                                              ; preds = %106
  %116 = load %struct.btrfs_path*, %struct.btrfs_path** %20, align 8
  %117 = call i32 @btrfs_release_path(%struct.btrfs_path* %116)
  %118 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %10, align 8
  %119 = load %struct.btrfs_root*, %struct.btrfs_root** %11, align 8
  %120 = load i8*, i8** %12, align 8
  %121 = load i32, i32* %13, align 4
  %122 = load %struct.inode*, %struct.inode** %14, align 8
  %123 = load i32, i32* %16, align 4
  %124 = load i32, i32* %17, align 4
  %125 = call i32 @btrfs_insert_delayed_dir_index(%struct.btrfs_trans_handle* %118, %struct.btrfs_root* %119, i8* %120, i32 %121, %struct.inode* %122, %struct.btrfs_disk_key* %25, i32 %123, i32 %124)
  store i32 %125, i32* %19, align 4
  br label %126

126:                                              ; preds = %115, %114, %69
  %127 = load %struct.btrfs_path*, %struct.btrfs_path** %20, align 8
  %128 = call i32 @btrfs_free_path(%struct.btrfs_path* %127)
  %129 = load i32, i32* %18, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %133

131:                                              ; preds = %126
  %132 = load i32, i32* %18, align 4
  store i32 %132, i32* %9, align 4
  br label %139

133:                                              ; preds = %126
  %134 = load i32, i32* %19, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %138

136:                                              ; preds = %133
  %137 = load i32, i32* %19, align 4
  store i32 %137, i32* %9, align 4
  br label %139

138:                                              ; preds = %133
  store i32 0, i32* %9, align 4
  br label %139

139:                                              ; preds = %138, %136, %131, %39
  %140 = load i32, i32* %9, align 4
  ret i32 %140
}

declare dso_local i32 @btrfs_ino(%struct.inode*) #1

declare dso_local i32 @btrfs_set_key_type(%struct.btrfs_key*, i32) #1

declare dso_local i32 @btrfs_name_hash(i8*, i32) #1

declare dso_local %struct.btrfs_path* @btrfs_alloc_path(...) #1

declare dso_local i32 @btrfs_cpu_key_to_disk(%struct.btrfs_disk_key*, %struct.btrfs_key*) #1

declare dso_local %struct.btrfs_dir_item* @insert_with_overflow(%struct.btrfs_trans_handle*, %struct.btrfs_root*, %struct.btrfs_path*, %struct.btrfs_key*, i32, i8*, i32) #1

declare dso_local i64 @IS_ERR(%struct.btrfs_dir_item*) #1

declare dso_local i32 @PTR_ERR(%struct.btrfs_dir_item*) #1

declare dso_local i32 @btrfs_set_dir_item_key(%struct.extent_buffer*, %struct.btrfs_dir_item*, %struct.btrfs_disk_key*) #1

declare dso_local i32 @btrfs_set_dir_type(%struct.extent_buffer*, %struct.btrfs_dir_item*, i32) #1

declare dso_local i32 @btrfs_set_dir_data_len(%struct.extent_buffer*, %struct.btrfs_dir_item*, i32) #1

declare dso_local i32 @btrfs_set_dir_name_len(%struct.extent_buffer*, %struct.btrfs_dir_item*, i32) #1

declare dso_local i32 @btrfs_set_dir_transid(%struct.extent_buffer*, %struct.btrfs_dir_item*, i32) #1

declare dso_local i32 @write_extent_buffer(%struct.extent_buffer*, i8*, i64, i32) #1

declare dso_local i32 @btrfs_mark_buffer_dirty(%struct.extent_buffer*) #1

declare dso_local i32 @btrfs_release_path(%struct.btrfs_path*) #1

declare dso_local i32 @btrfs_insert_delayed_dir_index(%struct.btrfs_trans_handle*, %struct.btrfs_root*, i8*, i32, %struct.inode*, %struct.btrfs_disk_key*, i32, i32) #1

declare dso_local i32 @btrfs_free_path(%struct.btrfs_path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
