; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_ctree.c_btrfs_del_items.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_ctree.c_btrfs_del_items.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_trans_handle = type { i32 }
%struct.btrfs_root = type { %struct.extent_buffer* }
%struct.extent_buffer = type { i32 }
%struct.btrfs_path = type { i32*, %struct.extent_buffer** }
%struct.btrfs_item = type { i32 }
%struct.btrfs_map_token = type { i32 }
%struct.btrfs_disk_key = type { i32 }

@ENOSPC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btrfs_del_items(%struct.btrfs_trans_handle* %0, %struct.btrfs_root* %1, %struct.btrfs_path* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.btrfs_trans_handle*, align 8
  %7 = alloca %struct.btrfs_root*, align 8
  %8 = alloca %struct.btrfs_path*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.extent_buffer*, align 8
  %12 = alloca %struct.btrfs_item*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.btrfs_map_token, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.btrfs_disk_key, align 4
  store %struct.btrfs_trans_handle* %0, %struct.btrfs_trans_handle** %6, align 8
  store %struct.btrfs_root* %1, %struct.btrfs_root** %7, align 8
  store %struct.btrfs_path* %2, %struct.btrfs_path** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %24 = call i32 @btrfs_init_map_token(%struct.btrfs_map_token* %19)
  %25 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %26 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %25, i32 0, i32 1
  %27 = load %struct.extent_buffer**, %struct.extent_buffer*** %26, align 8
  %28 = getelementptr inbounds %struct.extent_buffer*, %struct.extent_buffer** %27, i64 0
  %29 = load %struct.extent_buffer*, %struct.extent_buffer** %28, align 8
  store %struct.extent_buffer* %29, %struct.extent_buffer** %11, align 8
  %30 = load %struct.extent_buffer*, %struct.extent_buffer** %11, align 8
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* %10, align 4
  %33 = add nsw i32 %31, %32
  %34 = sub nsw i32 %33, 1
  %35 = call i32 @btrfs_item_offset_nr(%struct.extent_buffer* %30, i32 %34)
  store i32 %35, i32* %13, align 4
  store i32 0, i32* %17, align 4
  br label %36

36:                                               ; preds = %50, %5
  %37 = load i32, i32* %17, align 4
  %38 = load i32, i32* %10, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %53

40:                                               ; preds = %36
  %41 = load %struct.extent_buffer*, %struct.extent_buffer** %11, align 8
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* %17, align 4
  %44 = add nsw i32 %42, %43
  %45 = call i64 @btrfs_item_size_nr(%struct.extent_buffer* %41, i32 %44)
  %46 = load i32, i32* %14, align 4
  %47 = sext i32 %46 to i64
  %48 = add nsw i64 %47, %45
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %14, align 4
  br label %50

50:                                               ; preds = %40
  %51 = load i32, i32* %17, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %17, align 4
  br label %36

53:                                               ; preds = %36
  %54 = load %struct.extent_buffer*, %struct.extent_buffer** %11, align 8
  %55 = call i64 @btrfs_header_nritems(%struct.extent_buffer* %54)
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* %18, align 4
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* %10, align 4
  %59 = add nsw i32 %57, %58
  %60 = load i32, i32* %18, align 4
  %61 = icmp ne i32 %59, %60
  br i1 %61, label %62, label %124

62:                                               ; preds = %53
  %63 = load %struct.btrfs_root*, %struct.btrfs_root** %7, align 8
  %64 = load %struct.extent_buffer*, %struct.extent_buffer** %11, align 8
  %65 = call i32 @leaf_data_end(%struct.btrfs_root* %63, %struct.extent_buffer* %64)
  store i32 %65, i32* %20, align 4
  %66 = load %struct.extent_buffer*, %struct.extent_buffer** %11, align 8
  %67 = load %struct.extent_buffer*, %struct.extent_buffer** %11, align 8
  %68 = call i64 @btrfs_leaf_data(%struct.extent_buffer* %67)
  %69 = load i32, i32* %20, align 4
  %70 = sext i32 %69 to i64
  %71 = add nsw i64 %68, %70
  %72 = load i32, i32* %14, align 4
  %73 = sext i32 %72 to i64
  %74 = add nsw i64 %71, %73
  %75 = load %struct.extent_buffer*, %struct.extent_buffer** %11, align 8
  %76 = call i64 @btrfs_leaf_data(%struct.extent_buffer* %75)
  %77 = load i32, i32* %20, align 4
  %78 = sext i32 %77 to i64
  %79 = add nsw i64 %76, %78
  %80 = load i32, i32* %13, align 4
  %81 = load i32, i32* %20, align 4
  %82 = sub nsw i32 %80, %81
  %83 = call i32 @memmove_extent_buffer(%struct.extent_buffer* %66, i64 %74, i64 %79, i32 %82)
  %84 = load i32, i32* %9, align 4
  %85 = load i32, i32* %10, align 4
  %86 = add nsw i32 %84, %85
  store i32 %86, i32* %17, align 4
  br label %87

87:                                               ; preds = %104, %62
  %88 = load i32, i32* %17, align 4
  %89 = load i32, i32* %18, align 4
  %90 = icmp slt i32 %88, %89
  br i1 %90, label %91, label %107

91:                                               ; preds = %87
  %92 = load %struct.extent_buffer*, %struct.extent_buffer** %11, align 8
  %93 = load i32, i32* %17, align 4
  %94 = call %struct.btrfs_item* @btrfs_item_nr(%struct.extent_buffer* %92, i32 %93)
  store %struct.btrfs_item* %94, %struct.btrfs_item** %12, align 8
  %95 = load %struct.extent_buffer*, %struct.extent_buffer** %11, align 8
  %96 = load %struct.btrfs_item*, %struct.btrfs_item** %12, align 8
  %97 = call i32 @btrfs_token_item_offset(%struct.extent_buffer* %95, %struct.btrfs_item* %96, %struct.btrfs_map_token* %19)
  store i32 %97, i32* %21, align 4
  %98 = load %struct.extent_buffer*, %struct.extent_buffer** %11, align 8
  %99 = load %struct.btrfs_item*, %struct.btrfs_item** %12, align 8
  %100 = load i32, i32* %21, align 4
  %101 = load i32, i32* %14, align 4
  %102 = add nsw i32 %100, %101
  %103 = call i32 @btrfs_set_token_item_offset(%struct.extent_buffer* %98, %struct.btrfs_item* %99, i32 %102, %struct.btrfs_map_token* %19)
  br label %104

104:                                              ; preds = %91
  %105 = load i32, i32* %17, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %17, align 4
  br label %87

107:                                              ; preds = %87
  %108 = load %struct.extent_buffer*, %struct.extent_buffer** %11, align 8
  %109 = load i32, i32* %9, align 4
  %110 = call i64 @btrfs_item_nr_offset(i32 %109)
  %111 = load i32, i32* %9, align 4
  %112 = load i32, i32* %10, align 4
  %113 = add nsw i32 %111, %112
  %114 = call i64 @btrfs_item_nr_offset(i32 %113)
  %115 = load i32, i32* %18, align 4
  %116 = load i32, i32* %9, align 4
  %117 = sub nsw i32 %115, %116
  %118 = load i32, i32* %10, align 4
  %119 = sub nsw i32 %117, %118
  %120 = sext i32 %119 to i64
  %121 = mul i64 4, %120
  %122 = trunc i64 %121 to i32
  %123 = call i32 @memmove_extent_buffer(%struct.extent_buffer* %108, i64 %110, i64 %114, i32 %122)
  br label %124

124:                                              ; preds = %107, %53
  %125 = load %struct.extent_buffer*, %struct.extent_buffer** %11, align 8
  %126 = load i32, i32* %18, align 4
  %127 = load i32, i32* %10, align 4
  %128 = sub nsw i32 %126, %127
  %129 = call i32 @btrfs_set_header_nritems(%struct.extent_buffer* %125, i32 %128)
  %130 = load i32, i32* %10, align 4
  %131 = load i32, i32* %18, align 4
  %132 = sub nsw i32 %131, %130
  store i32 %132, i32* %18, align 4
  %133 = load i32, i32* %18, align 4
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %157

135:                                              ; preds = %124
  %136 = load %struct.extent_buffer*, %struct.extent_buffer** %11, align 8
  %137 = load %struct.btrfs_root*, %struct.btrfs_root** %7, align 8
  %138 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %137, i32 0, i32 0
  %139 = load %struct.extent_buffer*, %struct.extent_buffer** %138, align 8
  %140 = icmp eq %struct.extent_buffer* %136, %139
  br i1 %140, label %141, label %144

141:                                              ; preds = %135
  %142 = load %struct.extent_buffer*, %struct.extent_buffer** %11, align 8
  %143 = call i32 @btrfs_set_header_level(%struct.extent_buffer* %142, i32 0)
  br label %156

144:                                              ; preds = %135
  %145 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %146 = call i32 @btrfs_set_path_blocking(%struct.btrfs_path* %145)
  %147 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %6, align 8
  %148 = load %struct.btrfs_root*, %struct.btrfs_root** %7, align 8
  %149 = load %struct.extent_buffer*, %struct.extent_buffer** %11, align 8
  %150 = call i32 @clean_tree_block(%struct.btrfs_trans_handle* %147, %struct.btrfs_root* %148, %struct.extent_buffer* %149)
  %151 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %6, align 8
  %152 = load %struct.btrfs_root*, %struct.btrfs_root** %7, align 8
  %153 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %154 = load %struct.extent_buffer*, %struct.extent_buffer** %11, align 8
  %155 = call i32 @btrfs_del_leaf(%struct.btrfs_trans_handle* %151, %struct.btrfs_root* %152, %struct.btrfs_path* %153, %struct.extent_buffer* %154)
  br label %156

156:                                              ; preds = %144, %141
  br label %262

157:                                              ; preds = %124
  %158 = load %struct.extent_buffer*, %struct.extent_buffer** %11, align 8
  %159 = load i32, i32* %18, align 4
  %160 = call i32 @leaf_space_used(%struct.extent_buffer* %158, i32 0, i32 %159)
  store i32 %160, i32* %22, align 4
  %161 = load i32, i32* %9, align 4
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %163, label %170

163:                                              ; preds = %157
  %164 = load %struct.extent_buffer*, %struct.extent_buffer** %11, align 8
  %165 = call i32 @btrfs_item_key(%struct.extent_buffer* %164, %struct.btrfs_disk_key* %23, i32 0)
  %166 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %6, align 8
  %167 = load %struct.btrfs_root*, %struct.btrfs_root** %7, align 8
  %168 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %169 = call i32 @fixup_low_keys(%struct.btrfs_trans_handle* %166, %struct.btrfs_root* %167, %struct.btrfs_path* %168, %struct.btrfs_disk_key* %23, i32 1)
  br label %170

170:                                              ; preds = %163, %157
  %171 = load i32, i32* %22, align 4
  %172 = load %struct.btrfs_root*, %struct.btrfs_root** %7, align 8
  %173 = call i32 @BTRFS_LEAF_DATA_SIZE(%struct.btrfs_root* %172)
  %174 = sdiv i32 %173, 3
  %175 = icmp slt i32 %171, %174
  br i1 %175, label %176, label %258

176:                                              ; preds = %170
  %177 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %178 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %177, i32 0, i32 0
  %179 = load i32*, i32** %178, align 8
  %180 = getelementptr inbounds i32, i32* %179, i64 1
  %181 = load i32, i32* %180, align 4
  store i32 %181, i32* %9, align 4
  %182 = load %struct.extent_buffer*, %struct.extent_buffer** %11, align 8
  %183 = call i32 @extent_buffer_get(%struct.extent_buffer* %182)
  %184 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %185 = call i32 @btrfs_set_path_blocking(%struct.btrfs_path* %184)
  %186 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %6, align 8
  %187 = load %struct.btrfs_root*, %struct.btrfs_root** %7, align 8
  %188 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %189 = call i32 @push_leaf_left(%struct.btrfs_trans_handle* %186, %struct.btrfs_root* %187, %struct.btrfs_path* %188, i32 1, i32 1, i32 1, i32 -1)
  store i32 %189, i32* %16, align 4
  %190 = load i32, i32* %16, align 4
  %191 = icmp slt i32 %190, 0
  br i1 %191, label %192, label %199

192:                                              ; preds = %176
  %193 = load i32, i32* %16, align 4
  %194 = load i32, i32* @ENOSPC, align 4
  %195 = sub nsw i32 0, %194
  %196 = icmp ne i32 %193, %195
  br i1 %196, label %197, label %199

197:                                              ; preds = %192
  %198 = load i32, i32* %16, align 4
  store i32 %198, i32* %15, align 4
  br label %199

199:                                              ; preds = %197, %192, %176
  %200 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %201 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %200, i32 0, i32 1
  %202 = load %struct.extent_buffer**, %struct.extent_buffer*** %201, align 8
  %203 = getelementptr inbounds %struct.extent_buffer*, %struct.extent_buffer** %202, i64 0
  %204 = load %struct.extent_buffer*, %struct.extent_buffer** %203, align 8
  %205 = load %struct.extent_buffer*, %struct.extent_buffer** %11, align 8
  %206 = icmp eq %struct.extent_buffer* %204, %205
  br i1 %206, label %207, label %226

207:                                              ; preds = %199
  %208 = load %struct.extent_buffer*, %struct.extent_buffer** %11, align 8
  %209 = call i64 @btrfs_header_nritems(%struct.extent_buffer* %208)
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %211, label %226

211:                                              ; preds = %207
  %212 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %6, align 8
  %213 = load %struct.btrfs_root*, %struct.btrfs_root** %7, align 8
  %214 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %215 = call i32 @push_leaf_right(%struct.btrfs_trans_handle* %212, %struct.btrfs_root* %213, %struct.btrfs_path* %214, i32 1, i32 1, i32 1, i32 0)
  store i32 %215, i32* %16, align 4
  %216 = load i32, i32* %16, align 4
  %217 = icmp slt i32 %216, 0
  br i1 %217, label %218, label %225

218:                                              ; preds = %211
  %219 = load i32, i32* %16, align 4
  %220 = load i32, i32* @ENOSPC, align 4
  %221 = sub nsw i32 0, %220
  %222 = icmp ne i32 %219, %221
  br i1 %222, label %223, label %225

223:                                              ; preds = %218
  %224 = load i32, i32* %16, align 4
  store i32 %224, i32* %15, align 4
  br label %225

225:                                              ; preds = %223, %218, %211
  br label %226

226:                                              ; preds = %225, %207, %199
  %227 = load %struct.extent_buffer*, %struct.extent_buffer** %11, align 8
  %228 = call i64 @btrfs_header_nritems(%struct.extent_buffer* %227)
  %229 = icmp eq i64 %228, 0
  br i1 %229, label %230, label %243

230:                                              ; preds = %226
  %231 = load i32, i32* %9, align 4
  %232 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %233 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %232, i32 0, i32 0
  %234 = load i32*, i32** %233, align 8
  %235 = getelementptr inbounds i32, i32* %234, i64 1
  store i32 %231, i32* %235, align 4
  %236 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %6, align 8
  %237 = load %struct.btrfs_root*, %struct.btrfs_root** %7, align 8
  %238 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %239 = load %struct.extent_buffer*, %struct.extent_buffer** %11, align 8
  %240 = call i32 @btrfs_del_leaf(%struct.btrfs_trans_handle* %236, %struct.btrfs_root* %237, %struct.btrfs_path* %238, %struct.extent_buffer* %239)
  %241 = load %struct.extent_buffer*, %struct.extent_buffer** %11, align 8
  %242 = call i32 @free_extent_buffer(%struct.extent_buffer* %241)
  store i32 0, i32* %15, align 4
  br label %257

243:                                              ; preds = %226
  %244 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %245 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %244, i32 0, i32 1
  %246 = load %struct.extent_buffer**, %struct.extent_buffer*** %245, align 8
  %247 = getelementptr inbounds %struct.extent_buffer*, %struct.extent_buffer** %246, i64 0
  %248 = load %struct.extent_buffer*, %struct.extent_buffer** %247, align 8
  %249 = load %struct.extent_buffer*, %struct.extent_buffer** %11, align 8
  %250 = icmp eq %struct.extent_buffer* %248, %249
  br i1 %250, label %251, label %254

251:                                              ; preds = %243
  %252 = load %struct.extent_buffer*, %struct.extent_buffer** %11, align 8
  %253 = call i32 @btrfs_mark_buffer_dirty(%struct.extent_buffer* %252)
  br label %254

254:                                              ; preds = %251, %243
  %255 = load %struct.extent_buffer*, %struct.extent_buffer** %11, align 8
  %256 = call i32 @free_extent_buffer(%struct.extent_buffer* %255)
  br label %257

257:                                              ; preds = %254, %230
  br label %261

258:                                              ; preds = %170
  %259 = load %struct.extent_buffer*, %struct.extent_buffer** %11, align 8
  %260 = call i32 @btrfs_mark_buffer_dirty(%struct.extent_buffer* %259)
  br label %261

261:                                              ; preds = %258, %257
  br label %262

262:                                              ; preds = %261, %156
  %263 = load i32, i32* %15, align 4
  ret i32 %263
}

