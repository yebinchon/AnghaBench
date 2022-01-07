; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_dir.c_ocfs2_fill_new_dir.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_dir.c_ocfs2_fill_new_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_super = type { i32 }
%struct.inode = type { i32 }
%struct.buffer_head = type { i32 }
%struct.ocfs2_alloc_context = type { i32 }
%struct.TYPE_2__ = type { i32 }

@OCFS2_INLINE_DATA_FL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_fill_new_dir(%struct.ocfs2_super* %0, i32* %1, %struct.inode* %2, %struct.inode* %3, %struct.buffer_head* %4, %struct.ocfs2_alloc_context* %5, %struct.ocfs2_alloc_context* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.ocfs2_super*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.inode*, align 8
  %12 = alloca %struct.inode*, align 8
  %13 = alloca %struct.buffer_head*, align 8
  %14 = alloca %struct.ocfs2_alloc_context*, align 8
  %15 = alloca %struct.ocfs2_alloc_context*, align 8
  store %struct.ocfs2_super* %0, %struct.ocfs2_super** %9, align 8
  store i32* %1, i32** %10, align 8
  store %struct.inode* %2, %struct.inode** %11, align 8
  store %struct.inode* %3, %struct.inode** %12, align 8
  store %struct.buffer_head* %4, %struct.buffer_head** %13, align 8
  store %struct.ocfs2_alloc_context* %5, %struct.ocfs2_alloc_context** %14, align 8
  store %struct.ocfs2_alloc_context* %6, %struct.ocfs2_alloc_context** %15, align 8
  %16 = load %struct.ocfs2_super*, %struct.ocfs2_super** %9, align 8
  %17 = call i32 @ocfs2_supports_inline_data(%struct.ocfs2_super* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %7
  %20 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %14, align 8
  %21 = icmp eq %struct.ocfs2_alloc_context* %20, null
  br label %22

22:                                               ; preds = %19, %7
  %23 = phi i1 [ false, %7 ], [ %21, %19 ]
  %24 = zext i1 %23 to i32
  %25 = call i32 @BUG_ON(i32 %24)
  %26 = load %struct.inode*, %struct.inode** %12, align 8
  %27 = call %struct.TYPE_2__* @OCFS2_I(%struct.inode* %26)
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @OCFS2_INLINE_DATA_FL, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %22
  %34 = load %struct.ocfs2_super*, %struct.ocfs2_super** %9, align 8
  %35 = load i32*, i32** %10, align 8
  %36 = load %struct.inode*, %struct.inode** %11, align 8
  %37 = load %struct.inode*, %struct.inode** %12, align 8
  %38 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %39 = call i32 @ocfs2_fill_new_dir_id(%struct.ocfs2_super* %34, i32* %35, %struct.inode* %36, %struct.inode* %37, %struct.buffer_head* %38)
  store i32 %39, i32* %8, align 4
  br label %61

40:                                               ; preds = %22
  %41 = load %struct.ocfs2_super*, %struct.ocfs2_super** %9, align 8
  %42 = call i64 @ocfs2_supports_indexed_dirs(%struct.ocfs2_super* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %53

44:                                               ; preds = %40
  %45 = load %struct.ocfs2_super*, %struct.ocfs2_super** %9, align 8
  %46 = load i32*, i32** %10, align 8
  %47 = load %struct.inode*, %struct.inode** %11, align 8
  %48 = load %struct.inode*, %struct.inode** %12, align 8
  %49 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %50 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %14, align 8
  %51 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %15, align 8
  %52 = call i32 @ocfs2_fill_new_dir_dx(%struct.ocfs2_super* %45, i32* %46, %struct.inode* %47, %struct.inode* %48, %struct.buffer_head* %49, %struct.ocfs2_alloc_context* %50, %struct.ocfs2_alloc_context* %51)
  store i32 %52, i32* %8, align 4
  br label %61

53:                                               ; preds = %40
  %54 = load %struct.ocfs2_super*, %struct.ocfs2_super** %9, align 8
  %55 = load i32*, i32** %10, align 8
  %56 = load %struct.inode*, %struct.inode** %11, align 8
  %57 = load %struct.inode*, %struct.inode** %12, align 8
  %58 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %59 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %14, align 8
  %60 = call i32 @ocfs2_fill_new_dir_el(%struct.ocfs2_super* %54, i32* %55, %struct.inode* %56, %struct.inode* %57, %struct.buffer_head* %58, %struct.ocfs2_alloc_context* %59, i32* null)
  store i32 %60, i32* %8, align 4
  br label %61

61:                                               ; preds = %53, %44, %33
  %62 = load i32, i32* %8, align 4
  ret i32 %62
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @ocfs2_supports_inline_data(%struct.ocfs2_super*) #1

declare dso_local %struct.TYPE_2__* @OCFS2_I(%struct.inode*) #1

declare dso_local i32 @ocfs2_fill_new_dir_id(%struct.ocfs2_super*, i32*, %struct.inode*, %struct.inode*, %struct.buffer_head*) #1

declare dso_local i64 @ocfs2_supports_indexed_dirs(%struct.ocfs2_super*) #1

declare dso_local i32 @ocfs2_fill_new_dir_dx(%struct.ocfs2_super*, i32*, %struct.inode*, %struct.inode*, %struct.buffer_head*, %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context*) #1

declare dso_local i32 @ocfs2_fill_new_dir_el(%struct.ocfs2_super*, i32*, %struct.inode*, %struct.inode*, %struct.buffer_head*, %struct.ocfs2_alloc_context*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
