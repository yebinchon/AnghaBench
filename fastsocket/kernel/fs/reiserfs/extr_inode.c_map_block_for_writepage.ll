; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_inode.c_map_block_for_writepage.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_inode.c_map_block_for_writepage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32 }
%struct.inode = type { i32, i32, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32 }
%struct.buffer_head = type { i32, i64, i32 }
%struct.reiserfs_transaction_handle = type { i64 }
%struct.item_head = type { i32 }
%struct.cpu_key = type { i32 }

@path = common dso_local global %struct.TYPE_21__ zeroinitializer, align 4
@JOURNAL_PER_BALANCE_CNT = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@TYPE_ANY = common dso_local global i32 0, align 4
@POSITION_FOUND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"clm-6002\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"bytes_copied %d\00", align 1
@PAGE_CACHE_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"clm-6003\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"bad item inode %lu\00", align 1
@GET_BLOCK_CREATE = common dso_local global i32 0, align 4
@GET_BLOCK_NO_IMUX = common dso_local global i32 0, align 4
@GET_BLOCK_NO_DANGLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.buffer_head*, i64)* @map_block_for_writepage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @map_block_for_writepage(%struct.inode* %0, %struct.buffer_head* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.buffer_head*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.reiserfs_transaction_handle, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.item_head, align 4
  %11 = alloca %struct.item_head*, align 8
  %12 = alloca %struct.buffer_head*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.cpu_key, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i8*, align 8
  %24 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %6, align 8
  store i64 %2, i64* %7, align 8
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @path, i32 0, i32 0), align 4
  %26 = call i32 @INITIALIZE_PATH(i32 %25)
  %27 = load i32, i32* @JOURNAL_PER_BALANCE_CNT, align 4
  store i32 %27, i32* %16, align 4
  %28 = load i64, i64* %7, align 8
  %29 = trunc i64 %28 to i32
  %30 = load %struct.inode*, %struct.inode** %5, align 8
  %31 = getelementptr inbounds %struct.inode, %struct.inode* %30, i32 0, i32 2
  %32 = load %struct.TYPE_20__*, %struct.TYPE_20__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = shl i32 %29, %34
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %17, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %22, align 4
  %37 = getelementptr inbounds %struct.reiserfs_transaction_handle, %struct.reiserfs_transaction_handle* %8, i32 0, i32 0
  store i64 0, i64* %37, align 8
  %38 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %39 = call i32 @buffer_uptodate(%struct.buffer_head* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %3
  %42 = load i32, i32* @EIO, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %4, align 4
  br label %303

44:                                               ; preds = %3
  %45 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %46 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @kmap(i32 %47)
  br label %49

49:                                               ; preds = %275, %44
  %50 = load %struct.inode*, %struct.inode** %5, align 8
  %51 = getelementptr inbounds %struct.inode, %struct.inode* %50, i32 0, i32 2
  %52 = load %struct.TYPE_20__*, %struct.TYPE_20__** %51, align 8
  %53 = call i32 @reiserfs_write_lock(%struct.TYPE_20__* %52)
  %54 = load %struct.inode*, %struct.inode** %5, align 8
  %55 = load i32, i32* %17, align 4
  %56 = load i32, i32* @TYPE_ANY, align 4
  %57 = call i32 @make_cpu_key(%struct.cpu_key* %14, %struct.inode* %54, i32 %55, i32 %56, i32 3)
  br label %58

58:                                               ; preds = %213, %170, %148, %49
  %59 = load %struct.inode*, %struct.inode** %5, align 8
  %60 = getelementptr inbounds %struct.inode, %struct.inode* %59, i32 0, i32 2
  %61 = load %struct.TYPE_20__*, %struct.TYPE_20__** %60, align 8
  %62 = call i32 @search_for_position_by_key(%struct.TYPE_20__* %61, %struct.cpu_key* %14, %struct.TYPE_21__* @path)
  store i32 %62, i32* %18, align 4
  %63 = load i32, i32* %18, align 4
  %64 = load i32, i32* @POSITION_FOUND, align 4
  %65 = icmp ne i32 %63, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %58
  store i32 1, i32* %19, align 4
  br label %232

67:                                               ; preds = %58
  %68 = call %struct.buffer_head* @get_last_bh(%struct.TYPE_21__* @path)
  store %struct.buffer_head* %68, %struct.buffer_head** %12, align 8
  %69 = call %struct.item_head* @get_ih(%struct.TYPE_21__* @path)
  store %struct.item_head* %69, %struct.item_head** %11, align 8
  %70 = call i32* @get_item(%struct.TYPE_21__* @path)
  store i32* %70, i32** %13, align 8
  %71 = load i32, i32* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @path, i32 0, i32 0), align 4
  store i32 %71, i32* %15, align 4
  %72 = load i32, i32* %18, align 4
  %73 = load %struct.item_head*, %struct.item_head** %11, align 8
  %74 = call i64 @indirect_item_found(i32 %72, %struct.item_head* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %98

76:                                               ; preds = %67
  %77 = load i32, i32* %20, align 4
  %78 = icmp sgt i32 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %76
  %80 = load %struct.inode*, %struct.inode** %5, align 8
  %81 = getelementptr inbounds %struct.inode, %struct.inode* %80, i32 0, i32 2
  %82 = load %struct.TYPE_20__*, %struct.TYPE_20__** %81, align 8
  %83 = load i32, i32* %20, align 4
  %84 = call i32 @reiserfs_warning(%struct.TYPE_20__* %82, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %83)
  br label %85

85:                                               ; preds = %79, %76
  %86 = load i32*, i32** %13, align 8
  %87 = load i32, i32* %15, align 4
  %88 = call i32 @get_block_num(i32* %86, i32 %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %91, label %90

90:                                               ; preds = %85
  store i32 1, i32* %19, align 4
  br label %232

91:                                               ; preds = %85
  %92 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %93 = load i32*, i32** %13, align 8
  %94 = load i32, i32* %15, align 4
  %95 = call i32 @get_block_num(i32* %93, i32 %94)
  %96 = load %struct.inode*, %struct.inode** %5, align 8
  %97 = call i32 @set_block_dev_mapped(%struct.buffer_head* %92, i32 %95, %struct.inode* %96)
  br label %231

98:                                               ; preds = %67
  %99 = load %struct.item_head*, %struct.item_head** %11, align 8
  %100 = call i64 @is_direct_le_ih(%struct.item_head* %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %220

102:                                              ; preds = %98
  %103 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %104 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = call i8* @page_address(i32 %105)
  store i8* %106, i8** %23, align 8
  %107 = load i32, i32* %17, align 4
  %108 = sub nsw i32 %107, 1
  %109 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %110 = sub nsw i32 %109, 1
  %111 = and i32 %108, %110
  %112 = load i8*, i8** %23, align 8
  %113 = sext i32 %111 to i64
  %114 = getelementptr inbounds i8, i8* %112, i64 %113
  store i8* %114, i8** %23, align 8
  %115 = load %struct.item_head*, %struct.item_head** %11, align 8
  %116 = call i32 @ih_item_len(%struct.item_head* %115)
  %117 = load i32, i32* %15, align 4
  %118 = sub nsw i32 %116, %117
  store i32 %118, i32* %21, align 4
  %119 = load %struct.inode*, %struct.inode** %5, align 8
  %120 = getelementptr inbounds %struct.inode, %struct.inode* %119, i32 0, i32 2
  %121 = load %struct.TYPE_20__*, %struct.TYPE_20__** %120, align 8
  %122 = call i32 @get_generation(%struct.TYPE_20__* %121)
  store i32 %122, i32* %9, align 4
  %123 = load %struct.item_head*, %struct.item_head** %11, align 8
  %124 = call i32 @copy_item_head(%struct.item_head* %10, %struct.item_head* %123)
  %125 = load i32, i32* %22, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %155, label %127

127:                                              ; preds = %102
  %128 = load %struct.inode*, %struct.inode** %5, align 8
  %129 = getelementptr inbounds %struct.inode, %struct.inode* %128, i32 0, i32 2
  %130 = load %struct.TYPE_20__*, %struct.TYPE_20__** %129, align 8
  %131 = load i32, i32* %16, align 4
  %132 = call i32 @journal_begin(%struct.reiserfs_transaction_handle* %8, %struct.TYPE_20__* %130, i32 %131)
  store i32 %132, i32* %18, align 4
  %133 = load i32, i32* %18, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %127
  br label %232

136:                                              ; preds = %127
  %137 = load %struct.inode*, %struct.inode** %5, align 8
  %138 = call i32 @reiserfs_update_inode_transaction(%struct.inode* %137)
  store i32 1, i32* %22, align 4
  %139 = load i32, i32* %9, align 4
  %140 = load %struct.inode*, %struct.inode** %5, align 8
  %141 = getelementptr inbounds %struct.inode, %struct.inode* %140, i32 0, i32 2
  %142 = load %struct.TYPE_20__*, %struct.TYPE_20__** %141, align 8
  %143 = call i64 @fs_changed(i32 %139, %struct.TYPE_20__* %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %154

145:                                              ; preds = %136
  %146 = call i64 @item_moved(%struct.item_head* %10, %struct.TYPE_21__* @path)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %154

148:                                              ; preds = %145
  %149 = load %struct.inode*, %struct.inode** %5, align 8
  %150 = getelementptr inbounds %struct.inode, %struct.inode* %149, i32 0, i32 2
  %151 = load %struct.TYPE_20__*, %struct.TYPE_20__** %150, align 8
  %152 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %153 = call i32 @reiserfs_restore_prepared_buffer(%struct.TYPE_20__* %151, %struct.buffer_head* %152)
  br label %58

154:                                              ; preds = %145, %136
  br label %155

155:                                              ; preds = %154, %102
  %156 = load %struct.inode*, %struct.inode** %5, align 8
  %157 = getelementptr inbounds %struct.inode, %struct.inode* %156, i32 0, i32 2
  %158 = load %struct.TYPE_20__*, %struct.TYPE_20__** %157, align 8
  %159 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %160 = call i32 @reiserfs_prepare_for_journal(%struct.TYPE_20__* %158, %struct.buffer_head* %159, i32 1)
  %161 = load i32, i32* %9, align 4
  %162 = load %struct.inode*, %struct.inode** %5, align 8
  %163 = getelementptr inbounds %struct.inode, %struct.inode* %162, i32 0, i32 2
  %164 = load %struct.TYPE_20__*, %struct.TYPE_20__** %163, align 8
  %165 = call i64 @fs_changed(i32 %161, %struct.TYPE_20__* %164)
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %176

167:                                              ; preds = %155
  %168 = call i64 @item_moved(%struct.item_head* %10, %struct.TYPE_21__* @path)
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %176

170:                                              ; preds = %167
  %171 = load %struct.inode*, %struct.inode** %5, align 8
  %172 = getelementptr inbounds %struct.inode, %struct.inode* %171, i32 0, i32 2
  %173 = load %struct.TYPE_20__*, %struct.TYPE_20__** %172, align 8
  %174 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %175 = call i32 @reiserfs_restore_prepared_buffer(%struct.TYPE_20__* %173, %struct.buffer_head* %174)
  br label %58

176:                                              ; preds = %167, %155
  %177 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %178 = load %struct.item_head*, %struct.item_head** %11, align 8
  %179 = call i64 @B_I_PITEM(%struct.buffer_head* %177, %struct.item_head* %178)
  %180 = load i32, i32* %15, align 4
  %181 = sext i32 %180 to i64
  %182 = add nsw i64 %179, %181
  %183 = load i8*, i8** %23, align 8
  %184 = load i32, i32* %20, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i8, i8* %183, i64 %185
  %187 = load i32, i32* %21, align 4
  %188 = call i32 @memcpy(i64 %182, i8* %186, i32 %187)
  %189 = load %struct.inode*, %struct.inode** %5, align 8
  %190 = getelementptr inbounds %struct.inode, %struct.inode* %189, i32 0, i32 2
  %191 = load %struct.TYPE_20__*, %struct.TYPE_20__** %190, align 8
  %192 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %193 = call i32 @journal_mark_dirty(%struct.reiserfs_transaction_handle* %8, %struct.TYPE_20__* %191, %struct.buffer_head* %192)
  %194 = load i32, i32* %21, align 4
  %195 = load i32, i32* %20, align 4
  %196 = add nsw i32 %195, %194
  store i32 %196, i32* %20, align 4
  %197 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %198 = load %struct.inode*, %struct.inode** %5, align 8
  %199 = call i32 @set_block_dev_mapped(%struct.buffer_head* %197, i32 0, %struct.inode* %198)
  %200 = load i32, i32* %20, align 4
  %201 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %202 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = icmp slt i32 %200, %203
  br i1 %204, label %205, label %219

205:                                              ; preds = %176
  %206 = load i32, i32* %17, align 4
  %207 = load i32, i32* %20, align 4
  %208 = add nsw i32 %206, %207
  %209 = load %struct.inode*, %struct.inode** %5, align 8
  %210 = getelementptr inbounds %struct.inode, %struct.inode* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 8
  %212 = icmp slt i32 %208, %211
  br i1 %212, label %213, label %219

213:                                              ; preds = %205
  %214 = call i64 @cpu_key_k_offset(%struct.cpu_key* %14)
  %215 = load i32, i32* %21, align 4
  %216 = sext i32 %215 to i64
  %217 = add nsw i64 %214, %216
  %218 = call i32 @set_cpu_key_k_offset(%struct.cpu_key* %14, i64 %217)
  br label %58

219:                                              ; preds = %205, %176
  br label %230

220:                                              ; preds = %98
  %221 = load %struct.inode*, %struct.inode** %5, align 8
  %222 = getelementptr inbounds %struct.inode, %struct.inode* %221, i32 0, i32 2
  %223 = load %struct.TYPE_20__*, %struct.TYPE_20__** %222, align 8
  %224 = load %struct.inode*, %struct.inode** %5, align 8
  %225 = getelementptr inbounds %struct.inode, %struct.inode* %224, i32 0, i32 1
  %226 = load i32, i32* %225, align 4
  %227 = call i32 @reiserfs_warning(%struct.TYPE_20__* %223, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 %226)
  %228 = load i32, i32* @EIO, align 4
  %229 = sub nsw i32 0, %228
  store i32 %229, i32* %18, align 4
  br label %232

230:                                              ; preds = %219
  br label %231

231:                                              ; preds = %230, %91
  store i32 0, i32* %18, align 4
  br label %232

232:                                              ; preds = %231, %220, %135, %90, %66
  %233 = call i32 @pathrelse(%struct.TYPE_21__* @path)
  %234 = load i32, i32* %22, align 4
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %247

236:                                              ; preds = %232
  %237 = load %struct.inode*, %struct.inode** %5, align 8
  %238 = getelementptr inbounds %struct.inode, %struct.inode* %237, i32 0, i32 2
  %239 = load %struct.TYPE_20__*, %struct.TYPE_20__** %238, align 8
  %240 = load i32, i32* %16, align 4
  %241 = call i32 @journal_end(%struct.reiserfs_transaction_handle* %8, %struct.TYPE_20__* %239, i32 %240)
  store i32 %241, i32* %24, align 4
  %242 = load i32, i32* %24, align 4
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %246

244:                                              ; preds = %236
  %245 = load i32, i32* %24, align 4
  store i32 %245, i32* %18, align 4
  br label %246

246:                                              ; preds = %244, %236
  store i32 0, i32* %22, align 4
  br label %247

247:                                              ; preds = %246, %232
  %248 = load %struct.inode*, %struct.inode** %5, align 8
  %249 = getelementptr inbounds %struct.inode, %struct.inode* %248, i32 0, i32 2
  %250 = load %struct.TYPE_20__*, %struct.TYPE_20__** %249, align 8
  %251 = call i32 @reiserfs_write_unlock(%struct.TYPE_20__* %250)
  %252 = load i32, i32* %19, align 4
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %254, label %278

254:                                              ; preds = %247
  %255 = load %struct.inode*, %struct.inode** %5, align 8
  %256 = load i64, i64* %7, align 8
  %257 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %258 = load i32, i32* @GET_BLOCK_CREATE, align 4
  %259 = load i32, i32* @GET_BLOCK_NO_IMUX, align 4
  %260 = or i32 %258, %259
  %261 = load i32, i32* @GET_BLOCK_NO_DANGLE, align 4
  %262 = or i32 %260, %261
  %263 = call i32 @reiserfs_get_block(%struct.inode* %255, i64 %256, %struct.buffer_head* %257, i32 %262)
  store i32 %263, i32* %18, align 4
  %264 = load i32, i32* %18, align 4
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %277, label %266

266:                                              ; preds = %254
  %267 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %268 = call i64 @buffer_mapped(%struct.buffer_head* %267)
  %269 = icmp ne i64 %268, 0
  br i1 %269, label %270, label %275

270:                                              ; preds = %266
  %271 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %272 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %271, i32 0, i32 1
  %273 = load i64, i64* %272, align 8
  %274 = icmp eq i64 %273, 0
  br i1 %274, label %275, label %276

275:                                              ; preds = %270, %266
  store i32 0, i32* %19, align 4
  br label %49

276:                                              ; preds = %270
  br label %277

277:                                              ; preds = %276, %254
  br label %278

278:                                              ; preds = %277, %247
  %279 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %280 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %279, i32 0, i32 2
  %281 = load i32, i32* %280, align 8
  %282 = call i32 @kunmap(i32 %281)
  %283 = load i32, i32* %18, align 4
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %301, label %285

285:                                              ; preds = %278
  %286 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %287 = call i64 @buffer_mapped(%struct.buffer_head* %286)
  %288 = icmp ne i64 %287, 0
  br i1 %288, label %289, label %301

289:                                              ; preds = %285
  %290 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %291 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %290, i32 0, i32 1
  %292 = load i64, i64* %291, align 8
  %293 = icmp eq i64 %292, 0
  br i1 %293, label %294, label %301

294:                                              ; preds = %289
  %295 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %296 = call i32 @lock_buffer(%struct.buffer_head* %295)
  %297 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %298 = call i32 @clear_buffer_dirty(%struct.buffer_head* %297)
  %299 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %300 = call i32 @unlock_buffer(%struct.buffer_head* %299)
  br label %301

301:                                              ; preds = %294, %289, %285, %278
  %302 = load i32, i32* %18, align 4
  store i32 %302, i32* %4, align 4
  br label %303

303:                                              ; preds = %301, %41
  %304 = load i32, i32* %4, align 4
  ret i32 %304
}

declare dso_local i32 @INITIALIZE_PATH(i32) #1

declare dso_local i32 @buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i32 @kmap(i32) #1

declare dso_local i32 @reiserfs_write_lock(%struct.TYPE_20__*) #1

declare dso_local i32 @make_cpu_key(%struct.cpu_key*, %struct.inode*, i32, i32, i32) #1

declare dso_local i32 @search_for_position_by_key(%struct.TYPE_20__*, %struct.cpu_key*, %struct.TYPE_21__*) #1

declare dso_local %struct.buffer_head* @get_last_bh(%struct.TYPE_21__*) #1

declare dso_local %struct.item_head* @get_ih(%struct.TYPE_21__*) #1

declare dso_local i32* @get_item(%struct.TYPE_21__*) #1

declare dso_local i64 @indirect_item_found(i32, %struct.item_head*) #1

declare dso_local i32 @reiserfs_warning(%struct.TYPE_20__*, i8*, i8*, i32) #1

declare dso_local i32 @get_block_num(i32*, i32) #1

declare dso_local i32 @set_block_dev_mapped(%struct.buffer_head*, i32, %struct.inode*) #1

declare dso_local i64 @is_direct_le_ih(%struct.item_head*) #1

declare dso_local i8* @page_address(i32) #1

declare dso_local i32 @ih_item_len(%struct.item_head*) #1

declare dso_local i32 @get_generation(%struct.TYPE_20__*) #1

declare dso_local i32 @copy_item_head(%struct.item_head*, %struct.item_head*) #1

declare dso_local i32 @journal_begin(%struct.reiserfs_transaction_handle*, %struct.TYPE_20__*, i32) #1

declare dso_local i32 @reiserfs_update_inode_transaction(%struct.inode*) #1

declare dso_local i64 @fs_changed(i32, %struct.TYPE_20__*) #1

declare dso_local i64 @item_moved(%struct.item_head*, %struct.TYPE_21__*) #1

declare dso_local i32 @reiserfs_restore_prepared_buffer(%struct.TYPE_20__*, %struct.buffer_head*) #1

declare dso_local i32 @reiserfs_prepare_for_journal(%struct.TYPE_20__*, %struct.buffer_head*, i32) #1

declare dso_local i32 @memcpy(i64, i8*, i32) #1

declare dso_local i64 @B_I_PITEM(%struct.buffer_head*, %struct.item_head*) #1

declare dso_local i32 @journal_mark_dirty(%struct.reiserfs_transaction_handle*, %struct.TYPE_20__*, %struct.buffer_head*) #1

declare dso_local i32 @set_cpu_key_k_offset(%struct.cpu_key*, i64) #1

declare dso_local i64 @cpu_key_k_offset(%struct.cpu_key*) #1

declare dso_local i32 @pathrelse(%struct.TYPE_21__*) #1

declare dso_local i32 @journal_end(%struct.reiserfs_transaction_handle*, %struct.TYPE_20__*, i32) #1

declare dso_local i32 @reiserfs_write_unlock(%struct.TYPE_20__*) #1

declare dso_local i32 @reiserfs_get_block(%struct.inode*, i64, %struct.buffer_head*, i32) #1

declare dso_local i64 @buffer_mapped(%struct.buffer_head*) #1

declare dso_local i32 @kunmap(i32) #1

declare dso_local i32 @lock_buffer(%struct.buffer_head*) #1

declare dso_local i32 @clear_buffer_dirty(%struct.buffer_head*) #1

declare dso_local i32 @unlock_buffer(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
