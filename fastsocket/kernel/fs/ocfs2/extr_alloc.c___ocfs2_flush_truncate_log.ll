; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_alloc.c___ocfs2_flush_truncate_log.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_alloc.c___ocfs2_flush_truncate_log.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_super = type { %struct.buffer_head*, %struct.inode* }
%struct.buffer_head = type { i64 }
%struct.inode = type { i32 }
%struct.ocfs2_dinode = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.ocfs2_truncate_log }
%struct.ocfs2_truncate_log = type { i32 }
%struct.TYPE_4__ = type { i64 }

@.str = private unnamed_addr constant [42 x i8] c"Flush %u records from truncate log #%llu\0A\00", align 1
@GLOBAL_BITMAP_SYSTEM_INODE = common dso_local global i32 0, align 4
@OCFS2_INVALID_SLOT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ML_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Could not get bitmap inode!\0A\00", align 1
@OCFS2_TRUNCATE_LOG_UPDATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__ocfs2_flush_truncate_log(%struct.ocfs2_super* %0) #0 {
  %2 = alloca %struct.ocfs2_super*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.buffer_head*, align 8
  %9 = alloca %struct.buffer_head*, align 8
  %10 = alloca %struct.ocfs2_dinode*, align 8
  %11 = alloca %struct.ocfs2_truncate_log*, align 8
  store %struct.ocfs2_super* %0, %struct.ocfs2_super** %2, align 8
  %12 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %13 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %12, i32 0, i32 1
  %14 = load %struct.inode*, %struct.inode** %13, align 8
  store %struct.inode* %14, %struct.inode** %6, align 8
  store %struct.inode* null, %struct.inode** %7, align 8
  %15 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %16 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %15, i32 0, i32 0
  %17 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  store %struct.buffer_head* %17, %struct.buffer_head** %8, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %9, align 8
  %18 = call i32 (...) @mlog_entry_void()
  %19 = load %struct.inode*, %struct.inode** %6, align 8
  %20 = getelementptr inbounds %struct.inode, %struct.inode* %19, i32 0, i32 0
  %21 = call i32 @mutex_trylock(i32* %20)
  %22 = call i32 @BUG_ON(i32 %21)
  %23 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %24 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to %struct.ocfs2_dinode*
  store %struct.ocfs2_dinode* %26, %struct.ocfs2_dinode** %10, align 8
  %27 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %10, align 8
  %28 = call i32 @OCFS2_IS_VALID_DINODE(%struct.ocfs2_dinode* %27)
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  %32 = call i32 @BUG_ON(i32 %31)
  %33 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %10, align 8
  %34 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  store %struct.ocfs2_truncate_log* %35, %struct.ocfs2_truncate_log** %11, align 8
  %36 = load %struct.ocfs2_truncate_log*, %struct.ocfs2_truncate_log** %11, align 8
  %37 = getelementptr inbounds %struct.ocfs2_truncate_log, %struct.ocfs2_truncate_log* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @le16_to_cpu(i32 %38)
  store i32 %39, i32* %4, align 4
  %40 = load i32, i32* %4, align 4
  %41 = load %struct.inode*, %struct.inode** %6, align 8
  %42 = call %struct.TYPE_4__* @OCFS2_I(%struct.inode* %41)
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = call i32 (i32, i8*, ...) @mlog(i32 0, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %40, i64 %44)
  %46 = load i32, i32* %4, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %110

49:                                               ; preds = %1
  %50 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %51 = load i32, i32* @GLOBAL_BITMAP_SYSTEM_INODE, align 4
  %52 = load i32, i32* @OCFS2_INVALID_SLOT, align 4
  %53 = call %struct.inode* @ocfs2_get_system_file_inode(%struct.ocfs2_super* %50, i32 %51, i32 %52)
  store %struct.inode* %53, %struct.inode** %7, align 8
  %54 = load %struct.inode*, %struct.inode** %7, align 8
  %55 = icmp ne %struct.inode* %54, null
  br i1 %55, label %61, label %56

