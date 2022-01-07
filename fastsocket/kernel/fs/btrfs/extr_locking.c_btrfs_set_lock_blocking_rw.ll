; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_locking.c_btrfs_set_lock_blocking_rw.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_locking.c_btrfs_set_lock_blocking_rw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.extent_buffer = type { i64, i32, i32, i32, i32, i32, i64 }

@current = common dso_local global %struct.TYPE_2__* null, align 8
@BTRFS_WRITE_LOCK = common dso_local global i32 0, align 4
@BTRFS_READ_LOCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @btrfs_set_lock_blocking_rw(%struct.extent_buffer* %0, i32 %1) #0 {
  %3 = alloca %struct.extent_buffer*, align 8
  %4 = alloca i32, align 4
  store %struct.extent_buffer* %0, %struct.extent_buffer** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.extent_buffer*, %struct.extent_buffer** %3, align 8
  %6 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %5, i32 0, i32 6
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %33

9:                                                ; preds = %2
  %10 = load %struct.extent_buffer*, %struct.extent_buffer** %3, align 8
  %11 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %10, i32 0, i32 1
  %12 = call i32 @read_lock(i32* %11)
  %13 = load %struct.extent_buffer*, %struct.extent_buffer** %3, align 8
  %14 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %13, i32 0, i32 6
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %29

17:                                               ; preds = %9
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.extent_buffer*, %struct.extent_buffer** %3, align 8
  %22 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %20, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %17
  %26 = load %struct.extent_buffer*, %struct.extent_buffer** %3, align 8
  %27 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %26, i32 0, i32 1
  %28 = call i32 @read_unlock(i32* %27)
  br label %85

29:                                               ; preds = %17, %9
  %30 = load %struct.extent_buffer*, %struct.extent_buffer** %3, align 8
  %31 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %30, i32 0, i32 1
  %32 = call i32 @read_unlock(i32* %31)
  br label %33

33:                                               ; preds = %29, %2
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* @BTRFS_WRITE_LOCK, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %61

37:                                               ; preds = %33
  %38 = load %struct.extent_buffer*, %struct.extent_buffer** %3, align 8
  %39 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %38, i32 0, i32 4
  %40 = call i64 @atomic_read(i32* %39)
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %60

42:                                               ; preds = %37
  %43 = load %struct.extent_buffer*, %struct.extent_buffer** %3, align 8
  %44 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %43, i32 0, i32 5
  %45 = call i64 @atomic_read(i32* %44)
  %46 = icmp ne i64 %45, 1
  %47 = zext i1 %46 to i32
  %48 = call i32 @WARN_ON(i32 %47)
  %49 = load %struct.extent_buffer*, %struct.extent_buffer** %3, align 8
  %50 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %49, i32 0, i32 5
  %51 = call i32 @atomic_dec(i32* %50)
  %52 = load %struct.extent_buffer*, %struct.extent_buffer** %3, align 8
  %53 = call i32 @btrfs_assert_tree_locked(%struct.extent_buffer* %52)
  %54 = load %struct.extent_buffer*, %struct.extent_buffer** %3, align 8
  %55 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %54, i32 0, i32 4
  %56 = call i32 @atomic_inc(i32* %55)
  %57 = load %struct.extent_buffer*, %struct.extent_buffer** %3, align 8
  %58 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %57, i32 0, i32 1
  %59 = call i32 @write_unlock(i32* %58)
  br label %60

60:                                               ; preds = %42, %37
  br label %84

61:                                               ; preds = %33
  %62 = load i32, i32* %4, align 4
  %63 = load i32, i32* @BTRFS_READ_LOCK, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %83

65:                                               ; preds = %61
  %66 = load %struct.extent_buffer*, %struct.extent_buffer** %3, align 8
  %67 = call i32 @btrfs_assert_tree_read_locked(%struct.extent_buffer* %66)
  %68 = load %struct.extent_buffer*, %struct.extent_buffer** %3, align 8
  %69 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %68, i32 0, i32 3
  %70 = call i32 @atomic_inc(i32* %69)
  %71 = load %struct.extent_buffer*, %struct.extent_buffer** %3, align 8
  %72 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %71, i32 0, i32 2
  %73 = call i64 @atomic_read(i32* %72)
  %74 = icmp eq i64 %73, 0
  %75 = zext i1 %74 to i32
  %76 = call i32 @WARN_ON(i32 %75)
  %77 = load %struct.extent_buffer*, %struct.extent_buffer** %3, align 8
  %78 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %77, i32 0, i32 2
  %79 = call i32 @atomic_dec(i32* %78)
  %80 = load %struct.extent_buffer*, %struct.extent_buffer** %3, align 8
  %81 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %80, i32 0, i32 1
  %82 = call i32 @read_unlock(i32* %81)
  br label %83

83:                                               ; preds = %65, %61
  br label %84

84:                                               ; preds = %83, %60
  br label %85

85:                                               ; preds = %84, %25
  ret void
}

declare dso_local i32 @read_lock(i32*) #1

declare dso_local i32 @read_unlock(i32*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @btrfs_assert_tree_locked(%struct.extent_buffer*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @write_unlock(i32*) #1

declare dso_local i32 @btrfs_assert_tree_read_locked(%struct.extent_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
