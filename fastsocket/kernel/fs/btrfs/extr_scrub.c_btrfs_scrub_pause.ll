; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_scrub.c_btrfs_scrub_pause.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_scrub.c_btrfs_scrub_pause.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_root = type { %struct.btrfs_fs_info* }
%struct.btrfs_fs_info = type { i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @btrfs_scrub_pause(%struct.btrfs_root* %0) #0 {
  %2 = alloca %struct.btrfs_root*, align 8
  %3 = alloca %struct.btrfs_fs_info*, align 8
  store %struct.btrfs_root* %0, %struct.btrfs_root** %2, align 8
  %4 = load %struct.btrfs_root*, %struct.btrfs_root** %2, align 8
  %5 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %4, i32 0, i32 0
  %6 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %5, align 8
  store %struct.btrfs_fs_info* %6, %struct.btrfs_fs_info** %3, align 8
  %7 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %3, align 8
  %8 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %7, i32 0, i32 0
  %9 = call i32 @mutex_lock(i32* %8)
  %10 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %3, align 8
  %11 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %10, i32 0, i32 4
  %12 = call i32 @atomic_inc(i32* %11)
  br label %13

13:                                               ; preds = %21, %1
  %14 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %3, align 8
  %15 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %14, i32 0, i32 2
  %16 = call i64 @atomic_read(i32* %15)
  %17 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %3, align 8
  %18 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %17, i32 0, i32 1
  %19 = call i64 @atomic_read(i32* %18)
  %20 = icmp ne i64 %16, %19
  br i1 %20, label %21, label %40

21:                                               ; preds = %13
  %22 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %3, align 8
  %23 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %22, i32 0, i32 0
  %24 = call i32 @mutex_unlock(i32* %23)
  %25 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %3, align 8
  %26 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %3, align 8
  %29 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %28, i32 0, i32 2
  %30 = call i64 @atomic_read(i32* %29)
  %31 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %3, align 8
  %32 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %31, i32 0, i32 1
  %33 = call i64 @atomic_read(i32* %32)
  %34 = icmp eq i64 %30, %33
  %35 = zext i1 %34 to i32
  %36 = call i32 @wait_event(i32 %27, i32 %35)
  %37 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %3, align 8
  %38 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %37, i32 0, i32 0
  %39 = call i32 @mutex_lock(i32* %38)
  br label %13

40:                                               ; preds = %13
  %41 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %3, align 8
  %42 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %41, i32 0, i32 0
  %43 = call i32 @mutex_unlock(i32* %42)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @wait_event(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
