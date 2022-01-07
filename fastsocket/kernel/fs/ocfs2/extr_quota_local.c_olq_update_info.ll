; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_quota_local.c_olq_update_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_quota_local.c_olq_update_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer_head = type { i64 }
%struct.mem_dqinfo = type { i32, %struct.ocfs2_mem_dqinfo* }
%struct.ocfs2_mem_dqinfo = type { i32, i32 }
%struct.ocfs2_local_disk_dqinfo = type { i8*, i8*, i8* }

@OCFS2_LOCAL_INFO_OFF = common dso_local global i64 0, align 8
@dq_data_lock = common dso_local global i32 0, align 4
@DQF_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.buffer_head*, i8*)* @olq_update_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @olq_update_info(%struct.buffer_head* %0, i8* %1) #0 {
  %3 = alloca %struct.buffer_head*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.mem_dqinfo*, align 8
  %6 = alloca %struct.ocfs2_mem_dqinfo*, align 8
  %7 = alloca %struct.ocfs2_local_disk_dqinfo*, align 8
  store %struct.buffer_head* %0, %struct.buffer_head** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.mem_dqinfo*
  store %struct.mem_dqinfo* %9, %struct.mem_dqinfo** %5, align 8
  %10 = load %struct.mem_dqinfo*, %struct.mem_dqinfo** %5, align 8
  %11 = getelementptr inbounds %struct.mem_dqinfo, %struct.mem_dqinfo* %10, i32 0, i32 1
  %12 = load %struct.ocfs2_mem_dqinfo*, %struct.ocfs2_mem_dqinfo** %11, align 8
  store %struct.ocfs2_mem_dqinfo* %12, %struct.ocfs2_mem_dqinfo** %6, align 8
  %13 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %14 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @OCFS2_LOCAL_INFO_OFF, align 8
  %17 = add nsw i64 %15, %16
  %18 = inttoptr i64 %17 to %struct.ocfs2_local_disk_dqinfo*
  store %struct.ocfs2_local_disk_dqinfo* %18, %struct.ocfs2_local_disk_dqinfo** %7, align 8
  %19 = call i32 @spin_lock(i32* @dq_data_lock)
  %20 = load %struct.mem_dqinfo*, %struct.mem_dqinfo** %5, align 8
  %21 = getelementptr inbounds %struct.mem_dqinfo, %struct.mem_dqinfo* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @DQF_MASK, align 4
  %24 = and i32 %22, %23
  %25 = call i8* @cpu_to_le32(i32 %24)
  %26 = load %struct.ocfs2_local_disk_dqinfo*, %struct.ocfs2_local_disk_dqinfo** %7, align 8
  %27 = getelementptr inbounds %struct.ocfs2_local_disk_dqinfo, %struct.ocfs2_local_disk_dqinfo* %26, i32 0, i32 2
  store i8* %25, i8** %27, align 8
  %28 = load %struct.ocfs2_mem_dqinfo*, %struct.ocfs2_mem_dqinfo** %6, align 8
  %29 = getelementptr inbounds %struct.ocfs2_mem_dqinfo, %struct.ocfs2_mem_dqinfo* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i8* @cpu_to_le32(i32 %30)
  %32 = load %struct.ocfs2_local_disk_dqinfo*, %struct.ocfs2_local_disk_dqinfo** %7, align 8
  %33 = getelementptr inbounds %struct.ocfs2_local_disk_dqinfo, %struct.ocfs2_local_disk_dqinfo* %32, i32 0, i32 1
  store i8* %31, i8** %33, align 8
  %34 = load %struct.ocfs2_mem_dqinfo*, %struct.ocfs2_mem_dqinfo** %6, align 8
  %35 = getelementptr inbounds %struct.ocfs2_mem_dqinfo, %struct.ocfs2_mem_dqinfo* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i8* @cpu_to_le32(i32 %36)
  %38 = load %struct.ocfs2_local_disk_dqinfo*, %struct.ocfs2_local_disk_dqinfo** %7, align 8
  %39 = getelementptr inbounds %struct.ocfs2_local_disk_dqinfo, %struct.ocfs2_local_disk_dqinfo* %38, i32 0, i32 0
  store i8* %37, i8** %39, align 8
  %40 = call i32 @spin_unlock(i32* @dq_data_lock)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
