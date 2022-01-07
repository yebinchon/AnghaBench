; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_locking.c_btrfs_tree_unlock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_locking.c_btrfs_tree_unlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.extent_buffer = type { i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @btrfs_tree_unlock(%struct.extent_buffer* %0) #0 {
  %2 = alloca %struct.extent_buffer*, align 8
  %3 = alloca i32, align 4
  store %struct.extent_buffer* %0, %struct.extent_buffer** %2, align 8
  %4 = load %struct.extent_buffer*, %struct.extent_buffer** %2, align 8
  %5 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %4, i32 0, i32 3
  %6 = call i32 @atomic_read(i32* %5)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = icmp sgt i32 %7, 1
  %9 = zext i1 %8 to i32
  %10 = call i32 @BUG_ON(i32 %9)
  %11 = load %struct.extent_buffer*, %struct.extent_buffer** %2, align 8
  %12 = call i32 @btrfs_assert_tree_locked(%struct.extent_buffer* %11)
  %13 = load %struct.extent_buffer*, %struct.extent_buffer** %2, align 8
  %14 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %13, i32 0, i32 4
  %15 = call i32 @atomic_dec(i32* %14)
  %16 = load i32, i32* %3, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %30

18:                                               ; preds = %1
  %19 = load %struct.extent_buffer*, %struct.extent_buffer** %2, align 8
  %20 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %19, i32 0, i32 1
  %21 = call i32 @atomic_read(i32* %20)
  %22 = call i32 @WARN_ON(i32 %21)
  %23 = load %struct.extent_buffer*, %struct.extent_buffer** %2, align 8
  %24 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %23, i32 0, i32 3
  %25 = call i32 @atomic_dec(i32* %24)
  %26 = call i32 (...) @smp_wmb()
  %27 = load %struct.extent_buffer*, %struct.extent_buffer** %2, align 8
  %28 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %27, i32 0, i32 2
  %29 = call i32 @wake_up(i32* %28)
  br label %43

30:                                               ; preds = %1
  %31 = load %struct.extent_buffer*, %struct.extent_buffer** %2, align 8
  %32 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %31, i32 0, i32 1
  %33 = call i32 @atomic_read(i32* %32)
  %34 = icmp ne i32 %33, 1
  %35 = zext i1 %34 to i32
  %36 = call i32 @WARN_ON(i32 %35)
  %37 = load %struct.extent_buffer*, %struct.extent_buffer** %2, align 8
  %38 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %37, i32 0, i32 1
  %39 = call i32 @atomic_dec(i32* %38)
  %40 = load %struct.extent_buffer*, %struct.extent_buffer** %2, align 8
  %41 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %40, i32 0, i32 0
  %42 = call i32 @write_unlock(i32* %41)
  br label %43

43:                                               ; preds = %30, %18
  ret void
}

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @btrfs_assert_tree_locked(%struct.extent_buffer*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @smp_wmb(...) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @write_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
