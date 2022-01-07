; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_bitmap.c_reiserfs_cache_bitmap_metadata.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_bitmap.c_reiserfs_cache_bitmap_metadata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.buffer_head = type { i64, i32, i64 }
%struct.reiserfs_bitmap_info = type { i64 }

@.str = private unnamed_addr constant [14 x i8] c"reiserfs-2025\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"bitmap block %lu is corrupted: first bit must be 1\00", align 1
@BITS_PER_LONG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @reiserfs_cache_bitmap_metadata(%struct.super_block* %0, %struct.buffer_head* %1, %struct.reiserfs_bitmap_info* %2) #0 {
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca %struct.buffer_head*, align 8
  %6 = alloca %struct.reiserfs_bitmap_info*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %5, align 8
  store %struct.reiserfs_bitmap_info* %2, %struct.reiserfs_bitmap_info** %6, align 8
  %9 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %10 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %13 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = add nsw i64 %11, %14
  %16 = inttoptr i64 %15 to i64*
  store i64* %16, i64** %7, align 8
  %17 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %18 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to i64*
  %21 = call i32 @reiserfs_test_le_bit(i32 0, i64* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %3
  %24 = load %struct.super_block*, %struct.super_block** %4, align 8
  %25 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %26 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @reiserfs_error(%struct.super_block* %24, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %27)
  br label %29

29:                                               ; preds = %23, %3
  %30 = load %struct.reiserfs_bitmap_info*, %struct.reiserfs_bitmap_info** %6, align 8
  %31 = getelementptr inbounds %struct.reiserfs_bitmap_info, %struct.reiserfs_bitmap_info* %30, i32 0, i32 0
  store i64 0, i64* %31, align 8
  br label %32

32:                                               ; preds = %77, %29
  %33 = load i64*, i64** %7, align 8
  %34 = getelementptr inbounds i64, i64* %33, i32 -1
  store i64* %34, i64** %7, align 8
  %35 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %36 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = inttoptr i64 %37 to i64*
  %39 = icmp uge i64* %34, %38
  br i1 %39, label %40, label %78

40:                                               ; preds = %32
  %41 = load i64*, i64** %7, align 8
  %42 = load i64, i64* %41, align 8
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %40
  %45 = load i32, i32* @BITS_PER_LONG, align 4
  %46 = sext i32 %45 to i64
  %47 = load %struct.reiserfs_bitmap_info*, %struct.reiserfs_bitmap_info** %6, align 8
  %48 = getelementptr inbounds %struct.reiserfs_bitmap_info, %struct.reiserfs_bitmap_info* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = add nsw i64 %49, %46
  store i64 %50, i64* %48, align 8
  br label %77

51:                                               ; preds = %40
  %52 = load i64*, i64** %7, align 8
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, -1
  br i1 %54, label %55, label %76

55:                                               ; preds = %51
  %56 = load i32, i32* @BITS_PER_LONG, align 4
  %57 = sub nsw i32 %56, 1
  store i32 %57, i32* %8, align 4
  br label %58

58:                                               ; preds = %72, %55
  %59 = load i32, i32* %8, align 4
  %60 = icmp sge i32 %59, 0
  br i1 %60, label %61, label %75

61:                                               ; preds = %58
  %62 = load i32, i32* %8, align 4
  %63 = load i64*, i64** %7, align 8
  %64 = call i32 @reiserfs_test_le_bit(i32 %62, i64* %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %71, label %66

66:                                               ; preds = %61
  %67 = load %struct.reiserfs_bitmap_info*, %struct.reiserfs_bitmap_info** %6, align 8
  %68 = getelementptr inbounds %struct.reiserfs_bitmap_info, %struct.reiserfs_bitmap_info* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = add nsw i64 %69, 1
  store i64 %70, i64* %68, align 8
  br label %71

71:                                               ; preds = %66, %61
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %8, align 4
  %74 = add nsw i32 %73, -1
  store i32 %74, i32* %8, align 4
  br label %58

75:                                               ; preds = %58
  br label %76

76:                                               ; preds = %75, %51
  br label %77

77:                                               ; preds = %76, %44
  br label %32

78:                                               ; preds = %32
  ret void
}

declare dso_local i32 @reiserfs_test_le_bit(i32, i64*) #1

declare dso_local i32 @reiserfs_error(%struct.super_block*, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
