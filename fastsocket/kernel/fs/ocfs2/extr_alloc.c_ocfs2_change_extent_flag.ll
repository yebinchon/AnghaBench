; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_alloc.c_ocfs2_change_extent_flag.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_alloc.c_ocfs2_change_extent_flag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_extent_tree = type { i32 }
%struct.ocfs2_alloc_context = type { i32 }
%struct.ocfs2_cached_dealloc_ctxt = type { i32 }
%struct.super_block = type { i32 }
%struct.ocfs2_extent_rec = type { i32, i32, i32, i32 }
%struct.ocfs2_path = type { i32 }
%struct.ocfs2_extent_list = type { %struct.ocfs2_extent_rec*, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [67 x i8] c"Owner %llu has an extent at cpos %u which can no longer be found.\0A\00", align 1
@EROFS = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@ML_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [68 x i8] c"Owner %llu tried to set %d flags on an extent that already had them\00", align 1
@.str.2 = private unnamed_addr constant [70 x i8] c"Owner %llu tried to clear %d flags on an extent that didn't have them\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_change_extent_flag(i32* %0, %struct.ocfs2_extent_tree* %1, i32 %2, i32 %3, i32 %4, %struct.ocfs2_alloc_context* %5, %struct.ocfs2_cached_dealloc_ctxt* %6, i32 %7, i32 %8) #0 {
  %10 = alloca i32*, align 8
  %11 = alloca %struct.ocfs2_extent_tree*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.ocfs2_alloc_context*, align 8
  %16 = alloca %struct.ocfs2_cached_dealloc_ctxt*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.super_block*, align 8
  %22 = alloca i32, align 4
  %23 = alloca %struct.ocfs2_extent_rec, align 4
  %24 = alloca %struct.ocfs2_path*, align 8
  %25 = alloca %struct.ocfs2_extent_list*, align 8
  %26 = alloca %struct.ocfs2_extent_rec*, align 8
  store i32* %0, i32** %10, align 8
  store %struct.ocfs2_extent_tree* %1, %struct.ocfs2_extent_tree** %11, align 8
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store %struct.ocfs2_alloc_context* %5, %struct.ocfs2_alloc_context** %15, align 8
  store %struct.ocfs2_cached_dealloc_ctxt* %6, %struct.ocfs2_cached_dealloc_ctxt** %16, align 8
  store i32 %7, i32* %17, align 4
  store i32 %8, i32* %18, align 4
  %27 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %11, align 8
  %28 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call %struct.super_block* @ocfs2_metadata_cache_get_super(i32 %29)
  store %struct.super_block* %30, %struct.super_block** %21, align 8
  %31 = load %struct.super_block*, %struct.super_block** %21, align 8
  %32 = load i32, i32* %14, align 4
  %33 = call i32 @ocfs2_clusters_to_blocks(%struct.super_block* %31, i32 %32)
  store i32 %33, i32* %22, align 4
  store %struct.ocfs2_path* null, %struct.ocfs2_path** %24, align 8
  %34 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %11, align 8
  %35 = call %struct.ocfs2_path* @ocfs2_new_path_from_et(%struct.ocfs2_extent_tree* %34)
  store %struct.ocfs2_path* %35, %struct.ocfs2_path** %24, align 8
  %36 = load %struct.ocfs2_path*, %struct.ocfs2_path** %24, align 8
  %37 = icmp ne %struct.ocfs2_path* %36, null
  br i1 %37, label %43, label %38

38:                                               ; preds = %9
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %19, align 4
  %41 = load i32, i32* %19, align 4
  %42 = call i32 @mlog_errno(i32 %41)
  br label %169

43:                                               ; preds = %9
  %44 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %11, align 8
  %45 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.ocfs2_path*, %struct.ocfs2_path** %24, align 8
  %48 = load i32, i32* %12, align 4
  %49 = call i32 @ocfs2_find_path(i32 %46, %struct.ocfs2_path* %47, i32 %48)
  store i32 %49, i32* %19, align 4
  %50 = load i32, i32* %19, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %43
  %53 = load i32, i32* %19, align 4
  %54 = call i32 @mlog_errno(i32 %53)
  br label %169

55:                                               ; preds = %43
  %56 = load %struct.ocfs2_path*, %struct.ocfs2_path** %24, align 8
  %57 = call %struct.ocfs2_extent_list* @path_leaf_el(%struct.ocfs2_path* %56)
  store %struct.ocfs2_extent_list* %57, %struct.ocfs2_extent_list** %25, align 8
  %58 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %25, align 8
  %59 = load i32, i32* %12, align 4
  %60 = call i32 @ocfs2_search_extent_list(%struct.ocfs2_extent_list* %58, i32 %59)
  store i32 %60, i32* %20, align 4
  %61 = load i32, i32* %20, align 4
  %62 = icmp eq i32 %61, -1
  br i1 %62, label %70, label %63

63:                                               ; preds = %55
  %64 = load i32, i32* %20, align 4
  %65 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %25, align 8
  %66 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @le16_to_cpu(i32 %67)
  %69 = icmp sge i32 %64, %68
  br i1 %69, label %70, label %80

70:                                               ; preds = %63, %55
  %71 = load %struct.super_block*, %struct.super_block** %21, align 8
  %72 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %11, align 8
  %73 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i64 @ocfs2_metadata_cache_owner(i32 %74)
  %76 = load i32, i32* %12, align 4
  %77 = call i32 @ocfs2_error(%struct.super_block* %71, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), i64 %75, i32 %76)
  %78 = load i32, i32* @EROFS, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %19, align 4
  br label %169

