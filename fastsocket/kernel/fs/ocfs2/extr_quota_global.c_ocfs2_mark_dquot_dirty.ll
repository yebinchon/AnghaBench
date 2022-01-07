; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_quota_global.c_ocfs2_mark_dquot_dirty.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_quota_global.c_ocfs2_mark_dquot_dirty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dquot = type { i32, i64, i32, %struct.super_block* }
%struct.super_block = type { i32 }
%struct.ocfs2_mem_dqinfo = type { i32 }
%struct.ocfs2_super = type { i32 }
%struct.TYPE_2__ = type { %struct.ocfs2_mem_dqinfo* }

@DQ_LASTSET_B = common dso_local global i32 0, align 4
@QIF_ILIMITS_B = common dso_local global i32 0, align 4
@QIF_BLIMITS_B = common dso_local global i32 0, align 4
@QIF_INODES_B = common dso_local global i32 0, align 4
@QIF_SPACE_B = common dso_local global i32 0, align 4
@QIF_BTIME_B = common dso_local global i32 0, align 4
@QIF_ITIME_B = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"id=%u, type=%d\00", align 1
@dq_data_lock = common dso_local global i32 0, align 4
@OCFS2_QSYNC_CREDITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dquot*)* @ocfs2_mark_dquot_dirty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_mark_dquot_dirty(%struct.dquot* %0) #0 {
  %2 = alloca %struct.dquot*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ocfs2_mem_dqinfo*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.ocfs2_super*, align 8
  store %struct.dquot* %0, %struct.dquot** %2, align 8
  %11 = load i32, i32* @DQ_LASTSET_B, align 4
  %12 = load i32, i32* @QIF_ILIMITS_B, align 4
  %13 = add nsw i32 %11, %12
  %14 = shl i32 1, %13
  %15 = load i32, i32* @DQ_LASTSET_B, align 4
  %16 = load i32, i32* @QIF_BLIMITS_B, align 4
  %17 = add nsw i32 %15, %16
  %18 = shl i32 1, %17
  %19 = or i32 %14, %18
  %20 = load i32, i32* @DQ_LASTSET_B, align 4
  %21 = load i32, i32* @QIF_INODES_B, align 4
  %22 = add nsw i32 %20, %21
  %23 = shl i32 1, %22
  %24 = or i32 %19, %23
  %25 = load i32, i32* @DQ_LASTSET_B, align 4
  %26 = load i32, i32* @QIF_SPACE_B, align 4
  %27 = add nsw i32 %25, %26
  %28 = shl i32 1, %27
  %29 = or i32 %24, %28
  %30 = load i32, i32* @DQ_LASTSET_B, align 4
  %31 = load i32, i32* @QIF_BTIME_B, align 4
  %32 = add nsw i32 %30, %31
  %33 = shl i32 1, %32
  %34 = or i32 %29, %33
  %35 = load i32, i32* @DQ_LASTSET_B, align 4
  %36 = load i32, i32* @QIF_ITIME_B, align 4
  %37 = add nsw i32 %35, %36
  %38 = shl i32 1, %37
  %39 = or i32 %34, %38
  %40 = sext i32 %39 to i64
  store i64 %40, i64* %3, align 8
  store i32 0, i32* %4, align 4
  %41 = load %struct.dquot*, %struct.dquot** %2, align 8
  %42 = getelementptr inbounds %struct.dquot, %struct.dquot* %41, i32 0, i32 3
  %43 = load %struct.super_block*, %struct.super_block** %42, align 8
  store %struct.super_block* %43, %struct.super_block** %6, align 8
  %44 = load %struct.dquot*, %struct.dquot** %2, align 8
  %45 = getelementptr inbounds %struct.dquot, %struct.dquot* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  store i32 %46, i32* %7, align 4
  %47 = load %struct.super_block*, %struct.super_block** %6, align 8
  %48 = load i32, i32* %7, align 4
  %49 = call %struct.TYPE_2__* @sb_dqinfo(%struct.super_block* %47, i32 %48)
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load %struct.ocfs2_mem_dqinfo*, %struct.ocfs2_mem_dqinfo** %50, align 8
  store %struct.ocfs2_mem_dqinfo* %51, %struct.ocfs2_mem_dqinfo** %8, align 8
  %52 = load %struct.super_block*, %struct.super_block** %6, align 8
  %53 = call %struct.ocfs2_super* @OCFS2_SB(%struct.super_block* %52)
  store %struct.ocfs2_super* %53, %struct.ocfs2_super** %10, align 8
  %54 = load %struct.dquot*, %struct.dquot** %2, align 8
  %55 = getelementptr inbounds %struct.dquot, %struct.dquot* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* %7, align 4
  %58 = call i32 @mlog_entry(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %56, i32 %57)
  %59 = load %struct.dquot*, %struct.dquot** %2, align 8
  %60 = call i32 @dquot_mark_dquot_dirty(%struct.dquot* %59)
  %61 = call i32 @spin_lock(i32* @dq_data_lock)
  %62 = load %struct.dquot*, %struct.dquot** %2, align 8
  %63 = getelementptr inbounds %struct.dquot, %struct.dquot* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* %3, align 8
  %66 = and i64 %64, %65
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %1
  store i32 1, i32* %4, align 4
  br label %69

