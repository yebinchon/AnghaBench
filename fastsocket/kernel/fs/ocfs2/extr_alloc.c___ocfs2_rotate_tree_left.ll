; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_alloc.c___ocfs2_rotate_tree_left.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_alloc.c___ocfs2_rotate_tree_left.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_extent_tree = type { i32 }
%struct.ocfs2_path = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.ocfs2_cached_dealloc_ctxt = type { i32 }
%struct.super_block = type { i32 }
%struct.TYPE_6__ = type { i32* }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Subtree root at index %d (blk %llu, depth %d)\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.ocfs2_extent_tree*, i32, %struct.ocfs2_path*, %struct.ocfs2_cached_dealloc_ctxt*, %struct.ocfs2_path**)* @__ocfs2_rotate_tree_left to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__ocfs2_rotate_tree_left(i32* %0, %struct.ocfs2_extent_tree* %1, i32 %2, %struct.ocfs2_path* %3, %struct.ocfs2_cached_dealloc_ctxt* %4, %struct.ocfs2_path** %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca %struct.ocfs2_extent_tree*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ocfs2_path*, align 8
  %11 = alloca %struct.ocfs2_cached_dealloc_ctxt*, align 8
  %12 = alloca %struct.ocfs2_path**, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca %struct.ocfs2_path*, align 8
  %18 = alloca %struct.ocfs2_path*, align 8
  %19 = alloca %struct.super_block*, align 8
  store i32* %0, i32** %7, align 8
  store %struct.ocfs2_extent_tree* %1, %struct.ocfs2_extent_tree** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.ocfs2_path* %3, %struct.ocfs2_path** %10, align 8
  store %struct.ocfs2_cached_dealloc_ctxt* %4, %struct.ocfs2_cached_dealloc_ctxt** %11, align 8
  store %struct.ocfs2_path** %5, %struct.ocfs2_path*** %12, align 8
  store %struct.ocfs2_path* null, %struct.ocfs2_path** %17, align 8
  store %struct.ocfs2_path* null, %struct.ocfs2_path** %18, align 8
  %20 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %8, align 8
  %21 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.super_block* @ocfs2_metadata_cache_get_super(i32 %22)
  store %struct.super_block* %23, %struct.super_block** %19, align 8
  %24 = load %struct.ocfs2_path*, %struct.ocfs2_path** %10, align 8
  %25 = call %struct.TYPE_6__* @path_leaf_el(%struct.ocfs2_path* %24)
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  %29 = call i32 @ocfs2_is_empty_extent(i32* %28)
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  %33 = call i32 @BUG_ON(i32 %32)
  %34 = load %struct.ocfs2_path**, %struct.ocfs2_path*** %12, align 8
  store %struct.ocfs2_path* null, %struct.ocfs2_path** %34, align 8
  %35 = load %struct.super_block*, %struct.super_block** %19, align 8
  %36 = load %struct.ocfs2_path*, %struct.ocfs2_path** %10, align 8
  %37 = call i32 @ocfs2_find_cpos_for_right_leaf(%struct.super_block* %35, %struct.ocfs2_path* %36, i64* %16)
  store i32 %37, i32* %13, align 4
  %38 = load i32, i32* %13, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %6
  %41 = load i32, i32* %13, align 4
  %42 = call i32 @mlog_errno(i32 %41)
  br label %163

43:                                               ; preds = %6
  %44 = load %struct.ocfs2_path*, %struct.ocfs2_path** %10, align 8
  %45 = call %struct.ocfs2_path* @ocfs2_new_path_from_path(%struct.ocfs2_path* %44)
  store %struct.ocfs2_path* %45, %struct.ocfs2_path** %17, align 8
  %46 = load %struct.ocfs2_path*, %struct.ocfs2_path** %17, align 8
  %47 = icmp ne %struct.ocfs2_path* %46, null
  br i1 %47, label %53, label %48

48:                                               ; preds = %43
  %49 = load i32, i32* @ENOMEM, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %13, align 4
  %51 = load i32, i32* %13, align 4
  %52 = call i32 @mlog_errno(i32 %51)
  br label %163

53:                                               ; preds = %43
  %54 = load %struct.ocfs2_path*, %struct.ocfs2_path** %17, align 8
  %55 = load %struct.ocfs2_path*, %struct.ocfs2_path** %10, align 8
  %56 = call i32 @ocfs2_cp_path(%struct.ocfs2_path* %54, %struct.ocfs2_path* %55)
  %57 = load %struct.ocfs2_path*, %struct.ocfs2_path** %10, align 8
  %58 = call %struct.ocfs2_path* @ocfs2_new_path_from_path(%struct.ocfs2_path* %57)
  store %struct.ocfs2_path* %58, %struct.ocfs2_path** %18, align 8
  %59 = load %struct.ocfs2_path*, %struct.ocfs2_path** %18, align 8
  %60 = icmp ne %struct.ocfs2_path* %59, null
  br i1 %60, label %66, label %61

61:                                               ; preds = %53
  %62 = load i32, i32* @ENOMEM, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %13, align 4
  %64 = load i32, i32* %13, align 4
  %65 = call i32 @mlog_errno(i32 %64)
  br label %163

66:                                               ; preds = %53
  br label %67

67:                                               ; preds = %161, %66
  %68 = load i64, i64* %16, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %162

70:                                               ; preds = %67
  %71 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %8, align 8
  %72 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.ocfs2_path*, %struct.ocfs2_path** %18, align 8
  %75 = load i64, i64* %16, align 8
  %76 = call i32 @ocfs2_find_path(i32 %73, %struct.ocfs2_path* %74, i64 %75)
  store i32 %76, i32* %13, align 4
  %77 = load i32, i32* %13, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %70
  %80 = load i32, i32* %13, align 4
  %81 = call i32 @mlog_errno(i32 %80)
  br label %163

82:                                               ; preds = %70
  %83 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %8, align 8
  %84 = load %struct.ocfs2_path*, %struct.ocfs2_path** %17, align 8
  %85 = load %struct.ocfs2_path*, %struct.ocfs2_path** %18, align 8
  %86 = call i32 @ocfs2_find_subtree_root(%struct.ocfs2_extent_tree* %83, %struct.ocfs2_path* %84, %struct.ocfs2_path* %85)
  store i32 %86, i32* %14, align 4
  %87 = load i32, i32* %14, align 4
  %88 = load %struct.ocfs2_path*, %struct.ocfs2_path** %18, align 8
  %89 = getelementptr inbounds %struct.ocfs2_path, %struct.ocfs2_path* %88, i32 0, i32 1
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %89, align 8
  %91 = load i32, i32* %14, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.ocfs2_path*, %struct.ocfs2_path** %18, align 8
  %99 = getelementptr inbounds %struct.ocfs2_path, %struct.ocfs2_path* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @mlog(i32 0, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %87, i64 %97, i32 %100)
  %102 = load i32*, i32** %7, align 8
  %103 = load i32, i32* %14, align 4
  %104 = load i32, i32* %9, align 4
  %105 = load %struct.ocfs2_path*, %struct.ocfs2_path** %17, align 8
  %106 = call i32 @ocfs2_extend_rotate_transaction(i32* %102, i32 %103, i32 %104, %struct.ocfs2_path* %105)
  store i32 %106, i32* %13, align 4
  %107 = load i32, i32* %13, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %82
  %110 = load i32, i32* %13, align 4
  %111 = call i32 @mlog_errno(i32 %110)
  br label %163

112:                                              ; preds = %82
  %113 = load i32*, i32** %7, align 8
  %114 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %8, align 8
  %115 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.ocfs2_path*, %struct.ocfs2_path** %17, align 8
  %118 = call i32 @ocfs2_path_bh_journal_access(i32* %113, i32 %116, %struct.ocfs2_path* %117, i32 0)
  store i32 %118, i32* %13, align 4
  %119 = load i32, i32* %13, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %124

121:                                              ; preds = %112
  %122 = load i32, i32* %13, align 4
  %123 = call i32 @mlog_errno(i32 %122)
  br label %163

124:                                              ; preds = %112
  %125 = load i32*, i32** %7, align 8
  %126 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %8, align 8
  %127 = load %struct.ocfs2_path*, %struct.ocfs2_path** %17, align 8
  %128 = load %struct.ocfs2_path*, %struct.ocfs2_path** %18, align 8
  %129 = load i32, i32* %14, align 4
  %130 = load %struct.ocfs2_cached_dealloc_ctxt*, %struct.ocfs2_cached_dealloc_ctxt** %11, align 8
  %131 = call i32 @ocfs2_rotate_subtree_left(i32* %125, %struct.ocfs2_extent_tree* %126, %struct.ocfs2_path* %127, %struct.ocfs2_path* %128, i32 %129, %struct.ocfs2_cached_dealloc_ctxt* %130, i32* %15)
  store i32 %131, i32* %13, align 4
  %132 = load i32, i32* %13, align 4
  %133 = load i32, i32* @EAGAIN, align 4
  %134 = sub nsw i32 0, %133
  %135 = icmp eq i32 %132, %134
  br i1 %135, label %136, label %139

136:                                              ; preds = %124
  %137 = load %struct.ocfs2_path*, %struct.ocfs2_path** %18, align 8
  %138 = load %struct.ocfs2_path**, %struct.ocfs2_path*** %12, align 8
  store %struct.ocfs2_path* %137, %struct.ocfs2_path** %138, align 8
  store %struct.ocfs2_path* null, %struct.ocfs2_path** %18, align 8
  br label %163

139:                                              ; preds = %124
  %140 = load i32, i32* %13, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %145

142:                                              ; preds = %139
  %143 = load i32, i32* %13, align 4
  %144 = call i32 @mlog_errno(i32 %143)
  br label %163

145:                                              ; preds = %139
  %146 = load i32, i32* %15, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %145
  br label %162

149:                                              ; preds = %145
  %150 = load %struct.ocfs2_path*, %struct.ocfs2_path** %17, align 8
  %151 = load %struct.ocfs2_path*, %struct.ocfs2_path** %18, align 8
  %152 = call i32 @ocfs2_mv_path(%struct.ocfs2_path* %150, %struct.ocfs2_path* %151)
  %153 = load %struct.super_block*, %struct.super_block** %19, align 8
  %154 = load %struct.ocfs2_path*, %struct.ocfs2_path** %17, align 8
  %155 = call i32 @ocfs2_find_cpos_for_right_leaf(%struct.super_block* %153, %struct.ocfs2_path* %154, i64* %16)
  store i32 %155, i32* %13, align 4
  %156 = load i32, i32* %13, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %161

158:                                              ; preds = %149
  %159 = load i32, i32* %13, align 4
  %160 = call i32 @mlog_errno(i32 %159)
  br label %163

161:                                              ; preds = %149
  br label %67

162:                                              ; preds = %148, %67
  br label %163

163:                                              ; preds = %162, %158, %142, %136, %121, %109, %79, %61, %48, %40
  %164 = load %struct.ocfs2_path*, %struct.ocfs2_path** %18, align 8
  %165 = call i32 @ocfs2_free_path(%struct.ocfs2_path* %164)
  %166 = load %struct.ocfs2_path*, %struct.ocfs2_path** %17, align 8
  %167 = call i32 @ocfs2_free_path(%struct.ocfs2_path* %166)
  %168 = load i32, i32* %13, align 4
  ret i32 %168
}

