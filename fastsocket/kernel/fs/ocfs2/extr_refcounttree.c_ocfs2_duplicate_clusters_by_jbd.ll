; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_refcounttree.c_ocfs2_duplicate_clusters_by_jbd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_refcounttree.c_ocfs2_duplicate_clusters_by_jbd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_cow_context = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { %struct.ocfs2_caching_info* }
%struct.ocfs2_caching_info = type { i32 }
%struct.TYPE_3__ = type { %struct.super_block* }
%struct.super_block = type { i32 }
%struct.ocfs2_super = type { i32 }
%struct.buffer_head = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"old_cluster %u, new %u, len %u\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@OCFS2_JOURNAL_ACCESS_CREATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.ocfs2_cow_context*, i32, i32, i32, i32)* @ocfs2_duplicate_clusters_by_jbd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_duplicate_clusters_by_jbd(i32* %0, %struct.ocfs2_cow_context* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca %struct.ocfs2_cow_context*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.super_block*, align 8
  %15 = alloca %struct.ocfs2_caching_info*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca %struct.ocfs2_super*, align 8
  %21 = alloca %struct.buffer_head*, align 8
  %22 = alloca %struct.buffer_head*, align 8
  store i32* %0, i32** %7, align 8
  store %struct.ocfs2_cow_context* %1, %struct.ocfs2_cow_context** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %23 = load %struct.ocfs2_cow_context*, %struct.ocfs2_cow_context** %8, align 8
  %24 = getelementptr inbounds %struct.ocfs2_cow_context, %struct.ocfs2_cow_context* %23, i32 0, i32 1
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load %struct.super_block*, %struct.super_block** %26, align 8
  store %struct.super_block* %27, %struct.super_block** %14, align 8
  %28 = load %struct.ocfs2_cow_context*, %struct.ocfs2_cow_context** %8, align 8
  %29 = getelementptr inbounds %struct.ocfs2_cow_context, %struct.ocfs2_cow_context* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %30, align 8
  store %struct.ocfs2_caching_info* %31, %struct.ocfs2_caching_info** %15, align 8
  %32 = load %struct.super_block*, %struct.super_block** %14, align 8
  %33 = load i32, i32* %12, align 4
  %34 = call i8* @ocfs2_clusters_to_blocks(%struct.super_block* %32, i32 %33)
  %35 = ptrtoint i8* %34 to i32
  store i32 %35, i32* %17, align 4
  %36 = load %struct.super_block*, %struct.super_block** %14, align 8
  %37 = load i32, i32* %10, align 4
  %38 = call i8* @ocfs2_clusters_to_blocks(%struct.super_block* %36, i32 %37)
  store i8* %38, i8** %18, align 8
  %39 = load %struct.super_block*, %struct.super_block** %14, align 8
  %40 = load i32, i32* %11, align 4
  %41 = call i8* @ocfs2_clusters_to_blocks(%struct.super_block* %39, i32 %40)
  store i8* %41, i8** %19, align 8
  %42 = load %struct.super_block*, %struct.super_block** %14, align 8
  %43 = call %struct.ocfs2_super* @OCFS2_SB(%struct.super_block* %42)
  store %struct.ocfs2_super* %43, %struct.ocfs2_super** %20, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %21, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %22, align 8
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* %11, align 4
  %46 = load i32, i32* %12, align 4
  %47 = call i32 @mlog(i32 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %44, i32 %45, i32 %46)
  store i32 0, i32* %16, align 4
  br label %48

48:                                               ; preds = %112, %6
  %49 = load i32, i32* %16, align 4
  %50 = load i32, i32* %17, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %119

52:                                               ; preds = %48
  %53 = load %struct.ocfs2_super*, %struct.ocfs2_super** %20, align 8
  %54 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i8*, i8** %19, align 8
  %57 = call %struct.buffer_head* @sb_getblk(i32 %55, i8* %56)
  store %struct.buffer_head* %57, %struct.buffer_head** %22, align 8
  %58 = load %struct.buffer_head*, %struct.buffer_head** %22, align 8
  %59 = icmp eq %struct.buffer_head* %58, null
  br i1 %59, label %60, label %65

60:                                               ; preds = %52
  %61 = load i32, i32* @EIO, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %13, align 4
  %63 = load i32, i32* %13, align 4
  %64 = call i32 @mlog_errno(i32 %63)
  br label %119

