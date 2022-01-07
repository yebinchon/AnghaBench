; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_quota_global.c_ocfs2_sync_dquot_helper.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_quota_global.c_ocfs2_sync_dquot_helper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dquot = type { i64, i32, %struct.super_block* }
%struct.super_block = type { i32 }
%struct.ocfs2_mem_dqinfo = type { i32 }
%struct.ocfs2_super = type { i32 }
%struct.TYPE_4__ = type { %struct.ocfs2_mem_dqinfo* }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"id=%u qtype=%u type=%lu device=%s\0A\00", align 1
@OCFS2_QSYNC_CREDITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dquot*, i64)* @ocfs2_sync_dquot_helper to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_sync_dquot_helper(%struct.dquot* %0, i64 %1) #0 {
  %3 = alloca %struct.dquot*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca %struct.ocfs2_mem_dqinfo*, align 8
  %8 = alloca %struct.ocfs2_super*, align 8
  %9 = alloca i32, align 4
  store %struct.dquot* %0, %struct.dquot** %3, align 8
  store i64 %1, i64* %4, align 8
  %10 = load %struct.dquot*, %struct.dquot** %3, align 8
  %11 = getelementptr inbounds %struct.dquot, %struct.dquot* %10, i32 0, i32 2
  %12 = load %struct.super_block*, %struct.super_block** %11, align 8
  store %struct.super_block* %12, %struct.super_block** %6, align 8
  %13 = load %struct.super_block*, %struct.super_block** %6, align 8
  %14 = load i64, i64* %4, align 8
  %15 = call %struct.TYPE_4__* @sb_dqinfo(%struct.super_block* %13, i64 %14)
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load %struct.ocfs2_mem_dqinfo*, %struct.ocfs2_mem_dqinfo** %16, align 8
  store %struct.ocfs2_mem_dqinfo* %17, %struct.ocfs2_mem_dqinfo** %7, align 8
  %18 = load %struct.super_block*, %struct.super_block** %6, align 8
  %19 = call %struct.ocfs2_super* @OCFS2_SB(%struct.super_block* %18)
  store %struct.ocfs2_super* %19, %struct.ocfs2_super** %8, align 8
  store i32 0, i32* %9, align 4
  %20 = load %struct.dquot*, %struct.dquot** %3, align 8
  %21 = getelementptr inbounds %struct.dquot, %struct.dquot* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.dquot*, %struct.dquot** %3, align 8
  %24 = getelementptr inbounds %struct.dquot, %struct.dquot* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* %4, align 8
  %27 = load %struct.super_block*, %struct.super_block** %6, align 8
  %28 = getelementptr inbounds %struct.super_block, %struct.super_block* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @mlog_entry(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %22, i64 %25, i64 %26, i32 %29)
  %31 = load i64, i64* %4, align 8
  %32 = load %struct.dquot*, %struct.dquot** %3, align 8
  %33 = getelementptr inbounds %struct.dquot, %struct.dquot* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %31, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %2
  br label %88

37:                                               ; preds = %2
  %38 = load %struct.ocfs2_mem_dqinfo*, %struct.ocfs2_mem_dqinfo** %7, align 8
  %39 = call i32 @ocfs2_lock_global_qf(%struct.ocfs2_mem_dqinfo* %38, i32 1)
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %9, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  br label %88

43:                                               ; preds = %37
  %44 = load %struct.ocfs2_super*, %struct.ocfs2_super** %8, align 8
  %45 = load i32, i32* @OCFS2_QSYNC_CREDITS, align 4
  %46 = call i32* @ocfs2_start_trans(%struct.ocfs2_super* %44, i32 %45)
  store i32* %46, i32** %5, align 8
  %47 = load i32*, i32** %5, align 8
  %48 = call i64 @IS_ERR(i32* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %43
  %51 = load i32*, i32** %5, align 8
  %52 = call i32 @PTR_ERR(i32* %51)
  store i32 %52, i32* %9, align 4
  %53 = load i32, i32* %9, align 4
  %54 = call i32 @mlog_errno(i32 %53)
  br label %85

55:                                               ; preds = %43
  %56 = load %struct.super_block*, %struct.super_block** %6, align 8
  %57 = call %struct.TYPE_3__* @sb_dqopt(%struct.super_block* %56)
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = call i32 @mutex_lock(i32* %58)
  %60 = load %struct.dquot*, %struct.dquot** %3, align 8
  %61 = call i32 @ocfs2_sync_dquot(%struct.dquot* %60)
  store i32 %61, i32* %9, align 4
  %62 = load %struct.super_block*, %struct.super_block** %6, align 8
  %63 = call %struct.TYPE_3__* @sb_dqopt(%struct.super_block* %62)
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = call i32 @mutex_unlock(i32* %64)
  %66 = load i32, i32* %9, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %55
  %69 = load i32, i32* %9, align 4
  %70 = call i32 @mlog_errno(i32 %69)
  br label %71

71:                                               ; preds = %68, %55
  %72 = load %struct.dquot*, %struct.dquot** %3, align 8
  %73 = call i32 @dquot_mark_dquot_dirty(%struct.dquot* %72)
  %74 = load %struct.dquot*, %struct.dquot** %3, align 8
  %75 = call i32 @dquot_commit(%struct.dquot* %74)
  store i32 %75, i32* %9, align 4
  %76 = load i32, i32* %9, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %71
  %79 = load i32, i32* %9, align 4
  %80 = call i32 @mlog_errno(i32 %79)
  br label %81

81:                                               ; preds = %78, %71
  %82 = load %struct.ocfs2_super*, %struct.ocfs2_super** %8, align 8
  %83 = load i32*, i32** %5, align 8
  %84 = call i32 @ocfs2_commit_trans(%struct.ocfs2_super* %82, i32* %83)
  br label %85

85:                                               ; preds = %81, %50
  %86 = load %struct.ocfs2_mem_dqinfo*, %struct.ocfs2_mem_dqinfo** %7, align 8
  %87 = call i32 @ocfs2_unlock_global_qf(%struct.ocfs2_mem_dqinfo* %86, i32 1)
  br label %88

88:                                               ; preds = %85, %42, %36
  %89 = load i32, i32* %9, align 4
  %90 = call i32 @mlog_exit(i32 %89)
  %91 = load i32, i32* %9, align 4
  ret i32 %91
}

declare dso_local %struct.TYPE_4__* @sb_dqinfo(%struct.super_block*, i64) #1

declare dso_local %struct.ocfs2_super* @OCFS2_SB(%struct.super_block*) #1

declare dso_local i32 @mlog_entry(i8*, i32, i64, i64, i32) #1

declare dso_local i32 @ocfs2_lock_global_qf(%struct.ocfs2_mem_dqinfo*, i32) #1

declare dso_local i32* @ocfs2_start_trans(%struct.ocfs2_super*, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.TYPE_3__* @sb_dqopt(%struct.super_block*) #1

declare dso_local i32 @ocfs2_sync_dquot(%struct.dquot*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @dquot_mark_dquot_dirty(%struct.dquot*) #1

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
