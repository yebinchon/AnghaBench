; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_alloc.c_ocfs2_merge_rec_left.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_alloc.c_ocfs2_merge_rec_left.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_path = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.buffer_head* }
%struct.buffer_head = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.ocfs2_extent_tree = type { i32 }
%struct.ocfs2_extent_rec = type { i32, i32, i32 }
%struct.ocfs2_cached_dealloc_ctxt = type { i32 }
%struct.ocfs2_extent_list = type { i32, %struct.ocfs2_extent_rec*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocfs2_path*, %struct.TYPE_10__*, %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_rec*, %struct.ocfs2_cached_dealloc_ctxt*, i32)* @ocfs2_merge_rec_left to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_merge_rec_left(%struct.ocfs2_path* %0, %struct.TYPE_10__* %1, %struct.ocfs2_extent_tree* %2, %struct.ocfs2_extent_rec* %3, %struct.ocfs2_cached_dealloc_ctxt* %4, i32 %5) #0 {
  %7 = alloca %struct.ocfs2_path*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca %struct.ocfs2_extent_tree*, align 8
  %10 = alloca %struct.ocfs2_extent_rec*, align 8
  %11 = alloca %struct.ocfs2_cached_dealloc_ctxt*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.ocfs2_extent_rec*, align 8
  %19 = alloca %struct.ocfs2_extent_rec*, align 8
  %20 = alloca %struct.ocfs2_extent_list*, align 8
  %21 = alloca %struct.buffer_head*, align 8
  %22 = alloca %struct.buffer_head*, align 8
  %23 = alloca %struct.ocfs2_path*, align 8
  %24 = alloca %struct.ocfs2_extent_list*, align 8
  store %struct.ocfs2_path* %0, %struct.ocfs2_path** %7, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %8, align 8
  store %struct.ocfs2_extent_tree* %2, %struct.ocfs2_extent_tree** %9, align 8
  store %struct.ocfs2_extent_rec* %3, %struct.ocfs2_extent_rec** %10, align 8
  store %struct.ocfs2_cached_dealloc_ctxt* %4, %struct.ocfs2_cached_dealloc_ctxt** %11, align 8
  store i32 %5, i32* %12, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %25 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %10, align 8
  %26 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @le16_to_cpu(i32 %27)
  store i32 %28, i32* %17, align 4
  %29 = load %struct.ocfs2_path*, %struct.ocfs2_path** %7, align 8
  %30 = call %struct.ocfs2_extent_list* @path_leaf_el(%struct.ocfs2_path* %29)
  store %struct.ocfs2_extent_list* %30, %struct.ocfs2_extent_list** %20, align 8
  %31 = load %struct.ocfs2_path*, %struct.ocfs2_path** %7, align 8
  %32 = call %struct.buffer_head* @path_leaf_bh(%struct.ocfs2_path* %31)
  store %struct.buffer_head* %32, %struct.buffer_head** %21, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %22, align 8
  store %struct.ocfs2_path* null, %struct.ocfs2_path** %23, align 8
  %33 = load i32, i32* %12, align 4
  %34 = icmp slt i32 %33, 0
  %35 = zext i1 %34 to i32
  %36 = call i32 @BUG_ON(i32 %35)
  %37 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %20, align 8
  %38 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %37, i32 0, i32 1
  %39 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %38, align 8
  %40 = load i32, i32* %12, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %39, i64 %41
  store %struct.ocfs2_extent_rec* %42, %struct.ocfs2_extent_rec** %19, align 8
  %43 = load i32, i32* %12, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %183

45:                                               ; preds = %6
  %46 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %9, align 8
  %47 = load %struct.ocfs2_path*, %struct.ocfs2_path** %7, align 8
  %48 = call i32 @ocfs2_get_left_path(%struct.ocfs2_extent_tree* %46, %struct.ocfs2_path* %47, %struct.ocfs2_path** %23)
  store i32 %48, i32* %13, align 4
  %49 = load i32, i32* %13, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %45
  %52 = load i32, i32* %13, align 4
  %53 = call i32 @mlog_errno(i32 %52)
  br label %308

