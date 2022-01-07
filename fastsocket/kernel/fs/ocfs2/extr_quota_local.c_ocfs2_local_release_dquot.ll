; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_quota_local.c_ocfs2_local_release_dquot.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_quota_local.c_ocfs2_local_release_dquot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dquot = type { i32, i32, %struct.super_block* }
%struct.super_block = type { i32 }
%struct.ocfs2_dquot = type { %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { i64 }
%struct.ocfs2_local_disk_chunk = type { i32, i32 }
%struct.TYPE_9__ = type { i32* }

@OCFS2_JOURNAL_ACCESS_WRITE = common dso_local global i32 0, align 4
@DQ_READ_B = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dquot*)* @ocfs2_local_release_dquot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_local_release_dquot(%struct.dquot* %0) #0 {
  %2 = alloca %struct.dquot*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.ocfs2_dquot*, align 8
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca %struct.ocfs2_local_disk_chunk*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store %struct.dquot* %0, %struct.dquot** %2, align 8
  %10 = load %struct.dquot*, %struct.dquot** %2, align 8
  %11 = getelementptr inbounds %struct.dquot, %struct.dquot* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %4, align 4
  %13 = load %struct.dquot*, %struct.dquot** %2, align 8
  %14 = call %struct.ocfs2_dquot* @OCFS2_DQUOT(%struct.dquot* %13)
  store %struct.ocfs2_dquot* %14, %struct.ocfs2_dquot** %5, align 8
  %15 = load %struct.dquot*, %struct.dquot** %2, align 8
  %16 = getelementptr inbounds %struct.dquot, %struct.dquot* %15, i32 0, i32 2
  %17 = load %struct.super_block*, %struct.super_block** %16, align 8
  store %struct.super_block* %17, %struct.super_block** %6, align 8
  %18 = call i32* (...) @journal_current_handle()
  store i32* %18, i32** %9, align 8
  %19 = load i32*, i32** %9, align 8
  %20 = icmp ne i32* %19, null
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = call i32 @BUG_ON(i32 %22)
  %24 = load %struct.dquot*, %struct.dquot** %2, align 8
  %25 = call i32 @ocfs2_global_release_dquot(%struct.dquot* %24)
  store i32 %25, i32* %3, align 4
  %26 = load i32, i32* %3, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %1
  %29 = load i32, i32* %3, align 4
  %30 = call i32 @mlog_errno(i32 %29)
  br label %106

31:                                               ; preds = %1
  %32 = load i32*, i32** %9, align 8
  %33 = load %struct.super_block*, %struct.super_block** %6, align 8
  %34 = call %struct.TYPE_9__* @sb_dqopt(%struct.super_block* %33)
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %4, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @INODE_CACHE(i32 %40)
  %42 = load %struct.ocfs2_dquot*, %struct.ocfs2_dquot** %5, align 8
  %43 = getelementptr inbounds %struct.ocfs2_dquot, %struct.ocfs2_dquot* %42, i32 0, i32 0
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %45, align 8
  %47 = load i32, i32* @OCFS2_JOURNAL_ACCESS_WRITE, align 4
  %48 = call i32 @ocfs2_journal_access_dq(i32* %32, i32 %41, %struct.TYPE_8__* %46, i32 %47)
  store i32 %48, i32* %3, align 4
  %49 = load i32, i32* %3, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %31
  %52 = load i32, i32* %3, align 4
  %53 = call i32 @mlog_errno(i32 %52)
  br label %106

