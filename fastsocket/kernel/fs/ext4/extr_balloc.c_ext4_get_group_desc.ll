; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_balloc.c_ext4_get_group_desc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_balloc.c_ext4_get_group_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ext4_group_desc = type { i32 }
%struct.super_block = type { i32 }
%struct.buffer_head = type { i64 }
%struct.ext4_sb_info = type { %struct.buffer_head** }

@.str = private unnamed_addr constant [66 x i8] c"block_group >= groups_count - block_group = %u, groups_count = %u\00", align 1
@.str.1 = private unnamed_addr constant [75 x i8] c"Group descriptor not loaded - block_group = %u, group_desc = %u, desc = %u\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ext4_group_desc* @ext4_get_group_desc(%struct.super_block* %0, i32 %1, %struct.buffer_head** %2) #0 {
  %4 = alloca %struct.ext4_group_desc*, align 8
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.buffer_head**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ext4_group_desc*, align 8
  %12 = alloca %struct.ext4_sb_info*, align 8
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.buffer_head** %2, %struct.buffer_head*** %7, align 8
  %13 = load %struct.super_block*, %struct.super_block** %5, align 8
  %14 = call i32 @ext4_get_groups_count(%struct.super_block* %13)
  store i32 %14, i32* %10, align 4
  %15 = load %struct.super_block*, %struct.super_block** %5, align 8
  %16 = call %struct.ext4_sb_info* @EXT4_SB(%struct.super_block* %15)
  store %struct.ext4_sb_info* %16, %struct.ext4_sb_info** %12, align 8
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* %10, align 4
  %19 = icmp sge i32 %17, %18
  br i1 %19, label %20, label %25

20:                                               ; preds = %3
  %21 = load %struct.super_block*, %struct.super_block** %5, align 8
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* %10, align 4
  %24 = call i32 (%struct.super_block*, i8*, i32, i32, ...) @ext4_error(%struct.super_block* %21, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %23)
  store %struct.ext4_group_desc* null, %struct.ext4_group_desc** %4, align 8
  br label %80

25:                                               ; preds = %3
  %26 = load i32, i32* %6, align 4
  %27 = load %struct.super_block*, %struct.super_block** %5, align 8
  %28 = call i32 @EXT4_DESC_PER_BLOCK_BITS(%struct.super_block* %27)
  %29 = ashr i32 %26, %28
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %6, align 4
  %31 = load %struct.super_block*, %struct.super_block** %5, align 8
  %32 = call i32 @EXT4_DESC_PER_BLOCK(%struct.super_block* %31)
  %33 = sub nsw i32 %32, 1
  %34 = and i32 %30, %33
  store i32 %34, i32* %9, align 4
  %35 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %12, align 8
  %36 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %35, i32 0, i32 0
  %37 = load %struct.buffer_head**, %struct.buffer_head*** %36, align 8
  %38 = load i32, i32* %8, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %37, i64 %39
  %41 = load %struct.buffer_head*, %struct.buffer_head** %40, align 8
  %42 = icmp ne %struct.buffer_head* %41, null
  br i1 %42, label %49, label %43

43:                                               ; preds = %25
  %44 = load %struct.super_block*, %struct.super_block** %5, align 8
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* %9, align 4
  %48 = call i32 (%struct.super_block*, i8*, i32, i32, ...) @ext4_error(%struct.super_block* %44, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.1, i64 0, i64 0), i32 %45, i32 %46, i32 %47)
  store %struct.ext4_group_desc* null, %struct.ext4_group_desc** %4, align 8
  br label %80

49:                                               ; preds = %25
  %50 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %12, align 8
  %51 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %50, i32 0, i32 0
  %52 = load %struct.buffer_head**, %struct.buffer_head*** %51, align 8
  %53 = load i32, i32* %8, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %52, i64 %54
  %56 = load %struct.buffer_head*, %struct.buffer_head** %55, align 8
  %57 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = inttoptr i64 %58 to i32*
  %60 = load i32, i32* %9, align 4
  %61 = load %struct.super_block*, %struct.super_block** %5, align 8
  %62 = call i32 @EXT4_DESC_SIZE(%struct.super_block* %61)
  %63 = mul i32 %60, %62
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %59, i64 %64
  %66 = bitcast i32* %65 to %struct.ext4_group_desc*
  store %struct.ext4_group_desc* %66, %struct.ext4_group_desc** %11, align 8
  %67 = load %struct.buffer_head**, %struct.buffer_head*** %7, align 8
  %68 = icmp ne %struct.buffer_head** %67, null
  br i1 %68, label %69, label %78

69:                                               ; preds = %49
  %70 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %12, align 8
  %71 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %70, i32 0, i32 0
  %72 = load %struct.buffer_head**, %struct.buffer_head*** %71, align 8
  %73 = load i32, i32* %8, align 4
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %72, i64 %74
  %76 = load %struct.buffer_head*, %struct.buffer_head** %75, align 8
  %77 = load %struct.buffer_head**, %struct.buffer_head*** %7, align 8
  store %struct.buffer_head* %76, %struct.buffer_head** %77, align 8
  br label %78

78:                                               ; preds = %69, %49
  %79 = load %struct.ext4_group_desc*, %struct.ext4_group_desc** %11, align 8
  store %struct.ext4_group_desc* %79, %struct.ext4_group_desc** %4, align 8
  br label %80

80:                                               ; preds = %78, %43, %20
  %81 = load %struct.ext4_group_desc*, %struct.ext4_group_desc** %4, align 8
  ret %struct.ext4_group_desc* %81
}

declare dso_local i32 @ext4_get_groups_count(%struct.super_block*) #1

declare dso_local %struct.ext4_sb_info* @EXT4_SB(%struct.super_block*) #1

declare dso_local i32 @ext4_error(%struct.super_block*, i8*, i32, i32, ...) #1

declare dso_local i32 @EXT4_DESC_PER_BLOCK_BITS(%struct.super_block*) #1

declare dso_local i32 @EXT4_DESC_PER_BLOCK(%struct.super_block*) #1

declare dso_local i32 @EXT4_DESC_SIZE(%struct.super_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
