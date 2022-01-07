; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_fsync.c_ext4_sync_file.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_fsync.c_ext4_sync_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.dentry = type { %struct.inode* }
%struct.inode = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32 }
%struct.ext4_inode_info = type { i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_7__* }

@MS_RDONLY = common dso_local global i32 0, align 4
@JBD2_BARRIER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext4_sync_file(%struct.file* %0, %struct.dentry* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.ext4_inode_info*, align 8
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load %struct.dentry*, %struct.dentry** %6, align 8
  %15 = getelementptr inbounds %struct.dentry, %struct.dentry* %14, i32 0, i32 0
  %16 = load %struct.inode*, %struct.inode** %15, align 8
  store %struct.inode* %16, %struct.inode** %8, align 8
  %17 = load %struct.inode*, %struct.inode** %8, align 8
  %18 = call %struct.ext4_inode_info* @EXT4_I(%struct.inode* %17)
  store %struct.ext4_inode_info* %18, %struct.ext4_inode_info** %9, align 8
  %19 = load %struct.inode*, %struct.inode** %8, align 8
  %20 = getelementptr inbounds %struct.inode, %struct.inode* %19, i32 0, i32 0
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %22 = call %struct.TYPE_9__* @EXT4_SB(%struct.TYPE_8__* %21)
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %23, align 8
  store %struct.TYPE_7__* %24, %struct.TYPE_7__** %10, align 8
  store i32 0, i32* %13, align 4
  %25 = call i32* (...) @ext4_journal_current_handle()
  %26 = icmp eq i32* %25, null
  %27 = zext i1 %26 to i32
  %28 = call i32 @J_ASSERT(i32 %27)
  %29 = load %struct.file*, %struct.file** %5, align 8
  %30 = load %struct.dentry*, %struct.dentry** %6, align 8
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @trace_ext4_sync_file(%struct.file* %29, %struct.dentry* %30, i32 %31)
  %33 = load %struct.inode*, %struct.inode** %8, align 8
  %34 = getelementptr inbounds %struct.inode, %struct.inode* %33, i32 0, i32 0
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @MS_RDONLY, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %106

42:                                               ; preds = %3
  %43 = load %struct.inode*, %struct.inode** %8, align 8
  %44 = call i32 @flush_aio_dio_completed_IO(%struct.inode* %43)
  store i32 %44, i32* %11, align 4
  %45 = load i32, i32* %11, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %42
  %48 = load i32, i32* %11, align 4
  store i32 %48, i32* %4, align 4
  br label %106

49:                                               ; preds = %42
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %51 = icmp ne %struct.TYPE_7__* %50, null
  br i1 %51, label %57, label %52

52:                                               ; preds = %49
  %53 = load %struct.file*, %struct.file** %5, align 8
  %54 = load %struct.dentry*, %struct.dentry** %6, align 8
  %55 = load i32, i32* %7, align 4
  %56 = call i32 @simple_fsync(%struct.file* %53, %struct.dentry* %54, i32 %55)
  store i32 %56, i32* %4, align 4
  br label %106

57:                                               ; preds = %49
  %58 = load %struct.inode*, %struct.inode** %8, align 8
  %59 = call i64 @ext4_should_journal_data(%struct.inode* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %57
  %62 = load %struct.inode*, %struct.inode** %8, align 8
  %63 = getelementptr inbounds %struct.inode, %struct.inode* %62, i32 0, i32 0
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %63, align 8
  %65 = call i32 @ext4_force_commit(%struct.TYPE_8__* %64)
  store i32 %65, i32* %4, align 4
  br label %106

66:                                               ; preds = %57
  %67 = load i32, i32* %7, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %66
  %70 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %9, align 8
  %71 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  br label %77

73:                                               ; preds = %66
  %74 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %9, align 8
  %75 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  br label %77

77:                                               ; preds = %73, %69
  %78 = phi i32 [ %72, %69 ], [ %76, %73 ]
  store i32 %78, i32* %12, align 4
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @JBD2_BARRIER, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %91

85:                                               ; preds = %77
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %87 = load i32, i32* %12, align 4
  %88 = call i32 @jbd2_trans_will_send_data_barrier(%struct.TYPE_7__* %86, i32 %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %91, label %90

90:                                               ; preds = %85
  store i32 1, i32* %13, align 4
  br label %91

91:                                               ; preds = %90, %85, %77
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %93 = load i32, i32* %12, align 4
  %94 = call i32 @jbd2_complete_transaction(%struct.TYPE_7__* %92, i32 %93)
  store i32 %94, i32* %11, align 4
  %95 = load i32, i32* %13, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %104

97:                                               ; preds = %91
  %98 = load %struct.inode*, %struct.inode** %8, align 8
  %99 = getelementptr inbounds %struct.inode, %struct.inode* %98, i32 0, i32 0
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @blkdev_issue_flush(i32 %102, i32* null)
  br label %104

104:                                              ; preds = %97, %91
  %105 = load i32, i32* %11, align 4
  store i32 %105, i32* %4, align 4
  br label %106

106:                                              ; preds = %104, %61, %52, %47, %41
  %107 = load i32, i32* %4, align 4
  ret i32 %107
}

declare dso_local %struct.ext4_inode_info* @EXT4_I(%struct.inode*) #1

declare dso_local %struct.TYPE_9__* @EXT4_SB(%struct.TYPE_8__*) #1

declare dso_local i32 @J_ASSERT(i32) #1

declare dso_local i32* @ext4_journal_current_handle(...) #1

declare dso_local i32 @trace_ext4_sync_file(%struct.file*, %struct.dentry*, i32) #1

declare dso_local i32 @flush_aio_dio_completed_IO(%struct.inode*) #1

declare dso_local i32 @simple_fsync(%struct.file*, %struct.dentry*, i32) #1

declare dso_local i64 @ext4_should_journal_data(%struct.inode*) #1

declare dso_local i32 @ext4_force_commit(%struct.TYPE_8__*) #1

declare dso_local i32 @jbd2_trans_will_send_data_barrier(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @jbd2_complete_transaction(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @blkdev_issue_flush(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
