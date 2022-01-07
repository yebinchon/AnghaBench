; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_dlmglue.c_ocfs2_qinfo_lock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_dlmglue.c_ocfs2_qinfo_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_mem_dqinfo = type { %struct.TYPE_2__, %struct.ocfs2_lock_res }
%struct.TYPE_2__ = type { i32 }
%struct.ocfs2_lock_res = type { i32 }
%struct.ocfs2_super = type { i32 }

@DLM_LOCK_EX = common dso_local global i32 0, align 4
@DLM_LOCK_PR = common dso_local global i32 0, align 4
@EROFS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_qinfo_lock(%struct.ocfs2_mem_dqinfo* %0, i32 %1) #0 {
  %3 = alloca %struct.ocfs2_mem_dqinfo*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ocfs2_lock_res*, align 8
  %6 = alloca %struct.ocfs2_super*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ocfs2_mem_dqinfo* %0, %struct.ocfs2_mem_dqinfo** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.ocfs2_mem_dqinfo*, %struct.ocfs2_mem_dqinfo** %3, align 8
  %10 = getelementptr inbounds %struct.ocfs2_mem_dqinfo, %struct.ocfs2_mem_dqinfo* %9, i32 0, i32 1
  store %struct.ocfs2_lock_res* %10, %struct.ocfs2_lock_res** %5, align 8
  %11 = load %struct.ocfs2_mem_dqinfo*, %struct.ocfs2_mem_dqinfo** %3, align 8
  %12 = getelementptr inbounds %struct.ocfs2_mem_dqinfo, %struct.ocfs2_mem_dqinfo* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.ocfs2_super* @OCFS2_SB(i32 %14)
  store %struct.ocfs2_super* %15, %struct.ocfs2_super** %6, align 8
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* @DLM_LOCK_EX, align 4
  br label %22

20:                                               ; preds = %2
  %21 = load i32, i32* @DLM_LOCK_PR, align 4
  br label %22

22:                                               ; preds = %20, %18
  %23 = phi i32 [ %19, %18 ], [ %21, %20 ]
  store i32 %23, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %24 = call i32 (...) @mlog_entry_void()
  %25 = load %struct.ocfs2_super*, %struct.ocfs2_super** %6, align 8
  %26 = call i64 @ocfs2_is_hard_readonly(%struct.ocfs2_super* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %22
  %29 = load i32, i32* %4, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = load i32, i32* @EROFS, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %8, align 4
  br label %34

34:                                               ; preds = %31, %28
  br label %68

35:                                               ; preds = %22
  %36 = load %struct.ocfs2_super*, %struct.ocfs2_super** %6, align 8
  %37 = call i64 @ocfs2_mount_local(%struct.ocfs2_super* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  br label %68

40:                                               ; preds = %35
  %41 = load %struct.ocfs2_super*, %struct.ocfs2_super** %6, align 8
  %42 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %5, align 8
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @ocfs2_cluster_lock(%struct.ocfs2_super* %41, %struct.ocfs2_lock_res* %42, i32 %43, i32 0, i32 0)
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %40
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @mlog_errno(i32 %48)
  br label %68

50:                                               ; preds = %40
  %51 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %5, align 8
  %52 = call i32 @ocfs2_should_refresh_lock_res(%struct.ocfs2_lock_res* %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %50
  br label %68

55:                                               ; preds = %50
  %56 = load %struct.ocfs2_mem_dqinfo*, %struct.ocfs2_mem_dqinfo** %3, align 8
  %57 = call i32 @ocfs2_refresh_qinfo(%struct.ocfs2_mem_dqinfo* %56)
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* %8, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %55
  %61 = load %struct.ocfs2_mem_dqinfo*, %struct.ocfs2_mem_dqinfo** %3, align 8
  %62 = load i32, i32* %4, align 4
  %63 = call i32 @ocfs2_qinfo_unlock(%struct.ocfs2_mem_dqinfo* %61, i32 %62)
  br label %64

64:                                               ; preds = %60, %55
  %65 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %5, align 8
  %66 = load i32, i32* %8, align 4
  %67 = call i32 @ocfs2_complete_lock_res_refresh(%struct.ocfs2_lock_res* %65, i32 %66)
  br label %68

68:                                               ; preds = %64, %54, %47, %39, %34
  %69 = load i32, i32* %8, align 4
  %70 = call i32 @mlog_exit(i32 %69)
  %71 = load i32, i32* %8, align 4
  ret i32 %71
}

declare dso_local %struct.ocfs2_super* @OCFS2_SB(i32) #1

declare dso_local i32 @mlog_entry_void(...) #1

declare dso_local i64 @ocfs2_is_hard_readonly(%struct.ocfs2_super*) #1

declare dso_local i64 @ocfs2_mount_local(%struct.ocfs2_super*) #1

declare dso_local i32 @ocfs2_cluster_lock(%struct.ocfs2_super*, %struct.ocfs2_lock_res*, i32, i32, i32) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_should_refresh_lock_res(%struct.ocfs2_lock_res*) #1

declare dso_local i32 @ocfs2_refresh_qinfo(%struct.ocfs2_mem_dqinfo*) #1

declare dso_local i32 @ocfs2_qinfo_unlock(%struct.ocfs2_mem_dqinfo*, i32) #1

declare dso_local i32 @ocfs2_complete_lock_res_refresh(%struct.ocfs2_lock_res*, i32) #1

declare dso_local i32 @mlog_exit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
