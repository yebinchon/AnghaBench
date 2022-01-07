; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_refcounttree.c_ocfs2_change_ctime.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_refcounttree.c_ocfs2_change_ctime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.inode = type { i32, %struct.TYPE_2__ }
%struct.buffer_head = type { i64 }
%struct.ocfs2_dinode = type { i32, i32 }

@OCFS2_INODE_UPDATE_CREDITS = common dso_local global i32 0, align 4
@OCFS2_JOURNAL_ACCESS_WRITE = common dso_local global i32 0, align 4
@CURRENT_TIME = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.buffer_head*)* @ocfs2_change_ctime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_change_ctime(%struct.inode* %0, %struct.buffer_head* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.buffer_head*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.ocfs2_dinode*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %4, align 8
  %8 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %9 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.ocfs2_dinode*
  store %struct.ocfs2_dinode* %11, %struct.ocfs2_dinode** %7, align 8
  %12 = load %struct.inode*, %struct.inode** %3, align 8
  %13 = getelementptr inbounds %struct.inode, %struct.inode* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @OCFS2_SB(i32 %14)
  %16 = load i32, i32* @OCFS2_INODE_UPDATE_CREDITS, align 4
  %17 = call i32* @ocfs2_start_trans(i32 %15, i32 %16)
  store i32* %17, i32** %6, align 8
  %18 = load i32*, i32** %6, align 8
  %19 = call i64 @IS_ERR(i32* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %2
  %22 = load i32*, i32** %6, align 8
  %23 = call i32 @PTR_ERR(i32* %22)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @mlog_errno(i32 %24)
  br label %66

26:                                               ; preds = %2
  %27 = load i32*, i32** %6, align 8
  %28 = load %struct.inode*, %struct.inode** %3, align 8
  %29 = call i32 @INODE_CACHE(%struct.inode* %28)
  %30 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %31 = load i32, i32* @OCFS2_JOURNAL_ACCESS_WRITE, align 4
  %32 = call i32 @ocfs2_journal_access_di(i32* %27, i32 %29, %struct.buffer_head* %30, i32 %31)
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %26
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @mlog_errno(i32 %36)
  br label %59

38:                                               ; preds = %26
  %39 = load %struct.inode*, %struct.inode** %3, align 8
  %40 = getelementptr inbounds %struct.inode, %struct.inode* %39, i32 0, i32 1
  %41 = bitcast %struct.TYPE_2__* %40 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %41, i8* align 4 bitcast (%struct.TYPE_2__* @CURRENT_TIME to i8*), i64 8, i1 false)
  %42 = load %struct.inode*, %struct.inode** %3, align 8
  %43 = getelementptr inbounds %struct.inode, %struct.inode* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @cpu_to_le64(i32 %45)
  %47 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %7, align 8
  %48 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  %49 = load %struct.inode*, %struct.inode** %3, align 8
  %50 = getelementptr inbounds %struct.inode, %struct.inode* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @cpu_to_le32(i32 %52)
  %54 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %7, align 8
  %55 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 4
  %56 = load i32*, i32** %6, align 8
  %57 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %58 = call i32 @ocfs2_journal_dirty(i32* %56, %struct.buffer_head* %57)
  br label %59

59:                                               ; preds = %38, %35
  %60 = load %struct.inode*, %struct.inode** %3, align 8
  %61 = getelementptr inbounds %struct.inode, %struct.inode* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @OCFS2_SB(i32 %62)
  %64 = load i32*, i32** %6, align 8
  %65 = call i32 @ocfs2_commit_trans(i32 %63, i32* %64)
  br label %66

66:                                               ; preds = %59, %21
  %67 = load i32, i32* %5, align 4
  ret i32 %67
}

declare dso_local i32* @ocfs2_start_trans(i32, i32) #1

declare dso_local i32 @OCFS2_SB(i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_journal_access_di(i32*, i32, %struct.buffer_head*, i32) #1

declare dso_local i32 @INODE_CACHE(%struct.inode*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @cpu_to_le64(i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @ocfs2_journal_dirty(i32*, %struct.buffer_head*) #1

declare dso_local i32 @ocfs2_commit_trans(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