declare dso_local %struct.super_block* @ocfs2_metadata_cache_get_super(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @ocfs2_is_empty_extent(i32*) #1

declare dso_local %struct.TYPE_6__* @path_leaf_el(%struct.ocfs2_path*) #1

declare dso_local i32 @ocfs2_find_cpos_for_right_leaf(%struct.super_block*, %struct.ocfs2_path*, i64*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local %struct.ocfs2_path* @ocfs2_new_path_from_path(%struct.ocfs2_path*) #1

declare dso_local i32 @ocfs2_cp_path(%struct.ocfs2_path*, %struct.ocfs2_path*) #1

declare dso_local i32 @ocfs2_find_path(i32, %struct.ocfs2_path*, i64) #1

declare dso_local i32 @ocfs2_find_subtree_root(%struct.ocfs2_extent_tree*, %struct.ocfs2_path*, %struct.ocfs2_path*) #1

declare dso_local i32 @mlog(i32, i8*, i32, i64, i32) #1

declare dso_local i32 @ocfs2_extend_rotate_transaction(i32*, i32, i32, %struct.ocfs2_path*) #1

declare dso_local i32 @ocfs2_path_bh_journal_access(i32*, i32, %struct.ocfs2_path*, i32) #1

declare dso_local i32 @ocfs2_rotate_subtree_left(i32*, %struct.ocfs2_extent_tree*, %struct.ocfs2_path*, %struct.ocfs2_path*, i32, %struct.ocfs2_cached_dealloc_ctxt*, i32*) #1

declare dso_local i32 @ocfs2_mv_path(%struct.ocfs2_path*, %struct.ocfs2_path*) #1

declare dso_local i32 @ocfs2_free_path(%struct.ocfs2_path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
