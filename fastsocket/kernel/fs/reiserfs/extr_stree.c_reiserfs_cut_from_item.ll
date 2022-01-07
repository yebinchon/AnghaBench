; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_stree.c_reiserfs_cut_from_item.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_stree.c_reiserfs_cut_from_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reiserfs_transaction_handle = type { i32 }
%struct.treepath = type { i32 }
%struct.cpu_key = type { i32 }
%struct.inode = type { i32, %struct.super_block*, i32 }
%struct.super_block = type { i32 }
%struct.page = type { i32 }
%struct.tree_balance = type { i32*, i32 }
%struct.item_head = type { i32 }
%struct.TYPE_2__ = type { i32, i32 }

@CARRY_ON = common dso_local global i32 0, align 4
@M_CONVERT = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [32 x i8] c"PAP-5570: can not convert twice\00", align 1
@M_SKIP_BALANCING = common dso_local global i8 0, align 1
@TYPE_INDIRECT = common dso_local global i32 0, align 4
@POSITION_NOT_FOUND = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"PAP-5580\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"item to convert does not exist (%K)\00", align 1
@REPEAT_SEARCH = common dso_local global i32 0, align 4
@cut_from_item_restarted = common dso_local global i32 0, align 4
@POSITION_FOUND = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"PAP-5610\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"item %K not found\00", align 1
@IO_ERROR = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@NO_DISK_SPACE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [14 x i8] c"reiserfs-5092\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"NO_DISK_SPACE\00", align 1
@M_PASTE = common dso_local global i8 0, align 1
@M_INSERT = common dso_local global i8 0, align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"invalid mode\00", align 1
@M_DELETE = common dso_local global i8 0, align 1
@U32_MAX = common dso_local global i32 0, align 4
@UNFM_P_SIZE = common dso_local global i32 0, align 4
@i_pack_on_close_mask = common dso_local global i32 0, align 4
@M_CUT = common dso_local global i8 0, align 1
@REISERFS_DEBUG_CODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @reiserfs_cut_from_item(%struct.reiserfs_transaction_handle* %0, %struct.treepath* %1, %struct.cpu_key* %2, %struct.inode* %3, %struct.page* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.reiserfs_transaction_handle*, align 8
  %9 = alloca %struct.treepath*, align 8
  %10 = alloca %struct.cpu_key*, align 8
  %11 = alloca %struct.inode*, align 8
  %12 = alloca %struct.page*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.super_block*, align 8
  %15 = alloca %struct.tree_balance, align 8
  %16 = alloca %struct.item_head*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8, align 1
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.reiserfs_transaction_handle* %0, %struct.reiserfs_transaction_handle** %8, align 8
  store %struct.treepath* %1, %struct.treepath** %9, align 8
  store %struct.cpu_key* %2, %struct.cpu_key** %10, align 8
  store %struct.inode* %3, %struct.inode** %11, align 8
  store %struct.page* %4, %struct.page** %12, align 8
  store i32 %5, i32* %13, align 4
  %25 = load %struct.inode*, %struct.inode** %11, align 8
  %26 = getelementptr inbounds %struct.inode, %struct.inode* %25, i32 0, i32 1
  %27 = load %struct.super_block*, %struct.super_block** %26, align 8
  store %struct.super_block* %27, %struct.super_block** %14, align 8
  store i32 0, i32* %17, align 4
  %28 = load i32, i32* @CARRY_ON, align 4
  store i32 %28, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  store i32 -1, i32* %22, align 4
  store i32 0, i32* %24, align 4
  %29 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %8, align 8
  %30 = getelementptr inbounds %struct.reiserfs_transaction_handle, %struct.reiserfs_transaction_handle* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  %35 = call i32 @BUG_ON(i32 %34)
  %36 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %8, align 8
  %37 = load %struct.inode*, %struct.inode** %11, align 8
  %38 = getelementptr inbounds %struct.inode, %struct.inode* %37, i32 0, i32 1
  %39 = load %struct.super_block*, %struct.super_block** %38, align 8
  %40 = load %struct.treepath*, %struct.treepath** %9, align 8
  %41 = load i32, i32* %17, align 4
  %42 = call i32 @init_tb_struct(%struct.reiserfs_transaction_handle* %36, %struct.tree_balance* %15, %struct.super_block* %39, %struct.treepath* %40, i32 %41)
  br label %43

43:                                               ; preds = %6, %114, %143
  %44 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %8, align 8
  %45 = load %struct.inode*, %struct.inode** %11, align 8
  %46 = load %struct.treepath*, %struct.treepath** %9, align 8
  %47 = load %struct.cpu_key*, %struct.cpu_key** %10, align 8
  %48 = load i32, i32* %13, align 4
  %49 = call signext i8 @prepare_for_delete_or_cut(%struct.reiserfs_transaction_handle* %44, %struct.inode* %45, %struct.treepath* %46, %struct.cpu_key* %47, i32* %19, i32* %17, i32 %48)
  store i8 %49, i8* %21, align 1
  %50 = load i8, i8* %21, align 1
  %51 = sext i8 %50 to i32
  %52 = load i8, i8* @M_CONVERT, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp eq i32 %51, %53
  br i1 %54, label %55, label %115

55:                                               ; preds = %43
  %56 = load i32, i32* %18, align 4
  %57 = load i32, i32* @CARRY_ON, align 4
  %58 = icmp ne i32 %56, %57
  %59 = zext i1 %58 to i32
  %60 = call i32 @RFALSE(i32 %59, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %61 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %8, align 8
  %62 = load %struct.inode*, %struct.inode** %11, align 8
  %63 = load %struct.page*, %struct.page** %12, align 8
  %64 = load %struct.treepath*, %struct.treepath** %9, align 8
  %65 = load %struct.cpu_key*, %struct.cpu_key** %10, align 8
  %66 = load i32, i32* %13, align 4
  %67 = call i32 @maybe_indirect_to_direct(%struct.reiserfs_transaction_handle* %61, %struct.inode* %62, %struct.page* %63, %struct.treepath* %64, %struct.cpu_key* %65, i32 %66, i8* %21)
  store i32 %67, i32* %18, align 4
  %68 = load i8, i8* %21, align 1
  %69 = sext i8 %68 to i32
  %70 = load i8, i8* @M_SKIP_BALANCING, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp eq i32 %69, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %55
  %74 = load i32, i32* %18, align 4
  store i32 %74, i32* %7, align 4
  br label %284

75:                                               ; preds = %55
  store i32 1, i32* %20, align 4
  %76 = load i32, i32* %18, align 4
  store i32 %76, i32* %22, align 4
  %77 = load %struct.cpu_key*, %struct.cpu_key** %10, align 8
  %78 = load i32, i32* @TYPE_INDIRECT, align 4
  %79 = call i32 @set_cpu_key_k_type(%struct.cpu_key* %77, i32 %78)
  %80 = load %struct.cpu_key*, %struct.cpu_key** %10, align 8
  %81 = getelementptr inbounds %struct.cpu_key, %struct.cpu_key* %80, i32 0, i32 0
  store i32 4, i32* %81, align 4
  %82 = load i32, i32* %13, align 4
  %83 = load %struct.super_block*, %struct.super_block** %14, align 8
  %84 = getelementptr inbounds %struct.super_block, %struct.super_block* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = sub nsw i32 %85, 1
  %87 = and i32 %82, %86
  %88 = load i32, i32* %13, align 4
  %89 = sub nsw i32 %88, %87
  store i32 %89, i32* %13, align 4
  %90 = load i32, i32* %13, align 4
  store i32 %90, i32* %24, align 4
  %91 = load %struct.cpu_key*, %struct.cpu_key** %10, align 8
  %92 = load i32, i32* %13, align 4
  %93 = add nsw i32 %92, 1
  %94 = call i32 @set_cpu_key_k_offset(%struct.cpu_key* %91, i32 %93)
  %95 = load %struct.super_block*, %struct.super_block** %14, align 8
  %96 = load %struct.cpu_key*, %struct.cpu_key** %10, align 8
  %97 = load %struct.treepath*, %struct.treepath** %9, align 8
  %98 = call i32 @search_for_position_by_key(%struct.super_block* %95, %struct.cpu_key* %96, %struct.treepath* %97)
  %99 = load i32, i32* @POSITION_NOT_FOUND, align 4
  %100 = icmp eq i32 %98, %99
  br i1 %100, label %101, label %114

101:                                              ; preds = %75
  %102 = load %struct.treepath*, %struct.treepath** %9, align 8
  %103 = call i32 @PATH_PLAST_BUFFER(%struct.treepath* %102)
  %104 = load %struct.treepath*, %struct.treepath** %9, align 8
  %105 = call i64 @PATH_LAST_POSITION(%struct.treepath* %104)
  %106 = sub nsw i64 %105, 1
  %107 = load %struct.treepath*, %struct.treepath** %9, align 8
  %108 = call i64 @PATH_LAST_POSITION(%struct.treepath* %107)
  %109 = add nsw i64 %108, 1
  %110 = call i32 @print_block(i32 %103, i32 3, i64 %106, i64 %109)
  %111 = load %struct.super_block*, %struct.super_block** %14, align 8
  %112 = load %struct.cpu_key*, %struct.cpu_key** %10, align 8
  %113 = call i32 (%struct.super_block*, i8*, i8*, %struct.cpu_key*, ...) @reiserfs_panic(%struct.super_block* %111, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), %struct.cpu_key* %112)
  br label %114

114:                                              ; preds = %101, %75
  br label %43

115:                                              ; preds = %43
  %116 = load i32, i32* %17, align 4
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %115
  %119 = load %struct.treepath*, %struct.treepath** %9, align 8
  %120 = call i32 @pathrelse(%struct.treepath* %119)
  store i32 0, i32* %7, align 4
  br label %284

121:                                              ; preds = %115
  %122 = load i32, i32* %17, align 4
  %123 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %15, i32 0, i32 0
  %124 = load i32*, i32** %123, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 0
  store i32 %122, i32* %125, align 4
  %126 = load i8, i8* %21, align 1
  %127 = call i32 @fix_nodes(i8 signext %126, %struct.tree_balance* %15, i32* null, i32* null)
  store i32 %127, i32* %18, align 4
  %128 = load i32, i32* %18, align 4
  %129 = load i32, i32* @REPEAT_SEARCH, align 4
  %130 = icmp ne i32 %128, %129
  br i1 %130, label %131, label %132

131:                                              ; preds = %121
  br label %160

132:                                              ; preds = %121
  %133 = load %struct.super_block*, %struct.super_block** %14, align 8
  %134 = load i32, i32* @cut_from_item_restarted, align 4
  %135 = call i32 @PROC_INFO_INC(%struct.super_block* %133, i32 %134)
  %136 = load %struct.super_block*, %struct.super_block** %14, align 8
  %137 = load %struct.cpu_key*, %struct.cpu_key** %10, align 8
  %138 = load %struct.treepath*, %struct.treepath** %9, align 8
  %139 = call i32 @search_for_position_by_key(%struct.super_block* %136, %struct.cpu_key* %137, %struct.treepath* %138)
  store i32 %139, i32* %18, align 4
  %140 = load i32, i32* %18, align 4
  %141 = load i32, i32* @POSITION_FOUND, align 4
  %142 = icmp eq i32 %140, %141
  br i1 %142, label %143, label %144

143:                                              ; preds = %132
  br label %43

144:                                              ; preds = %132
  %145 = load %struct.super_block*, %struct.super_block** %14, align 8
  %146 = load %struct.cpu_key*, %struct.cpu_key** %10, align 8
  %147 = call i32 (%struct.super_block*, i8*, i8*, ...) @reiserfs_warning(%struct.super_block* %145, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), %struct.cpu_key* %146)
  %148 = call i32 @unfix_nodes(%struct.tree_balance* %15)
  %149 = load i32, i32* %18, align 4
  %150 = load i32, i32* @IO_ERROR, align 4
  %151 = icmp eq i32 %149, %150
  br i1 %151, label %152, label %155

