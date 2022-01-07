; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_alloc.c_ocfs2_rotate_tree_left.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_alloc.c_ocfs2_rotate_tree_left.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.ocfs2_extent_tree = type { i32 }
%struct.ocfs2_path = type { i64 }
%struct.ocfs2_cached_dealloc_ctxt = type { i32 }
%struct.ocfs2_extent_block = type { i64, i32, %struct.ocfs2_extent_list }
%struct.ocfs2_extent_list = type { i32, i32* }
%struct.TYPE_8__ = type { i64 }

@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Owner %llu has empty extent block at %llu\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, %struct.ocfs2_extent_tree*, %struct.ocfs2_path*, %struct.ocfs2_cached_dealloc_ctxt*)* @ocfs2_rotate_tree_left to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_rotate_tree_left(%struct.TYPE_7__* %0, %struct.ocfs2_extent_tree* %1, %struct.ocfs2_path* %2, %struct.ocfs2_cached_dealloc_ctxt* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca %struct.ocfs2_extent_tree*, align 8
  %8 = alloca %struct.ocfs2_path*, align 8
  %9 = alloca %struct.ocfs2_cached_dealloc_ctxt*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.ocfs2_path*, align 8
  %13 = alloca %struct.ocfs2_path*, align 8
  %14 = alloca %struct.ocfs2_extent_block*, align 8
  %15 = alloca %struct.ocfs2_extent_list*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store %struct.ocfs2_extent_tree* %1, %struct.ocfs2_extent_tree** %7, align 8
  store %struct.ocfs2_path* %2, %struct.ocfs2_path** %8, align 8
  store %struct.ocfs2_cached_dealloc_ctxt* %3, %struct.ocfs2_cached_dealloc_ctxt** %9, align 8
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %11, align 4
  store %struct.ocfs2_path* null, %struct.ocfs2_path** %12, align 8
  store %struct.ocfs2_path* null, %struct.ocfs2_path** %13, align 8
  %19 = load %struct.ocfs2_path*, %struct.ocfs2_path** %8, align 8
  %20 = call %struct.ocfs2_extent_list* @path_leaf_el(%struct.ocfs2_path* %19)
  store %struct.ocfs2_extent_list* %20, %struct.ocfs2_extent_list** %15, align 8
  %21 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %15, align 8
  %22 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  %25 = call i32 @ocfs2_is_empty_extent(i32* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %154

28:                                               ; preds = %4
  %29 = load %struct.ocfs2_path*, %struct.ocfs2_path** %8, align 8
  %30 = getelementptr inbounds %struct.ocfs2_path, %struct.ocfs2_path* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %45

33:                                               ; preds = %28
  br label %34

34:                                               ; preds = %63, %33
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %36 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %7, align 8
  %37 = load %struct.ocfs2_path*, %struct.ocfs2_path** %8, align 8
  %38 = call i32 @ocfs2_rotate_rightmost_leaf_left(%struct.TYPE_7__* %35, %struct.ocfs2_extent_tree* %36, %struct.ocfs2_path* %37)
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %10, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %34
  %42 = load i32, i32* %10, align 4
  %43 = call i32 @mlog_errno(i32 %42)
  br label %44

44:                                               ; preds = %41, %34
  br label %148

45:                                               ; preds = %28
  %46 = load %struct.ocfs2_path*, %struct.ocfs2_path** %8, align 8
  %47 = call %struct.TYPE_8__* @path_leaf_bh(%struct.ocfs2_path* %46)
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = inttoptr i64 %49 to %struct.ocfs2_extent_block*
  store %struct.ocfs2_extent_block* %50, %struct.ocfs2_extent_block** %14, align 8
  %51 = load %struct.ocfs2_extent_block*, %struct.ocfs2_extent_block** %14, align 8
  %52 = getelementptr inbounds %struct.ocfs2_extent_block, %struct.ocfs2_extent_block* %51, i32 0, i32 2
  store %struct.ocfs2_extent_list* %52, %struct.ocfs2_extent_list** %15, align 8
  %53 = load %struct.ocfs2_extent_block*, %struct.ocfs2_extent_block** %14, align 8
  %54 = getelementptr inbounds %struct.ocfs2_extent_block, %struct.ocfs2_extent_block* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %98

57:                                               ; preds = %45
  %58 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %15, align 8
  %59 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @le16_to_cpu(i32 %60)
  %62 = icmp sgt i32 %61, 1
  br i1 %62, label %63, label %64

63:                                               ; preds = %57
  br label %34

64:                                               ; preds = %57
  %65 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %15, align 8
  %66 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @le16_to_cpu(i32 %67)
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %86

70:                                               ; preds = %64
  %71 = load i32, i32* @EIO, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %10, align 4
  %73 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %7, align 8
  %74 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @ocfs2_metadata_cache_get_super(i32 %75)
  %77 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %7, align 8
  %78 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i64 @ocfs2_metadata_cache_owner(i32 %79)
  %81 = load %struct.ocfs2_extent_block*, %struct.ocfs2_extent_block** %14, align 8
  %82 = getelementptr inbounds %struct.ocfs2_extent_block, %struct.ocfs2_extent_block* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = call i64 @le64_to_cpu(i32 %83)
  %85 = call i32 @ocfs2_error(i32 %76, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i64 %80, i64 %84)
  br label %148

86:                                               ; preds = %64
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %88 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %7, align 8
  %89 = load %struct.ocfs2_path*, %struct.ocfs2_path** %8, align 8
  %90 = load %struct.ocfs2_cached_dealloc_ctxt*, %struct.ocfs2_cached_dealloc_ctxt** %9, align 8
  %91 = call i32 @ocfs2_remove_rightmost_path(%struct.TYPE_7__* %87, %struct.ocfs2_extent_tree* %88, %struct.ocfs2_path* %89, %struct.ocfs2_cached_dealloc_ctxt* %90)
  store i32 %91, i32* %10, align 4
  %92 = load i32, i32* %10, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %86
  %95 = load i32, i32* %10, align 4
  %96 = call i32 @mlog_errno(i32 %95)
  br label %97

97:                                               ; preds = %94, %86
  br label %148

98:                                               ; preds = %45
  br label %99

99:                                               ; preds = %145, %98
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %101 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %7, align 8
  %102 = load i32, i32* %11, align 4
  %103 = load %struct.ocfs2_path*, %struct.ocfs2_path** %8, align 8
  %104 = load %struct.ocfs2_cached_dealloc_ctxt*, %struct.ocfs2_cached_dealloc_ctxt** %9, align 8
  %105 = call i32 @__ocfs2_rotate_tree_left(%struct.TYPE_7__* %100, %struct.ocfs2_extent_tree* %101, i32 %102, %struct.ocfs2_path* %103, %struct.ocfs2_cached_dealloc_ctxt* %104, %struct.ocfs2_path** %13)
  store i32 %105, i32* %10, align 4
  %106 = load i32, i32* %10, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %116

108:                                              ; preds = %99
  %109 = load i32, i32* %10, align 4
  %110 = load i32, i32* @EAGAIN, align 4
  %111 = sub nsw i32 0, %110
  %112 = icmp ne i32 %109, %111
  br i1 %112, label %113, label %116

113:                                              ; preds = %108
  %114 = load i32, i32* %10, align 4
  %115 = call i32 @mlog_errno(i32 %114)
  br label %148

116:                                              ; preds = %108, %99
  br label %117

117:                                              ; preds = %146, %116
  %118 = load i32, i32* %10, align 4
  %119 = load i32, i32* @EAGAIN, align 4
  %120 = sub nsw i32 0, %119
  %121 = icmp eq i32 %118, %120
  br i1 %121, label %122, label %147

122:                                              ; preds = %117
  %123 = load %struct.ocfs2_path*, %struct.ocfs2_path** %13, align 8
  store %struct.ocfs2_path* %123, %struct.ocfs2_path** %12, align 8
  store %struct.ocfs2_path* null, %struct.ocfs2_path** %13, align 8
  %124 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %125 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %7, align 8
  %126 = load i32, i32* %11, align 4
  %127 = load %struct.ocfs2_path*, %struct.ocfs2_path** %12, align 8
  %128 = load %struct.ocfs2_cached_dealloc_ctxt*, %struct.ocfs2_cached_dealloc_ctxt** %9, align 8
  %129 = call i32 @__ocfs2_rotate_tree_left(%struct.TYPE_7__* %124, %struct.ocfs2_extent_tree* %125, i32 %126, %struct.ocfs2_path* %127, %struct.ocfs2_cached_dealloc_ctxt* %128, %struct.ocfs2_path** %13)
  store i32 %129, i32* %10, align 4
  %130 = load i32, i32* %10, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %140

132:                                              ; preds = %122
  %133 = load i32, i32* %10, align 4
  %134 = load i32, i32* @EAGAIN, align 4
  %135 = sub nsw i32 0, %134
  %136 = icmp ne i32 %133, %135
  br i1 %136, label %137, label %140

137:                                              ; preds = %132
  %138 = load i32, i32* %10, align 4
  %139 = call i32 @mlog_errno(i32 %138)
  br label %148

140:                                              ; preds = %132, %122
  %141 = load %struct.ocfs2_path*, %struct.ocfs2_path** %12, align 8
  %142 = call i32 @ocfs2_free_path(%struct.ocfs2_path* %141)
  store %struct.ocfs2_path* null, %struct.ocfs2_path** %12, align 8
  %143 = load i32, i32* %10, align 4
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %140
  br label %99

146:                                              ; preds = %140
  br label %117

147:                                              ; preds = %117
  br label %148

148:                                              ; preds = %147, %137, %113, %97, %70, %44
  %149 = load %struct.ocfs2_path*, %struct.ocfs2_path** %12, align 8
  %150 = call i32 @ocfs2_free_path(%struct.ocfs2_path* %149)
  %151 = load %struct.ocfs2_path*, %struct.ocfs2_path** %13, align 8
  %152 = call i32 @ocfs2_free_path(%struct.ocfs2_path* %151)
  %153 = load i32, i32* %10, align 4
  store i32 %153, i32* %5, align 4
  br label %154

154:                                              ; preds = %148, %27
  %155 = load i32, i32* %5, align 4
  ret i32 %155
}

declare dso_local %struct.ocfs2_extent_list* @path_leaf_el(%struct.ocfs2_path*) #1

declare dso_local i32 @ocfs2_is_empty_extent(i32*) #1

declare dso_local i32 @ocfs2_rotate_rightmost_leaf_left(%struct.TYPE_7__*, %struct.ocfs2_extent_tree*, %struct.ocfs2_path*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local %struct.TYPE_8__* @path_leaf_bh(%struct.ocfs2_path*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @ocfs2_error(i32, i8*, i64, i64) #1

declare dso_local i32 @ocfs2_metadata_cache_get_super(i32) #1

declare dso_local i64 @ocfs2_metadata_cache_owner(i32) #1

declare dso_local i64 @le64_to_cpu(i32) #1

declare dso_local i32 @ocfs2_remove_rightmost_path(%struct.TYPE_7__*, %struct.ocfs2_extent_tree*, %struct.ocfs2_path*, %struct.ocfs2_cached_dealloc_ctxt*) #1

declare dso_local i32 @__ocfs2_rotate_tree_left(%struct.TYPE_7__*, %struct.ocfs2_extent_tree*, i32, %struct.ocfs2_path*, %struct.ocfs2_cached_dealloc_ctxt*, %struct.ocfs2_path**) #1

declare dso_local i32 @ocfs2_free_path(%struct.ocfs2_path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
