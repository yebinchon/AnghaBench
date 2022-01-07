; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_alloc.c_ocfs2_replay_truncate_records.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_alloc.c_ocfs2_replay_truncate_records.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_super = type { %struct.buffer_head*, %struct.inode* }
%struct.inode = type { i32 }
%struct.buffer_head = type { i64 }
%struct.ocfs2_truncate_rec = type { i32, i32 }
%struct.ocfs2_dinode = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ocfs2_truncate_log }
%struct.ocfs2_truncate_log = type { %struct.ocfs2_truncate_rec*, i32 }

@OCFS2_JOURNAL_ACCESS_WRITE = common dso_local global i32 0, align 4
@OCFS2_TRUNCATE_LOG_FLUSH_ONE_REC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"free record %d, start = %u, clusters = %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocfs2_super*, i32*, %struct.inode*, %struct.buffer_head*)* @ocfs2_replay_truncate_records to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_replay_truncate_records(%struct.ocfs2_super* %0, i32* %1, %struct.inode* %2, %struct.buffer_head* %3) #0 {
  %5 = alloca %struct.ocfs2_super*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.buffer_head*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.ocfs2_truncate_rec, align 4
  %14 = alloca %struct.ocfs2_dinode*, align 8
  %15 = alloca %struct.ocfs2_truncate_log*, align 8
  %16 = alloca %struct.inode*, align 8
  %17 = alloca %struct.buffer_head*, align 8
  store %struct.ocfs2_super* %0, %struct.ocfs2_super** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.inode* %2, %struct.inode** %7, align 8
  store %struct.buffer_head* %3, %struct.buffer_head** %8, align 8
  store i32 0, i32* %9, align 4
  %18 = load %struct.ocfs2_super*, %struct.ocfs2_super** %5, align 8
  %19 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %18, i32 0, i32 1
  %20 = load %struct.inode*, %struct.inode** %19, align 8
  store %struct.inode* %20, %struct.inode** %16, align 8
  %21 = load %struct.ocfs2_super*, %struct.ocfs2_super** %5, align 8
  %22 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %21, i32 0, i32 0
  %23 = load %struct.buffer_head*, %struct.buffer_head** %22, align 8
  store %struct.buffer_head* %23, %struct.buffer_head** %17, align 8
  %24 = call i32 (...) @mlog_entry_void()
  %25 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  %26 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to %struct.ocfs2_dinode*
  store %struct.ocfs2_dinode* %28, %struct.ocfs2_dinode** %14, align 8
  %29 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %14, align 8
  %30 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  store %struct.ocfs2_truncate_log* %31, %struct.ocfs2_truncate_log** %15, align 8
  %32 = load %struct.ocfs2_truncate_log*, %struct.ocfs2_truncate_log** %15, align 8
  %33 = getelementptr inbounds %struct.ocfs2_truncate_log, %struct.ocfs2_truncate_log* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @le16_to_cpu(i32 %34)
  %36 = sub nsw i32 %35, 1
  store i32 %36, i32* %10, align 4
  br label %37

37:                                               ; preds = %114, %4
  %38 = load i32, i32* %10, align 4
  %39 = icmp sge i32 %38, 0
  br i1 %39, label %40, label %117

40:                                               ; preds = %37
  %41 = load i32*, i32** %6, align 8
  %42 = load %struct.inode*, %struct.inode** %16, align 8
  %43 = call i32 @INODE_CACHE(%struct.inode* %42)
  %44 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  %45 = load i32, i32* @OCFS2_JOURNAL_ACCESS_WRITE, align 4
  %46 = call i32 @ocfs2_journal_access_di(i32* %41, i32 %43, %struct.buffer_head* %44, i32 %45)
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* %9, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %40
  %50 = load i32, i32* %9, align 4
  %51 = call i32 @mlog_errno(i32 %50)
  br label %118

52:                                               ; preds = %40
  %53 = load i32, i32* %10, align 4
  %54 = call i32 @cpu_to_le16(i32 %53)
  %55 = load %struct.ocfs2_truncate_log*, %struct.ocfs2_truncate_log** %15, align 8
  %56 = getelementptr inbounds %struct.ocfs2_truncate_log, %struct.ocfs2_truncate_log* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 8
  %57 = load i32*, i32** %6, align 8
  %58 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  %59 = call i32 @ocfs2_journal_dirty(i32* %57, %struct.buffer_head* %58)
  store i32 %59, i32* %9, align 4
  %60 = load i32, i32* %9, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %52
  %63 = load i32, i32* %9, align 4
  %64 = call i32 @mlog_errno(i32 %63)
  br label %118

