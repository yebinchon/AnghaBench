; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_alloc.c_ocfs2_truncate_rec.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_alloc.c_ocfs2_truncate_rec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.ocfs2_extent_tree = type { i32 }
%struct.ocfs2_path = type { i64 }
%struct.ocfs2_cached_dealloc_ctxt = type { i32 }
%struct.super_block = type { i32 }
%struct.ocfs2_extent_list = type { %struct.ocfs2_extent_rec*, i32 }
%struct.ocfs2_extent_rec = type { i32, i32, i32 }
%struct.ocfs2_extent_block = type { i64 }
%struct.TYPE_12__ = type { i64 }

@ENOMEM = common dso_local global i32 0, align 4
@ML_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"Owner %llu: Invalid record truncate: (%u, %u) (%u, %u)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, %struct.ocfs2_extent_tree*, %struct.ocfs2_path*, i32, %struct.ocfs2_cached_dealloc_ctxt*, i64, i64)* @ocfs2_truncate_rec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_truncate_rec(%struct.TYPE_11__* %0, %struct.ocfs2_extent_tree* %1, %struct.ocfs2_path* %2, i32 %3, %struct.ocfs2_cached_dealloc_ctxt* %4, i64 %5, i64 %6) #0 {
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca %struct.ocfs2_extent_tree*, align 8
  %10 = alloca %struct.ocfs2_path*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.ocfs2_cached_dealloc_ctxt*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.super_block*, align 8
  %22 = alloca %struct.ocfs2_path*, align 8
  %23 = alloca %struct.ocfs2_extent_list*, align 8
  %24 = alloca %struct.ocfs2_extent_rec*, align 8
  %25 = alloca %struct.ocfs2_extent_block*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %8, align 8
  store %struct.ocfs2_extent_tree* %1, %struct.ocfs2_extent_tree** %9, align 8
  store %struct.ocfs2_path* %2, %struct.ocfs2_path** %10, align 8
  store i32 %3, i32* %11, align 4
  store %struct.ocfs2_cached_dealloc_ctxt* %4, %struct.ocfs2_cached_dealloc_ctxt** %12, align 8
  store i64 %5, i64* %13, align 8
  store i64 %6, i64* %14, align 8
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  %28 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %9, align 8
  %29 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call %struct.super_block* @ocfs2_metadata_cache_get_super(i32 %30)
  store %struct.super_block* %31, %struct.super_block** %21, align 8
  store %struct.ocfs2_path* null, %struct.ocfs2_path** %22, align 8
  %32 = load %struct.ocfs2_path*, %struct.ocfs2_path** %10, align 8
  %33 = call %struct.ocfs2_extent_list* @path_leaf_el(%struct.ocfs2_path* %32)
  store %struct.ocfs2_extent_list* %33, %struct.ocfs2_extent_list** %23, align 8
  %34 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %23, align 8
  %35 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %34, i32 0, i32 0
  %36 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %35, align 8
  %37 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %36, i64 0
  %38 = call i64 @ocfs2_is_empty_extent(%struct.ocfs2_extent_rec* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %57

40:                                               ; preds = %7
  %41 = load i32, i32* %11, align 4
  %42 = icmp sgt i32 %41, 0
  br i1 %42, label %43, label %57

43:                                               ; preds = %40
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %45 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %9, align 8
  %46 = load %struct.ocfs2_path*, %struct.ocfs2_path** %10, align 8
  %47 = load %struct.ocfs2_cached_dealloc_ctxt*, %struct.ocfs2_cached_dealloc_ctxt** %12, align 8
  %48 = call i32 @ocfs2_rotate_tree_left(%struct.TYPE_11__* %44, %struct.ocfs2_extent_tree* %45, %struct.ocfs2_path* %46, %struct.ocfs2_cached_dealloc_ctxt* %47)
  store i32 %48, i32* %15, align 4
  %49 = load i32, i32* %15, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %43
  %52 = load i32, i32* %15, align 4
  %53 = call i32 @mlog_errno(i32 %52)
  br label %323

54:                                               ; preds = %43
  %55 = load i32, i32* %11, align 4
  %56 = add nsw i32 %55, -1
  store i32 %56, i32* %11, align 4
  br label %57

57:                                               ; preds = %54, %40, %7
  %58 = load i32, i32* %11, align 4
  %59 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %23, align 8
  %60 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @le16_to_cpu(i32 %61)
  %63 = sub nsw i32 %62, 1
  %64 = icmp eq i32 %58, %63
  br i1 %64, label %65, label %82

65:                                               ; preds = %57
  %66 = load %struct.ocfs2_path*, %struct.ocfs2_path** %10, align 8
  %67 = getelementptr inbounds %struct.ocfs2_path, %struct.ocfs2_path* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %82

70:                                               ; preds = %65
  %71 = load %struct.ocfs2_path*, %struct.ocfs2_path** %10, align 8
  %72 = call %struct.TYPE_12__* @path_leaf_bh(%struct.ocfs2_path* %71)
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = inttoptr i64 %74 to %struct.ocfs2_extent_block*
  store %struct.ocfs2_extent_block* %75, %struct.ocfs2_extent_block** %25, align 8
  %76 = load %struct.ocfs2_extent_block*, %struct.ocfs2_extent_block** %25, align 8
  %77 = getelementptr inbounds %struct.ocfs2_extent_block, %struct.ocfs2_extent_block* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %70
  store i32 1, i32* %20, align 4
  br label %81

81:                                               ; preds = %80, %70
  br label %82

82:                                               ; preds = %81, %65, %57
  %83 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %23, align 8
  %84 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %83, i32 0, i32 0
  %85 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %84, align 8
  %86 = load i32, i32* %11, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %85, i64 %87
  store %struct.ocfs2_extent_rec* %88, %struct.ocfs2_extent_rec** %24, align 8
  %89 = load i32, i32* %11, align 4
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %145

91:                                               ; preds = %82
  %92 = load %struct.ocfs2_path*, %struct.ocfs2_path** %10, align 8
  %93 = getelementptr inbounds %struct.ocfs2_path, %struct.ocfs2_path* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %145

96:                                               ; preds = %91
  %97 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %24, align 8
  %98 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = call i64 @le32_to_cpu(i32 %99)
  %101 = load i64, i64* %13, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %103, label %145

103:                                              ; preds = %96
  %104 = load %struct.super_block*, %struct.super_block** %21, align 8
  %105 = load %struct.ocfs2_path*, %struct.ocfs2_path** %10, align 8
  %106 = call i32 @ocfs2_find_cpos_for_left_leaf(%struct.super_block* %104, %struct.ocfs2_path* %105, i64* %16)
  store i32 %106, i32* %15, align 4
  %107 = load i32, i32* %15, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %103
  %110 = load i32, i32* %15, align 4
  %111 = call i32 @mlog_errno(i32 %110)
  br label %323

112:                                              ; preds = %103
  %113 = load i64, i64* %16, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %144

115:                                              ; preds = %112
  %116 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %23, align 8
  %117 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 8
  %119 = call i32 @le16_to_cpu(i32 %118)
  %120 = icmp sgt i32 %119, 1
  br i1 %120, label %121, label %144

121:                                              ; preds = %115
  %122 = load %struct.ocfs2_path*, %struct.ocfs2_path** %10, align 8
  %123 = call %struct.ocfs2_path* @ocfs2_new_path_from_path(%struct.ocfs2_path* %122)
  store %struct.ocfs2_path* %123, %struct.ocfs2_path** %22, align 8
  %124 = load %struct.ocfs2_path*, %struct.ocfs2_path** %22, align 8
  %125 = icmp ne %struct.ocfs2_path* %124, null
  br i1 %125, label %131, label %126

126:                                              ; preds = %121
  %127 = load i32, i32* @ENOMEM, align 4
  %128 = sub nsw i32 0, %127
  store i32 %128, i32* %15, align 4
  %129 = load i32, i32* %15, align 4
  %130 = call i32 @mlog_errno(i32 %129)
  br label %323

131:                                              ; preds = %121
  %132 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %9, align 8
  %133 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.ocfs2_path*, %struct.ocfs2_path** %22, align 8
  %136 = load i64, i64* %16, align 8
  %137 = call i32 @ocfs2_find_path(i32 %134, %struct.ocfs2_path* %135, i64 %136)
  store i32 %137, i32* %15, align 4
  %138 = load i32, i32* %15, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %143

140:                                              ; preds = %131
  %141 = load i32, i32* %15, align 4
  %142 = call i32 @mlog_errno(i32 %141)
  br label %323

143:                                              ; preds = %131
  br label %144

144:                                              ; preds = %143, %115, %112
  br label %145

145:                                              ; preds = %144, %96, %91, %82
  %146 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %147 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %148 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.ocfs2_path*, %struct.ocfs2_path** %10, align 8
  %151 = call i32 @ocfs2_extend_rotate_transaction(%struct.TYPE_11__* %146, i32 0, i32 %149, %struct.ocfs2_path* %150)
  store i32 %151, i32* %15, align 4
  %152 = load i32, i32* %15, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %157

154:                                              ; preds = %145
  %155 = load i32, i32* %15, align 4
  %156 = call i32 @mlog_errno(i32 %155)
  br label %323

157:                                              ; preds = %145
  %158 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %9, align 8
  %159 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %162 = load %struct.ocfs2_path*, %struct.ocfs2_path** %10, align 8
  %163 = call i32 @ocfs2_journal_access_path(i32 %160, %struct.TYPE_11__* %161, %struct.ocfs2_path* %162)
  store i32 %163, i32* %15, align 4
  %164 = load i32, i32* %15, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %169

166:                                              ; preds = %157
  %167 = load i32, i32* %15, align 4
  %168 = call i32 @mlog_errno(i32 %167)
  br label %323

169:                                              ; preds = %157
  %170 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %9, align 8
  %171 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %174 = load %struct.ocfs2_path*, %struct.ocfs2_path** %22, align 8
  %175 = call i32 @ocfs2_journal_access_path(i32 %172, %struct.TYPE_11__* %173, %struct.ocfs2_path* %174)
  store i32 %175, i32* %15, align 4
  %176 = load i32, i32* %15, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %181

178:                                              ; preds = %169
  %179 = load i32, i32* %15, align 4
  %180 = call i32 @mlog_errno(i32 %179)
  br label %323

181:                                              ; preds = %169
  %182 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %24, align 8
  %183 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = call i64 @le32_to_cpu(i32 %184)
  %186 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %23, align 8
  %187 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %24, align 8
  %188 = call i64 @ocfs2_rec_clusters(%struct.ocfs2_extent_list* %186, %struct.ocfs2_extent_rec* %187)
  %189 = add nsw i64 %185, %188
  store i64 %189, i64* %17, align 8
  %190 = load i64, i64* %13, align 8
  %191 = load i64, i64* %14, align 8
  %192 = add nsw i64 %190, %191
  store i64 %192, i64* %18, align 8
  %193 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %24, align 8
  %194 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  %196 = call i64 @le32_to_cpu(i32 %195)
  %197 = load i64, i64* %13, align 8
  %198 = icmp eq i64 %196, %197
  br i1 %198, label %199, label %232

199:                                              ; preds = %181
  %200 = load i64, i64* %17, align 8
  %201 = load i64, i64* %18, align 8
  %202 = icmp eq i64 %200, %201
  br i1 %202, label %203, label %232

203:                                              ; preds = %199
  %204 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %24, align 8
  %205 = call i32 @memset(%struct.ocfs2_extent_rec* %204, i32 0, i32 12)
  %206 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %23, align 8
  %207 = load i32, i32* %11, align 4
  %208 = call i32 @ocfs2_cleanup_merge(%struct.ocfs2_extent_list* %206, i32 %207)
  store i32 1, i32* %19, align 4
  %209 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %23, align 8
  %210 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 8
  %212 = call i32 @le16_to_cpu(i32 %211)
  store i32 %212, i32* %26, align 4
  %213 = load i32, i32* %20, align 4
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %231

215:                                              ; preds = %203
  %216 = load i32, i32* %26, align 4
  %217 = icmp sgt i32 %216, 1
  br i1 %217, label %218, label %231

218:                                              ; preds = %215
  %219 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %23, align 8
  %220 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %219, i32 0, i32 0
  %221 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %220, align 8
  %222 = load i32, i32* %26, align 4
  %223 = sub nsw i32 %222, 1
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %221, i64 %224
  store %struct.ocfs2_extent_rec* %225, %struct.ocfs2_extent_rec** %24, align 8
  %226 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %227 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %9, align 8
  %228 = load %struct.ocfs2_path*, %struct.ocfs2_path** %10, align 8
  %229 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %24, align 8
  %230 = call i32 @ocfs2_adjust_rightmost_records(%struct.TYPE_11__* %226, %struct.ocfs2_extent_tree* %227, %struct.ocfs2_path* %228, %struct.ocfs2_extent_rec* %229)
  br label %231

231:                                              ; preds = %218, %215, %203
  br label %294

232:                                              ; preds = %199, %181
  %233 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %24, align 8
  %234 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %233, i32 0, i32 1
  %235 = load i32, i32* %234, align 4
  %236 = call i64 @le32_to_cpu(i32 %235)
  %237 = load i64, i64* %13, align 8
  %238 = icmp eq i64 %236, %237
  br i1 %238, label %239, label %255

239:                                              ; preds = %232
  %240 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %24, align 8
  %241 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %240, i32 0, i32 1
  %242 = load i64, i64* %14, align 8
  %243 = call i32 @le32_add_cpu(i32* %241, i64 %242)
  %244 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %24, align 8
  %245 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %244, i32 0, i32 2
  %246 = load %struct.super_block*, %struct.super_block** %21, align 8
  %247 = load i64, i64* %14, align 8
  %248 = call i32 @ocfs2_clusters_to_blocks(%struct.super_block* %246, i64 %247)
  %249 = call i32 @le64_add_cpu(i32* %245, i32 %248)
  %250 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %24, align 8
  %251 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %250, i32 0, i32 0
  %252 = load i64, i64* %14, align 8
  %253 = sub nsw i64 0, %252
  %254 = call i32 @le16_add_cpu(i32* %251, i64 %253)
  br label %293

255:                                              ; preds = %232
  %256 = load i64, i64* %17, align 8
  %257 = load i64, i64* %18, align 8
  %258 = icmp eq i64 %256, %257
  br i1 %258, label %259, label %274

259:                                              ; preds = %255
  %260 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %24, align 8
  %261 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %260, i32 0, i32 0
  %262 = load i64, i64* %14, align 8
  %263 = sub nsw i64 0, %262
  %264 = call i32 @le16_add_cpu(i32* %261, i64 %263)
  %265 = load i32, i32* %20, align 4
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %267, label %273

267:                                              ; preds = %259
  %268 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %269 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %9, align 8
  %270 = load %struct.ocfs2_path*, %struct.ocfs2_path** %10, align 8
  %271 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %24, align 8
  %272 = call i32 @ocfs2_adjust_rightmost_records(%struct.TYPE_11__* %268, %struct.ocfs2_extent_tree* %269, %struct.ocfs2_path* %270, %struct.ocfs2_extent_rec* %271)
  br label %273

273:                                              ; preds = %267, %259
  br label %292

274:                                              ; preds = %255
  %275 = load i32, i32* @ML_ERROR, align 4
  %276 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %9, align 8
  %277 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %276, i32 0, i32 0
  %278 = load i32, i32* %277, align 4
  %279 = call i64 @ocfs2_metadata_cache_owner(i32 %278)
  %280 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %24, align 8
  %281 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %280, i32 0, i32 1
  %282 = load i32, i32* %281, align 4
  %283 = call i64 @le32_to_cpu(i32 %282)
  %284 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %24, align 8
  %285 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %284, i32 0, i32 0
  %286 = load i32, i32* %285, align 4
  %287 = call i32 @le16_to_cpu(i32 %286)
  %288 = load i64, i64* %13, align 8
  %289 = load i64, i64* %14, align 8
  %290 = call i32 @mlog(i32 %275, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i64 %279, i64 %283, i32 %287, i64 %288, i64 %289)
  %291 = call i32 (...) @BUG()
  br label %292

292:                                              ; preds = %274, %273
  br label %293

293:                                              ; preds = %292, %239
  br label %294

294:                                              ; preds = %293, %231
  %295 = load %struct.ocfs2_path*, %struct.ocfs2_path** %22, align 8
  %296 = icmp ne %struct.ocfs2_path* %295, null
  br i1 %296, label %297, label %307

297:                                              ; preds = %294
  %298 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %9, align 8
  %299 = load %struct.ocfs2_path*, %struct.ocfs2_path** %22, align 8
  %300 = load %struct.ocfs2_path*, %struct.ocfs2_path** %10, align 8
  %301 = call i32 @ocfs2_find_subtree_root(%struct.ocfs2_extent_tree* %298, %struct.ocfs2_path* %299, %struct.ocfs2_path* %300)
  store i32 %301, i32* %27, align 4
  %302 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %303 = load %struct.ocfs2_path*, %struct.ocfs2_path** %22, align 8
  %304 = load %struct.ocfs2_path*, %struct.ocfs2_path** %10, align 8
  %305 = load i32, i32* %27, align 4
  %306 = call i32 @ocfs2_complete_edge_insert(%struct.TYPE_11__* %302, %struct.ocfs2_path* %303, %struct.ocfs2_path* %304, i32 %305)
  br label %307

307:                                              ; preds = %297, %294
  %308 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %309 = load %struct.ocfs2_path*, %struct.ocfs2_path** %10, align 8
  %310 = call %struct.TYPE_12__* @path_leaf_bh(%struct.ocfs2_path* %309)
  %311 = call i32 @ocfs2_journal_dirty(%struct.TYPE_11__* %308, %struct.TYPE_12__* %310)
  %312 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %313 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %9, align 8
  %314 = load %struct.ocfs2_path*, %struct.ocfs2_path** %10, align 8
  %315 = load %struct.ocfs2_cached_dealloc_ctxt*, %struct.ocfs2_cached_dealloc_ctxt** %12, align 8
  %316 = call i32 @ocfs2_rotate_tree_left(%struct.TYPE_11__* %312, %struct.ocfs2_extent_tree* %313, %struct.ocfs2_path* %314, %struct.ocfs2_cached_dealloc_ctxt* %315)
  store i32 %316, i32* %15, align 4
  %317 = load i32, i32* %15, align 4
  %318 = icmp ne i32 %317, 0
  br i1 %318, label %319, label %322

319:                                              ; preds = %307
  %320 = load i32, i32* %15, align 4
  %321 = call i32 @mlog_errno(i32 %320)
  br label %323

322:                                              ; preds = %307
  br label %323

323:                                              ; preds = %322, %319, %178, %166, %154, %140, %126, %109, %51
  %324 = load %struct.ocfs2_path*, %struct.ocfs2_path** %22, align 8
  %325 = call i32 @ocfs2_free_path(%struct.ocfs2_path* %324)
  %326 = load i32, i32* %15, align 4
  ret i32 %326
}

