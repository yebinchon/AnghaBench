; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_locking.c_btrfs_tree_lock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_locking.c_btrfs_tree_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.extent_buffer = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@current = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @btrfs_tree_lock(%struct.extent_buffer* %0) #0 {
  %2 = alloca %struct.extent_buffer*, align 8
  store %struct.extent_buffer* %0, %struct.extent_buffer** %2, align 8
  br label %3

3:                                                ; preds = %47, %29, %1
  %4 = load %struct.extent_buffer*, %struct.extent_buffer** %2, align 8
  %5 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %4, i32 0, i32 7
  %6 = load i32, i32* %5, align 4
  %7 = load %struct.extent_buffer*, %struct.extent_buffer** %2, align 8
  %8 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %7, i32 0, i32 6
  %9 = call i64 @atomic_read(i32* %8)
  %10 = icmp eq i64 %9, 0
  %11 = zext i1 %10 to i32
  %12 = call i32 @wait_event(i32 %6, i32 %11)
  %13 = load %struct.extent_buffer*, %struct.extent_buffer** %2, align 8
  %14 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.extent_buffer*, %struct.extent_buffer** %2, align 8
  %17 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %16, i32 0, i32 3
  %18 = call i64 @atomic_read(i32* %17)
  %19 = icmp eq i64 %18, 0
  %20 = zext i1 %19 to i32
  %21 = call i32 @wait_event(i32 %15, i32 %20)
  %22 = load %struct.extent_buffer*, %struct.extent_buffer** %2, align 8
  %23 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %22, i32 0, i32 5
  %24 = call i32 @write_lock(i32* %23)
  %25 = load %struct.extent_buffer*, %struct.extent_buffer** %2, align 8
  %26 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %25, i32 0, i32 6
  %27 = call i64 @atomic_read(i32* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %42

29:                                               ; preds = %3
  %30 = load %struct.extent_buffer*, %struct.extent_buffer** %2, align 8
  %31 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %30, i32 0, i32 5
  %32 = call i32 @write_unlock(i32* %31)
  %33 = load %struct.extent_buffer*, %struct.extent_buffer** %2, align 8
  %34 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %33, i32 0, i32 7
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.extent_buffer*, %struct.extent_buffer** %2, align 8
  %37 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %36, i32 0, i32 6
  %38 = call i64 @atomic_read(i32* %37)
  %39 = icmp eq i64 %38, 0
  %40 = zext i1 %39 to i32
  %41 = call i32 @wait_event(i32 %35, i32 %40)
  br label %3

42:                                               ; preds = %3
  %43 = load %struct.extent_buffer*, %struct.extent_buffer** %2, align 8
  %44 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %43, i32 0, i32 3
  %45 = call i64 @atomic_read(i32* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %60

47:                                               ; preds = %42
  %48 = load %struct.extent_buffer*, %struct.extent_buffer** %2, align 8
  %49 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %48, i32 0, i32 5
  %50 = call i32 @write_unlock(i32* %49)
  %51 = load %struct.extent_buffer*, %struct.extent_buffer** %2, align 8
  %52 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.extent_buffer*, %struct.extent_buffer** %2, align 8
  %55 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %54, i32 0, i32 3
  %56 = call i64 @atomic_read(i32* %55)
  %57 = icmp eq i64 %56, 0
  %58 = zext i1 %57 to i32
  %59 = call i32 @wait_event(i32 %53, i32 %58)
  br label %3

60:                                               ; preds = %42
  %61 = load %struct.extent_buffer*, %struct.extent_buffer** %2, align 8
  %62 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %61, i32 0, i32 2
  %63 = call i64 @atomic_read(i32* %62)
  %64 = call i32 @WARN_ON(i64 %63)
  %65 = load %struct.extent_buffer*, %struct.extent_buffer** %2, align 8
  %66 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %65, i32 0, i32 2
  %67 = call i32 @atomic_inc(i32* %66)
  %68 = load %struct.extent_buffer*, %struct.extent_buffer** %2, align 8
  %69 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %68, i32 0, i32 1
  %70 = call i32 @atomic_inc(i32* %69)
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.extent_buffer*, %struct.extent_buffer** %2, align 8
  %75 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 4
  ret void
}

declare dso_local i32 @wait_event(i32, i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @write_lock(i32*) #1

declare dso_local i32 @write_unlock(i32*) #1

declare dso_local i32 @WARN_ON(i64) #1

declare dso_local i32 @atomic_inc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
