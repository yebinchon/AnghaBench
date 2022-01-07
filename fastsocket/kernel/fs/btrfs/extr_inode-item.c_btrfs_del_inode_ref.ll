; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_inode-item.c_btrfs_del_inode_ref.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_inode-item.c_btrfs_del_inode_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_trans_handle = type { i32 }
%struct.btrfs_root = type { i32 }
%struct.btrfs_path = type { i32, i32*, %struct.extent_buffer** }
%struct.extent_buffer = type { i32 }
%struct.btrfs_key = type { i8*, i8* }
%struct.btrfs_inode_ref = type { i32 }

@BTRFS_INODE_REF_KEY = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btrfs_del_inode_ref(%struct.btrfs_trans_handle* %0, %struct.btrfs_root* %1, i8* %2, i32 %3, i8* %4, i8* %5, i8** %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.btrfs_trans_handle*, align 8
  %10 = alloca %struct.btrfs_root*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8**, align 8
  %16 = alloca %struct.btrfs_path*, align 8
  %17 = alloca %struct.btrfs_key, align 8
  %18 = alloca %struct.btrfs_inode_ref*, align 8
  %19 = alloca %struct.extent_buffer*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store %struct.btrfs_trans_handle* %0, %struct.btrfs_trans_handle** %9, align 8
  store %struct.btrfs_root* %1, %struct.btrfs_root** %10, align 8
  store i8* %2, i8** %11, align 8
  store i32 %3, i32* %12, align 4
  store i8* %4, i8** %13, align 8
  store i8* %5, i8** %14, align 8
  store i8** %6, i8*** %15, align 8
  %26 = load i32, i32* %12, align 4
  %27 = sext i32 %26 to i64
  %28 = add i64 %27, 4
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %25, align 4
  %30 = load i8*, i8** %13, align 8
  %31 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %17, i32 0, i32 1
  store i8* %30, i8** %31, align 8
  %32 = load i8*, i8** %14, align 8
  %33 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %17, i32 0, i32 0
  store i8* %32, i8** %33, align 8
  %34 = load i32, i32* @BTRFS_INODE_REF_KEY, align 4
  %35 = call i32 @btrfs_set_key_type(%struct.btrfs_key* %17, i32 %34)
  %36 = call %struct.btrfs_path* (...) @btrfs_alloc_path()
  store %struct.btrfs_path* %36, %struct.btrfs_path** %16, align 8
  %37 = load %struct.btrfs_path*, %struct.btrfs_path** %16, align 8
  %38 = icmp ne %struct.btrfs_path* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %7
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %8, align 4
  br label %138

42:                                               ; preds = %7
  %43 = load %struct.btrfs_path*, %struct.btrfs_path** %16, align 8
  %44 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %43, i32 0, i32 0
  store i32 1, i32* %44, align 8
  %45 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %9, align 8
  %46 = load %struct.btrfs_root*, %struct.btrfs_root** %10, align 8
  %47 = load %struct.btrfs_path*, %struct.btrfs_path** %16, align 8
  %48 = call i32 @btrfs_search_slot(%struct.btrfs_trans_handle* %45, %struct.btrfs_root* %46, %struct.btrfs_key* %17, %struct.btrfs_path* %47, i32 -1, i32 1)
  store i32 %48, i32* %24, align 4
  %49 = load i32, i32* %24, align 4
  %50 = icmp sgt i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %42
  %52 = load i32, i32* @ENOENT, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %24, align 4
  br label %134

54:                                               ; preds = %42
  %55 = load i32, i32* %24, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %54
  br label %134

58:                                               ; preds = %54
  br label %59

59:                                               ; preds = %58
  %60 = load %struct.btrfs_path*, %struct.btrfs_path** %16, align 8
  %61 = load i8*, i8** %11, align 8
  %62 = load i32, i32* %12, align 4
  %63 = call i32 @find_name_in_backref(%struct.btrfs_path* %60, i8* %61, i32 %62, %struct.btrfs_inode_ref** %18)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %68, label %65

65:                                               ; preds = %59
  %66 = load i32, i32* @ENOENT, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %24, align 4
  br label %134

68:                                               ; preds = %59
  %69 = load %struct.btrfs_path*, %struct.btrfs_path** %16, align 8
  %70 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %69, i32 0, i32 2
  %71 = load %struct.extent_buffer**, %struct.extent_buffer*** %70, align 8
  %72 = getelementptr inbounds %struct.extent_buffer*, %struct.extent_buffer** %71, i64 0
  %73 = load %struct.extent_buffer*, %struct.extent_buffer** %72, align 8
  store %struct.extent_buffer* %73, %struct.extent_buffer** %19, align 8
  %74 = load %struct.extent_buffer*, %struct.extent_buffer** %19, align 8
  %75 = load %struct.btrfs_path*, %struct.btrfs_path** %16, align 8
  %76 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %75, i32 0, i32 1
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @btrfs_item_size_nr(%struct.extent_buffer* %74, i32 %79)
  store i32 %80, i32* %22, align 4
  %81 = load i8**, i8*** %15, align 8
  %82 = icmp ne i8** %81, null
  br i1 %82, label %83, label %88

83:                                               ; preds = %68
  %84 = load %struct.extent_buffer*, %struct.extent_buffer** %19, align 8
  %85 = load %struct.btrfs_inode_ref*, %struct.btrfs_inode_ref** %18, align 8
  %86 = call i8* @btrfs_inode_ref_index(%struct.extent_buffer* %84, %struct.btrfs_inode_ref* %85)
  %87 = load i8**, i8*** %15, align 8
  store i8* %86, i8** %87, align 8
  br label %88

88:                                               ; preds = %83, %68
  %89 = load i32, i32* %25, align 4
  %90 = load i32, i32* %22, align 4
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %92, label %97

92:                                               ; preds = %88
  %93 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %9, align 8
  %94 = load %struct.btrfs_root*, %struct.btrfs_root** %10, align 8
  %95 = load %struct.btrfs_path*, %struct.btrfs_path** %16, align 8
  %96 = call i32 @btrfs_del_item(%struct.btrfs_trans_handle* %93, %struct.btrfs_root* %94, %struct.btrfs_path* %95)
  store i32 %96, i32* %24, align 4
  br label %134

97:                                               ; preds = %88
  %98 = load %struct.btrfs_inode_ref*, %struct.btrfs_inode_ref** %18, align 8
  %99 = ptrtoint %struct.btrfs_inode_ref* %98 to i64
  store i64 %99, i64* %20, align 8
  %100 = load i32, i32* %12, align 4
  %101 = sext i32 %100 to i64
  %102 = add i64 %101, 4
  %103 = trunc i64 %102 to i32
  store i32 %103, i32* %23, align 4
  %104 = load %struct.extent_buffer*, %struct.extent_buffer** %19, align 8
  %105 = load %struct.btrfs_path*, %struct.btrfs_path** %16, align 8
  %106 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %105, i32 0, i32 1
  %107 = load i32*, i32** %106, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 0
  %109 = load i32, i32* %108, align 4
  %110 = call i64 @btrfs_item_ptr_offset(%struct.extent_buffer* %104, i32 %109)
  store i64 %110, i64* %21, align 8
  %111 = load %struct.extent_buffer*, %struct.extent_buffer** %19, align 8
  %112 = load i64, i64* %20, align 8
  %113 = load i64, i64* %20, align 8
  %114 = load i32, i32* %23, align 4
  %115 = sext i32 %114 to i64
  %116 = add i64 %113, %115
  %117 = load i32, i32* %22, align 4
  %118 = sext i32 %117 to i64
  %119 = load i64, i64* %20, align 8
  %120 = load i32, i32* %23, align 4
  %121 = sext i32 %120 to i64
  %122 = add i64 %119, %121
  %123 = load i64, i64* %21, align 8
  %124 = sub i64 %122, %123
  %125 = sub i64 %118, %124
  %126 = call i32 @memmove_extent_buffer(%struct.extent_buffer* %111, i64 %112, i64 %116, i64 %125)
  %127 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %9, align 8
  %128 = load %struct.btrfs_root*, %struct.btrfs_root** %10, align 8
  %129 = load %struct.btrfs_path*, %struct.btrfs_path** %16, align 8
  %130 = load i32, i32* %22, align 4
  %131 = load i32, i32* %23, align 4
  %132 = sub nsw i32 %130, %131
  %133 = call i32 @btrfs_truncate_item(%struct.btrfs_trans_handle* %127, %struct.btrfs_root* %128, %struct.btrfs_path* %129, i32 %132, i32 1)
  br label %134

134:                                              ; preds = %97, %92, %65, %57, %51
  %135 = load %struct.btrfs_path*, %struct.btrfs_path** %16, align 8
  %136 = call i32 @btrfs_free_path(%struct.btrfs_path* %135)
  %137 = load i32, i32* %24, align 4
  store i32 %137, i32* %8, align 4
  br label %138

138:                                              ; preds = %134, %39
  %139 = load i32, i32* %8, align 4
  ret i32 %139
}

