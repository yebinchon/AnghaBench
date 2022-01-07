; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_inode-item.c_find_name_in_backref.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_inode-item.c_find_name_in_backref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_path = type { i32*, %struct.extent_buffer** }
%struct.extent_buffer = type { i32 }
%struct.btrfs_inode_ref = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfs_path*, i8*, i32, %struct.btrfs_inode_ref**)* @find_name_in_backref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_name_in_backref(%struct.btrfs_path* %0, i8* %1, i32 %2, %struct.btrfs_inode_ref** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.btrfs_path*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.btrfs_inode_ref**, align 8
  %10 = alloca %struct.extent_buffer*, align 8
  %11 = alloca %struct.btrfs_inode_ref*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.btrfs_path* %0, %struct.btrfs_path** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.btrfs_inode_ref** %3, %struct.btrfs_inode_ref*** %9, align 8
  store i64 0, i64* %15, align 8
  %17 = load %struct.btrfs_path*, %struct.btrfs_path** %6, align 8
  %18 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %17, i32 0, i32 1
  %19 = load %struct.extent_buffer**, %struct.extent_buffer*** %18, align 8
  %20 = getelementptr inbounds %struct.extent_buffer*, %struct.extent_buffer** %19, i64 0
  %21 = load %struct.extent_buffer*, %struct.extent_buffer** %20, align 8
  store %struct.extent_buffer* %21, %struct.extent_buffer** %10, align 8
  %22 = load %struct.extent_buffer*, %struct.extent_buffer** %10, align 8
  %23 = load %struct.btrfs_path*, %struct.btrfs_path** %6, align 8
  %24 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @btrfs_item_size_nr(%struct.extent_buffer* %22, i32 %27)
  store i64 %28, i64* %14, align 8
  %29 = load %struct.extent_buffer*, %struct.extent_buffer** %10, align 8
  %30 = load %struct.btrfs_path*, %struct.btrfs_path** %6, align 8
  %31 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @btrfs_item_ptr_offset(%struct.extent_buffer* %29, i32 %34)
  store i64 %35, i64* %12, align 8
  br label %36

36:                                               ; preds = %70, %59, %4
  %37 = load i64, i64* %15, align 8
  %38 = load i64, i64* %14, align 8
  %39 = icmp slt i64 %37, %38
  br i1 %39, label %40, label %71

40:                                               ; preds = %36
  %41 = load i64, i64* %12, align 8
  %42 = load i64, i64* %15, align 8
  %43 = add i64 %41, %42
  %44 = inttoptr i64 %43 to %struct.btrfs_inode_ref*
  store %struct.btrfs_inode_ref* %44, %struct.btrfs_inode_ref** %11, align 8
  %45 = load %struct.extent_buffer*, %struct.extent_buffer** %10, align 8
  %46 = load %struct.btrfs_inode_ref*, %struct.btrfs_inode_ref** %11, align 8
  %47 = call i32 @btrfs_inode_ref_name_len(%struct.extent_buffer* %45, %struct.btrfs_inode_ref* %46)
  store i32 %47, i32* %16, align 4
  %48 = load %struct.btrfs_inode_ref*, %struct.btrfs_inode_ref** %11, align 8
  %49 = getelementptr inbounds %struct.btrfs_inode_ref, %struct.btrfs_inode_ref* %48, i64 1
  %50 = ptrtoint %struct.btrfs_inode_ref* %49 to i64
  store i64 %50, i64* %13, align 8
  %51 = load i32, i32* %16, align 4
  %52 = sext i32 %51 to i64
  %53 = add i64 %52, 4
  %54 = load i64, i64* %15, align 8
  %55 = add i64 %54, %53
  store i64 %55, i64* %15, align 8
  %56 = load i32, i32* %16, align 4
  %57 = load i32, i32* %8, align 4
  %58 = icmp ne i32 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %40
  br label %36

60:                                               ; preds = %40
  %61 = load %struct.extent_buffer*, %struct.extent_buffer** %10, align 8
  %62 = load i8*, i8** %7, align 8
  %63 = load i64, i64* %13, align 8
  %64 = load i32, i32* %8, align 4
  %65 = call i64 @memcmp_extent_buffer(%struct.extent_buffer* %61, i8* %62, i64 %63, i32 %64)
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %60
  %68 = load %struct.btrfs_inode_ref*, %struct.btrfs_inode_ref** %11, align 8
  %69 = load %struct.btrfs_inode_ref**, %struct.btrfs_inode_ref*** %9, align 8
  store %struct.btrfs_inode_ref* %68, %struct.btrfs_inode_ref** %69, align 8
  store i32 1, i32* %5, align 4
  br label %72

70:                                               ; preds = %60
  br label %36

71:                                               ; preds = %36
  store i32 0, i32* %5, align 4
  br label %72

72:                                               ; preds = %71, %67
  %73 = load i32, i32* %5, align 4
  ret i32 %73
}

declare dso_local i64 @btrfs_item_size_nr(%struct.extent_buffer*, i32) #1

declare dso_local i64 @btrfs_item_ptr_offset(%struct.extent_buffer*, i32) #1

declare dso_local i32 @btrfs_inode_ref_name_len(%struct.extent_buffer*, %struct.btrfs_inode_ref*) #1

declare dso_local i64 @memcmp_extent_buffer(%struct.extent_buffer*, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
