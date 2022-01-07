; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_refcounttree.c_ocfs2_decrease_refcount.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_refcounttree.c_ocfs2_decrease_refcount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ocfs2_alloc_context = type { i32 }
%struct.ocfs2_cached_dealloc_ctxt = type { i32 }
%struct.ocfs2_inode_info = type { i32 }
%struct.buffer_head = type { i32 }
%struct.ocfs2_refcount_tree = type { i32, i32 }

@OCFS2_HAS_REFCOUNT_FL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_decrease_refcount(%struct.inode* %0, i32* %1, i32 %2, i32 %3, %struct.ocfs2_alloc_context* %4, %struct.ocfs2_cached_dealloc_ctxt* %5, i32 %6) #0 {
  %8 = alloca %struct.inode*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.ocfs2_alloc_context*, align 8
  %13 = alloca %struct.ocfs2_cached_dealloc_ctxt*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.ocfs2_inode_info*, align 8
  %18 = alloca %struct.buffer_head*, align 8
  %19 = alloca %struct.ocfs2_refcount_tree*, align 8
  store %struct.inode* %0, %struct.inode** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store %struct.ocfs2_alloc_context* %4, %struct.ocfs2_alloc_context** %12, align 8
  store %struct.ocfs2_cached_dealloc_ctxt* %5, %struct.ocfs2_cached_dealloc_ctxt** %13, align 8
  store i32 %6, i32* %14, align 4
  %20 = load %struct.inode*, %struct.inode** %8, align 8
  %21 = call %struct.ocfs2_inode_info* @OCFS2_I(%struct.inode* %20)
  store %struct.ocfs2_inode_info* %21, %struct.ocfs2_inode_info** %17, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %18, align 8
  %22 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %17, align 8
  %23 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @OCFS2_HAS_REFCOUNT_FL, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  %30 = call i32 @BUG_ON(i32 %29)
  %31 = load %struct.inode*, %struct.inode** %8, align 8
  %32 = call i32 @ocfs2_get_refcount_block(%struct.inode* %31, i32* %16)
  store i32 %32, i32* %15, align 4
  %33 = load i32, i32* %15, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %7
  %36 = load i32, i32* %15, align 4
  %37 = call i32 @mlog_errno(i32 %36)
  br label %79

38:                                               ; preds = %7
  %39 = load %struct.inode*, %struct.inode** %8, align 8
  %40 = getelementptr inbounds %struct.inode, %struct.inode* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @OCFS2_SB(i32 %41)
  %43 = load i32, i32* %16, align 4
  %44 = call i32 @ocfs2_get_refcount_tree(i32 %42, i32 %43, %struct.ocfs2_refcount_tree** %19)
  store i32 %44, i32* %15, align 4
  %45 = load i32, i32* %15, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %38
  %48 = load i32, i32* %15, align 4
  %49 = call i32 @mlog_errno(i32 %48)
  br label %79

50:                                               ; preds = %38
  %51 = load %struct.ocfs2_refcount_tree*, %struct.ocfs2_refcount_tree** %19, align 8
  %52 = getelementptr inbounds %struct.ocfs2_refcount_tree, %struct.ocfs2_refcount_tree* %51, i32 0, i32 0
  %53 = load %struct.ocfs2_refcount_tree*, %struct.ocfs2_refcount_tree** %19, align 8
  %54 = getelementptr inbounds %struct.ocfs2_refcount_tree, %struct.ocfs2_refcount_tree* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @ocfs2_read_refcount_block(i32* %52, i32 %55, %struct.buffer_head** %18)
  store i32 %56, i32* %15, align 4
  %57 = load i32, i32* %15, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %50
  %60 = load i32, i32* %15, align 4
  %61 = call i32 @mlog_errno(i32 %60)
  br label %79

62:                                               ; preds = %50
  %63 = load i32*, i32** %9, align 8
  %64 = load %struct.ocfs2_refcount_tree*, %struct.ocfs2_refcount_tree** %19, align 8
  %65 = getelementptr inbounds %struct.ocfs2_refcount_tree, %struct.ocfs2_refcount_tree* %64, i32 0, i32 0
  %66 = load %struct.buffer_head*, %struct.buffer_head** %18, align 8
  %67 = load i32, i32* %10, align 4
  %68 = load i32, i32* %11, align 4
  %69 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %12, align 8
  %70 = load %struct.ocfs2_cached_dealloc_ctxt*, %struct.ocfs2_cached_dealloc_ctxt** %13, align 8
  %71 = load i32, i32* %14, align 4
  %72 = call i32 @__ocfs2_decrease_refcount(i32* %63, i32* %65, %struct.buffer_head* %66, i32 %67, i32 %68, %struct.ocfs2_alloc_context* %69, %struct.ocfs2_cached_dealloc_ctxt* %70, i32 %71)
  store i32 %72, i32* %15, align 4
  %73 = load i32, i32* %15, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %62
  %76 = load i32, i32* %15, align 4
  %77 = call i32 @mlog_errno(i32 %76)
  br label %78

78:                                               ; preds = %75, %62
  br label %79

79:                                               ; preds = %78, %59, %47, %35
  %80 = load %struct.buffer_head*, %struct.buffer_head** %18, align 8
  %81 = call i32 @brelse(%struct.buffer_head* %80)
  %82 = load i32, i32* %15, align 4
  ret i32 %82
}

declare dso_local %struct.ocfs2_inode_info* @OCFS2_I(%struct.inode*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @ocfs2_get_refcount_block(%struct.inode*, i32*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_get_refcount_tree(i32, i32, %struct.ocfs2_refcount_tree**) #1

declare dso_local i32 @OCFS2_SB(i32) #1

declare dso_local i32 @ocfs2_read_refcount_block(i32*, i32, %struct.buffer_head**) #1

declare dso_local i32 @__ocfs2_decrease_refcount(i32*, i32*, %struct.buffer_head*, i32, i32, %struct.ocfs2_alloc_context*, %struct.ocfs2_cached_dealloc_ctxt*, i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
