; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_refcounttree.c___ocfs2_decrease_refcount.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_refcounttree.c___ocfs2_decrease_refcount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_caching_info = type { i32 }
%struct.buffer_head = type { i32 }
%struct.ocfs2_alloc_context = type { i32 }
%struct.ocfs2_cached_dealloc_ctxt = type { i32 }
%struct.ocfs2_refcount_rec = type { i32, i32, i32 }
%struct.super_block = type { i32 }

@.str = private unnamed_addr constant [66 x i8] c"Tree owner %llu, decrease refcount start %llu, len %u, delete %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.ocfs2_caching_info*, %struct.buffer_head*, i32, i32, %struct.ocfs2_alloc_context*, %struct.ocfs2_cached_dealloc_ctxt*, i32)* @__ocfs2_decrease_refcount to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__ocfs2_decrease_refcount(i32* %0, %struct.ocfs2_caching_info* %1, %struct.buffer_head* %2, i32 %3, i32 %4, %struct.ocfs2_alloc_context* %5, %struct.ocfs2_cached_dealloc_ctxt* %6, i32 %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca %struct.ocfs2_caching_info*, align 8
  %11 = alloca %struct.buffer_head*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.ocfs2_alloc_context*, align 8
  %15 = alloca %struct.ocfs2_cached_dealloc_ctxt*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.ocfs2_refcount_rec, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.super_block*, align 8
  %23 = alloca %struct.buffer_head*, align 8
  store i32* %0, i32** %9, align 8
  store %struct.ocfs2_caching_info* %1, %struct.ocfs2_caching_info** %10, align 8
  store %struct.buffer_head* %2, %struct.buffer_head** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store %struct.ocfs2_alloc_context* %5, %struct.ocfs2_alloc_context** %14, align 8
  store %struct.ocfs2_cached_dealloc_ctxt* %6, %struct.ocfs2_cached_dealloc_ctxt** %15, align 8
  store i32 %7, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %20, align 4
  %24 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %10, align 8
  %25 = call %struct.super_block* @ocfs2_metadata_cache_get_super(%struct.ocfs2_caching_info* %24)
  store %struct.super_block* %25, %struct.super_block** %22, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %23, align 8
  %26 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %10, align 8
  %27 = call i64 @ocfs2_metadata_cache_owner(%struct.ocfs2_caching_info* %26)
  %28 = load i32, i32* %12, align 4
  %29 = zext i32 %28 to i64
  %30 = load i32, i32* %13, align 4
  %31 = load i32, i32* %16, align 4
  %32 = call i32 @mlog(i32 0, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), i64 %27, i64 %29, i32 %30, i32 %31)
  br label %33

33:                                               ; preds = %113, %8
  %34 = load i32, i32* %13, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %122

36:                                               ; preds = %33
  %37 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %10, align 8
  %38 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %39 = load i32, i32* %12, align 4
  %40 = load i32, i32* %13, align 4
  %41 = call i32 @ocfs2_get_refcount_rec(%struct.ocfs2_caching_info* %37, %struct.buffer_head* %38, i32 %39, i32 %40, %struct.ocfs2_refcount_rec* %19, i32* %18, %struct.buffer_head** %23)
  store i32 %41, i32* %17, align 4
  %42 = load i32, i32* %17, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %36
  %45 = load i32, i32* %17, align 4
  %46 = call i32 @mlog_errno(i32 %45)
  br label %123

47:                                               ; preds = %36
  %48 = getelementptr inbounds %struct.ocfs2_refcount_rec, %struct.ocfs2_refcount_rec* %19, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @le32_to_cpu(i32 %49)
  store i32 %50, i32* %20, align 4
  %51 = load i32, i32* %20, align 4
  %52 = icmp eq i32 %51, 0
  %53 = zext i1 %52 to i32
  %54 = call i32 @BUG_ON(i32 %53)
  %55 = load i32, i32* %16, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %62, label %57

57:                                               ; preds = %47
  %58 = load i32, i32* %20, align 4
  %59 = icmp ugt i32 %58, 1
  %60 = zext i1 %59 to i32
  %61 = call i32 @BUG_ON(i32 %60)
  br label %62