152:                                              ; preds = %144
  %153 = load i32, i32* @EIO, align 4
  %154 = sub nsw i32 0, %153
  br label %158

155:                                              ; preds = %144
  %156 = load i32, i32* @ENOENT, align 4
  %157 = sub nsw i32 0, %156
  br label %158

158:                                              ; preds = %155, %152
  %159 = phi i32 [ %154, %152 ], [ %157, %155 ]
  store i32 %159, i32* %7, align 4
  br label %284

160:                                              ; preds = %131
  %161 = load i32, i32* %18, align 4
  %162 = load i32, i32* @CARRY_ON, align 4
  %163 = icmp ne i32 %161, %162
  br i1 %163, label %164, label %183

164:                                              ; preds = %160
  %165 = load i32, i32* %20, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %172

167:                                              ; preds = %164
  %168 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %8, align 8
  %169 = load %struct.inode*, %struct.inode** %11, align 8
  %170 = load %struct.treepath*, %struct.treepath** %9, align 8
  %171 = call i32 @indirect_to_direct_roll_back(%struct.reiserfs_transaction_handle* %168, %struct.inode* %169, %struct.treepath* %170)
  br label %172

172:                                              ; preds = %167, %164
  %173 = load i32, i32* %18, align 4
  %174 = load i32, i32* @NO_DISK_SPACE, align 4
  %175 = icmp eq i32 %173, %174
  br i1 %175, label %176, label %179

