; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_alloc.c_ocfs2_split_extent.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_alloc.c_ocfs2_split_extent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_extent_tree = type { i32 }
%struct.ocfs2_path = type { i64 }
%struct.ocfs2_extent_rec = type { i64, i64 }
%struct.ocfs2_alloc_context = type { i32 }
%struct.ocfs2_cached_dealloc_ctxt = type { i32 }
%struct.ocfs2_extent_list = type { %struct.ocfs2_extent_rec* }
%struct.buffer_head = type { i64 }
%struct.ocfs2_merge_ctxt = type { i64, i32, i32 }
%struct.ocfs2_extent_block = type { %struct.ocfs2_extent_list }

@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"index: %d, contig: %u, has_empty: %u, split_covers: %u\0A\00", align 1
@CONTIG_NONE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_split_extent(i32* %0, %struct.ocfs2_extent_tree* %1, %struct.ocfs2_path* %2, i32 %3, %struct.ocfs2_extent_rec* %4, %struct.ocfs2_alloc_context* %5, %struct.ocfs2_cached_dealloc_ctxt* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca %struct.ocfs2_extent_tree*, align 8
  %10 = alloca %struct.ocfs2_path*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.ocfs2_extent_rec*, align 8
  %13 = alloca %struct.ocfs2_alloc_context*, align 8
  %14 = alloca %struct.ocfs2_cached_dealloc_ctxt*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.ocfs2_extent_list*, align 8
  %17 = alloca %struct.buffer_head*, align 8
  %18 = alloca %struct.ocfs2_extent_rec*, align 8
  %19 = alloca %struct.ocfs2_merge_ctxt, align 8
  %20 = alloca %struct.ocfs2_extent_list*, align 8
  %21 = alloca %struct.ocfs2_extent_block*, align 8
  store i32* %0, i32** %8, align 8
  store %struct.ocfs2_extent_tree* %1, %struct.ocfs2_extent_tree** %9, align 8
  store %struct.ocfs2_path* %2, %struct.ocfs2_path** %10, align 8
  store i32 %3, i32* %11, align 4
  store %struct.ocfs2_extent_rec* %4, %struct.ocfs2_extent_rec** %12, align 8
  store %struct.ocfs2_alloc_context* %5, %struct.ocfs2_alloc_context** %13, align 8
  store %struct.ocfs2_cached_dealloc_ctxt* %6, %struct.ocfs2_cached_dealloc_ctxt** %14, align 8
  store i32 0, i32* %15, align 4
  %22 = load %struct.ocfs2_path*, %struct.ocfs2_path** %10, align 8
  %23 = call %struct.ocfs2_extent_list* @path_leaf_el(%struct.ocfs2_path* %22)
  store %struct.ocfs2_extent_list* %23, %struct.ocfs2_extent_list** %16, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %17, align 8
  %24 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %16, align 8
  %25 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %24, i32 0, i32 0
  %26 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %25, align 8
  %27 = load i32, i32* %11, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %26, i64 %28
  store %struct.ocfs2_extent_rec* %29, %struct.ocfs2_extent_rec** %18, align 8
  %30 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %18, align 8
  %31 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = call i64 @le32_to_cpu(i64 %32)
  %34 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %12, align 8
  %35 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = call i64 @le32_to_cpu(i64 %36)
  %38 = icmp sgt i64 %33, %37
  br i1 %38, label %59, label %39

39:                                               ; preds = %7
  %40 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %18, align 8
  %41 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = call i64 @le32_to_cpu(i64 %42)
  %44 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %18, align 8
  %45 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = call i64 @le16_to_cpu(i64 %46)
  %48 = add nsw i64 %43, %47
  %49 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %12, align 8
  %50 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = call i64 @le32_to_cpu(i64 %51)
  %53 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %12, align 8
  %54 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = call i64 @le16_to_cpu(i64 %55)
  %57 = add nsw i64 %52, %56
  %58 = icmp slt i64 %48, %57
  br i1 %58, label %59, label %64

59:                                               ; preds = %39, %7
  %60 = load i32, i32* @EIO, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %15, align 4
  %62 = load i32, i32* %15, align 4
  %63 = call i32 @mlog_errno(i32 %62)
  br label %179

64:                                               ; preds = %39
  %65 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %9, align 8
  %66 = load %struct.ocfs2_path*, %struct.ocfs2_path** %10, align 8
  %67 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %16, align 8
  %68 = load i32, i32* %11, align 4
  %69 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %12, align 8
  %70 = call i64 @ocfs2_figure_merge_contig_type(%struct.ocfs2_extent_tree* %65, %struct.ocfs2_path* %66, %struct.ocfs2_extent_list* %67, i32 %68, %struct.ocfs2_extent_rec* %69)
  %71 = getelementptr inbounds %struct.ocfs2_merge_ctxt, %struct.ocfs2_merge_ctxt* %19, i32 0, i32 0
  store i64 %70, i64* %71, align 8
  %72 = load %struct.ocfs2_path*, %struct.ocfs2_path** %10, align 8
  %73 = getelementptr inbounds %struct.ocfs2_path, %struct.ocfs2_path* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %95

76:                                               ; preds = %64
  %77 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %9, align 8
  %78 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %9, align 8
  %81 = call i32 @ocfs2_et_get_last_eb_blk(%struct.ocfs2_extent_tree* %80)
  %82 = call i32 @ocfs2_read_extent_block(i32 %79, i32 %81, %struct.buffer_head** %17)
  store i32 %82, i32* %15, align 4
  %83 = load i32, i32* %15, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %76
  %86 = load i32, i32* %15, align 4
  %87 = call i32 @mlog_exit(i32 %86)
  br label %179

88:                                               ; preds = %76
  %89 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  %90 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = inttoptr i64 %91 to %struct.ocfs2_extent_block*
  store %struct.ocfs2_extent_block* %92, %struct.ocfs2_extent_block** %21, align 8
  %93 = load %struct.ocfs2_extent_block*, %struct.ocfs2_extent_block** %21, align 8
  %94 = getelementptr inbounds %struct.ocfs2_extent_block, %struct.ocfs2_extent_block* %93, i32 0, i32 0
  store %struct.ocfs2_extent_list* %94, %struct.ocfs2_extent_list** %20, align 8
  br label %98

95:                                               ; preds = %64
  %96 = load %struct.ocfs2_path*, %struct.ocfs2_path** %10, align 8
  %97 = call %struct.ocfs2_extent_list* @path_root_el(%struct.ocfs2_path* %96)
  store %struct.ocfs2_extent_list* %97, %struct.ocfs2_extent_list** %20, align 8
  br label %98

98:                                               ; preds = %95, %88
  %99 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %18, align 8
  %100 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %12, align 8
  %103 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = icmp eq i64 %101, %104
  br i1 %105, label %106, label %116

106:                                              ; preds = %98
  %107 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %18, align 8
  %108 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %12, align 8
  %111 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = icmp eq i64 %109, %112
  br i1 %113, label %114, label %116

114:                                              ; preds = %106
  %115 = getelementptr inbounds %struct.ocfs2_merge_ctxt, %struct.ocfs2_merge_ctxt* %19, i32 0, i32 1
  store i32 1, i32* %115, align 8
  br label %118

116:                                              ; preds = %106, %98
  %117 = getelementptr inbounds %struct.ocfs2_merge_ctxt, %struct.ocfs2_merge_ctxt* %19, i32 0, i32 1
  store i32 0, i32* %117, align 8
  br label %118

118:                                              ; preds = %116, %114
  %119 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %16, align 8
  %120 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %119, i32 0, i32 0
  %121 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %120, align 8
  %122 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %121, i64 0
  %123 = call i32 @ocfs2_is_empty_extent(%struct.ocfs2_extent_rec* %122)
  %124 = getelementptr inbounds %struct.ocfs2_merge_ctxt, %struct.ocfs2_merge_ctxt* %19, i32 0, i32 2
  store i32 %123, i32* %124, align 4
  %125 = load i32, i32* %11, align 4
  %126 = getelementptr inbounds %struct.ocfs2_merge_ctxt, %struct.ocfs2_merge_ctxt* %19, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = getelementptr inbounds %struct.ocfs2_merge_ctxt, %struct.ocfs2_merge_ctxt* %19, i32 0, i32 2
  %129 = load i32, i32* %128, align 4
  %130 = getelementptr inbounds %struct.ocfs2_merge_ctxt, %struct.ocfs2_merge_ctxt* %19, i32 0, i32 1
  %131 = load i32, i32* %130, align 8
  %132 = call i32 @mlog(i32 0, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %125, i64 %127, i32 %129, i32 %131)
  %133 = getelementptr inbounds %struct.ocfs2_merge_ctxt, %struct.ocfs2_merge_ctxt* %19, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* @CONTIG_NONE, align 8
  %136 = icmp eq i64 %134, %135
  br i1 %136, label %137, label %164

137:                                              ; preds = %118
  %138 = getelementptr inbounds %struct.ocfs2_merge_ctxt, %struct.ocfs2_merge_ctxt* %19, i32 0, i32 1
  %139 = load i32, i32* %138, align 8
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %149

141:                                              ; preds = %137
  %142 = load i32*, i32** %8, align 8
  %143 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %9, align 8
  %144 = load %struct.ocfs2_path*, %struct.ocfs2_path** %10, align 8
  %145 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %16, align 8
  %146 = load i32, i32* %11, align 4
  %147 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %12, align 8
  %148 = call i32 @ocfs2_replace_extent_rec(i32* %142, %struct.ocfs2_extent_tree* %143, %struct.ocfs2_path* %144, %struct.ocfs2_extent_list* %145, i32 %146, %struct.ocfs2_extent_rec* %147)
  store i32 %148, i32* %15, align 4
  br label %157

149:                                              ; preds = %137
  %150 = load i32*, i32** %8, align 8
  %151 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %9, align 8
  %152 = load %struct.ocfs2_path*, %struct.ocfs2_path** %10, align 8
  %153 = load i32, i32* %11, align 4
  %154 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %12, align 8
  %155 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %13, align 8
  %156 = call i32 @ocfs2_split_and_insert(i32* %150, %struct.ocfs2_extent_tree* %151, %struct.ocfs2_path* %152, %struct.buffer_head** %17, i32 %153, %struct.ocfs2_extent_rec* %154, %struct.ocfs2_alloc_context* %155)
  store i32 %156, i32* %15, align 4
  br label %157

157:                                              ; preds = %149, %141
  %158 = load i32, i32* %15, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %163

160:                                              ; preds = %157
  %161 = load i32, i32* %15, align 4
  %162 = call i32 @mlog_errno(i32 %161)
  br label %163

163:                                              ; preds = %160, %157
  br label %178

164:                                              ; preds = %118
  %165 = load i32*, i32** %8, align 8
  %166 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %9, align 8
  %167 = load %struct.ocfs2_path*, %struct.ocfs2_path** %10, align 8
  %168 = load i32, i32* %11, align 4
  %169 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %12, align 8
  %170 = load %struct.ocfs2_cached_dealloc_ctxt*, %struct.ocfs2_cached_dealloc_ctxt** %14, align 8
  %171 = call i32 @ocfs2_try_to_merge_extent(i32* %165, %struct.ocfs2_extent_tree* %166, %struct.ocfs2_path* %167, i32 %168, %struct.ocfs2_extent_rec* %169, %struct.ocfs2_cached_dealloc_ctxt* %170, %struct.ocfs2_merge_ctxt* %19)
  store i32 %171, i32* %15, align 4
  %172 = load i32, i32* %15, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %177

174:                                              ; preds = %164
  %175 = load i32, i32* %15, align 4
  %176 = call i32 @mlog_errno(i32 %175)
  br label %177

177:                                              ; preds = %174, %164
  br label %178

178:                                              ; preds = %177, %163
  br label %179

179:                                              ; preds = %178, %85, %59
  %180 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  %181 = call i32 @brelse(%struct.buffer_head* %180)
  %182 = load i32, i32* %15, align 4
  ret i32 %182
}