69:                                               ; preds = %68, %1
  %70 = call i32 @spin_unlock(i32* @dq_data_lock)
  %71 = load i32, i32* %4, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %69
  %74 = call i64 (...) @journal_current_handle()
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %73, %69
  %77 = load %struct.dquot*, %struct.dquot** %2, align 8
  %78 = call i32 @ocfs2_write_dquot(%struct.dquot* %77)
  store i32 %78, i32* %5, align 4
  br label %115

79:                                               ; preds = %73
  %80 = load %struct.ocfs2_mem_dqinfo*, %struct.ocfs2_mem_dqinfo** %8, align 8
  %81 = call i32 @ocfs2_lock_global_qf(%struct.ocfs2_mem_dqinfo* %80, i32 1)
  store i32 %81, i32* %5, align 4
  %82 = load i32, i32* %5, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %79
  br label %115

85:                                               ; preds = %79
  %86 = load %struct.ocfs2_super*, %struct.ocfs2_super** %10, align 8
  %87 = load i32, i32* @OCFS2_QSYNC_CREDITS, align 4
  %88 = call i32* @ocfs2_start_trans(%struct.ocfs2_super* %86, i32 %87)
  store i32* %88, i32** %9, align 8
  %89 = load i32*, i32** %9, align 8
  %90 = call i64 @IS_ERR(i32* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %85
  %93 = load i32*, i32** %9, align 8
  %94 = call i32 @PTR_ERR(i32* %93)
  store i32 %94, i32* %5, align 4
  %95 = load i32, i32* %5, align 4
  %96 = call i32 @mlog_errno(i32 %95)
  br label %112

97:                                               ; preds = %85
  %98 = load %struct.dquot*, %struct.dquot** %2, align 8
  %99 = call i32 @ocfs2_sync_dquot(%struct.dquot* %98)
  store i32 %99, i32* %5, align 4
  %100 = load i32, i32* %5, align 4
  %101 = icmp slt i32 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %97
  %103 = load i32, i32* %5, align 4
  %104 = call i32 @mlog_errno(i32 %103)
  br label %108

105:                                              ; preds = %97
  %106 = load %struct.dquot*, %struct.dquot** %2, align 8
  %107 = call i32 @dquot_commit(%struct.dquot* %106)
  store i32 %107, i32* %5, align 4
  br label %108

108:                                              ; preds = %105, %102
  %109 = load %struct.ocfs2_super*, %struct.ocfs2_super** %10, align 8
  %110 = load i32*, i32** %9, align 8
  %111 = call i32 @ocfs2_commit_trans(%struct.ocfs2_super* %109, i32* %110)
  br label %112

112:                                              ; preds = %108, %92
  %113 = load %struct.ocfs2_mem_dqinfo*, %struct.ocfs2_mem_dqinfo** %8, align 8
  %114 = call i32 @ocfs2_unlock_global_qf(%struct.ocfs2_mem_dqinfo* %113, i32 1)
  br label %115

115:                                              ; preds = %112, %84, %76
  %116 = load i32, i32* %5, align 4
  %117 = call i32 @mlog_exit(i32 %116)
  %118 = load i32, i32* %5, align 4
  ret i32 %118
}

declare dso_local %struct.TYPE_2__* @sb_dqinfo(%struct.super_block*, i32) #1

declare dso_local %struct.ocfs2_super* @OCFS2_SB(%struct.super_block*) #1

declare dso_local i32 @mlog_entry(i8*, i32, i32) #1

declare dso_local i32 @dquot_mark_dquot_dirty(%struct.dquot*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i64 @journal_current_handle(...) #1

declare dso_local i32 @ocfs2_write_dquot(%struct.dquot*) #1

declare dso_local i32 @ocfs2_lock_global_qf(%struct.ocfs2_mem_dqinfo*, i32) #1

declare dso_local i32* @ocfs2_start_trans(%struct.ocfs2_super*, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_sync_dquot(%struct.dquot*) #1

declare dso_local i32 @dquot_commit(%struct.dquot*) #1

declare dso_local i32 @ocfs2_commit_trans(%struct.ocfs2_super*, i32*) #1

declare dso_local i32 @ocfs2_unlock_global_qf(%struct.ocfs2_mem_dqinfo*, i32) #1

declare dso_local i32 @mlog_exit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
