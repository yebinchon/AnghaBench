; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_refcounttree.c_ocfs2_add_refcount_flag.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_refcounttree.c_ocfs2_add_refcount_flag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ocfs2_extent_tree = type { i32 }
%struct.ocfs2_caching_info = type { i32 }
%struct.buffer_head = type { i32 }
%struct.ocfs2_cached_dealloc_ctxt = type { i32 }
%struct.ocfs2_post_refcount = type { i32 (%struct.inode.0*, i32*, i32)*, i32, i64 }
%struct.inode.0 = type opaque
%struct.ocfs2_super = type { i32 }
%struct.ocfs2_alloc_context = type { i32 }

@.str = private unnamed_addr constant [39 x i8] c"reserve new metadata %d, credits = %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_add_refcount_flag(%struct.inode* %0, %struct.ocfs2_extent_tree* %1, %struct.ocfs2_caching_info* %2, %struct.buffer_head* %3, i32 %4, i32 %5, i32 %6, %struct.ocfs2_cached_dealloc_ctxt* %7, %struct.ocfs2_post_refcount* %8) #0 {
  %10 = alloca %struct.inode*, align 8
  %11 = alloca %struct.ocfs2_extent_tree*, align 8
  %12 = alloca %struct.ocfs2_caching_info*, align 8
  %13 = alloca %struct.buffer_head*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.ocfs2_cached_dealloc_ctxt*, align 8
  %18 = alloca %struct.ocfs2_post_refcount*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.ocfs2_super*, align 8
  %24 = alloca %struct.ocfs2_alloc_context*, align 8
  store %struct.inode* %0, %struct.inode** %10, align 8
  store %struct.ocfs2_extent_tree* %1, %struct.ocfs2_extent_tree** %11, align 8
  store %struct.ocfs2_caching_info* %2, %struct.ocfs2_caching_info** %12, align 8
  store %struct.buffer_head* %3, %struct.buffer_head** %13, align 8
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store %struct.ocfs2_cached_dealloc_ctxt* %7, %struct.ocfs2_cached_dealloc_ctxt** %17, align 8
  store %struct.ocfs2_post_refcount* %8, %struct.ocfs2_post_refcount** %18, align 8
  store i32 1, i32* %21, align 4
  store i32 0, i32* %22, align 4
  %25 = load %struct.inode*, %struct.inode** %10, align 8
  %26 = getelementptr inbounds %struct.inode, %struct.inode* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call %struct.ocfs2_super* @OCFS2_SB(i32 %27)
  store %struct.ocfs2_super* %28, %struct.ocfs2_super** %23, align 8
  store %struct.ocfs2_alloc_context* null, %struct.ocfs2_alloc_context** %24, align 8
  %29 = load %struct.inode*, %struct.inode** %10, align 8
  %30 = getelementptr inbounds %struct.inode, %struct.inode* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %12, align 8
  %33 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %34 = load i32, i32* %15, align 4
  %35 = load i32, i32* %16, align 4
  %36 = call i32 @ocfs2_calc_refcount_meta_credits(i32 %31, %struct.ocfs2_caching_info* %32, %struct.buffer_head* %33, i32 %34, i32 %35, i32* %22, i32* %21)
  store i32 %36, i32* %19, align 4
  %37 = load i32, i32* %19, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %9
  %40 = load i32, i32* %19, align 4
  %41 = call i32 @mlog_errno(i32 %40)
  br label %143

42:                                               ; preds = %9
  %43 = load i32, i32* %22, align 4
  %44 = load i32, i32* %21, align 4
  %45 = call i32 @mlog(i32 0, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %43, i32 %44)
  %46 = load i32, i32* %22, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %61

48:                                               ; preds = %42
  %49 = load %struct.inode*, %struct.inode** %10, align 8
  %50 = getelementptr inbounds %struct.inode, %struct.inode* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call %struct.ocfs2_super* @OCFS2_SB(i32 %51)
  %53 = load i32, i32* %22, align 4
  %54 = call i32 @ocfs2_reserve_new_metadata_blocks(%struct.ocfs2_super* %52, i32 %53, %struct.ocfs2_alloc_context** %24)
  store i32 %54, i32* %19, align 4
  %55 = load i32, i32* %19, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %48
  %58 = load i32, i32* %19, align 4
  %59 = call i32 @mlog_errno(i32 %58)
  br label %143

