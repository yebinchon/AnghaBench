; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_suballoc.c_ocfs2_alloc_dinode_update_counts.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_suballoc.c_ocfs2_alloc_dinode_update_counts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.buffer_head = type { i64 }
%struct.ocfs2_dinode = type { %struct.TYPE_7__, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.ocfs2_chain_list = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }

@OCFS2_JOURNAL_ACCESS_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i32*, %struct.buffer_head*, i64, i64)* @ocfs2_alloc_dinode_update_counts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_alloc_dinode_update_counts(%struct.inode* %0, i32* %1, %struct.buffer_head* %2, i64 %3, i64 %4) #0 {
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.buffer_head*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.ocfs2_dinode*, align 8
  %14 = alloca %struct.ocfs2_chain_list*, align 8
  store %struct.inode* %0, %struct.inode** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.buffer_head* %2, %struct.buffer_head** %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  %15 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %16 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.ocfs2_dinode*
  store %struct.ocfs2_dinode* %18, %struct.ocfs2_dinode** %13, align 8
  %19 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %13, align 8
  %20 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = bitcast i32* %21 to %struct.ocfs2_chain_list*
  store %struct.ocfs2_chain_list* %22, %struct.ocfs2_chain_list** %14, align 8
  %23 = load i32*, i32** %7, align 8
  %24 = load %struct.inode*, %struct.inode** %6, align 8
  %25 = call i32 @INODE_CACHE(%struct.inode* %24)
  %26 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %27 = load i32, i32* @OCFS2_JOURNAL_ACCESS_WRITE, align 4
  %28 = call i32 @ocfs2_journal_access_di(i32* %23, i32 %25, %struct.buffer_head* %26, i32 %27)
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %11, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %5
  %32 = load i32, i32* %11, align 4
  %33 = call i32 @mlog_errno(i32 %32)
  br label %67

34:                                               ; preds = %5
  %35 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %13, align 8
  %36 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @le32_to_cpu(i32 %39)
  store i64 %40, i64* %12, align 8
  %41 = load i64, i64* %9, align 8
  %42 = load i64, i64* %12, align 8
  %43 = add nsw i64 %41, %42
  %44 = call i32 @cpu_to_le32(i64 %43)
  %45 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %13, align 8
  %46 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  store i32 %44, i32* %48, align 4
  %49 = load %struct.ocfs2_chain_list*, %struct.ocfs2_chain_list** %14, align 8
  %50 = getelementptr inbounds %struct.ocfs2_chain_list, %struct.ocfs2_chain_list* %49, i32 0, i32 0
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %50, align 8
  %52 = load i64, i64* %10, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  %55 = load i64, i64* %9, align 8
  %56 = sub nsw i64 0, %55
  %57 = call i32 @le32_add_cpu(i32* %54, i64 %56)
  %58 = load i32*, i32** %7, align 8
  %59 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %60 = call i32 @ocfs2_journal_dirty(i32* %58, %struct.buffer_head* %59)
  store i32 %60, i32* %11, align 4
  %61 = load i32, i32* %11, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %34
  %64 = load i32, i32* %11, align 4
  %65 = call i32 @mlog_errno(i32 %64)
  br label %66

66:                                               ; preds = %63, %34
  br label %67

67:                                               ; preds = %66, %31
  %68 = load i32, i32* %11, align 4
  ret i32 %68
}

declare dso_local i32 @ocfs2_journal_access_di(i32*, i32, %struct.buffer_head*, i32) #1

declare dso_local i32 @INODE_CACHE(%struct.inode*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @cpu_to_le32(i64) #1

declare dso_local i32 @le32_add_cpu(i32*, i64) #1

declare dso_local i32 @ocfs2_journal_dirty(i32*, %struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