declare dso_local %struct.ocfs2_extent_list* @path_leaf_el(%struct.ocfs2_path*) #1

declare dso_local i64 @le32_to_cpu(i64) #1

declare dso_local i64 @le16_to_cpu(i64) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i64 @ocfs2_figure_merge_contig_type(%struct.ocfs2_extent_tree*, %struct.ocfs2_path*, %struct.ocfs2_extent_list*, i32, %struct.ocfs2_extent_rec*) #1

declare dso_local i32 @ocfs2_read_extent_block(i32, i32, %struct.buffer_head**) #1

declare dso_local i32 @ocfs2_et_get_last_eb_blk(%struct.ocfs2_extent_tree*) #1

declare dso_local i32 @mlog_exit(i32) #1

declare dso_local %struct.ocfs2_extent_list* @path_root_el(%struct.ocfs2_path*) #1

declare dso_local i32 @ocfs2_is_empty_extent(%struct.ocfs2_extent_rec*) #1

declare dso_local i32 @mlog(i32, i8*, i32, i64, i32, i32) #1

declare dso_local i32 @ocfs2_replace_extent_rec(i32*, %struct.ocfs2_extent_tree*, %struct.ocfs2_path*, %struct.ocfs2_extent_list*, i32, %struct.ocfs2_extent_rec*) #1

declare dso_local i32 @ocfs2_split_and_insert(i32*, %struct.ocfs2_extent_tree*, %struct.ocfs2_path*, %struct.buffer_head**, i32, %struct.ocfs2_extent_rec*, %struct.ocfs2_alloc_context*) #1

declare dso_local i32 @ocfs2_try_to_merge_extent(i32*, %struct.ocfs2_extent_tree*, %struct.ocfs2_path*, i32, %struct.ocfs2_extent_rec*, %struct.ocfs2_cached_dealloc_ctxt*, %struct.ocfs2_merge_ctxt*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