54:                                               ; preds = %31
  %55 = load %struct.super_block*, %struct.super_block** %6, align 8
  %56 = load %struct.ocfs2_dquot*, %struct.ocfs2_dquot** %5, align 8
  %57 = getelementptr inbounds %struct.ocfs2_dquot, %struct.ocfs2_dquot* %56, i32 0, i32 0
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.ocfs2_dquot*, %struct.ocfs2_dquot** %5, align 8
  %62 = getelementptr inbounds %struct.ocfs2_dquot, %struct.ocfs2_dquot* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @ol_dqblk_chunk_off(%struct.super_block* %55, i32 %60, i32 %63)
  store i32 %64, i32* %8, align 4
  %65 = load %struct.ocfs2_dquot*, %struct.ocfs2_dquot** %5, align 8
  %66 = getelementptr inbounds %struct.ocfs2_dquot, %struct.ocfs2_dquot* %65, i32 0, i32 0
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = inttoptr i64 %71 to %struct.ocfs2_local_disk_chunk*
  store %struct.ocfs2_local_disk_chunk* %72, %struct.ocfs2_local_disk_chunk** %7, align 8
  %73 = load %struct.ocfs2_dquot*, %struct.ocfs2_dquot** %5, align 8
  %74 = getelementptr inbounds %struct.ocfs2_dquot, %struct.ocfs2_dquot* %73, i32 0, i32 0
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %76, align 8
  %78 = call i32 @lock_buffer(%struct.TYPE_8__* %77)
  %79 = load i32, i32* %8, align 4
  %80 = load %struct.ocfs2_local_disk_chunk*, %struct.ocfs2_local_disk_chunk** %7, align 8
  %81 = getelementptr inbounds %struct.ocfs2_local_disk_chunk, %struct.ocfs2_local_disk_chunk* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @ocfs2_clear_bit(i32 %79, i32 %82)
  %84 = load %struct.ocfs2_local_disk_chunk*, %struct.ocfs2_local_disk_chunk** %7, align 8
  %85 = getelementptr inbounds %struct.ocfs2_local_disk_chunk, %struct.ocfs2_local_disk_chunk* %84, i32 0, i32 0
  %86 = call i32 @le32_add_cpu(i32* %85, i32 1)
  %87 = load %struct.ocfs2_dquot*, %struct.ocfs2_dquot** %5, align 8
  %88 = getelementptr inbounds %struct.ocfs2_dquot, %struct.ocfs2_dquot* %87, i32 0, i32 0
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 0
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %90, align 8
  %92 = call i32 @unlock_buffer(%struct.TYPE_8__* %91)
  %93 = load i32*, i32** %9, align 8
  %94 = load %struct.ocfs2_dquot*, %struct.ocfs2_dquot** %5, align 8
  %95 = getelementptr inbounds %struct.ocfs2_dquot, %struct.ocfs2_dquot* %94, i32 0, i32 0
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 0
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %97, align 8
  %99 = call i32 @ocfs2_journal_dirty(i32* %93, %struct.TYPE_8__* %98)
  store i32 %99, i32* %3, align 4
  %100 = load i32, i32* %3, align 4
  %101 = icmp slt i32 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %54
  %103 = load i32, i32* %3, align 4
  %104 = call i32 @mlog_errno(i32 %103)
  br label %106

105:                                              ; preds = %54
  store i32 0, i32* %3, align 4
  br label %106

106:                                              ; preds = %105, %102, %51, %28
  %107 = load i32, i32* @DQ_READ_B, align 4
  %108 = load %struct.dquot*, %struct.dquot** %2, align 8
  %109 = getelementptr inbounds %struct.dquot, %struct.dquot* %108, i32 0, i32 1
  %110 = call i32 @clear_bit(i32 %107, i32* %109)
  %111 = load i32, i32* %3, align 4
  ret i32 %111
}

declare dso_local %struct.ocfs2_dquot* @OCFS2_DQUOT(%struct.dquot*) #1

declare dso_local i32* @journal_current_handle(...) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @ocfs2_global_release_dquot(%struct.dquot*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_journal_access_dq(i32*, i32, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @INODE_CACHE(i32) #1

declare dso_local %struct.TYPE_9__* @sb_dqopt(%struct.super_block*) #1

declare dso_local i32 @ol_dqblk_chunk_off(%struct.super_block*, i32, i32) #1

declare dso_local i32 @lock_buffer(%struct.TYPE_8__*) #1

declare dso_local i32 @ocfs2_clear_bit(i32, i32) #1

declare dso_local i32 @le32_add_cpu(i32*, i32) #1

declare dso_local i32 @unlock_buffer(%struct.TYPE_8__*) #1

declare dso_local i32 @ocfs2_journal_dirty(i32*, %struct.TYPE_8__*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
