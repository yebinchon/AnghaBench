; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_alloc.c_ocfs2_merge_rec_right.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_alloc.c_ocfs2_merge_rec_right.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_path = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.buffer_head* }
%struct.buffer_head = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.ocfs2_extent_tree = type { i32 }
%struct.ocfs2_extent_rec = type { i32, i32, i32 }
%struct.ocfs2_extent_list = type { %struct.ocfs2_extent_rec*, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocfs2_path*, %struct.TYPE_9__*, %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_rec*, i32)* @ocfs2_merge_rec_right to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_merge_rec_right(%struct.ocfs2_path* %0, %struct.TYPE_9__* %1, %struct.ocfs2_extent_tree* %2, %struct.ocfs2_extent_rec* %3, i32 %4) #0 {
  %6 = alloca %struct.ocfs2_path*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca %struct.ocfs2_extent_tree*, align 8
  %9 = alloca %struct.ocfs2_extent_rec*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.ocfs2_extent_rec*, align 8
  %16 = alloca %struct.ocfs2_extent_rec*, align 8
  %17 = alloca %struct.ocfs2_extent_list*, align 8
  %18 = alloca %struct.ocfs2_path*, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.ocfs2_extent_list*, align 8
  %21 = alloca %struct.buffer_head*, align 8
  %22 = alloca %struct.buffer_head*, align 8
  store %struct.ocfs2_path* %0, %struct.ocfs2_path** %6, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %7, align 8
  store %struct.ocfs2_extent_tree* %2, %struct.ocfs2_extent_tree** %8, align 8
  store %struct.ocfs2_extent_rec* %3, %struct.ocfs2_extent_rec** %9, align 8
  store i32 %4, i32* %10, align 4
  %23 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %9, align 8
  %24 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @le16_to_cpu(i32 %25)
  store i32 %26, i32* %14, align 4
  store %struct.ocfs2_path* null, %struct.ocfs2_path** %18, align 8
  store i32 0, i32* %19, align 4
  %27 = load %struct.ocfs2_path*, %struct.ocfs2_path** %6, align 8
  %28 = call %struct.ocfs2_extent_list* @path_leaf_el(%struct.ocfs2_path* %27)
  store %struct.ocfs2_extent_list* %28, %struct.ocfs2_extent_list** %20, align 8
  %29 = load %struct.ocfs2_path*, %struct.ocfs2_path** %6, align 8
  %30 = call %struct.buffer_head* @path_leaf_bh(%struct.ocfs2_path* %29)
  store %struct.buffer_head* %30, %struct.buffer_head** %21, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %22, align 8
  %31 = load i32, i32* %10, align 4
  %32 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %20, align 8
  %33 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @le16_to_cpu(i32 %34)
  %36 = icmp sge i32 %31, %35
  %37 = zext i1 %36 to i32
  %38 = call i32 @BUG_ON(i32 %37)
  %39 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %20, align 8
  %40 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %39, i32 0, i32 0
  %41 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %40, align 8
  %42 = load i32, i32* %10, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %41, i64 %43
  store %struct.ocfs2_extent_rec* %44, %struct.ocfs2_extent_rec** %15, align 8
  %45 = load i32, i32* %10, align 4
  %46 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %20, align 8
  %47 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @le16_to_cpu(i32 %48)
  %50 = sub nsw i32 %49, 1
  %51 = icmp eq i32 %45, %50
  br i1 %51, label %52, label %204

52:                                               ; preds = %5
  %53 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %20, align 8
  %54 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @le16_to_cpu(i32 %55)
  %57 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %20, align 8
  %58 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @le16_to_cpu(i32 %59)
  %61 = icmp eq i32 %56, %60
  br i1 %61, label %62, label %204

62:                                               ; preds = %52
  %63 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %8, align 8
  %64 = load %struct.ocfs2_path*, %struct.ocfs2_path** %6, align 8
  %65 = call i32 @ocfs2_get_right_path(%struct.ocfs2_extent_tree* %63, %struct.ocfs2_path* %64, %struct.ocfs2_path** %18)
  store i32 %65, i32* %11, align 4
  %66 = load i32, i32* %11, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %62
  %69 = load i32, i32* %11, align 4
  %70 = call i32 @mlog_errno(i32 %69)
  br label %292

