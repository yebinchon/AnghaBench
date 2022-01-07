; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_locking.c_btrfs_tree_read_lock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_locking.c_btrfs_tree_read_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.extent_buffer = type { i64, i32, i32, i32, i32, i32, i32 }

@current = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @btrfs_tree_read_lock(%struct.extent_buffer* %0) #0 {
  %2 = alloca %struct.extent_buffer*, align 8
  store %struct.extent_buffer* %0, %struct.extent_buffer** %2, align 8
  br label %3

3:                                                ; preds = %49, %1
  %4 = load %struct.extent_buffer*, %struct.extent_buffer** %2, align 8
  %5 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %4, i32 0, i32 4
  %6 = call i32 @read_lock(i32* %5)
  %7 = load %struct.extent_buffer*, %struct.extent_buffer** %2, align 8
  %8 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %7, i32 0, i32 5
  %9 = call i64 @atomic_read(i32* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %29

11:                                               ; preds = %3
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.extent_buffer*, %struct.extent_buffer** %2, align 8
  %16 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %14, %17
  br i1 %18, label %19, label %29

19:                                               ; preds = %11
  %20 = load %struct.extent_buffer*, %struct.extent_buffer** %2, align 8
  %21 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @BUG_ON(i32 %22)
  %24 = load %struct.extent_buffer*, %struct.extent_buffer** %2, align 8
  %25 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %24, i32 0, i32 1
  store i32 1, i32* %25, align 8
  %26 = load %struct.extent_buffer*, %struct.extent_buffer** %2, align 8
  %27 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %26, i32 0, i32 4
  %28 = call i32 @read_unlock(i32* %27)
  br label %60

29:                                               ; preds = %11, %3
  %30 = load %struct.extent_buffer*, %struct.extent_buffer** %2, align 8
  %31 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %30, i32 0, i32 4
  %32 = call i32 @read_unlock(i32* %31)
  %33 = load %struct.extent_buffer*, %struct.extent_buffer** %2, align 8
  %34 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %33, i32 0, i32 6
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.extent_buffer*, %struct.extent_buffer** %2, align 8
  %37 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %36, i32 0, i32 5
  %38 = call i64 @atomic_read(i32* %37)
  %39 = icmp eq i64 %38, 0
  %40 = zext i1 %39 to i32
  %41 = call i32 @wait_event(i32 %35, i32 %40)
  %42 = load %struct.extent_buffer*, %struct.extent_buffer** %2, align 8
  %43 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %42, i32 0, i32 4
  %44 = call i32 @read_lock(i32* %43)
  %45 = load %struct.extent_buffer*, %struct.extent_buffer** %2, align 8
  %46 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %45, i32 0, i32 5
  %47 = call i64 @atomic_read(i32* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %29
  %50 = load %struct.extent_buffer*, %struct.extent_buffer** %2, align 8
  %51 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %50, i32 0, i32 4
  %52 = call i32 @read_unlock(i32* %51)
  br label %3

53:                                               ; preds = %29
  %54 = load %struct.extent_buffer*, %struct.extent_buffer** %2, align 8
  %55 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %54, i32 0, i32 3
  %56 = call i32 @atomic_inc(i32* %55)
  %57 = load %struct.extent_buffer*, %struct.extent_buffer** %2, align 8
  %58 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %57, i32 0, i32 2
  %59 = call i32 @atomic_inc(i32* %58)
  br label %60

60:                                               ; preds = %53, %19
  ret void
}

declare dso_local i32 @read_lock(i32*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @read_unlock(i32*) #1

declare dso_local i32 @wait_event(i32, i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