54:                                               ; preds = %45
  %55 = load %struct.ocfs2_path*, %struct.ocfs2_path** %23, align 8
  %56 = call %struct.ocfs2_extent_list* @path_leaf_el(%struct.ocfs2_path* %55)
  store %struct.ocfs2_extent_list* %56, %struct.ocfs2_extent_list** %24, align 8
  %57 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %24, align 8
  %58 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @le16_to_cpu(i32 %59)
  %61 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %24, align 8
  %62 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @le16_to_cpu(i32 %63)
  %65 = icmp ne i32 %60, %64
  %66 = zext i1 %65 to i32
  %67 = call i32 @BUG_ON(i32 %66)
  %68 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %24, align 8
  %69 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %68, i32 0, i32 1
  %70 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %69, align 8
  %71 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %24, align 8
  %72 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @le16_to_cpu(i32 %73)
  %75 = sub nsw i32 %74, 1
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %70, i64 %76
  store %struct.ocfs2_extent_rec* %77, %struct.ocfs2_extent_rec** %18, align 8
  %78 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %18, align 8
  %79 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = call i64 @le32_to_cpu(i32 %80)
  %82 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %18, align 8
  %83 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @le16_to_cpu(i32 %84)
  %86 = sext i32 %85 to i64
  %87 = add nsw i64 %81, %86
  %88 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %10, align 8
  %89 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = call i64 @le32_to_cpu(i32 %90)
  %92 = icmp ne i64 %87, %91
  %93 = zext i1 %92 to i32
  %94 = call i32 @BUG_ON(i32 %93)
  %95 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %9, align 8
  %96 = load %struct.ocfs2_path*, %struct.ocfs2_path** %23, align 8
  %97 = load %struct.ocfs2_path*, %struct.ocfs2_path** %7, align 8
  %98 = call i32 @ocfs2_find_subtree_root(%struct.ocfs2_extent_tree* %95, %struct.ocfs2_path* %96, %struct.ocfs2_path* %97)
  store i32 %98, i32* %15, align 4
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %100 = load i32, i32* %15, align 4
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.ocfs2_path*, %struct.ocfs2_path** %23, align 8
  %105 = call i32 @ocfs2_extend_rotate_transaction(%struct.TYPE_10__* %99, i32 %100, i32 %103, %struct.ocfs2_path* %104)
  store i32 %105, i32* %13, align 4
  %106 = load i32, i32* %13, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %54
  %109 = load i32, i32* %13, align 4
  %110 = call i32 @mlog_errno(i32 %109)
  br label %308

111:                                              ; preds = %54
  %112 = load %struct.ocfs2_path*, %struct.ocfs2_path** %23, align 8
  %113 = getelementptr inbounds %struct.ocfs2_path, %struct.ocfs2_path* %112, i32 0, i32 0
  %114 = load %struct.TYPE_9__*, %struct.TYPE_9__** %113, align 8
  %115 = load i32, i32* %15, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i32 0, i32 0
  %119 = load %struct.buffer_head*, %struct.buffer_head** %118, align 8
  store %struct.buffer_head* %119, %struct.buffer_head** %22, align 8
  %120 = load %struct.buffer_head*, %struct.buffer_head** %22, align 8
  %121 = load %struct.ocfs2_path*, %struct.ocfs2_path** %7, align 8
  %122 = getelementptr inbounds %struct.ocfs2_path, %struct.ocfs2_path* %121, i32 0, i32 0
  %123 = load %struct.TYPE_9__*, %struct.TYPE_9__** %122, align 8
  %124 = load i32, i32* %15, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %123, i64 %125
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 0
  %128 = load %struct.buffer_head*, %struct.buffer_head** %127, align 8
  %129 = icmp ne %struct.buffer_head* %120, %128
  %130 = zext i1 %129 to i32
  %131 = call i32 @BUG_ON(i32 %130)
  %132 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %133 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %9, align 8
  %134 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.ocfs2_path*, %struct.ocfs2_path** %7, align 8
  %137 = load i32, i32* %15, align 4
  %138 = call i32 @ocfs2_path_bh_journal_access(%struct.TYPE_10__* %132, i32 %135, %struct.ocfs2_path* %136, i32 %137)
  store i32 %138, i32* %13, align 4
  %139 = load i32, i32* %13, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %144

