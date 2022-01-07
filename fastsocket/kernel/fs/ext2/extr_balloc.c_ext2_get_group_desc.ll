; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext2/extr_balloc.c_ext2_get_group_desc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext2/extr_balloc.c_ext2_get_group_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ext2_group_desc = type { i32 }
%struct.super_block = type { i32 }
%struct.buffer_head = type { i64 }
%struct.ext2_sb_info = type { i32, %struct.buffer_head** }

@.str = private unnamed_addr constant [20 x i8] c"ext2_get_group_desc\00", align 1
@.str.1 = private unnamed_addr constant [67 x i8] c"block_group >= groups_count - block_group = %d, groups_count = %lu\00", align 1
@.str.2 = private unnamed_addr constant [77 x i8] c"Group descriptor not loaded - block_group = %d, group_desc = %lu, desc = %lu\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ext2_group_desc* @ext2_get_group_desc(%struct.super_block* %0, i32 %1, %struct.buffer_head** %2) #0 {
  %4 = alloca %struct.ext2_group_desc*, align 8
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.buffer_head**, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.ext2_group_desc*, align 8
  %11 = alloca %struct.ext2_sb_info*, align 8
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.buffer_head** %2, %struct.buffer_head*** %7, align 8
  %12 = load %struct.super_block*, %struct.super_block** %5, align 8
  %13 = call %struct.ext2_sb_info* @EXT2_SB(%struct.super_block* %12)
  store %struct.ext2_sb_info* %13, %struct.ext2_sb_info** %11, align 8
  %14 = load i32, i32* %6, align 4
  %15 = load %struct.ext2_sb_info*, %struct.ext2_sb_info** %11, align 8
  %16 = getelementptr inbounds %struct.ext2_sb_info, %struct.ext2_sb_info* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp uge i32 %14, %17
  br i1 %18, label %19, label %27

19:                                               ; preds = %3
  %20 = load %struct.super_block*, %struct.super_block** %5, align 8
  %21 = load i32, i32* %6, align 4
  %22 = load %struct.ext2_sb_info*, %struct.ext2_sb_info** %11, align 8
  %23 = getelementptr inbounds %struct.ext2_sb_info, %struct.ext2_sb_info* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = zext i32 %24 to i64
  %26 = call i32 (%struct.super_block*, i8*, i8*, i32, i64, ...) @ext2_error(%struct.super_block* %20, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.1, i64 0, i64 0), i32 %21, i64 %25)
  store %struct.ext2_group_desc* null, %struct.ext2_group_desc** %4, align 8
  br label %76

27:                                               ; preds = %3
  %28 = load i32, i32* %6, align 4
  %29 = load %struct.super_block*, %struct.super_block** %5, align 8
  %30 = call i32 @EXT2_DESC_PER_BLOCK_BITS(%struct.super_block* %29)
  %31 = lshr i32 %28, %30
  %32 = zext i32 %31 to i64
  store i64 %32, i64* %8, align 8
  %33 = load i32, i32* %6, align 4
  %34 = load %struct.super_block*, %struct.super_block** %5, align 8
  %35 = call i32 @EXT2_DESC_PER_BLOCK(%struct.super_block* %34)
  %36 = sub nsw i32 %35, 1
  %37 = and i32 %33, %36
  %38 = zext i32 %37 to i64
  store i64 %38, i64* %9, align 8
  %39 = load %struct.ext2_sb_info*, %struct.ext2_sb_info** %11, align 8
  %40 = getelementptr inbounds %struct.ext2_sb_info, %struct.ext2_sb_info* %39, i32 0, i32 1
  %41 = load %struct.buffer_head**, %struct.buffer_head*** %40, align 8
  %42 = load i64, i64* %8, align 8
  %43 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %41, i64 %42
  %44 = load %struct.buffer_head*, %struct.buffer_head** %43, align 8
  %45 = icmp ne %struct.buffer_head* %44, null
  br i1 %45, label %52, label %46

46:                                               ; preds = %27
  %47 = load %struct.super_block*, %struct.super_block** %5, align 8
  %48 = load i32, i32* %6, align 4
  %49 = load i64, i64* %8, align 8
  %50 = load i64, i64* %9, align 8
  %51 = call i32 (%struct.super_block*, i8*, i8*, i32, i64, ...) @ext2_error(%struct.super_block* %47, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.2, i64 0, i64 0), i32 %48, i64 %49, i64 %50)
  store %struct.ext2_group_desc* null, %struct.ext2_group_desc** %4, align 8
  br label %76

52:                                               ; preds = %27
  %53 = load %struct.ext2_sb_info*, %struct.ext2_sb_info** %11, align 8
  %54 = getelementptr inbounds %struct.ext2_sb_info, %struct.ext2_sb_info* %53, i32 0, i32 1
  %55 = load %struct.buffer_head**, %struct.buffer_head*** %54, align 8
  %56 = load i64, i64* %8, align 8
  %57 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %55, i64 %56
  %58 = load %struct.buffer_head*, %struct.buffer_head** %57, align 8
  %59 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = inttoptr i64 %60 to %struct.ext2_group_desc*
  store %struct.ext2_group_desc* %61, %struct.ext2_group_desc** %10, align 8
  %62 = load %struct.buffer_head**, %struct.buffer_head*** %7, align 8
  %63 = icmp ne %struct.buffer_head** %62, null
  br i1 %63, label %64, label %72

64:                                               ; preds = %52
  %65 = load %struct.ext2_sb_info*, %struct.ext2_sb_info** %11, align 8
  %66 = getelementptr inbounds %struct.ext2_sb_info, %struct.ext2_sb_info* %65, i32 0, i32 1
  %67 = load %struct.buffer_head**, %struct.buffer_head*** %66, align 8
  %68 = load i64, i64* %8, align 8
  %69 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %67, i64 %68
  %70 = load %struct.buffer_head*, %struct.buffer_head** %69, align 8
  %71 = load %struct.buffer_head**, %struct.buffer_head*** %7, align 8
  store %struct.buffer_head* %70, %struct.buffer_head** %71, align 8
  br label %72

72:                                               ; preds = %64, %52
  %73 = load %struct.ext2_group_desc*, %struct.ext2_group_desc** %10, align 8
  %74 = load i64, i64* %9, align 8
  %75 = getelementptr inbounds %struct.ext2_group_desc, %struct.ext2_group_desc* %73, i64 %74
  store %struct.ext2_group_desc* %75, %struct.ext2_group_desc** %4, align 8
  br label %76

76:                                               ; preds = %72, %46, %19
  %77 = load %struct.ext2_group_desc*, %struct.ext2_group_desc** %4, align 8
  ret %struct.ext2_group_desc* %77
}

declare dso_local %struct.ext2_sb_info* @EXT2_SB(%struct.super_block*) #1

declare dso_local i32 @ext2_error(%struct.super_block*, i8*, i8*, i32, i64, ...) #1

declare dso_local i32 @EXT2_DESC_PER_BLOCK_BITS(%struct.super_block*) #1

declare dso_local i32 @EXT2_DESC_PER_BLOCK(%struct.super_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
