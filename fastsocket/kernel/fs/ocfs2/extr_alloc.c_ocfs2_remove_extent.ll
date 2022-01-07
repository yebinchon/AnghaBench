; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_alloc.c_ocfs2_remove_extent.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_alloc.c_ocfs2_remove_extent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_extent_tree = type { i32 }
%struct.ocfs2_alloc_context = type { i32 }
%struct.ocfs2_cached_dealloc_ctxt = type { i32 }
%struct.ocfs2_extent_rec = type { i32 }
%struct.ocfs2_extent_list = type { %struct.ocfs2_extent_rec*, i32 }
%struct.ocfs2_path = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [67 x i8] c"Owner %llu has an extent at cpos %u which can no longer be found.\0A\00", align 1
@EROFS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [75 x i8] c"Owner %llu, remove (cpos %u, len %u). Existing index %d (cpos %u, len %u)\0A\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"Owner %llu: split at cpos %u lost record.\00", align 1
@.str.3 = private unnamed_addr constant [81 x i8] c"Owner %llu: error after split at cpos %utrunc len %u, existing record is (%u,%u)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_remove_extent(i32* %0, %struct.ocfs2_extent_tree* %1, i64 %2, i64 %3, %struct.ocfs2_alloc_context* %4, %struct.ocfs2_cached_dealloc_ctxt* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca %struct.ocfs2_extent_tree*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.ocfs2_alloc_context*, align 8
  %12 = alloca %struct.ocfs2_cached_dealloc_ctxt*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.ocfs2_extent_rec*, align 8
  %18 = alloca %struct.ocfs2_extent_list*, align 8
  %19 = alloca %struct.ocfs2_path*, align 8
  store i32* %0, i32** %7, align 8
  store %struct.ocfs2_extent_tree* %1, %struct.ocfs2_extent_tree** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store %struct.ocfs2_alloc_context* %4, %struct.ocfs2_alloc_context** %11, align 8
  store %struct.ocfs2_cached_dealloc_ctxt* %5, %struct.ocfs2_cached_dealloc_ctxt** %12, align 8
  store %struct.ocfs2_path* null, %struct.ocfs2_path** %19, align 8
  %20 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %8, align 8
  %21 = call i32 @ocfs2_et_extent_map_truncate(%struct.ocfs2_extent_tree* %20, i32 0)
  %22 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %8, align 8
  %23 = call %struct.ocfs2_path* @ocfs2_new_path_from_et(%struct.ocfs2_extent_tree* %22)
  store %struct.ocfs2_path* %23, %struct.ocfs2_path** %19, align 8
  %24 = load %struct.ocfs2_path*, %struct.ocfs2_path** %19, align 8
  %25 = icmp ne %struct.ocfs2_path* %24, null
  br i1 %25, label %31, label %26

26:                                               ; preds = %6
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %13, align 4
  %29 = load i32, i32* %13, align 4
  %30 = call i32 @mlog_errno(i32 %29)
  br label %253

31:                                               ; preds = %6
  %32 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %8, align 8
  %33 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.ocfs2_path*, %struct.ocfs2_path** %19, align 8
  %36 = load i64, i64* %9, align 8
  %37 = call i32 @ocfs2_find_path(i32 %34, %struct.ocfs2_path* %35, i64 %36)
  store i32 %37, i32* %13, align 4
  %38 = load i32, i32* %13, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %31
  %41 = load i32, i32* %13, align 4
  %42 = call i32 @mlog_errno(i32 %41)
  br label %253

43:                                               ; preds = %31
  %44 = load %struct.ocfs2_path*, %struct.ocfs2_path** %19, align 8
  %45 = call %struct.ocfs2_extent_list* @path_leaf_el(%struct.ocfs2_path* %44)
  store %struct.ocfs2_extent_list* %45, %struct.ocfs2_extent_list** %18, align 8
  %46 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %18, align 8
  %47 = load i64, i64* %9, align 8
  %48 = call i32 @ocfs2_search_extent_list(%struct.ocfs2_extent_list* %46, i64 %47)
  store i32 %48, i32* %14, align 4
  %49 = load i32, i32* %14, align 4
  %50 = icmp eq i32 %49, -1
  br i1 %50, label %58, label %51