65:                                               ; preds = %52
  %66 = load i32*, i32** %6, align 8
  %67 = load i32, i32* @OCFS2_TRUNCATE_LOG_FLUSH_ONE_REC, align 4
  %68 = call i32 @ocfs2_extend_trans(i32* %66, i32 %67)
  store i32 %68, i32* %9, align 4
  %69 = load i32, i32* %9, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %65
  %72 = load i32, i32* %9, align 4
  %73 = call i32 @mlog_errno(i32 %72)
  br label %118

74:                                               ; preds = %65
  %75 = load %struct.ocfs2_truncate_log*, %struct.ocfs2_truncate_log** %15, align 8
  %76 = getelementptr inbounds %struct.ocfs2_truncate_log, %struct.ocfs2_truncate_log* %75, i32 0, i32 0
  %77 = load %struct.ocfs2_truncate_rec*, %struct.ocfs2_truncate_rec** %76, align 8
  %78 = load i32, i32* %10, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.ocfs2_truncate_rec, %struct.ocfs2_truncate_rec* %77, i64 %79
  %81 = bitcast %struct.ocfs2_truncate_rec* %13 to i8*
  %82 = bitcast %struct.ocfs2_truncate_rec* %80 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %81, i8* align 4 %82, i64 8, i1 false)
  %83 = load %struct.inode*, %struct.inode** %7, align 8
  %84 = getelementptr inbounds %struct.inode, %struct.inode* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = getelementptr inbounds %struct.ocfs2_truncate_rec, %struct.ocfs2_truncate_rec* %13, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @le32_to_cpu(i32 %87)
  %89 = call i64 @ocfs2_clusters_to_blocks(i32 %85, i32 %88)
  store i64 %89, i64* %12, align 8
  %90 = getelementptr inbounds %struct.ocfs2_truncate_rec, %struct.ocfs2_truncate_rec* %13, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @le32_to_cpu(i32 %91)
  store i32 %92, i32* %11, align 4
  %93 = load i64, i64* %12, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %114

95:                                               ; preds = %74
  %96 = load i32, i32* %10, align 4
  %97 = getelementptr inbounds %struct.ocfs2_truncate_rec, %struct.ocfs2_truncate_rec* %13, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @le32_to_cpu(i32 %98)
  %100 = load i32, i32* %11, align 4
  %101 = call i32 @mlog(i32 0, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %96, i32 %99, i32 %100)
  %102 = load i32*, i32** %6, align 8
  %103 = load %struct.inode*, %struct.inode** %7, align 8
  %104 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %105 = load i64, i64* %12, align 8
  %106 = load i32, i32* %11, align 4
  %107 = call i32 @ocfs2_free_clusters(i32* %102, %struct.inode* %103, %struct.buffer_head* %104, i64 %105, i32 %106)
  store i32 %107, i32* %9, align 4
  %108 = load i32, i32* %9, align 4
  %109 = icmp slt i32 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %95
  %111 = load i32, i32* %9, align 4
  %112 = call i32 @mlog_errno(i32 %111)
  br label %118

113:                                              ; preds = %95
  br label %114

114:                                              ; preds = %113, %74
  %115 = load i32, i32* %10, align 4
  %116 = add nsw i32 %115, -1
  store i32 %116, i32* %10, align 4
  br label %37

117:                                              ; preds = %37
  br label %118

118:                                              ; preds = %117, %110, %71, %62, %49
  %119 = load i32, i32* %9, align 4
  %120 = call i32 @mlog_exit(i32 %119)
  %121 = load i32, i32* %9, align 4
  ret i32 %121
}

declare dso_local i32 @mlog_entry_void(...) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @ocfs2_journal_access_di(i32*, i32, %struct.buffer_head*, i32) #1

declare dso_local i32 @INODE_CACHE(%struct.inode*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @ocfs2_journal_dirty(i32*, %struct.buffer_head*) #1

declare dso_local i32 @ocfs2_extend_trans(i32*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @ocfs2_clusters_to_blocks(i32, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @mlog(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @ocfs2_free_clusters(i32*, %struct.inode*, %struct.buffer_head*, i64, i32) #1

declare dso_local i32 @mlog_exit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
