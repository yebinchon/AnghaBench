; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_alloc.c_ocfs2_rotate_subtree_left.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_alloc.c_ocfs2_rotate_subtree_left.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_extent_tree = type { i32 }
%struct.ocfs2_path = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.buffer_head* }
%struct.buffer_head = type { i64 }
%struct.ocfs2_cached_dealloc_ctxt = type { i32 }
%struct.ocfs2_extent_list = type { i32*, i32 }
%struct.ocfs2_extent_block = type { i64, i32 }

@EAGAIN = common dso_local global i32 0, align 4
@OCFS2_JOURNAL_ACCESS_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.ocfs2_extent_tree*, %struct.ocfs2_path*, %struct.ocfs2_path*, i32, %struct.ocfs2_cached_dealloc_ctxt*, i32*)* @ocfs2_rotate_subtree_left to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_rotate_subtree_left(i32* %0, %struct.ocfs2_extent_tree* %1, %struct.ocfs2_path* %2, %struct.ocfs2_path* %3, i32 %4, %struct.ocfs2_cached_dealloc_ctxt* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.ocfs2_extent_tree*, align 8
  %11 = alloca %struct.ocfs2_path*, align 8
  %12 = alloca %struct.ocfs2_path*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.ocfs2_cached_dealloc_ctxt*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.buffer_head*, align 8
  %21 = alloca %struct.buffer_head*, align 8
  %22 = alloca %struct.ocfs2_extent_list*, align 8
  %23 = alloca %struct.ocfs2_extent_list*, align 8
  %24 = alloca %struct.ocfs2_extent_block*, align 8
  store i32* %0, i32** %9, align 8
  store %struct.ocfs2_extent_tree* %1, %struct.ocfs2_extent_tree** %10, align 8
  store %struct.ocfs2_path* %2, %struct.ocfs2_path** %11, align 8
  store %struct.ocfs2_path* %3, %struct.ocfs2_path** %12, align 8
  store i32 %4, i32* %13, align 4
  store %struct.ocfs2_cached_dealloc_ctxt* %5, %struct.ocfs2_cached_dealloc_ctxt** %14, align 8
  store i32* %6, i32** %15, align 8
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %25 = load %struct.ocfs2_path*, %struct.ocfs2_path** %12, align 8
  %26 = call %struct.buffer_head* @path_root_bh(%struct.ocfs2_path* %25)
  store %struct.buffer_head* %26, %struct.buffer_head** %21, align 8
  %27 = load i32*, i32** %15, align 8
  store i32 0, i32* %27, align 4
  %28 = load %struct.ocfs2_path*, %struct.ocfs2_path** %12, align 8
  %29 = call %struct.ocfs2_extent_list* @path_leaf_el(%struct.ocfs2_path* %28)
  store %struct.ocfs2_extent_list* %29, %struct.ocfs2_extent_list** %22, align 8
  %30 = load %struct.ocfs2_path*, %struct.ocfs2_path** %11, align 8
  %31 = call %struct.ocfs2_extent_list* @path_leaf_el(%struct.ocfs2_path* %30)
  store %struct.ocfs2_extent_list* %31, %struct.ocfs2_extent_list** %23, align 8
  %32 = load %struct.ocfs2_path*, %struct.ocfs2_path** %11, align 8
  %33 = getelementptr inbounds %struct.ocfs2_path, %struct.ocfs2_path* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = load i32, i32* %13, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load %struct.buffer_head*, %struct.buffer_head** %38, align 8
  store %struct.buffer_head* %39, %struct.buffer_head** %20, align 8
  %40 = load %struct.buffer_head*, %struct.buffer_head** %20, align 8
  %41 = load %struct.ocfs2_path*, %struct.ocfs2_path** %12, align 8
  %42 = getelementptr inbounds %struct.ocfs2_path, %struct.ocfs2_path* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = load i32, i32* %13, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load %struct.buffer_head*, %struct.buffer_head** %47, align 8
  %49 = icmp ne %struct.buffer_head* %40, %48
  %50 = zext i1 %49 to i32
  %51 = call i32 @BUG_ON(i32 %50)
  %52 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %23, align 8
  %53 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 0
  %56 = call i64 @ocfs2_is_empty_extent(i32* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %7
  store i32 0, i32* %8, align 4
  br label %288

59:                                               ; preds = %7
  %60 = load %struct.ocfs2_path*, %struct.ocfs2_path** %12, align 8
  %61 = call %struct.buffer_head* @path_leaf_bh(%struct.ocfs2_path* %60)
  %62 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = inttoptr i64 %63 to %struct.ocfs2_extent_block*
  store %struct.ocfs2_extent_block* %64, %struct.ocfs2_extent_block** %24, align 8
  %65 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %22, align 8
  %66 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 0
  %69 = call i64 @ocfs2_is_empty_extent(i32* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %104

71:                                               ; preds = %59
  %72 = load %struct.ocfs2_extent_block*, %struct.ocfs2_extent_block** %24, align 8
  %73 = getelementptr inbounds %struct.ocfs2_extent_block, %struct.ocfs2_extent_block* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %71
  %77 = load i32, i32* @EAGAIN, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %8, align 4
  br label %288

79:                                               ; preds = %71
  %80 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %22, align 8
  %81 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @le16_to_cpu(i32 %82)
  %84 = icmp sgt i32 %83, 1
  br i1 %84, label %85, label %102

85:                                               ; preds = %79
  %86 = load i32*, i32** %9, align 8
  %87 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %10, align 8
  %88 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.ocfs2_path*, %struct.ocfs2_path** %12, align 8
  %91 = call %struct.buffer_head* @path_leaf_bh(%struct.ocfs2_path* %90)
  %92 = load i32, i32* @OCFS2_JOURNAL_ACCESS_WRITE, align 4
  %93 = call i32 @ocfs2_journal_access_eb(i32* %86, i32 %89, %struct.buffer_head* %91, i32 %92)
  store i32 %93, i32* %16, align 4
  %94 = load i32, i32* %16, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %85
  %97 = load i32, i32* %16, align 4
  %98 = call i32 @mlog_errno(i32 %97)
  br label %286

99:                                               ; preds = %85
  %100 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %22, align 8
  %101 = call i32 @ocfs2_remove_empty_extent(%struct.ocfs2_extent_list* %100)
  br label %103

102:                                              ; preds = %79
  store i32 1, i32* %19, align 4
  br label %103

103:                                              ; preds = %102, %99
  br label %104

104:                                              ; preds = %103, %59
  %105 = load %struct.ocfs2_extent_block*, %struct.ocfs2_extent_block** %24, align 8
  %106 = getelementptr inbounds %struct.ocfs2_extent_block, %struct.ocfs2_extent_block* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = icmp eq i64 %107, 0
  br i1 %108, label %109, label %126

109:                                              ; preds = %104
  %110 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %22, align 8
  %111 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @le16_to_cpu(i32 %112)
  %114 = icmp eq i32 %113, 1
  br i1 %114, label %115, label %126

115:                                              ; preds = %109
  %116 = load i32*, i32** %9, align 8
  %117 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %10, align 8
  %118 = load i32, i32* @OCFS2_JOURNAL_ACCESS_WRITE, align 4
  %119 = call i32 @ocfs2_et_root_journal_access(i32* %116, %struct.ocfs2_extent_tree* %117, i32 %118)
  store i32 %119, i32* %16, align 4
  %120 = load i32, i32* %16, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %115
  %123 = load i32, i32* %16, align 4
  %124 = call i32 @mlog_errno(i32 %123)
  br label %286

125:                                              ; preds = %115
  store i32 1, i32* %18, align 4
  br label %126

126:                                              ; preds = %125, %109, %104
  %127 = load i32, i32* %19, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %133

129:                                              ; preds = %126
  %130 = load i32, i32* %18, align 4
  %131 = icmp ne i32 %130, 0
  %132 = xor i1 %131, true
  br label %133

133:                                              ; preds = %129, %126
  %134 = phi i1 [ false, %126 ], [ %132, %129 ]
  %135 = zext i1 %134 to i32
  %136 = call i32 @BUG_ON(i32 %135)
  %137 = load i32*, i32** %9, align 8
  %138 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %10, align 8
  %139 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.ocfs2_path*, %struct.ocfs2_path** %12, align 8
  %142 = load i32, i32* %13, align 4
  %143 = call i32 @ocfs2_path_bh_journal_access(i32* %137, i32 %140, %struct.ocfs2_path* %141, i32 %142)
  store i32 %143, i32* %16, align 4
  %144 = load i32, i32* %16, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %149

146:                                              ; preds = %133
  %147 = load i32, i32* %16, align 4
  %148 = call i32 @mlog_errno(i32 %147)
  br label %286

149:                                              ; preds = %133
  %150 = load i32, i32* %13, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %17, align 4
  br label %152

152:                                              ; preds = %184, %149
  %153 = load i32, i32* %17, align 4
  %154 = load %struct.ocfs2_path*, %struct.ocfs2_path** %12, align 8
  %155 = call i32 @path_num_items(%struct.ocfs2_path* %154)
  %156 = icmp slt i32 %153, %155
  br i1 %156, label %157, label %187

157:                                              ; preds = %152
  %158 = load i32*, i32** %9, align 8
  %159 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %10, align 8
  %160 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.ocfs2_path*, %struct.ocfs2_path** %12, align 8
  %163 = load i32, i32* %17, align 4
  %164 = call i32 @ocfs2_path_bh_journal_access(i32* %158, i32 %161, %struct.ocfs2_path* %162, i32 %163)
  store i32 %164, i32* %16, align 4
  %165 = load i32, i32* %16, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %170

167:                                              ; preds = %157
  %168 = load i32, i32* %16, align 4
  %169 = call i32 @mlog_errno(i32 %168)
  br label %286

170:                                              ; preds = %157
  %171 = load i32*, i32** %9, align 8
  %172 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %10, align 8
  %173 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = load %struct.ocfs2_path*, %struct.ocfs2_path** %11, align 8
  %176 = load i32, i32* %17, align 4
  %177 = call i32 @ocfs2_path_bh_journal_access(i32* %171, i32 %174, %struct.ocfs2_path* %175, i32 %176)
  store i32 %177, i32* %16, align 4
  %178 = load i32, i32* %16, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %183

180:                                              ; preds = %170
  %181 = load i32, i32* %16, align 4
  %182 = call i32 @mlog_errno(i32 %181)
  br label %286

183:                                              ; preds = %170
  br label %184

184:                                              ; preds = %183
  %185 = load i32, i32* %17, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %17, align 4
  br label %152

187:                                              ; preds = %152
  %188 = load i32, i32* %19, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %202, label %190

190:                                              ; preds = %187
  %191 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %23, align 8
  %192 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %22, align 8
  %193 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %192, i32 0, i32 0
  %194 = load i32*, i32** %193, align 8
  %195 = getelementptr inbounds i32, i32* %194, i64 0
  %196 = call i32 @ocfs2_rotate_leaf(%struct.ocfs2_extent_list* %191, i32* %195)
  %197 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %22, align 8
  %198 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %197, i32 0, i32 0
  %199 = load i32*, i32** %198, align 8
  %200 = getelementptr inbounds i32, i32* %199, i64 0
  %201 = call i32 @memset(i32* %200, i32 0, i32 4)
  br label %202

202:                                              ; preds = %190, %187
  %203 = load %struct.ocfs2_extent_block*, %struct.ocfs2_extent_block** %24, align 8
  %204 = getelementptr inbounds %struct.ocfs2_extent_block, %struct.ocfs2_extent_block* %203, i32 0, i32 0
  %205 = load i64, i64* %204, align 8
  %206 = icmp eq i64 %205, 0
  br i1 %206, label %207, label %210

207:                                              ; preds = %202
  %208 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %22, align 8
  %209 = call i32 @ocfs2_remove_empty_extent(%struct.ocfs2_extent_list* %208)
  br label %210

210:                                              ; preds = %207, %202
  %211 = load i32*, i32** %9, align 8
  %212 = load %struct.ocfs2_path*, %struct.ocfs2_path** %11, align 8
  %213 = call %struct.buffer_head* @path_leaf_bh(%struct.ocfs2_path* %212)
  %214 = call i32 @ocfs2_journal_dirty(i32* %211, %struct.buffer_head* %213)
  store i32 %214, i32* %16, align 4
  %215 = load i32, i32* %16, align 4
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %220

217:                                              ; preds = %210
  %218 = load i32, i32* %16, align 4
  %219 = call i32 @mlog_errno(i32 %218)
  br label %220

220:                                              ; preds = %217, %210
  %221 = load i32*, i32** %9, align 8
  %222 = load %struct.ocfs2_path*, %struct.ocfs2_path** %12, align 8
  %223 = call %struct.buffer_head* @path_leaf_bh(%struct.ocfs2_path* %222)
  %224 = call i32 @ocfs2_journal_dirty(i32* %221, %struct.buffer_head* %223)
  store i32 %224, i32* %16, align 4
  %225 = load i32, i32* %16, align 4
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %230

227:                                              ; preds = %220
  %228 = load i32, i32* %16, align 4
  %229 = call i32 @mlog_errno(i32 %228)
  br label %230

230:                                              ; preds = %227, %220
  %231 = load i32, i32* %18, align 4
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %279

233:                                              ; preds = %230
  %234 = load i32*, i32** %9, align 8
  %235 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %10, align 8
  %236 = load %struct.ocfs2_path*, %struct.ocfs2_path** %11, align 8
  %237 = load %struct.ocfs2_path*, %struct.ocfs2_path** %12, align 8
  %238 = load i32, i32* %13, align 4
  %239 = load %struct.ocfs2_cached_dealloc_ctxt*, %struct.ocfs2_cached_dealloc_ctxt** %14, align 8
  %240 = call i32 @ocfs2_unlink_subtree(i32* %234, %struct.ocfs2_extent_tree* %235, %struct.ocfs2_path* %236, %struct.ocfs2_path* %237, i32 %238, %struct.ocfs2_cached_dealloc_ctxt* %239)
  %241 = load i32*, i32** %9, align 8
  %242 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %10, align 8
  %243 = load i32, i32* %13, align 4
  %244 = load %struct.ocfs2_path*, %struct.ocfs2_path** %11, align 8
  %245 = call i32 @ocfs2_update_edge_lengths(i32* %241, %struct.ocfs2_extent_tree* %242, i32 %243, %struct.ocfs2_path* %244)
  store i32 %245, i32* %16, align 4
  %246 = load i32, i32* %16, align 4
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %251

248:                                              ; preds = %233
  %249 = load i32, i32* %16, align 4
  %250 = call i32 @mlog_errno(i32 %249)
  br label %286

251:                                              ; preds = %233
  %252 = load %struct.ocfs2_path*, %struct.ocfs2_path** %11, align 8
  %253 = call %struct.buffer_head* @path_leaf_bh(%struct.ocfs2_path* %252)
  %254 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %253, i32 0, i32 0
  %255 = load i64, i64* %254, align 8
  %256 = inttoptr i64 %255 to %struct.ocfs2_extent_block*
  store %struct.ocfs2_extent_block* %256, %struct.ocfs2_extent_block** %24, align 8
  %257 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %10, align 8
  %258 = load %struct.ocfs2_extent_block*, %struct.ocfs2_extent_block** %24, align 8
  %259 = getelementptr inbounds %struct.ocfs2_extent_block, %struct.ocfs2_extent_block* %258, i32 0, i32 1
  %260 = load i32, i32* %259, align 8
  %261 = call i32 @le64_to_cpu(i32 %260)
  %262 = call i32 @ocfs2_et_set_last_eb_blk(%struct.ocfs2_extent_tree* %257, i32 %261)
  %263 = load i32, i32* %19, align 4
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %265, label %268

265:                                              ; preds = %251
  %266 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %23, align 8
  %267 = call i32 @ocfs2_remove_empty_extent(%struct.ocfs2_extent_list* %266)
  br label %268

268:                                              ; preds = %265, %251
  %269 = load i32*, i32** %9, align 8
  %270 = load %struct.buffer_head*, %struct.buffer_head** %21, align 8
  %271 = call i32 @ocfs2_journal_dirty(i32* %269, %struct.buffer_head* %270)
  store i32 %271, i32* %16, align 4
  %272 = load i32, i32* %16, align 4
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %274, label %277

274:                                              ; preds = %268
  %275 = load i32, i32* %16, align 4
  %276 = call i32 @mlog_errno(i32 %275)
  br label %277

277:                                              ; preds = %274, %268
  %278 = load i32*, i32** %15, align 8
  store i32 1, i32* %278, align 4
  br label %285

279:                                              ; preds = %230
  %280 = load i32*, i32** %9, align 8
  %281 = load %struct.ocfs2_path*, %struct.ocfs2_path** %11, align 8
  %282 = load %struct.ocfs2_path*, %struct.ocfs2_path** %12, align 8
  %283 = load i32, i32* %13, align 4
  %284 = call i32 @ocfs2_complete_edge_insert(i32* %280, %struct.ocfs2_path* %281, %struct.ocfs2_path* %282, i32 %283)
  br label %285

285:                                              ; preds = %279, %277
  br label %286

286:                                              ; preds = %285, %248, %180, %167, %146, %122, %96
  %287 = load i32, i32* %16, align 4
  store i32 %287, i32* %8, align 4
  br label %288

288:                                              ; preds = %286, %76, %58
  %289 = load i32, i32* %8, align 4
  ret i32 %289
}

declare dso_local %struct.buffer_head* @path_root_bh(%struct.ocfs2_path*) #1

declare dso_local %struct.ocfs2_extent_list* @path_leaf_el(%struct.ocfs2_path*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @ocfs2_is_empty_extent(i32*) #1

declare dso_local %struct.buffer_head* @path_leaf_bh(%struct.ocfs2_path*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @ocfs2_journal_access_eb(i32*, i32, %struct.buffer_head*, i32) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_remove_empty_extent(%struct.ocfs2_extent_list*) #1

declare dso_local i32 @ocfs2_et_root_journal_access(i32*, %struct.ocfs2_extent_tree*, i32) #1

declare dso_local i32 @ocfs2_path_bh_journal_access(i32*, i32, %struct.ocfs2_path*, i32) #1

declare dso_local i32 @path_num_items(%struct.ocfs2_path*) #1

declare dso_local i32 @ocfs2_rotate_leaf(%struct.ocfs2_extent_list*, i32*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @ocfs2_journal_dirty(i32*, %struct.buffer_head*) #1

declare dso_local i32 @ocfs2_unlink_subtree(i32*, %struct.ocfs2_extent_tree*, %struct.ocfs2_path*, %struct.ocfs2_path*, i32, %struct.ocfs2_cached_dealloc_ctxt*) #1

declare dso_local i32 @ocfs2_update_edge_lengths(i32*, %struct.ocfs2_extent_tree*, i32, %struct.ocfs2_path*) #1

declare dso_local i32 @ocfs2_et_set_last_eb_blk(%struct.ocfs2_extent_tree*, i32) #1

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i32 @ocfs2_complete_edge_insert(i32*, %struct.ocfs2_path*, %struct.ocfs2_path*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
