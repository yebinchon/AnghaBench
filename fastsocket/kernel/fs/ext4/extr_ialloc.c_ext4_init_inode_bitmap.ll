; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_ialloc.c_ext4_init_inode_bitmap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_ialloc.c_ext4_init_inode_bitmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.buffer_head = type { i32 }
%struct.ext4_group_desc = type { i32 }
%struct.ext4_sb_info = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"Checksum bad for group %u\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext4_init_inode_bitmap(%struct.super_block* %0, %struct.buffer_head* %1, i32 %2, %struct.ext4_group_desc* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca %struct.buffer_head*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ext4_group_desc*, align 8
  %10 = alloca %struct.ext4_sb_info*, align 8
  store %struct.super_block* %0, %struct.super_block** %6, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.ext4_group_desc* %3, %struct.ext4_group_desc** %9, align 8
  %11 = load %struct.super_block*, %struct.super_block** %6, align 8
  %12 = call %struct.ext4_sb_info* @EXT4_SB(%struct.super_block* %11)
  store %struct.ext4_sb_info* %12, %struct.ext4_sb_info** %10, align 8
  %13 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %14 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %15 = call i32 @buffer_locked(%struct.buffer_head* %14)
  %16 = call i32 @J_ASSERT_BH(%struct.buffer_head* %13, i32 %15)
  %17 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %10, align 8
  %18 = load i32, i32* %8, align 4
  %19 = load %struct.ext4_group_desc*, %struct.ext4_group_desc** %9, align 8
  %20 = call i32 @ext4_group_desc_csum_verify(%struct.ext4_sb_info* %17, i32 %18, %struct.ext4_group_desc* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %42, label %22

22:                                               ; preds = %4
  %23 = load %struct.super_block*, %struct.super_block** %6, align 8
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @ext4_error(%struct.super_block* %23, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load %struct.super_block*, %struct.super_block** %6, align 8
  %27 = load %struct.ext4_group_desc*, %struct.ext4_group_desc** %9, align 8
  %28 = call i32 @ext4_free_blks_set(%struct.super_block* %26, %struct.ext4_group_desc* %27, i32 0)
  %29 = load %struct.super_block*, %struct.super_block** %6, align 8
  %30 = load %struct.ext4_group_desc*, %struct.ext4_group_desc** %9, align 8
  %31 = call i32 @ext4_free_inodes_set(%struct.super_block* %29, %struct.ext4_group_desc* %30, i32 0)
  %32 = load %struct.super_block*, %struct.super_block** %6, align 8
  %33 = load %struct.ext4_group_desc*, %struct.ext4_group_desc** %9, align 8
  %34 = call i32 @ext4_itable_unused_set(%struct.super_block* %32, %struct.ext4_group_desc* %33, i32 0)
  %35 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %36 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.super_block*, %struct.super_block** %6, align 8
  %39 = getelementptr inbounds %struct.super_block, %struct.super_block* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @memset(i32 %37, i32 255, i32 %40)
  store i32 0, i32* %5, align 4
  br label %63

42:                                               ; preds = %4
  %43 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %44 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.super_block*, %struct.super_block** %6, align 8
  %47 = call i32 @EXT4_INODES_PER_GROUP(%struct.super_block* %46)
  %48 = add nsw i32 %47, 7
  %49 = sdiv i32 %48, 8
  %50 = call i32 @memset(i32 %45, i32 0, i32 %49)
  %51 = load %struct.super_block*, %struct.super_block** %6, align 8
  %52 = call i32 @EXT4_INODES_PER_GROUP(%struct.super_block* %51)
  %53 = load %struct.super_block*, %struct.super_block** %6, align 8
  %54 = getelementptr inbounds %struct.super_block, %struct.super_block* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = mul nsw i32 %55, 8
  %57 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %58 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @mark_bitmap_end(i32 %52, i32 %56, i32 %59)
  %61 = load %struct.super_block*, %struct.super_block** %6, align 8
  %62 = call i32 @EXT4_INODES_PER_GROUP(%struct.super_block* %61)
  store i32 %62, i32* %5, align 4
  br label %63

63:                                               ; preds = %42, %22
  %64 = load i32, i32* %5, align 4
  ret i32 %64
}

declare dso_local %struct.ext4_sb_info* @EXT4_SB(%struct.super_block*) #1

declare dso_local i32 @J_ASSERT_BH(%struct.buffer_head*, i32) #1

declare dso_local i32 @buffer_locked(%struct.buffer_head*) #1

declare dso_local i32 @ext4_group_desc_csum_verify(%struct.ext4_sb_info*, i32, %struct.ext4_group_desc*) #1

declare dso_local i32 @ext4_error(%struct.super_block*, i8*, i32) #1

declare dso_local i32 @ext4_free_blks_set(%struct.super_block*, %struct.ext4_group_desc*, i32) #1

declare dso_local i32 @ext4_free_inodes_set(%struct.super_block*, %struct.ext4_group_desc*, i32) #1

declare dso_local i32 @ext4_itable_unused_set(%struct.super_block*, %struct.ext4_group_desc*, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @EXT4_INODES_PER_GROUP(%struct.super_block*) #1

declare dso_local i32 @mark_bitmap_end(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