51:                                               ; preds = %43
  %52 = load i32, i32* %14, align 4
  %53 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %18, align 8
  %54 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @le16_to_cpu(i32 %55)
  %57 = icmp sge i32 %52, %56
  br i1 %57, label %58, label %71

58:                                               ; preds = %51, %43
  %59 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %8, align 8
  %60 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @ocfs2_metadata_cache_get_super(i32 %61)
  %63 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %8, align 8
  %64 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i64 @ocfs2_metadata_cache_owner(i32 %65)
  %67 = load i64, i64* %9, align 8
  %68 = call i32 (i32, i8*, i64, i64, ...) @ocfs2_error(i32 %62, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), i64 %66, i64 %67)
  %69 = load i32, i32* @EROFS, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %13, align 4
  br label %253

71:                                               ; preds = %51
  %72 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %18, align 8
  %73 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %72, i32 0, i32 0
  %74 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %73, align 8
  %75 = load i32, i32* %14, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %74, i64 %76
  store %struct.ocfs2_extent_rec* %77, %struct.ocfs2_extent_rec** %17, align 8
  %78 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %17, align 8
  %79 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i64 @le32_to_cpu(i32 %80)
  %82 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %18, align 8
  %83 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %17, align 8
  %84 = call i64 @ocfs2_rec_clusters(%struct.ocfs2_extent_list* %82, %struct.ocfs2_extent_rec* %83)
  %85 = add nsw i64 %81, %84
  store i64 %85, i64* %15, align 8
  %86 = load i64, i64* %9, align 8
  %87 = load i64, i64* %10, align 8
  %88 = add nsw i64 %86, %87
  store i64 %88, i64* %16, align 8
  %89 = load i64, i64* %9, align 8
  %90 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %17, align 8
  %91 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i64 @le32_to_cpu(i32 %92)
  %94 = icmp slt i64 %89, %93
  br i1 %94, label %99, label %95

95:                                               ; preds = %71
  %96 = load i64, i64* %16, align 8
  %97 = load i64, i64* %15, align 8
  %98 = icmp sgt i64 %96, %97
  br label %99

99:                                               ; preds = %95, %71
  %100 = phi i1 [ true, %71 ], [ %98, %95 ]
  %101 = zext i1 %100 to i32
  %102 = call i32 @BUG_ON(i32 %101)
  %103 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %8, align 8
  %104 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i64 @ocfs2_metadata_cache_owner(i32 %105)
  %107 = load i64, i64* %9, align 8
  %108 = load i64, i64* %10, align 8
  %109 = load i32, i32* %14, align 4
  %110 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %17, align 8
  %111 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = call i64 @le32_to_cpu(i32 %112)
  %114 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %18, align 8
  %115 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %17, align 8
  %116 = call i64 @ocfs2_rec_clusters(%struct.ocfs2_extent_list* %114, %struct.ocfs2_extent_rec* %115)
  %117 = call i32 @mlog(i32 0, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.1, i64 0, i64 0), i64 %106, i64 %107, i64 %108, i32 %109, i64 %113, i64 %116)
  %118 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %17, align 8
  %119 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = call i64 @le32_to_cpu(i32 %120)
  %122 = load i64, i64* %9, align 8
  %123 = icmp eq i64 %121, %122
  br i1 %123, label %128, label %124

124:                                              ; preds = %99
  %125 = load i64, i64* %15, align 8
  %126 = load i64, i64* %16, align 8
  %127 = icmp eq i64 %125, %126
  br i1 %127, label %128, label %143

128:                                              ; preds = %124, %99
  %129 = load i32*, i32** %7, align 8
  %130 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %8, align 8
  %131 = load %struct.ocfs2_path*, %struct.ocfs2_path** %19, align 8
  %132 = load i32, i32* %14, align 4
  %133 = load %struct.ocfs2_cached_dealloc_ctxt*, %struct.ocfs2_cached_dealloc_ctxt** %12, align 8
  %134 = load i64, i64* %9, align 8
  %135 = load i64, i64* %10, align 8
  %136 = call i32 @ocfs2_truncate_rec(i32* %129, %struct.ocfs2_extent_tree* %130, %struct.ocfs2_path* %131, i32 %132, %struct.ocfs2_cached_dealloc_ctxt* %133, i64 %134, i64 %135)
  store i32 %136, i32* %13, align 4
  %137 = load i32, i32* %13, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %142

