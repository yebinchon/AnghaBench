; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_quota_global.c_ocfs2_write_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_quota_global.c_ocfs2_write_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.ocfs2_mem_dqinfo = type { i32 }
%struct.TYPE_2__ = type { %struct.ocfs2_mem_dqinfo* }

@OCFS2_QINFO_WRITE_CREDITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, i32)* @ocfs2_write_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_write_info(%struct.super_block* %0, i32 %1) #0 {
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ocfs2_mem_dqinfo*, align 8
  store %struct.super_block* %0, %struct.super_block** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  %8 = load %struct.super_block*, %struct.super_block** %3, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call %struct.TYPE_2__* @sb_dqinfo(%struct.super_block* %8, i32 %9)
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.ocfs2_mem_dqinfo*, %struct.ocfs2_mem_dqinfo** %11, align 8
  store %struct.ocfs2_mem_dqinfo* %12, %struct.ocfs2_mem_dqinfo** %7, align 8
  %13 = call i32 (...) @mlog_entry_void()
  %14 = load %struct.ocfs2_mem_dqinfo*, %struct.ocfs2_mem_dqinfo** %7, align 8
  %15 = call i32 @ocfs2_lock_global_qf(%struct.ocfs2_mem_dqinfo* %14, i32 1)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  br label %43

19:                                               ; preds = %2
  %20 = load %struct.super_block*, %struct.super_block** %3, align 8
  %21 = call i32 @OCFS2_SB(%struct.super_block* %20)
  %22 = load i32, i32* @OCFS2_QINFO_WRITE_CREDITS, align 4
  %23 = call i32* @ocfs2_start_trans(i32 %21, i32 %22)
  store i32* %23, i32** %5, align 8
  %24 = load i32*, i32** %5, align 8
  %25 = call i64 @IS_ERR(i32* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %19
  %28 = load i32*, i32** %5, align 8
  %29 = call i32 @PTR_ERR(i32* %28)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @mlog_errno(i32 %30)
  br label %40

32:                                               ; preds = %19
  %33 = load %struct.super_block*, %struct.super_block** %3, align 8
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @dquot_commit_info(%struct.super_block* %33, i32 %34)
  store i32 %35, i32* %6, align 4
  %36 = load %struct.super_block*, %struct.super_block** %3, align 8
  %37 = call i32 @OCFS2_SB(%struct.super_block* %36)
  %38 = load i32*, i32** %5, align 8
  %39 = call i32 @ocfs2_commit_trans(i32 %37, i32* %38)
  br label %40

40:                                               ; preds = %32, %27
  %41 = load %struct.ocfs2_mem_dqinfo*, %struct.ocfs2_mem_dqinfo** %7, align 8
  %42 = call i32 @ocfs2_unlock_global_qf(%struct.ocfs2_mem_dqinfo* %41, i32 1)
  br label %43

43:                                               ; preds = %40, %18
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @mlog_exit(i32 %44)
  %46 = load i32, i32* %6, align 4
  ret i32 %46
}

declare dso_local %struct.TYPE_2__* @sb_dqinfo(%struct.super_block*, i32) #1

declare dso_local i32 @mlog_entry_void(...) #1

declare dso_local i32 @ocfs2_lock_global_qf(%struct.ocfs2_mem_dqinfo*, i32) #1

declare dso_local i32* @ocfs2_start_trans(i32, i32) #1

declare dso_local i32 @OCFS2_SB(%struct.super_block*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @dquot_commit_info(%struct.super_block*, i32) #1

declare dso_local i32 @ocfs2_commit_trans(i32, i32*) #1

declare dso_local i32 @ocfs2_unlock_global_qf(%struct.ocfs2_mem_dqinfo*, i32) #1

declare dso_local i32 @mlog_exit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
