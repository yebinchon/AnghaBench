; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext3/extr_namei.c_do_split.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext3/extr_namei.c_do_split.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ext3_dir_entry_2 = type { i8* }
%struct.inode = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.buffer_head = type { i8* }
%struct.dx_frame = type { i32, %struct.buffer_head*, i32 }
%struct.dx_hash_info = type { i64 }
%struct.dx_map_entry = type { i32, i64 }

@.str = private unnamed_addr constant [17 x i8] c"get_write_access\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Split block %i at %x, %i/%i\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"frame\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ext3_dir_entry_2* (i32*, %struct.inode*, %struct.buffer_head**, %struct.dx_frame*, %struct.dx_hash_info*, i32*)* @do_split to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ext3_dir_entry_2* @do_split(i32* %0, %struct.inode* %1, %struct.buffer_head** %2, %struct.dx_frame* %3, %struct.dx_hash_info* %4, i32* %5) #0 {
  %7 = alloca %struct.ext3_dir_entry_2*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca %struct.buffer_head**, align 8
  %11 = alloca %struct.dx_frame*, align 8
  %12 = alloca %struct.dx_hash_info*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.buffer_head*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca %struct.dx_map_entry*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca %struct.ext3_dir_entry_2*, align 8
  %27 = alloca %struct.ext3_dir_entry_2*, align 8
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store %struct.inode* %1, %struct.inode** %9, align 8
  store %struct.buffer_head** %2, %struct.buffer_head*** %10, align 8
  store %struct.dx_frame* %3, %struct.dx_frame** %11, align 8
  store %struct.dx_hash_info* %4, %struct.dx_hash_info** %12, align 8
  store i32* %5, i32** %13, align 8
  %30 = load %struct.inode*, %struct.inode** %9, align 8
  %31 = getelementptr inbounds %struct.inode, %struct.inode* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %14, align 4
  %35 = load %struct.buffer_head**, %struct.buffer_head*** %10, align 8
  %36 = load %struct.buffer_head*, %struct.buffer_head** %35, align 8
  %37 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  store i8* %38, i8** %21, align 8
  store %struct.ext3_dir_entry_2* null, %struct.ext3_dir_entry_2** %26, align 8
  store i32 0, i32* %28, align 4
  %39 = load i32*, i32** %8, align 8
  %40 = load %struct.inode*, %struct.inode** %9, align 8
  %41 = call %struct.buffer_head* @ext3_append(i32* %39, %struct.inode* %40, i64* %18, i32* %28)
  store %struct.buffer_head* %41, %struct.buffer_head** %17, align 8
  %42 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  %43 = icmp ne %struct.buffer_head* %42, null
  br i1 %43, label %49, label %44

44:                                               ; preds = %6
  %45 = load %struct.buffer_head**, %struct.buffer_head*** %10, align 8
  %46 = load %struct.buffer_head*, %struct.buffer_head** %45, align 8
  %47 = call i32 @brelse(%struct.buffer_head* %46)
  %48 = load %struct.buffer_head**, %struct.buffer_head*** %10, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %48, align 8
  br label %266

