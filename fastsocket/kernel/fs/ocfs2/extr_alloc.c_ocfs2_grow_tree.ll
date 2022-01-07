; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_alloc.c_ocfs2_grow_tree.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_alloc.c_ocfs2_grow_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_extent_tree = type { %struct.ocfs2_extent_list* }
%struct.ocfs2_extent_list = type { i32 }
%struct.buffer_head = type { i32 }
%struct.ocfs2_alloc_context = type { i32 }

@.str = private unnamed_addr constant [41 x i8] c"need to shift tree depth (current = %d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"add branch. bh = %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.ocfs2_extent_tree*, i32*, %struct.buffer_head**, %struct.ocfs2_alloc_context*)* @ocfs2_grow_tree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_grow_tree(i32* %0, %struct.ocfs2_extent_tree* %1, i32* %2, %struct.buffer_head** %3, %struct.ocfs2_alloc_context* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.ocfs2_extent_tree*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.buffer_head**, align 8
  %10 = alloca %struct.ocfs2_alloc_context*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.ocfs2_extent_list*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.buffer_head*, align 8
  store i32* %0, i32** %6, align 8
  store %struct.ocfs2_extent_tree* %1, %struct.ocfs2_extent_tree** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.buffer_head** %3, %struct.buffer_head*** %9, align 8
  store %struct.ocfs2_alloc_context* %4, %struct.ocfs2_alloc_context** %10, align 8
  %16 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %7, align 8
  %17 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %16, i32 0, i32 0
  %18 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %17, align 8
  store %struct.ocfs2_extent_list* %18, %struct.ocfs2_extent_list** %13, align 8
  %19 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %13, align 8
  %20 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @le16_to_cpu(i32 %21)
  store i32 %22, i32* %14, align 4
  store %struct.buffer_head* null, %struct.buffer_head** %15, align 8
  %23 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %10, align 8
  %24 = icmp eq %struct.ocfs2_alloc_context* %23, null
  %25 = zext i1 %24 to i32
  %26 = sext i32 %25 to i64
  %27 = inttoptr i64 %26 to %struct.buffer_head*
  %28 = call i32 @BUG_ON(%struct.buffer_head* %27)
  %29 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %7, align 8
  %30 = call i32 @ocfs2_find_branch_target(%struct.ocfs2_extent_tree* %29, %struct.buffer_head** %15)
  store i32 %30, i32* %12, align 4
  %31 = load i32, i32* %12, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %5
  %34 = load i32, i32* %12, align 4
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %11, align 4
  %36 = call i32 @mlog_errno(i32 %35)
  br label %84

37:                                               ; preds = %5
  %38 = load i32, i32* %12, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %68

40:                                               ; preds = %37
  %41 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  %42 = call i32 @BUG_ON(%struct.buffer_head* %41)
  %43 = load i32, i32* %14, align 4
  %44 = call i32 @mlog(i32 0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %43)
  %45 = load i32*, i32** %6, align 8
  %46 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %7, align 8
  %47 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %10, align 8
  %48 = call i32 @ocfs2_shift_tree_depth(i32* %45, %struct.ocfs2_extent_tree* %46, %struct.ocfs2_alloc_context* %47, %struct.buffer_head** %15)
  store i32 %48, i32* %11, align 4
  %49 = load i32, i32* %11, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %40
  %52 = load i32, i32* %11, align 4
  %53 = call i32 @mlog_errno(i32 %52)
  br label %84

54:                                               ; preds = %40
  %55 = load i32, i32* %14, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %14, align 4
  %57 = load i32, i32* %14, align 4
  %58 = icmp eq i32 %57, 1
  br i1 %58, label %59, label %67

59:                                               ; preds = %54
  %60 = load %struct.buffer_head**, %struct.buffer_head*** %9, align 8
  %61 = load %struct.buffer_head*, %struct.buffer_head** %60, align 8
  %62 = call i32 @BUG_ON(%struct.buffer_head* %61)
  %63 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  %64 = call i32 @get_bh(%struct.buffer_head* %63)
  %65 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  %66 = load %struct.buffer_head**, %struct.buffer_head*** %9, align 8
  store %struct.buffer_head* %65, %struct.buffer_head** %66, align 8
  br label %84

67:                                               ; preds = %54
  br label %68

68:                                               ; preds = %67, %37
  %69 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  %70 = ptrtoint %struct.buffer_head* %69 to i32
  %71 = call i32 @mlog(i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %70)
  %72 = load i32*, i32** %6, align 8
  %73 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %7, align 8
  %74 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  %75 = load %struct.buffer_head**, %struct.buffer_head*** %9, align 8
  %76 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %10, align 8
  %77 = call i32 @ocfs2_add_branch(i32* %72, %struct.ocfs2_extent_tree* %73, %struct.buffer_head* %74, %struct.buffer_head** %75, %struct.ocfs2_alloc_context* %76)
  store i32 %77, i32* %11, align 4
  %78 = load i32, i32* %11, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %68
  %81 = load i32, i32* %11, align 4
  %82 = call i32 @mlog_errno(i32 %81)
  br label %84

83:                                               ; preds = %68
  br label %84

84:                                               ; preds = %83, %80, %59, %51, %33
  %85 = load i32*, i32** %8, align 8
  %86 = icmp ne i32* %85, null
  br i1 %86, label %87, label %90

87:                                               ; preds = %84
  %88 = load i32, i32* %14, align 4
  %89 = load i32*, i32** %8, align 8
  store i32 %88, i32* %89, align 4
  br label %90

90:                                               ; preds = %87, %84
  %91 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  %92 = call i32 @brelse(%struct.buffer_head* %91)
  %93 = load i32, i32* %11, align 4
  ret i32 %93
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @BUG_ON(%struct.buffer_head*) #1

declare dso_local i32 @ocfs2_find_branch_target(%struct.ocfs2_extent_tree*, %struct.buffer_head**) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @mlog(i32, i8*, i32) #1

declare dso_local i32 @ocfs2_shift_tree_depth(i32*, %struct.ocfs2_extent_tree*, %struct.ocfs2_alloc_context*, %struct.buffer_head**) #1

declare dso_local i32 @get_bh(%struct.buffer_head*) #1

declare dso_local i32 @ocfs2_add_branch(i32*, %struct.ocfs2_extent_tree*, %struct.buffer_head*, %struct.buffer_head**, %struct.ocfs2_alloc_context*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