176:                                              ; preds = %172
  %177 = load %struct.super_block*, %struct.super_block** %14, align 8
  %178 = call i32 (%struct.super_block*, i8*, i8*, ...) @reiserfs_warning(%struct.super_block* %177, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  br label %179

179:                                              ; preds = %176, %172
  %180 = call i32 @unfix_nodes(%struct.tree_balance* %15)
  %181 = load i32, i32* @EIO, align 4
  %182 = sub nsw i32 0, %181
  store i32 %182, i32* %7, align 4
  br label %284

183:                                              ; preds = %160
  %184 = load i8, i8* %21, align 1
  %185 = sext i8 %184 to i32
  %186 = load i8, i8* @M_PASTE, align 1
  %187 = sext i8 %186 to i32
  %188 = icmp eq i32 %185, %187
  br i1 %188, label %195, label %189

189:                                              ; preds = %183
  %190 = load i8, i8* %21, align 1
  %191 = sext i8 %190 to i32
  %192 = load i8, i8* @M_INSERT, align 1
  %193 = sext i8 %192 to i32
  %194 = icmp eq i32 %191, %193
  br label %195

195:                                              ; preds = %189, %183
  %196 = phi i1 [ true, %183 ], [ %194, %189 ]
  %197 = zext i1 %196 to i32
  %198 = call i32 @RFALSE(i32 %197, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0))
  %199 = load i8, i8* %21, align 1
  %200 = sext i8 %199 to i32
  %201 = load i8, i8* @M_DELETE, align 1
  %202 = sext i8 %201 to i32
  %203 = icmp eq i32 %200, %202
  br i1 %203, label %204, label %208

