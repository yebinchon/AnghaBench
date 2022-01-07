; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_scrub.c___btrfs_scrub_cancel.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_scrub.c___btrfs_scrub_cancel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_fs_info = type { i32, i32, i32, i32 }

@ENOTCONN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__btrfs_scrub_cancel(%struct.btrfs_fs_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.btrfs_fs_info*, align 8
  store %struct.btrfs_fs_info* %0, %struct.btrfs_fs_info** %3, align 8
  %4 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %3, align 8
  %5 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %4, i32 0, i32 0
  %6 = call i32 @mutex_lock(i32* %5)
  %7 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %3, align 8
  %8 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %7, i32 0, i32 2
  %9 = call i64 @atomic_read(i32* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %17, label %11

11:                                               ; preds = %1
  %12 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %3, align 8
  %13 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %12, i32 0, i32 0
  %14 = call i32 @mutex_unlock(i32* %13)
  %15 = load i32, i32* @ENOTCONN, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %49

17:                                               ; preds = %1
  %18 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %3, align 8
  %19 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %18, i32 0, i32 1
  %20 = call i32 @atomic_inc(i32* %19)
  br label %21

21:                                               ; preds = %26, %17
  %22 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %3, align 8
  %23 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %22, i32 0, i32 2
  %24 = call i64 @atomic_read(i32* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %42

26:                                               ; preds = %21
  %27 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %3, align 8
  %28 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %27, i32 0, i32 0
  %29 = call i32 @mutex_unlock(i32* %28)
  %30 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %3, align 8
  %31 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %3, align 8
  %34 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %33, i32 0, i32 2
  %35 = call i64 @atomic_read(i32* %34)
  %36 = icmp eq i64 %35, 0
  %37 = zext i1 %36 to i32
  %38 = call i32 @wait_event(i32 %32, i32 %37)
  %39 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %3, align 8
  %40 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %39, i32 0, i32 0
  %41 = call i32 @mutex_lock(i32* %40)
  br label %21

42:                                               ; preds = %21
  %43 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %3, align 8
  %44 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %43, i32 0, i32 1
  %45 = call i32 @atomic_dec(i32* %44)
  %46 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %3, align 8
  %47 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %46, i32 0, i32 0
  %48 = call i32 @mutex_unlock(i32* %47)
  store i32 0, i32* %2, align 4
  br label %49

49:                                               ; preds = %42, %11
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @wait_event(i32, i32) #1

declare dso_local i32 @atomic_dec(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
