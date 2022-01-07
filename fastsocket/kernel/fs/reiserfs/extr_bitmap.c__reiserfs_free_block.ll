; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_bitmap.c__reiserfs_free_block.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_bitmap.c__reiserfs_free_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reiserfs_transaction_handle = type { i32, %struct.super_block* }
%struct.super_block = type { i32 }
%struct.inode = type { i32 }
%struct.reiserfs_super_block = type { i32 }
%struct.buffer_head = type { i32 }
%struct.reiserfs_bitmap_info = type { i32 }

@free_block = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"vs-4075\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"block %lu is out of range\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"vs-4080\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"block %lu: bit already cleared\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.reiserfs_transaction_handle*, %struct.inode*, i32, i32)* @_reiserfs_free_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_reiserfs_free_block(%struct.reiserfs_transaction_handle* %0, %struct.inode* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.reiserfs_transaction_handle*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.super_block*, align 8
  %10 = alloca %struct.reiserfs_super_block*, align 8
  %11 = alloca %struct.buffer_head*, align 8
  %12 = alloca %struct.buffer_head*, align 8
  %13 = alloca %struct.reiserfs_bitmap_info*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.reiserfs_transaction_handle* %0, %struct.reiserfs_transaction_handle** %5, align 8
  store %struct.inode* %1, %struct.inode** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %16 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %5, align 8
  %17 = getelementptr inbounds %struct.reiserfs_transaction_handle, %struct.reiserfs_transaction_handle* %16, i32 0, i32 1
  %18 = load %struct.super_block*, %struct.super_block** %17, align 8
  store %struct.super_block* %18, %struct.super_block** %9, align 8
  %19 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %5, align 8
  %20 = getelementptr inbounds %struct.reiserfs_transaction_handle, %struct.reiserfs_transaction_handle* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  %25 = call i32 @BUG_ON(i32 %24)
  %26 = load %struct.super_block*, %struct.super_block** %9, align 8
  %27 = load i32, i32* @free_block, align 4
  %28 = call i32 @PROC_INFO_INC(%struct.super_block* %26, i32 %27)
  %29 = load %struct.super_block*, %struct.super_block** %9, align 8
  %30 = call %struct.reiserfs_super_block* @SB_DISK_SUPER_BLOCK(%struct.super_block* %29)
  store %struct.reiserfs_super_block* %30, %struct.reiserfs_super_block** %10, align 8
  %31 = load %struct.super_block*, %struct.super_block** %9, align 8
  %32 = call %struct.buffer_head* @SB_BUFFER_WITH_SB(%struct.super_block* %31)
  store %struct.buffer_head* %32, %struct.buffer_head** %11, align 8
  %33 = load %struct.super_block*, %struct.super_block** %9, align 8
  %34 = call %struct.reiserfs_bitmap_info* @SB_AP_BITMAP(%struct.super_block* %33)
  store %struct.reiserfs_bitmap_info* %34, %struct.reiserfs_bitmap_info** %13, align 8
  %35 = load %struct.super_block*, %struct.super_block** %9, align 8
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @get_bit_address(%struct.super_block* %35, i32 %36, i32* %14, i32* %15)
  %38 = load i32, i32* %14, align 4
  %39 = load %struct.super_block*, %struct.super_block** %9, align 8
  %40 = call i32 @reiserfs_bmap_count(%struct.super_block* %39)
  %41 = icmp uge i32 %38, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %4
  %43 = load %struct.super_block*, %struct.super_block** %9, align 8
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @reiserfs_error(%struct.super_block* %43, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %44)
  br label %98

46:                                               ; preds = %4
  %47 = load %struct.super_block*, %struct.super_block** %9, align 8
  %48 = load i32, i32* %14, align 4
  %49 = call %struct.buffer_head* @reiserfs_read_bitmap_block(%struct.super_block* %47, i32 %48)
  store %struct.buffer_head* %49, %struct.buffer_head** %12, align 8
  %50 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %51 = icmp ne %struct.buffer_head* %50, null
  br i1 %51, label %53, label %52

52:                                               ; preds = %46
  br label %98

53:                                               ; preds = %46
  %54 = load %struct.super_block*, %struct.super_block** %9, align 8
  %55 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %56 = call i32 @reiserfs_prepare_for_journal(%struct.super_block* %54, %struct.buffer_head* %55, i32 1)
  %57 = load i32, i32* %15, align 4
  %58 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %59 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @reiserfs_test_and_clear_le_bit(i32 %57, i32 %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %67, label %63

63:                                               ; preds = %53
  %64 = load %struct.super_block*, %struct.super_block** %9, align 8
  %65 = load i32, i32* %7, align 4
  %66 = call i32 @reiserfs_error(%struct.super_block* %64, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %65)
  br label %67

67:                                               ; preds = %63, %53
  %68 = load %struct.reiserfs_bitmap_info*, %struct.reiserfs_bitmap_info** %13, align 8
  %69 = load i32, i32* %14, align 4
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds %struct.reiserfs_bitmap_info, %struct.reiserfs_bitmap_info* %68, i64 %70
  %72 = getelementptr inbounds %struct.reiserfs_bitmap_info, %struct.reiserfs_bitmap_info* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %72, align 4
  %75 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %5, align 8
  %76 = load %struct.super_block*, %struct.super_block** %9, align 8
  %77 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %78 = call i32 @journal_mark_dirty(%struct.reiserfs_transaction_handle* %75, %struct.super_block* %76, %struct.buffer_head* %77)
  %79 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %80 = call i32 @brelse(%struct.buffer_head* %79)
  %81 = load %struct.super_block*, %struct.super_block** %9, align 8
  %82 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %83 = call i32 @reiserfs_prepare_for_journal(%struct.super_block* %81, %struct.buffer_head* %82, i32 1)
  %84 = load %struct.reiserfs_super_block*, %struct.reiserfs_super_block** %10, align 8
  %85 = load %struct.reiserfs_super_block*, %struct.reiserfs_super_block** %10, align 8
  %86 = call i64 @sb_free_blocks(%struct.reiserfs_super_block* %85)
  %87 = add nsw i64 %86, 1
  %88 = call i32 @set_sb_free_blocks(%struct.reiserfs_super_block* %84, i64 %87)
  %89 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %5, align 8
  %90 = load %struct.super_block*, %struct.super_block** %9, align 8
  %91 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %92 = call i32 @journal_mark_dirty(%struct.reiserfs_transaction_handle* %89, %struct.super_block* %90, %struct.buffer_head* %91)
  %93 = load i32, i32* %8, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %67
  %96 = load %struct.inode*, %struct.inode** %6, align 8
  %97 = call i32 @vfs_dq_free_block_nodirty(%struct.inode* %96, i32 1)
  br label %98

98:                                               ; preds = %42, %52, %95, %67
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @PROC_INFO_INC(%struct.super_block*, i32) #1

declare dso_local %struct.reiserfs_super_block* @SB_DISK_SUPER_BLOCK(%struct.super_block*) #1

declare dso_local %struct.buffer_head* @SB_BUFFER_WITH_SB(%struct.super_block*) #1

declare dso_local %struct.reiserfs_bitmap_info* @SB_AP_BITMAP(%struct.super_block*) #1

declare dso_local i32 @get_bit_address(%struct.super_block*, i32, i32*, i32*) #1

declare dso_local i32 @reiserfs_bmap_count(%struct.super_block*) #1

declare dso_local i32 @reiserfs_error(%struct.super_block*, i8*, i8*, i32) #1

declare dso_local %struct.buffer_head* @reiserfs_read_bitmap_block(%struct.super_block*, i32) #1

declare dso_local i32 @reiserfs_prepare_for_journal(%struct.super_block*, %struct.buffer_head*, i32) #1

declare dso_local i32 @reiserfs_test_and_clear_le_bit(i32, i32) #1

declare dso_local i32 @journal_mark_dirty(%struct.reiserfs_transaction_handle*, %struct.super_block*, %struct.buffer_head*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @set_sb_free_blocks(%struct.reiserfs_super_block*, i64) #1

declare dso_local i64 @sb_free_blocks(%struct.reiserfs_super_block*) #1

declare dso_local i32 @vfs_dq_free_block_nodirty(%struct.inode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
