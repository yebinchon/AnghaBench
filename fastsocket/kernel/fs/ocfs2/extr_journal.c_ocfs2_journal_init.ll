; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_journal.c_ocfs2_journal_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_journal.c_ocfs2_journal_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_journal = type { i32, %struct.buffer_head*, %struct.inode*, %struct.TYPE_8__*, %struct.ocfs2_super* }
%struct.buffer_head = type { i64 }
%struct.inode = type { i64, i64 }
%struct.TYPE_8__ = type { i64 }
%struct.ocfs2_super = type { i32 }
%struct.ocfs2_dinode = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_9__ = type { i64, i32 }

@JOURNAL_SYSTEM_INODE = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@ML_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"access error (bad inode)\0A\00", align 1
@OCFS2_META_LOCK_RECOVERY = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Could not get lock on journal!\0A\00", align 1
@OCFS2_MIN_JOURNAL_SIZE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [40 x i8] c"Journal file size (%lld) is too small!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"inode->i_size = %lld\0A\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"inode->i_blocks = %llu\0A\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"inode->ip_clusters = %u\0A\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"Linux journal layer error\0A\00", align 1
@.str.7 = private unnamed_addr constant [39 x i8] c"Returned from jbd2_journal_init_inode\0A\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"j_journal->j_maxlen = %u\0A\00", align 1
@OCFS2_JOURNAL_DIRTY_FL = common dso_local global i32 0, align 4
@OCFS2_JOURNAL_LOADED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_journal_init(%struct.ocfs2_journal* %0, i32* %1) #0 {
  %3 = alloca %struct.ocfs2_journal*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca %struct.ocfs2_dinode*, align 8
  %9 = alloca %struct.buffer_head*, align 8
  %10 = alloca %struct.ocfs2_super*, align 8
  %11 = alloca i32, align 4
  store %struct.ocfs2_journal* %0, %struct.ocfs2_journal** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 -1, i32* %5, align 4
  store %struct.inode* null, %struct.inode** %6, align 8
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %7, align 8
  store %struct.ocfs2_dinode* null, %struct.ocfs2_dinode** %8, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %9, align 8
  store i32 0, i32* %11, align 4
  %12 = call i32 (...) @mlog_entry_void()
  %13 = load %struct.ocfs2_journal*, %struct.ocfs2_journal** %3, align 8
  %14 = icmp ne %struct.ocfs2_journal* %13, null
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = call i32 @BUG_ON(i32 %16)
  %18 = load %struct.ocfs2_journal*, %struct.ocfs2_journal** %3, align 8
  %19 = getelementptr inbounds %struct.ocfs2_journal, %struct.ocfs2_journal* %18, i32 0, i32 4
  %20 = load %struct.ocfs2_super*, %struct.ocfs2_super** %19, align 8
  store %struct.ocfs2_super* %20, %struct.ocfs2_super** %10, align 8
  %21 = load %struct.ocfs2_super*, %struct.ocfs2_super** %10, align 8
  %22 = load i32, i32* @JOURNAL_SYSTEM_INODE, align 4
  %23 = load %struct.ocfs2_super*, %struct.ocfs2_super** %10, align 8
  %24 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call %struct.inode* @ocfs2_get_system_file_inode(%struct.ocfs2_super* %21, i32 %22, i32 %25)
  store %struct.inode* %26, %struct.inode** %6, align 8
  %27 = load %struct.inode*, %struct.inode** %6, align 8
  %28 = icmp eq %struct.inode* %27, null
  br i1 %28, label %29, label %34

29:                                               ; preds = %2
  %30 = load i32, i32* @EACCES, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @mlog_errno(i32 %32)
  br label %137