139:                                              ; preds = %128
  %140 = load i32, i32* %13, align 4
  %141 = call i32 @mlog_errno(i32 %140)
  br label %253

142:                                              ; preds = %128
  br label %252

143:                                              ; preds = %124
  %144 = load i32*, i32** %7, align 8
  %145 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %8, align 8
  %146 = load %struct.ocfs2_path*, %struct.ocfs2_path** %19, align 8
  %147 = load i32, i32* %14, align 4
  %148 = load i64, i64* %16, align 8
  %149 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %11, align 8
  %150 = call i32 @ocfs2_split_tree(i32* %144, %struct.ocfs2_extent_tree* %145, %struct.ocfs2_path* %146, i32 %147, i64 %148, %struct.ocfs2_alloc_context* %149)
  store i32 %150, i32* %13, align 4
  %151 = load i32, i32* %13, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %156

153:                                              ; preds = %143
  %154 = load i32, i32* %13, align 4
  %155 = call i32 @mlog_errno(i32 %154)
  br label %253

156:                                              ; preds = %143
  %157 = load %struct.ocfs2_path*, %struct.ocfs2_path** %19, align 8
  %158 = call i32 @ocfs2_reinit_path(%struct.ocfs2_path* %157, i32 1)
  %159 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %8, align 8
  %160 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.ocfs2_path*, %struct.ocfs2_path** %19, align 8
  %163 = load i64, i64* %9, align 8
  %164 = call i32 @ocfs2_find_path(i32 %161, %struct.ocfs2_path* %162, i64 %163)
  store i32 %164, i32* %13, align 4
  %165 = load i32, i32* %13, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %170

167:                                              ; preds = %156
  %168 = load i32, i32* %13, align 4
  %169 = call i32 @mlog_errno(i32 %168)
  br label %253

170:                                              ; preds = %156
  %171 = load %struct.ocfs2_path*, %struct.ocfs2_path** %19, align 8
  %172 = call %struct.ocfs2_extent_list* @path_leaf_el(%struct.ocfs2_path* %171)
  store %struct.ocfs2_extent_list* %172, %struct.ocfs2_extent_list** %18, align 8
  %173 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %18, align 8
  %174 = load i64, i64* %9, align 8
  %175 = call i32 @ocfs2_search_extent_list(%struct.ocfs2_extent_list* %173, i64 %174)
  store i32 %175, i32* %14, align 4
  %176 = load i32, i32* %14, align 4
  %177 = icmp eq i32 %176, -1
  br i1 %177, label %185, label %178

178:                                              ; preds = %170
  %179 = load i32, i32* %14, align 4
  %180 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %18, align 8
  %181 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 8
  %183 = call i32 @le16_to_cpu(i32 %182)
  %184 = icmp sge i32 %179, %183
  br i1 %184, label %185, label %198

185:                                              ; preds = %178, %170
  %186 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %8, align 8
  %187 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  %189 = call i32 @ocfs2_metadata_cache_get_super(i32 %188)
  %190 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %8, align 8
  %191 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 4
  %193 = call i64 @ocfs2_metadata_cache_owner(i32 %192)
  %194 = load i64, i64* %9, align 8
  %195 = call i32 (i32, i8*, i64, i64, ...) @ocfs2_error(i32 %189, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i64 %193, i64 %194)
  %196 = load i32, i32* @EROFS, align 4
  %197 = sub nsw i32 0, %196
  store i32 %197, i32* %13, align 4
  br label %253

198:                                              ; preds = %178
  %199 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %18, align 8
  %200 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %199, i32 0, i32 0
  %201 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %200, align 8
  %202 = load i32, i32* %14, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %201, i64 %203
  store %struct.ocfs2_extent_rec* %204, %struct.ocfs2_extent_rec** %17, align 8
  %205 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %17, align 8
  %206 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 4
  %208 = call i64 @le32_to_cpu(i32 %207)
  %209 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %18, align 8
  %210 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %17, align 8
  %211 = call i64 @ocfs2_rec_clusters(%struct.ocfs2_extent_list* %209, %struct.ocfs2_extent_rec* %210)
  %212 = add nsw i64 %208, %211
  store i64 %212, i64* %15, align 8
  %213 = load i64, i64* %15, align 8
  %214 = load i64, i64* %16, align 8
  %215 = icmp ne i64 %213, %214
  br i1 %215, label %216, label %237

