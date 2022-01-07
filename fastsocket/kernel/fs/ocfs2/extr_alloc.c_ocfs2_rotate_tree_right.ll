; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_alloc.c_ocfs2_rotate_tree_right.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_alloc.c_ocfs2_rotate_tree_right.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.ocfs2_extent_tree = type { i32 }
%struct.ocfs2_path = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64 }
%struct.super_block = type { i32 }
%struct.TYPE_11__ = type { i64 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Insert: %u, first left path cpos: %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"Rotating a tree: ins. cpos: %u, left path cpos: %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [105 x i8] c"Owner %llu: error during insert of %u (left path cpos %u) results in two identical paths ending at %llu\0A\00", align 1
@SPLIT_NONE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [47 x i8] c"Subtree root at index %d (blk %llu, depth %d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, %struct.ocfs2_extent_tree*, i32, i64, %struct.ocfs2_path*, %struct.ocfs2_path**)* @ocfs2_rotate_tree_right to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_rotate_tree_right(%struct.TYPE_10__* %0, %struct.ocfs2_extent_tree* %1, i32 %2, i64 %3, %struct.ocfs2_path* %4, %struct.ocfs2_path** %5) #0 {
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca %struct.ocfs2_extent_tree*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.ocfs2_path*, align 8
  %12 = alloca %struct.ocfs2_path**, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca %struct.ocfs2_path*, align 8
  %18 = alloca %struct.super_block*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %7, align 8
  store %struct.ocfs2_extent_tree* %1, %struct.ocfs2_extent_tree** %8, align 8
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store %struct.ocfs2_path* %4, %struct.ocfs2_path** %11, align 8
  store %struct.ocfs2_path** %5, %struct.ocfs2_path*** %12, align 8
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %15, align 4
  store %struct.ocfs2_path* null, %struct.ocfs2_path** %17, align 8
  %22 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %8, align 8
  %23 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call %struct.super_block* @ocfs2_metadata_cache_get_super(i32 %24)
  store %struct.super_block* %25, %struct.super_block** %18, align 8
  %26 = load %struct.ocfs2_path**, %struct.ocfs2_path*** %12, align 8
  store %struct.ocfs2_path* null, %struct.ocfs2_path** %26, align 8
  %27 = load %struct.ocfs2_path*, %struct.ocfs2_path** %11, align 8
  %28 = call %struct.ocfs2_path* @ocfs2_new_path_from_path(%struct.ocfs2_path* %27)
  store %struct.ocfs2_path* %28, %struct.ocfs2_path** %17, align 8
  %29 = load %struct.ocfs2_path*, %struct.ocfs2_path** %17, align 8
  %30 = icmp ne %struct.ocfs2_path* %29, null
  br i1 %30, label %36, label %31

31:                                               ; preds = %6
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %13, align 4
  %34 = load i32, i32* %13, align 4
  %35 = call i32 @mlog_errno(i32 %34)
  br label %173

36:                                               ; preds = %6
  %37 = load %struct.super_block*, %struct.super_block** %18, align 8
  %38 = load %struct.ocfs2_path*, %struct.ocfs2_path** %11, align 8
  %39 = call i32 @ocfs2_find_cpos_for_left_leaf(%struct.super_block* %37, %struct.ocfs2_path* %38, i64* %16)
  store i32 %39, i32* %13, align 4
  %40 = load i32, i32* %13, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %36
  %43 = load i32, i32* %13, align 4
  %44 = call i32 @mlog_errno(i32 %43)
  br label %173

45:                                               ; preds = %36
  %46 = load i64, i64* %10, align 8
  %47 = trunc i64 %46 to i32
  %48 = load i64, i64* %16, align 8
  %49 = call i32 (i32, i8*, i32, i64, ...) @mlog(i32 0, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %47, i64 %48)
  br label %50

50:                                               ; preds = %171, %45
  %51 = load i64, i64* %16, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %50
  %54 = load i64, i64* %10, align 8
  %55 = load i64, i64* %16, align 8
  %56 = icmp sle i64 %54, %55
  br label %57

57:                                               ; preds = %53, %50
  %58 = phi i1 [ false, %50 ], [ %56, %53 ]
  br i1 %58, label %59, label %172

59:                                               ; preds = %57
  %60 = load i64, i64* %10, align 8
  %61 = trunc i64 %60 to i32
  %62 = load i64, i64* %16, align 8
  %63 = call i32 (i32, i8*, i32, i64, ...) @mlog(i32 0, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i32 %61, i64 %62)
  %64 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %8, align 8
  %65 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.ocfs2_path*, %struct.ocfs2_path** %17, align 8
  %68 = load i64, i64* %16, align 8
  %69 = call i32 @ocfs2_find_path(i32 %66, %struct.ocfs2_path* %67, i64 %68)
  store i32 %69, i32* %13, align 4
  %70 = load i32, i32* %13, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %59
  %73 = load i32, i32* %13, align 4
  %74 = call i32 @mlog_errno(i32 %73)
  br label %173

75:                                               ; preds = %59
  %76 = load %struct.ocfs2_path*, %struct.ocfs2_path** %17, align 8
  %77 = call %struct.TYPE_11__* @path_leaf_bh(%struct.ocfs2_path* %76)
  %78 = load %struct.ocfs2_path*, %struct.ocfs2_path** %11, align 8
  %79 = call %struct.TYPE_11__* @path_leaf_bh(%struct.ocfs2_path* %78)
  %80 = icmp eq %struct.TYPE_11__* %77, %79
  %81 = zext i1 %80 to i32
  %82 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %8, align 8
  %83 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i64 @ocfs2_metadata_cache_owner(i32 %84)
  %86 = load i64, i64* %10, align 8
  %87 = load i64, i64* %16, align 8
  %88 = load %struct.ocfs2_path*, %struct.ocfs2_path** %17, align 8
  %89 = call %struct.TYPE_11__* @path_leaf_bh(%struct.ocfs2_path* %88)
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = call i32 @mlog_bug_on_msg(i32 %81, i8* getelementptr inbounds ([105 x i8], [105 x i8]* @.str.2, i64 0, i64 0), i64 %85, i64 %86, i64 %87, i64 %91)
  %93 = load i32, i32* %9, align 4
  %94 = load i32, i32* @SPLIT_NONE, align 4
  %95 = icmp eq i32 %93, %94
  br i1 %95, label %96, label %104

96:                                               ; preds = %75
  %97 = load %struct.ocfs2_path*, %struct.ocfs2_path** %17, align 8
  %98 = load i64, i64* %10, align 8
  %99 = call i64 @ocfs2_rotate_requires_path_adjustment(%struct.ocfs2_path* %97, i64 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %96
  %102 = load %struct.ocfs2_path*, %struct.ocfs2_path** %17, align 8
  %103 = load %struct.ocfs2_path**, %struct.ocfs2_path*** %12, align 8
  store %struct.ocfs2_path* %102, %struct.ocfs2_path** %103, align 8
  br label %176

104:                                              ; preds = %96, %75
  %105 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %8, align 8
  %106 = load %struct.ocfs2_path*, %struct.ocfs2_path** %17, align 8
  %107 = load %struct.ocfs2_path*, %struct.ocfs2_path** %11, align 8
  %108 = call i32 @ocfs2_find_subtree_root(%struct.ocfs2_extent_tree* %105, %struct.ocfs2_path* %106, %struct.ocfs2_path* %107)
  store i32 %108, i32* %14, align 4
  %109 = load i32, i32* %14, align 4
  %110 = load %struct.ocfs2_path*, %struct.ocfs2_path** %11, align 8
  %111 = getelementptr inbounds %struct.ocfs2_path, %struct.ocfs2_path* %110, i32 0, i32 1
  %112 = load %struct.TYPE_9__*, %struct.TYPE_9__** %111, align 8
  %113 = load i32, i32* %14, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i32 0, i32 0
  %117 = load %struct.TYPE_8__*, %struct.TYPE_8__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load %struct.ocfs2_path*, %struct.ocfs2_path** %11, align 8
  %121 = getelementptr inbounds %struct.ocfs2_path, %struct.ocfs2_path* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = call i32 (i32, i8*, i32, i64, ...) @mlog(i32 0, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i32 %109, i64 %119, i32 %122)
  %124 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %125 = load i32, i32* %14, align 4
  %126 = load i32, i32* %15, align 4
  %127 = load %struct.ocfs2_path*, %struct.ocfs2_path** %11, align 8
  %128 = call i32 @ocfs2_extend_rotate_transaction(%struct.TYPE_10__* %124, i32 %125, i32 %126, %struct.ocfs2_path* %127)
  store i32 %128, i32* %13, align 4
  %129 = load i32, i32* %13, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %134

131:                                              ; preds = %104
  %132 = load i32, i32* %13, align 4
  %133 = call i32 @mlog_errno(i32 %132)
  br label %173

134:                                              ; preds = %104
  %135 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %136 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %8, align 8
  %137 = load %struct.ocfs2_path*, %struct.ocfs2_path** %17, align 8
  %138 = load %struct.ocfs2_path*, %struct.ocfs2_path** %11, align 8
  %139 = load i32, i32* %14, align 4
  %140 = call i32 @ocfs2_rotate_subtree_right(%struct.TYPE_10__* %135, %struct.ocfs2_extent_tree* %136, %struct.ocfs2_path* %137, %struct.ocfs2_path* %138, i32 %139)
  store i32 %140, i32* %13, align 4
  %141 = load i32, i32* %13, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %146

143:                                              ; preds = %134
  %144 = load i32, i32* %13, align 4
  %145 = call i32 @mlog_errno(i32 %144)
  br label %173

146:                                              ; preds = %134
  %147 = load i32, i32* %9, align 4
  %148 = load i32, i32* @SPLIT_NONE, align 4
  %149 = icmp ne i32 %147, %148
  br i1 %149, label %150, label %159

150:                                              ; preds = %146
  %151 = load %struct.ocfs2_path*, %struct.ocfs2_path** %11, align 8
  %152 = call i32 @path_leaf_el(%struct.ocfs2_path* %151)
  %153 = load i64, i64* %10, align 8
  %154 = call i64 @ocfs2_leftmost_rec_contains(i32 %152, i64 %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %159

156:                                              ; preds = %150
  %157 = load %struct.ocfs2_path*, %struct.ocfs2_path** %17, align 8
  %158 = load %struct.ocfs2_path**, %struct.ocfs2_path*** %12, align 8
  store %struct.ocfs2_path* %157, %struct.ocfs2_path** %158, align 8
  br label %176

159:                                              ; preds = %150, %146
  %160 = load %struct.ocfs2_path*, %struct.ocfs2_path** %11, align 8
  %161 = load %struct.ocfs2_path*, %struct.ocfs2_path** %17, align 8
  %162 = call i32 @ocfs2_mv_path(%struct.ocfs2_path* %160, %struct.ocfs2_path* %161)
  %163 = load %struct.super_block*, %struct.super_block** %18, align 8
  %164 = load %struct.ocfs2_path*, %struct.ocfs2_path** %11, align 8
  %165 = call i32 @ocfs2_find_cpos_for_left_leaf(%struct.super_block* %163, %struct.ocfs2_path* %164, i64* %16)
  store i32 %165, i32* %13, align 4
  %166 = load i32, i32* %13, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %171

168:                                              ; preds = %159
  %169 = load i32, i32* %13, align 4
  %170 = call i32 @mlog_errno(i32 %169)
  br label %173

171:                                              ; preds = %159
  br label %50

172:                                              ; preds = %57
  br label %173

173:                                              ; preds = %172, %168, %143, %131, %72, %42, %31
  %174 = load %struct.ocfs2_path*, %struct.ocfs2_path** %17, align 8
  %175 = call i32 @ocfs2_free_path(%struct.ocfs2_path* %174)
  br label %176

176:                                              ; preds = %173, %156, %101
  %177 = load i32, i32* %13, align 4
  ret i32 %177
}

declare dso_local %struct.super_block* @ocfs2_metadata_cache_get_super(i32) #1

declare dso_local %struct.ocfs2_path* @ocfs2_new_path_from_path(%struct.ocfs2_path*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_find_cpos_for_left_leaf(%struct.super_block*, %struct.ocfs2_path*, i64*) #1

declare dso_local i32 @mlog(i32, i8*, i32, i64, ...) #1

declare dso_local i32 @ocfs2_find_path(i32, %struct.ocfs2_path*, i64) #1

declare dso_local i32 @mlog_bug_on_msg(i32, i8*, i64, i64, i64, i64) #1

declare dso_local %struct.TYPE_11__* @path_leaf_bh(%struct.ocfs2_path*) #1

declare dso_local i64 @ocfs2_metadata_cache_owner(i32) #1

declare dso_local i64 @ocfs2_rotate_requires_path_adjustment(%struct.ocfs2_path*, i64) #1

declare dso_local i32 @ocfs2_find_subtree_root(%struct.ocfs2_extent_tree*, %struct.ocfs2_path*, %struct.ocfs2_path*) #1

declare dso_local i32 @ocfs2_extend_rotate_transaction(%struct.TYPE_10__*, i32, i32, %struct.ocfs2_path*) #1

declare dso_local i32 @ocfs2_rotate_subtree_right(%struct.TYPE_10__*, %struct.ocfs2_extent_tree*, %struct.ocfs2_path*, %struct.ocfs2_path*, i32) #1

declare dso_local i64 @ocfs2_leftmost_rec_contains(i32, i64) #1

declare dso_local i32 @path_leaf_el(%struct.ocfs2_path*) #1

declare dso_local i32 @ocfs2_mv_path(%struct.ocfs2_path*, %struct.ocfs2_path*) #1

declare dso_local i32 @ocfs2_free_path(%struct.ocfs2_path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