declare dso_local i32 @btrfs_init_map_token(%struct.btrfs_map_token*) #1

declare dso_local i32 @btrfs_item_offset_nr(%struct.extent_buffer*, i32) #1

declare dso_local i64 @btrfs_item_size_nr(%struct.extent_buffer*, i32) #1

declare dso_local i64 @btrfs_header_nritems(%struct.extent_buffer*) #1

declare dso_local i32 @leaf_data_end(%struct.btrfs_root*, %struct.extent_buffer*) #1

declare dso_local i32 @memmove_extent_buffer(%struct.extent_buffer*, i64, i64, i32) #1

declare dso_local i64 @btrfs_leaf_data(%struct.extent_buffer*) #1

declare dso_local %struct.btrfs_item* @btrfs_item_nr(%struct.extent_buffer*, i32) #1

declare dso_local i32 @btrfs_token_item_offset(%struct.extent_buffer*, %struct.btrfs_item*, %struct.btrfs_map_token*) #1

declare dso_local i32 @btrfs_set_token_item_offset(%struct.extent_buffer*, %struct.btrfs_item*, i32, %struct.btrfs_map_token*) #1

declare dso_local i64 @btrfs_item_nr_offset(i32) #1

declare dso_local i32 @btrfs_set_header_nritems(%struct.extent_buffer*, i32) #1

