; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_quota_global.c_ocfs2_release_dquot.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_quota_global.c_ocfs2_release_dquot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dquot = type { i32, i32, i32 }
%struct.ocfs2_mem_dqinfo = type { i32 }
%struct.ocfs2_super = type { i32 }
%struct.TYPE_2__ = type { %struct.ocfs2_mem_dqinfo* }

@.str = private unnamed_addr constant [15 x i8] c"id=%u, type=%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dquot*)* @ocfs2_release_dquot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_release_dquot(%struct.dquot* %0) #0 {
  %2 = alloca %struct.dquot*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.ocfs2_mem_dqinfo*, align 8
  %5 = alloca %struct.ocfs2_super*, align 8
  %6 = alloca i32, align 4
  store %struct.dquot* %0, %struct.dquot** %2, align 8
  %7 = load %struct.dquot*, %struct.dquot** %2, align 8
  %8 = getelementptr inbounds %struct.dquot, %struct.dquot* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.dquot*, %struct.dquot** %2, align 8
  %11 = getelementptr inbounds %struct.dquot, %struct.dquot* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.TYPE_2__* @sb_dqinfo(i32 %9, i32 %12)
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.ocfs2_mem_dqinfo*, %struct.ocfs2_mem_dqinfo** %14, align 8
  store %struct.ocfs2_mem_dqinfo* %15, %struct.ocfs2_mem_dqinfo** %4, align 8
  %16 = load %struct.dquot*, %struct.dquot** %2, align 8
  %17 = getelementptr inbounds %struct.dquot, %struct.dquot* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.ocfs2_super* @OCFS2_SB(i32 %18)
  store %struct.ocfs2_super* %19, %struct.ocfs2_super** %5, align 8
  store i32 0, i32* %6, align 4
  %20 = load %struct.dquot*, %struct.dquot** %2, align 8
  %21 = getelementptr inbounds %struct.dquot, %struct.dquot* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.dquot*, %struct.dquot** %2, align 8
  %24 = getelementptr inbounds %struct.dquot, %struct.dquot* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @mlog_entry(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %25)
  %27 = load %struct.ocfs2_mem_dqinfo*, %struct.ocfs2_mem_dqinfo** %4, align 8
  %28 = call i32 @ocfs2_lock_global_qf(%struct.ocfs2_mem_dqinfo* %27, i32 1)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %1
  br label %59

32:                                               ; preds = %1
  %33 = load %struct.ocfs2_super*, %struct.ocfs2_super** %5, align 8
  %34 = load %struct.dquot*, %struct.dquot** %2, align 8
  %35 = getelementptr inbounds %struct.dquot, %struct.dquot* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.dquot*, %struct.dquot** %2, align 8
  %38 = getelementptr inbounds %struct.dquot, %struct.dquot* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @ocfs2_calc_qdel_credits(i32 %36, i32 %39)
  %41 = call i32* @ocfs2_start_trans(%struct.ocfs2_super* %33, i32 %40)
  store i32* %41, i32** %3, align 8
  %42 = load i32*, i32** %3, align 8
  %43 = call i64 @IS_ERR(i32* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %32
  %46 = load i32*, i32** %3, align 8
  %47 = call i32 @PTR_ERR(i32* %46)
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @mlog_errno(i32 %48)
  br label %56

50:                                               ; preds = %32
  %51 = load %struct.dquot*, %struct.dquot** %2, align 8
  %52 = call i32 @dquot_release(%struct.dquot* %51)
  store i32 %52, i32* %6, align 4
  %53 = load %struct.ocfs2_super*, %struct.ocfs2_super** %5, align 8
  %54 = load i32*, i32** %3, align 8
  %55 = call i32 @ocfs2_commit_trans(%struct.ocfs2_super* %53, i32* %54)
  br label %56

56:                                               ; preds = %50, %45
  %57 = load %struct.ocfs2_mem_dqinfo*, %struct.ocfs2_mem_dqinfo** %4, align 8
  %58 = call i32 @ocfs2_unlock_global_qf(%struct.ocfs2_mem_dqinfo* %57, i32 1)
  br label %59

59:                                               ; preds = %56, %31
  %60 = load i32, i32* %6, align 4
  %61 = call i32 @mlog_exit(i32 %60)
  %62 = load i32, i32* %6, align 4
  ret i32 %62
}

declare dso_local %struct.TYPE_2__* @sb_dqinfo(i32, i32) #1

declare dso_local %struct.ocfs2_super* @OCFS2_SB(i32) #1

declare dso_local i32 @mlog_entry(i8*, i32, i32) #1

declare dso_local i32 @ocfs2_lock_global_qf(%struct.ocfs2_mem_dqinfo*, i32) #1

declare dso_local i32* @ocfs2_start_trans(%struct.ocfs2_super*, i32) #1

declare dso_local i32 @ocfs2_calc_qdel_credits(i32, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @dquot_release(%struct.dquot*) #1

declare dso_local i32 @ocfs2_commit_trans(%struct.ocfs2_super*, i32*) #1

declare dso_local i32 @ocfs2_unlock_global_qf(%struct.ocfs2_mem_dqinfo*, i32) #1

declare dso_local i32 @mlog_exit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
