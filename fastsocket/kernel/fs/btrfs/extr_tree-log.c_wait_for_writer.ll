; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_tree-log.c_wait_for_writer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_tree-log.c_wait_for_writer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_trans_handle = type { i64 }
%struct.btrfs_root = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@wait = common dso_local global i32 0, align 4
@TASK_UNINTERRUPTIBLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.btrfs_trans_handle*, %struct.btrfs_root*)* @wait_for_writer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wait_for_writer(%struct.btrfs_trans_handle* %0, %struct.btrfs_root* %1) #0 {
  %3 = alloca %struct.btrfs_trans_handle*, align 8
  %4 = alloca %struct.btrfs_root*, align 8
  store %struct.btrfs_trans_handle* %0, %struct.btrfs_trans_handle** %3, align 8
  store %struct.btrfs_root* %1, %struct.btrfs_root** %4, align 8
  %5 = load i32, i32* @wait, align 4
  %6 = call i32 @DEFINE_WAIT(i32 %5)
  br label %7

7:                                                ; preds = %48, %2
  %8 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %9 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %8, i32 0, i32 3
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %3, align 8
  %14 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %12, %15
  br i1 %16, label %17, label %22

17:                                               ; preds = %7
  %18 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %19 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %18, i32 0, i32 2
  %20 = call i64 @atomic_read(i32* %19)
  %21 = icmp ne i64 %20, 0
  br label %22

22:                                               ; preds = %17, %7
  %23 = phi i1 [ false, %7 ], [ %21, %17 ]
  br i1 %23, label %24, label %55

24:                                               ; preds = %22
  %25 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %26 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %25, i32 0, i32 0
  %27 = load i32, i32* @TASK_UNINTERRUPTIBLE, align 4
  %28 = call i32 @prepare_to_wait(i32* %26, i32* @wait, i32 %27)
  %29 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %30 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %29, i32 0, i32 1
  %31 = call i32 @mutex_unlock(i32* %30)
  %32 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %33 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %32, i32 0, i32 3
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %3, align 8
  %38 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %36, %39
  br i1 %40, label %41, label %48

41:                                               ; preds = %24
  %42 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %43 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %42, i32 0, i32 2
  %44 = call i64 @atomic_read(i32* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %41
  %47 = call i32 (...) @schedule()
  br label %48

48:                                               ; preds = %46, %41, %24
  %49 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %50 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %49, i32 0, i32 1
  %51 = call i32 @mutex_lock(i32* %50)
  %52 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %53 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %52, i32 0, i32 0
  %54 = call i32 @finish_wait(i32* %53, i32* @wait)
  br label %7

55:                                               ; preds = %22
  ret void
}

declare dso_local i32 @DEFINE_WAIT(i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @prepare_to_wait(i32*, i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @finish_wait(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
