; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_refcounttree.c_ocfs2_increase_refcount.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_refcounttree.c_ocfs2_increase_refcount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_caching_info = type { i32 }
%struct.buffer_head = type { i32 }
%struct.ocfs2_alloc_context = type { i32 }
%struct.ocfs2_cached_dealloc_ctxt = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_increase_refcount(i32* %0, %struct.ocfs2_caching_info* %1, %struct.buffer_head* %2, i32 %3, i32 %4, %struct.ocfs2_alloc_context* %5, %struct.ocfs2_cached_dealloc_ctxt* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca %struct.ocfs2_caching_info*, align 8
  %10 = alloca %struct.buffer_head*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.ocfs2_alloc_context*, align 8
  %14 = alloca %struct.ocfs2_cached_dealloc_ctxt*, align 8
  store i32* %0, i32** %8, align 8
  store %struct.ocfs2_caching_info* %1, %struct.ocfs2_caching_info** %9, align 8
  store %struct.buffer_head* %2, %struct.buffer_head** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.ocfs2_alloc_context* %5, %struct.ocfs2_alloc_context** %13, align 8
  store %struct.ocfs2_cached_dealloc_ctxt* %6, %struct.ocfs2_cached_dealloc_ctxt** %14, align 8
  %15 = load i32*, i32** %8, align 8
  %16 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %9, align 8
  %17 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %18 = load i32, i32* %11, align 4
  %19 = load i32, i32* %12, align 4
  %20 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %13, align 8
  %21 = load %struct.ocfs2_cached_dealloc_ctxt*, %struct.ocfs2_cached_dealloc_ctxt** %14, align 8
  %22 = call i32 @__ocfs2_increase_refcount(i32* %15, %struct.ocfs2_caching_info* %16, %struct.buffer_head* %17, i32 %18, i32 %19, i32 1, %struct.ocfs2_alloc_context* %20, %struct.ocfs2_cached_dealloc_ctxt* %21)
  ret i32 %22
}

declare dso_local i32 @__ocfs2_increase_refcount(i32*, %struct.ocfs2_caching_info*, %struct.buffer_head*, i32, i32, i32, %struct.ocfs2_alloc_context*, %struct.ocfs2_cached_dealloc_ctxt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
