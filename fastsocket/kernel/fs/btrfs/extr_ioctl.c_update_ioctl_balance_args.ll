; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_ioctl.c_update_ioctl_balance_args.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_ioctl.c_update_ioctl_balance_args.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_fs_info = type { i32, i32, i32, i32, %struct.btrfs_balance_control* }
%struct.btrfs_balance_control = type { i32, i32, i32, i32, i32 }
%struct.btrfs_ioctl_balance_args = type { i32, i32, i32, i32, i32, i32 }

@BTRFS_BALANCE_STATE_RUNNING = common dso_local global i32 0, align 4
@BTRFS_BALANCE_STATE_PAUSE_REQ = common dso_local global i32 0, align 4
@BTRFS_BALANCE_STATE_CANCEL_REQ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @update_ioctl_balance_args(%struct.btrfs_fs_info* %0, i32 %1, %struct.btrfs_ioctl_balance_args* %2) #0 {
  %4 = alloca %struct.btrfs_fs_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.btrfs_ioctl_balance_args*, align 8
  %7 = alloca %struct.btrfs_balance_control*, align 8
  store %struct.btrfs_fs_info* %0, %struct.btrfs_fs_info** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.btrfs_ioctl_balance_args* %2, %struct.btrfs_ioctl_balance_args** %6, align 8
  %8 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %9 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %8, i32 0, i32 4
  %10 = load %struct.btrfs_balance_control*, %struct.btrfs_balance_control** %9, align 8
  store %struct.btrfs_balance_control* %10, %struct.btrfs_balance_control** %7, align 8
  %11 = load %struct.btrfs_balance_control*, %struct.btrfs_balance_control** %7, align 8
  %12 = getelementptr inbounds %struct.btrfs_balance_control, %struct.btrfs_balance_control* %11, i32 0, i32 4
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.btrfs_ioctl_balance_args*, %struct.btrfs_ioctl_balance_args** %6, align 8
  %15 = getelementptr inbounds %struct.btrfs_ioctl_balance_args, %struct.btrfs_ioctl_balance_args* %14, i32 0, i32 5
  store i32 %13, i32* %15, align 4
  %16 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %17 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %16, i32 0, i32 3
  %18 = call i64 @atomic_read(i32* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %3
  %21 = load i32, i32* @BTRFS_BALANCE_STATE_RUNNING, align 4
  %22 = load %struct.btrfs_ioctl_balance_args*, %struct.btrfs_ioctl_balance_args** %6, align 8
  %23 = getelementptr inbounds %struct.btrfs_ioctl_balance_args, %struct.btrfs_ioctl_balance_args* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 4
  %25 = or i32 %24, %21
  store i32 %25, i32* %23, align 4
  br label %26

26:                                               ; preds = %20, %3
  %27 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %28 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %27, i32 0, i32 2
  %29 = call i64 @atomic_read(i32* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %26
  %32 = load i32, i32* @BTRFS_BALANCE_STATE_PAUSE_REQ, align 4
  %33 = load %struct.btrfs_ioctl_balance_args*, %struct.btrfs_ioctl_balance_args** %6, align 8
  %34 = getelementptr inbounds %struct.btrfs_ioctl_balance_args, %struct.btrfs_ioctl_balance_args* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 4
  %36 = or i32 %35, %32
  store i32 %36, i32* %34, align 4
  br label %37

37:                                               ; preds = %31, %26
  %38 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %39 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %38, i32 0, i32 1
  %40 = call i64 @atomic_read(i32* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %37
  %43 = load i32, i32* @BTRFS_BALANCE_STATE_CANCEL_REQ, align 4
  %44 = load %struct.btrfs_ioctl_balance_args*, %struct.btrfs_ioctl_balance_args** %6, align 8
  %45 = getelementptr inbounds %struct.btrfs_ioctl_balance_args, %struct.btrfs_ioctl_balance_args* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 4
  %47 = or i32 %46, %43
  store i32 %47, i32* %45, align 4
  br label %48

48:                                               ; preds = %42, %37
  %49 = load %struct.btrfs_ioctl_balance_args*, %struct.btrfs_ioctl_balance_args** %6, align 8
  %50 = getelementptr inbounds %struct.btrfs_ioctl_balance_args, %struct.btrfs_ioctl_balance_args* %49, i32 0, i32 3
  %51 = load %struct.btrfs_balance_control*, %struct.btrfs_balance_control** %7, align 8
  %52 = getelementptr inbounds %struct.btrfs_balance_control, %struct.btrfs_balance_control* %51, i32 0, i32 3
  %53 = call i32 @memcpy(i32* %50, i32* %52, i32 4)
  %54 = load %struct.btrfs_ioctl_balance_args*, %struct.btrfs_ioctl_balance_args** %6, align 8
  %55 = getelementptr inbounds %struct.btrfs_ioctl_balance_args, %struct.btrfs_ioctl_balance_args* %54, i32 0, i32 2
  %56 = load %struct.btrfs_balance_control*, %struct.btrfs_balance_control** %7, align 8
  %57 = getelementptr inbounds %struct.btrfs_balance_control, %struct.btrfs_balance_control* %56, i32 0, i32 2
  %58 = call i32 @memcpy(i32* %55, i32* %57, i32 4)
  %59 = load %struct.btrfs_ioctl_balance_args*, %struct.btrfs_ioctl_balance_args** %6, align 8
  %60 = getelementptr inbounds %struct.btrfs_ioctl_balance_args, %struct.btrfs_ioctl_balance_args* %59, i32 0, i32 1
  %61 = load %struct.btrfs_balance_control*, %struct.btrfs_balance_control** %7, align 8
  %62 = getelementptr inbounds %struct.btrfs_balance_control, %struct.btrfs_balance_control* %61, i32 0, i32 1
  %63 = call i32 @memcpy(i32* %60, i32* %62, i32 4)
  %64 = load i32, i32* %5, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %78

66:                                               ; preds = %48
  %67 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %68 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %67, i32 0, i32 0
  %69 = call i32 @spin_lock(i32* %68)
  %70 = load %struct.btrfs_ioctl_balance_args*, %struct.btrfs_ioctl_balance_args** %6, align 8
  %71 = getelementptr inbounds %struct.btrfs_ioctl_balance_args, %struct.btrfs_ioctl_balance_args* %70, i32 0, i32 0
  %72 = load %struct.btrfs_balance_control*, %struct.btrfs_balance_control** %7, align 8
  %73 = getelementptr inbounds %struct.btrfs_balance_control, %struct.btrfs_balance_control* %72, i32 0, i32 0
  %74 = call i32 @memcpy(i32* %71, i32* %73, i32 4)
  %75 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %76 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %75, i32 0, i32 0
  %77 = call i32 @spin_unlock(i32* %76)
  br label %84

78:                                               ; preds = %48
  %79 = load %struct.btrfs_ioctl_balance_args*, %struct.btrfs_ioctl_balance_args** %6, align 8
  %80 = getelementptr inbounds %struct.btrfs_ioctl_balance_args, %struct.btrfs_ioctl_balance_args* %79, i32 0, i32 0
  %81 = load %struct.btrfs_balance_control*, %struct.btrfs_balance_control** %7, align 8
  %82 = getelementptr inbounds %struct.btrfs_balance_control, %struct.btrfs_balance_control* %81, i32 0, i32 0
  %83 = call i32 @memcpy(i32* %80, i32* %82, i32 4)
  br label %84

84:                                               ; preds = %78, %66
  ret void
}

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
