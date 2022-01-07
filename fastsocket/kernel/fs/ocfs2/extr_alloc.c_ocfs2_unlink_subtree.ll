; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_alloc.c_ocfs2_unlink_subtree.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_alloc.c_ocfs2_unlink_subtree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_extent_tree = type { i32 }
%struct.ocfs2_path = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.buffer_head*, %struct.ocfs2_extent_list* }
%struct.buffer_head = type { i64 }
%struct.ocfs2_extent_list = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.ocfs2_cached_dealloc_ctxt = type { i32 }
%struct.ocfs2_extent_block = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.ocfs2_extent_tree*, %struct.ocfs2_path*, %struct.ocfs2_path*, i32, %struct.ocfs2_cached_dealloc_ctxt*)* @ocfs2_unlink_subtree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ocfs2_unlink_subtree(i32* %0, %struct.ocfs2_extent_tree* %1, %struct.ocfs2_path* %2, %struct.ocfs2_path* %3, i32 %4, %struct.ocfs2_cached_dealloc_ctxt* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca %struct.ocfs2_extent_tree*, align 8
  %9 = alloca %struct.ocfs2_path*, align 8
  %10 = alloca %struct.ocfs2_path*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.ocfs2_cached_dealloc_ctxt*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.buffer_head*, align 8
  %15 = alloca %struct.ocfs2_extent_list*, align 8
  %16 = alloca %struct.ocfs2_extent_list*, align 8
  %17 = alloca %struct.ocfs2_extent_block*, align 8
  store i32* %0, i32** %7, align 8
  store %struct.ocfs2_extent_tree* %1, %struct.ocfs2_extent_tree** %8, align 8
  store %struct.ocfs2_path* %2, %struct.ocfs2_path** %9, align 8
  store %struct.ocfs2_path* %3, %struct.ocfs2_path** %10, align 8
  store i32 %4, i32* %11, align 4
  store %struct.ocfs2_cached_dealloc_ctxt* %5, %struct.ocfs2_cached_dealloc_ctxt** %12, align 8
  %18 = load %struct.ocfs2_path*, %struct.ocfs2_path** %9, align 8
  %19 = getelementptr inbounds %struct.ocfs2_path, %struct.ocfs2_path* %18, i32 0, i32 0
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = load i32, i32* %11, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load %struct.buffer_head*, %struct.buffer_head** %24, align 8
  store %struct.buffer_head* %25, %struct.buffer_head** %14, align 8
  %26 = load %struct.ocfs2_path*, %struct.ocfs2_path** %9, align 8
  %27 = getelementptr inbounds %struct.ocfs2_path, %struct.ocfs2_path* %26, i32 0, i32 0
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = load i32, i32* %11, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  %33 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %32, align 8
  store %struct.ocfs2_extent_list* %33, %struct.ocfs2_extent_list** %15, align 8
  %34 = load %struct.ocfs2_path*, %struct.ocfs2_path** %9, align 8
  %35 = call %struct.ocfs2_extent_list* @path_leaf_el(%struct.ocfs2_path* %34)
  store %struct.ocfs2_extent_list* %35, %struct.ocfs2_extent_list** %16, align 8
  %36 = load %struct.ocfs2_path*, %struct.ocfs2_path** %10, align 8
  %37 = getelementptr inbounds %struct.ocfs2_path, %struct.ocfs2_path* %36, i32 0, i32 0
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = load i32, i32* %11, align 4
  %40 = add nsw i32 %39, 1
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load %struct.buffer_head*, %struct.buffer_head** %43, align 8
  %45 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = inttoptr i64 %46 to %struct.ocfs2_extent_block*
  store %struct.ocfs2_extent_block* %47, %struct.ocfs2_extent_block** %17, align 8
  store i32 1, i32* %13, align 4
  br label %48

48:                                               ; preds = %70, %6
  %49 = load i32, i32* %13, align 4
  %50 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %15, align 8
  %51 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @le16_to_cpu(i32 %52)
  %54 = icmp slt i32 %49, %53
  br i1 %54, label %55, label %73

55:                                               ; preds = %48
  %56 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %15, align 8
  %57 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %56, i32 0, i32 1
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = load i32, i32* %13, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.ocfs2_extent_block*, %struct.ocfs2_extent_block** %17, align 8
  %65 = getelementptr inbounds %struct.ocfs2_extent_block, %struct.ocfs2_extent_block* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp eq i64 %63, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %55
  br label %73

69:                                               ; preds = %55
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %13, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %13, align 4
  br label %48

73:                                               ; preds = %68, %48
  %74 = load i32, i32* %13, align 4
  %75 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %15, align 8
  %76 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @le16_to_cpu(i32 %77)
  %79 = icmp sge i32 %74, %78
  %80 = zext i1 %79 to i32
  %81 = call i32 @BUG_ON(i32 %80)
  %82 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %15, align 8
  %83 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %82, i32 0, i32 1
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %83, align 8
  %85 = load i32, i32* %13, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i64 %86
  %88 = call i32 @memset(%struct.TYPE_4__* %87, i32 0, i32 4)
  %89 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %15, align 8
  %90 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %89, i32 0, i32 0
  %91 = call i32 @le16_add_cpu(i32* %90, i32 -1)
  %92 = load %struct.ocfs2_path*, %struct.ocfs2_path** %9, align 8
  %93 = call %struct.buffer_head* @path_leaf_bh(%struct.ocfs2_path* %92)
  %94 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = inttoptr i64 %95 to %struct.ocfs2_extent_block*
  store %struct.ocfs2_extent_block* %96, %struct.ocfs2_extent_block** %17, align 8
  %97 = load %struct.ocfs2_extent_block*, %struct.ocfs2_extent_block** %17, align 8
  %98 = getelementptr inbounds %struct.ocfs2_extent_block, %struct.ocfs2_extent_block* %97, i32 0, i32 1
  store i64 0, i64* %98, align 8
  %99 = load i32*, i32** %7, align 8
  %100 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %101 = call i32 @ocfs2_journal_dirty(i32* %99, %struct.buffer_head* %100)
  %102 = load i32*, i32** %7, align 8
  %103 = load %struct.ocfs2_path*, %struct.ocfs2_path** %9, align 8
  %104 = call %struct.buffer_head* @path_leaf_bh(%struct.ocfs2_path* %103)
  %105 = call i32 @ocfs2_journal_dirty(i32* %102, %struct.buffer_head* %104)
  %106 = load i32*, i32** %7, align 8
  %107 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %8, align 8
  %108 = load %struct.ocfs2_cached_dealloc_ctxt*, %struct.ocfs2_cached_dealloc_ctxt** %12, align 8
  %109 = load %struct.ocfs2_path*, %struct.ocfs2_path** %10, align 8
  %110 = load i32, i32* %11, align 4
  %111 = add nsw i32 %110, 1
  %112 = call i32 @ocfs2_unlink_path(i32* %106, %struct.ocfs2_extent_tree* %107, %struct.ocfs2_cached_dealloc_ctxt* %108, %struct.ocfs2_path* %109, i32 %111)
  ret void
}

declare dso_local %struct.ocfs2_extent_list* @path_leaf_el(%struct.ocfs2_path*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @le16_add_cpu(i32*, i32) #1

declare dso_local %struct.buffer_head* @path_leaf_bh(%struct.ocfs2_path*) #1

declare dso_local i32 @ocfs2_journal_dirty(i32*, %struct.buffer_head*) #1

declare dso_local i32 @ocfs2_unlink_path(i32*, %struct.ocfs2_extent_tree*, %struct.ocfs2_cached_dealloc_ctxt*, %struct.ocfs2_path*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
