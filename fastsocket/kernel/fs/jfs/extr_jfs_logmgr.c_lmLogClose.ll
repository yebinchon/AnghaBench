; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/jfs/extr_jfs_logmgr.c_lmLogClose.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/jfs/extr_jfs_logmgr.c_lmLogClose.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.jfs_sb_info = type { %struct.jfs_log*, i32 }
%struct.jfs_log = type { %struct.block_device*, i32, i64, i32, i32 }
%struct.block_device = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"lmLogClose: log:0x%p\00", align 1
@jfs_log_mutex = common dso_local global i32 0, align 4
@log_INLINELOG = common dso_local global i32 0, align 4
@FMODE_READ = common dso_local global i32 0, align 4
@FMODE_WRITE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"lmLogClose: exit(%d)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lmLogClose(%struct.super_block* %0) #0 {
  %2 = alloca %struct.super_block*, align 8
  %3 = alloca %struct.jfs_sb_info*, align 8
  %4 = alloca %struct.jfs_log*, align 8
  %5 = alloca %struct.block_device*, align 8
  %6 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %2, align 8
  %7 = load %struct.super_block*, %struct.super_block** %2, align 8
  %8 = call %struct.jfs_sb_info* @JFS_SBI(%struct.super_block* %7)
  store %struct.jfs_sb_info* %8, %struct.jfs_sb_info** %3, align 8
  %9 = load %struct.jfs_sb_info*, %struct.jfs_sb_info** %3, align 8
  %10 = getelementptr inbounds %struct.jfs_sb_info, %struct.jfs_sb_info* %9, i32 0, i32 0
  %11 = load %struct.jfs_log*, %struct.jfs_log** %10, align 8
  store %struct.jfs_log* %11, %struct.jfs_log** %4, align 8
  store i32 0, i32* %6, align 4
  %12 = load %struct.jfs_log*, %struct.jfs_log** %4, align 8
  %13 = call i32 (i8*, ...) @jfs_info(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), %struct.jfs_log* %12)
  %14 = call i32 @mutex_lock(i32* @jfs_log_mutex)
  %15 = load %struct.jfs_log*, %struct.jfs_log** %4, align 8
  %16 = call i32 @LOG_LOCK(%struct.jfs_log* %15)
  %17 = load %struct.jfs_sb_info*, %struct.jfs_sb_info** %3, align 8
  %18 = getelementptr inbounds %struct.jfs_sb_info, %struct.jfs_sb_info* %17, i32 0, i32 1
  %19 = call i32 @list_del(i32* %18)
  %20 = load %struct.jfs_log*, %struct.jfs_log** %4, align 8
  %21 = call i32 @LOG_UNLOCK(%struct.jfs_log* %20)
  %22 = load %struct.jfs_sb_info*, %struct.jfs_sb_info** %3, align 8
  %23 = getelementptr inbounds %struct.jfs_sb_info, %struct.jfs_sb_info* %22, i32 0, i32 0
  store %struct.jfs_log* null, %struct.jfs_log** %23, align 8
  %24 = load %struct.super_block*, %struct.super_block** %2, align 8
  %25 = getelementptr inbounds %struct.super_block, %struct.super_block* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @sync_blockdev(i32 %26)
  %28 = load i32, i32* @log_INLINELOG, align 4
  %29 = load %struct.jfs_log*, %struct.jfs_log** %4, align 8
  %30 = getelementptr inbounds %struct.jfs_log, %struct.jfs_log* %29, i32 0, i32 4
  %31 = call i64 @test_bit(i32 %28, i32* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %1
  %34 = load %struct.jfs_log*, %struct.jfs_log** %4, align 8
  %35 = call i32 @lmLogShutdown(%struct.jfs_log* %34)
  store i32 %35, i32* %6, align 4
  %36 = load %struct.jfs_log*, %struct.jfs_log** %4, align 8
  %37 = call i32 @kfree(%struct.jfs_log* %36)
  br label %77

38:                                               ; preds = %1
  %39 = load %struct.jfs_log*, %struct.jfs_log** %4, align 8
  %40 = getelementptr inbounds %struct.jfs_log, %struct.jfs_log* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %38
  %44 = load %struct.jfs_log*, %struct.jfs_log** %4, align 8
  %45 = load %struct.jfs_sb_info*, %struct.jfs_sb_info** %3, align 8
  %46 = call i32 @lmLogFileSystem(%struct.jfs_log* %44, %struct.jfs_sb_info* %45, i32 0)
  br label %47

47:                                               ; preds = %43, %38
  %48 = load %struct.jfs_log*, %struct.jfs_log** %4, align 8
  %49 = getelementptr inbounds %struct.jfs_log, %struct.jfs_log* %48, i32 0, i32 3
  %50 = call i32 @list_empty(i32* %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %47
  br label %77

53:                                               ; preds = %47
  %54 = load %struct.jfs_log*, %struct.jfs_log** %4, align 8
  %55 = getelementptr inbounds %struct.jfs_log, %struct.jfs_log* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %53
  br label %77

59:                                               ; preds = %53
  %60 = load %struct.jfs_log*, %struct.jfs_log** %4, align 8
  %61 = getelementptr inbounds %struct.jfs_log, %struct.jfs_log* %60, i32 0, i32 1
  %62 = call i32 @list_del(i32* %61)
  %63 = load %struct.jfs_log*, %struct.jfs_log** %4, align 8
  %64 = getelementptr inbounds %struct.jfs_log, %struct.jfs_log* %63, i32 0, i32 0
  %65 = load %struct.block_device*, %struct.block_device** %64, align 8
  store %struct.block_device* %65, %struct.block_device** %5, align 8
  %66 = load %struct.jfs_log*, %struct.jfs_log** %4, align 8
  %67 = call i32 @lmLogShutdown(%struct.jfs_log* %66)
  store i32 %67, i32* %6, align 4
  %68 = load %struct.block_device*, %struct.block_device** %5, align 8
  %69 = call i32 @bd_release(%struct.block_device* %68)
  %70 = load %struct.block_device*, %struct.block_device** %5, align 8
  %71 = load i32, i32* @FMODE_READ, align 4
  %72 = load i32, i32* @FMODE_WRITE, align 4
  %73 = or i32 %71, %72
  %74 = call i32 @blkdev_put(%struct.block_device* %70, i32 %73)
  %75 = load %struct.jfs_log*, %struct.jfs_log** %4, align 8
  %76 = call i32 @kfree(%struct.jfs_log* %75)
  br label %77

77:                                               ; preds = %59, %58, %52, %33
  %78 = call i32 @mutex_unlock(i32* @jfs_log_mutex)
  %79 = load i32, i32* %6, align 4
  %80 = call i32 (i8*, ...) @jfs_info(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %79)
  %81 = load i32, i32* %6, align 4
  ret i32 %81
}

declare dso_local %struct.jfs_sb_info* @JFS_SBI(%struct.super_block*) #1

declare dso_local i32 @jfs_info(i8*, ...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @LOG_LOCK(%struct.jfs_log*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @LOG_UNLOCK(%struct.jfs_log*) #1

declare dso_local i32 @sync_blockdev(i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @lmLogShutdown(%struct.jfs_log*) #1

declare dso_local i32 @kfree(%struct.jfs_log*) #1

declare dso_local i32 @lmLogFileSystem(%struct.jfs_log*, %struct.jfs_sb_info*, i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @bd_release(%struct.block_device*) #1

declare dso_local i32 @blkdev_put(%struct.block_device*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
