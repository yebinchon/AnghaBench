; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_inode.c_ocfs2_truncate_for_delete.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_inode.c_ocfs2_truncate_for_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_super = type { i32 }
%struct.inode = type { i32 }
%struct.buffer_head = type { i64 }
%struct.ocfs2_truncate_context = type { i32 }
%struct.ocfs2_dinode = type { i64 }

@OCFS2_INODE_UPDATE_CREDITS = common dso_local global i32 0, align 4
@OCFS2_JOURNAL_ACCESS_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocfs2_super*, %struct.inode*, %struct.buffer_head*)* @ocfs2_truncate_for_delete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_truncate_for_delete(%struct.ocfs2_super* %0, %struct.inode* %1, %struct.buffer_head* %2) #0 {
  %4 = alloca %struct.ocfs2_super*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.buffer_head*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ocfs2_truncate_context*, align 8
  %9 = alloca %struct.ocfs2_dinode*, align 8
  %10 = alloca i32*, align 8
  store %struct.ocfs2_super* %0, %struct.ocfs2_super** %4, align 8
  store %struct.inode* %1, %struct.inode** %5, align 8
  store %struct.buffer_head* %2, %struct.buffer_head** %6, align 8
  store i32 0, i32* %7, align 4
  store %struct.ocfs2_truncate_context* null, %struct.ocfs2_truncate_context** %8, align 8
  store i32* null, i32** %10, align 8
  %11 = call i32 (...) @mlog_entry_void()
  %12 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %13 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.ocfs2_dinode*
  store %struct.ocfs2_dinode* %15, %struct.ocfs2_dinode** %9, align 8
  %16 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %9, align 8
  %17 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %88

20:                                               ; preds = %3
  %21 = load %struct.inode*, %struct.inode** %5, align 8
  %22 = call i64 @ocfs2_should_order_data(%struct.inode* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = load %struct.inode*, %struct.inode** %5, align 8
  %26 = call i32 @ocfs2_begin_ordered_truncate(%struct.inode* %25, i32 0)
  br label %27

27:                                               ; preds = %24, %20
  %28 = load %struct.ocfs2_super*, %struct.ocfs2_super** %4, align 8
  %29 = load i32, i32* @OCFS2_INODE_UPDATE_CREDITS, align 4
  %30 = call i32* @ocfs2_start_trans(%struct.ocfs2_super* %28, i32 %29)
  store i32* %30, i32** %10, align 8
  %31 = load i32*, i32** %10, align 8
  %32 = call i64 @IS_ERR(i32* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %27
  %35 = load i32*, i32** %10, align 8
  %36 = call i32 @PTR_ERR(i32* %35)
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @mlog_errno(i32 %37)
  br label %89

39:                                               ; preds = %27
  %40 = load i32*, i32** %10, align 8
  %41 = load %struct.inode*, %struct.inode** %5, align 8
  %42 = call i32 @INODE_CACHE(%struct.inode* %41)
  %43 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %44 = load i32, i32* @OCFS2_JOURNAL_ACCESS_WRITE, align 4
  %45 = call i32 @ocfs2_journal_access_di(i32* %40, i32 %42, %struct.buffer_head* %43, i32 %44)
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %7, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %39
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @mlog_errno(i32 %49)
  br label %89

51:                                               ; preds = %39
  %52 = load %struct.inode*, %struct.inode** %5, align 8
  %53 = call i32 @i_size_write(%struct.inode* %52, i32 0)
  %54 = load i32*, i32** %10, align 8
  %55 = load %struct.inode*, %struct.inode** %5, align 8
  %56 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %57 = call i32 @ocfs2_mark_inode_dirty(i32* %54, %struct.inode* %55, %struct.buffer_head* %56)
  store i32 %57, i32* %7, align 4
  %58 = load i32, i32* %7, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %51
  %61 = load i32, i32* %7, align 4
  %62 = call i32 @mlog_errno(i32 %61)
  br label %89

63:                                               ; preds = %51
  %64 = load %struct.ocfs2_super*, %struct.ocfs2_super** %4, align 8
  %65 = load i32*, i32** %10, align 8
  %66 = call i32 @ocfs2_commit_trans(%struct.ocfs2_super* %64, i32* %65)
  store i32* null, i32** %10, align 8
  %67 = load %struct.ocfs2_super*, %struct.ocfs2_super** %4, align 8
  %68 = load %struct.inode*, %struct.inode** %5, align 8
  %69 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %70 = call i32 @ocfs2_prepare_truncate(%struct.ocfs2_super* %67, %struct.inode* %68, %struct.buffer_head* %69, %struct.ocfs2_truncate_context** %8)
  store i32 %70, i32* %7, align 4
  %71 = load i32, i32* %7, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %63
  %74 = load i32, i32* %7, align 4
  %75 = call i32 @mlog_errno(i32 %74)
  br label %89

76:                                               ; preds = %63
  %77 = load %struct.ocfs2_super*, %struct.ocfs2_super** %4, align 8
  %78 = load %struct.inode*, %struct.inode** %5, align 8
  %79 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %80 = load %struct.ocfs2_truncate_context*, %struct.ocfs2_truncate_context** %8, align 8
  %81 = call i32 @ocfs2_commit_truncate(%struct.ocfs2_super* %77, %struct.inode* %78, %struct.buffer_head* %79, %struct.ocfs2_truncate_context* %80)
  store i32 %81, i32* %7, align 4
  %82 = load i32, i32* %7, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %76
  %85 = load i32, i32* %7, align 4
  %86 = call i32 @mlog_errno(i32 %85)
  br label %89

87:                                               ; preds = %76
  br label %88

88:                                               ; preds = %87, %3
  br label %89

89:                                               ; preds = %88, %84, %73, %60, %48, %34
  %90 = load i32*, i32** %10, align 8
  %91 = icmp ne i32* %90, null
  br i1 %91, label %92, label %96

92:                                               ; preds = %89
  %93 = load %struct.ocfs2_super*, %struct.ocfs2_super** %4, align 8
  %94 = load i32*, i32** %10, align 8
  %95 = call i32 @ocfs2_commit_trans(%struct.ocfs2_super* %93, i32* %94)
  br label %96

96:                                               ; preds = %92, %89
  %97 = load i32, i32* %7, align 4
  %98 = call i32 @mlog_exit(i32 %97)
  %99 = load i32, i32* %7, align 4
  ret i32 %99
}

declare dso_local i32 @mlog_entry_void(...) #1

declare dso_local i64 @ocfs2_should_order_data(%struct.inode*) #1

declare dso_local i32 @ocfs2_begin_ordered_truncate(%struct.inode*, i32) #1

declare dso_local i32* @ocfs2_start_trans(%struct.ocfs2_super*, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_journal_access_di(i32*, i32, %struct.buffer_head*, i32) #1

declare dso_local i32 @INODE_CACHE(%struct.inode*) #1

declare dso_local i32 @i_size_write(%struct.inode*, i32) #1

declare dso_local i32 @ocfs2_mark_inode_dirty(i32*, %struct.inode*, %struct.buffer_head*) #1

declare dso_local i32 @ocfs2_commit_trans(%struct.ocfs2_super*, i32*) #1

declare dso_local i32 @ocfs2_prepare_truncate(%struct.ocfs2_super*, %struct.inode*, %struct.buffer_head*, %struct.ocfs2_truncate_context**) #1

declare dso_local i32 @ocfs2_commit_truncate(%struct.ocfs2_super*, %struct.inode*, %struct.buffer_head*, %struct.ocfs2_truncate_context*) #1

declare dso_local i32 @mlog_exit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