65:                                               ; preds = %52
  %66 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %15, align 8
  %67 = load %struct.buffer_head*, %struct.buffer_head** %22, align 8
  %68 = call i32 @ocfs2_set_new_buffer_uptodate(%struct.ocfs2_caching_info* %66, %struct.buffer_head* %67)
  %69 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %15, align 8
  %70 = load i8*, i8** %18, align 8
  %71 = call i32 @ocfs2_read_block(%struct.ocfs2_caching_info* %69, i8* %70, %struct.buffer_head** %21, i32* null)
  store i32 %71, i32* %13, align 4
  %72 = load i32, i32* %13, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %65
  %75 = load i32, i32* %13, align 4
  %76 = call i32 @mlog_errno(i32 %75)
  br label %119

77:                                               ; preds = %65
  %78 = load i32*, i32** %7, align 8
  %79 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %15, align 8
  %80 = load %struct.buffer_head*, %struct.buffer_head** %22, align 8
  %81 = load i32, i32* @OCFS2_JOURNAL_ACCESS_CREATE, align 4
  %82 = call i32 @ocfs2_journal_access(i32* %78, %struct.ocfs2_caching_info* %79, %struct.buffer_head* %80, i32 %81)
  store i32 %82, i32* %13, align 4
  %83 = load i32, i32* %13, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %77
  %86 = load i32, i32* %13, align 4
  %87 = call i32 @mlog_errno(i32 %86)
  br label %119

88:                                               ; preds = %77
  %89 = load %struct.buffer_head*, %struct.buffer_head** %22, align 8
  %90 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.buffer_head*, %struct.buffer_head** %21, align 8
  %93 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.super_block*, %struct.super_block** %14, align 8
  %96 = getelementptr inbounds %struct.super_block, %struct.super_block* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @memcpy(i32 %91, i32 %94, i32 %97)
  %99 = load i32*, i32** %7, align 8
  %100 = load %struct.buffer_head*, %struct.buffer_head** %22, align 8
  %101 = call i32 @ocfs2_journal_dirty(i32* %99, %struct.buffer_head* %100)
  store i32 %101, i32* %13, align 4
  %102 = load i32, i32* %13, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %88
  %105 = load i32, i32* %13, align 4
  %106 = call i32 @mlog_errno(i32 %105)
  br label %119

107:                                              ; preds = %88
  %108 = load %struct.buffer_head*, %struct.buffer_head** %22, align 8
  %109 = call i32 @brelse(%struct.buffer_head* %108)
  %110 = load %struct.buffer_head*, %struct.buffer_head** %21, align 8
  %111 = call i32 @brelse(%struct.buffer_head* %110)
  store %struct.buffer_head* null, %struct.buffer_head** %22, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %21, align 8
  br label %112

112:                                              ; preds = %107
  %113 = load i32, i32* %16, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %16, align 4
  %115 = load i8*, i8** %18, align 8
  %116 = getelementptr inbounds i8, i8* %115, i32 1
  store i8* %116, i8** %18, align 8
  %117 = load i8*, i8** %19, align 8
  %118 = getelementptr inbounds i8, i8* %117, i32 1
  store i8* %118, i8** %19, align 8
  br label %48

119:                                              ; preds = %104, %85, %74, %60, %48
  %120 = load %struct.buffer_head*, %struct.buffer_head** %22, align 8
  %121 = call i32 @brelse(%struct.buffer_head* %120)
  %122 = load %struct.buffer_head*, %struct.buffer_head** %21, align 8
  %123 = call i32 @brelse(%struct.buffer_head* %122)
  %124 = load i32, i32* %13, align 4
  ret i32 %124
}

declare dso_local i8* @ocfs2_clusters_to_blocks(%struct.super_block*, i32) #1

declare dso_local %struct.ocfs2_super* @OCFS2_SB(%struct.super_block*) #1

declare dso_local i32 @mlog(i32, i8*, i32, i32, i32) #1

declare dso_local %struct.buffer_head* @sb_getblk(i32, i8*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_set_new_buffer_uptodate(%struct.ocfs2_caching_info*, %struct.buffer_head*) #1

declare dso_local i32 @ocfs2_read_block(%struct.ocfs2_caching_info*, i8*, %struct.buffer_head**, i32*) #1

declare dso_local i32 @ocfs2_journal_access(i32*, %struct.ocfs2_caching_info*, %struct.buffer_head*, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @ocfs2_journal_dirty(i32*, %struct.buffer_head*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
