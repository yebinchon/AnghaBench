; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_quota_global.c_ocfs2_global_mem2diskdqb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_quota_global.c_ocfs2_global_mem2diskdqb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dquot = type { i32, %struct.mem_dqblk }
%struct.mem_dqblk = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ocfs2_global_disk_dqblk = type { i64, i64, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.dquot*)* @ocfs2_global_mem2diskdqb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ocfs2_global_mem2diskdqb(i8* %0, %struct.dquot* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.dquot*, align 8
  %5 = alloca %struct.ocfs2_global_disk_dqblk*, align 8
  %6 = alloca %struct.mem_dqblk*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.dquot* %1, %struct.dquot** %4, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.ocfs2_global_disk_dqblk*
  store %struct.ocfs2_global_disk_dqblk* %8, %struct.ocfs2_global_disk_dqblk** %5, align 8
  %9 = load %struct.dquot*, %struct.dquot** %4, align 8
  %10 = getelementptr inbounds %struct.dquot, %struct.dquot* %9, i32 0, i32 1
  store %struct.mem_dqblk* %10, %struct.mem_dqblk** %6, align 8
  %11 = load %struct.dquot*, %struct.dquot** %4, align 8
  %12 = getelementptr inbounds %struct.dquot, %struct.dquot* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i8* @cpu_to_le32(i32 %13)
  %15 = load %struct.ocfs2_global_disk_dqblk*, %struct.ocfs2_global_disk_dqblk** %5, align 8
  %16 = getelementptr inbounds %struct.ocfs2_global_disk_dqblk, %struct.ocfs2_global_disk_dqblk* %15, i32 0, i32 11
  store i8* %14, i8** %16, align 8
  %17 = load %struct.dquot*, %struct.dquot** %4, align 8
  %18 = call %struct.TYPE_2__* @OCFS2_DQUOT(%struct.dquot* %17)
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i8* @cpu_to_le32(i32 %20)
  %22 = load %struct.ocfs2_global_disk_dqblk*, %struct.ocfs2_global_disk_dqblk** %5, align 8
  %23 = getelementptr inbounds %struct.ocfs2_global_disk_dqblk, %struct.ocfs2_global_disk_dqblk* %22, i32 0, i32 10
  store i8* %21, i8** %23, align 8
  %24 = load %struct.mem_dqblk*, %struct.mem_dqblk** %6, align 8
  %25 = getelementptr inbounds %struct.mem_dqblk, %struct.mem_dqblk* %24, i32 0, i32 7
  %26 = load i32, i32* %25, align 4
  %27 = call i8* @cpu_to_le64(i32 %26)
  %28 = load %struct.ocfs2_global_disk_dqblk*, %struct.ocfs2_global_disk_dqblk** %5, align 8
  %29 = getelementptr inbounds %struct.ocfs2_global_disk_dqblk, %struct.ocfs2_global_disk_dqblk* %28, i32 0, i32 9
  store i8* %27, i8** %29, align 8
  %30 = load %struct.mem_dqblk*, %struct.mem_dqblk** %6, align 8
  %31 = getelementptr inbounds %struct.mem_dqblk, %struct.mem_dqblk* %30, i32 0, i32 6
  %32 = load i32, i32* %31, align 4
  %33 = call i8* @cpu_to_le64(i32 %32)
  %34 = load %struct.ocfs2_global_disk_dqblk*, %struct.ocfs2_global_disk_dqblk** %5, align 8
  %35 = getelementptr inbounds %struct.ocfs2_global_disk_dqblk, %struct.ocfs2_global_disk_dqblk* %34, i32 0, i32 8
  store i8* %33, i8** %35, align 8
  %36 = load %struct.mem_dqblk*, %struct.mem_dqblk** %6, align 8
  %37 = getelementptr inbounds %struct.mem_dqblk, %struct.mem_dqblk* %36, i32 0, i32 5
  %38 = load i32, i32* %37, align 4
  %39 = call i8* @cpu_to_le64(i32 %38)
  %40 = load %struct.ocfs2_global_disk_dqblk*, %struct.ocfs2_global_disk_dqblk** %5, align 8
  %41 = getelementptr inbounds %struct.ocfs2_global_disk_dqblk, %struct.ocfs2_global_disk_dqblk* %40, i32 0, i32 7
  store i8* %39, i8** %41, align 8
  %42 = load %struct.mem_dqblk*, %struct.mem_dqblk** %6, align 8
  %43 = getelementptr inbounds %struct.mem_dqblk, %struct.mem_dqblk* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 4
  %45 = call i8* @cpu_to_le64(i32 %44)
  %46 = load %struct.ocfs2_global_disk_dqblk*, %struct.ocfs2_global_disk_dqblk** %5, align 8
  %47 = getelementptr inbounds %struct.ocfs2_global_disk_dqblk, %struct.ocfs2_global_disk_dqblk* %46, i32 0, i32 6
  store i8* %45, i8** %47, align 8
  %48 = load %struct.mem_dqblk*, %struct.mem_dqblk** %6, align 8
  %49 = getelementptr inbounds %struct.mem_dqblk, %struct.mem_dqblk* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = call i8* @cpu_to_le64(i32 %50)
  %52 = load %struct.ocfs2_global_disk_dqblk*, %struct.ocfs2_global_disk_dqblk** %5, align 8
  %53 = getelementptr inbounds %struct.ocfs2_global_disk_dqblk, %struct.ocfs2_global_disk_dqblk* %52, i32 0, i32 5
  store i8* %51, i8** %53, align 8
  %54 = load %struct.mem_dqblk*, %struct.mem_dqblk** %6, align 8
  %55 = getelementptr inbounds %struct.mem_dqblk, %struct.mem_dqblk* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = call i8* @cpu_to_le64(i32 %56)
  %58 = load %struct.ocfs2_global_disk_dqblk*, %struct.ocfs2_global_disk_dqblk** %5, align 8
  %59 = getelementptr inbounds %struct.ocfs2_global_disk_dqblk, %struct.ocfs2_global_disk_dqblk* %58, i32 0, i32 4
  store i8* %57, i8** %59, align 8
  %60 = load %struct.mem_dqblk*, %struct.mem_dqblk** %6, align 8
  %61 = getelementptr inbounds %struct.mem_dqblk, %struct.mem_dqblk* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i8* @cpu_to_le64(i32 %62)
  %64 = load %struct.ocfs2_global_disk_dqblk*, %struct.ocfs2_global_disk_dqblk** %5, align 8
  %65 = getelementptr inbounds %struct.ocfs2_global_disk_dqblk, %struct.ocfs2_global_disk_dqblk* %64, i32 0, i32 3
  store i8* %63, i8** %65, align 8
  %66 = load %struct.mem_dqblk*, %struct.mem_dqblk** %6, align 8
  %67 = getelementptr inbounds %struct.mem_dqblk, %struct.mem_dqblk* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i8* @cpu_to_le64(i32 %68)
  %70 = load %struct.ocfs2_global_disk_dqblk*, %struct.ocfs2_global_disk_dqblk** %5, align 8
  %71 = getelementptr inbounds %struct.ocfs2_global_disk_dqblk, %struct.ocfs2_global_disk_dqblk* %70, i32 0, i32 2
  store i8* %69, i8** %71, align 8
  %72 = load %struct.ocfs2_global_disk_dqblk*, %struct.ocfs2_global_disk_dqblk** %5, align 8
  %73 = getelementptr inbounds %struct.ocfs2_global_disk_dqblk, %struct.ocfs2_global_disk_dqblk* %72, i32 0, i32 0
  store i64 0, i64* %73, align 8
  %74 = load %struct.ocfs2_global_disk_dqblk*, %struct.ocfs2_global_disk_dqblk** %5, align 8
  %75 = getelementptr inbounds %struct.ocfs2_global_disk_dqblk, %struct.ocfs2_global_disk_dqblk* %74, i32 0, i32 1
  store i64 0, i64* %75, align 8
  ret void
}

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local %struct.TYPE_2__* @OCFS2_DQUOT(%struct.dquot*) #1

declare dso_local i8* @cpu_to_le64(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