204:                                              ; preds = %195
  %205 = load %struct.treepath*, %struct.treepath** %9, align 8
  %206 = call %struct.item_head* @get_ih(%struct.treepath* %205)
  %207 = call i32 @ih_item_len(%struct.item_head* %206)
  br label %214

208:                                              ; preds = %195
  %209 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %15, i32 0, i32 0
  %210 = load i32*, i32** %209, align 8
  %211 = getelementptr inbounds i32, i32* %210, i64 0
  %212 = load i32, i32* %211, align 4
  %213 = sub nsw i32 0, %212
  br label %214

214:                                              ; preds = %208, %204
  %215 = phi i32 [ %207, %204 ], [ %213, %208 ]
  store i32 %215, i32* %23, align 4
  %216 = load i32, i32* %22, align 4
  %217 = icmp eq i32 %216, -1
  br i1 %217, label %218, label %221

218:                                              ; preds = %214
  %219 = load i8, i8* %21, align 1
  %220 = call i32 @calc_deleted_bytes_number(%struct.tree_balance* %15, i8 signext %219)
  store i32 %220, i32* %18, align 4
  br label %223

221:                                              ; preds = %214
  %222 = load i32, i32* %22, align 4
  store i32 %222, i32* %18, align 4
  br label %223

223:                                              ; preds = %221, %218
  %224 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %15, i32 0, i32 1
  %225 = load i32, i32* %224, align 8
  %226 = call %struct.item_head* @PATH_PITEM_HEAD(i32 %225)
  store %struct.item_head* %226, %struct.item_head** %16, align 8
  %227 = load %struct.inode*, %struct.inode** %11, align 8
  %228 = getelementptr inbounds %struct.inode, %struct.inode* %227, i32 0, i32 2
  %229 = load i32, i32* %228, align 8
  %230 = call i32 @S_ISLNK(i32 %229)
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %263, label %232

