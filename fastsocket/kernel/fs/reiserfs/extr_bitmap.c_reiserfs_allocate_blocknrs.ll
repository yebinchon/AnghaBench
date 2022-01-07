; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_bitmap.c_reiserfs_allocate_blocknrs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_bitmap.c_reiserfs_allocate_blocknrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i32, %struct.TYPE_9__*, i64, i32 }
%struct.TYPE_9__ = type { %struct.super_block* }
%struct.super_block = type { i32 }
%struct.TYPE_10__ = type { i32 }

@NO_DISK_SPACE = common dso_local global i32 0, align 4
@CARRY_ON = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @reiserfs_allocate_blocknrs(%struct.TYPE_8__* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.super_block*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load i32, i32* %8, align 4
  store i32 %13, i32* %10, align 4
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 2
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %18 = load %struct.super_block*, %struct.super_block** %17, align 8
  store %struct.super_block* %18, %struct.super_block** %12, align 8
  %19 = load %struct.super_block*, %struct.super_block** %12, align 8
  %20 = call i32 @SB_FREE_BLOCKS(%struct.super_block* %19)
  %21 = load %struct.super_block*, %struct.super_block** %12, align 8
  %22 = call %struct.TYPE_10__* @REISERFS_SB(%struct.super_block* %21)
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = sub nsw i32 %20, %24
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* %9, align 4
  %28 = sub nsw i32 %26, %27
  %29 = icmp slt i32 %25, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %4
  %31 = load i32, i32* @NO_DISK_SPACE, align 4
  store i32 %31, i32* %5, align 4
  br label %102

32:                                               ; preds = %4
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %58, label %37

37:                                               ; preds = %32
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 3
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %58

42:                                               ; preds = %37
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %44 = load i32*, i32** %7, align 8
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @use_preallocated_list_if_available(%struct.TYPE_8__* %43, i32* %44, i32 %45)
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %8, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %42
  %50 = load i32, i32* @CARRY_ON, align 4
  store i32 %50, i32* %5, align 4
  br label %102

51:                                               ; preds = %42
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* %8, align 4
  %54 = sub nsw i32 %52, %53
  %55 = load i32*, i32** %7, align 8
  %56 = sext i32 %54 to i64
  %57 = getelementptr inbounds i32, i32* %55, i64 %56
  store i32* %57, i32** %7, align 8
  br label %58

58:                                               ; preds = %51, %37, %32
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %60 = load i32, i32* %8, align 4
  %61 = call i32 @determine_search_start(%struct.TYPE_8__* %59, i32 %60)
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.super_block*, %struct.super_block** %12, align 8
  %66 = call i64 @SB_BLOCK_COUNT(%struct.super_block* %65)
  %67 = icmp sge i64 %64, %66
  br i1 %67, label %68, label %74

68:                                               ; preds = %58
  %69 = load %struct.super_block*, %struct.super_block** %12, align 8
  %70 = call i64 @SB_BLOCK_COUNT(%struct.super_block* %69)
  %71 = sub nsw i64 %70, 1
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  store i64 %71, i64* %73, align 8
  br label %74

74:                                               ; preds = %68, %58
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %76 = load i32*, i32** %7, align 8
  %77 = load i32, i32* %8, align 4
  %78 = call i32 @blocknrs_and_prealloc_arrays_from_search_start(%struct.TYPE_8__* %75, i32* %76, i32 %77)
  store i32 %78, i32* %11, align 4
  %79 = load i32, i32* %11, align 4
  %80 = load i32, i32* @CARRY_ON, align 4
  %81 = icmp ne i32 %79, %80
  br i1 %81, label %82, label %100

82:                                               ; preds = %74
  br label %83

83:                                               ; preds = %88, %82
  %84 = load i32, i32* %8, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %8, align 4
  %86 = load i32, i32* %10, align 4
  %87 = icmp slt i32 %84, %86
  br i1 %87, label %88, label %99

88:                                               ; preds = %83
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 2
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %90, align 8
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = load i32*, i32** %7, align 8
  %96 = getelementptr inbounds i32, i32* %95, i32 -1
  store i32* %96, i32** %7, align 8
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @reiserfs_free_block(%struct.TYPE_9__* %91, i32 %94, i32 %97, i32 1)
  br label %83

99:                                               ; preds = %83
  br label %100

100:                                              ; preds = %99, %74
  %101 = load i32, i32* %11, align 4
  store i32 %101, i32* %5, align 4
  br label %102

102:                                              ; preds = %100, %49, %30
  %103 = load i32, i32* %5, align 4
  ret i32 %103
}

declare dso_local i32 @SB_FREE_BLOCKS(%struct.super_block*) #1

declare dso_local %struct.TYPE_10__* @REISERFS_SB(%struct.super_block*) #1

declare dso_local i32 @use_preallocated_list_if_available(%struct.TYPE_8__*, i32*, i32) #1

declare dso_local i32 @determine_search_start(%struct.TYPE_8__*, i32) #1

declare dso_local i64 @SB_BLOCK_COUNT(%struct.super_block*) #1

declare dso_local i32 @blocknrs_and_prealloc_arrays_from_search_start(%struct.TYPE_8__*, i32*, i32) #1

declare dso_local i32 @reiserfs_free_block(%struct.TYPE_9__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