34:                                               ; preds = %2
  %35 = load %struct.inode*, %struct.inode** %6, align 8
  %36 = call i64 @is_bad_inode(%struct.inode* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %34
  %39 = load i32, i32* @ML_ERROR, align 4
  %40 = call i32 (i32, i8*, ...) @mlog(i32 %39, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %41 = load %struct.inode*, %struct.inode** %6, align 8
  %42 = call i32 @iput(%struct.inode* %41)
  store %struct.inode* null, %struct.inode** %6, align 8
  %43 = load i32, i32* @EACCES, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %5, align 4
  br label %137

45:                                               ; preds = %34
  %46 = load %struct.inode*, %struct.inode** %6, align 8
  %47 = call i32 @SET_INODE_JOURNAL(%struct.inode* %46)
  %48 = load %struct.inode*, %struct.inode** %6, align 8
  %49 = call %struct.TYPE_9__* @OCFS2_I(%struct.inode* %48)
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %50, align 8
  %53 = load %struct.inode*, %struct.inode** %6, align 8
  %54 = load i32, i32* @OCFS2_META_LOCK_RECOVERY, align 4
  %55 = call i32 @ocfs2_inode_lock_full(%struct.inode* %53, %struct.buffer_head** %9, i32 1, i32 %54)
  store i32 %55, i32* %5, align 4
  %56 = load i32, i32* %5, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %67

58:                                               ; preds = %45
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* @ERESTARTSYS, align 4
  %61 = sub nsw i32 0, %60
  %62 = icmp ne i32 %59, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %58
  %64 = load i32, i32* @ML_ERROR, align 4
  %65 = call i32 (i32, i8*, ...) @mlog(i32 %64, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %66

66:                                               ; preds = %63, %58
  br label %137

67:                                               ; preds = %45
  store i32 1, i32* %11, align 4
  %68 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %69 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = inttoptr i64 %70 to %struct.ocfs2_dinode*
  store %struct.ocfs2_dinode* %71, %struct.ocfs2_dinode** %8, align 8
  %72 = load %struct.inode*, %struct.inode** %6, align 8
  %73 = getelementptr inbounds %struct.inode, %struct.inode* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @OCFS2_MIN_JOURNAL_SIZE, align 8
  %76 = icmp slt i64 %74, %75
  br i1 %76, label %77, label %85

77:                                               ; preds = %67
  %78 = load i32, i32* @ML_ERROR, align 4
  %79 = load %struct.inode*, %struct.inode** %6, align 8
  %80 = getelementptr inbounds %struct.inode, %struct.inode* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = call i32 (i32, i8*, ...) @mlog(i32 %78, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i64 %81)
  %83 = load i32, i32* @EINVAL, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %5, align 4
  br label %137

85:                                               ; preds = %67
  %86 = load %struct.inode*, %struct.inode** %6, align 8
  %87 = getelementptr inbounds %struct.inode, %struct.inode* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = call i32 (i32, i8*, ...) @mlog(i32 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i64 %88)
  %90 = load %struct.inode*, %struct.inode** %6, align 8
  %91 = getelementptr inbounds %struct.inode, %struct.inode* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = call i32 (i32, i8*, ...) @mlog(i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i64 %92)
  %94 = load %struct.inode*, %struct.inode** %6, align 8
  %95 = call %struct.TYPE_9__* @OCFS2_I(%struct.inode* %94)
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = call i32 (i32, i8*, ...) @mlog(i32 0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i64 %97)
  %99 = load %struct.inode*, %struct.inode** %6, align 8
  %100 = call %struct.TYPE_8__* @jbd2_journal_init_inode(%struct.inode* %99)
  store %struct.TYPE_8__* %100, %struct.TYPE_8__** %7, align 8
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %102 = icmp eq %struct.TYPE_8__* %101, null
  br i1 %102, label %103, label %108

103:                                              ; preds = %85
  %104 = load i32, i32* @ML_ERROR, align 4
  %105 = call i32 (i32, i8*, ...) @mlog(i32 %104, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0))
  %106 = load i32, i32* @EINVAL, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %5, align 4
  br label %137

108:                                              ; preds = %85
  %109 = call i32 (i32, i8*, ...) @mlog(i32 0, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.7, i64 0, i64 0))
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = call i32 (i32, i8*, ...) @mlog(i32 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0), i64 %112)
  %114 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %8, align 8
  %115 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @le32_to_cpu(i32 %118)
  %120 = load i32, i32* @OCFS2_JOURNAL_DIRTY_FL, align 4
  %121 = and i32 %119, %120
  %122 = load i32*, i32** %4, align 8
  store i32 %121, i32* %122, align 4
  %123 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %124 = load %struct.ocfs2_journal*, %struct.ocfs2_journal** %3, align 8
  %125 = getelementptr inbounds %struct.ocfs2_journal, %struct.ocfs2_journal* %124, i32 0, i32 3
  store %struct.TYPE_8__* %123, %struct.TYPE_8__** %125, align 8
  %126 = load %struct.inode*, %struct.inode** %6, align 8
  %127 = load %struct.ocfs2_journal*, %struct.ocfs2_journal** %3, align 8
  %128 = getelementptr inbounds %struct.ocfs2_journal, %struct.ocfs2_journal* %127, i32 0, i32 2
  store %struct.inode* %126, %struct.inode** %128, align 8
  %129 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %130 = load %struct.ocfs2_journal*, %struct.ocfs2_journal** %3, align 8
  %131 = getelementptr inbounds %struct.ocfs2_journal, %struct.ocfs2_journal* %130, i32 0, i32 1
  store %struct.buffer_head* %129, %struct.buffer_head** %131, align 8
  %132 = load %struct.ocfs2_super*, %struct.ocfs2_super** %10, align 8
  %133 = call i32 @ocfs2_set_journal_params(%struct.ocfs2_super* %132)
  %134 = load i32, i32* @OCFS2_JOURNAL_LOADED, align 4
  %135 = load %struct.ocfs2_journal*, %struct.ocfs2_journal** %3, align 8
  %136 = getelementptr inbounds %struct.ocfs2_journal, %struct.ocfs2_journal* %135, i32 0, i32 0
  store i32 %134, i32* %136, align 8
  store i32 0, i32* %5, align 4
  br label %137