141:                                              ; preds = %111
  %142 = load i32, i32* %13, align 4
  %143 = call i32 @mlog_errno(i32 %142)
  br label %308

144:                                              ; preds = %111
  %145 = load i32, i32* %15, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %14, align 4
  br label %147

147:                                              ; preds = %179, %144
  %148 = load i32, i32* %14, align 4
  %149 = load %struct.ocfs2_path*, %struct.ocfs2_path** %7, align 8
  %150 = call i32 @path_num_items(%struct.ocfs2_path* %149)
  %151 = icmp slt i32 %148, %150
  br i1 %151, label %152, label %182

152:                                              ; preds = %147
  %153 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %154 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %9, align 8
  %155 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.ocfs2_path*, %struct.ocfs2_path** %7, align 8
  %158 = load i32, i32* %14, align 4
  %159 = call i32 @ocfs2_path_bh_journal_access(%struct.TYPE_10__* %153, i32 %156, %struct.ocfs2_path* %157, i32 %158)
  store i32 %159, i32* %13, align 4
  %160 = load i32, i32* %13, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %165

162:                                              ; preds = %152
  %163 = load i32, i32* %13, align 4
  %164 = call i32 @mlog_errno(i32 %163)
  br label %308

165:                                              ; preds = %152
  %166 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %167 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %9, align 8
  %168 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.ocfs2_path*, %struct.ocfs2_path** %23, align 8
  %171 = load i32, i32* %14, align 4
  %172 = call i32 @ocfs2_path_bh_journal_access(%struct.TYPE_10__* %166, i32 %169, %struct.ocfs2_path* %170, i32 %171)
  store i32 %172, i32* %13, align 4
  %173 = load i32, i32* %13, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %178

175:                                              ; preds = %165
  %176 = load i32, i32* %13, align 4
  %177 = call i32 @mlog_errno(i32 %176)
  br label %308

178:                                              ; preds = %165
  br label %179

179:                                              ; preds = %178
  %180 = load i32, i32* %14, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %14, align 4
  br label %147

182:                                              ; preds = %147
  br label %199

183:                                              ; preds = %6
  %184 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %20, align 8
  %185 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %184, i32 0, i32 1
  %186 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %185, align 8
  %187 = load i32, i32* %12, align 4
  %188 = sub nsw i32 %187, 1
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %186, i64 %189
  store %struct.ocfs2_extent_rec* %190, %struct.ocfs2_extent_rec** %18, align 8
  %191 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %20, align 8
  %192 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %191, i32 0, i32 1
  %193 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %192, align 8
  %194 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %193, i64 0
  %195 = call i64 @ocfs2_is_empty_extent(%struct.ocfs2_extent_rec* %194)
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %198

197:                                              ; preds = %183
  store i32 1, i32* %16, align 4
  br label %198

198:                                              ; preds = %197, %183
  br label %199

199:                                              ; preds = %198, %182
  %200 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %201 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %9, align 8
  %202 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 4
  %204 = load %struct.ocfs2_path*, %struct.ocfs2_path** %7, align 8
  %205 = load %struct.ocfs2_path*, %struct.ocfs2_path** %7, align 8
  %206 = call i32 @path_num_items(%struct.ocfs2_path* %205)
  %207 = sub nsw i32 %206, 1
  %208 = call i32 @ocfs2_path_bh_journal_access(%struct.TYPE_10__* %200, i32 %203, %struct.ocfs2_path* %204, i32 %207)
  store i32 %208, i32* %13, align 4
  %209 = load i32, i32* %13, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %214

211:                                              ; preds = %199
  %212 = load i32, i32* %13, align 4
  %213 = call i32 @mlog_errno(i32 %212)
  br label %308

214:                                              ; preds = %199
  %215 = load i32, i32* %16, align 4
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %225

217:                                              ; preds = %214
  %218 = load i32, i32* %12, align 4
  %219 = icmp eq i32 %218, 1
  br i1 %219, label %220, label %225

