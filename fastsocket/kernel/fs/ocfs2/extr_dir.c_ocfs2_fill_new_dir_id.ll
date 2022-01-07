; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_dir.c_ocfs2_fill_new_dir_id.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_dir.c_ocfs2_fill_new_dir_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_super = type { i32 }
%struct.inode = type { i32, i32 }
%struct.buffer_head = type { i64 }
%struct.ocfs2_dinode = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ocfs2_inline_data }
%struct.ocfs2_inline_data = type { i32, i32 }

@OCFS2_JOURNAL_ACCESS_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocfs2_super*, i32*, %struct.inode*, %struct.inode*, %struct.buffer_head*)* @ocfs2_fill_new_dir_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_fill_new_dir_id(%struct.ocfs2_super* %0, i32* %1, %struct.inode* %2, %struct.inode* %3, %struct.buffer_head* %4) #0 {
  %6 = alloca %struct.ocfs2_super*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca %struct.buffer_head*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.ocfs2_dinode*, align 8
  %13 = alloca %struct.ocfs2_inline_data*, align 8
  %14 = alloca i32, align 4
  store %struct.ocfs2_super* %0, %struct.ocfs2_super** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.inode* %2, %struct.inode** %8, align 8
  store %struct.inode* %3, %struct.inode** %9, align 8
  store %struct.buffer_head* %4, %struct.buffer_head** %10, align 8
  %15 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %16 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.ocfs2_dinode*
  store %struct.ocfs2_dinode* %18, %struct.ocfs2_dinode** %12, align 8
  %19 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %12, align 8
  %20 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  store %struct.ocfs2_inline_data* %21, %struct.ocfs2_inline_data** %13, align 8
  %22 = load %struct.ocfs2_inline_data*, %struct.ocfs2_inline_data** %13, align 8
  %23 = getelementptr inbounds %struct.ocfs2_inline_data, %struct.ocfs2_inline_data* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @le16_to_cpu(i32 %24)
  store i32 %25, i32* %14, align 4
  %26 = load i32*, i32** %7, align 8
  %27 = load %struct.inode*, %struct.inode** %9, align 8
  %28 = call i32 @INODE_CACHE(%struct.inode* %27)
  %29 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %30 = load i32, i32* @OCFS2_JOURNAL_ACCESS_WRITE, align 4
  %31 = call i32 @ocfs2_journal_access_di(i32* %26, i32 %28, %struct.buffer_head* %29, i32 %30)
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %11, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %5
  %35 = load i32, i32* %11, align 4
  %36 = call i32 @mlog_errno(i32 %35)
  br label %73

37:                                               ; preds = %5
  %38 = load %struct.inode*, %struct.inode** %9, align 8
  %39 = load %struct.inode*, %struct.inode** %8, align 8
  %40 = load %struct.ocfs2_inline_data*, %struct.ocfs2_inline_data** %13, align 8
  %41 = getelementptr inbounds %struct.ocfs2_inline_data, %struct.ocfs2_inline_data* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %14, align 4
  %44 = call i32 @ocfs2_fill_initial_dirents(%struct.inode* %38, %struct.inode* %39, i32 %42, i32 %43)
  %45 = load i32*, i32** %7, align 8
  %46 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %47 = call i32 @ocfs2_journal_dirty(i32* %45, %struct.buffer_head* %46)
  %48 = load i32, i32* %11, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %37
  %51 = load i32, i32* %11, align 4
  %52 = call i32 @mlog_errno(i32 %51)
  br label %73

53:                                               ; preds = %37
  %54 = load %struct.inode*, %struct.inode** %9, align 8
  %55 = load i32, i32* %14, align 4
  %56 = call i32 @i_size_write(%struct.inode* %54, i32 %55)
  %57 = load %struct.inode*, %struct.inode** %9, align 8
  %58 = getelementptr inbounds %struct.inode, %struct.inode* %57, i32 0, i32 0
  store i32 2, i32* %58, align 4
  %59 = load %struct.inode*, %struct.inode** %9, align 8
  %60 = call i32 @ocfs2_inode_sector_count(%struct.inode* %59)
  %61 = load %struct.inode*, %struct.inode** %9, align 8
  %62 = getelementptr inbounds %struct.inode, %struct.inode* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 4
  %63 = load i32*, i32** %7, align 8
  %64 = load %struct.inode*, %struct.inode** %9, align 8
  %65 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %66 = call i32 @ocfs2_mark_inode_dirty(i32* %63, %struct.inode* %64, %struct.buffer_head* %65)
  store i32 %66, i32* %11, align 4
  %67 = load i32, i32* %11, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %53
  %70 = load i32, i32* %11, align 4
  %71 = call i32 @mlog_errno(i32 %70)
  br label %72

72:                                               ; preds = %69, %53
  br label %73

73:                                               ; preds = %72, %50, %34
  %74 = load i32, i32* %11, align 4
  ret i32 %74
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @ocfs2_journal_access_di(i32*, i32, %struct.buffer_head*, i32) #1

declare dso_local i32 @INODE_CACHE(%struct.inode*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_fill_initial_dirents(%struct.inode*, %struct.inode*, i32, i32) #1

declare dso_local i32 @ocfs2_journal_dirty(i32*, %struct.buffer_head*) #1

declare dso_local i32 @i_size_write(%struct.inode*, i32) #1

declare dso_local i32 @ocfs2_inode_sector_count(%struct.inode*) #1

declare dso_local i32 @ocfs2_mark_inode_dirty(i32*, %struct.inode*, %struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