137:                                              ; preds = %108, %103, %77, %66, %38, %29
  %138 = load i32, i32* %5, align 4
  %139 = icmp slt i32 %138, 0
  br i1 %139, label %140, label %160

140:                                              ; preds = %137
  %141 = load i32, i32* %11, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %146

143:                                              ; preds = %140
  %144 = load %struct.inode*, %struct.inode** %6, align 8
  %145 = call i32 @ocfs2_inode_unlock(%struct.inode* %144, i32 1)
  br label %146

146:                                              ; preds = %143, %140
  %147 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %148 = call i32 @brelse(%struct.buffer_head* %147)
  %149 = load %struct.inode*, %struct.inode** %6, align 8
  %150 = icmp ne %struct.inode* %149, null
  br i1 %150, label %151, label %159

151:                                              ; preds = %146
  %152 = load %struct.inode*, %struct.inode** %6, align 8
  %153 = call %struct.TYPE_9__* @OCFS2_I(%struct.inode* %152)
  %154 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 8
  %156 = add nsw i32 %155, -1
  store i32 %156, i32* %154, align 8
  %157 = load %struct.inode*, %struct.inode** %6, align 8
  %158 = call i32 @iput(%struct.inode* %157)
  br label %159

159:                                              ; preds = %151, %146
  br label %160

160:                                              ; preds = %159, %137
  %161 = load i32, i32* %5, align 4
  %162 = call i32 @mlog_exit(i32 %161)
  %163 = load i32, i32* %5, align 4
  ret i32 %163
}

declare dso_local i32 @mlog_entry_void(...) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local %struct.inode* @ocfs2_get_system_file_inode(%struct.ocfs2_super*, i32, i32) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i64 @is_bad_inode(%struct.inode*) #1

declare dso_local i32 @mlog(i32, i8*, ...) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local i32 @SET_INODE_JOURNAL(%struct.inode*) #1

declare dso_local %struct.TYPE_9__* @OCFS2_I(%struct.inode*) #1

declare dso_local i32 @ocfs2_inode_lock_full(%struct.inode*, %struct.buffer_head**, i32, i32) #1

declare dso_local %struct.TYPE_8__* @jbd2_journal_init_inode(%struct.inode*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @ocfs2_set_journal_params(%struct.ocfs2_super*) #1

declare dso_local i32 @ocfs2_inode_unlock(%struct.inode*, i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @mlog_exit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