220:                                              ; preds = %217
  %221 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %18, align 8
  %222 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %10, align 8
  %223 = bitcast %struct.ocfs2_extent_rec* %221 to i8*
  %224 = bitcast %struct.ocfs2_extent_rec* %222 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %223, i8* align 4 %224, i64 12, i1 false)
  store i32 0, i32* %16, align 4
  br label %230

225:                                              ; preds = %217, %214
  %226 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %18, align 8
  %227 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %226, i32 0, i32 0
  %228 = load i32, i32* %17, align 4
  %229 = call i32 @le16_add_cpu(i32* %227, i32 %228)
  br label %230

230:                                              ; preds = %225, %220
  %231 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %19, align 8
  %232 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %231, i32 0, i32 2
  %233 = load i32, i32* %17, align 4
  %234 = call i32 @le32_add_cpu(i32* %232, i32 %233)
  %235 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %19, align 8
  %236 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %235, i32 0, i32 1
  %237 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %9, align 8
  %238 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 4
  %240 = call i32 @ocfs2_metadata_cache_get_super(i32 %239)
  %241 = load i32, i32* %17, align 4
  %242 = call i32 @ocfs2_clusters_to_blocks(i32 %240, i32 %241)
  %243 = call i32 @le64_add_cpu(i32* %236, i32 %242)
  %244 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %19, align 8
  %245 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %244, i32 0, i32 0
  %246 = load i32, i32* %17, align 4
  %247 = sub i32 0, %246
  %248 = call i32 @le16_add_cpu(i32* %245, i32 %247)
  %249 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %20, align 8
  %250 = load i32, i32* %12, align 4
  %251 = call i32 @ocfs2_cleanup_merge(%struct.ocfs2_extent_list* %249, i32 %250)
  %252 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %253 = load %struct.buffer_head*, %struct.buffer_head** %21, align 8
  %254 = call i32 @ocfs2_journal_dirty(%struct.TYPE_10__* %252, %struct.buffer_head* %253)
  store i32 %254, i32* %13, align 4
  %255 = load i32, i32* %13, align 4
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %260

257:                                              ; preds = %230
  %258 = load i32, i32* %13, align 4
  %259 = call i32 @mlog_errno(i32 %258)
  br label %260

260:                                              ; preds = %257, %230
  %261 = load %struct.ocfs2_path*, %struct.ocfs2_path** %23, align 8
  %262 = icmp ne %struct.ocfs2_path* %261, null
  br i1 %262, label %263, label %307

263:                                              ; preds = %260
  %264 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %265 = load %struct.ocfs2_path*, %struct.ocfs2_path** %23, align 8
  %266 = call %struct.buffer_head* @path_leaf_bh(%struct.ocfs2_path* %265)
  %267 = call i32 @ocfs2_journal_dirty(%struct.TYPE_10__* %264, %struct.buffer_head* %266)
  store i32 %267, i32* %13, align 4
  %268 = load i32, i32* %13, align 4
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %270, label %273

270:                                              ; preds = %263
  %271 = load i32, i32* %13, align 4
  %272 = call i32 @mlog_errno(i32 %271)
  br label %273

273:                                              ; preds = %270, %263
  %274 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %19, align 8
  %275 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %274, i32 0, i32 0
  %276 = load i32, i32* %275, align 4
  %277 = call i32 @le16_to_cpu(i32 %276)
  %278 = icmp eq i32 %277, 0
  br i1 %278, label %279, label %300

279:                                              ; preds = %273
  %280 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %20, align 8
  %281 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %280, i32 0, i32 0
  %282 = load i32, i32* %281, align 8
  %283 = call i32 @le16_to_cpu(i32 %282)
  %284 = icmp eq i32 %283, 1
  br i1 %284, label %285, label %300

285:                                              ; preds = %279
  %286 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %287 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %9, align 8
  %288 = load %struct.ocfs2_path*, %struct.ocfs2_path** %7, align 8
  %289 = load %struct.ocfs2_cached_dealloc_ctxt*, %struct.ocfs2_cached_dealloc_ctxt** %11, align 8
  %290 = call i32 @ocfs2_remove_rightmost_path(%struct.TYPE_10__* %286, %struct.ocfs2_extent_tree* %287, %struct.ocfs2_path* %288, %struct.ocfs2_cached_dealloc_ctxt* %289)
  store i32 %290, i32* %13, align 4
  %291 = load i32, i32* %13, align 4
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %293, label %296

