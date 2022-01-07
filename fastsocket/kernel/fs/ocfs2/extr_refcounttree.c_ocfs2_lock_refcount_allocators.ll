; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_refcounttree.c_ocfs2_lock_refcount_allocators.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_refcounttree.c_ocfs2_lock_refcount_allocators.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.ocfs2_extent_tree = type { i32 }
%struct.ocfs2_caching_info = type { i32 }
%struct.buffer_head = type { i32 }
%struct.ocfs2_alloc_context = type { i32 }

@.str = private unnamed_addr constant [52 x i8] c"reserve new metadata %d, clusters %u, credits = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, i32, i32, %struct.ocfs2_extent_tree*, %struct.ocfs2_caching_info*, %struct.buffer_head*, %struct.ocfs2_alloc_context**, %struct.ocfs2_alloc_context**, i32*)* @ocfs2_lock_refcount_allocators to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_lock_refcount_allocators(%struct.super_block* %0, i32 %1, i32 %2, %struct.ocfs2_extent_tree* %3, %struct.ocfs2_caching_info* %4, %struct.buffer_head* %5, %struct.ocfs2_alloc_context** %6, %struct.ocfs2_alloc_context** %7, i32* %8) #0 {
  %10 = alloca %struct.super_block*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.ocfs2_extent_tree*, align 8
  %14 = alloca %struct.ocfs2_caching_info*, align 8
  %15 = alloca %struct.buffer_head*, align 8
  %16 = alloca %struct.ocfs2_alloc_context**, align 8
  %17 = alloca %struct.ocfs2_alloc_context**, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store %struct.ocfs2_extent_tree* %3, %struct.ocfs2_extent_tree** %13, align 8
  store %struct.ocfs2_caching_info* %4, %struct.ocfs2_caching_info** %14, align 8
  store %struct.buffer_head* %5, %struct.buffer_head** %15, align 8
  store %struct.ocfs2_alloc_context** %6, %struct.ocfs2_alloc_context*** %16, align 8
  store %struct.ocfs2_alloc_context** %7, %struct.ocfs2_alloc_context*** %17, align 8
  store i32* %8, i32** %18, align 8
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  %22 = load %struct.super_block*, %struct.super_block** %10, align 8
  %23 = call i32 @OCFS2_SB(%struct.super_block* %22)
  %24 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %13, align 8
  %25 = call i32 @ocfs2_num_free_extents(i32 %23, %struct.ocfs2_extent_tree* %24)
  store i32 %25, i32* %21, align 4
  %26 = load i32, i32* %21, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %9
  %29 = load i32, i32* %21, align 4
  store i32 %29, i32* %19, align 4
  %30 = load i32, i32* %19, align 4
  %31 = call i32 @mlog_errno(i32 %30)
  br label %99

32:                                               ; preds = %9
  %33 = load i32, i32* %21, align 4
  %34 = load i32, i32* %12, align 4
  %35 = add nsw i32 %34, 2
  %36 = icmp slt i32 %33, %35
  br i1 %36, label %37, label %42

37:                                               ; preds = %32
  %38 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %13, align 8
  %39 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @ocfs2_extend_meta_needed(i32 %40)
  store i32 %41, i32* %20, align 4
  br label %42

42:                                               ; preds = %37, %32
  %43 = load %struct.super_block*, %struct.super_block** %10, align 8
  %44 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %13, align 8
  %45 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %12, align 4
  %48 = add nsw i32 %47, 2
  %49 = call i64 @ocfs2_calc_extend_credits(%struct.super_block* %43, i32 %46, i32 %48)
  %50 = load i32*, i32** %18, align 8
  %51 = load i32, i32* %50, align 4
  %52 = sext i32 %51 to i64
  %53 = add nsw i64 %52, %49
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %50, align 4
  %55 = load %struct.super_block*, %struct.super_block** %10, align 8
  %56 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %14, align 8
  %57 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  %58 = load i32, i32* %11, align 4
  %59 = load i32, i32* %12, align 4
  %60 = load i32*, i32** %18, align 8
  %61 = call i32 @ocfs2_calc_refcount_meta_credits(%struct.super_block* %55, %struct.ocfs2_caching_info* %56, %struct.buffer_head* %57, i32 %58, i32 %59, i32* %20, i32* %60)
  store i32 %61, i32* %19, align 4
  %62 = load i32, i32* %19, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %42
  %65 = load i32, i32* %19, align 4
  %66 = call i32 @mlog_errno(i32 %65)
  br label %99