declare dso_local i32 @btrfs_set_header_level(%struct.extent_buffer*, i32) #1

declare dso_local i32 @btrfs_set_path_blocking(%struct.btrfs_path*) #1

declare dso_local i32 @clean_tree_block(%struct.btrfs_trans_handle*, %struct.btrfs_root*, %struct.extent_buffer*) #1

declare dso_local i32 @btrfs_del_leaf(%struct.btrfs_trans_handle*, %struct.btrfs_root*, %struct.btrfs_path*, %struct.extent_buffer*) #1

declare dso_local i32 @leaf_space_used(%struct.extent_buffer*, i32, i32) #1

declare dso_local i32 @btrfs_item_key(%struct.extent_buffer*, %struct.btrfs_disk_key*, i32) #1

declare dso_local i32 @fixup_low_keys(%struct.btrfs_trans_handle*, %struct.btrfs_root*, %struct.btrfs_path*, %struct.btrfs_disk_key*, i32) #1

declare dso_local i32 @BTRFS_LEAF_DATA_SIZE(%struct.btrfs_root*) #1

declare dso_local i32 @extent_buffer_get(%struct.extent_buffer*) #1

declare dso_local i32 @push_leaf_left(%struct.btrfs_trans_handle*, %struct.btrfs_root*, %struct.btrfs_path*, i32, i32, i32, i32) #1

declare dso_local i32 @push_leaf_right(%struct.btrfs_trans_handle*, %struct.btrfs_root*, %struct.btrfs_path*, i32, i32, i32, i32) #1

declare dso_local i32 @free_extent_buffer(%struct.extent_buffer*) #1

declare dso_local i32 @btrfs_mark_buffer_dirty(%struct.extent_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
