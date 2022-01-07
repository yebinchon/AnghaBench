; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_backref.c_check_extent_in_eb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_backref.c_check_extent_in_eb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_key = type { i64, i32 }
%struct.extent_buffer = type { i32 }
%struct.btrfs_file_extent_item = type { i32 }
%struct.extent_inode_elem = type { i64, i32, %struct.extent_inode_elem* }

@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfs_key*, %struct.extent_buffer*, %struct.btrfs_file_extent_item*, i64, %struct.extent_inode_elem**)* @check_extent_in_eb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_extent_in_eb(%struct.btrfs_key* %0, %struct.extent_buffer* %1, %struct.btrfs_file_extent_item* %2, i64 %3, %struct.extent_inode_elem** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.btrfs_key*, align 8
  %8 = alloca %struct.extent_buffer*, align 8
  %9 = alloca %struct.btrfs_file_extent_item*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.extent_inode_elem**, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.extent_inode_elem*, align 8
  store %struct.btrfs_key* %0, %struct.btrfs_key** %7, align 8
  store %struct.extent_buffer* %1, %struct.extent_buffer** %8, align 8
  store %struct.btrfs_file_extent_item* %2, %struct.btrfs_file_extent_item** %9, align 8
  store i64 %3, i64* %10, align 8
  store %struct.extent_inode_elem** %4, %struct.extent_inode_elem*** %11, align 8
  %15 = load %struct.extent_buffer*, %struct.extent_buffer** %8, align 8
  %16 = load %struct.btrfs_file_extent_item*, %struct.btrfs_file_extent_item** %9, align 8
  %17 = call i64 @btrfs_file_extent_offset(%struct.extent_buffer* %15, %struct.btrfs_file_extent_item* %16)
  store i64 %17, i64* %12, align 8
  %18 = load %struct.extent_buffer*, %struct.extent_buffer** %8, align 8
  %19 = load %struct.btrfs_file_extent_item*, %struct.btrfs_file_extent_item** %9, align 8
  %20 = call i64 @btrfs_file_extent_num_bytes(%struct.extent_buffer* %18, %struct.btrfs_file_extent_item* %19)
  store i64 %20, i64* %13, align 8
  %21 = load i64, i64* %10, align 8
  %22 = load i64, i64* %12, align 8
  %23 = icmp slt i64 %21, %22
  br i1 %23, label %30, label %24

24:                                               ; preds = %5
  %25 = load i64, i64* %10, align 8
  %26 = load i64, i64* %12, align 8
  %27 = load i64, i64* %13, align 8
  %28 = add nsw i64 %26, %27
  %29 = icmp sge i64 %25, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %24, %5
  store i32 1, i32* %6, align 4
  br label %60

31:                                               ; preds = %24
  %32 = load i32, i32* @GFP_NOFS, align 4
  %33 = call %struct.extent_inode_elem* @kmalloc(i32 24, i32 %32)
  store %struct.extent_inode_elem* %33, %struct.extent_inode_elem** %14, align 8
  %34 = load %struct.extent_inode_elem*, %struct.extent_inode_elem** %14, align 8
  %35 = icmp ne %struct.extent_inode_elem* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %31
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %6, align 4
  br label %60

39:                                               ; preds = %31
  %40 = load %struct.extent_inode_elem**, %struct.extent_inode_elem*** %11, align 8
  %41 = load %struct.extent_inode_elem*, %struct.extent_inode_elem** %40, align 8
  %42 = load %struct.extent_inode_elem*, %struct.extent_inode_elem** %14, align 8
  %43 = getelementptr inbounds %struct.extent_inode_elem, %struct.extent_inode_elem* %42, i32 0, i32 2
  store %struct.extent_inode_elem* %41, %struct.extent_inode_elem** %43, align 8
  %44 = load %struct.btrfs_key*, %struct.btrfs_key** %7, align 8
  %45 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.extent_inode_elem*, %struct.extent_inode_elem** %14, align 8
  %48 = getelementptr inbounds %struct.extent_inode_elem, %struct.extent_inode_elem* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 8
  %49 = load %struct.btrfs_key*, %struct.btrfs_key** %7, align 8
  %50 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* %10, align 8
  %53 = load i64, i64* %12, align 8
  %54 = sub nsw i64 %52, %53
  %55 = add nsw i64 %51, %54
  %56 = load %struct.extent_inode_elem*, %struct.extent_inode_elem** %14, align 8
  %57 = getelementptr inbounds %struct.extent_inode_elem, %struct.extent_inode_elem* %56, i32 0, i32 0
  store i64 %55, i64* %57, align 8
  %58 = load %struct.extent_inode_elem*, %struct.extent_inode_elem** %14, align 8
  %59 = load %struct.extent_inode_elem**, %struct.extent_inode_elem*** %11, align 8
  store %struct.extent_inode_elem* %58, %struct.extent_inode_elem** %59, align 8
  store i32 0, i32* %6, align 4
  br label %60

60:                                               ; preds = %39, %36, %30
  %61 = load i32, i32* %6, align 4
  ret i32 %61
}

declare dso_local i64 @btrfs_file_extent_offset(%struct.extent_buffer*, %struct.btrfs_file_extent_item*) #1

declare dso_local i64 @btrfs_file_extent_num_bytes(%struct.extent_buffer*, %struct.btrfs_file_extent_item*) #1

declare dso_local %struct.extent_inode_elem* @kmalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
