; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_alloc.c_ocfs2_complete_truncate_log_recovery.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_alloc.c_ocfs2_complete_truncate_log_recovery.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_super = type { i32, %struct.inode* }
%struct.inode = type { i32 }
%struct.ocfs2_dinode = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.ocfs2_truncate_log }
%struct.ocfs2_truncate_log = type { %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_6__ = type { i64 }

@ML_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Asked to recover my own truncate log!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"cleanup %u records from %llu\0A\00", align 1
@OCFS2_TRUNCATE_LOG_UPDATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_complete_truncate_log_recovery(%struct.ocfs2_super* %0, %struct.ocfs2_dinode* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ocfs2_super*, align 8
  %5 = alloca %struct.ocfs2_dinode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca %struct.inode*, align 8
  %14 = alloca %struct.ocfs2_truncate_log*, align 8
  store %struct.ocfs2_super* %0, %struct.ocfs2_super** %4, align 8
  store %struct.ocfs2_dinode* %1, %struct.ocfs2_dinode** %5, align 8
  store i32 0, i32* %6, align 4
  %15 = load %struct.ocfs2_super*, %struct.ocfs2_super** %4, align 8
  %16 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %15, i32 0, i32 1
  %17 = load %struct.inode*, %struct.inode** %16, align 8
  store %struct.inode* %17, %struct.inode** %13, align 8
  %18 = call i32 (...) @mlog_entry_void()
  %19 = load %struct.inode*, %struct.inode** %13, align 8
  %20 = call %struct.TYPE_6__* @OCFS2_I(%struct.inode* %19)
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %5, align 8
  %24 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i64 @le64_to_cpu(i32 %25)
  %27 = icmp eq i64 %22, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %2
  %29 = load i32, i32* @ML_ERROR, align 4
  %30 = call i32 (i32, i8*, ...) @mlog(i32 %29, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %128

33:                                               ; preds = %2
  %34 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %5, align 8
  %35 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  store %struct.ocfs2_truncate_log* %36, %struct.ocfs2_truncate_log** %14, align 8
  %37 = load %struct.ocfs2_truncate_log*, %struct.ocfs2_truncate_log** %14, align 8
  %38 = getelementptr inbounds %struct.ocfs2_truncate_log, %struct.ocfs2_truncate_log* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @le16_to_cpu(i32 %39)
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %9, align 4
  %42 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %5, align 8
  %43 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i64 @le64_to_cpu(i32 %44)
  %46 = call i32 (i32, i8*, ...) @mlog(i32 0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %41, i64 %45)
  %47 = load %struct.inode*, %struct.inode** %13, align 8
  %48 = getelementptr inbounds %struct.inode, %struct.inode* %47, i32 0, i32 0
  %49 = call i32 @mutex_lock(i32* %48)
  store i32 0, i32* %7, align 4
  br label %50

50:                                               ; preds = %117, %33
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* %9, align 4
  %53 = icmp ult i32 %51, %52
  br i1 %53, label %54, label %120

54:                                               ; preds = %50
  %55 = load %struct.ocfs2_super*, %struct.ocfs2_super** %4, align 8
  %56 = call i64 @ocfs2_truncate_log_needs_flush(%struct.ocfs2_super* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %67

58:                                               ; preds = %54
  %59 = load %struct.ocfs2_super*, %struct.ocfs2_super** %4, align 8
  %60 = call i32 @__ocfs2_flush_truncate_log(%struct.ocfs2_super* %59)
  store i32 %60, i32* %6, align 4
  %61 = load i32, i32* %6, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %58
  %64 = load i32, i32* %6, align 4
  %65 = call i32 @mlog_errno(i32 %64)
  br label %121

66:                                               ; preds = %58
  br label %67

67:                                               ; preds = %66, %54
  %68 = load %struct.ocfs2_super*, %struct.ocfs2_super** %4, align 8
  %69 = load i32, i32* @OCFS2_TRUNCATE_LOG_UPDATE, align 4
  %70 = call i32* @ocfs2_start_trans(%struct.ocfs2_super* %68, i32 %69)
  store i32* %70, i32** %12, align 8
  %71 = load i32*, i32** %12, align 8
  %72 = call i64 @IS_ERR(i32* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %67
  %75 = load i32*, i32** %12, align 8
  %76 = call i32 @PTR_ERR(i32* %75)
  store i32 %76, i32* %6, align 4
  %77 = load i32, i32* %6, align 4
  %78 = call i32 @mlog_errno(i32 %77)
  br label %121

79:                                               ; preds = %67
  %80 = load %struct.ocfs2_truncate_log*, %struct.ocfs2_truncate_log** %14, align 8
  %81 = getelementptr inbounds %struct.ocfs2_truncate_log, %struct.ocfs2_truncate_log* %80, i32 0, i32 0
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %81, align 8
  %83 = load i32, i32* %7, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @le32_to_cpu(i32 %87)
  store i32 %88, i32* %8, align 4
  %89 = load %struct.ocfs2_truncate_log*, %struct.ocfs2_truncate_log** %14, align 8
  %90 = getelementptr inbounds %struct.ocfs2_truncate_log, %struct.ocfs2_truncate_log* %89, i32 0, i32 0
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %90, align 8
  %92 = load i32, i32* %7, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @le32_to_cpu(i32 %96)
  store i32 %97, i32* %10, align 4
  %98 = load %struct.ocfs2_super*, %struct.ocfs2_super** %4, align 8
  %99 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* %10, align 4
  %102 = call i32 @ocfs2_clusters_to_blocks(i32 %100, i32 %101)
  store i32 %102, i32* %11, align 4
  %103 = load %struct.ocfs2_super*, %struct.ocfs2_super** %4, align 8
  %104 = load i32*, i32** %12, align 8
  %105 = load i32, i32* %11, align 4
  %106 = load i32, i32* %8, align 4
  %107 = call i32 @ocfs2_truncate_log_append(%struct.ocfs2_super* %103, i32* %104, i32 %105, i32 %106)
  store i32 %107, i32* %6, align 4
  %108 = load %struct.ocfs2_super*, %struct.ocfs2_super** %4, align 8
  %109 = load i32*, i32** %12, align 8
  %110 = call i32 @ocfs2_commit_trans(%struct.ocfs2_super* %108, i32* %109)
  %111 = load i32, i32* %6, align 4
  %112 = icmp slt i32 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %79
  %114 = load i32, i32* %6, align 4
  %115 = call i32 @mlog_errno(i32 %114)
  br label %121

116:                                              ; preds = %79
  br label %117

117:                                              ; preds = %116
  %118 = load i32, i32* %7, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %7, align 4
  br label %50

120:                                              ; preds = %50
  br label %121

121:                                              ; preds = %120, %113, %74, %63
  %122 = load %struct.inode*, %struct.inode** %13, align 8
  %123 = getelementptr inbounds %struct.inode, %struct.inode* %122, i32 0, i32 0
  %124 = call i32 @mutex_unlock(i32* %123)
  %125 = load i32, i32* %6, align 4
  %126 = call i32 @mlog_exit(i32 %125)
  %127 = load i32, i32* %6, align 4
  store i32 %127, i32* %3, align 4
  br label %128

128:                                              ; preds = %121, %28
  %129 = load i32, i32* %3, align 4
  ret i32 %129
}

declare dso_local i32 @mlog_entry_void(...) #1

declare dso_local %struct.TYPE_6__* @OCFS2_I(%struct.inode*) #1

declare dso_local i64 @le64_to_cpu(i32) #1

declare dso_local i32 @mlog(i32, i8*, ...) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @ocfs2_truncate_log_needs_flush(%struct.ocfs2_super*) #1

declare dso_local i32 @__ocfs2_flush_truncate_log(%struct.ocfs2_super*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32* @ocfs2_start_trans(%struct.ocfs2_super*, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @ocfs2_clusters_to_blocks(i32, i32) #1

declare dso_local i32 @ocfs2_truncate_log_append(%struct.ocfs2_super*, i32*, i32, i32) #1

declare dso_local i32 @ocfs2_commit_trans(%struct.ocfs2_super*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @mlog_exit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
