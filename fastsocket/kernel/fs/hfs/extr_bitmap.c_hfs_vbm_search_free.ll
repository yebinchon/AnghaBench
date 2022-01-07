; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/hfs/extr_bitmap.c_hfs_vbm_search_free.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/hfs/extr_bitmap.c_hfs_vbm_search_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.TYPE_2__ = type { i64, i32, i32, i8* }

@DBG_BITMAP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"alloc_bits: %u,%u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @hfs_vbm_search_free(%struct.super_block* %0, i64 %1, i64* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  %10 = load i64*, i64** %7, align 8
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  store i64 0, i64* %4, align 8
  br label %78

14:                                               ; preds = %3
  %15 = load %struct.super_block*, %struct.super_block** %5, align 8
  %16 = call %struct.TYPE_2__* @HFS_SB(%struct.super_block* %15)
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = call i32 @mutex_lock(i32* %17)
  %19 = load %struct.super_block*, %struct.super_block** %5, align 8
  %20 = call %struct.TYPE_2__* @HFS_SB(%struct.super_block* %19)
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 3
  %22 = load i8*, i8** %21, align 8
  store i8* %22, i8** %8, align 8
  %23 = load i8*, i8** %8, align 8
  %24 = load %struct.super_block*, %struct.super_block** %5, align 8
  %25 = call %struct.TYPE_2__* @HFS_SB(%struct.super_block* %24)
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* %6, align 8
  %29 = load i64*, i64** %7, align 8
  %30 = call i64 @hfs_find_set_zero_bits(i8* %23, i64 %27, i64 %28, i64* %29)
  store i64 %30, i64* %9, align 8
  %31 = load i64, i64* %9, align 8
  %32 = load %struct.super_block*, %struct.super_block** %5, align 8
  %33 = call %struct.TYPE_2__* @HFS_SB(%struct.super_block* %32)
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp sge i64 %31, %35
  br i1 %36, label %37, label %55

37:                                               ; preds = %14
  %38 = load i64, i64* %6, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %37
  %41 = load i8*, i8** %8, align 8
  %42 = load i64, i64* %6, align 8
  %43 = load i64*, i64** %7, align 8
  %44 = call i64 @hfs_find_set_zero_bits(i8* %41, i64 %42, i64 0, i64* %43)
  store i64 %44, i64* %9, align 8
  br label %45

45:                                               ; preds = %40, %37
  %46 = load i64, i64* %9, align 8
  %47 = load %struct.super_block*, %struct.super_block** %5, align 8
  %48 = call %struct.TYPE_2__* @HFS_SB(%struct.super_block* %47)
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp sge i64 %46, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %45
  store i64 0, i64* %9, align 8
  %53 = load i64*, i64** %7, align 8
  store i64 0, i64* %53, align 8
  br label %72

54:                                               ; preds = %45
  br label %55

55:                                               ; preds = %54, %14
  %56 = load i32, i32* @DBG_BITMAP, align 4
  %57 = load i64, i64* %9, align 8
  %58 = load i64*, i64** %7, align 8
  %59 = load i64, i64* %58, align 8
  %60 = call i32 @dprint(i32 %56, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i64 %57, i64 %59)
  %61 = load i64*, i64** %7, align 8
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.super_block*, %struct.super_block** %5, align 8
  %64 = call %struct.TYPE_2__* @HFS_SB(%struct.super_block* %63)
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = sext i32 %66 to i64
  %68 = sub nsw i64 %67, %62
  %69 = trunc i64 %68 to i32
  store i32 %69, i32* %65, align 4
  %70 = load %struct.super_block*, %struct.super_block** %5, align 8
  %71 = call i32 @hfs_bitmap_dirty(%struct.super_block* %70)
  br label %72

72:                                               ; preds = %55, %52
  %73 = load %struct.super_block*, %struct.super_block** %5, align 8
  %74 = call %struct.TYPE_2__* @HFS_SB(%struct.super_block* %73)
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 1
  %76 = call i32 @mutex_unlock(i32* %75)
  %77 = load i64, i64* %9, align 8
  store i64 %77, i64* %4, align 8
  br label %78

78:                                               ; preds = %72, %13
  %79 = load i64, i64* %4, align 8
  ret i64 %79
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.TYPE_2__* @HFS_SB(%struct.super_block*) #1

declare dso_local i64 @hfs_find_set_zero_bits(i8*, i64, i64, i64*) #1

declare dso_local i32 @dprint(i32, i8*, i64, i64) #1

declare dso_local i32 @hfs_bitmap_dirty(%struct.super_block*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