232:                                              ; preds = %223
  %233 = load %struct.item_head*, %struct.item_head** %16, align 8
  %234 = call i64 @is_direct_le_ih(%struct.item_head* %233)
  %235 = icmp ne i64 %234, 0
  br i1 %235, label %236, label %263

236:                                              ; preds = %232
  %237 = load i8, i8* %21, align 1
  %238 = sext i8 %237 to i32
  %239 = load i8, i8* @M_DELETE, align 1
  %240 = sext i8 %239 to i32
  %241 = icmp eq i32 %238, %240
  br i1 %241, label %242, label %261

242:                                              ; preds = %236
  %243 = load %struct.item_head*, %struct.item_head** %16, align 8
  %244 = call i32 @le_ih_k_offset(%struct.item_head* %243)
  %245 = load %struct.super_block*, %struct.super_block** %14, align 8
  %246 = getelementptr inbounds %struct.super_block, %struct.super_block* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 4
  %248 = sub nsw i32 %247, 1
  %249 = and i32 %244, %248
  %250 = icmp eq i32 %249, 1
  br i1 %250, label %251, label %261

251:                                              ; preds = %242
  %252 = load i32, i32* @U32_MAX, align 4
  %253 = load %struct.inode*, %struct.inode** %11, align 8
  %254 = call %struct.TYPE_2__* @REISERFS_I(%struct.inode* %253)
  %255 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %254, i32 0, i32 1
  store i32 %252, i32* %255, align 4
  %256 = load %struct.super_block*, %struct.super_block** %14, align 8
  %257 = getelementptr inbounds %struct.super_block, %struct.super_block* %256, i32 0, i32 0
  %258 = load i32, i32* %257, align 4
  %259 = load i32, i32* @UNFM_P_SIZE, align 4
  %260 = add nsw i32 %258, %259
  store i32 %260, i32* %23, align 4
  br label %262

261:                                              ; preds = %242, %236
  store i32 0, i32* %23, align 4
  br label %262

262:                                              ; preds = %261, %251
  br label %263

263:                                              ; preds = %262, %232, %223
  %264 = load i8, i8* %21, align 1
  %265 = call i32 @do_balance(%struct.tree_balance* %15, i32* null, i32* null, i8 signext %264)
  %266 = load i32, i32* %20, align 4
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %268, label %279

