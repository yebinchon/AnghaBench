; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_balloc.c_ext4_valid_block_bitmap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_balloc.c_ext4_valid_block_bitmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.ext4_group_desc = type { i32 }
%struct.buffer_head = type { i32 }
%struct.TYPE_2__ = type { i64 }

@EXT4_FEATURE_INCOMPAT_FLEX_BG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"Invalid block bitmap - block_group = %d, block = %llu\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, %struct.ext4_group_desc*, i32, %struct.buffer_head*)* @ext4_valid_block_bitmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_valid_block_bitmap(%struct.super_block* %0, %struct.ext4_group_desc* %1, i32 %2, %struct.buffer_head* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca %struct.ext4_group_desc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.buffer_head*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.super_block* %0, %struct.super_block** %6, align 8
  store %struct.ext4_group_desc* %1, %struct.ext4_group_desc** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.buffer_head* %3, %struct.buffer_head** %9, align 8
  %14 = load %struct.super_block*, %struct.super_block** %6, align 8
  %15 = load i32, i32* @EXT4_FEATURE_INCOMPAT_FLEX_BG, align 4
  %16 = call i64 @EXT4_HAS_INCOMPAT_FEATURE(%struct.super_block* %14, i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %4
  store i32 1, i32* %5, align 4
  br label %83

19:                                               ; preds = %4
  %20 = load %struct.super_block*, %struct.super_block** %6, align 8
  %21 = load i32, i32* %8, align 4
  %22 = call i64 @ext4_group_first_block_no(%struct.super_block* %20, i32 %21)
  store i64 %22, i64* %13, align 8
  %23 = load %struct.super_block*, %struct.super_block** %6, align 8
  %24 = load %struct.ext4_group_desc*, %struct.ext4_group_desc** %7, align 8
  %25 = call i64 @ext4_block_bitmap(%struct.super_block* %23, %struct.ext4_group_desc* %24)
  store i64 %25, i64* %12, align 8
  %26 = load i64, i64* %12, align 8
  %27 = load i64, i64* %13, align 8
  %28 = sub nsw i64 %26, %27
  store i64 %28, i64* %10, align 8
  %29 = load i64, i64* %10, align 8
  %30 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %31 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @ext4_test_bit(i64 %29, i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %19
  br label %78

36:                                               ; preds = %19
  %37 = load %struct.super_block*, %struct.super_block** %6, align 8
  %38 = load %struct.ext4_group_desc*, %struct.ext4_group_desc** %7, align 8
  %39 = call i64 @ext4_inode_bitmap(%struct.super_block* %37, %struct.ext4_group_desc* %38)
  store i64 %39, i64* %12, align 8
  %40 = load i64, i64* %12, align 8
  %41 = load i64, i64* %13, align 8
  %42 = sub nsw i64 %40, %41
  store i64 %42, i64* %10, align 8
  %43 = load i64, i64* %10, align 8
  %44 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %45 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @ext4_test_bit(i64 %43, i32 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %36
  br label %78

50:                                               ; preds = %36
  %51 = load %struct.super_block*, %struct.super_block** %6, align 8
  %52 = load %struct.ext4_group_desc*, %struct.ext4_group_desc** %7, align 8
  %53 = call i64 @ext4_inode_table(%struct.super_block* %51, %struct.ext4_group_desc* %52)
  store i64 %53, i64* %12, align 8
  %54 = load i64, i64* %12, align 8
  %55 = load i64, i64* %13, align 8
  %56 = sub nsw i64 %54, %55
  store i64 %56, i64* %10, align 8
  %57 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %58 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i64, i64* %10, align 8
  %61 = load %struct.super_block*, %struct.super_block** %6, align 8
  %62 = call %struct.TYPE_2__* @EXT4_SB(%struct.super_block* %61)
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = add nsw i64 %60, %64
  %66 = load i64, i64* %10, align 8
  %67 = call i64 @ext4_find_next_zero_bit(i32 %59, i64 %65, i64 %66)
  store i64 %67, i64* %11, align 8
  %68 = load i64, i64* %11, align 8
  %69 = load i64, i64* %10, align 8
  %70 = load %struct.super_block*, %struct.super_block** %6, align 8
  %71 = call %struct.TYPE_2__* @EXT4_SB(%struct.super_block* %70)
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = add nsw i64 %69, %73
  %75 = icmp sge i64 %68, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %50
  store i32 1, i32* %5, align 4
  br label %83

77:                                               ; preds = %50
  br label %78

78:                                               ; preds = %77, %49, %35
  %79 = load %struct.super_block*, %struct.super_block** %6, align 8
  %80 = load i32, i32* %8, align 4
  %81 = load i64, i64* %12, align 8
  %82 = call i32 @ext4_error(%struct.super_block* %79, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %80, i64 %81)
  store i32 0, i32* %5, align 4
  br label %83

83:                                               ; preds = %78, %76, %18
  %84 = load i32, i32* %5, align 4
  ret i32 %84
}

declare dso_local i64 @EXT4_HAS_INCOMPAT_FEATURE(%struct.super_block*, i32) #1

declare dso_local i64 @ext4_group_first_block_no(%struct.super_block*, i32) #1

declare dso_local i64 @ext4_block_bitmap(%struct.super_block*, %struct.ext4_group_desc*) #1

declare dso_local i32 @ext4_test_bit(i64, i32) #1

declare dso_local i64 @ext4_inode_bitmap(%struct.super_block*, %struct.ext4_group_desc*) #1

declare dso_local i64 @ext4_inode_table(%struct.super_block*, %struct.ext4_group_desc*) #1

declare dso_local i64 @ext4_find_next_zero_bit(i32, i64, i64) #1

declare dso_local %struct.TYPE_2__* @EXT4_SB(%struct.super_block*) #1

declare dso_local i32 @ext4_error(%struct.super_block*, i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