56:                                               ; preds = %49
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %3, align 4
  %59 = load i32, i32* @ML_ERROR, align 4
  %60 = call i32 (i32, i8*, ...) @mlog(i32 %59, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %110

61:                                               ; preds = %49
  %62 = load %struct.inode*, %struct.inode** %7, align 8
  %63 = getelementptr inbounds %struct.inode, %struct.inode* %62, i32 0, i32 0
  %64 = call i32 @mutex_lock(i32* %63)
  %65 = load %struct.inode*, %struct.inode** %7, align 8
  %66 = call i32 @ocfs2_inode_lock(%struct.inode* %65, %struct.buffer_head** %9, i32 1)
  store i32 %66, i32* %3, align 4
  %67 = load i32, i32* %3, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %61
  %70 = load i32, i32* %3, align 4
  %71 = call i32 @mlog_errno(i32 %70)
  br label %104

72:                                               ; preds = %61
  %73 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %74 = load i32, i32* @OCFS2_TRUNCATE_LOG_UPDATE, align 4
  %75 = call i32* @ocfs2_start_trans(%struct.ocfs2_super* %73, i32 %74)
  store i32* %75, i32** %5, align 8
  %76 = load i32*, i32** %5, align 8
  %77 = call i64 @IS_ERR(i32* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %72
  %80 = load i32*, i32** %5, align 8
  %81 = call i32 @PTR_ERR(i32* %80)
  store i32 %81, i32* %3, align 4
  %82 = load i32, i32* %3, align 4
  %83 = call i32 @mlog_errno(i32 %82)
  br label %99

84:                                               ; preds = %72
  %85 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %86 = load i32*, i32** %5, align 8
  %87 = load %struct.inode*, %struct.inode** %7, align 8
  %88 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %89 = call i32 @ocfs2_replay_truncate_records(%struct.ocfs2_super* %85, i32* %86, %struct.inode* %87, %struct.buffer_head* %88)
  store i32 %89, i32* %3, align 4
  %90 = load i32, i32* %3, align 4
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %84
  %93 = load i32, i32* %3, align 4
  %94 = call i32 @mlog_errno(i32 %93)
  br label %95

95:                                               ; preds = %92, %84
  %96 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %97 = load i32*, i32** %5, align 8
  %98 = call i32 @ocfs2_commit_trans(%struct.ocfs2_super* %96, i32* %97)
  br label %99

99:                                               ; preds = %95, %79
  %100 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %101 = call i32 @brelse(%struct.buffer_head* %100)
  %102 = load %struct.inode*, %struct.inode** %7, align 8
  %103 = call i32 @ocfs2_inode_unlock(%struct.inode* %102, i32 1)
  br label %104

104:                                              ; preds = %99, %69
  %105 = load %struct.inode*, %struct.inode** %7, align 8
  %106 = getelementptr inbounds %struct.inode, %struct.inode* %105, i32 0, i32 0
  %107 = call i32 @mutex_unlock(i32* %106)
  %108 = load %struct.inode*, %struct.inode** %7, align 8
  %109 = call i32 @iput(%struct.inode* %108)
  br label %110

110:                                              ; preds = %104, %56, %48
  %111 = load i32, i32* %3, align 4
  %112 = call i32 @mlog_exit(i32 %111)
  %113 = load i32, i32* %3, align 4
  ret i32 %113
}

declare dso_local i32 @mlog_entry_void(...) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @mutex_trylock(i32*) #1

declare dso_local i32 @OCFS2_IS_VALID_DINODE(%struct.ocfs2_dinode*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @mlog(i32, i8*, ...) #1

declare dso_local %struct.TYPE_4__* @OCFS2_I(%struct.inode*) #1

declare dso_local %struct.inode* @ocfs2_get_system_file_inode(%struct.ocfs2_super*, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ocfs2_inode_lock(%struct.inode*, %struct.buffer_head**, i32) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32* @ocfs2_start_trans(%struct.ocfs2_super*, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @ocfs2_replay_truncate_records(%struct.ocfs2_super*, i32*, %struct.inode*, %struct.buffer_head*) #1

declare dso_local i32 @ocfs2_commit_trans(%struct.ocfs2_super*, i32*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @ocfs2_inode_unlock(%struct.inode*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local i32 @mlog_exit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
