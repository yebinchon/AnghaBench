; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_quota_local.c_olq_set_dquot.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_quota_local.c_olq_set_dquot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer_head = type { i64 }
%struct.ocfs2_dquot = type { %struct.TYPE_4__, i64, i64, i32 }
%struct.TYPE_4__ = type { i64, %struct.TYPE_3__, %struct.super_block* }
%struct.TYPE_3__ = type { i64, i64 }
%struct.super_block = type { i32 }
%struct.ocfs2_local_disk_dqblk = type { i8*, i8*, i8* }

@dq_data_lock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Writing local dquot %u space %lld inodes %lld\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.buffer_head*, i8*)* @olq_set_dquot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @olq_set_dquot(%struct.buffer_head* %0, i8* %1) #0 {
  %3 = alloca %struct.buffer_head*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ocfs2_dquot*, align 8
  %6 = alloca %struct.ocfs2_local_disk_dqblk*, align 8
  %7 = alloca %struct.super_block*, align 8
  store %struct.buffer_head* %0, %struct.buffer_head** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.ocfs2_dquot*
  store %struct.ocfs2_dquot* %9, %struct.ocfs2_dquot** %5, align 8
  %10 = load %struct.ocfs2_dquot*, %struct.ocfs2_dquot** %5, align 8
  %11 = getelementptr inbounds %struct.ocfs2_dquot, %struct.ocfs2_dquot* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 2
  %13 = load %struct.super_block*, %struct.super_block** %12, align 8
  store %struct.super_block* %13, %struct.super_block** %7, align 8
  %14 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %15 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.super_block*, %struct.super_block** %7, align 8
  %18 = load %struct.ocfs2_dquot*, %struct.ocfs2_dquot** %5, align 8
  %19 = getelementptr inbounds %struct.ocfs2_dquot, %struct.ocfs2_dquot* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 8
  %21 = call i64 @ol_dqblk_block_offset(%struct.super_block* %17, i32 %20)
  %22 = add nsw i64 %16, %21
  %23 = inttoptr i64 %22 to %struct.ocfs2_local_disk_dqblk*
  store %struct.ocfs2_local_disk_dqblk* %23, %struct.ocfs2_local_disk_dqblk** %6, align 8
  %24 = load %struct.ocfs2_dquot*, %struct.ocfs2_dquot** %5, align 8
  %25 = getelementptr inbounds %struct.ocfs2_dquot, %struct.ocfs2_dquot* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = call i8* @cpu_to_le64(i64 %27)
  %29 = load %struct.ocfs2_local_disk_dqblk*, %struct.ocfs2_local_disk_dqblk** %6, align 8
  %30 = getelementptr inbounds %struct.ocfs2_local_disk_dqblk, %struct.ocfs2_local_disk_dqblk* %29, i32 0, i32 2
  store i8* %28, i8** %30, align 8
  %31 = call i32 @spin_lock(i32* @dq_data_lock)
  %32 = load %struct.ocfs2_dquot*, %struct.ocfs2_dquot** %5, align 8
  %33 = getelementptr inbounds %struct.ocfs2_dquot, %struct.ocfs2_dquot* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.ocfs2_dquot*, %struct.ocfs2_dquot** %5, align 8
  %38 = getelementptr inbounds %struct.ocfs2_dquot, %struct.ocfs2_dquot* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = sub nsw i64 %36, %39
  %41 = call i8* @cpu_to_le64(i64 %40)
  %42 = load %struct.ocfs2_local_disk_dqblk*, %struct.ocfs2_local_disk_dqblk** %6, align 8
  %43 = getelementptr inbounds %struct.ocfs2_local_disk_dqblk, %struct.ocfs2_local_disk_dqblk* %42, i32 0, i32 1
  store i8* %41, i8** %43, align 8
  %44 = load %struct.ocfs2_dquot*, %struct.ocfs2_dquot** %5, align 8
  %45 = getelementptr inbounds %struct.ocfs2_dquot, %struct.ocfs2_dquot* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.ocfs2_dquot*, %struct.ocfs2_dquot** %5, align 8
  %50 = getelementptr inbounds %struct.ocfs2_dquot, %struct.ocfs2_dquot* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = sub nsw i64 %48, %51
  %53 = call i8* @cpu_to_le64(i64 %52)
  %54 = load %struct.ocfs2_local_disk_dqblk*, %struct.ocfs2_local_disk_dqblk** %6, align 8
  %55 = getelementptr inbounds %struct.ocfs2_local_disk_dqblk, %struct.ocfs2_local_disk_dqblk* %54, i32 0, i32 0
  store i8* %53, i8** %55, align 8
  %56 = call i32 @spin_unlock(i32* @dq_data_lock)
  %57 = load %struct.ocfs2_dquot*, %struct.ocfs2_dquot** %5, align 8
  %58 = getelementptr inbounds %struct.ocfs2_dquot, %struct.ocfs2_dquot* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.ocfs2_local_disk_dqblk*, %struct.ocfs2_local_disk_dqblk** %6, align 8
  %62 = getelementptr inbounds %struct.ocfs2_local_disk_dqblk, %struct.ocfs2_local_disk_dqblk* %61, i32 0, i32 1
  %63 = load i8*, i8** %62, align 8
  %64 = call i64 @le64_to_cpu(i8* %63)
  %65 = load %struct.ocfs2_local_disk_dqblk*, %struct.ocfs2_local_disk_dqblk** %6, align 8
  %66 = getelementptr inbounds %struct.ocfs2_local_disk_dqblk, %struct.ocfs2_local_disk_dqblk* %65, i32 0, i32 0
  %67 = load i8*, i8** %66, align 8
  %68 = call i64 @le64_to_cpu(i8* %67)
  %69 = call i32 @mlog(i32 0, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i64 %60, i64 %64, i64 %68)
  ret void
}

declare dso_local i64 @ol_dqblk_block_offset(%struct.super_block*, i32) #1

declare dso_local i8* @cpu_to_le64(i64) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @mlog(i32, i8*, i64, i64, i64) #1

declare dso_local i64 @le64_to_cpu(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
