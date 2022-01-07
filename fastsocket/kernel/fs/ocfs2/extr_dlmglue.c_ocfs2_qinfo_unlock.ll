; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_dlmglue.c_ocfs2_qinfo_unlock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_dlmglue.c_ocfs2_qinfo_unlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_mem_dqinfo = type { %struct.TYPE_2__, %struct.ocfs2_lock_res }
%struct.TYPE_2__ = type { i32 }
%struct.ocfs2_lock_res = type { i32 }
%struct.ocfs2_super = type { i32 }

@DLM_LOCK_EX = common dso_local global i32 0, align 4
@DLM_LOCK_PR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ocfs2_qinfo_unlock(%struct.ocfs2_mem_dqinfo* %0, i32 %1) #0 {
  %3 = alloca %struct.ocfs2_mem_dqinfo*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ocfs2_lock_res*, align 8
  %6 = alloca %struct.ocfs2_super*, align 8
  %7 = alloca i32, align 4
  store %struct.ocfs2_mem_dqinfo* %0, %struct.ocfs2_mem_dqinfo** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.ocfs2_mem_dqinfo*, %struct.ocfs2_mem_dqinfo** %3, align 8
  %9 = getelementptr inbounds %struct.ocfs2_mem_dqinfo, %struct.ocfs2_mem_dqinfo* %8, i32 0, i32 1
  store %struct.ocfs2_lock_res* %9, %struct.ocfs2_lock_res** %5, align 8
  %10 = load %struct.ocfs2_mem_dqinfo*, %struct.ocfs2_mem_dqinfo** %3, align 8
  %11 = getelementptr inbounds %struct.ocfs2_mem_dqinfo, %struct.ocfs2_mem_dqinfo* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.ocfs2_super* @OCFS2_SB(i32 %13)
  store %struct.ocfs2_super* %14, %struct.ocfs2_super** %6, align 8
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* @DLM_LOCK_EX, align 4
  br label %21

19:                                               ; preds = %2
  %20 = load i32, i32* @DLM_LOCK_PR, align 4
  br label %21

21:                                               ; preds = %19, %17
  %22 = phi i32 [ %18, %17 ], [ %20, %19 ]
  store i32 %22, i32* %7, align 4
  %23 = call i32 (...) @mlog_entry_void()
  %24 = load %struct.ocfs2_super*, %struct.ocfs2_super** %6, align 8
  %25 = call i32 @ocfs2_is_hard_readonly(%struct.ocfs2_super* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %36, label %27

27:                                               ; preds = %21
  %28 = load %struct.ocfs2_super*, %struct.ocfs2_super** %6, align 8
  %29 = call i32 @ocfs2_mount_local(%struct.ocfs2_super* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %27
  %32 = load %struct.ocfs2_super*, %struct.ocfs2_super** %6, align 8
  %33 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %5, align 8
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @ocfs2_cluster_unlock(%struct.ocfs2_super* %32, %struct.ocfs2_lock_res* %33, i32 %34)
  br label %36

36:                                               ; preds = %31, %27, %21
  %37 = call i32 (...) @mlog_exit_void()
  ret void
}

declare dso_local %struct.ocfs2_super* @OCFS2_SB(i32) #1

declare dso_local i32 @mlog_entry_void(...) #1

declare dso_local i32 @ocfs2_is_hard_readonly(%struct.ocfs2_super*) #1

declare dso_local i32 @ocfs2_mount_local(%struct.ocfs2_super*) #1

declare dso_local i32 @ocfs2_cluster_unlock(%struct.ocfs2_super*, %struct.ocfs2_lock_res*, i32) #1

declare dso_local i32 @mlog_exit_void(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
