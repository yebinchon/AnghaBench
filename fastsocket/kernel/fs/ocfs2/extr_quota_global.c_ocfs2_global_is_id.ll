; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_quota_global.c_ocfs2_global_is_id.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_quota_global.c_ocfs2_global_is_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dquot = type { i64, i32, i32 }
%struct.ocfs2_global_disk_dqblk = type { i32 }
%struct.ocfs2_mem_dqinfo = type { i32 }
%struct.TYPE_2__ = type { %struct.ocfs2_mem_dqinfo* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.dquot*)* @ocfs2_global_is_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_global_is_id(i8* %0, %struct.dquot* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.dquot*, align 8
  %6 = alloca %struct.ocfs2_global_disk_dqblk*, align 8
  %7 = alloca %struct.ocfs2_mem_dqinfo*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.dquot* %1, %struct.dquot** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.ocfs2_global_disk_dqblk*
  store %struct.ocfs2_global_disk_dqblk* %9, %struct.ocfs2_global_disk_dqblk** %6, align 8
  %10 = load %struct.dquot*, %struct.dquot** %5, align 8
  %11 = getelementptr inbounds %struct.dquot, %struct.dquot* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.dquot*, %struct.dquot** %5, align 8
  %14 = getelementptr inbounds %struct.dquot, %struct.dquot* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = call %struct.TYPE_2__* @sb_dqinfo(i32 %12, i32 %15)
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load %struct.ocfs2_mem_dqinfo*, %struct.ocfs2_mem_dqinfo** %17, align 8
  store %struct.ocfs2_mem_dqinfo* %18, %struct.ocfs2_mem_dqinfo** %7, align 8
  %19 = load %struct.ocfs2_mem_dqinfo*, %struct.ocfs2_mem_dqinfo** %7, align 8
  %20 = getelementptr inbounds %struct.ocfs2_mem_dqinfo, %struct.ocfs2_mem_dqinfo* %19, i32 0, i32 0
  %21 = load i8*, i8** %4, align 8
  %22 = call i64 @qtree_entry_unused(i32* %20, i8* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %35

25:                                               ; preds = %2
  %26 = load %struct.ocfs2_global_disk_dqblk*, %struct.ocfs2_global_disk_dqblk** %6, align 8
  %27 = getelementptr inbounds %struct.ocfs2_global_disk_dqblk, %struct.ocfs2_global_disk_dqblk* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @le32_to_cpu(i32 %28)
  %30 = load %struct.dquot*, %struct.dquot** %5, align 8
  %31 = getelementptr inbounds %struct.dquot, %struct.dquot* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %29, %32
  %34 = zext i1 %33 to i32
  store i32 %34, i32* %3, align 4
  br label %35

35:                                               ; preds = %25, %24
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local %struct.TYPE_2__* @sb_dqinfo(i32, i32) #1

declare dso_local i64 @qtree_entry_unused(i32*, i8*) #1

declare dso_local i64 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