60:                                               ; preds = %48
  br label %61

61:                                               ; preds = %60, %42
  %62 = load %struct.ocfs2_post_refcount*, %struct.ocfs2_post_refcount** %18, align 8
  %63 = icmp ne %struct.ocfs2_post_refcount* %62, null
  br i1 %63, label %64, label %72

64:                                               ; preds = %61
  %65 = load %struct.ocfs2_post_refcount*, %struct.ocfs2_post_refcount** %18, align 8
  %66 = getelementptr inbounds %struct.ocfs2_post_refcount, %struct.ocfs2_post_refcount* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = load i32, i32* %21, align 4
  %69 = sext i32 %68 to i64
  %70 = add nsw i64 %69, %67
  %71 = trunc i64 %70 to i32
  store i32 %71, i32* %21, align 4
  br label %72

72:                                               ; preds = %64, %61
  %73 = load %struct.ocfs2_super*, %struct.ocfs2_super** %23, align 8
  %74 = load i32, i32* %21, align 4
  %75 = call i32* @ocfs2_start_trans(%struct.ocfs2_super* %73, i32 %74)
  store i32* %75, i32** %20, align 8
  %76 = load i32*, i32** %20, align 8
  %77 = call i64 @IS_ERR(i32* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %72
  %80 = load i32*, i32** %20, align 8
  %81 = call i32 @PTR_ERR(i32* %80)
  store i32 %81, i32* %19, align 4
  %82 = load i32, i32* %19, align 4
  %83 = call i32 @mlog_errno(i32 %82)
  br label %143

84:                                               ; preds = %72
  %85 = load %struct.inode*, %struct.inode** %10, align 8
  %86 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %11, align 8
  %87 = load i32*, i32** %20, align 8
  %88 = load i32, i32* %14, align 4
  %89 = load i32, i32* %16, align 4
  %90 = load i32, i32* %15, align 4
  %91 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %24, align 8
  %92 = load %struct.ocfs2_cached_dealloc_ctxt*, %struct.ocfs2_cached_dealloc_ctxt** %17, align 8
  %93 = call i32 @ocfs2_mark_extent_refcounted(%struct.inode* %85, %struct.ocfs2_extent_tree* %86, i32* %87, i32 %88, i32 %89, i32 %90, %struct.ocfs2_alloc_context* %91, %struct.ocfs2_cached_dealloc_ctxt* %92)
  store i32 %93, i32* %19, align 4
  %94 = load i32, i32* %19, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %84
  %97 = load i32, i32* %19, align 4
  %98 = call i32 @mlog_errno(i32 %97)
  br label %139

99:                                               ; preds = %84
  %100 = load i32*, i32** %20, align 8
  %101 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %12, align 8
  %102 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %103 = load i32, i32* %15, align 4
  %104 = load i32, i32* %16, align 4
  %105 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %24, align 8
  %106 = load %struct.ocfs2_cached_dealloc_ctxt*, %struct.ocfs2_cached_dealloc_ctxt** %17, align 8
  %107 = call i32 @__ocfs2_increase_refcount(i32* %100, %struct.ocfs2_caching_info* %101, %struct.buffer_head* %102, i32 %103, i32 %104, i32 0, %struct.ocfs2_alloc_context* %105, %struct.ocfs2_cached_dealloc_ctxt* %106)
  store i32 %107, i32* %19, align 4
  %108 = load i32, i32* %19, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %99
  %111 = load i32, i32* %19, align 4
  %112 = call i32 @mlog_errno(i32 %111)
  br label %139

113:                                              ; preds = %99
  %114 = load %struct.ocfs2_post_refcount*, %struct.ocfs2_post_refcount** %18, align 8
  %115 = icmp ne %struct.ocfs2_post_refcount* %114, null
  br i1 %115, label %116, label %138

116:                                              ; preds = %113
  %117 = load %struct.ocfs2_post_refcount*, %struct.ocfs2_post_refcount** %18, align 8
  %118 = getelementptr inbounds %struct.ocfs2_post_refcount, %struct.ocfs2_post_refcount* %117, i32 0, i32 0
  %119 = load i32 (%struct.inode.0*, i32*, i32)*, i32 (%struct.inode.0*, i32*, i32)** %118, align 8
  %120 = icmp ne i32 (%struct.inode.0*, i32*, i32)* %119, null
  br i1 %120, label %121, label %138

121:                                              ; preds = %116
  %122 = load %struct.ocfs2_post_refcount*, %struct.ocfs2_post_refcount** %18, align 8
  %123 = getelementptr inbounds %struct.ocfs2_post_refcount, %struct.ocfs2_post_refcount* %122, i32 0, i32 0
  %124 = load i32 (%struct.inode.0*, i32*, i32)*, i32 (%struct.inode.0*, i32*, i32)** %123, align 8
  %125 = load %struct.inode*, %struct.inode** %10, align 8
  %126 = bitcast %struct.inode* %125 to %struct.inode.0*
  %127 = load i32*, i32** %20, align 8
  %128 = load %struct.ocfs2_post_refcount*, %struct.ocfs2_post_refcount** %18, align 8
  %129 = getelementptr inbounds %struct.ocfs2_post_refcount, %struct.ocfs2_post_refcount* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 8
  %131 = call i32 %124(%struct.inode.0* %126, i32* %127, i32 %130)
  store i32 %131, i32* %19, align 4
  %132 = load i32, i32* %19, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %121
  %135 = load i32, i32* %19, align 4
  %136 = call i32 @mlog_errno(i32 %135)
  br label %137

137:                                              ; preds = %134, %121
  br label %138

138:                                              ; preds = %137, %116, %113
  br label %139

139:                                              ; preds = %138, %110, %96
  %140 = load %struct.ocfs2_super*, %struct.ocfs2_super** %23, align 8
  %141 = load i32*, i32** %20, align 8
  %142 = call i32 @ocfs2_commit_trans(%struct.ocfs2_super* %140, i32* %141)
  br label %143

143:                                              ; preds = %139, %79, %57, %39
  %144 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %24, align 8
  %145 = icmp ne %struct.ocfs2_alloc_context* %144, null
  br i1 %145, label %146, label %149

146:                                              ; preds = %143
  %147 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %24, align 8
  %148 = call i32 @ocfs2_free_alloc_context(%struct.ocfs2_alloc_context* %147)
  br label %149

149:                                              ; preds = %146, %143
  %150 = load i32, i32* %19, align 4
  ret i32 %150
}

