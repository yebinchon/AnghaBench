; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_refcounttree.c_ocfs2_mark_extent_refcounted.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_refcounttree.c_ocfs2_mark_extent_refcounted.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32 }
%struct.ocfs2_extent_tree = type { i32 }
%struct.ocfs2_alloc_context = type { i32 }
%struct.ocfs2_cached_dealloc_ctxt = type { i32 }

@.str = private unnamed_addr constant [58 x i8] c"Inode %lu refcount tree cpos %u, len %u, phys cluster %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [88 x i8] c"Inode %lu want to use refcount tree, but the feature bit is not set in the super block.\00", align 1
@EROFS = common dso_local global i32 0, align 4
@OCFS2_EXT_REFCOUNTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.ocfs2_extent_tree*, i32*, i32, i32, i32, %struct.ocfs2_alloc_context*, %struct.ocfs2_cached_dealloc_ctxt*)* @ocfs2_mark_extent_refcounted to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_mark_extent_refcounted(%struct.inode* %0, %struct.ocfs2_extent_tree* %1, i32* %2, i32 %3, i32 %4, i32 %5, %struct.ocfs2_alloc_context* %6, %struct.ocfs2_cached_dealloc_ctxt* %7) #0 {
  %9 = alloca %struct.inode*, align 8
  %10 = alloca %struct.ocfs2_extent_tree*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.ocfs2_alloc_context*, align 8
  %16 = alloca %struct.ocfs2_cached_dealloc_ctxt*, align 8
  %17 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %9, align 8
  store %struct.ocfs2_extent_tree* %1, %struct.ocfs2_extent_tree** %10, align 8
  store i32* %2, i32** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store %struct.ocfs2_alloc_context* %6, %struct.ocfs2_alloc_context** %15, align 8
  store %struct.ocfs2_cached_dealloc_ctxt* %7, %struct.ocfs2_cached_dealloc_ctxt** %16, align 8
  %18 = load %struct.inode*, %struct.inode** %9, align 8
  %19 = getelementptr inbounds %struct.inode, %struct.inode* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %12, align 4
  %22 = load i32, i32* %13, align 4
  %23 = load i32, i32* %14, align 4
  %24 = call i32 @mlog(i32 0, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %21, i32 %22, i32 %23)
  %25 = load %struct.inode*, %struct.inode** %9, align 8
  %26 = getelementptr inbounds %struct.inode, %struct.inode* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @OCFS2_SB(i32 %27)
  %29 = call i32 @ocfs2_refcount_tree(i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %41, label %31

31:                                               ; preds = %8
  %32 = load %struct.inode*, %struct.inode** %9, align 8
  %33 = getelementptr inbounds %struct.inode, %struct.inode* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.inode*, %struct.inode** %9, align 8
  %36 = getelementptr inbounds %struct.inode, %struct.inode* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @ocfs2_error(i32 %34, i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* @EROFS, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %17, align 4
  br label %57

41:                                               ; preds = %8
  %42 = load i32*, i32** %11, align 8
  %43 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %10, align 8
  %44 = load i32, i32* %12, align 4
  %45 = load i32, i32* %13, align 4
  %46 = load i32, i32* %14, align 4
  %47 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %15, align 8
  %48 = load %struct.ocfs2_cached_dealloc_ctxt*, %struct.ocfs2_cached_dealloc_ctxt** %16, align 8
  %49 = load i32, i32* @OCFS2_EXT_REFCOUNTED, align 4
  %50 = call i32 @ocfs2_change_extent_flag(i32* %42, %struct.ocfs2_extent_tree* %43, i32 %44, i32 %45, i32 %46, %struct.ocfs2_alloc_context* %47, %struct.ocfs2_cached_dealloc_ctxt* %48, i32 %49, i32 0)
  store i32 %50, i32* %17, align 4
  %51 = load i32, i32* %17, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %41
  %54 = load i32, i32* %17, align 4
  %55 = call i32 @mlog_errno(i32 %54)
  br label %56

56:                                               ; preds = %53, %41
  br label %57

57:                                               ; preds = %56, %31
  %58 = load i32, i32* %17, align 4
  ret i32 %58
}

declare dso_local i32 @mlog(i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @ocfs2_refcount_tree(i32) #1

declare dso_local i32 @OCFS2_SB(i32) #1

declare dso_local i32 @ocfs2_error(i32, i8*, i32) #1

declare dso_local i32 @ocfs2_change_extent_flag(i32*, %struct.ocfs2_extent_tree*, i32, i32, i32, %struct.ocfs2_alloc_context*, %struct.ocfs2_cached_dealloc_ctxt*, i32, i32) #1

declare dso_local i32 @mlog_errno(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
