; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_alloc.c_ocfs2_insert_path.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_alloc.c_ocfs2_insert_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.ocfs2_extent_tree = type { i32 }
%struct.ocfs2_path = type { i64 }
%struct.ocfs2_extent_rec = type { i32 }
%struct.ocfs2_insert_type = type { i64 }
%struct.buffer_head = type { i32 }

@SPLIT_NONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, %struct.ocfs2_extent_tree*, %struct.ocfs2_path*, %struct.ocfs2_path*, %struct.ocfs2_extent_rec*, %struct.ocfs2_insert_type*)* @ocfs2_insert_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_insert_path(%struct.TYPE_7__* %0, %struct.ocfs2_extent_tree* %1, %struct.ocfs2_path* %2, %struct.ocfs2_path* %3, %struct.ocfs2_extent_rec* %4, %struct.ocfs2_insert_type* %5) #0 {
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca %struct.ocfs2_extent_tree*, align 8
  %9 = alloca %struct.ocfs2_path*, align 8
  %10 = alloca %struct.ocfs2_path*, align 8
  %11 = alloca %struct.ocfs2_extent_rec*, align 8
  %12 = alloca %struct.ocfs2_insert_type*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.buffer_head*, align 8
  %16 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %7, align 8
  store %struct.ocfs2_extent_tree* %1, %struct.ocfs2_extent_tree** %8, align 8
  store %struct.ocfs2_path* %2, %struct.ocfs2_path** %9, align 8
  store %struct.ocfs2_path* %3, %struct.ocfs2_path** %10, align 8
  store %struct.ocfs2_extent_rec* %4, %struct.ocfs2_extent_rec** %11, align 8
  store %struct.ocfs2_insert_type* %5, %struct.ocfs2_insert_type** %12, align 8
  %17 = load %struct.ocfs2_path*, %struct.ocfs2_path** %10, align 8
  %18 = call %struct.buffer_head* @path_leaf_bh(%struct.ocfs2_path* %17)
  store %struct.buffer_head* %18, %struct.buffer_head** %15, align 8
  %19 = load %struct.ocfs2_path*, %struct.ocfs2_path** %9, align 8
  %20 = icmp ne %struct.ocfs2_path* %19, null
  br i1 %20, label %21, label %53

21:                                               ; preds = %6
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %16, align 4
  %25 = load %struct.ocfs2_path*, %struct.ocfs2_path** %9, align 8
  %26 = getelementptr inbounds %struct.ocfs2_path, %struct.ocfs2_path* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i32, i32* %16, align 4
  %29 = sext i32 %28 to i64
  %30 = add nsw i64 %29, %27
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %16, align 4
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %33 = load i32, i32* %16, align 4
  %34 = call i32 @ocfs2_extend_trans(%struct.TYPE_7__* %32, i32 %33)
  store i32 %34, i32* %13, align 4
  %35 = load i32, i32* %13, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %21
  %38 = load i32, i32* %13, align 4
  %39 = call i32 @mlog_errno(i32 %38)
  br label %124

40:                                               ; preds = %21
  %41 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %8, align 8
  %42 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %45 = load %struct.ocfs2_path*, %struct.ocfs2_path** %9, align 8
  %46 = call i32 @ocfs2_journal_access_path(i32 %43, %struct.TYPE_7__* %44, %struct.ocfs2_path* %45)
  store i32 %46, i32* %13, align 4
  %47 = load i32, i32* %13, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %40
  %50 = load i32, i32* %13, align 4
  %51 = call i32 @mlog_errno(i32 %50)
  br label %124

52:                                               ; preds = %40
  br label %53

53:                                               ; preds = %52, %6
  %54 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %8, align 8
  %55 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %58 = load %struct.ocfs2_path*, %struct.ocfs2_path** %10, align 8
  %59 = call i32 @ocfs2_journal_access_path(i32 %56, %struct.TYPE_7__* %57, %struct.ocfs2_path* %58)
  store i32 %59, i32* %13, align 4
  %60 = load i32, i32* %13, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %53
  %63 = load i32, i32* %13, align 4
  %64 = call i32 @mlog_errno(i32 %63)
  br label %124

65:                                               ; preds = %53
  %66 = load %struct.ocfs2_insert_type*, %struct.ocfs2_insert_type** %12, align 8
  %67 = getelementptr inbounds %struct.ocfs2_insert_type, %struct.ocfs2_insert_type* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @SPLIT_NONE, align 8
  %70 = icmp ne i64 %68, %69
  br i1 %70, label %71, label %94