268:                                              ; preds = %263
  %269 = load %struct.page*, %struct.page** %12, align 8
  %270 = load i32, i32* %24, align 4
  %271 = call i32 @unmap_buffers(%struct.page* %269, i32 %270)
  %272 = load i32, i32* @i_pack_on_close_mask, align 4
  %273 = xor i32 %272, -1
  %274 = load %struct.inode*, %struct.inode** %11, align 8
  %275 = call %struct.TYPE_2__* @REISERFS_I(%struct.inode* %274)
  %276 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %275, i32 0, i32 0
  %277 = load i32, i32* %276, align 4
  %278 = and i32 %277, %273
  store i32 %278, i32* %276, align 4
  br label %279

279:                                              ; preds = %268, %263
  %280 = load %struct.inode*, %struct.inode** %11, align 8
  %281 = load i32, i32* %23, align 4
  %282 = call i32 @vfs_dq_free_space_nodirty(%struct.inode* %280, i32 %281)
  %283 = load i32, i32* %18, align 4
  store i32 %283, i32* %7, align 4
  br label %284

284:                                              ; preds = %279, %179, %158, %118, %73
  %285 = load i32, i32* %7, align 4
  ret i32 %285
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @init_tb_struct(%struct.reiserfs_transaction_handle*, %struct.tree_balance*, %struct.super_block*, %struct.treepath*, i32) #1

declare dso_local signext i8 @prepare_for_delete_or_cut(%struct.reiserfs_transaction_handle*, %struct.inode*, %struct.treepath*, %struct.cpu_key*, i32*, i32*, i32) #1

declare dso_local i32 @RFALSE(i32, i8*) #1

declare dso_local i32 @maybe_indirect_to_direct(%struct.reiserfs_transaction_handle*, %struct.inode*, %struct.page*, %struct.treepath*, %struct.cpu_key*, i32, i8*) #1

declare dso_local i32 @set_cpu_key_k_type(%struct.cpu_key*, i32) #1

declare dso_local i32 @set_cpu_key_k_offset(%struct.cpu_key*, i32) #1

declare dso_local i32 @search_for_position_by_key(%struct.super_block*, %struct.cpu_key*, %struct.treepath*) #1

declare dso_local i32 @print_block(i32, i32, i64, i64) #1

declare dso_local i32 @PATH_PLAST_BUFFER(%struct.treepath*) #1

declare dso_local i64 @PATH_LAST_POSITION(%struct.treepath*) #1

declare dso_local i32 @reiserfs_panic(%struct.super_block*, i8*, i8*, %struct.cpu_key*, ...) #1

declare dso_local i32 @pathrelse(%struct.treepath*) #1

declare dso_local i32 @fix_nodes(i8 signext, %struct.tree_balance*, i32*, i32*) #1

declare dso_local i32 @PROC_INFO_INC(%struct.super_block*, i32) #1

declare dso_local i32 @reiserfs_warning(%struct.super_block*, i8*, i8*, ...) #1

declare dso_local i32 @unfix_nodes(%struct.tree_balance*) #1

declare dso_local i32 @indirect_to_direct_roll_back(%struct.reiserfs_transaction_handle*, %struct.inode*, %struct.treepath*) #1

declare dso_local i32 @ih_item_len(%struct.item_head*) #1

declare dso_local %struct.item_head* @get_ih(%struct.treepath*) #1

declare dso_local i32 @calc_deleted_bytes_number(%struct.tree_balance*, i8 signext) #1

declare dso_local %struct.item_head* @PATH_PITEM_HEAD(i32) #1

declare dso_local i32 @S_ISLNK(i32) #1

declare dso_local i64 @is_direct_le_ih(%struct.item_head*) #1

declare dso_local i32 @le_ih_k_offset(%struct.item_head*) #1

declare dso_local %struct.TYPE_2__* @REISERFS_I(%struct.inode*) #1

declare dso_local i32 @do_balance(%struct.tree_balance*, i32*, i32*, i8 signext) #1

declare dso_local i32 @unmap_buffers(%struct.page*, i32) #1

declare dso_local i32 @vfs_dq_free_space_nodirty(%struct.inode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