declare dso_local %struct.super_block* @ocfs2_metadata_cache_get_super(i32) #1

declare dso_local %struct.ocfs2_extent_list* @path_leaf_el(%struct.ocfs2_path*) #1

declare dso_local i64 @ocfs2_is_empty_extent(%struct.ocfs2_extent_rec*) #1

declare dso_local i32 @ocfs2_rotate_tree_left(%struct.TYPE_11__*, %struct.ocfs2_extent_tree*, %struct.ocfs2_path*, %struct.ocfs2_cached_dealloc_ctxt*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local %struct.TYPE_12__* @path_leaf_bh(%struct.ocfs2_path*) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @ocfs2_find_cpos_for_left_leaf(%struct.super_block*, %struct.ocfs2_path*, i64*) #1

declare dso_local %struct.ocfs2_path* @ocfs2_new_path_from_path(%struct.ocfs2_path*) #1

declare dso_local i32 @ocfs2_find_path(i32, %struct.ocfs2_path*, i64) #1

declare dso_local i32 @ocfs2_extend_rotate_transaction(%struct.TYPE_11__*, i32, i32, %struct.ocfs2_path*) #1

declare dso_local i32 @ocfs2_journal_access_path(i32, %struct.TYPE_11__*, %struct.ocfs2_path*) #1

declare dso_local i64 @ocfs2_rec_clusters(%struct.ocfs2_extent_list*, %struct.ocfs2_extent_rec*) #1

declare dso_local i32 @memset(%struct.ocfs2_extent_rec*, i32, i32) #1

declare dso_local i32 @ocfs2_cleanup_merge(%struct.ocfs2_extent_list*, i32) #1

declare dso_local i32 @ocfs2_adjust_rightmost_records(%struct.TYPE_11__*, %struct.ocfs2_extent_tree*, %struct.ocfs2_path*, %struct.ocfs2_extent_rec*) #1

declare dso_local i32 @le32_add_cpu(i32*, i64) #1

declare dso_local i32 @le64_add_cpu(i32*, i32) #1

declare dso_local i32 @ocfs2_clusters_to_blocks(%struct.super_block*, i64) #1

declare dso_local i32 @le16_add_cpu(i32*, i64) #1

declare dso_local i32 @mlog(i32, i8*, i64, i64, i32, i64, i64) #1

declare dso_local i64 @ocfs2_metadata_cache_owner(i32) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @ocfs2_find_subtree_root(%struct.ocfs2_extent_tree*, %struct.ocfs2_path*, %struct.ocfs2_path*) #1

declare dso_local i32 @ocfs2_complete_edge_insert(%struct.TYPE_11__*, %struct.ocfs2_path*, %struct.ocfs2_path*, i32) #1

declare dso_local i32 @ocfs2_journal_dirty(%struct.TYPE_11__*, %struct.TYPE_12__*) #1

declare dso_local i32 @ocfs2_free_path(%struct.ocfs2_path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
