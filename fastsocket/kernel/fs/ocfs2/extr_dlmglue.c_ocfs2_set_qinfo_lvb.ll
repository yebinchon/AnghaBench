; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_dlmglue.c_ocfs2_set_qinfo_lvb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_dlmglue.c_ocfs2_set_qinfo_lvb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_lock_res = type { i32 }
%struct.ocfs2_qinfo_lvb = type { i8*, i8*, i8*, i8*, i8*, i8*, i32 }
%struct.ocfs2_mem_dqinfo = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }
%struct.mem_dqinfo = type { i32, i32 }

@OCFS2_QINFO_LVB_VERSION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ocfs2_lock_res*)* @ocfs2_set_qinfo_lvb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ocfs2_set_qinfo_lvb(%struct.ocfs2_lock_res* %0) #0 {
  %2 = alloca %struct.ocfs2_lock_res*, align 8
  %3 = alloca %struct.ocfs2_qinfo_lvb*, align 8
  %4 = alloca %struct.ocfs2_mem_dqinfo*, align 8
  %5 = alloca %struct.mem_dqinfo*, align 8
  store %struct.ocfs2_lock_res* %0, %struct.ocfs2_lock_res** %2, align 8
  %6 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %2, align 8
  %7 = call %struct.ocfs2_mem_dqinfo* @ocfs2_lock_res_qinfo(%struct.ocfs2_lock_res* %6)
  store %struct.ocfs2_mem_dqinfo* %7, %struct.ocfs2_mem_dqinfo** %4, align 8
  %8 = load %struct.ocfs2_mem_dqinfo*, %struct.ocfs2_mem_dqinfo** %4, align 8
  %9 = getelementptr inbounds %struct.ocfs2_mem_dqinfo, %struct.ocfs2_mem_dqinfo* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 4
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.ocfs2_mem_dqinfo*, %struct.ocfs2_mem_dqinfo** %4, align 8
  %13 = getelementptr inbounds %struct.ocfs2_mem_dqinfo, %struct.ocfs2_mem_dqinfo* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.mem_dqinfo* @sb_dqinfo(i32 %11, i32 %15)
  store %struct.mem_dqinfo* %16, %struct.mem_dqinfo** %5, align 8
  %17 = call i32 (...) @mlog_entry_void()
  %18 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %2, align 8
  %19 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %18, i32 0, i32 0
  %20 = call %struct.ocfs2_qinfo_lvb* @ocfs2_dlm_lvb(i32* %19)
  store %struct.ocfs2_qinfo_lvb* %20, %struct.ocfs2_qinfo_lvb** %3, align 8
  %21 = load i32, i32* @OCFS2_QINFO_LVB_VERSION, align 4
  %22 = load %struct.ocfs2_qinfo_lvb*, %struct.ocfs2_qinfo_lvb** %3, align 8
  %23 = getelementptr inbounds %struct.ocfs2_qinfo_lvb, %struct.ocfs2_qinfo_lvb* %22, i32 0, i32 6
  store i32 %21, i32* %23, align 8
  %24 = load %struct.mem_dqinfo*, %struct.mem_dqinfo** %5, align 8
  %25 = getelementptr inbounds %struct.mem_dqinfo, %struct.mem_dqinfo* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i8* @cpu_to_be32(i32 %26)
  %28 = load %struct.ocfs2_qinfo_lvb*, %struct.ocfs2_qinfo_lvb** %3, align 8
  %29 = getelementptr inbounds %struct.ocfs2_qinfo_lvb, %struct.ocfs2_qinfo_lvb* %28, i32 0, i32 5
  store i8* %27, i8** %29, align 8
  %30 = load %struct.mem_dqinfo*, %struct.mem_dqinfo** %5, align 8
  %31 = getelementptr inbounds %struct.mem_dqinfo, %struct.mem_dqinfo* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i8* @cpu_to_be32(i32 %32)
  %34 = load %struct.ocfs2_qinfo_lvb*, %struct.ocfs2_qinfo_lvb** %3, align 8
  %35 = getelementptr inbounds %struct.ocfs2_qinfo_lvb, %struct.ocfs2_qinfo_lvb* %34, i32 0, i32 4
  store i8* %33, i8** %35, align 8
  %36 = load %struct.ocfs2_mem_dqinfo*, %struct.ocfs2_mem_dqinfo** %4, align 8
  %37 = getelementptr inbounds %struct.ocfs2_mem_dqinfo, %struct.ocfs2_mem_dqinfo* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i8* @cpu_to_be32(i32 %38)
  %40 = load %struct.ocfs2_qinfo_lvb*, %struct.ocfs2_qinfo_lvb** %3, align 8
  %41 = getelementptr inbounds %struct.ocfs2_qinfo_lvb, %struct.ocfs2_qinfo_lvb* %40, i32 0, i32 3
  store i8* %39, i8** %41, align 8
  %42 = load %struct.ocfs2_mem_dqinfo*, %struct.ocfs2_mem_dqinfo** %4, align 8
  %43 = getelementptr inbounds %struct.ocfs2_mem_dqinfo, %struct.ocfs2_mem_dqinfo* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = call i8* @cpu_to_be32(i32 %45)
  %47 = load %struct.ocfs2_qinfo_lvb*, %struct.ocfs2_qinfo_lvb** %3, align 8
  %48 = getelementptr inbounds %struct.ocfs2_qinfo_lvb, %struct.ocfs2_qinfo_lvb* %47, i32 0, i32 2
  store i8* %46, i8** %48, align 8
  %49 = load %struct.ocfs2_mem_dqinfo*, %struct.ocfs2_mem_dqinfo** %4, align 8
  %50 = getelementptr inbounds %struct.ocfs2_mem_dqinfo, %struct.ocfs2_mem_dqinfo* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i8* @cpu_to_be32(i32 %52)
  %54 = load %struct.ocfs2_qinfo_lvb*, %struct.ocfs2_qinfo_lvb** %3, align 8
  %55 = getelementptr inbounds %struct.ocfs2_qinfo_lvb, %struct.ocfs2_qinfo_lvb* %54, i32 0, i32 1
  store i8* %53, i8** %55, align 8
  %56 = load %struct.ocfs2_mem_dqinfo*, %struct.ocfs2_mem_dqinfo** %4, align 8
  %57 = getelementptr inbounds %struct.ocfs2_mem_dqinfo, %struct.ocfs2_mem_dqinfo* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i8* @cpu_to_be32(i32 %59)
  %61 = load %struct.ocfs2_qinfo_lvb*, %struct.ocfs2_qinfo_lvb** %3, align 8
  %62 = getelementptr inbounds %struct.ocfs2_qinfo_lvb, %struct.ocfs2_qinfo_lvb* %61, i32 0, i32 0
  store i8* %60, i8** %62, align 8
  %63 = call i32 (...) @mlog_exit_void()
  ret void
}

declare dso_local %struct.ocfs2_mem_dqinfo* @ocfs2_lock_res_qinfo(%struct.ocfs2_lock_res*) #1

declare dso_local %struct.mem_dqinfo* @sb_dqinfo(i32, i32) #1

declare dso_local i32 @mlog_entry_void(...) #1

declare dso_local %struct.ocfs2_qinfo_lvb* @ocfs2_dlm_lvb(i32*) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @mlog_exit_void(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
