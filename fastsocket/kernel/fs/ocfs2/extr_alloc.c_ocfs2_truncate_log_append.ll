; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_alloc.c_ocfs2_truncate_log_append.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_alloc.c_ocfs2_truncate_log_append.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_super = type { i32, %struct.buffer_head*, %struct.inode* }
%struct.buffer_head = type { i64 }
%struct.inode = type { i32 }
%struct.ocfs2_dinode = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.ocfs2_truncate_log }
%struct.ocfs2_truncate_log = type { %struct.TYPE_5__*, i32, i32 }
%struct.TYPE_5__ = type { i8*, i8* }
%struct.TYPE_6__ = type { i64 }

@.str = private unnamed_addr constant [37 x i8] c"start_blk = %llu, num_clusters = %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"Truncate record count on #%llu invalid wanted %u, actual %u\0A\00", align 1
@ENOSPC = common dso_local global i32 0, align 4
@OCFS2_JOURNAL_ACCESS_WRITE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [73 x i8] c"Log truncate of %u clusters starting at cluster %u to %llu (index = %d)\0A\00", align 1
@.str.3 = private unnamed_addr constant [52 x i8] c"Coalesce with index %u (start = %u, clusters = %u)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_truncate_log_append(%struct.ocfs2_super* %0, i32* %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.ocfs2_super*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.inode*, align 8
  %14 = alloca %struct.buffer_head*, align 8
  %15 = alloca %struct.ocfs2_dinode*, align 8
  %16 = alloca %struct.ocfs2_truncate_log*, align 8
  store %struct.ocfs2_super* %0, %struct.ocfs2_super** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %17 = load %struct.ocfs2_super*, %struct.ocfs2_super** %5, align 8
  %18 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %17, i32 0, i32 2
  %19 = load %struct.inode*, %struct.inode** %18, align 8
  store %struct.inode* %19, %struct.inode** %13, align 8
  %20 = load %struct.ocfs2_super*, %struct.ocfs2_super** %5, align 8
  %21 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %20, i32 0, i32 1
  %22 = load %struct.buffer_head*, %struct.buffer_head** %21, align 8
  store %struct.buffer_head* %22, %struct.buffer_head** %14, align 8
  %23 = load i64, i64* %7, align 8
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @mlog_entry(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i64 %23, i32 %24)
  %26 = load %struct.inode*, %struct.inode** %13, align 8
  %27 = getelementptr inbounds %struct.inode, %struct.inode* %26, i32 0, i32 0
  %28 = call i32 @mutex_trylock(i32* %27)
  %29 = call i32 @BUG_ON(i32 %28)
  %30 = load %struct.ocfs2_super*, %struct.ocfs2_super** %5, align 8
  %31 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i64, i64* %7, align 8
  %34 = call i32 @ocfs2_blocks_to_clusters(i32 %32, i64 %33)
  store i32 %34, i32* %11, align 4
  %35 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %36 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = inttoptr i64 %37 to %struct.ocfs2_dinode*
  store %struct.ocfs2_dinode* %38, %struct.ocfs2_dinode** %15, align 8
  %39 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %15, align 8
  %40 = call i32 @OCFS2_IS_VALID_DINODE(%struct.ocfs2_dinode* %39)
  %41 = icmp ne i32 %40, 0
  %42 = xor i1 %41, true
  %43 = zext i1 %42 to i32
  %44 = call i32 @BUG_ON(i32 %43)
  %45 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %15, align 8
  %46 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  store %struct.ocfs2_truncate_log* %47, %struct.ocfs2_truncate_log** %16, align 8
  %48 = load %struct.ocfs2_truncate_log*, %struct.ocfs2_truncate_log** %16, align 8
  %49 = getelementptr inbounds %struct.ocfs2_truncate_log, %struct.ocfs2_truncate_log* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = call i8* @le16_to_cpu(i32 %50)
  %52 = ptrtoint i8* %51 to i32
  store i32 %52, i32* %12, align 4
  %53 = load i32, i32* %12, align 4
  %54 = load %struct.ocfs2_super*, %struct.ocfs2_super** %5, align 8
  %55 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @ocfs2_truncate_recs_per_inode(i32 %56)
  %58 = icmp ugt i32 %53, %57
  br i1 %58, label %62, label %59

59:                                               ; preds = %4
  %60 = load i32, i32* %12, align 4
  %61 = icmp eq i32 %60, 0
  br label %62

