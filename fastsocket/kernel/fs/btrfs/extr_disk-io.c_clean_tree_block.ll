; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_disk-io.c_clean_tree_block.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_disk-io.c_clean_tree_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_trans_handle = type { i32 }
%struct.btrfs_root = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.extent_buffer = type { i64, i32 }

@EXTENT_BUFFER_DIRTY = common dso_local global i32 0, align 4
@EOVERFLOW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"Can't clear %lu bytes from  dirty_mdatadata_bytes (%lu)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @clean_tree_block(%struct.btrfs_trans_handle* %0, %struct.btrfs_root* %1, %struct.extent_buffer* %2) #0 {
  %4 = alloca %struct.btrfs_trans_handle*, align 8
  %5 = alloca %struct.btrfs_root*, align 8
  %6 = alloca %struct.extent_buffer*, align 8
  store %struct.btrfs_trans_handle* %0, %struct.btrfs_trans_handle** %4, align 8
  store %struct.btrfs_root* %1, %struct.btrfs_root** %5, align 8
  store %struct.extent_buffer* %2, %struct.extent_buffer** %6, align 8
  %7 = load %struct.extent_buffer*, %struct.extent_buffer** %6, align 8
  %8 = call i64 @btrfs_header_generation(%struct.extent_buffer* %7)
  %9 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %10 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %9, i32 0, i32 0
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 2
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp eq i64 %8, %15
  br i1 %16, label %17, label %81

17:                                               ; preds = %3
  %18 = load %struct.extent_buffer*, %struct.extent_buffer** %6, align 8
  %19 = call i32 @btrfs_assert_tree_locked(%struct.extent_buffer* %18)
  %20 = load i32, i32* @EXTENT_BUFFER_DIRTY, align 4
  %21 = load %struct.extent_buffer*, %struct.extent_buffer** %6, align 8
  %22 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %21, i32 0, i32 1
  %23 = call i64 @test_and_clear_bit(i32 %20, i32* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %76

25:                                               ; preds = %17
  %26 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %27 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  %30 = call i32 @spin_lock(i32* %29)
  %31 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %32 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %31, i32 0, i32 0
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.extent_buffer*, %struct.extent_buffer** %6, align 8
  %37 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp sge i64 %35, %38
  br i1 %39, label %40, label %50

40:                                               ; preds = %25
  %41 = load %struct.extent_buffer*, %struct.extent_buffer** %6, align 8
  %42 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %45 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %44, i32 0, i32 0
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = sub nsw i64 %48, %43
  store i64 %49, i64* %47, align 8
  br label %70

50:                                               ; preds = %25
  %51 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %52 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %51, i32 0, i32 0
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 1
  %55 = call i32 @spin_unlock(i32* %54)
  %56 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %57 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %56, i32 0, i32 0
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = load i32, i32* @EOVERFLOW, align 4
  %60 = sub nsw i32 0, %59
  %61 = load %struct.extent_buffer*, %struct.extent_buffer** %6, align 8
  %62 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %65 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %64, i32 0, i32 0
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = call i32 @btrfs_panic(%struct.TYPE_4__* %58, i32 %60, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i64 %63, i64 %68)
  br label %70

70:                                               ; preds = %50, %40
  %71 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %72 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %71, i32 0, i32 0
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 1
  %75 = call i32 @spin_unlock(i32* %74)
  br label %76

76:                                               ; preds = %70, %17
  %77 = load %struct.extent_buffer*, %struct.extent_buffer** %6, align 8
  %78 = call i32 @btrfs_set_lock_blocking(%struct.extent_buffer* %77)
  %79 = load %struct.extent_buffer*, %struct.extent_buffer** %6, align 8
  %80 = call i32 @clear_extent_buffer_dirty(%struct.extent_buffer* %79)
  br label %81

81:                                               ; preds = %76, %3
  ret void
}

declare dso_local i64 @btrfs_header_generation(%struct.extent_buffer*) #1

declare dso_local i32 @btrfs_assert_tree_locked(%struct.extent_buffer*) #1

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @btrfs_panic(%struct.TYPE_4__*, i32, i8*, i64, i64) #1

declare dso_local i32 @btrfs_set_lock_blocking(%struct.extent_buffer*) #1

declare dso_local i32 @clear_extent_buffer_dirty(%struct.extent_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
