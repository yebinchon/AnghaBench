; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_ioctl.c_btrfs_ioctl_balance_ctl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_ioctl.c_btrfs_ioctl_balance_ctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_root = type { i32 }

@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@EPERM = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.btrfs_root*, i32)* @btrfs_ioctl_balance_ctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @btrfs_ioctl_balance_ctl(%struct.btrfs_root* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.btrfs_root*, align 8
  %5 = alloca i32, align 4
  store %struct.btrfs_root* %0, %struct.btrfs_root** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %7 = call i32 @capable(i32 %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = load i64, i64* @EPERM, align 8
  %11 = sub nsw i64 0, %10
  store i64 %11, i64* %3, align 8
  br label %27

12:                                               ; preds = %2
  %13 = load i32, i32* %5, align 4
  switch i32 %13, label %24 [
    i32 128, label %14
    i32 129, label %19
  ]

14:                                               ; preds = %12
  %15 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %16 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @btrfs_pause_balance(i32 %17)
  store i64 %18, i64* %3, align 8
  br label %27

19:                                               ; preds = %12
  %20 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %21 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @btrfs_cancel_balance(i32 %22)
  store i64 %23, i64* %3, align 8
  br label %27

24:                                               ; preds = %12
  %25 = load i64, i64* @EINVAL, align 8
  %26 = sub nsw i64 0, %25
  store i64 %26, i64* %3, align 8
  br label %27

27:                                               ; preds = %24, %19, %14, %9
  %28 = load i64, i64* %3, align 8
  ret i64 %28
}

declare dso_local i32 @capable(i32) #1

declare dso_local i64 @btrfs_pause_balance(i32) #1

declare dso_local i64 @btrfs_cancel_balance(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
