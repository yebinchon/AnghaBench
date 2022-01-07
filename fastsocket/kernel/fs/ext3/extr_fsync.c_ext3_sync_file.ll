; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext3/extr_fsync.c_ext3_sync_file.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext3/extr_fsync.c_ext3_sync_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.dentry = type { %struct.inode* }
%struct.inode = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.ext3_inode_info = type { i32, i32 }
%struct.TYPE_6__ = type { i32* }

@MS_RDONLY = common dso_local global i32 0, align 4
@BARRIER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext3_sync_file(%struct.file* %0, %struct.dentry* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.ext3_inode_info*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.dentry*, %struct.dentry** %6, align 8
  %14 = getelementptr inbounds %struct.dentry, %struct.dentry* %13, i32 0, i32 0
  %15 = load %struct.inode*, %struct.inode** %14, align 8
  store %struct.inode* %15, %struct.inode** %8, align 8
  %16 = load %struct.inode*, %struct.inode** %8, align 8
  %17 = call %struct.ext3_inode_info* @EXT3_I(%struct.inode* %16)
  store %struct.ext3_inode_info* %17, %struct.ext3_inode_info** %9, align 8
  %18 = load %struct.inode*, %struct.inode** %8, align 8
  %19 = getelementptr inbounds %struct.inode, %struct.inode* %18, i32 0, i32 0
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %21 = call %struct.TYPE_6__* @EXT3_SB(%struct.TYPE_5__* %20)
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  store i32* %23, i32** %10, align 8
  store i32 0, i32* %11, align 4
  %24 = call i32* (...) @ext3_journal_current_handle()
  %25 = icmp eq i32* %24, null
  %26 = zext i1 %25 to i32
  %27 = call i32 @J_ASSERT(i32 %26)
  %28 = load %struct.file*, %struct.file** %5, align 8
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @trace_ext3_sync_file_enter(%struct.file* %28, i32 %29)
  %31 = load %struct.inode*, %struct.inode** %8, align 8
  %32 = getelementptr inbounds %struct.inode, %struct.inode* %31, i32 0, i32 0
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @MS_RDONLY, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %89

40:                                               ; preds = %3
  %41 = load %struct.inode*, %struct.inode** %8, align 8
  %42 = call i64 @ext3_should_journal_data(%struct.inode* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %40
  %45 = load %struct.inode*, %struct.inode** %8, align 8
  %46 = getelementptr inbounds %struct.inode, %struct.inode* %45, i32 0, i32 0
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %46, align 8
  %48 = call i32 @ext3_force_commit(%struct.TYPE_5__* %47)
  store i32 %48, i32* %11, align 4
  br label %84

49:                                               ; preds = %40
  %50 = load i32, i32* %7, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %49
  %53 = load %struct.ext3_inode_info*, %struct.ext3_inode_info** %9, align 8
  %54 = getelementptr inbounds %struct.ext3_inode_info, %struct.ext3_inode_info* %53, i32 0, i32 1
  %55 = call i32 @atomic_read(i32* %54)
  store i32 %55, i32* %12, align 4
  br label %60

56:                                               ; preds = %49
  %57 = load %struct.ext3_inode_info*, %struct.ext3_inode_info** %9, align 8
  %58 = getelementptr inbounds %struct.ext3_inode_info, %struct.ext3_inode_info* %57, i32 0, i32 0
  %59 = call i32 @atomic_read(i32* %58)
  store i32 %59, i32* %12, align 4
  br label %60

60:                                               ; preds = %56, %52
  %61 = load i32*, i32** %10, align 8
  %62 = load i32, i32* %12, align 4
  %63 = call i64 @log_start_commit(i32* %61, i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %60
  %66 = load i32*, i32** %10, align 8
  %67 = load i32, i32* %12, align 4
  %68 = call i32 @log_wait_commit(i32* %66, i32 %67)
  br label %84

69:                                               ; preds = %60
  %70 = load %struct.inode*, %struct.inode** %8, align 8
  %71 = getelementptr inbounds %struct.inode, %struct.inode* %70, i32 0, i32 0
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %71, align 8
  %73 = load i32, i32* @BARRIER, align 4
  %74 = call i64 @test_opt(%struct.TYPE_5__* %72, i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %83

76:                                               ; preds = %69
  %77 = load %struct.inode*, %struct.inode** %8, align 8
  %78 = getelementptr inbounds %struct.inode, %struct.inode* %77, i32 0, i32 0
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @blkdev_issue_flush(i32 %81, i32* null)
  br label %83

83:                                               ; preds = %76, %69
  br label %84

84:                                               ; preds = %83, %65, %44
  %85 = load %struct.inode*, %struct.inode** %8, align 8
  %86 = load i32, i32* %11, align 4
  %87 = call i32 @trace_ext3_sync_file_exit(%struct.inode* %85, i32 %86)
  %88 = load i32, i32* %11, align 4
  store i32 %88, i32* %4, align 4
  br label %89

89:                                               ; preds = %84, %39
  %90 = load i32, i32* %4, align 4
  ret i32 %90
}

declare dso_local %struct.ext3_inode_info* @EXT3_I(%struct.inode*) #1

declare dso_local %struct.TYPE_6__* @EXT3_SB(%struct.TYPE_5__*) #1

declare dso_local i32 @J_ASSERT(i32) #1

declare dso_local i32* @ext3_journal_current_handle(...) #1

declare dso_local i32 @trace_ext3_sync_file_enter(%struct.file*, i32) #1

declare dso_local i64 @ext3_should_journal_data(%struct.inode*) #1

declare dso_local i32 @ext3_force_commit(%struct.TYPE_5__*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i64 @log_start_commit(i32*, i32) #1

declare dso_local i32 @log_wait_commit(i32*, i32) #1

declare dso_local i64 @test_opt(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @blkdev_issue_flush(i32, i32*) #1

declare dso_local i32 @trace_ext3_sync_file_exit(%struct.inode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
