; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_alloc.c_ocfs2_mark_extent_written.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_alloc.c_ocfs2_mark_extent_written.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32 }
%struct.ocfs2_extent_tree = type { i32 }
%struct.ocfs2_alloc_context = type { i32 }
%struct.ocfs2_cached_dealloc_ctxt = type { i32 }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [45 x i8] c"Inode %lu cpos %u, len %u, phys clusters %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [111 x i8] c"Inode %llu has unwritten extents that are being written to, but the feature bit is not set in the super block.\00", align 1
@EROFS = common dso_local global i32 0, align 4
@OCFS2_EXT_UNWRITTEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_mark_extent_written(%struct.inode* %0, %struct.ocfs2_extent_tree* %1, i32* %2, i32 %3, i32 %4, i32 %5, %struct.ocfs2_alloc_context* %6, %struct.ocfs2_cached_dealloc_ctxt* %7) #0 {
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
  %19 = getelementptr inbounds %struct.inode, %struct.inode* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %12, align 4
  %22 = load i32, i32* %13, align 4
  %23 = load i32, i32* %14, align 4
  %24 = call i32 @mlog(i32 0, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %21, i32 %22, i32 %23)
  %25 = load %struct.inode*, %struct.inode** %9, align 8
  %26 = getelementptr inbounds %struct.inode, %struct.inode* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @OCFS2_SB(i32 %27)
  %29 = call i32 @ocfs2_writes_unwritten_extents(i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %42, label %31

31:                                               ; preds = %8
  %32 = load %struct.inode*, %struct.inode** %9, align 8
  %33 = getelementptr inbounds %struct.inode, %struct.inode* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.inode*, %struct.inode** %9, align 8
  %36 = call %struct.TYPE_2__* @OCFS2_I(%struct.inode* %35)
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @ocfs2_error(i32 %34, i8* getelementptr inbounds ([111 x i8], [111 x i8]* @.str.1, i64 0, i64 0), i64 %38)
  %40 = load i32, i32* @EROFS, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %17, align 4
  br label %60

42:                                               ; preds = %8
  %43 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %10, align 8
  %44 = call i32 @ocfs2_et_extent_map_truncate(%struct.ocfs2_extent_tree* %43, i32 0)
  %45 = load i32*, i32** %11, align 8
  %46 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %10, align 8
  %47 = load i32, i32* %12, align 4
  %48 = load i32, i32* %13, align 4
  %49 = load i32, i32* %14, align 4
  %50 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %15, align 8
  %51 = load %struct.ocfs2_cached_dealloc_ctxt*, %struct.ocfs2_cached_dealloc_ctxt** %16, align 8
  %52 = load i32, i32* @OCFS2_EXT_UNWRITTEN, align 4
  %53 = call i32 @ocfs2_change_extent_flag(i32* %45, %struct.ocfs2_extent_tree* %46, i32 %47, i32 %48, i32 %49, %struct.ocfs2_alloc_context* %50, %struct.ocfs2_cached_dealloc_ctxt* %51, i32 0, i32 %52)
  store i32 %53, i32* %17, align 4
  %54 = load i32, i32* %17, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %42
  %57 = load i32, i32* %17, align 4
  %58 = call i32 @mlog_errno(i32 %57)
  br label %59

59:                                               ; preds = %56, %42
  br label %60

60:                                               ; preds = %59, %31
  %61 = load i32, i32* %17, align 4
  ret i32 %61
}

declare dso_local i32 @mlog(i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @ocfs2_writes_unwritten_extents(i32) #1

declare dso_local i32 @OCFS2_SB(i32) #1

declare dso_local i32 @ocfs2_error(i32, i8*, i64) #1

declare dso_local %struct.TYPE_2__* @OCFS2_I(%struct.inode*) #1

declare dso_local i32 @ocfs2_et_extent_map_truncate(%struct.ocfs2_extent_tree*, i32) #1

declare dso_local i32 @ocfs2_change_extent_flag(i32*, %struct.ocfs2_extent_tree*, i32, i32, i32, %struct.ocfs2_alloc_context*, %struct.ocfs2_cached_dealloc_ctxt*, i32, i32) #1

declare dso_local i32 @mlog_errno(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