62:                                               ; preds = %59, %4
  %63 = phi i1 [ true, %4 ], [ %61, %59 ]
  %64 = zext i1 %63 to i32
  %65 = load %struct.inode*, %struct.inode** %13, align 8
  %66 = call %struct.TYPE_6__* @OCFS2_I(%struct.inode* %65)
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.ocfs2_super*, %struct.ocfs2_super** %5, align 8
  %70 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @ocfs2_truncate_recs_per_inode(i32 %71)
  %73 = load %struct.ocfs2_truncate_log*, %struct.ocfs2_truncate_log** %16, align 8
  %74 = getelementptr inbounds %struct.ocfs2_truncate_log, %struct.ocfs2_truncate_log* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = call i8* @le16_to_cpu(i32 %75)
  %77 = call i32 @mlog_bug_on_msg(i32 %64, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0), i64 %68, i32 %72, i8* %76)
  %78 = load %struct.ocfs2_truncate_log*, %struct.ocfs2_truncate_log** %16, align 8
  %79 = getelementptr inbounds %struct.ocfs2_truncate_log, %struct.ocfs2_truncate_log* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = call i8* @le16_to_cpu(i32 %80)
  %82 = ptrtoint i8* %81 to i32
  store i32 %82, i32* %10, align 4
  %83 = load i32, i32* %10, align 4
  %84 = load i32, i32* %12, align 4
  %85 = icmp uge i32 %83, %84
  br i1 %85, label %86, label %91

86:                                               ; preds = %62
  %87 = load i32, i32* @ENOSPC, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %9, align 4
  %89 = load i32, i32* %9, align 4
  %90 = call i32 @mlog_errno(i32 %89)
  br label %177

91:                                               ; preds = %62
  %92 = load i32*, i32** %6, align 8
  %93 = load %struct.inode*, %struct.inode** %13, align 8
  %94 = call i32 @INODE_CACHE(%struct.inode* %93)
  %95 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %96 = load i32, i32* @OCFS2_JOURNAL_ACCESS_WRITE, align 4
  %97 = call i32 @ocfs2_journal_access_di(i32* %92, i32 %94, %struct.buffer_head* %95, i32 %96)
  store i32 %97, i32* %9, align 4
  %98 = load i32, i32* %9, align 4
  %99 = icmp slt i32 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %91
  %101 = load i32, i32* %9, align 4
  %102 = call i32 @mlog_errno(i32 %101)
  br label %177

103:                                              ; preds = %91
  %104 = load i32, i32* %8, align 4
  %105 = load i32, i32* %11, align 4
  %106 = load %struct.inode*, %struct.inode** %13, align 8
  %107 = call %struct.TYPE_6__* @OCFS2_I(%struct.inode* %106)
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = trunc i64 %109 to i32
  %111 = load i32, i32* %10, align 4
  %112 = call i32 (i32, i8*, i32, i32, i32, ...) @mlog(i32 0, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.2, i64 0, i64 0), i32 %104, i32 %105, i32 %110, i32 %111)
  %113 = load %struct.ocfs2_truncate_log*, %struct.ocfs2_truncate_log** %16, align 8
  %114 = load i32, i32* %11, align 4
  %115 = call i64 @ocfs2_truncate_log_can_coalesce(%struct.ocfs2_truncate_log* %113, i32 %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %143

117:                                              ; preds = %103
  %118 = load i32, i32* %10, align 4
  %119 = add nsw i32 %118, -1
  store i32 %119, i32* %10, align 4
  %120 = load %struct.ocfs2_truncate_log*, %struct.ocfs2_truncate_log** %16, align 8
  %121 = getelementptr inbounds %struct.ocfs2_truncate_log, %struct.ocfs2_truncate_log* %120, i32 0, i32 0
  %122 = load %struct.TYPE_5__*, %struct.TYPE_5__** %121, align 8
  %123 = load i32, i32* %10, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 0
  %127 = load i8*, i8** %126, align 8
  %128 = call i32 @le32_to_cpu(i8* %127)
  %129 = load i32, i32* %8, align 4
  %130 = add i32 %129, %128
  store i32 %130, i32* %8, align 4
  %131 = load i32, i32* %10, align 4
  %132 = load %struct.ocfs2_truncate_log*, %struct.ocfs2_truncate_log** %16, align 8
  %133 = getelementptr inbounds %struct.ocfs2_truncate_log, %struct.ocfs2_truncate_log* %132, i32 0, i32 0
  %134 = load %struct.TYPE_5__*, %struct.TYPE_5__** %133, align 8
  %135 = load i32, i32* %10, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i64 %136
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %137, i32 0, i32 1
  %139 = load i8*, i8** %138, align 8
  %140 = call i32 @le32_to_cpu(i8* %139)
  %141 = load i32, i32* %8, align 4
  %142 = call i32 (i32, i8*, i32, i32, i32, ...) @mlog(i32 0, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0), i32 %131, i32 %140, i32 %141)
  br label %158

