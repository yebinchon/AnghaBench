; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_localalloc.c_ocfs2_complete_local_alloc_recovery.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_localalloc.c_ocfs2_complete_local_alloc_recovery.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_super = type { i32 }
%struct.ocfs2_dinode = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.buffer_head = type { i32 }
%struct.inode = type { i32 }

@GLOBAL_BITMAP_SYSTEM_INODE = common dso_local global i32 0, align 4
@OCFS2_INVALID_SLOT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@OCFS2_WINDOW_MOVE_CREDITS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_complete_local_alloc_recovery(%struct.ocfs2_super* %0, %struct.ocfs2_dinode* %1) #0 {
  %3 = alloca %struct.ocfs2_super*, align 8
  %4 = alloca %struct.ocfs2_dinode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca %struct.buffer_head*, align 8
  %8 = alloca %struct.inode*, align 8
  store %struct.ocfs2_super* %0, %struct.ocfs2_super** %3, align 8
  store %struct.ocfs2_dinode* %1, %struct.ocfs2_dinode** %4, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %7, align 8
  %9 = call i32 (...) @mlog_entry_void()
  %10 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %11 = load i32, i32* @GLOBAL_BITMAP_SYSTEM_INODE, align 4
  %12 = load i32, i32* @OCFS2_INVALID_SLOT, align 4
  %13 = call %struct.inode* @ocfs2_get_system_file_inode(%struct.ocfs2_super* %10, i32 %11, i32 %12)
  store %struct.inode* %13, %struct.inode** %8, align 8
  %14 = load %struct.inode*, %struct.inode** %8, align 8
  %15 = icmp ne %struct.inode* %14, null
  br i1 %15, label %21, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @mlog_errno(i32 %19)
  br label %73

21:                                               ; preds = %2
  %22 = load %struct.inode*, %struct.inode** %8, align 8
  %23 = getelementptr inbounds %struct.inode, %struct.inode* %22, i32 0, i32 0
  %24 = call i32 @mutex_lock(i32* %23)
  %25 = load %struct.inode*, %struct.inode** %8, align 8
  %26 = call i32 @ocfs2_inode_lock(%struct.inode* %25, %struct.buffer_head** %7, i32 1)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %21
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @mlog_errno(i32 %30)
  br label %65

32:                                               ; preds = %21
  %33 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %34 = load i32, i32* @OCFS2_WINDOW_MOVE_CREDITS, align 4
  %35 = call %struct.TYPE_7__* @ocfs2_start_trans(%struct.ocfs2_super* %33, i32 %34)
  store %struct.TYPE_7__* %35, %struct.TYPE_7__** %6, align 8
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %37 = call i64 @IS_ERR(%struct.TYPE_7__* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %32
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %41 = call i32 @PTR_ERR(%struct.TYPE_7__* %40)
  store i32 %41, i32* %5, align 4
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %6, align 8
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @mlog_errno(i32 %42)
  br label %62

44:                                               ; preds = %32
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  store i32 1, i32* %46, align 4
  %47 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %49 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %4, align 8
  %50 = load %struct.inode*, %struct.inode** %8, align 8
  %51 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %52 = call i32 @ocfs2_sync_local_to_main(%struct.ocfs2_super* %47, %struct.TYPE_7__* %48, %struct.ocfs2_dinode* %49, %struct.inode* %50, %struct.buffer_head* %51)
  store i32 %52, i32* %5, align 4
  %53 = load i32, i32* %5, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %44
  %56 = load i32, i32* %5, align 4
  %57 = call i32 @mlog_errno(i32 %56)
  br label %58

58:                                               ; preds = %55, %44
  %59 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %61 = call i32 @ocfs2_commit_trans(%struct.ocfs2_super* %59, %struct.TYPE_7__* %60)
  br label %62

62:                                               ; preds = %58, %39
  %63 = load %struct.inode*, %struct.inode** %8, align 8
  %64 = call i32 @ocfs2_inode_unlock(%struct.inode* %63, i32 1)
  br label %65

65:                                               ; preds = %62, %29
  %66 = load %struct.inode*, %struct.inode** %8, align 8
  %67 = getelementptr inbounds %struct.inode, %struct.inode* %66, i32 0, i32 0
  %68 = call i32 @mutex_unlock(i32* %67)
  %69 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %70 = call i32 @brelse(%struct.buffer_head* %69)
  %71 = load %struct.inode*, %struct.inode** %8, align 8
  %72 = call i32 @iput(%struct.inode* %71)
  br label %73

73:                                               ; preds = %65, %16
  %74 = load i32, i32* %5, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %79, label %76

76:                                               ; preds = %73
  %77 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %78 = call i32 @ocfs2_init_inode_steal_slot(%struct.ocfs2_super* %77)
  br label %79

79:                                               ; preds = %76, %73
  %80 = load i32, i32* %5, align 4
  %81 = call i32 @mlog_exit(i32 %80)
  %82 = load i32, i32* %5, align 4
  ret i32 %82
}

declare dso_local i32 @mlog_entry_void(...) #1

declare dso_local %struct.inode* @ocfs2_get_system_file_inode(%struct.ocfs2_super*, i32, i32) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ocfs2_inode_lock(%struct.inode*, %struct.buffer_head**, i32) #1

declare dso_local %struct.TYPE_7__* @ocfs2_start_trans(%struct.ocfs2_super*, i32) #1

declare dso_local i64 @IS_ERR(%struct.TYPE_7__*) #1

declare dso_local i32 @PTR_ERR(%struct.TYPE_7__*) #1

declare dso_local i32 @ocfs2_sync_local_to_main(%struct.ocfs2_super*, %struct.TYPE_7__*, %struct.ocfs2_dinode*, %struct.inode*, %struct.buffer_head*) #1

declare dso_local i32 @ocfs2_commit_trans(%struct.ocfs2_super*, %struct.TYPE_7__*) #1

declare dso_local i32 @ocfs2_inode_unlock(%struct.inode*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local i32 @ocfs2_init_inode_steal_slot(%struct.ocfs2_super*) #1

declare dso_local i32 @mlog_exit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
