; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_volumes.c_balance_need_close.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_volumes.c_balance_need_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_fs_info = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfs_fs_info*)* @balance_need_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @balance_need_close(%struct.btrfs_fs_info* %0) #0 {
  %2 = alloca %struct.btrfs_fs_info*, align 8
  store %struct.btrfs_fs_info* %0, %struct.btrfs_fs_info** %2, align 8
  %3 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %2, align 8
  %4 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %3, i32 0, i32 0
  %5 = call i64 @atomic_read(i32* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %19, label %7

7:                                                ; preds = %1
  %8 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %2, align 8
  %9 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %8, i32 0, i32 1
  %10 = call i64 @atomic_read(i32* %9)
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %7
  %13 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %2, align 8
  %14 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %13, i32 0, i32 0
  %15 = call i64 @atomic_read(i32* %14)
  %16 = icmp eq i64 %15, 0
  br label %17

17:                                               ; preds = %12, %7
  %18 = phi i1 [ false, %7 ], [ %16, %12 ]
  br label %19

19:                                               ; preds = %17, %1
  %20 = phi i1 [ true, %1 ], [ %18, %17 ]
  %21 = zext i1 %20 to i32
  ret i32 %21
}

declare dso_local i64 @atomic_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