143:                                              ; preds = %103
  %144 = load i32, i32* %11, align 4
  %145 = call i8* @cpu_to_le32(i32 %144)
  %146 = load %struct.ocfs2_truncate_log*, %struct.ocfs2_truncate_log** %16, align 8
  %147 = getelementptr inbounds %struct.ocfs2_truncate_log, %struct.ocfs2_truncate_log* %146, i32 0, i32 0
  %148 = load %struct.TYPE_5__*, %struct.TYPE_5__** %147, align 8
  %149 = load i32, i32* %10, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %148, i64 %150
  %152 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %151, i32 0, i32 1
  store i8* %145, i8** %152, align 8
  %153 = load i32, i32* %10, align 4
  %154 = add nsw i32 %153, 1
  %155 = call i32 @cpu_to_le16(i32 %154)
  %156 = load %struct.ocfs2_truncate_log*, %struct.ocfs2_truncate_log** %16, align 8
  %157 = getelementptr inbounds %struct.ocfs2_truncate_log, %struct.ocfs2_truncate_log* %156, i32 0, i32 1
  store i32 %155, i32* %157, align 8
  br label %158

158:                                              ; preds = %143, %117
  %159 = load i32, i32* %8, align 4
  %160 = call i8* @cpu_to_le32(i32 %159)
  %161 = load %struct.ocfs2_truncate_log*, %struct.ocfs2_truncate_log** %16, align 8
  %162 = getelementptr inbounds %struct.ocfs2_truncate_log, %struct.ocfs2_truncate_log* %161, i32 0, i32 0
  %163 = load %struct.TYPE_5__*, %struct.TYPE_5__** %162, align 8
  %164 = load i32, i32* %10, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %163, i64 %165
  %167 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %166, i32 0, i32 0
  store i8* %160, i8** %167, align 8
  %168 = load i32*, i32** %6, align 8
  %169 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %170 = call i32 @ocfs2_journal_dirty(i32* %168, %struct.buffer_head* %169)
  store i32 %170, i32* %9, align 4
  %171 = load i32, i32* %9, align 4
  %172 = icmp slt i32 %171, 0
  br i1 %172, label %173, label %176

173:                                              ; preds = %158
  %174 = load i32, i32* %9, align 4
  %175 = call i32 @mlog_errno(i32 %174)
  br label %177

176:                                              ; preds = %158
  br label %177

177:                                              ; preds = %176, %173, %100, %86
  %178 = load i32, i32* %9, align 4
  %179 = call i32 @mlog_exit(i32 %178)
  %180 = load i32, i32* %9, align 4
  ret i32 %180
}

declare dso_local i32 @mlog_entry(i8*, i64, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @mutex_trylock(i32*) #1

declare dso_local i32 @ocfs2_blocks_to_clusters(i32, i64) #1

declare dso_local i32 @OCFS2_IS_VALID_DINODE(%struct.ocfs2_dinode*) #1

declare dso_local i8* @le16_to_cpu(i32) #1

declare dso_local i32 @mlog_bug_on_msg(i32, i8*, i64, i32, i8*) #1

declare dso_local i32 @ocfs2_truncate_recs_per_inode(i32) #1

declare dso_local %struct.TYPE_6__* @OCFS2_I(%struct.inode*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_journal_access_di(i32*, i32, %struct.buffer_head*, i32) #1

declare dso_local i32 @INODE_CACHE(%struct.inode*) #1

declare dso_local i32 @mlog(i32, i8*, i32, i32, i32, ...) #1

declare dso_local i64 @ocfs2_truncate_log_can_coalesce(%struct.ocfs2_truncate_log*, i32) #1

declare dso_local i32 @le32_to_cpu(i8*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @ocfs2_journal_dirty(i32*, %struct.buffer_head*) #1

declare dso_local i32 @mlog_exit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