62:                                               ; preds = %57, %47
  %63 = load i32, i32* %12, align 4
  %64 = load i32, i32* %13, align 4
  %65 = add i32 %63, %64
  %66 = getelementptr inbounds %struct.ocfs2_refcount_rec, %struct.ocfs2_refcount_rec* %19, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = call i64 @le64_to_cpu(i32 %67)
  %69 = getelementptr inbounds %struct.ocfs2_refcount_rec, %struct.ocfs2_refcount_rec* %19, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @le32_to_cpu(i32 %70)
  %72 = sext i32 %71 to i64
  %73 = add nsw i64 %68, %72
  %74 = call i32 @min(i32 %65, i64 %73)
  %75 = load i32, i32* %12, align 4
  %76 = sub i32 %74, %75
  store i32 %76, i32* %21, align 4
  %77 = load i32*, i32** %9, align 8
  %78 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %10, align 8
  %79 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %80 = load %struct.buffer_head*, %struct.buffer_head** %23, align 8
  %81 = load i32, i32* %18, align 4
  %82 = load i32, i32* %12, align 4
  %83 = load i32, i32* %21, align 4
  %84 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %14, align 8
  %85 = load %struct.ocfs2_cached_dealloc_ctxt*, %struct.ocfs2_cached_dealloc_ctxt** %15, align 8
  %86 = call i32 @ocfs2_decrease_refcount_rec(i32* %77, %struct.ocfs2_caching_info* %78, %struct.buffer_head* %79, %struct.buffer_head* %80, i32 %81, i32 %82, i32 %83, %struct.ocfs2_alloc_context* %84, %struct.ocfs2_cached_dealloc_ctxt* %85)
  store i32 %86, i32* %17, align 4
  %87 = load i32, i32* %17, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %62
  %90 = load i32, i32* %17, align 4
  %91 = call i32 @mlog_errno(i32 %90)
  br label %123

92:                                               ; preds = %62
  %93 = getelementptr inbounds %struct.ocfs2_refcount_rec, %struct.ocfs2_refcount_rec* %19, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @le32_to_cpu(i32 %94)
  %96 = icmp eq i32 %95, 1
  br i1 %96, label %97, label %113

97:                                               ; preds = %92
  %98 = load i32, i32* %16, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %113

100:                                              ; preds = %97
  %101 = load %struct.ocfs2_cached_dealloc_ctxt*, %struct.ocfs2_cached_dealloc_ctxt** %15, align 8
  %102 = load %struct.super_block*, %struct.super_block** %22, align 8
  %103 = load i32, i32* %12, align 4
  %104 = call i32 @ocfs2_clusters_to_blocks(%struct.super_block* %102, i32 %103)
  %105 = load i32, i32* %21, align 4
  %106 = call i32 @ocfs2_cache_cluster_dealloc(%struct.ocfs2_cached_dealloc_ctxt* %101, i32 %104, i32 %105)
  store i32 %106, i32* %17, align 4
  %107 = load i32, i32* %17, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %100
  %110 = load i32, i32* %17, align 4
  %111 = call i32 @mlog_errno(i32 %110)
  br label %123

112:                                              ; preds = %100
  br label %113

113:                                              ; preds = %112, %97, %92
  %114 = load i32, i32* %21, align 4
  %115 = load i32, i32* %12, align 4
  %116 = add i32 %115, %114
  store i32 %116, i32* %12, align 4
  %117 = load i32, i32* %21, align 4
  %118 = load i32, i32* %13, align 4
  %119 = sub i32 %118, %117
  store i32 %119, i32* %13, align 4
  %120 = load %struct.buffer_head*, %struct.buffer_head** %23, align 8
  %121 = call i32 @brelse(%struct.buffer_head* %120)
  store %struct.buffer_head* null, %struct.buffer_head** %23, align 8
  br label %33

122:                                              ; preds = %33
  br label %123

123:                                              ; preds = %122, %109, %89, %44
  %124 = load %struct.buffer_head*, %struct.buffer_head** %23, align 8
  %125 = call i32 @brelse(%struct.buffer_head* %124)
  %126 = load i32, i32* %17, align 4
  ret i32 %126
}

declare dso_local %struct.super_block* @ocfs2_metadata_cache_get_super(%struct.ocfs2_caching_info*) #1

declare dso_local i32 @mlog(i32, i8*, i64, i64, i32, i32) #1

declare dso_local i64 @ocfs2_metadata_cache_owner(%struct.ocfs2_caching_info*) #1

declare dso_local i32 @ocfs2_get_refcount_rec(%struct.ocfs2_caching_info*, %struct.buffer_head*, i32, i32, %struct.ocfs2_refcount_rec*, i32*, %struct.buffer_head**) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @min(i32, i64) #1

declare dso_local i64 @le64_to_cpu(i32) #1

declare dso_local i32 @ocfs2_decrease_refcount_rec(i32*, %struct.ocfs2_caching_info*, %struct.buffer_head*, %struct.buffer_head*, i32, i32, i32, %struct.ocfs2_alloc_context*, %struct.ocfs2_cached_dealloc_ctxt*) #1

declare dso_local i32 @ocfs2_cache_cluster_dealloc(%struct.ocfs2_cached_dealloc_ctxt*, i32, i32) #1

declare dso_local i32 @ocfs2_clusters_to_blocks(%struct.super_block*, i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
