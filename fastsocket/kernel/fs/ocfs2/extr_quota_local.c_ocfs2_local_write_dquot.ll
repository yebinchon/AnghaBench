; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_quota_local.c_ocfs2_local_write_dquot.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_quota_local.c_ocfs2_local_write_dquot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dquot = type { i64, %struct.super_block* }
%struct.super_block = type { i32 }
%struct.ocfs2_dquot = type { i32 }
%struct.buffer_head = type { i32 }
%struct.TYPE_2__ = type { i32* }

@olq_set_dquot = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dquot*)* @ocfs2_local_write_dquot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_local_write_dquot(%struct.dquot* %0) #0 {
  %2 = alloca %struct.dquot*, align 8
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca %struct.ocfs2_dquot*, align 8
  %5 = alloca %struct.buffer_head*, align 8
  %6 = alloca i32, align 4
  store %struct.dquot* %0, %struct.dquot** %2, align 8
  %7 = load %struct.dquot*, %struct.dquot** %2, align 8
  %8 = getelementptr inbounds %struct.dquot, %struct.dquot* %7, i32 0, i32 1
  %9 = load %struct.super_block*, %struct.super_block** %8, align 8
  store %struct.super_block* %9, %struct.super_block** %3, align 8
  %10 = load %struct.dquot*, %struct.dquot** %2, align 8
  %11 = call %struct.ocfs2_dquot* @OCFS2_DQUOT(%struct.dquot* %10)
  store %struct.ocfs2_dquot* %11, %struct.ocfs2_dquot** %4, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %5, align 8
  %12 = load %struct.super_block*, %struct.super_block** %3, align 8
  %13 = call %struct.TYPE_2__* @sb_dqopt(%struct.super_block* %12)
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = load %struct.dquot*, %struct.dquot** %2, align 8
  %17 = getelementptr inbounds %struct.dquot, %struct.dquot* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = getelementptr inbounds i32, i32* %15, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.super_block*, %struct.super_block** %3, align 8
  %22 = load %struct.ocfs2_dquot*, %struct.ocfs2_dquot** %4, align 8
  %23 = getelementptr inbounds %struct.ocfs2_dquot, %struct.ocfs2_dquot* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @ol_dqblk_file_block(%struct.super_block* %21, i32 %24)
  %26 = call i32 @ocfs2_read_quota_block(i32 %20, i32 %25, %struct.buffer_head** %5)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %1
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @mlog_errno(i32 %30)
  br label %52

32:                                               ; preds = %1
  %33 = load %struct.super_block*, %struct.super_block** %3, align 8
  %34 = call %struct.TYPE_2__* @sb_dqopt(%struct.super_block* %33)
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = load %struct.dquot*, %struct.dquot** %2, align 8
  %38 = getelementptr inbounds %struct.dquot, %struct.dquot* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds i32, i32* %36, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %43 = load i32, i32* @olq_set_dquot, align 4
  %44 = load %struct.ocfs2_dquot*, %struct.ocfs2_dquot** %4, align 8
  %45 = call i32 @ocfs2_modify_bh(i32 %41, %struct.buffer_head* %42, i32 %43, %struct.ocfs2_dquot* %44)
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* %6, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %32
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @mlog_errno(i32 %49)
  br label %52

51:                                               ; preds = %32
  br label %52

52:                                               ; preds = %51, %48, %29
  %53 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %54 = call i32 @brelse(%struct.buffer_head* %53)
  %55 = load i32, i32* %6, align 4
  ret i32 %55
}

declare dso_local %struct.ocfs2_dquot* @OCFS2_DQUOT(%struct.dquot*) #1

declare dso_local i32 @ocfs2_read_quota_block(i32, i32, %struct.buffer_head**) #1

declare dso_local %struct.TYPE_2__* @sb_dqopt(%struct.super_block*) #1

declare dso_local i32 @ol_dqblk_file_block(%struct.super_block*, i32) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_modify_bh(i32, %struct.buffer_head*, i32, %struct.ocfs2_dquot*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
