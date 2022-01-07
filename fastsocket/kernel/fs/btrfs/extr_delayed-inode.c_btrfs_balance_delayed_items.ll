; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_delayed-inode.c_btrfs_balance_delayed_items.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_delayed-inode.c_btrfs_balance_delayed_items.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_root = type { i32 }
%struct.btrfs_delayed_root = type { i32, i32 }

@BTRFS_DELAYED_BACKGROUND = common dso_local global i64 0, align 8
@BTRFS_DELAYED_WRITEBACK = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @btrfs_balance_delayed_items(%struct.btrfs_root* %0) #0 {
  %2 = alloca %struct.btrfs_root*, align 8
  %3 = alloca %struct.btrfs_delayed_root*, align 8
  %4 = alloca i32, align 4
  store %struct.btrfs_root* %0, %struct.btrfs_root** %2, align 8
  %5 = load %struct.btrfs_root*, %struct.btrfs_root** %2, align 8
  %6 = call %struct.btrfs_delayed_root* @btrfs_get_delayed_root(%struct.btrfs_root* %5)
  store %struct.btrfs_delayed_root* %6, %struct.btrfs_delayed_root** %3, align 8
  %7 = load %struct.btrfs_delayed_root*, %struct.btrfs_delayed_root** %3, align 8
  %8 = getelementptr inbounds %struct.btrfs_delayed_root, %struct.btrfs_delayed_root* %7, i32 0, i32 0
  %9 = call i64 @atomic_read(i32* %8)
  %10 = load i64, i64* @BTRFS_DELAYED_BACKGROUND, align 8
  %11 = icmp slt i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %42

13:                                               ; preds = %1
  %14 = load %struct.btrfs_delayed_root*, %struct.btrfs_delayed_root** %3, align 8
  %15 = getelementptr inbounds %struct.btrfs_delayed_root, %struct.btrfs_delayed_root* %14, i32 0, i32 0
  %16 = call i64 @atomic_read(i32* %15)
  %17 = load i64, i64* @BTRFS_DELAYED_WRITEBACK, align 8
  %18 = icmp sge i64 %16, %17
  br i1 %18, label %19, label %38

19:                                               ; preds = %13
  %20 = load %struct.btrfs_delayed_root*, %struct.btrfs_delayed_root** %3, align 8
  %21 = load %struct.btrfs_root*, %struct.btrfs_root** %2, align 8
  %22 = call i32 @btrfs_wq_run_delayed_node(%struct.btrfs_delayed_root* %20, %struct.btrfs_root* %21, i32 1)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  br label %42

26:                                               ; preds = %19
  %27 = load %struct.btrfs_delayed_root*, %struct.btrfs_delayed_root** %3, align 8
  %28 = getelementptr inbounds %struct.btrfs_delayed_root, %struct.btrfs_delayed_root* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.btrfs_delayed_root*, %struct.btrfs_delayed_root** %3, align 8
  %31 = getelementptr inbounds %struct.btrfs_delayed_root, %struct.btrfs_delayed_root* %30, i32 0, i32 0
  %32 = call i64 @atomic_read(i32* %31)
  %33 = load i64, i64* @BTRFS_DELAYED_BACKGROUND, align 8
  %34 = icmp slt i64 %32, %33
  %35 = zext i1 %34 to i32
  %36 = load i32, i32* @HZ, align 4
  %37 = call i32 @wait_event_interruptible_timeout(i32 %29, i32 %35, i32 %36)
  br label %42

38:                                               ; preds = %13
  %39 = load %struct.btrfs_delayed_root*, %struct.btrfs_delayed_root** %3, align 8
  %40 = load %struct.btrfs_root*, %struct.btrfs_root** %2, align 8
  %41 = call i32 @btrfs_wq_run_delayed_node(%struct.btrfs_delayed_root* %39, %struct.btrfs_root* %40, i32 0)
  br label %42

42:                                               ; preds = %38, %26, %25, %12
  ret void
}

declare dso_local %struct.btrfs_delayed_root* @btrfs_get_delayed_root(%struct.btrfs_root*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @btrfs_wq_run_delayed_node(%struct.btrfs_delayed_root*, %struct.btrfs_root*, i32) #1

declare dso_local i32 @wait_event_interruptible_timeout(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