71:                                               ; preds = %65
  %72 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %8, align 8
  %73 = load %struct.ocfs2_path*, %struct.ocfs2_path** %9, align 8
  %74 = load %struct.ocfs2_path*, %struct.ocfs2_path** %10, align 8
  %75 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %11, align 8
  %76 = load %struct.ocfs2_insert_type*, %struct.ocfs2_insert_type** %12, align 8
  %77 = getelementptr inbounds %struct.ocfs2_insert_type, %struct.ocfs2_insert_type* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = call i32 @ocfs2_split_record(%struct.ocfs2_extent_tree* %72, %struct.ocfs2_path* %73, %struct.ocfs2_path* %74, %struct.ocfs2_extent_rec* %75, i64 %78)
  %80 = load %struct.ocfs2_path*, %struct.ocfs2_path** %9, align 8
  %81 = icmp ne %struct.ocfs2_path* %80, null
  br i1 %81, label %82, label %87

82:                                               ; preds = %71
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %84 = load %struct.ocfs2_path*, %struct.ocfs2_path** %9, align 8
  %85 = call %struct.buffer_head* @path_leaf_bh(%struct.ocfs2_path* %84)
  %86 = call i32 @ocfs2_journal_dirty(%struct.TYPE_7__* %83, %struct.buffer_head* %85)
  store i32 %86, i32* %13, align 4
  br label %87

87:                                               ; preds = %82, %71
  %88 = load i32, i32* %13, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %87
  %91 = load i32, i32* %13, align 4
  %92 = call i32 @mlog_errno(i32 %91)
  br label %93

93:                                               ; preds = %90, %87
  br label %101

94:                                               ; preds = %65
  %95 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %8, align 8
  %96 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %11, align 8
  %97 = load %struct.ocfs2_path*, %struct.ocfs2_path** %10, align 8
  %98 = call i32 @path_leaf_el(%struct.ocfs2_path* %97)
  %99 = load %struct.ocfs2_insert_type*, %struct.ocfs2_insert_type** %12, align 8
  %100 = call i32 @ocfs2_insert_at_leaf(%struct.ocfs2_extent_tree* %95, %struct.ocfs2_extent_rec* %96, i32 %98, %struct.ocfs2_insert_type* %99)
  br label %101

101:                                              ; preds = %94, %93
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %103 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  %104 = call i32 @ocfs2_journal_dirty(%struct.TYPE_7__* %102, %struct.buffer_head* %103)
  store i32 %104, i32* %13, align 4
  %105 = load i32, i32* %13, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %101
  %108 = load i32, i32* %13, align 4
  %109 = call i32 @mlog_errno(i32 %108)
  br label %110

110:                                              ; preds = %107, %101
  %111 = load %struct.ocfs2_path*, %struct.ocfs2_path** %9, align 8
  %112 = icmp ne %struct.ocfs2_path* %111, null
  br i1 %112, label %113, label %123

113:                                              ; preds = %110
  %114 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %8, align 8
  %115 = load %struct.ocfs2_path*, %struct.ocfs2_path** %9, align 8
  %116 = load %struct.ocfs2_path*, %struct.ocfs2_path** %10, align 8
  %117 = call i32 @ocfs2_find_subtree_root(%struct.ocfs2_extent_tree* %114, %struct.ocfs2_path* %115, %struct.ocfs2_path* %116)
  store i32 %117, i32* %14, align 4
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %119 = load %struct.ocfs2_path*, %struct.ocfs2_path** %9, align 8
  %120 = load %struct.ocfs2_path*, %struct.ocfs2_path** %10, align 8
  %121 = load i32, i32* %14, align 4
  %122 = call i32 @ocfs2_complete_edge_insert(%struct.TYPE_7__* %118, %struct.ocfs2_path* %119, %struct.ocfs2_path* %120, i32 %121)
  br label %123

123:                                              ; preds = %113, %110
  store i32 0, i32* %13, align 4
  br label %124

124:                                              ; preds = %123, %62, %49, %37
  %125 = load i32, i32* %13, align 4
  ret i32 %125
}

declare dso_local %struct.buffer_head* @path_leaf_bh(%struct.ocfs2_path*) #1

declare dso_local i32 @ocfs2_extend_trans(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_journal_access_path(i32, %struct.TYPE_7__*, %struct.ocfs2_path*) #1

declare dso_local i32 @ocfs2_split_record(%struct.ocfs2_extent_tree*, %struct.ocfs2_path*, %struct.ocfs2_path*, %struct.ocfs2_extent_rec*, i64) #1

declare dso_local i32 @ocfs2_journal_dirty(%struct.TYPE_7__*, %struct.buffer_head*) #1

declare dso_local i32 @ocfs2_insert_at_leaf(%struct.ocfs2_extent_tree*, %struct.ocfs2_extent_rec*, i32, %struct.ocfs2_insert_type*) #1

declare dso_local i32 @path_leaf_el(%struct.ocfs2_path*) #1

declare dso_local i32 @ocfs2_find_subtree_root(%struct.ocfs2_extent_tree*, %struct.ocfs2_path*, %struct.ocfs2_path*) #1

declare dso_local i32 @ocfs2_complete_edge_insert(%struct.TYPE_7__*, %struct.ocfs2_path*, %struct.ocfs2_path*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