71:                                               ; preds = %62
  %72 = load %struct.ocfs2_path*, %struct.ocfs2_path** %18, align 8
  %73 = call %struct.ocfs2_extent_list* @path_leaf_el(%struct.ocfs2_path* %72)
  store %struct.ocfs2_extent_list* %73, %struct.ocfs2_extent_list** %17, align 8
  %74 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %17, align 8
  %75 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @le16_to_cpu(i32 %76)
  store i32 %77, i32* %12, align 4
  %78 = load i32, i32* %12, align 4
  %79 = icmp sle i32 %78, 0
  %80 = zext i1 %79 to i32
  %81 = call i32 @BUG_ON(i32 %80)
  %82 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %17, align 8
  %83 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %82, i32 0, i32 0
  %84 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %83, align 8
  %85 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %84, i64 0
  store %struct.ocfs2_extent_rec* %85, %struct.ocfs2_extent_rec** %16, align 8
  %86 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %16, align 8
  %87 = call i64 @ocfs2_is_empty_extent(%struct.ocfs2_extent_rec* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %98

89:                                               ; preds = %71
  %90 = load i32, i32* %12, align 4
  %91 = icmp sle i32 %90, 1
  %92 = zext i1 %91 to i32
  %93 = call i32 @BUG_ON(i32 %92)
  %94 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %17, align 8
  %95 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %94, i32 0, i32 0
  %96 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %95, align 8
  %97 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %96, i64 1
  store %struct.ocfs2_extent_rec* %97, %struct.ocfs2_extent_rec** %16, align 8
  br label %98

98:                                               ; preds = %89, %71
  %99 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %15, align 8
  %100 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = call i64 @le32_to_cpu(i32 %101)
  %103 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %15, align 8
  %104 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @le16_to_cpu(i32 %105)
  %107 = sext i32 %106 to i64
  %108 = add nsw i64 %102, %107
  %109 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %16, align 8
  %110 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  %112 = call i64 @le32_to_cpu(i32 %111)
  %113 = icmp ne i64 %108, %112
  %114 = zext i1 %113 to i32
  %115 = call i32 @BUG_ON(i32 %114)
  %116 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %8, align 8
  %117 = load %struct.ocfs2_path*, %struct.ocfs2_path** %6, align 8
  %118 = load %struct.ocfs2_path*, %struct.ocfs2_path** %18, align 8
  %119 = call i32 @ocfs2_find_subtree_root(%struct.ocfs2_extent_tree* %116, %struct.ocfs2_path* %117, %struct.ocfs2_path* %118)
  store i32 %119, i32* %19, align 4
  %120 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %121 = load i32, i32* %19, align 4
  %122 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.ocfs2_path*, %struct.ocfs2_path** %18, align 8
  %126 = call i32 @ocfs2_extend_rotate_transaction(%struct.TYPE_9__* %120, i32 %121, i32 %124, %struct.ocfs2_path* %125)
  store i32 %126, i32* %11, align 4
  %127 = load i32, i32* %11, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %132

129:                                              ; preds = %98
  %130 = load i32, i32* %11, align 4
  %131 = call i32 @mlog_errno(i32 %130)
  br label %292

132:                                              ; preds = %98
  %133 = load %struct.ocfs2_path*, %struct.ocfs2_path** %6, align 8
  %134 = getelementptr inbounds %struct.ocfs2_path, %struct.ocfs2_path* %133, i32 0, i32 0
  %135 = load %struct.TYPE_8__*, %struct.TYPE_8__** %134, align 8
  %136 = load i32, i32* %19, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 0
  %140 = load %struct.buffer_head*, %struct.buffer_head** %139, align 8
  store %struct.buffer_head* %140, %struct.buffer_head** %22, align 8
  %141 = load %struct.buffer_head*, %struct.buffer_head** %22, align 8
  %142 = load %struct.ocfs2_path*, %struct.ocfs2_path** %18, align 8
  %143 = getelementptr inbounds %struct.ocfs2_path, %struct.ocfs2_path* %142, i32 0, i32 0
  %144 = load %struct.TYPE_8__*, %struct.TYPE_8__** %143, align 8
  %145 = load i32, i32* %19, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %144, i64 %146
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %147, i32 0, i32 0
  %149 = load %struct.buffer_head*, %struct.buffer_head** %148, align 8
  %150 = icmp ne %struct.buffer_head* %141, %149
  %151 = zext i1 %150 to i32
  %152 = call i32 @BUG_ON(i32 %151)
  %153 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %154 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %8, align 8
  %155 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.ocfs2_path*, %struct.ocfs2_path** %18, align 8
  %158 = load i32, i32* %19, align 4
  %159 = call i32 @ocfs2_path_bh_journal_access(%struct.TYPE_9__* %153, i32 %156, %struct.ocfs2_path* %157, i32 %158)
  store i32 %159, i32* %11, align 4
  %160 = load i32, i32* %11, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %165

162:                                              ; preds = %132
  %163 = load i32, i32* %11, align 4
  %164 = call i32 @mlog_errno(i32 %163)
  br label %292

165:                                              ; preds = %132
  %166 = load i32, i32* %19, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %13, align 4
  br label %168

168:                                              ; preds = %200, %165
  %169 = load i32, i32* %13, align 4
  %170 = load %struct.ocfs2_path*, %struct.ocfs2_path** %18, align 8
  %171 = call i32 @path_num_items(%struct.ocfs2_path* %170)
  %172 = icmp slt i32 %169, %171
  br i1 %172, label %173, label %203

173:                                              ; preds = %168
  %174 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %175 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %8, align 8
  %176 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = load %struct.ocfs2_path*, %struct.ocfs2_path** %18, align 8
  %179 = load i32, i32* %13, align 4
  %180 = call i32 @ocfs2_path_bh_journal_access(%struct.TYPE_9__* %174, i32 %177, %struct.ocfs2_path* %178, i32 %179)
  store i32 %180, i32* %11, align 4
  %181 = load i32, i32* %11, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %186

183:                                              ; preds = %173
  %184 = load i32, i32* %11, align 4
  %185 = call i32 @mlog_errno(i32 %184)
  br label %292

186:                                              ; preds = %173
  %187 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %188 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %8, align 8
  %189 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = load %struct.ocfs2_path*, %struct.ocfs2_path** %6, align 8
  %192 = load i32, i32* %13, align 4
  %193 = call i32 @ocfs2_path_bh_journal_access(%struct.TYPE_9__* %187, i32 %190, %struct.ocfs2_path* %191, i32 %192)
  store i32 %193, i32* %11, align 4
  %194 = load i32, i32* %11, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %199

196:                                              ; preds = %186
  %197 = load i32, i32* %11, align 4
  %198 = call i32 @mlog_errno(i32 %197)
  br label %292

199:                                              ; preds = %186
  br label %200

200:                                              ; preds = %199
  %201 = load i32, i32* %13, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %13, align 4
  br label %168

203:                                              ; preds = %168
  br label %221

204:                                              ; preds = %52, %5
  %205 = load i32, i32* %10, align 4
  %206 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %20, align 8
  %207 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 8
  %209 = call i32 @le16_to_cpu(i32 %208)
  %210 = sub nsw i32 %209, 1
  %211 = icmp eq i32 %205, %210
  %212 = zext i1 %211 to i32
  %213 = call i32 @BUG_ON(i32 %212)
  %214 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %20, align 8
  %215 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %214, i32 0, i32 0
  %216 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %215, align 8
  %217 = load i32, i32* %10, align 4
  %218 = add nsw i32 %217, 1
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %216, i64 %219
  store %struct.ocfs2_extent_rec* %220, %struct.ocfs2_extent_rec** %16, align 8
  br label %221

221:                                              ; preds = %204, %203
  %222 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %223 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %8, align 8
  %224 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 4
  %226 = load %struct.ocfs2_path*, %struct.ocfs2_path** %6, align 8
  %227 = load %struct.ocfs2_path*, %struct.ocfs2_path** %6, align 8
  %228 = call i32 @path_num_items(%struct.ocfs2_path* %227)
  %229 = sub nsw i32 %228, 1
  %230 = call i32 @ocfs2_path_bh_journal_access(%struct.TYPE_9__* %222, i32 %225, %struct.ocfs2_path* %226, i32 %229)
  store i32 %230, i32* %11, align 4
  %231 = load i32, i32* %11, align 4
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %236

233:                                              ; preds = %221
  %234 = load i32, i32* %11, align 4
  %235 = call i32 @mlog_errno(i32 %234)
  br label %292

236:                                              ; preds = %221
  %237 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %15, align 8
  %238 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %237, i32 0, i32 0
  %239 = load i32, i32* %14, align 4
  %240 = sub i32 0, %239
  %241 = call i32 @le16_add_cpu(i32* %238, i32 %240)
  %242 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %16, align 8
  %243 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %242, i32 0, i32 2
  %244 = load i32, i32* %14, align 4
  %245 = sub i32 0, %244
  %246 = call i32 @le32_add_cpu(i32* %243, i32 %245)
  %247 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %16, align 8
  %248 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %247, i32 0, i32 1
  %249 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %8, align 8
  %250 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 4
  %252 = call i32 @ocfs2_metadata_cache_get_super(i32 %251)
  %253 = load i32, i32* %14, align 4
  %254 = call i32 @ocfs2_clusters_to_blocks(i32 %252, i32 %253)
  %255 = sub nsw i32 0, %254
  %256 = call i32 @le64_add_cpu(i32* %248, i32 %255)
  %257 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %16, align 8
  %258 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %257, i32 0, i32 0
  %259 = load i32, i32* %14, align 4
  %260 = call i32 @le16_add_cpu(i32* %258, i32 %259)
  %261 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %20, align 8
  %262 = load i32, i32* %10, align 4
  %263 = call i32 @ocfs2_cleanup_merge(%struct.ocfs2_extent_list* %261, i32 %262)
  %264 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %265 = load %struct.buffer_head*, %struct.buffer_head** %21, align 8
  %266 = call i32 @ocfs2_journal_dirty(%struct.TYPE_9__* %264, %struct.buffer_head* %265)
  store i32 %266, i32* %11, align 4
  %267 = load i32, i32* %11, align 4
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %269, label %272

269:                                              ; preds = %236
  %270 = load i32, i32* %11, align 4
  %271 = call i32 @mlog_errno(i32 %270)
  br label %272

272:                                              ; preds = %269, %236
  %273 = load %struct.ocfs2_path*, %struct.ocfs2_path** %18, align 8
  %274 = icmp ne %struct.ocfs2_path* %273, null
  br i1 %274, label %275, label %291

275:                                              ; preds = %272
  %276 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %277 = load %struct.ocfs2_path*, %struct.ocfs2_path** %18, align 8
  %278 = call %struct.buffer_head* @path_leaf_bh(%struct.ocfs2_path* %277)
  %279 = call i32 @ocfs2_journal_dirty(%struct.TYPE_9__* %276, %struct.buffer_head* %278)
  store i32 %279, i32* %11, align 4
  %280 = load i32, i32* %11, align 4
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %282, label %285

282:                                              ; preds = %275
  %283 = load i32, i32* %11, align 4
  %284 = call i32 @mlog_errno(i32 %283)
  br label %285

285:                                              ; preds = %282, %275
  %286 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %287 = load %struct.ocfs2_path*, %struct.ocfs2_path** %6, align 8
  %288 = load %struct.ocfs2_path*, %struct.ocfs2_path** %18, align 8
  %289 = load i32, i32* %19, align 4
  %290 = call i32 @ocfs2_complete_edge_insert(%struct.TYPE_9__* %286, %struct.ocfs2_path* %287, %struct.ocfs2_path* %288, i32 %289)
  br label %291

291:                                              ; preds = %285, %272
  br label %292

292:                                              ; preds = %291, %233, %196, %183, %162, %129, %68
  %293 = load %struct.ocfs2_path*, %struct.ocfs2_path** %18, align 8
  %294 = icmp ne %struct.ocfs2_path* %293, null
  br i1 %294, label %295, label %298

295:                                              ; preds = %292
  %296 = load %struct.ocfs2_path*, %struct.ocfs2_path** %18, align 8
  %297 = call i32 @ocfs2_free_path(%struct.ocfs2_path* %296)
  br label %298

298:                                              ; preds = %295, %292
  %299 = load i32, i32* %11, align 4
  ret i32 %299
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local %struct.ocfs2_extent_list* @path_leaf_el(%struct.ocfs2_path*) #1

declare dso_local %struct.buffer_head* @path_leaf_bh(%struct.ocfs2_path*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @ocfs2_get_right_path(%struct.ocfs2_extent_tree*, %struct.ocfs2_path*, %struct.ocfs2_path**) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i64 @ocfs2_is_empty_extent(%struct.ocfs2_extent_rec*) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @ocfs2_find_subtree_root(%struct.ocfs2_extent_tree*, %struct.ocfs2_path*, %struct.ocfs2_path*) #1

declare dso_local i32 @ocfs2_extend_rotate_transaction(%struct.TYPE_9__*, i32, i32, %struct.ocfs2_path*) #1

declare dso_local i32 @ocfs2_path_bh_journal_access(%struct.TYPE_9__*, i32, %struct.ocfs2_path*, i32) #1

declare dso_local i32 @path_num_items(%struct.ocfs2_path*) #1

declare dso_local i32 @le16_add_cpu(i32*, i32) #1

declare dso_local i32 @le32_add_cpu(i32*, i32) #1

declare dso_local i32 @le64_add_cpu(i32*, i32) #1

declare dso_local i32 @ocfs2_clusters_to_blocks(i32, i32) #1

declare dso_local i32 @ocfs2_metadata_cache_get_super(i32) #1

declare dso_local i32 @ocfs2_cleanup_merge(%struct.ocfs2_extent_list*, i32) #1

declare dso_local i32 @ocfs2_journal_dirty(%struct.TYPE_9__*, %struct.buffer_head*) #1

declare dso_local i32 @ocfs2_complete_edge_insert(%struct.TYPE_9__*, %struct.ocfs2_path*, %struct.ocfs2_path*, i32) #1

declare dso_local i32 @ocfs2_free_path(%struct.ocfs2_path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
