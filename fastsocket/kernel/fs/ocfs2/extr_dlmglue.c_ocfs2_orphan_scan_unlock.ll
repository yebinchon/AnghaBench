; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_dlmglue.c_ocfs2_orphan_scan_unlock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_dlmglue.c_ocfs2_orphan_scan_unlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_super = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ocfs2_lock_res }
%struct.ocfs2_lock_res = type { i32 }
%struct.ocfs2_orphan_scan_lvb = type { i32, i32 }

@OCFS2_ORPHAN_LVB_VERSION = common dso_local global i32 0, align 4
@DLM_LOCK_EX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ocfs2_orphan_scan_unlock(%struct.ocfs2_super* %0, i32 %1) #0 {
  %3 = alloca %struct.ocfs2_super*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ocfs2_lock_res*, align 8
  %6 = alloca %struct.ocfs2_orphan_scan_lvb*, align 8
  store %struct.ocfs2_super* %0, %struct.ocfs2_super** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %8 = call i32 @ocfs2_is_hard_readonly(%struct.ocfs2_super* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %32, label %10

10:                                               ; preds = %2
  %11 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %12 = call i32 @ocfs2_mount_local(%struct.ocfs2_super* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %32, label %14

14:                                               ; preds = %10
  %15 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %16 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  store %struct.ocfs2_lock_res* %17, %struct.ocfs2_lock_res** %5, align 8
  %18 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %5, align 8
  %19 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %18, i32 0, i32 0
  %20 = call %struct.ocfs2_orphan_scan_lvb* @ocfs2_dlm_lvb(i32* %19)
  store %struct.ocfs2_orphan_scan_lvb* %20, %struct.ocfs2_orphan_scan_lvb** %6, align 8
  %21 = load i32, i32* @OCFS2_ORPHAN_LVB_VERSION, align 4
  %22 = load %struct.ocfs2_orphan_scan_lvb*, %struct.ocfs2_orphan_scan_lvb** %6, align 8
  %23 = getelementptr inbounds %struct.ocfs2_orphan_scan_lvb, %struct.ocfs2_orphan_scan_lvb* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @cpu_to_be32(i32 %24)
  %26 = load %struct.ocfs2_orphan_scan_lvb*, %struct.ocfs2_orphan_scan_lvb** %6, align 8
  %27 = getelementptr inbounds %struct.ocfs2_orphan_scan_lvb, %struct.ocfs2_orphan_scan_lvb* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  %28 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %29 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %5, align 8
  %30 = load i32, i32* @DLM_LOCK_EX, align 4
  %31 = call i32 @ocfs2_cluster_unlock(%struct.ocfs2_super* %28, %struct.ocfs2_lock_res* %29, i32 %30)
  br label %32

32:                                               ; preds = %14, %10, %2
  ret void
}

declare dso_local i32 @ocfs2_is_hard_readonly(%struct.ocfs2_super*) #1

declare dso_local i32 @ocfs2_mount_local(%struct.ocfs2_super*) #1

declare dso_local %struct.ocfs2_orphan_scan_lvb* @ocfs2_dlm_lvb(i32*) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @ocfs2_cluster_unlock(%struct.ocfs2_super*, %struct.ocfs2_lock_res*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
