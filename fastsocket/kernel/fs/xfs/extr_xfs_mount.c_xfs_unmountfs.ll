; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_mount.c_xfs_unmountfs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_mount.c_xfs_unmountfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_mount = type { i32, i32 }

@XFS_LOG_SYNC = common dso_local global i32 0, align 4
@SYNC_WAIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [80 x i8] c"Unable to free reserved block pool. Freespace may not be correct on next mount.\00", align 1
@.str.1 = private unnamed_addr constant [82 x i8] c"Unable to update superblock counters. Freespace may not be correct on next mount.\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"%d busy buffers during unmount.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xfs_unmountfs(%struct.xfs_mount* %0) #0 {
  %2 = alloca %struct.xfs_mount*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store %struct.xfs_mount* %0, %struct.xfs_mount** %2, align 8
  %5 = load %struct.xfs_mount*, %struct.xfs_mount** %2, align 8
  %6 = call i32 @xfs_qm_unmount_quotas(%struct.xfs_mount* %5)
  %7 = load %struct.xfs_mount*, %struct.xfs_mount** %2, align 8
  %8 = call i32 @xfs_rtunmount_inodes(%struct.xfs_mount* %7)
  %9 = load %struct.xfs_mount*, %struct.xfs_mount** %2, align 8
  %10 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @IRELE(i32 %11)
  %13 = load %struct.xfs_mount*, %struct.xfs_mount** %2, align 8
  %14 = load i32, i32* @XFS_LOG_SYNC, align 4
  %15 = call i32 @xfs_log_force(%struct.xfs_mount* %13, i32 %14)
  %16 = load %struct.xfs_mount*, %struct.xfs_mount** %2, align 8
  %17 = call i32 @xfs_reclaim_inodes(%struct.xfs_mount* %16, i32 0)
  %18 = load %struct.xfs_mount*, %struct.xfs_mount** %2, align 8
  %19 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @XFS_bflush(i32 %20)
  %22 = load %struct.xfs_mount*, %struct.xfs_mount** %2, align 8
  %23 = load i32, i32* @SYNC_WAIT, align 4
  %24 = call i32 @xfs_reclaim_inodes(%struct.xfs_mount* %22, i32 %23)
  %25 = load %struct.xfs_mount*, %struct.xfs_mount** %2, align 8
  %26 = call i32 @xfs_qm_unmount(%struct.xfs_mount* %25)
  %27 = load %struct.xfs_mount*, %struct.xfs_mount** %2, align 8
  %28 = load i32, i32* @XFS_LOG_SYNC, align 4
  %29 = call i32 @xfs_log_force(%struct.xfs_mount* %27, i32 %28)
  store i64 0, i64* %3, align 8
  %30 = load %struct.xfs_mount*, %struct.xfs_mount** %2, align 8
  %31 = call i32 @xfs_reserve_blocks(%struct.xfs_mount* %30, i64* %3, i32* null)
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* %4, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %1
  %35 = load %struct.xfs_mount*, %struct.xfs_mount** %2, align 8
  %36 = call i32 (%struct.xfs_mount*, i8*, ...) @xfs_warn(%struct.xfs_mount* %35, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str, i64 0, i64 0))
  br label %37

37:                                               ; preds = %34, %1
  %38 = load %struct.xfs_mount*, %struct.xfs_mount** %2, align 8
  %39 = call i32 @xfs_log_sbcount(%struct.xfs_mount* %38, i32 1)
  store i32 %39, i32* %4, align 4
  %40 = load i32, i32* %4, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = load %struct.xfs_mount*, %struct.xfs_mount** %2, align 8
  %44 = call i32 (%struct.xfs_mount*, i8*, ...) @xfs_warn(%struct.xfs_mount* %43, i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.1, i64 0, i64 0))
  br label %45

45:                                               ; preds = %42, %37
  %46 = load %struct.xfs_mount*, %struct.xfs_mount** %2, align 8
  %47 = call i32 @xfs_unmountfs_writesb(%struct.xfs_mount* %46)
  %48 = load %struct.xfs_mount*, %struct.xfs_mount** %2, align 8
  %49 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @xfs_flush_buftarg(i32 %50, i32 1)
  store i32 %51, i32* %4, align 4
  %52 = load i32, i32* %4, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %45
  %55 = load %struct.xfs_mount*, %struct.xfs_mount** %2, align 8
  %56 = load i32, i32* %4, align 4
  %57 = call i32 (%struct.xfs_mount*, i8*, ...) @xfs_warn(%struct.xfs_mount* %55, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %56)
  br label %58

58:                                               ; preds = %54, %45
  %59 = load %struct.xfs_mount*, %struct.xfs_mount** %2, align 8
  %60 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @xfs_wait_buftarg(i32 %61)
  %63 = load %struct.xfs_mount*, %struct.xfs_mount** %2, align 8
  %64 = call i32 @xfs_log_unmount_write(%struct.xfs_mount* %63)
  %65 = load %struct.xfs_mount*, %struct.xfs_mount** %2, align 8
  %66 = call i32 @xfs_log_unmount(%struct.xfs_mount* %65)
  %67 = load %struct.xfs_mount*, %struct.xfs_mount** %2, align 8
  %68 = call i32 @xfs_uuid_unmount(%struct.xfs_mount* %67)
  %69 = load %struct.xfs_mount*, %struct.xfs_mount** %2, align 8
  %70 = call i32 @xfs_free_perag(%struct.xfs_mount* %69)
  ret void
}

declare dso_local i32 @xfs_qm_unmount_quotas(%struct.xfs_mount*) #1

declare dso_local i32 @xfs_rtunmount_inodes(%struct.xfs_mount*) #1

declare dso_local i32 @IRELE(i32) #1

declare dso_local i32 @xfs_log_force(%struct.xfs_mount*, i32) #1

declare dso_local i32 @xfs_reclaim_inodes(%struct.xfs_mount*, i32) #1

declare dso_local i32 @XFS_bflush(i32) #1

declare dso_local i32 @xfs_qm_unmount(%struct.xfs_mount*) #1

declare dso_local i32 @xfs_reserve_blocks(%struct.xfs_mount*, i64*, i32*) #1

declare dso_local i32 @xfs_warn(%struct.xfs_mount*, i8*, ...) #1

declare dso_local i32 @xfs_log_sbcount(%struct.xfs_mount*, i32) #1

declare dso_local i32 @xfs_unmountfs_writesb(%struct.xfs_mount*) #1

declare dso_local i32 @xfs_flush_buftarg(i32, i32) #1

declare dso_local i32 @xfs_wait_buftarg(i32) #1

declare dso_local i32 @xfs_log_unmount_write(%struct.xfs_mount*) #1

declare dso_local i32 @xfs_log_unmount(%struct.xfs_mount*) #1

declare dso_local i32 @xfs_uuid_unmount(%struct.xfs_mount*) #1

declare dso_local i32 @xfs_free_perag(%struct.xfs_mount*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