67:                                               ; preds = %42
  %68 = load i32, i32* %20, align 4
  %69 = load i32, i32* %12, align 4
  %70 = load i32*, i32** %18, align 8
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @mlog(i32 0, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %68, i32 %69, i32 %71)
  %73 = load %struct.super_block*, %struct.super_block** %10, align 8
  %74 = call i32 @OCFS2_SB(%struct.super_block* %73)
  %75 = load i32, i32* %20, align 4
  %76 = load %struct.ocfs2_alloc_context**, %struct.ocfs2_alloc_context*** %16, align 8
  %77 = call i32 @ocfs2_reserve_new_metadata_blocks(i32 %74, i32 %75, %struct.ocfs2_alloc_context** %76)
  store i32 %77, i32* %19, align 4
  %78 = load i32, i32* %19, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %67
  %81 = load i32, i32* %19, align 4
  %82 = call i32 @mlog_errno(i32 %81)
  br label %99

83:                                               ; preds = %67
  %84 = load %struct.ocfs2_alloc_context**, %struct.ocfs2_alloc_context*** %17, align 8
  %85 = icmp ne %struct.ocfs2_alloc_context** %84, null
  br i1 %85, label %86, label %98

86:                                               ; preds = %83
  %87 = load %struct.super_block*, %struct.super_block** %10, align 8
  %88 = call i32 @OCFS2_SB(%struct.super_block* %87)
  %89 = load i32, i32* %12, align 4
  %90 = load %struct.ocfs2_alloc_context**, %struct.ocfs2_alloc_context*** %17, align 8
  %91 = call i32 @ocfs2_reserve_clusters(i32 %88, i32 %89, %struct.ocfs2_alloc_context** %90)
  store i32 %91, i32* %19, align 4
  %92 = load i32, i32* %19, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %86
  %95 = load i32, i32* %19, align 4
  %96 = call i32 @mlog_errno(i32 %95)
  br label %97

97:                                               ; preds = %94, %86
  br label %98

98:                                               ; preds = %97, %83
  br label %99

99:                                               ; preds = %98, %80, %64, %28
  %100 = load i32, i32* %19, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %112

102:                                              ; preds = %99
  %103 = load %struct.ocfs2_alloc_context**, %struct.ocfs2_alloc_context*** %16, align 8
  %104 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %103, align 8
  %105 = icmp ne %struct.ocfs2_alloc_context* %104, null
  br i1 %105, label %106, label %111

106:                                              ; preds = %102
  %107 = load %struct.ocfs2_alloc_context**, %struct.ocfs2_alloc_context*** %16, align 8
  %108 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %107, align 8
  %109 = call i32 @ocfs2_free_alloc_context(%struct.ocfs2_alloc_context* %108)
  %110 = load %struct.ocfs2_alloc_context**, %struct.ocfs2_alloc_context*** %16, align 8
  store %struct.ocfs2_alloc_context* null, %struct.ocfs2_alloc_context** %110, align 8
  br label %111

111:                                              ; preds = %106, %102
  br label %112

112:                                              ; preds = %111, %99
  %113 = load i32, i32* %19, align 4
  ret i32 %113
}

declare dso_local i32 @ocfs2_num_free_extents(i32, %struct.ocfs2_extent_tree*) #1

declare dso_local i32 @OCFS2_SB(%struct.super_block*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_extend_meta_needed(i32) #1

declare dso_local i64 @ocfs2_calc_extend_credits(%struct.super_block*, i32, i32) #1

declare dso_local i32 @ocfs2_calc_refcount_meta_credits(%struct.super_block*, %struct.ocfs2_caching_info*, %struct.buffer_head*, i32, i32, i32*, i32*) #1

declare dso_local i32 @mlog(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @ocfs2_reserve_new_metadata_blocks(i32, i32, %struct.ocfs2_alloc_context**) #1

declare dso_local i32 @ocfs2_reserve_clusters(i32, i32, %struct.ocfs2_alloc_context**) #1

declare dso_local i32 @ocfs2_free_alloc_context(%struct.ocfs2_alloc_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