declare dso_local i32 @btrfs_set_key_type(%struct.btrfs_key*, i32) #1

declare dso_local %struct.btrfs_path* @btrfs_alloc_path(...) #1

declare dso_local i32 @btrfs_search_slot(%struct.btrfs_trans_handle*, %struct.btrfs_root*, %struct.btrfs_key*, %struct.btrfs_path*, i32, i32) #1

declare dso_local i32 @find_name_in_backref(%struct.btrfs_path*, i8*, i32, %struct.btrfs_inode_ref**) #1

declare dso_local i32 @btrfs_item_size_nr(%struct.extent_buffer*, i32) #1

declare dso_local i8* @btrfs_inode_ref_index(%struct.extent_buffer*, %struct.btrfs_inode_ref*) #1

declare dso_local i32 @btrfs_del_item(%struct.btrfs_trans_handle*, %struct.btrfs_root*, %struct.btrfs_path*) #1

declare dso_local i64 @btrfs_item_ptr_offset(%struct.extent_buffer*, i32) #1

declare dso_local i32 @memmove_extent_buffer(%struct.extent_buffer*, i64, i64, i64) #1

declare dso_local i32 @btrfs_truncate_item(%struct.btrfs_trans_handle*, %struct.btrfs_root*, %struct.btrfs_path*, i32, i32) #1

declare dso_local i32 @btrfs_free_path(%struct.btrfs_path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
