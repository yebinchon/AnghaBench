; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_refcounttree.c_ocfs2_expand_refcount_tree.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_refcounttree.c_ocfs2_expand_refcount_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_caching_info = type { i32 }
%struct.buffer_head = type { i32 }
%struct.ocfs2_alloc_context = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.ocfs2_caching_info*, %struct.buffer_head*, %struct.buffer_head*, %struct.ocfs2_alloc_context*)* @ocfs2_expand_refcount_tree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_expand_refcount_tree(i32* %0, %struct.ocfs2_caching_info* %1, %struct.buffer_head* %2, %struct.buffer_head* %3, %struct.ocfs2_alloc_context* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.ocfs2_caching_info*, align 8
  %8 = alloca %struct.buffer_head*, align 8
  %9 = alloca %struct.buffer_head*, align 8
  %10 = alloca %struct.ocfs2_alloc_context*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.buffer_head*, align 8
  store i32* %0, i32** %6, align 8
  store %struct.ocfs2_caching_info* %1, %struct.ocfs2_caching_info** %7, align 8
  store %struct.buffer_head* %2, %struct.buffer_head** %8, align 8
  store %struct.buffer_head* %3, %struct.buffer_head** %9, align 8
  store %struct.ocfs2_alloc_context* %4, %struct.ocfs2_alloc_context** %10, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %12, align 8
  %13 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %14 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %15 = icmp eq %struct.buffer_head* %13, %14
  br i1 %15, label %16, label %28

16:                                               ; preds = %5
  %17 = load i32*, i32** %6, align 8
  %18 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %7, align 8
  %19 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %20 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %10, align 8
  %21 = call i32 @ocfs2_expand_inline_ref_root(i32* %17, %struct.ocfs2_caching_info* %18, %struct.buffer_head* %19, %struct.buffer_head** %12, %struct.ocfs2_alloc_context* %20)
  store i32 %21, i32* %11, align 4
  %22 = load i32, i32* %11, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %16
  %25 = load i32, i32* %11, align 4
  %26 = call i32 @mlog_errno(i32 %25)
  br label %45

27:                                               ; preds = %16
  br label %32

28:                                               ; preds = %5
  %29 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  store %struct.buffer_head* %29, %struct.buffer_head** %12, align 8
  %30 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %31 = call i32 @get_bh(%struct.buffer_head* %30)
  br label %32

32:                                               ; preds = %28, %27
  %33 = load i32*, i32** %6, align 8
  %34 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %7, align 8
  %35 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %36 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %37 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %10, align 8
  %38 = call i32 @ocfs2_new_leaf_refcount_block(i32* %33, %struct.ocfs2_caching_info* %34, %struct.buffer_head* %35, %struct.buffer_head* %36, %struct.ocfs2_alloc_context* %37)
  store i32 %38, i32* %11, align 4
  %39 = load i32, i32* %11, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %32
  %42 = load i32, i32* %11, align 4
  %43 = call i32 @mlog_errno(i32 %42)
  br label %44

44:                                               ; preds = %41, %32
  br label %45

45:                                               ; preds = %44, %24
  %46 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %47 = call i32 @brelse(%struct.buffer_head* %46)
  %48 = load i32, i32* %11, align 4
  ret i32 %48
}

declare dso_local i32 @ocfs2_expand_inline_ref_root(i32*, %struct.ocfs2_caching_info*, %struct.buffer_head*, %struct.buffer_head**, %struct.ocfs2_alloc_context*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @get_bh(%struct.buffer_head*) #1

declare dso_local i32 @ocfs2_new_leaf_refcount_block(i32*, %struct.ocfs2_caching_info*, %struct.buffer_head*, %struct.buffer_head*, %struct.ocfs2_alloc_context*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
