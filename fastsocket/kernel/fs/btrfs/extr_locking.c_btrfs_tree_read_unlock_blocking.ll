; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_locking.c_btrfs_tree_read_unlock_blocking.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_locking.c_btrfs_tree_read_unlock_blocking.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.extent_buffer = type { i64, i32, i32, i32, i32, i64 }

@current = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @btrfs_tree_read_unlock_blocking(%struct.extent_buffer* %0) #0 {
  %2 = alloca %struct.extent_buffer*, align 8
  store %struct.extent_buffer* %0, %struct.extent_buffer** %2, align 8
  %3 = load %struct.extent_buffer*, %struct.extent_buffer** %2, align 8
  %4 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %3, i32 0, i32 5
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %33

7:                                                ; preds = %1
  %8 = load %struct.extent_buffer*, %struct.extent_buffer** %2, align 8
  %9 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %8, i32 0, i32 4
  %10 = call i32 @read_lock(i32* %9)
  %11 = load %struct.extent_buffer*, %struct.extent_buffer** %2, align 8
  %12 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %11, i32 0, i32 5
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %29

15:                                               ; preds = %7
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.extent_buffer*, %struct.extent_buffer** %2, align 8
  %20 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %18, %21
  br i1 %22, label %23, label %29

23:                                               ; preds = %15
  %24 = load %struct.extent_buffer*, %struct.extent_buffer** %2, align 8
  %25 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %24, i32 0, i32 5
  store i64 0, i64* %25, align 8
  %26 = load %struct.extent_buffer*, %struct.extent_buffer** %2, align 8
  %27 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %26, i32 0, i32 4
  %28 = call i32 @read_unlock(i32* %27)
  br label %54

29:                                               ; preds = %15, %7
  %30 = load %struct.extent_buffer*, %struct.extent_buffer** %2, align 8
  %31 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %30, i32 0, i32 4
  %32 = call i32 @read_unlock(i32* %31)
  br label %33

33:                                               ; preds = %29, %1
  %34 = load %struct.extent_buffer*, %struct.extent_buffer** %2, align 8
  %35 = call i32 @btrfs_assert_tree_read_locked(%struct.extent_buffer* %34)
  %36 = load %struct.extent_buffer*, %struct.extent_buffer** %2, align 8
  %37 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %36, i32 0, i32 3
  %38 = call i64 @atomic_read(i32* %37)
  %39 = icmp eq i64 %38, 0
  %40 = zext i1 %39 to i32
  %41 = call i32 @WARN_ON(i32 %40)
  %42 = load %struct.extent_buffer*, %struct.extent_buffer** %2, align 8
  %43 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %42, i32 0, i32 3
  %44 = call i64 @atomic_dec_and_test(i32* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %33
  %47 = load %struct.extent_buffer*, %struct.extent_buffer** %2, align 8
  %48 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %47, i32 0, i32 2
  %49 = call i32 @wake_up(i32* %48)
  br label %50

50:                                               ; preds = %46, %33
  %51 = load %struct.extent_buffer*, %struct.extent_buffer** %2, align 8
  %52 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %51, i32 0, i32 1
  %53 = call i32 @atomic_dec(i32* %52)
  br label %54

54:                                               ; preds = %50, %23
  ret void
}

declare dso_local i32 @read_lock(i32*) #1

declare dso_local i32 @read_unlock(i32*) #1

declare dso_local i32 @btrfs_assert_tree_read_locked(%struct.extent_buffer*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i64 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @atomic_dec(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
