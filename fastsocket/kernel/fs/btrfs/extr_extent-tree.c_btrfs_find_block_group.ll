; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_extent-tree.c_btrfs_find_block_group.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_extent-tree.c_btrfs_find_block_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_root = type { i32 }
%struct.btrfs_block_group_cache = type { i64, i64, i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i64, i64 }

@BTRFS_BLOCK_GROUP_METADATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @btrfs_find_block_group(%struct.btrfs_root* %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.btrfs_root*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.btrfs_block_group_cache*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.btrfs_root* %0, %struct.btrfs_root** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %16 = load i64, i64* %7, align 8
  %17 = load i64, i64* %6, align 8
  %18 = call i64 @max(i64 %16, i64 %17)
  store i64 %18, i64* %11, align 8
  store i64 0, i64* %12, align 8
  store i32 0, i32* %13, align 4
  store i32 9, i32* %14, align 4
  store i32 0, i32* %15, align 4
  br label %19

19:                                               ; preds = %103, %95, %4
  br label %20

20:                                               ; preds = %19, %85
  %21 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %22 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i64, i64* %11, align 8
  %25 = call %struct.btrfs_block_group_cache* @btrfs_lookup_first_block_group(i32 %23, i64 %24)
  store %struct.btrfs_block_group_cache* %25, %struct.btrfs_block_group_cache** %9, align 8
  %26 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %9, align 8
  %27 = icmp ne %struct.btrfs_block_group_cache* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %20
  br label %92

29:                                               ; preds = %20
  %30 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %9, align 8
  %31 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %30, i32 0, i32 2
  %32 = call i32 @spin_lock(i32* %31)
  %33 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %9, align 8
  %34 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %33, i32 0, i32 3
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %9, align 8
  %38 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %37, i32 0, i32 3
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = add nsw i64 %36, %40
  store i64 %41, i64* %11, align 8
  %42 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %9, align 8
  %43 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %42, i32 0, i32 5
  %44 = call i64 @btrfs_block_group_used(i32* %43)
  store i64 %44, i64* %10, align 8
  %45 = load i32, i32* %13, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %52, label %47

47:                                               ; preds = %29
  %48 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %9, align 8
  %49 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 8
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %85, label %52

52:                                               ; preds = %47, %29
  %53 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %9, align 8
  %54 = load i32, i32* @BTRFS_BLOCK_GROUP_METADATA, align 4
  %55 = call i64 @block_group_bits(%struct.btrfs_block_group_cache* %53, i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %85

57:                                               ; preds = %52
  %58 = load i64, i64* %10, align 8
  %59 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %9, align 8
  %60 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = add nsw i64 %58, %61
  %63 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %9, align 8
  %64 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = add nsw i64 %62, %65
  %67 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %9, align 8
  %68 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %67, i32 0, i32 3
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load i32, i32* %14, align 4
  %72 = call i64 @div_factor(i64 %70, i32 %71)
  %73 = icmp slt i64 %66, %72
  br i1 %73, label %74, label %84

74:                                               ; preds = %57
  %75 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %9, align 8
  %76 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %75, i32 0, i32 3
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  store i64 %78, i64* %12, align 8
  %79 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %9, align 8
  %80 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %79, i32 0, i32 2
  %81 = call i32 @spin_unlock(i32* %80)
  %82 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %9, align 8
  %83 = call i32 @btrfs_put_block_group(%struct.btrfs_block_group_cache* %82)
  br label %106

84:                                               ; preds = %57
  br label %85

85:                                               ; preds = %84, %52, %47
  %86 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %9, align 8
  %87 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %86, i32 0, i32 2
  %88 = call i32 @spin_unlock(i32* %87)
  %89 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %9, align 8
  %90 = call i32 @btrfs_put_block_group(%struct.btrfs_block_group_cache* %89)
  %91 = call i32 (...) @cond_resched()
  br label %20

92:                                               ; preds = %28
  %93 = load i32, i32* %15, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %97, label %95

95:                                               ; preds = %92
  %96 = load i64, i64* %6, align 8
  store i64 %96, i64* %11, align 8
  store i32 1, i32* %15, align 4
  br label %19

97:                                               ; preds = %92
  %98 = load i32, i32* %13, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %105, label %100

100:                                              ; preds = %97
  %101 = load i32, i32* %14, align 4
  %102 = icmp slt i32 %101, 10
  br i1 %102, label %103, label %105

103:                                              ; preds = %100
  %104 = load i64, i64* %6, align 8
  store i64 %104, i64* %11, align 8
  store i32 1, i32* %13, align 4
  store i32 10, i32* %14, align 4
  br label %19

105:                                              ; preds = %100, %97
  br label %106

106:                                              ; preds = %105, %74
  %107 = load i64, i64* %12, align 8
  ret i64 %107
}

declare dso_local i64 @max(i64, i64) #1

declare dso_local %struct.btrfs_block_group_cache* @btrfs_lookup_first_block_group(i32, i64) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @btrfs_block_group_used(i32*) #1

declare dso_local i64 @block_group_bits(%struct.btrfs_block_group_cache*, i32) #1

declare dso_local i64 @div_factor(i64, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @btrfs_put_block_group(%struct.btrfs_block_group_cache*) #1

declare dso_local i32 @cond_resched(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
