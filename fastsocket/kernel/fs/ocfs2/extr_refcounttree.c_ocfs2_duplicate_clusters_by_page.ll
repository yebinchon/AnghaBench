; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_refcounttree.c_ocfs2_duplicate_clusters_by_page.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_refcounttree.c_ocfs2_duplicate_clusters_by_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_cow_context = type { %struct.TYPE_5__*, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { %struct.address_space* }
%struct.address_space = type { i32 }
%struct.TYPE_4__ = type { %struct.ocfs2_caching_info* }
%struct.ocfs2_caching_info = type { i32 }
%struct.super_block = type { i32 }
%struct.page = type { i32 }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [45 x i8] c"old_cluster %u, new %u, len %u at offset %u\0A\00", align 1
@PAGE_CACHE_SHIFT = common dso_local global i32 0, align 4
@PAGE_CACHE_SIZE = common dso_local global i32 0, align 4
@ocfs2_get_block = common dso_local global i32 0, align 4
@ocfs2_clear_cow_buffer = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.ocfs2_cow_context*, i32, i32, i32, i32)* @ocfs2_duplicate_clusters_by_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_duplicate_clusters_by_page(i32* %0, %struct.ocfs2_cow_context* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca %struct.ocfs2_cow_context*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.ocfs2_caching_info*, align 8
  %16 = alloca %struct.super_block*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.page*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca %struct.address_space*, align 8
  store i32* %0, i32** %7, align 8
  store %struct.ocfs2_cow_context* %1, %struct.ocfs2_cow_context** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %26 = load %struct.ocfs2_cow_context*, %struct.ocfs2_cow_context** %8, align 8
  %27 = getelementptr inbounds %struct.ocfs2_cow_context, %struct.ocfs2_cow_context* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %28, align 8
  store %struct.ocfs2_caching_info* %29, %struct.ocfs2_caching_info** %15, align 8
  %30 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %15, align 8
  %31 = call %struct.super_block* @ocfs2_metadata_cache_get_super(%struct.ocfs2_caching_info* %30)
  store %struct.super_block* %31, %struct.super_block** %16, align 8
  %32 = load %struct.super_block*, %struct.super_block** %16, align 8
  %33 = load i32, i32* %11, align 4
  %34 = call i32 @ocfs2_clusters_to_blocks(%struct.super_block* %32, i32 %33)
  store i32 %34, i32* %17, align 4
  %35 = load %struct.ocfs2_cow_context*, %struct.ocfs2_cow_context** %8, align 8
  %36 = getelementptr inbounds %struct.ocfs2_cow_context, %struct.ocfs2_cow_context* %35, i32 0, i32 0
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load %struct.address_space*, %struct.address_space** %38, align 8
  store %struct.address_space* %39, %struct.address_space** %25, align 8
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* %11, align 4
  %42 = load i32, i32* %12, align 4
  %43 = load i32, i32* %9, align 4
  %44 = call i32 @mlog(i32 0, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %40, i32 %41, i32 %42, i32 %43)
  %45 = load i32, i32* %9, align 4
  %46 = load %struct.super_block*, %struct.super_block** %16, align 8
  %47 = call %struct.TYPE_6__* @OCFS2_SB(%struct.super_block* %46)
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = shl i32 %45, %49
  store i32 %50, i32* %22, align 4
  %51 = load i32, i32* %22, align 4
  %52 = load i32, i32* %12, align 4
  %53 = load %struct.super_block*, %struct.super_block** %16, align 8
  %54 = call %struct.TYPE_6__* @OCFS2_SB(%struct.super_block* %53)
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = shl i32 %52, %56
  %58 = add nsw i32 %51, %57
  store i32 %58, i32* %23, align 4
  br label %59

59:                                               ; preds = %152, %6
  %60 = load i32, i32* %22, align 4
  %61 = load i32, i32* %23, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %153

63:                                               ; preds = %59
  %64 = load i32, i32* %22, align 4
  %65 = load i32, i32* @PAGE_CACHE_SHIFT, align 4
  %66 = ashr i32 %64, %65
  store i32 %66, i32* %19, align 4
  %67 = load i32, i32* %19, align 4
  %68 = add nsw i32 %67, 1
  %69 = load i32, i32* @PAGE_CACHE_SHIFT, align 4
  %70 = shl i32 %68, %69
  store i32 %70, i32* %24, align 4
  %71 = load i32, i32* %24, align 4
  %72 = load i32, i32* %23, align 4
  %73 = icmp sgt i32 %71, %72
  br i1 %73, label %74, label %76

74:                                               ; preds = %63
  %75 = load i32, i32* %23, align 4
  store i32 %75, i32* %24, align 4
  br label %76

76:                                               ; preds = %74, %63
  %77 = load i32, i32* %22, align 4
  %78 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %79 = sub nsw i32 %78, 1
  %80 = and i32 %77, %79
  store i32 %80, i32* %20, align 4
  %81 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  store i32 %81, i32* %21, align 4
  %82 = load i32, i32* %24, align 4
  %83 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %84 = sub nsw i32 %83, 1
  %85 = and i32 %82, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %76
  %88 = load i32, i32* %24, align 4
  %89 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %90 = sub nsw i32 %89, 1
  %91 = and i32 %88, %90
  store i32 %91, i32* %21, align 4
  br label %92

92:                                               ; preds = %87, %76
  %93 = load %struct.address_space*, %struct.address_space** %25, align 8
  %94 = load i32, i32* %19, align 4
  %95 = call %struct.page* @grab_cache_page(%struct.address_space* %93, i32 %94)
  store %struct.page* %95, %struct.page** %18, align 8
  %96 = load %struct.page*, %struct.page** %18, align 8
  %97 = call i32 @PageDirty(%struct.page* %96)
  %98 = call i32 @BUG_ON(i32 %97)
  %99 = load %struct.page*, %struct.page** %18, align 8
  %100 = call i32 @PageUptodate(%struct.page* %99)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %114, label %102

102:                                              ; preds = %92
  %103 = load %struct.page*, %struct.page** %18, align 8
  %104 = load i32, i32* @ocfs2_get_block, align 4
  %105 = call i32 @block_read_full_page(%struct.page* %103, i32 %104)
  store i32 %105, i32* %13, align 4
  %106 = load i32, i32* %13, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %102
  %109 = load i32, i32* %13, align 4
  %110 = call i32 @mlog_errno(i32 %109)
  br label %143

111:                                              ; preds = %102
  %112 = load %struct.page*, %struct.page** %18, align 8
  %113 = call i32 @lock_page(%struct.page* %112)
  br label %114

114:                                              ; preds = %111, %92
  %115 = load %struct.page*, %struct.page** %18, align 8
  %116 = call i64 @page_has_buffers(%struct.page* %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %132

118:                                              ; preds = %114
  %119 = load i32*, i32** %7, align 8
  %120 = load %struct.page*, %struct.page** %18, align 8
  %121 = call i32 @page_buffers(%struct.page* %120)
  %122 = load i32, i32* %20, align 4
  %123 = load i32, i32* %21, align 4
  %124 = load i32, i32* @ocfs2_clear_cow_buffer, align 4
  %125 = call i32 @walk_page_buffers(i32* %119, i32 %121, i32 %122, i32 %123, i32* %14, i32 %124)
  store i32 %125, i32* %13, align 4
  %126 = load i32, i32* %13, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %118
  %129 = load i32, i32* %13, align 4
  %130 = call i32 @mlog_errno(i32 %129)
  br label %143

131:                                              ; preds = %118
  br label %132

132:                                              ; preds = %131, %114
  %133 = load %struct.ocfs2_cow_context*, %struct.ocfs2_cow_context** %8, align 8
  %134 = getelementptr inbounds %struct.ocfs2_cow_context, %struct.ocfs2_cow_context* %133, i32 0, i32 0
  %135 = load %struct.TYPE_5__*, %struct.TYPE_5__** %134, align 8
  %136 = load i32*, i32** %7, align 8
  %137 = load i32, i32* %20, align 4
  %138 = load i32, i32* %21, align 4
  %139 = load %struct.page*, %struct.page** %18, align 8
  %140 = call i32 @ocfs2_map_and_dirty_page(%struct.TYPE_5__* %135, i32* %136, i32 %137, i32 %138, %struct.page* %139, i32 0, i32* %17)
  %141 = load %struct.page*, %struct.page** %18, align 8
  %142 = call i32 @mark_page_accessed(%struct.page* %141)
  br label %143

143:                                              ; preds = %132, %128, %108
  %144 = load %struct.page*, %struct.page** %18, align 8
  %145 = call i32 @unlock_page(%struct.page* %144)
  %146 = load %struct.page*, %struct.page** %18, align 8
  %147 = call i32 @page_cache_release(%struct.page* %146)
  store %struct.page* null, %struct.page** %18, align 8
  %148 = load i32, i32* %24, align 4
  store i32 %148, i32* %22, align 4
  %149 = load i32, i32* %13, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %152

151:                                              ; preds = %143
  br label %153

152:                                              ; preds = %143
  br label %59

153:                                              ; preds = %151, %59
  %154 = load i32, i32* %13, align 4
  ret i32 %154
}

declare dso_local %struct.super_block* @ocfs2_metadata_cache_get_super(%struct.ocfs2_caching_info*) #1

declare dso_local i32 @ocfs2_clusters_to_blocks(%struct.super_block*, i32) #1

declare dso_local i32 @mlog(i32, i8*, i32, i32, i32, i32) #1

declare dso_local %struct.TYPE_6__* @OCFS2_SB(%struct.super_block*) #1

declare dso_local %struct.page* @grab_cache_page(%struct.address_space*, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @PageDirty(%struct.page*) #1

declare dso_local i32 @PageUptodate(%struct.page*) #1

declare dso_local i32 @block_read_full_page(%struct.page*, i32) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @lock_page(%struct.page*) #1

declare dso_local i64 @page_has_buffers(%struct.page*) #1

declare dso_local i32 @walk_page_buffers(i32*, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @page_buffers(%struct.page*) #1

declare dso_local i32 @ocfs2_map_and_dirty_page(%struct.TYPE_5__*, i32*, i32, i32, %struct.page*, i32, i32*) #1

declare dso_local i32 @mark_page_accessed(%struct.page*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @page_cache_release(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
