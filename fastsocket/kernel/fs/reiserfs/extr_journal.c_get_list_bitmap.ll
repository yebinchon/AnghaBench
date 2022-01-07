; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_journal.c_get_list_bitmap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_journal.c_get_list_bitmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reiserfs_list_bitmap = type { %struct.reiserfs_journal_list* }
%struct.super_block = type { i32 }
%struct.reiserfs_journal_list = type { i32 }
%struct.reiserfs_journal = type { i32, %struct.reiserfs_list_bitmap* }

@JOURNAL_NUM_BITMAPS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.reiserfs_list_bitmap* (%struct.super_block*, %struct.reiserfs_journal_list*)* @get_list_bitmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.reiserfs_list_bitmap* @get_list_bitmap(%struct.super_block* %0, %struct.reiserfs_journal_list* %1) #0 {
  %3 = alloca %struct.reiserfs_list_bitmap*, align 8
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca %struct.reiserfs_journal_list*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.reiserfs_journal*, align 8
  %9 = alloca %struct.reiserfs_list_bitmap*, align 8
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store %struct.reiserfs_journal_list* %1, %struct.reiserfs_journal_list** %5, align 8
  %10 = load %struct.super_block*, %struct.super_block** %4, align 8
  %11 = call %struct.reiserfs_journal* @SB_JOURNAL(%struct.super_block* %10)
  store %struct.reiserfs_journal* %11, %struct.reiserfs_journal** %8, align 8
  store %struct.reiserfs_list_bitmap* null, %struct.reiserfs_list_bitmap** %9, align 8
  store i32 0, i32* %7, align 4
  br label %12

12:                                               ; preds = %66, %2
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @JOURNAL_NUM_BITMAPS, align 4
  %15 = mul nsw i32 %14, 3
  %16 = icmp slt i32 %13, %15
  br i1 %16, label %17, label %69

17:                                               ; preds = %12
  %18 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %8, align 8
  %19 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = add nsw i32 %21, 1
  %23 = load i32, i32* @JOURNAL_NUM_BITMAPS, align 4
  %24 = srem i32 %22, %23
  %25 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %8, align 8
  %26 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  %27 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %8, align 8
  %28 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %27, i32 0, i32 1
  %29 = load %struct.reiserfs_list_bitmap*, %struct.reiserfs_list_bitmap** %28, align 8
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.reiserfs_list_bitmap, %struct.reiserfs_list_bitmap* %29, i64 %31
  store %struct.reiserfs_list_bitmap* %32, %struct.reiserfs_list_bitmap** %9, align 8
  %33 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %8, align 8
  %34 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %33, i32 0, i32 1
  %35 = load %struct.reiserfs_list_bitmap*, %struct.reiserfs_list_bitmap** %34, align 8
  %36 = load i32, i32* %6, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.reiserfs_list_bitmap, %struct.reiserfs_list_bitmap* %35, i64 %37
  %39 = getelementptr inbounds %struct.reiserfs_list_bitmap, %struct.reiserfs_list_bitmap* %38, i32 0, i32 0
  %40 = load %struct.reiserfs_journal_list*, %struct.reiserfs_journal_list** %39, align 8
  %41 = icmp ne %struct.reiserfs_journal_list* %40, null
  br i1 %41, label %42, label %64

42:                                               ; preds = %17
  %43 = load %struct.super_block*, %struct.super_block** %4, align 8
  %44 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %8, align 8
  %45 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %44, i32 0, i32 1
  %46 = load %struct.reiserfs_list_bitmap*, %struct.reiserfs_list_bitmap** %45, align 8
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.reiserfs_list_bitmap, %struct.reiserfs_list_bitmap* %46, i64 %48
  %50 = getelementptr inbounds %struct.reiserfs_list_bitmap, %struct.reiserfs_list_bitmap* %49, i32 0, i32 0
  %51 = load %struct.reiserfs_journal_list*, %struct.reiserfs_journal_list** %50, align 8
  %52 = call i32 @flush_commit_list(%struct.super_block* %43, %struct.reiserfs_journal_list* %51, i32 1)
  %53 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %8, align 8
  %54 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %53, i32 0, i32 1
  %55 = load %struct.reiserfs_list_bitmap*, %struct.reiserfs_list_bitmap** %54, align 8
  %56 = load i32, i32* %6, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.reiserfs_list_bitmap, %struct.reiserfs_list_bitmap* %55, i64 %57
  %59 = getelementptr inbounds %struct.reiserfs_list_bitmap, %struct.reiserfs_list_bitmap* %58, i32 0, i32 0
  %60 = load %struct.reiserfs_journal_list*, %struct.reiserfs_journal_list** %59, align 8
  %61 = icmp ne %struct.reiserfs_journal_list* %60, null
  br i1 %61, label %63, label %62

62:                                               ; preds = %42
  br label %69

63:                                               ; preds = %42
  br label %65

64:                                               ; preds = %17
  br label %69

65:                                               ; preds = %63
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %7, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %7, align 4
  br label %12

69:                                               ; preds = %64, %62, %12
  %70 = load %struct.reiserfs_list_bitmap*, %struct.reiserfs_list_bitmap** %9, align 8
  %71 = getelementptr inbounds %struct.reiserfs_list_bitmap, %struct.reiserfs_list_bitmap* %70, i32 0, i32 0
  %72 = load %struct.reiserfs_journal_list*, %struct.reiserfs_journal_list** %71, align 8
  %73 = icmp ne %struct.reiserfs_journal_list* %72, null
  br i1 %73, label %74, label %75

74:                                               ; preds = %69
  store %struct.reiserfs_list_bitmap* null, %struct.reiserfs_list_bitmap** %3, align 8
  br label %80

75:                                               ; preds = %69
  %76 = load %struct.reiserfs_journal_list*, %struct.reiserfs_journal_list** %5, align 8
  %77 = load %struct.reiserfs_list_bitmap*, %struct.reiserfs_list_bitmap** %9, align 8
  %78 = getelementptr inbounds %struct.reiserfs_list_bitmap, %struct.reiserfs_list_bitmap* %77, i32 0, i32 0
  store %struct.reiserfs_journal_list* %76, %struct.reiserfs_journal_list** %78, align 8
  %79 = load %struct.reiserfs_list_bitmap*, %struct.reiserfs_list_bitmap** %9, align 8
  store %struct.reiserfs_list_bitmap* %79, %struct.reiserfs_list_bitmap** %3, align 8
  br label %80

80:                                               ; preds = %75, %74
  %81 = load %struct.reiserfs_list_bitmap*, %struct.reiserfs_list_bitmap** %3, align 8
  ret %struct.reiserfs_list_bitmap* %81
}

declare dso_local %struct.reiserfs_journal* @SB_JOURNAL(%struct.super_block*) #1

declare dso_local i32 @flush_commit_list(%struct.super_block*, %struct.reiserfs_journal_list*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
