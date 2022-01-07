; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_refcounttree.c_ocfs2_cow_sync_writeback.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_refcounttree.c_ocfs2_cow_sync_writeback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.ocfs2_cow_context = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.page = type { i32 }
%struct.TYPE_4__ = type { i32 }

@PAGE_CACHE_SHIFT = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, %struct.ocfs2_cow_context*, i32, i32)* @ocfs2_cow_sync_writeback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_cow_sync_writeback(%struct.super_block* %0, %struct.ocfs2_cow_context* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca %struct.ocfs2_cow_context*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.page*, align 8
  store %struct.super_block* %0, %struct.super_block** %6, align 8
  store %struct.ocfs2_cow_context* %1, %struct.ocfs2_cow_context** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %16 = load %struct.ocfs2_cow_context*, %struct.ocfs2_cow_context** %7, align 8
  %17 = getelementptr inbounds %struct.ocfs2_cow_context, %struct.ocfs2_cow_context* %16, i32 0, i32 0
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = call i64 @ocfs2_should_order_data(%struct.TYPE_3__* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %108

22:                                               ; preds = %4
  %23 = load i32, i32* %8, align 4
  %24 = load %struct.super_block*, %struct.super_block** %6, align 8
  %25 = call %struct.TYPE_4__* @OCFS2_SB(%struct.super_block* %24)
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = shl i32 %23, %27
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %11, align 4
  %30 = load i32, i32* %9, align 4
  %31 = load %struct.super_block*, %struct.super_block** %6, align 8
  %32 = call %struct.TYPE_4__* @OCFS2_SB(%struct.super_block* %31)
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = shl i32 %30, %34
  %36 = add nsw i32 %29, %35
  store i32 %36, i32* %12, align 4
  %37 = load %struct.ocfs2_cow_context*, %struct.ocfs2_cow_context** %7, align 8
  %38 = getelementptr inbounds %struct.ocfs2_cow_context, %struct.ocfs2_cow_context* %37, i32 0, i32 0
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %11, align 4
  %43 = load i32, i32* %12, align 4
  %44 = sub nsw i32 %43, 1
  %45 = call i32 @filemap_fdatawrite_range(i32 %41, i32 %42, i32 %44)
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* %10, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %22
  %49 = load i32, i32* %10, align 4
  %50 = call i32 @mlog_errno(i32 %49)
  %51 = load i32, i32* %10, align 4
  store i32 %51, i32* %5, align 4
  br label %108

52:                                               ; preds = %22
  br label %53

53:                                               ; preds = %105, %52
  %54 = load i32, i32* %11, align 4
  %55 = load i32, i32* %12, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %106

57:                                               ; preds = %53
  %58 = load i32, i32* %11, align 4
  %59 = load i32, i32* @PAGE_CACHE_SHIFT, align 4
  %60 = ashr i32 %58, %59
  store i32 %60, i32* %14, align 4
  %61 = load i32, i32* %14, align 4
  %62 = add nsw i32 %61, 1
  %63 = load i32, i32* @PAGE_CACHE_SHIFT, align 4
  %64 = shl i32 %62, %63
  store i32 %64, i32* %13, align 4
  %65 = load i32, i32* %13, align 4
  %66 = load i32, i32* %12, align 4
  %67 = icmp sgt i32 %65, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %57
  %69 = load i32, i32* %12, align 4
  store i32 %69, i32* %13, align 4
  br label %70

70:                                               ; preds = %68, %57
  %71 = load %struct.ocfs2_cow_context*, %struct.ocfs2_cow_context** %7, align 8
  %72 = getelementptr inbounds %struct.ocfs2_cow_context, %struct.ocfs2_cow_context* %71, i32 0, i32 0
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %14, align 4
  %77 = call %struct.page* @grab_cache_page(i32 %75, i32 %76)
  store %struct.page* %77, %struct.page** %15, align 8
  %78 = load %struct.page*, %struct.page** %15, align 8
  %79 = icmp ne %struct.page* %78, null
  %80 = xor i1 %79, true
  %81 = zext i1 %80 to i32
  %82 = call i32 @BUG_ON(i32 %81)
  %83 = load %struct.page*, %struct.page** %15, align 8
  %84 = call i32 @wait_on_page_writeback(%struct.page* %83)
  %85 = load %struct.page*, %struct.page** %15, align 8
  %86 = call i64 @PageError(%struct.page* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %70
  %89 = load i32, i32* @EIO, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %10, align 4
  %91 = load i32, i32* %10, align 4
  %92 = call i32 @mlog_errno(i32 %91)
  br label %96

93:                                               ; preds = %70
  %94 = load %struct.page*, %struct.page** %15, align 8
  %95 = call i32 @mark_page_accessed(%struct.page* %94)
  br label %96

96:                                               ; preds = %93, %88
  %97 = load %struct.page*, %struct.page** %15, align 8
  %98 = call i32 @unlock_page(%struct.page* %97)
  %99 = load %struct.page*, %struct.page** %15, align 8
  %100 = call i32 @page_cache_release(%struct.page* %99)
  store %struct.page* null, %struct.page** %15, align 8
  %101 = load i32, i32* %13, align 4
  store i32 %101, i32* %11, align 4
  %102 = load i32, i32* %10, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %96
  br label %106

105:                                              ; preds = %96
  br label %53

106:                                              ; preds = %104, %53
  %107 = load i32, i32* %10, align 4
  store i32 %107, i32* %5, align 4
  br label %108

108:                                              ; preds = %106, %48, %21
  %109 = load i32, i32* %5, align 4
  ret i32 %109
}

declare dso_local i64 @ocfs2_should_order_data(%struct.TYPE_3__*) #1

declare dso_local %struct.TYPE_4__* @OCFS2_SB(%struct.super_block*) #1

declare dso_local i32 @filemap_fdatawrite_range(i32, i32, i32) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local %struct.page* @grab_cache_page(i32, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @wait_on_page_writeback(%struct.page*) #1

declare dso_local i64 @PageError(%struct.page*) #1

declare dso_local i32 @mark_page_accessed(%struct.page*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @page_cache_release(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