293:                                              ; preds = %285
  %294 = load i32, i32* %13, align 4
  %295 = call i32 @mlog_errno(i32 %294)
  br label %308

296:                                              ; preds = %285
  %297 = load %struct.ocfs2_path*, %struct.ocfs2_path** %7, align 8
  %298 = load %struct.ocfs2_path*, %struct.ocfs2_path** %23, align 8
  %299 = call i32 @ocfs2_mv_path(%struct.ocfs2_path* %297, %struct.ocfs2_path* %298)
  store %struct.ocfs2_path* null, %struct.ocfs2_path** %23, align 8
  br label %306

300:                                              ; preds = %279, %273
  %301 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %302 = load %struct.ocfs2_path*, %struct.ocfs2_path** %23, align 8
  %303 = load %struct.ocfs2_path*, %struct.ocfs2_path** %7, align 8
  %304 = load i32, i32* %15, align 4
  %305 = call i32 @ocfs2_complete_edge_insert(%struct.TYPE_10__* %301, %struct.ocfs2_path* %302, %struct.ocfs2_path* %303, i32 %304)
  br label %306

306:                                              ; preds = %300, %296
  br label %307

307:                                              ; preds = %306, %260
  br label %308

308:                                              ; preds = %307, %293, %211, %175, %162, %141, %108, %51
  %309 = load %struct.ocfs2_path*, %struct.ocfs2_path** %23, align 8
  %310 = icmp ne %struct.ocfs2_path* %309, null
  br i1 %310, label %311, label %314

311:                                              ; preds = %308
  %312 = load %struct.ocfs2_path*, %struct.ocfs2_path** %23, align 8
  %313 = call i32 @ocfs2_free_path(%struct.ocfs2_path* %312)
  br label %314

314:                                              ; preds = %311, %308
  %315 = load i32, i32* %13, align 4
  ret i32 %315
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local %struct.ocfs2_extent_list* @path_leaf_el(%struct.ocfs2_path*) #1

declare dso_local %struct.buffer_head* @path_leaf_bh(%struct.ocfs2_path*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @ocfs2_get_left_path(%struct.ocfs2_extent_tree*, %struct.ocfs2_path*, %struct.ocfs2_path**) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @ocfs2_find_subtree_root(%struct.ocfs2_extent_tree*, %struct.ocfs2_path*, %struct.ocfs2_path*) #1

declare dso_local i32 @ocfs2_extend_rotate_transaction(%struct.TYPE_10__*, i32, i32, %struct.ocfs2_path*) #1

declare dso_local i32 @ocfs2_path_bh_journal_access(%struct.TYPE_10__*, i32, %struct.ocfs2_path*, i32) #1

declare dso_local i32 @path_num_items(%struct.ocfs2_path*) #1

declare dso_local i64 @ocfs2_is_empty_extent(%struct.ocfs2_extent_rec*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @le16_add_cpu(i32*, i32) #1

declare dso_local i32 @le32_add_cpu(i32*, i32) #1

declare dso_local i32 @le64_add_cpu(i32*, i32) #1

declare dso_local i32 @ocfs2_clusters_to_blocks(i32, i32) #1

declare dso_local i32 @ocfs2_metadata_cache_get_super(i32) #1

declare dso_local i32 @ocfs2_cleanup_merge(%struct.ocfs2_extent_list*, i32) #1

declare dso_local i32 @ocfs2_journal_dirty(%struct.TYPE_10__*, %struct.buffer_head*) #1

declare dso_local i32 @ocfs2_remove_rightmost_path(%struct.TYPE_10__*, %struct.ocfs2_extent_tree*, %struct.ocfs2_path*, %struct.ocfs2_cached_dealloc_ctxt*) #1

declare dso_local i32 @ocfs2_mv_path(%struct.ocfs2_path*, %struct.ocfs2_path*) #1

declare dso_local i32 @ocfs2_complete_edge_insert(%struct.TYPE_10__*, %struct.ocfs2_path*, %struct.ocfs2_path*, i32) #1

declare dso_local i32 @ocfs2_free_path(%struct.ocfs2_path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