declare dso_local %struct.ocfs2_super* @OCFS2_SB(i32) #1

declare dso_local i32 @ocfs2_calc_refcount_meta_credits(i32, %struct.ocfs2_caching_info*, %struct.buffer_head*, i32, i32, i32*, i32*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @mlog(i32, i8*, i32, i32) #1

declare dso_local i32 @ocfs2_reserve_new_metadata_blocks(%struct.ocfs2_super*, i32, %struct.ocfs2_alloc_context**) #1

declare dso_local i32* @ocfs2_start_trans(%struct.ocfs2_super*, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @ocfs2_mark_extent_refcounted(%struct.inode*, %struct.ocfs2_extent_tree*, i32*, i32, i32, i32, %struct.ocfs2_alloc_context*, %struct.ocfs2_cached_dealloc_ctxt*) #1

declare dso_local i32 @__ocfs2_increase_refcount(i32*, %struct.ocfs2_caching_info*, %struct.buffer_head*, i32, i32, i32, %struct.ocfs2_alloc_context*, %struct.ocfs2_cached_dealloc_ctxt*) #1

declare dso_local i32 @ocfs2_commit_trans(%struct.ocfs2_super*, i32*) #1

declare dso_local i32 @ocfs2_free_alloc_context(%struct.ocfs2_alloc_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
