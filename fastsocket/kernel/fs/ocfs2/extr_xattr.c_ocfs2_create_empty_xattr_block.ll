; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_xattr.c_ocfs2_create_empty_xattr_block.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_xattr.c_ocfs2_create_empty_xattr_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.buffer_head = type { i64 }
%struct.ocfs2_alloc_context = type { i32 }
%struct.ocfs2_super = type { i32 }

@OCFS2_XATTR_BLOCK_CREATE_CREDITS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"create new xattr block for inode %llu, index = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.buffer_head*, %struct.buffer_head**, i32)* @ocfs2_create_empty_xattr_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_create_empty_xattr_block(%struct.inode* %0, %struct.buffer_head* %1, %struct.buffer_head** %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.buffer_head*, align 8
  %8 = alloca %struct.buffer_head**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.ocfs2_alloc_context*, align 8
  %13 = alloca %struct.ocfs2_super*, align 8
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %7, align 8
  store %struct.buffer_head** %2, %struct.buffer_head*** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load %struct.inode*, %struct.inode** %6, align 8
  %15 = getelementptr inbounds %struct.inode, %struct.inode* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.ocfs2_super* @OCFS2_SB(i32 %16)
  store %struct.ocfs2_super* %17, %struct.ocfs2_super** %13, align 8
  %18 = load %struct.ocfs2_super*, %struct.ocfs2_super** %13, align 8
  %19 = call i32 @ocfs2_reserve_new_metadata_blocks(%struct.ocfs2_super* %18, i32 1, %struct.ocfs2_alloc_context** %12)
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %10, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %4
  %23 = load i32, i32* %10, align 4
  %24 = call i32 @mlog_errno(i32 %23)
  %25 = load i32, i32* %10, align 4
  store i32 %25, i32* %5, align 4
  br label %64

26:                                               ; preds = %4
  %27 = load %struct.ocfs2_super*, %struct.ocfs2_super** %13, align 8
  %28 = load i32, i32* @OCFS2_XATTR_BLOCK_CREATE_CREDITS, align 4
  %29 = call i32* @ocfs2_start_trans(%struct.ocfs2_super* %27, i32 %28)
  store i32* %29, i32** %11, align 8
  %30 = load i32*, i32** %11, align 8
  %31 = call i64 @IS_ERR(i32* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %26
  %34 = load i32*, i32** %11, align 8
  %35 = call i32 @PTR_ERR(i32* %34)
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %10, align 4
  %37 = call i32 @mlog_errno(i32 %36)
  br label %60

38:                                               ; preds = %26
  %39 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %40 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i32, i32* %9, align 4
  %43 = call i32 @mlog(i32 0, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i64 %41, i32 %42)
  %44 = load i32*, i32** %11, align 8
  %45 = load %struct.inode*, %struct.inode** %6, align 8
  %46 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %47 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %12, align 8
  %48 = load %struct.buffer_head**, %struct.buffer_head*** %8, align 8
  %49 = load i32, i32* %9, align 4
  %50 = call i32 @ocfs2_create_xattr_block(i32* %44, %struct.inode* %45, %struct.buffer_head* %46, %struct.ocfs2_alloc_context* %47, %struct.buffer_head** %48, i32 %49)
  store i32 %50, i32* %10, align 4
  %51 = load i32, i32* %10, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %38
  %54 = load i32, i32* %10, align 4
  %55 = call i32 @mlog_errno(i32 %54)
  br label %56

56:                                               ; preds = %53, %38
  %57 = load %struct.ocfs2_super*, %struct.ocfs2_super** %13, align 8
  %58 = load i32*, i32** %11, align 8
  %59 = call i32 @ocfs2_commit_trans(%struct.ocfs2_super* %57, i32* %58)
  br label %60

60:                                               ; preds = %56, %33
  %61 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %12, align 8
  %62 = call i32 @ocfs2_free_alloc_context(%struct.ocfs2_alloc_context* %61)
  %63 = load i32, i32* %10, align 4
  store i32 %63, i32* %5, align 4
  br label %64

64:                                               ; preds = %60, %22
  %65 = load i32, i32* %5, align 4
  ret i32 %65
}

declare dso_local %struct.ocfs2_super* @OCFS2_SB(i32) #1

declare dso_local i32 @ocfs2_reserve_new_metadata_blocks(%struct.ocfs2_super*, i32, %struct.ocfs2_alloc_context**) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32* @ocfs2_start_trans(%struct.ocfs2_super*, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @mlog(i32, i8*, i64, i32) #1

declare dso_local i32 @ocfs2_create_xattr_block(i32*, %struct.inode*, %struct.buffer_head*, %struct.ocfs2_alloc_context*, %struct.buffer_head**, i32) #1

declare dso_local i32 @ocfs2_commit_trans(%struct.ocfs2_super*, i32*) #1

declare dso_local i32 @ocfs2_free_alloc_context(%struct.ocfs2_alloc_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
