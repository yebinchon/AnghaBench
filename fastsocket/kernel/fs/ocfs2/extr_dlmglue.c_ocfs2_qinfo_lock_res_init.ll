; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_dlmglue.c_ocfs2_qinfo_lock_res_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_dlmglue.c_ocfs2_qinfo_lock_res_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_lock_res = type { i32 }
%struct.ocfs2_mem_dqinfo = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@OCFS2_LOCK_TYPE_QINFO = common dso_local global i32 0, align 4
@ocfs2_qinfo_lops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ocfs2_qinfo_lock_res_init(%struct.ocfs2_lock_res* %0, %struct.ocfs2_mem_dqinfo* %1) #0 {
  %3 = alloca %struct.ocfs2_lock_res*, align 8
  %4 = alloca %struct.ocfs2_mem_dqinfo*, align 8
  store %struct.ocfs2_lock_res* %0, %struct.ocfs2_lock_res** %3, align 8
  store %struct.ocfs2_mem_dqinfo* %1, %struct.ocfs2_mem_dqinfo** %4, align 8
  %5 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %3, align 8
  %6 = call i32 @ocfs2_lock_res_init_once(%struct.ocfs2_lock_res* %5)
  %7 = load i32, i32* @OCFS2_LOCK_TYPE_QINFO, align 4
  %8 = load %struct.ocfs2_mem_dqinfo*, %struct.ocfs2_mem_dqinfo** %4, align 8
  %9 = getelementptr inbounds %struct.ocfs2_mem_dqinfo, %struct.ocfs2_mem_dqinfo* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %3, align 8
  %13 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @ocfs2_build_lock_name(i32 %7, i32 %11, i32 0, i32 %14)
  %16 = load %struct.ocfs2_mem_dqinfo*, %struct.ocfs2_mem_dqinfo** %4, align 8
  %17 = getelementptr inbounds %struct.ocfs2_mem_dqinfo, %struct.ocfs2_mem_dqinfo* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @OCFS2_SB(i32 %19)
  %21 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %3, align 8
  %22 = load i32, i32* @OCFS2_LOCK_TYPE_QINFO, align 4
  %23 = load %struct.ocfs2_mem_dqinfo*, %struct.ocfs2_mem_dqinfo** %4, align 8
  %24 = call i32 @ocfs2_lock_res_init_common(i32 %20, %struct.ocfs2_lock_res* %21, i32 %22, i32* @ocfs2_qinfo_lops, %struct.ocfs2_mem_dqinfo* %23)
  ret void
}

declare dso_local i32 @ocfs2_lock_res_init_once(%struct.ocfs2_lock_res*) #1

declare dso_local i32 @ocfs2_build_lock_name(i32, i32, i32, i32) #1

declare dso_local i32 @ocfs2_lock_res_init_common(i32, %struct.ocfs2_lock_res*, i32, i32*, %struct.ocfs2_mem_dqinfo*) #1

declare dso_local i32 @OCFS2_SB(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
