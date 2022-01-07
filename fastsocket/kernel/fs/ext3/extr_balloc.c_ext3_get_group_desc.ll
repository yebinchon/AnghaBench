; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext3/extr_balloc.c_ext3_get_group_desc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext3/extr_balloc.c_ext3_get_group_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ext3_group_desc = type { i32 }
%struct.super_block = type { i32 }
%struct.buffer_head = type { i64 }
%struct.ext3_sb_info = type { i32, %struct.buffer_head** }

@.str = private unnamed_addr constant [20 x i8] c"ext3_get_group_desc\00", align 1
@.str.1 = private unnamed_addr constant [67 x i8] c"block_group >= groups_count - block_group = %d, groups_count = %lu\00", align 1
@.str.2 = private unnamed_addr constant [77 x i8] c"Group descriptor not loaded - block_group = %d, group_desc = %lu, desc = %lu\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ext3_group_desc* @ext3_get_group_desc(%struct.super_block* %0, i32 %1, %struct.buffer_head** %2) #0 {
  %4 = alloca %struct.ext3_group_desc*, align 8
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.buffer_head**, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.ext3_group_desc*, align 8
  %11 = alloca %struct.ext3_sb_info*, align 8
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.buffer_head** %2, %struct.buffer_head*** %7, align 8
  %12 = load %struct.super_block*, %struct.super_block** %5, align 8
  %13 = call %struct.ext3_sb_info* @EXT3_SB(%struct.super_block* %12)
  store %struct.ext3_sb_info* %13, %struct.ext3_sb_info** %11, align 8
  %14 = load i32, i32* %6, align 4
  %15 = load %struct.ext3_sb_info*, %struct.ext3_sb_info** %11, align 8
  %16 = getelementptr inbounds %struct.ext3_sb_info, %struct.ext3_sb_info* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp uge i32 %14, %17
  br i1 %18, label %19, label %27

19:                                               ; preds = %3
  %20 = load %struct.super_block*, %struct.super_block** %5, align 8
  %21 = load i32, i32* %6, align 4
  %22 = load %struct.ext3_sb_info*, %struct.ext3_sb_info** %11, align 8
  %23 = getelementptr inbounds %struct.ext3_sb_info, %struct.ext3_sb_info* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = zext i32 %24 to i64
  %26 = call i32 (%struct.super_block*, i8*, i8*, i32, i64, ...) @ext3_error(%struct.super_block* %20, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.1, i64 0, i64 0), i32 %21, i64 %25)
  store %struct.ext3_group_desc* null, %struct.ext3_group_desc** %4, align 8
  br label %77

27:                                               ; preds = %3
  %28 = call i32 (...) @smp_rmb()
  %29 = load i32, i32* %6, align 4
  %30 = load %struct.super_block*, %struct.super_block** %5, align 8
  %31 = call i32 @EXT3_DESC_PER_BLOCK_BITS(%struct.super_block* %30)
  %32 = lshr i32 %29, %31
  %33 = zext i32 %32 to i64
  store i64 %33, i64* %8, align 8
  %34 = load i32, i32* %6, align 4
  %35 = load %struct.super_block*, %struct.super_block** %5, align 8
  %36 = call i32 @EXT3_DESC_PER_BLOCK(%struct.super_block* %35)
  %37 = sub nsw i32 %36, 1
  %38 = and i32 %34, %37
  %39 = zext i32 %38 to i64
  store i64 %39, i64* %9, align 8
  %40 = load %struct.ext3_sb_info*, %struct.ext3_sb_info** %11, align 8
  %41 = getelementptr inbounds %struct.ext3_sb_info, %struct.ext3_sb_info* %40, i32 0, i32 1
  %42 = load %struct.buffer_head**, %struct.buffer_head*** %41, align 8
  %43 = load i64, i64* %8, align 8
  %44 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %42, i64 %43
  %45 = load %struct.buffer_head*, %struct.buffer_head** %44, align 8
  %46 = icmp ne %struct.buffer_head* %45, null
  br i1 %46, label %53, label %47

47:                                               ; preds = %27
  %48 = load %struct.super_block*, %struct.super_block** %5, align 8
  %49 = load i32, i32* %6, align 4
  %50 = load i64, i64* %8, align 8
  %51 = load i64, i64* %9, align 8
  %52 = call i32 (%struct.super_block*, i8*, i8*, i32, i64, ...) @ext3_error(%struct.super_block* %48, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.2, i64 0, i64 0), i32 %49, i64 %50, i64 %51)
  store %struct.ext3_group_desc* null, %struct.ext3_group_desc** %4, align 8
  br label %77

53:                                               ; preds = %27
  %54 = load %struct.ext3_sb_info*, %struct.ext3_sb_info** %11, align 8
  %55 = getelementptr inbounds %struct.ext3_sb_info, %struct.ext3_sb_info* %54, i32 0, i32 1
  %56 = load %struct.buffer_head**, %struct.buffer_head*** %55, align 8
  %57 = load i64, i64* %8, align 8
  %58 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %56, i64 %57
  %59 = load %struct.buffer_head*, %struct.buffer_head** %58, align 8
  %60 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = inttoptr i64 %61 to %struct.ext3_group_desc*
  store %struct.ext3_group_desc* %62, %struct.ext3_group_desc** %10, align 8
  %63 = load %struct.buffer_head**, %struct.buffer_head*** %7, align 8
  %64 = icmp ne %struct.buffer_head** %63, null
  br i1 %64, label %65, label %73

65:                                               ; preds = %53
  %66 = load %struct.ext3_sb_info*, %struct.ext3_sb_info** %11, align 8
  %67 = getelementptr inbounds %struct.ext3_sb_info, %struct.ext3_sb_info* %66, i32 0, i32 1
  %68 = load %struct.buffer_head**, %struct.buffer_head*** %67, align 8
  %69 = load i64, i64* %8, align 8
  %70 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %68, i64 %69
  %71 = load %struct.buffer_head*, %struct.buffer_head** %70, align 8
  %72 = load %struct.buffer_head**, %struct.buffer_head*** %7, align 8
  store %struct.buffer_head* %71, %struct.buffer_head** %72, align 8
  br label %73

73:                                               ; preds = %65, %53
  %74 = load %struct.ext3_group_desc*, %struct.ext3_group_desc** %10, align 8
  %75 = load i64, i64* %9, align 8
  %76 = getelementptr inbounds %struct.ext3_group_desc, %struct.ext3_group_desc* %74, i64 %75
  store %struct.ext3_group_desc* %76, %struct.ext3_group_desc** %4, align 8
  br label %77

77:                                               ; preds = %73, %47, %19
  %78 = load %struct.ext3_group_desc*, %struct.ext3_group_desc** %4, align 8
  ret %struct.ext3_group_desc* %78
}

declare dso_local %struct.ext3_sb_info* @EXT3_SB(%struct.super_block*) #1

declare dso_local i32 @ext3_error(%struct.super_block*, i8*, i8*, i32, i64, ...) #1

declare dso_local i32 @smp_rmb(...) #1

declare dso_local i32 @EXT3_DESC_PER_BLOCK_BITS(%struct.super_block*) #1

declare dso_local i32 @EXT3_DESC_PER_BLOCK(%struct.super_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
