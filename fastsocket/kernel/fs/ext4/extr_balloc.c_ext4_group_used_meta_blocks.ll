; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_balloc.c_ext4_group_used_meta_blocks.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_balloc.c_ext4_group_used_meta_blocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.ext4_group_desc = type { i32 }
%struct.ext4_sb_info = type { i32 }

@EXT4_FEATURE_INCOMPAT_FLEX_BG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, i32, %struct.ext4_group_desc*)* @ext4_group_used_meta_blocks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_group_used_meta_blocks(%struct.super_block* %0, i32 %1, %struct.ext4_group_desc* %2) #0 {
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ext4_group_desc*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.ext4_sb_info*, align 8
  %9 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.ext4_group_desc* %2, %struct.ext4_group_desc** %6, align 8
  %10 = load %struct.super_block*, %struct.super_block** %4, align 8
  %11 = call %struct.ext4_sb_info* @EXT4_SB(%struct.super_block* %10)
  store %struct.ext4_sb_info* %11, %struct.ext4_sb_info** %8, align 8
  %12 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %8, align 8
  %13 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = add nsw i32 %14, 2
  store i32 %15, i32* %9, align 4
  %16 = load %struct.super_block*, %struct.super_block** %4, align 8
  %17 = load i32, i32* @EXT4_FEATURE_INCOMPAT_FLEX_BG, align 4
  %18 = call i64 @EXT4_HAS_INCOMPAT_FEATURE(%struct.super_block* %16, i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %71

20:                                               ; preds = %3
  %21 = load %struct.super_block*, %struct.super_block** %4, align 8
  %22 = load %struct.super_block*, %struct.super_block** %4, align 8
  %23 = load %struct.ext4_group_desc*, %struct.ext4_group_desc** %6, align 8
  %24 = call i64 @ext4_block_bitmap(%struct.super_block* %22, %struct.ext4_group_desc* %23)
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @ext4_block_in_group(%struct.super_block* %21, i64 %24, i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %20
  %29 = load i32, i32* %9, align 4
  %30 = add nsw i32 %29, -1
  store i32 %30, i32* %9, align 4
  br label %31

31:                                               ; preds = %28, %20
  %32 = load %struct.super_block*, %struct.super_block** %4, align 8
  %33 = load %struct.super_block*, %struct.super_block** %4, align 8
  %34 = load %struct.ext4_group_desc*, %struct.ext4_group_desc** %6, align 8
  %35 = call i64 @ext4_inode_bitmap(%struct.super_block* %33, %struct.ext4_group_desc* %34)
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @ext4_block_in_group(%struct.super_block* %32, i64 %35, i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %31
  %40 = load i32, i32* %9, align 4
  %41 = add nsw i32 %40, -1
  store i32 %41, i32* %9, align 4
  br label %42

42:                                               ; preds = %39, %31
  %43 = load %struct.super_block*, %struct.super_block** %4, align 8
  %44 = load %struct.ext4_group_desc*, %struct.ext4_group_desc** %6, align 8
  %45 = call i64 @ext4_inode_table(%struct.super_block* %43, %struct.ext4_group_desc* %44)
  store i64 %45, i64* %7, align 8
  br label %46

46:                                               ; preds = %67, %42
  %47 = load i64, i64* %7, align 8
  %48 = load %struct.super_block*, %struct.super_block** %4, align 8
  %49 = load %struct.ext4_group_desc*, %struct.ext4_group_desc** %6, align 8
  %50 = call i64 @ext4_inode_table(%struct.super_block* %48, %struct.ext4_group_desc* %49)
  %51 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %8, align 8
  %52 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = sext i32 %53 to i64
  %55 = add nsw i64 %50, %54
  %56 = icmp slt i64 %47, %55
  br i1 %56, label %57, label %70

57:                                               ; preds = %46
  %58 = load %struct.super_block*, %struct.super_block** %4, align 8
  %59 = load i64, i64* %7, align 8
  %60 = load i32, i32* %5, align 4
  %61 = call i32 @ext4_block_in_group(%struct.super_block* %58, i64 %59, i32 %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %57
  %64 = load i32, i32* %9, align 4
  %65 = sub nsw i32 %64, 1
  store i32 %65, i32* %9, align 4
  br label %66

66:                                               ; preds = %63, %57
  br label %67

67:                                               ; preds = %66
  %68 = load i64, i64* %7, align 8
  %69 = add nsw i64 %68, 1
  store i64 %69, i64* %7, align 8
  br label %46

70:                                               ; preds = %46
  br label %71

71:                                               ; preds = %70, %3
  %72 = load i32, i32* %9, align 4
  ret i32 %72
}

declare dso_local %struct.ext4_sb_info* @EXT4_SB(%struct.super_block*) #1

declare dso_local i64 @EXT4_HAS_INCOMPAT_FEATURE(%struct.super_block*, i32) #1

declare dso_local i32 @ext4_block_in_group(%struct.super_block*, i64, i32) #1

declare dso_local i64 @ext4_block_bitmap(%struct.super_block*, %struct.ext4_group_desc*) #1

declare dso_local i64 @ext4_inode_bitmap(%struct.super_block*, %struct.ext4_group_desc*) #1

declare dso_local i64 @ext4_inode_table(%struct.super_block*, %struct.ext4_group_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
