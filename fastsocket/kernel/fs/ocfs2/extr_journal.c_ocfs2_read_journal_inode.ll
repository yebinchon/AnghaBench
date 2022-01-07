; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_journal.c_ocfs2_read_journal_inode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_journal.c_ocfs2_read_journal_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_super = type { i32 }
%struct.buffer_head = type { i32 }
%struct.inode = type { i32 }

@EACCES = common dso_local global i32 0, align 4
@JOURNAL_SYSTEM_INODE = common dso_local global i32 0, align 4
@OCFS2_BH_IGNORE_CACHE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocfs2_super*, i32, %struct.buffer_head**, %struct.inode**)* @ocfs2_read_journal_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_read_journal_inode(%struct.ocfs2_super* %0, i32 %1, %struct.buffer_head** %2, %struct.inode** %3) #0 {
  %5 = alloca %struct.ocfs2_super*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.buffer_head**, align 8
  %8 = alloca %struct.inode**, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.inode*, align 8
  store %struct.ocfs2_super* %0, %struct.ocfs2_super** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.buffer_head** %2, %struct.buffer_head*** %7, align 8
  store %struct.inode** %3, %struct.inode*** %8, align 8
  %11 = load i32, i32* @EACCES, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %9, align 4
  store %struct.inode* null, %struct.inode** %10, align 8
  %13 = load i32, i32* %6, align 4
  %14 = load %struct.ocfs2_super*, %struct.ocfs2_super** %5, align 8
  %15 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp sge i32 %13, %16
  %18 = zext i1 %17 to i32
  %19 = call i32 @BUG_ON(i32 %18)
  %20 = load %struct.ocfs2_super*, %struct.ocfs2_super** %5, align 8
  %21 = load i32, i32* @JOURNAL_SYSTEM_INODE, align 4
  %22 = load i32, i32* %6, align 4
  %23 = call %struct.inode* @ocfs2_get_system_file_inode(%struct.ocfs2_super* %20, i32 %21, i32 %22)
  store %struct.inode* %23, %struct.inode** %10, align 8
  %24 = load %struct.inode*, %struct.inode** %10, align 8
  %25 = icmp ne %struct.inode* %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %4
  %27 = load %struct.inode*, %struct.inode** %10, align 8
  %28 = call i64 @is_bad_inode(%struct.inode* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %26, %4
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @mlog_errno(i32 %31)
  br label %46

33:                                               ; preds = %26
  %34 = load %struct.inode*, %struct.inode** %10, align 8
  %35 = call i32 @SET_INODE_JOURNAL(%struct.inode* %34)
  %36 = load %struct.inode*, %struct.inode** %10, align 8
  %37 = load %struct.buffer_head**, %struct.buffer_head*** %7, align 8
  %38 = load i32, i32* @OCFS2_BH_IGNORE_CACHE, align 4
  %39 = call i32 @ocfs2_read_inode_block_full(%struct.inode* %36, %struct.buffer_head** %37, i32 %38)
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %9, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %33
  %43 = load i32, i32* %9, align 4
  %44 = call i32 @mlog_errno(i32 %43)
  br label %46

45:                                               ; preds = %33
  store i32 0, i32* %9, align 4
  br label %46

46:                                               ; preds = %45, %42, %30
  %47 = load %struct.inode*, %struct.inode** %10, align 8
  %48 = icmp ne %struct.inode* %47, null
  br i1 %48, label %49, label %62

49:                                               ; preds = %46
  %50 = load i32, i32* %9, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %49
  %53 = load %struct.inode**, %struct.inode*** %8, align 8
  %54 = icmp ne %struct.inode** %53, null
  br i1 %54, label %58, label %55

55:                                               ; preds = %52, %49
  %56 = load %struct.inode*, %struct.inode** %10, align 8
  %57 = call i32 @iput(%struct.inode* %56)
  br label %61

58:                                               ; preds = %52
  %59 = load %struct.inode*, %struct.inode** %10, align 8
  %60 = load %struct.inode**, %struct.inode*** %8, align 8
  store %struct.inode* %59, %struct.inode** %60, align 8
  br label %61

61:                                               ; preds = %58, %55
  br label %62

62:                                               ; preds = %61, %46
  %63 = load i32, i32* %9, align 4
  ret i32 %63
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local %struct.inode* @ocfs2_get_system_file_inode(%struct.ocfs2_super*, i32, i32) #1

declare dso_local i64 @is_bad_inode(%struct.inode*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @SET_INODE_JOURNAL(%struct.inode*) #1

declare dso_local i32 @ocfs2_read_inode_block_full(%struct.inode*, %struct.buffer_head**, i32) #1

declare dso_local i32 @iput(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