49:                                               ; preds = %6
  %50 = load %struct.buffer_head**, %struct.buffer_head*** %10, align 8
  %51 = load %struct.buffer_head*, %struct.buffer_head** %50, align 8
  %52 = call i32 @BUFFER_TRACE(%struct.buffer_head* %51, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %53 = load i32*, i32** %8, align 8
  %54 = load %struct.buffer_head**, %struct.buffer_head*** %10, align 8
  %55 = load %struct.buffer_head*, %struct.buffer_head** %54, align 8
  %56 = call i32 @ext3_journal_get_write_access(i32* %53, %struct.buffer_head* %55)
  store i32 %56, i32* %28, align 4
  %57 = load i32, i32* %28, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %49
  br label %254

60:                                               ; preds = %49
  %61 = load %struct.dx_frame*, %struct.dx_frame** %11, align 8
  %62 = getelementptr inbounds %struct.dx_frame, %struct.dx_frame* %61, i32 0, i32 1
  %63 = load %struct.buffer_head*, %struct.buffer_head** %62, align 8
  %64 = call i32 @BUFFER_TRACE(%struct.buffer_head* %63, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %65 = load i32*, i32** %8, align 8
  %66 = load %struct.dx_frame*, %struct.dx_frame** %11, align 8
  %67 = getelementptr inbounds %struct.dx_frame, %struct.dx_frame* %66, i32 0, i32 1
  %68 = load %struct.buffer_head*, %struct.buffer_head** %67, align 8
  %69 = call i32 @ext3_journal_get_write_access(i32* %65, %struct.buffer_head* %68)
  store i32 %69, i32* %28, align 4
  %70 = load i32, i32* %28, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %60
  br label %254

73:                                               ; preds = %60
  %74 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  %75 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %74, i32 0, i32 0
  %76 = load i8*, i8** %75, align 8
  store i8* %76, i8** %22, align 8
  %77 = load i8*, i8** %22, align 8
  %78 = load i32, i32* %14, align 4
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds i8, i8* %77, i64 %79
  %81 = bitcast i8* %80 to %struct.dx_map_entry*
  store %struct.dx_map_entry* %81, %struct.dx_map_entry** %20, align 8
  %82 = load i8*, i8** %21, align 8
  %83 = bitcast i8* %82 to %struct.ext3_dir_entry_2*
  %84 = load i32, i32* %14, align 4
  %85 = load %struct.dx_hash_info*, %struct.dx_hash_info** %12, align 8
  %86 = load %struct.dx_map_entry*, %struct.dx_map_entry** %20, align 8
  %87 = call i32 @dx_make_map(%struct.ext3_dir_entry_2* %83, i32 %84, %struct.dx_hash_info* %85, %struct.dx_map_entry* %86)
  store i32 %87, i32* %15, align 4
  %88 = load i32, i32* %15, align 4
  %89 = load %struct.dx_map_entry*, %struct.dx_map_entry** %20, align 8
  %90 = zext i32 %88 to i64
  %91 = sub i64 0, %90
  %92 = getelementptr inbounds %struct.dx_map_entry, %struct.dx_map_entry* %89, i64 %91
  store %struct.dx_map_entry* %92, %struct.dx_map_entry** %20, align 8
  %93 = load %struct.dx_map_entry*, %struct.dx_map_entry** %20, align 8
  %94 = load i32, i32* %15, align 4
  %95 = call i32 @dx_sort_map(%struct.dx_map_entry* %93, i32 %94)
  store i32 0, i32* %25, align 4
  store i32 0, i32* %24, align 4
  %96 = load i32, i32* %15, align 4
  %97 = sub i32 %96, 1
  store i32 %97, i32* %29, align 4
  br label %98

98:                                               ; preds = %126, %73
  %99 = load i32, i32* %29, align 4
  %100 = icmp sge i32 %99, 0
  br i1 %100, label %101, label %129

101:                                              ; preds = %98
  %102 = load i32, i32* %25, align 4
  %103 = load %struct.dx_map_entry*, %struct.dx_map_entry** %20, align 8
  %104 = load i32, i32* %29, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.dx_map_entry, %struct.dx_map_entry* %103, i64 %105
  %107 = getelementptr inbounds %struct.dx_map_entry, %struct.dx_map_entry* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = sdiv i32 %108, 2
  %110 = add i32 %102, %109
  %111 = load i32, i32* %14, align 4
  %112 = udiv i32 %111, 2
  %113 = icmp ugt i32 %110, %112
  br i1 %113, label %114, label %115

114:                                              ; preds = %101
  br label %129

115:                                              ; preds = %101
  %116 = load %struct.dx_map_entry*, %struct.dx_map_entry** %20, align 8
  %117 = load i32, i32* %29, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.dx_map_entry, %struct.dx_map_entry* %116, i64 %118
  %120 = getelementptr inbounds %struct.dx_map_entry, %struct.dx_map_entry* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* %25, align 4
  %123 = add i32 %122, %121
  store i32 %123, i32* %25, align 4
  %124 = load i32, i32* %24, align 4
  %125 = add i32 %124, 1
  store i32 %125, i32* %24, align 4
  br label %126

126:                                              ; preds = %115
  %127 = load i32, i32* %29, align 4
  %128 = add nsw i32 %127, -1
  store i32 %128, i32* %29, align 4
  br label %98

129:                                              ; preds = %114, %98
  %130 = load i32, i32* %15, align 4
  %131 = load i32, i32* %24, align 4
  %132 = sub i32 %130, %131
  store i32 %132, i32* %23, align 4
  %133 = load %struct.dx_map_entry*, %struct.dx_map_entry** %20, align 8
  %134 = load i32, i32* %23, align 4
  %135 = zext i32 %134 to i64
  %136 = getelementptr inbounds %struct.dx_map_entry, %struct.dx_map_entry* %133, i64 %135
  %137 = getelementptr inbounds %struct.dx_map_entry, %struct.dx_map_entry* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  store i64 %138, i64* %19, align 8
  %139 = load i64, i64* %19, align 8
  %140 = load %struct.dx_map_entry*, %struct.dx_map_entry** %20, align 8
  %141 = load i32, i32* %23, align 4
  %142 = sub i32 %141, 1
  %143 = zext i32 %142 to i64
  %144 = getelementptr inbounds %struct.dx_map_entry, %struct.dx_map_entry* %140, i64 %143
  %145 = getelementptr inbounds %struct.dx_map_entry, %struct.dx_map_entry* %144, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  %147 = icmp eq i64 %139, %146
  %148 = zext i1 %147 to i32
  store i32 %148, i32* %16, align 4
  %149 = load %struct.dx_frame*, %struct.dx_frame** %11, align 8
  %150 = getelementptr inbounds %struct.dx_frame, %struct.dx_frame* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 8
  %152 = call i32 @dx_get_block(i32 %151)
  %153 = load i64, i64* %19, align 8
  %154 = load i32, i32* %23, align 4
  %155 = load i32, i32* %15, align 4
  %156 = load i32, i32* %23, align 4
  %157 = sub i32 %155, %156
  %158 = call i32 @printk(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %152, i64 %153, i32 %154, i32 %157)
  %159 = call i32 @dxtrace(i32 %158)
  %160 = load i8*, i8** %21, align 8
  %161 = load i8*, i8** %22, align 8
  %162 = load %struct.dx_map_entry*, %struct.dx_map_entry** %20, align 8
  %163 = load i32, i32* %23, align 4
  %164 = zext i32 %163 to i64
  %165 = getelementptr inbounds %struct.dx_map_entry, %struct.dx_map_entry* %162, i64 %164
  %166 = load i32, i32* %15, align 4
  %167 = load i32, i32* %23, align 4
  %168 = sub i32 %166, %167
  %169 = call %struct.ext3_dir_entry_2* @dx_move_dirents(i8* %160, i8* %161, %struct.dx_map_entry* %165, i32 %168)
  store %struct.ext3_dir_entry_2* %169, %struct.ext3_dir_entry_2** %27, align 8
  %170 = load i8*, i8** %21, align 8
  %171 = load i32, i32* %14, align 4
  %172 = call %struct.ext3_dir_entry_2* @dx_pack_dirents(i8* %170, i32 %171)
  store %struct.ext3_dir_entry_2* %172, %struct.ext3_dir_entry_2** %26, align 8
  %173 = load i8*, i8** %21, align 8
  %174 = load i32, i32* %14, align 4
  %175 = zext i32 %174 to i64
  %176 = getelementptr inbounds i8, i8* %173, i64 %175
  %177 = load %struct.ext3_dir_entry_2*, %struct.ext3_dir_entry_2** %26, align 8
  %178 = bitcast %struct.ext3_dir_entry_2* %177 to i8*
  %179 = ptrtoint i8* %176 to i64
  %180 = ptrtoint i8* %178 to i64
  %181 = sub i64 %179, %180
  %182 = trunc i64 %181 to i32
  %183 = call i8* @ext3_rec_len_to_disk(i32 %182)
  %184 = load %struct.ext3_dir_entry_2*, %struct.ext3_dir_entry_2** %26, align 8
  %185 = getelementptr inbounds %struct.ext3_dir_entry_2, %struct.ext3_dir_entry_2* %184, i32 0, i32 0
  store i8* %183, i8** %185, align 8
  %186 = load i8*, i8** %22, align 8
  %187 = load i32, i32* %14, align 4
  %188 = zext i32 %187 to i64
  %189 = getelementptr inbounds i8, i8* %186, i64 %188
  %190 = load %struct.ext3_dir_entry_2*, %struct.ext3_dir_entry_2** %27, align 8
  %191 = bitcast %struct.ext3_dir_entry_2* %190 to i8*
  %192 = ptrtoint i8* %189 to i64
  %193 = ptrtoint i8* %191 to i64
  %194 = sub i64 %192, %193
  %195 = trunc i64 %194 to i32
  %196 = call i8* @ext3_rec_len_to_disk(i32 %195)
  %197 = load %struct.ext3_dir_entry_2*, %struct.ext3_dir_entry_2** %27, align 8
  %198 = getelementptr inbounds %struct.ext3_dir_entry_2, %struct.ext3_dir_entry_2* %197, i32 0, i32 0
  store i8* %196, i8** %198, align 8
  %199 = load %struct.dx_hash_info*, %struct.dx_hash_info** %12, align 8
  %200 = load i8*, i8** %21, align 8
  %201 = bitcast i8* %200 to %struct.ext3_dir_entry_2*
  %202 = load i32, i32* %14, align 4
  %203 = call i32 @dx_show_leaf(%struct.dx_hash_info* %199, %struct.ext3_dir_entry_2* %201, i32 %202, i32 1)
  %204 = call i32 @dxtrace(i32 %203)
  %205 = load %struct.dx_hash_info*, %struct.dx_hash_info** %12, align 8
  %206 = load i8*, i8** %22, align 8
  %207 = bitcast i8* %206 to %struct.ext3_dir_entry_2*
  %208 = load i32, i32* %14, align 4
  %209 = call i32 @dx_show_leaf(%struct.dx_hash_info* %205, %struct.ext3_dir_entry_2* %207, i32 %208, i32 1)
  %210 = call i32 @dxtrace(i32 %209)
  %211 = load %struct.dx_hash_info*, %struct.dx_hash_info** %12, align 8
  %212 = getelementptr inbounds %struct.dx_hash_info, %struct.dx_hash_info* %211, i32 0, i32 0
  %213 = load i64, i64* %212, align 8
  %214 = load i64, i64* %19, align 8
  %215 = icmp sge i64 %213, %214
  br i1 %215, label %216, label %222

216:                                              ; preds = %129
  %217 = load %struct.buffer_head**, %struct.buffer_head*** %10, align 8
  %218 = load %struct.buffer_head*, %struct.buffer_head** %217, align 8
  %219 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  %220 = call i32 @swap(%struct.buffer_head* %218, %struct.buffer_head* %219)
  %221 = load %struct.ext3_dir_entry_2*, %struct.ext3_dir_entry_2** %27, align 8
  store %struct.ext3_dir_entry_2* %221, %struct.ext3_dir_entry_2** %26, align 8
  br label %222

222:                                              ; preds = %216, %129
  %223 = load %struct.dx_frame*, %struct.dx_frame** %11, align 8
  %224 = load i64, i64* %19, align 8
  %225 = load i32, i32* %16, align 4
  %226 = zext i32 %225 to i64
  %227 = add nsw i64 %224, %226
  %228 = load i64, i64* %18, align 8
  %229 = call i32 @dx_insert_block(%struct.dx_frame* %223, i64 %227, i64 %228)
  %230 = load i32*, i32** %8, align 8
  %231 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  %232 = call i32 @ext3_journal_dirty_metadata(i32* %230, %struct.buffer_head* %231)
  store i32 %232, i32* %28, align 4
  %233 = load i32, i32* %28, align 4
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %236

235:                                              ; preds = %222
  br label %254

236:                                              ; preds = %222
  %237 = load i32*, i32** %8, align 8
  %238 = load %struct.dx_frame*, %struct.dx_frame** %11, align 8
  %239 = getelementptr inbounds %struct.dx_frame, %struct.dx_frame* %238, i32 0, i32 1
  %240 = load %struct.buffer_head*, %struct.buffer_head** %239, align 8
  %241 = call i32 @ext3_journal_dirty_metadata(i32* %237, %struct.buffer_head* %240)
  store i32 %241, i32* %28, align 4
  %242 = load i32, i32* %28, align 4
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %245

244:                                              ; preds = %236
  br label %254

245:                                              ; preds = %236
  %246 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  %247 = call i32 @brelse(%struct.buffer_head* %246)
  %248 = load %struct.dx_frame*, %struct.dx_frame** %11, align 8
  %249 = getelementptr inbounds %struct.dx_frame, %struct.dx_frame* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 8
  %251 = call i32 @dx_show_index(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %250)
  %252 = call i32 @dxtrace(i32 %251)
  %253 = load %struct.ext3_dir_entry_2*, %struct.ext3_dir_entry_2** %26, align 8
  store %struct.ext3_dir_entry_2* %253, %struct.ext3_dir_entry_2** %7, align 8
  br label %269

254:                                              ; preds = %244, %235, %72, %59
  %255 = load %struct.buffer_head**, %struct.buffer_head*** %10, align 8
  %256 = load %struct.buffer_head*, %struct.buffer_head** %255, align 8
  %257 = call i32 @brelse(%struct.buffer_head* %256)
  %258 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  %259 = call i32 @brelse(%struct.buffer_head* %258)
  %260 = load %struct.buffer_head**, %struct.buffer_head*** %10, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %260, align 8
  %261 = load %struct.inode*, %struct.inode** %9, align 8
  %262 = getelementptr inbounds %struct.inode, %struct.inode* %261, i32 0, i32 0
  %263 = load %struct.TYPE_2__*, %struct.TYPE_2__** %262, align 8
  %264 = load i32, i32* %28, align 4
  %265 = call i32 @ext3_std_error(%struct.TYPE_2__* %263, i32 %264)
  br label %266

266:                                              ; preds = %254, %44
  %267 = load i32, i32* %28, align 4
  %268 = load i32*, i32** %13, align 8
  store i32 %267, i32* %268, align 4
  store %struct.ext3_dir_entry_2* null, %struct.ext3_dir_entry_2** %7, align 8
  br label %269

269:                                              ; preds = %266, %245
  %270 = load %struct.ext3_dir_entry_2*, %struct.ext3_dir_entry_2** %7, align 8
  ret %struct.ext3_dir_entry_2* %270
}

declare dso_local %struct.buffer_head* @ext3_append(i32*, %struct.inode*, i64*, i32*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @BUFFER_TRACE(%struct.buffer_head*, i8*) #1

declare dso_local i32 @ext3_journal_get_write_access(i32*, %struct.buffer_head*) #1

declare dso_local i32 @dx_make_map(%struct.ext3_dir_entry_2*, i32, %struct.dx_hash_info*, %struct.dx_map_entry*) #1

declare dso_local i32 @dx_sort_map(%struct.dx_map_entry*, i32) #1

declare dso_local i32 @dxtrace(i32) #1

declare dso_local i32 @printk(i8*, i32, i64, i32, i32) #1

declare dso_local i32 @dx_get_block(i32) #1

declare dso_local %struct.ext3_dir_entry_2* @dx_move_dirents(i8*, i8*, %struct.dx_map_entry*, i32) #1

declare dso_local %struct.ext3_dir_entry_2* @dx_pack_dirents(i8*, i32) #1

declare dso_local i8* @ext3_rec_len_to_disk(i32) #1

declare dso_local i32 @dx_show_leaf(%struct.dx_hash_info*, %struct.ext3_dir_entry_2*, i32, i32) #1

declare dso_local i32 @swap(%struct.buffer_head*, %struct.buffer_head*) #1

declare dso_local i32 @dx_insert_block(%struct.dx_frame*, i64, i64) #1

declare dso_local i32 @ext3_journal_dirty_metadata(i32*, %struct.buffer_head*) #1

declare dso_local i32 @dx_show_index(i8*, i32) #1

declare dso_local i32 @ext3_std_error(%struct.TYPE_2__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
