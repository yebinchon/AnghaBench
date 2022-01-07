; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext2/extr_balloc.c_ext2_init_block_alloc_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext2/extr_balloc.c_ext2_init_block_alloc_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.super_block* }
%struct.super_block = type { i32 }
%struct.ext2_inode_info = type { %struct.ext2_block_alloc_info* }
%struct.ext2_block_alloc_info = type { i64, i64, %struct.ext2_reserve_window_node }
%struct.ext2_reserve_window_node = type { i64, i64, i8*, i8* }

@GFP_NOFS = common dso_local global i32 0, align 4
@EXT2_RESERVE_WINDOW_NOT_ALLOCATED = common dso_local global i8* null, align 8
@RESERVATION = common dso_local global i32 0, align 4
@EXT2_DEFAULT_RESERVE_BLOCKS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ext2_init_block_alloc_info(%struct.inode* %0) #0 {
  %2 = alloca %struct.inode*, align 8
  %3 = alloca %struct.ext2_inode_info*, align 8
  %4 = alloca %struct.ext2_block_alloc_info*, align 8
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca %struct.ext2_reserve_window_node*, align 8
  store %struct.inode* %0, %struct.inode** %2, align 8
  %7 = load %struct.inode*, %struct.inode** %2, align 8
  %8 = call %struct.ext2_inode_info* @EXT2_I(%struct.inode* %7)
  store %struct.ext2_inode_info* %8, %struct.ext2_inode_info** %3, align 8
  %9 = load %struct.ext2_inode_info*, %struct.ext2_inode_info** %3, align 8
  %10 = getelementptr inbounds %struct.ext2_inode_info, %struct.ext2_inode_info* %9, i32 0, i32 0
  %11 = load %struct.ext2_block_alloc_info*, %struct.ext2_block_alloc_info** %10, align 8
  store %struct.ext2_block_alloc_info* %11, %struct.ext2_block_alloc_info** %4, align 8
  %12 = load %struct.inode*, %struct.inode** %2, align 8
  %13 = getelementptr inbounds %struct.inode, %struct.inode* %12, i32 0, i32 0
  %14 = load %struct.super_block*, %struct.super_block** %13, align 8
  store %struct.super_block* %14, %struct.super_block** %5, align 8
  %15 = load i32, i32* @GFP_NOFS, align 4
  %16 = call %struct.ext2_block_alloc_info* @kmalloc(i32 48, i32 %15)
  store %struct.ext2_block_alloc_info* %16, %struct.ext2_block_alloc_info** %4, align 8
  %17 = load %struct.ext2_block_alloc_info*, %struct.ext2_block_alloc_info** %4, align 8
  %18 = icmp ne %struct.ext2_block_alloc_info* %17, null
  br i1 %18, label %19, label %46

19:                                               ; preds = %1
  %20 = load %struct.ext2_block_alloc_info*, %struct.ext2_block_alloc_info** %4, align 8
  %21 = getelementptr inbounds %struct.ext2_block_alloc_info, %struct.ext2_block_alloc_info* %20, i32 0, i32 2
  store %struct.ext2_reserve_window_node* %21, %struct.ext2_reserve_window_node** %6, align 8
  %22 = load i8*, i8** @EXT2_RESERVE_WINDOW_NOT_ALLOCATED, align 8
  %23 = load %struct.ext2_reserve_window_node*, %struct.ext2_reserve_window_node** %6, align 8
  %24 = getelementptr inbounds %struct.ext2_reserve_window_node, %struct.ext2_reserve_window_node* %23, i32 0, i32 3
  store i8* %22, i8** %24, align 8
  %25 = load i8*, i8** @EXT2_RESERVE_WINDOW_NOT_ALLOCATED, align 8
  %26 = load %struct.ext2_reserve_window_node*, %struct.ext2_reserve_window_node** %6, align 8
  %27 = getelementptr inbounds %struct.ext2_reserve_window_node, %struct.ext2_reserve_window_node* %26, i32 0, i32 2
  store i8* %25, i8** %27, align 8
  %28 = load %struct.super_block*, %struct.super_block** %5, align 8
  %29 = load i32, i32* @RESERVATION, align 4
  %30 = call i32 @test_opt(%struct.super_block* %28, i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %19
  %33 = load %struct.ext2_reserve_window_node*, %struct.ext2_reserve_window_node** %6, align 8
  %34 = getelementptr inbounds %struct.ext2_reserve_window_node, %struct.ext2_reserve_window_node* %33, i32 0, i32 1
  store i64 0, i64* %34, align 8
  br label %39

35:                                               ; preds = %19
  %36 = load i64, i64* @EXT2_DEFAULT_RESERVE_BLOCKS, align 8
  %37 = load %struct.ext2_reserve_window_node*, %struct.ext2_reserve_window_node** %6, align 8
  %38 = getelementptr inbounds %struct.ext2_reserve_window_node, %struct.ext2_reserve_window_node* %37, i32 0, i32 1
  store i64 %36, i64* %38, align 8
  br label %39

39:                                               ; preds = %35, %32
  %40 = load %struct.ext2_reserve_window_node*, %struct.ext2_reserve_window_node** %6, align 8
  %41 = getelementptr inbounds %struct.ext2_reserve_window_node, %struct.ext2_reserve_window_node* %40, i32 0, i32 0
  store i64 0, i64* %41, align 8
  %42 = load %struct.ext2_block_alloc_info*, %struct.ext2_block_alloc_info** %4, align 8
  %43 = getelementptr inbounds %struct.ext2_block_alloc_info, %struct.ext2_block_alloc_info* %42, i32 0, i32 1
  store i64 0, i64* %43, align 8
  %44 = load %struct.ext2_block_alloc_info*, %struct.ext2_block_alloc_info** %4, align 8
  %45 = getelementptr inbounds %struct.ext2_block_alloc_info, %struct.ext2_block_alloc_info* %44, i32 0, i32 0
  store i64 0, i64* %45, align 8
  br label %46

46:                                               ; preds = %39, %1
  %47 = load %struct.ext2_block_alloc_info*, %struct.ext2_block_alloc_info** %4, align 8
  %48 = load %struct.ext2_inode_info*, %struct.ext2_inode_info** %3, align 8
  %49 = getelementptr inbounds %struct.ext2_inode_info, %struct.ext2_inode_info* %48, i32 0, i32 0
  store %struct.ext2_block_alloc_info* %47, %struct.ext2_block_alloc_info** %49, align 8
  ret void
}

declare dso_local %struct.ext2_inode_info* @EXT2_I(%struct.inode*) #1

declare dso_local %struct.ext2_block_alloc_info* @kmalloc(i32, i32) #1

declare dso_local i32 @test_opt(%struct.super_block*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
