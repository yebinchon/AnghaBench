; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_xattr.c___btrfs_getxattr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_xattr.c___btrfs_getxattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.btrfs_dir_item = type { i32 }
%struct.btrfs_root = type { i32 }
%struct.btrfs_path = type { %struct.extent_buffer** }
%struct.extent_buffer = type { i32 }
%struct.TYPE_2__ = type { %struct.btrfs_root* }

@ENOMEM = common dso_local global i32 0, align 4
@ENODATA = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__btrfs_getxattr(%struct.inode* %0, i8* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.btrfs_dir_item*, align 8
  %11 = alloca %struct.btrfs_root*, align 8
  %12 = alloca %struct.btrfs_path*, align 8
  %13 = alloca %struct.extent_buffer*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  store %struct.inode* %0, %struct.inode** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %16 = load %struct.inode*, %struct.inode** %6, align 8
  %17 = call %struct.TYPE_2__* @BTRFS_I(%struct.inode* %16)
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load %struct.btrfs_root*, %struct.btrfs_root** %18, align 8
  store %struct.btrfs_root* %19, %struct.btrfs_root** %11, align 8
  store i32 0, i32* %14, align 4
  %20 = call %struct.btrfs_path* (...) @btrfs_alloc_path()
  store %struct.btrfs_path* %20, %struct.btrfs_path** %12, align 8
  %21 = load %struct.btrfs_path*, %struct.btrfs_path** %12, align 8
  %22 = icmp ne %struct.btrfs_path* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %4
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %5, align 4
  br label %95

26:                                               ; preds = %4
  %27 = load %struct.btrfs_root*, %struct.btrfs_root** %11, align 8
  %28 = load %struct.btrfs_path*, %struct.btrfs_path** %12, align 8
  %29 = load %struct.inode*, %struct.inode** %6, align 8
  %30 = call i32 @btrfs_ino(%struct.inode* %29)
  %31 = load i8*, i8** %7, align 8
  %32 = load i8*, i8** %7, align 8
  %33 = call i32 @strlen(i8* %32)
  %34 = call %struct.btrfs_dir_item* @btrfs_lookup_xattr(i32* null, %struct.btrfs_root* %27, %struct.btrfs_path* %28, i32 %30, i8* %31, i32 %33, i32 0)
  store %struct.btrfs_dir_item* %34, %struct.btrfs_dir_item** %10, align 8
  %35 = load %struct.btrfs_dir_item*, %struct.btrfs_dir_item** %10, align 8
  %36 = icmp ne %struct.btrfs_dir_item* %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %26
  %38 = load i32, i32* @ENODATA, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %14, align 4
  br label %91

40:                                               ; preds = %26
  %41 = load %struct.btrfs_dir_item*, %struct.btrfs_dir_item** %10, align 8
  %42 = call i64 @IS_ERR(%struct.btrfs_dir_item* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %40
  %45 = load %struct.btrfs_dir_item*, %struct.btrfs_dir_item** %10, align 8
  %46 = call i32 @PTR_ERR(%struct.btrfs_dir_item* %45)
  store i32 %46, i32* %14, align 4
  br label %91

47:                                               ; preds = %40
  br label %48

48:                                               ; preds = %47
  %49 = load %struct.btrfs_path*, %struct.btrfs_path** %12, align 8
  %50 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %49, i32 0, i32 0
  %51 = load %struct.extent_buffer**, %struct.extent_buffer*** %50, align 8
  %52 = getelementptr inbounds %struct.extent_buffer*, %struct.extent_buffer** %51, i64 0
  %53 = load %struct.extent_buffer*, %struct.extent_buffer** %52, align 8
  store %struct.extent_buffer* %53, %struct.extent_buffer** %13, align 8
  %54 = load i64, i64* %9, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %61, label %56

56:                                               ; preds = %48
  %57 = load %struct.extent_buffer*, %struct.extent_buffer** %13, align 8
  %58 = load %struct.btrfs_dir_item*, %struct.btrfs_dir_item** %10, align 8
  %59 = call i64 @btrfs_dir_data_len(%struct.extent_buffer* %57, %struct.btrfs_dir_item* %58)
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* %14, align 4
  br label %91

61:                                               ; preds = %48
  %62 = load %struct.extent_buffer*, %struct.extent_buffer** %13, align 8
  %63 = load %struct.btrfs_dir_item*, %struct.btrfs_dir_item** %10, align 8
  %64 = call i64 @btrfs_dir_data_len(%struct.extent_buffer* %62, %struct.btrfs_dir_item* %63)
  %65 = load i64, i64* %9, align 8
  %66 = icmp ugt i64 %64, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %61
  %68 = load i32, i32* @ERANGE, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %14, align 4
  br label %91

70:                                               ; preds = %61
  %71 = load %struct.btrfs_dir_item*, %struct.btrfs_dir_item** %10, align 8
  %72 = getelementptr inbounds %struct.btrfs_dir_item, %struct.btrfs_dir_item* %71, i64 1
  %73 = bitcast %struct.btrfs_dir_item* %72 to i8*
  %74 = load %struct.extent_buffer*, %struct.extent_buffer** %13, align 8
  %75 = load %struct.btrfs_dir_item*, %struct.btrfs_dir_item** %10, align 8
  %76 = call i32 @btrfs_dir_name_len(%struct.extent_buffer* %74, %struct.btrfs_dir_item* %75)
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i8, i8* %73, i64 %77
  %79 = ptrtoint i8* %78 to i64
  store i64 %79, i64* %15, align 8
  %80 = load %struct.extent_buffer*, %struct.extent_buffer** %13, align 8
  %81 = load i8*, i8** %8, align 8
  %82 = load i64, i64* %15, align 8
  %83 = load %struct.extent_buffer*, %struct.extent_buffer** %13, align 8
  %84 = load %struct.btrfs_dir_item*, %struct.btrfs_dir_item** %10, align 8
  %85 = call i64 @btrfs_dir_data_len(%struct.extent_buffer* %83, %struct.btrfs_dir_item* %84)
  %86 = call i32 @read_extent_buffer(%struct.extent_buffer* %80, i8* %81, i64 %82, i64 %85)
  %87 = load %struct.extent_buffer*, %struct.extent_buffer** %13, align 8
  %88 = load %struct.btrfs_dir_item*, %struct.btrfs_dir_item** %10, align 8
  %89 = call i64 @btrfs_dir_data_len(%struct.extent_buffer* %87, %struct.btrfs_dir_item* %88)
  %90 = trunc i64 %89 to i32
  store i32 %90, i32* %14, align 4
  br label %91

91:                                               ; preds = %70, %67, %56, %44, %37
  %92 = load %struct.btrfs_path*, %struct.btrfs_path** %12, align 8
  %93 = call i32 @btrfs_free_path(%struct.btrfs_path* %92)
  %94 = load i32, i32* %14, align 4
  store i32 %94, i32* %5, align 4
  br label %95

95:                                               ; preds = %91, %23
  %96 = load i32, i32* %5, align 4
  ret i32 %96
}

declare dso_local %struct.TYPE_2__* @BTRFS_I(%struct.inode*) #1

declare dso_local %struct.btrfs_path* @btrfs_alloc_path(...) #1

declare dso_local %struct.btrfs_dir_item* @btrfs_lookup_xattr(i32*, %struct.btrfs_root*, %struct.btrfs_path*, i32, i8*, i32, i32) #1

declare dso_local i32 @btrfs_ino(%struct.inode*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @IS_ERR(%struct.btrfs_dir_item*) #1

declare dso_local i32 @PTR_ERR(%struct.btrfs_dir_item*) #1

declare dso_local i64 @btrfs_dir_data_len(%struct.extent_buffer*, %struct.btrfs_dir_item*) #1

declare dso_local i32 @btrfs_dir_name_len(%struct.extent_buffer*, %struct.btrfs_dir_item*) #1

declare dso_local i32 @read_extent_buffer(%struct.extent_buffer*, i8*, i64, i64) #1

declare dso_local i32 @btrfs_free_path(%struct.btrfs_path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