80:                                               ; preds = %63
  %81 = load i32, i32* @EIO, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %19, align 4
  %83 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %25, align 8
  %84 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %83, i32 0, i32 0
  %85 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %84, align 8
  %86 = load i32, i32* %20, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %85, i64 %87
  store %struct.ocfs2_extent_rec* %88, %struct.ocfs2_extent_rec** %26, align 8
  %89 = load i32, i32* %17, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %106

91:                                               ; preds = %80
  %92 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %26, align 8
  %93 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* %17, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %106

98:                                               ; preds = %91
  %99 = load i32, i32* @ML_ERROR, align 4
  %100 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %11, align 8
  %101 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i64 @ocfs2_metadata_cache_owner(i32 %102)
  %104 = load i32, i32* %17, align 4
  %105 = call i32 @mlog(i32 %99, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.1, i64 0, i64 0), i64 %103, i32 %104)
  br label %169

106:                                              ; preds = %91, %80
  %107 = load i32, i32* %18, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %124

109:                                              ; preds = %106
  %110 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %26, align 8
  %111 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* %18, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %124, label %116

116:                                              ; preds = %109
  %117 = load i32, i32* @ML_ERROR, align 4
  %118 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %11, align 8
  %119 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = call i64 @ocfs2_metadata_cache_owner(i32 %120)
  %122 = load i32, i32* %18, align 4
  %123 = call i32 @mlog(i32 %117, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.2, i64 0, i64 0), i64 %121, i32 %122)
  br label %169

124:                                              ; preds = %109, %106
  %125 = call i32 @memset(%struct.ocfs2_extent_rec* %23, i32 0, i32 16)
  %126 = load i32, i32* %12, align 4
  %127 = call i32 @cpu_to_le32(i32 %126)
  %128 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %23, i32 0, i32 3
  store i32 %127, i32* %128, align 4
  %129 = load i32, i32* %13, align 4
  %130 = call i32 @cpu_to_le16(i32 %129)
  %131 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %23, i32 0, i32 2
  store i32 %130, i32* %131, align 4
  %132 = load i32, i32* %22, align 4
  %133 = call i32 @cpu_to_le64(i32 %132)
  %134 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %23, i32 0, i32 1
  store i32 %133, i32* %134, align 4
  %135 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %26, align 8
  %136 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %23, i32 0, i32 0
  store i32 %137, i32* %138, align 4
  %139 = load i32, i32* %17, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %146

141:                                              ; preds = %124
  %142 = load i32, i32* %17, align 4
  %143 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %23, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = or i32 %144, %142
  store i32 %145, i32* %143, align 4
  br label %146

146:                                              ; preds = %141, %124
  %147 = load i32, i32* %18, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %155

149:                                              ; preds = %146
  %150 = load i32, i32* %18, align 4
  %151 = xor i32 %150, -1
  %152 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %23, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = and i32 %153, %151
  store i32 %154, i32* %152, align 4
  br label %155

155:                                              ; preds = %149, %146
  %156 = load i32*, i32** %10, align 8
  %157 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %11, align 8
  %158 = load %struct.ocfs2_path*, %struct.ocfs2_path** %24, align 8
  %159 = load i32, i32* %20, align 4
  %160 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %15, align 8
  %161 = load %struct.ocfs2_cached_dealloc_ctxt*, %struct.ocfs2_cached_dealloc_ctxt** %16, align 8
  %162 = call i32 @ocfs2_split_extent(i32* %156, %struct.ocfs2_extent_tree* %157, %struct.ocfs2_path* %158, i32 %159, %struct.ocfs2_extent_rec* %23, %struct.ocfs2_alloc_context* %160, %struct.ocfs2_cached_dealloc_ctxt* %161)
  store i32 %162, i32* %19, align 4
  %163 = load i32, i32* %19, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %168

165:                                              ; preds = %155
  %166 = load i32, i32* %19, align 4
  %167 = call i32 @mlog_errno(i32 %166)
  br label %168

168:                                              ; preds = %165, %155
  br label %169

169:                                              ; preds = %168, %116, %98, %70, %52, %38
  %170 = load %struct.ocfs2_path*, %struct.ocfs2_path** %24, align 8
  %171 = call i32 @ocfs2_free_path(%struct.ocfs2_path* %170)
  %172 = load i32, i32* %19, align 4
  ret i32 %172
}

declare dso_local %struct.super_block* @ocfs2_metadata_cache_get_super(i32) #1

declare dso_local i32 @ocfs2_clusters_to_blocks(%struct.super_block*, i32) #1

declare dso_local %struct.ocfs2_path* @ocfs2_new_path_from_et(%struct.ocfs2_extent_tree*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_find_path(i32, %struct.ocfs2_path*, i32) #1

declare dso_local %struct.ocfs2_extent_list* @path_leaf_el(%struct.ocfs2_path*) #1

declare dso_local i32 @ocfs2_search_extent_list(%struct.ocfs2_extent_list*, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @ocfs2_error(%struct.super_block*, i8*, i64, i32) #1

declare dso_local i64 @ocfs2_metadata_cache_owner(i32) #1

declare dso_local i32 @mlog(i32, i8*, i64, i32) #1

declare dso_local i32 @memset(%struct.ocfs2_extent_rec*, i32, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @cpu_to_le64(i32) #1

declare dso_local i32 @ocfs2_split_extent(i32*, %struct.ocfs2_extent_tree*, %struct.ocfs2_path*, i32, %struct.ocfs2_extent_rec*, %struct.ocfs2_alloc_context*, %struct.ocfs2_cached_dealloc_ctxt*) #1

declare dso_local i32 @ocfs2_free_path(%struct.ocfs2_path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