216:                                              ; preds = %198
  %217 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %8, align 8
  %218 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 4
  %220 = call i32 @ocfs2_metadata_cache_get_super(i32 %219)
  %221 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %8, align 8
  %222 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 4
  %224 = call i64 @ocfs2_metadata_cache_owner(i32 %223)
  %225 = load i64, i64* %9, align 8
  %226 = load i64, i64* %10, align 8
  %227 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %17, align 8
  %228 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 4
  %230 = call i64 @le32_to_cpu(i32 %229)
  %231 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %18, align 8
  %232 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %17, align 8
  %233 = call i64 @ocfs2_rec_clusters(%struct.ocfs2_extent_list* %231, %struct.ocfs2_extent_rec* %232)
  %234 = call i32 (i32, i8*, i64, i64, ...) @ocfs2_error(i32 %220, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.3, i64 0, i64 0), i64 %224, i64 %225, i64 %226, i64 %230, i64 %233)
  %235 = load i32, i32* @EROFS, align 4
  %236 = sub nsw i32 0, %235
  store i32 %236, i32* %13, align 4
  br label %253

237:                                              ; preds = %198
  %238 = load i32*, i32** %7, align 8
  %239 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %8, align 8
  %240 = load %struct.ocfs2_path*, %struct.ocfs2_path** %19, align 8
  %241 = load i32, i32* %14, align 4
  %242 = load %struct.ocfs2_cached_dealloc_ctxt*, %struct.ocfs2_cached_dealloc_ctxt** %12, align 8
  %243 = load i64, i64* %9, align 8
  %244 = load i64, i64* %10, align 8
  %245 = call i32 @ocfs2_truncate_rec(i32* %238, %struct.ocfs2_extent_tree* %239, %struct.ocfs2_path* %240, i32 %241, %struct.ocfs2_cached_dealloc_ctxt* %242, i64 %243, i64 %244)
  store i32 %245, i32* %13, align 4
  %246 = load i32, i32* %13, align 4
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %251

248:                                              ; preds = %237
  %249 = load i32, i32* %13, align 4
  %250 = call i32 @mlog_errno(i32 %249)
  br label %253

251:                                              ; preds = %237
  br label %252

252:                                              ; preds = %251, %142
  br label %253

253:                                              ; preds = %252, %248, %216, %185, %167, %153, %139, %58, %40, %26
  %254 = load %struct.ocfs2_path*, %struct.ocfs2_path** %19, align 8
  %255 = call i32 @ocfs2_free_path(%struct.ocfs2_path* %254)
  %256 = load i32, i32* %13, align 4
  ret i32 %256
}

declare dso_local i32 @ocfs2_et_extent_map_truncate(%struct.ocfs2_extent_tree*, i32) #1

declare dso_local %struct.ocfs2_path* @ocfs2_new_path_from_et(%struct.ocfs2_extent_tree*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_find_path(i32, %struct.ocfs2_path*, i64) #1

declare dso_local %struct.ocfs2_extent_list* @path_leaf_el(%struct.ocfs2_path*) #1

declare dso_local i32 @ocfs2_search_extent_list(%struct.ocfs2_extent_list*, i64) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @ocfs2_error(i32, i8*, i64, i64, ...) #1

declare dso_local i32 @ocfs2_metadata_cache_get_super(i32) #1

declare dso_local i64 @ocfs2_metadata_cache_owner(i32) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i64 @ocfs2_rec_clusters(%struct.ocfs2_extent_list*, %struct.ocfs2_extent_rec*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @mlog(i32, i8*, i64, i64, i64, i32, i64, i64) #1

declare dso_local i32 @ocfs2_truncate_rec(i32*, %struct.ocfs2_extent_tree*, %struct.ocfs2_path*, i32, %struct.ocfs2_cached_dealloc_ctxt*, i64, i64) #1

declare dso_local i32 @ocfs2_split_tree(i32*, %struct.ocfs2_extent_tree*, %struct.ocfs2_path*, i32, i64, %struct.ocfs2_alloc_context*) #1

declare dso_local i32 @ocfs2_reinit_path(%struct.ocfs2_path*, i32) #1

declare dso_local i32 @ocfs2_free_path(%struct.ocfs2_path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
