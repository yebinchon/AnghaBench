; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_alloc.c_ocfs2_try_to_merge_extent.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_alloc.c_ocfs2_try_to_merge_extent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_extent_tree = type { i32 }
%struct.ocfs2_path = type { i32 }
%struct.ocfs2_extent_rec = type { i32 }
%struct.ocfs2_cached_dealloc_ctxt = type { i32 }
%struct.ocfs2_merge_ctxt = type { i64, i64, i64 }
%struct.ocfs2_extent_list = type { %struct.ocfs2_extent_rec* }

@CONTIG_NONE = common dso_local global i64 0, align 8
@CONTIG_LEFTRIGHT = common dso_local global i64 0, align 8
@CONTIG_RIGHT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.ocfs2_extent_tree*, %struct.ocfs2_path*, i32, %struct.ocfs2_extent_rec*, %struct.ocfs2_cached_dealloc_ctxt*, %struct.ocfs2_merge_ctxt*)* @ocfs2_try_to_merge_extent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_try_to_merge_extent(i32* %0, %struct.ocfs2_extent_tree* %1, %struct.ocfs2_path* %2, i32 %3, %struct.ocfs2_extent_rec* %4, %struct.ocfs2_cached_dealloc_ctxt* %5, %struct.ocfs2_merge_ctxt* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca %struct.ocfs2_extent_tree*, align 8
  %10 = alloca %struct.ocfs2_path*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.ocfs2_extent_rec*, align 8
  %13 = alloca %struct.ocfs2_cached_dealloc_ctxt*, align 8
  %14 = alloca %struct.ocfs2_merge_ctxt*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.ocfs2_extent_list*, align 8
  %17 = alloca %struct.ocfs2_extent_rec*, align 8
  store i32* %0, i32** %8, align 8
  store %struct.ocfs2_extent_tree* %1, %struct.ocfs2_extent_tree** %9, align 8
  store %struct.ocfs2_path* %2, %struct.ocfs2_path** %10, align 8
  store i32 %3, i32* %11, align 4
  store %struct.ocfs2_extent_rec* %4, %struct.ocfs2_extent_rec** %12, align 8
  store %struct.ocfs2_cached_dealloc_ctxt* %5, %struct.ocfs2_cached_dealloc_ctxt** %13, align 8
  store %struct.ocfs2_merge_ctxt* %6, %struct.ocfs2_merge_ctxt** %14, align 8
  store i32 0, i32* %15, align 4
  %18 = load %struct.ocfs2_path*, %struct.ocfs2_path** %10, align 8
  %19 = call %struct.ocfs2_extent_list* @path_leaf_el(%struct.ocfs2_path* %18)
  store %struct.ocfs2_extent_list* %19, %struct.ocfs2_extent_list** %16, align 8
  %20 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %16, align 8
  %21 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %20, i32 0, i32 0
  %22 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %21, align 8
  %23 = load i32, i32* %11, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %22, i64 %24
  store %struct.ocfs2_extent_rec* %25, %struct.ocfs2_extent_rec** %17, align 8
  %26 = load %struct.ocfs2_merge_ctxt*, %struct.ocfs2_merge_ctxt** %14, align 8
  %27 = getelementptr inbounds %struct.ocfs2_merge_ctxt, %struct.ocfs2_merge_ctxt* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @CONTIG_NONE, align 8
  %30 = icmp eq i64 %28, %29
  %31 = zext i1 %30 to i32
  %32 = call i32 @BUG_ON(i32 %31)
  %33 = load %struct.ocfs2_merge_ctxt*, %struct.ocfs2_merge_ctxt** %14, align 8
  %34 = getelementptr inbounds %struct.ocfs2_merge_ctxt, %struct.ocfs2_merge_ctxt* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %62

37:                                               ; preds = %7
  %38 = load %struct.ocfs2_merge_ctxt*, %struct.ocfs2_merge_ctxt** %14, align 8
  %39 = getelementptr inbounds %struct.ocfs2_merge_ctxt, %struct.ocfs2_merge_ctxt* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %62

42:                                               ; preds = %37
  %43 = load i32*, i32** %8, align 8
  %44 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %9, align 8
  %45 = load %struct.ocfs2_path*, %struct.ocfs2_path** %10, align 8
  %46 = load %struct.ocfs2_cached_dealloc_ctxt*, %struct.ocfs2_cached_dealloc_ctxt** %13, align 8
  %47 = call i32 @ocfs2_rotate_tree_left(i32* %43, %struct.ocfs2_extent_tree* %44, %struct.ocfs2_path* %45, %struct.ocfs2_cached_dealloc_ctxt* %46)
  store i32 %47, i32* %15, align 4
  %48 = load i32, i32* %15, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %42
  %51 = load i32, i32* %15, align 4
  %52 = call i32 @mlog_errno(i32 %51)
  br label %190

53:                                               ; preds = %42
  %54 = load i32, i32* %11, align 4
  %55 = add nsw i32 %54, -1
  store i32 %55, i32* %11, align 4
  %56 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %16, align 8
  %57 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %56, i32 0, i32 0
  %58 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %57, align 8
  %59 = load i32, i32* %11, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %58, i64 %60
  store %struct.ocfs2_extent_rec* %61, %struct.ocfs2_extent_rec** %17, align 8
  br label %62

62:                                               ; preds = %53, %37, %7
  %63 = load %struct.ocfs2_merge_ctxt*, %struct.ocfs2_merge_ctxt** %14, align 8
  %64 = getelementptr inbounds %struct.ocfs2_merge_ctxt, %struct.ocfs2_merge_ctxt* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @CONTIG_LEFTRIGHT, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %138

68:                                               ; preds = %62
  %69 = load %struct.ocfs2_merge_ctxt*, %struct.ocfs2_merge_ctxt** %14, align 8
  %70 = getelementptr inbounds %struct.ocfs2_merge_ctxt, %struct.ocfs2_merge_ctxt* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  %73 = xor i1 %72, true
  %74 = zext i1 %73 to i32
  %75 = call i32 @BUG_ON(i32 %74)
  %76 = load %struct.ocfs2_path*, %struct.ocfs2_path** %10, align 8
  %77 = load i32*, i32** %8, align 8
  %78 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %9, align 8
  %79 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %12, align 8
  %80 = load i32, i32* %11, align 4
  %81 = call i32 @ocfs2_merge_rec_right(%struct.ocfs2_path* %76, i32* %77, %struct.ocfs2_extent_tree* %78, %struct.ocfs2_extent_rec* %79, i32 %80)
  store i32 %81, i32* %15, align 4
  %82 = load i32, i32* %15, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %68
  %85 = load i32, i32* %15, align 4
  %86 = call i32 @mlog_errno(i32 %85)
  br label %190

87:                                               ; preds = %68
  %88 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %16, align 8
  %89 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %88, i32 0, i32 0
  %90 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %89, align 8
  %91 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %90, i64 0
  %92 = call i32 @ocfs2_is_empty_extent(%struct.ocfs2_extent_rec* %91)
  %93 = icmp ne i32 %92, 0
  %94 = xor i1 %93, true
  %95 = zext i1 %94 to i32
  %96 = call i32 @BUG_ON(i32 %95)
  %97 = load i32*, i32** %8, align 8
  %98 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %9, align 8
  %99 = load %struct.ocfs2_path*, %struct.ocfs2_path** %10, align 8
  %100 = load %struct.ocfs2_cached_dealloc_ctxt*, %struct.ocfs2_cached_dealloc_ctxt** %13, align 8
  %101 = call i32 @ocfs2_rotate_tree_left(i32* %97, %struct.ocfs2_extent_tree* %98, %struct.ocfs2_path* %99, %struct.ocfs2_cached_dealloc_ctxt* %100)
  store i32 %101, i32* %15, align 4
  %102 = load i32, i32* %15, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %87
  %105 = load i32, i32* %15, align 4
  %106 = call i32 @mlog_errno(i32 %105)
  br label %190

107:                                              ; preds = %87
  %108 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %16, align 8
  %109 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %108, i32 0, i32 0
  %110 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %109, align 8
  %111 = load i32, i32* %11, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %110, i64 %112
  store %struct.ocfs2_extent_rec* %113, %struct.ocfs2_extent_rec** %17, align 8
  %114 = load %struct.ocfs2_path*, %struct.ocfs2_path** %10, align 8
  %115 = load i32*, i32** %8, align 8
  %116 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %9, align 8
  %117 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %17, align 8
  %118 = load %struct.ocfs2_cached_dealloc_ctxt*, %struct.ocfs2_cached_dealloc_ctxt** %13, align 8
  %119 = load i32, i32* %11, align 4
  %120 = call i32 @ocfs2_merge_rec_left(%struct.ocfs2_path* %114, i32* %115, %struct.ocfs2_extent_tree* %116, %struct.ocfs2_extent_rec* %117, %struct.ocfs2_cached_dealloc_ctxt* %118, i32 %119)
  store i32 %120, i32* %15, align 4
  %121 = load i32, i32* %15, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %126

123:                                              ; preds = %107
  %124 = load i32, i32* %15, align 4
  %125 = call i32 @mlog_errno(i32 %124)
  br label %190

126:                                              ; preds = %107
  %127 = load i32*, i32** %8, align 8
  %128 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %9, align 8
  %129 = load %struct.ocfs2_path*, %struct.ocfs2_path** %10, align 8
  %130 = load %struct.ocfs2_cached_dealloc_ctxt*, %struct.ocfs2_cached_dealloc_ctxt** %13, align 8
  %131 = call i32 @ocfs2_rotate_tree_left(i32* %127, %struct.ocfs2_extent_tree* %128, %struct.ocfs2_path* %129, %struct.ocfs2_cached_dealloc_ctxt* %130)
  store i32 %131, i32* %15, align 4
  %132 = load i32, i32* %15, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %126
  %135 = load i32, i32* %15, align 4
  %136 = call i32 @mlog_errno(i32 %135)
  br label %137

137:                                              ; preds = %134, %126
  store i32 0, i32* %15, align 4
  br label %189

138:                                              ; preds = %62
  %139 = load %struct.ocfs2_merge_ctxt*, %struct.ocfs2_merge_ctxt** %14, align 8
  %140 = getelementptr inbounds %struct.ocfs2_merge_ctxt, %struct.ocfs2_merge_ctxt* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = load i64, i64* @CONTIG_RIGHT, align 8
  %143 = icmp eq i64 %141, %142
  br i1 %143, label %144, label %158

144:                                              ; preds = %138
  %145 = load %struct.ocfs2_path*, %struct.ocfs2_path** %10, align 8
  %146 = load i32*, i32** %8, align 8
  %147 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %9, align 8
  %148 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %12, align 8
  %149 = load %struct.ocfs2_cached_dealloc_ctxt*, %struct.ocfs2_cached_dealloc_ctxt** %13, align 8
  %150 = load i32, i32* %11, align 4
  %151 = call i32 @ocfs2_merge_rec_left(%struct.ocfs2_path* %145, i32* %146, %struct.ocfs2_extent_tree* %147, %struct.ocfs2_extent_rec* %148, %struct.ocfs2_cached_dealloc_ctxt* %149, i32 %150)
  store i32 %151, i32* %15, align 4
  %152 = load i32, i32* %15, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %157

154:                                              ; preds = %144
  %155 = load i32, i32* %15, align 4
  %156 = call i32 @mlog_errno(i32 %155)
  br label %190

157:                                              ; preds = %144
  br label %171

158:                                              ; preds = %138
  %159 = load %struct.ocfs2_path*, %struct.ocfs2_path** %10, align 8
  %160 = load i32*, i32** %8, align 8
  %161 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %9, align 8
  %162 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %12, align 8
  %163 = load i32, i32* %11, align 4
  %164 = call i32 @ocfs2_merge_rec_right(%struct.ocfs2_path* %159, i32* %160, %struct.ocfs2_extent_tree* %161, %struct.ocfs2_extent_rec* %162, i32 %163)
  store i32 %164, i32* %15, align 4
  %165 = load i32, i32* %15, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %170

167:                                              ; preds = %158
  %168 = load i32, i32* %15, align 4
  %169 = call i32 @mlog_errno(i32 %168)
  br label %190

170:                                              ; preds = %158
  br label %171

171:                                              ; preds = %170, %157
  %172 = load %struct.ocfs2_merge_ctxt*, %struct.ocfs2_merge_ctxt** %14, align 8
  %173 = getelementptr inbounds %struct.ocfs2_merge_ctxt, %struct.ocfs2_merge_ctxt* %172, i32 0, i32 1
  %174 = load i64, i64* %173, align 8
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %188

176:                                              ; preds = %171
  %177 = load i32*, i32** %8, align 8
  %178 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %9, align 8
  %179 = load %struct.ocfs2_path*, %struct.ocfs2_path** %10, align 8
  %180 = load %struct.ocfs2_cached_dealloc_ctxt*, %struct.ocfs2_cached_dealloc_ctxt** %13, align 8
  %181 = call i32 @ocfs2_rotate_tree_left(i32* %177, %struct.ocfs2_extent_tree* %178, %struct.ocfs2_path* %179, %struct.ocfs2_cached_dealloc_ctxt* %180)
  store i32 %181, i32* %15, align 4
  %182 = load i32, i32* %15, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %187

184:                                              ; preds = %176
  %185 = load i32, i32* %15, align 4
  %186 = call i32 @mlog_errno(i32 %185)
  br label %187

187:                                              ; preds = %184, %176
  store i32 0, i32* %15, align 4
  br label %188

188:                                              ; preds = %187, %171
  br label %189

189:                                              ; preds = %188, %137
  br label %190

190:                                              ; preds = %189, %167, %154, %123, %104, %84, %50
  %191 = load i32, i32* %15, align 4
  ret i32 %191
}

declare dso_local %struct.ocfs2_extent_list* @path_leaf_el(%struct.ocfs2_path*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @ocfs2_rotate_tree_left(i32*, %struct.ocfs2_extent_tree*, %struct.ocfs2_path*, %struct.ocfs2_cached_dealloc_ctxt*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_merge_rec_right(%struct.ocfs2_path*, i32*, %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_rec*, i32) #1

declare dso_local i32 @ocfs2_is_empty_extent(%struct.ocfs2_extent_rec*) #1

declare dso_local i32 @ocfs2_merge_rec_left(%struct.ocfs2_path*, i32*, %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_rec*, %struct.ocfs2_cached_dealloc_ctxt*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
