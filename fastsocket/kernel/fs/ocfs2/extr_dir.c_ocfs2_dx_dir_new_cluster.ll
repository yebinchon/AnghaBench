; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_dir.c_ocfs2_dx_dir_new_cluster.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_dir.c_ocfs2_dx_dir_new_cluster.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ocfs2_extent_tree = type { i32 }
%struct.ocfs2_alloc_context = type { i32 }
%struct.buffer_head = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.ocfs2_extent_tree*, i32, i32*, %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context*, %struct.buffer_head**, i32)* @ocfs2_dx_dir_new_cluster to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_dx_dir_new_cluster(%struct.inode* %0, %struct.ocfs2_extent_tree* %1, i32 %2, i32* %3, %struct.ocfs2_alloc_context* %4, %struct.ocfs2_alloc_context* %5, %struct.buffer_head** %6, i32 %7) #0 {
  %9 = alloca %struct.inode*, align 8
  %10 = alloca %struct.ocfs2_extent_tree*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca %struct.ocfs2_alloc_context*, align 8
  %14 = alloca %struct.ocfs2_alloc_context*, align 8
  %15 = alloca %struct.buffer_head**, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %9, align 8
  store %struct.ocfs2_extent_tree* %1, %struct.ocfs2_extent_tree** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32* %3, i32** %12, align 8
  store %struct.ocfs2_alloc_context* %4, %struct.ocfs2_alloc_context** %13, align 8
  store %struct.ocfs2_alloc_context* %5, %struct.ocfs2_alloc_context** %14, align 8
  store %struct.buffer_head** %6, %struct.buffer_head*** %15, align 8
  store i32 %7, i32* %16, align 4
  %19 = load %struct.inode*, %struct.inode** %9, align 8
  %20 = load i32, i32* %11, align 4
  %21 = load i32*, i32** %12, align 8
  %22 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %13, align 8
  %23 = load %struct.buffer_head**, %struct.buffer_head*** %15, align 8
  %24 = load i32, i32* %16, align 4
  %25 = call i32 @__ocfs2_dx_dir_new_cluster(%struct.inode* %19, i32 %20, i32* %21, %struct.ocfs2_alloc_context* %22, %struct.buffer_head** %23, i32 %24, i32* %18)
  store i32 %25, i32* %17, align 4
  %26 = load i32, i32* %17, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %8
  %29 = load i32, i32* %17, align 4
  %30 = call i32 @mlog_errno(i32 %29)
  br label %44

31:                                               ; preds = %8
  %32 = load i32*, i32** %12, align 8
  %33 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %10, align 8
  %34 = load i32, i32* %11, align 4
  %35 = load i32, i32* %18, align 4
  %36 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %14, align 8
  %37 = call i32 @ocfs2_insert_extent(i32* %32, %struct.ocfs2_extent_tree* %33, i32 %34, i32 %35, i32 1, i32 0, %struct.ocfs2_alloc_context* %36)
  store i32 %37, i32* %17, align 4
  %38 = load i32, i32* %17, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %31
  %41 = load i32, i32* %17, align 4
  %42 = call i32 @mlog_errno(i32 %41)
  br label %43

43:                                               ; preds = %40, %31
  br label %44

44:                                               ; preds = %43, %28
  %45 = load i32, i32* %17, align 4
  ret i32 %45
}

declare dso_local i32 @__ocfs2_dx_dir_new_cluster(%struct.inode*, i32, i32*, %struct.ocfs2_alloc_context*, %struct.buffer_head**, i32, i32*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_insert_extent(i32*, %struct.ocfs2_extent_tree*, i32, i32, i32, i32, %struct.ocfs2_alloc_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
