; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_journal.c_ubifs_jnl_update.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_journal.c_ubifs_jnl_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.ubifs_wbuf }
%struct.ubifs_wbuf = type { i32 }
%struct.qstr = type { i32, i32 }
%struct.inode = type { i64, i32, i32 }
%struct.ubifs_inode = type { i64, i32, i32, i32, i32, i32 }
%struct.ubifs_dent_node = type { i8*, i32, i32, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.ubifs_ino_node = type { i32 }
%union.ubifs_key = type { i32 }

@.str = private unnamed_addr constant [49 x i8] c"ino %lu, dent '%.*s', data len %d in dir ino %lu\00", align 1
@UBIFS_DENT_NODE_SZ = common dso_local global i32 0, align 4
@UBIFS_INO_NODE_SZ = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@BASEHD = common dso_local global i64 0, align 8
@UBIFS_DENT_NODE = common dso_local global i32 0, align 4
@UBIFS_XENT_NODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ubifs_jnl_update(%struct.ubifs_info* %0, %struct.inode* %1, %struct.qstr* %2, %struct.inode* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.ubifs_info*, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca %struct.qstr*, align 8
  %11 = alloca %struct.inode*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca %struct.ubifs_inode*, align 8
  %26 = alloca %struct.ubifs_inode*, align 8
  %27 = alloca %struct.ubifs_dent_node*, align 8
  %28 = alloca %struct.ubifs_ino_node*, align 8
  %29 = alloca %union.ubifs_key, align 4
  %30 = alloca %union.ubifs_key, align 4
  %31 = alloca %struct.ubifs_wbuf*, align 8
  store %struct.ubifs_info* %0, %struct.ubifs_info** %8, align 8
  store %struct.inode* %1, %struct.inode** %9, align 8
  store %struct.qstr* %2, %struct.qstr** %10, align 8
  store %struct.inode* %3, %struct.inode** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %32 = load %struct.inode*, %struct.inode** %9, align 8
  %33 = call i32 @IS_DIRSYNC(%struct.inode* %32)
  store i32 %33, i32* %23, align 4
  %34 = load i32, i32* %12, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %6
  %37 = load %struct.inode*, %struct.inode** %11, align 8
  %38 = getelementptr inbounds %struct.inode, %struct.inode* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %39, 0
  br label %41

41:                                               ; preds = %36, %6
  %42 = phi i1 [ false, %6 ], [ %40, %36 ]
  %43 = xor i1 %42, true
  %44 = xor i1 %43, true
  %45 = zext i1 %44 to i32
  store i32 %45, i32* %24, align 4
  %46 = load %struct.inode*, %struct.inode** %11, align 8
  %47 = call %struct.ubifs_inode* @ubifs_inode(%struct.inode* %46)
  store %struct.ubifs_inode* %47, %struct.ubifs_inode** %25, align 8
  %48 = load %struct.inode*, %struct.inode** %9, align 8
  %49 = call %struct.ubifs_inode* @ubifs_inode(%struct.inode* %48)
  store %struct.ubifs_inode* %49, %struct.ubifs_inode** %26, align 8
  %50 = load %struct.inode*, %struct.inode** %11, align 8
  %51 = getelementptr inbounds %struct.inode, %struct.inode* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.qstr*, %struct.qstr** %10, align 8
  %54 = getelementptr inbounds %struct.qstr, %struct.qstr* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.qstr*, %struct.qstr** %10, align 8
  %57 = getelementptr inbounds %struct.qstr, %struct.qstr* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.ubifs_inode*, %struct.ubifs_inode** %25, align 8
  %60 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.inode*, %struct.inode** %9, align 8
  %63 = getelementptr inbounds %struct.inode, %struct.inode* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @dbg_jnl(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %52, i32 %55, i32 %58, i64 %61, i32 %64)
  %66 = load %struct.ubifs_inode*, %struct.ubifs_inode** %26, align 8
  %67 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp eq i64 %68, 0
  %70 = zext i1 %69 to i32
  %71 = call i32 @ubifs_assert(i32 %70)
  %72 = load %struct.ubifs_inode*, %struct.ubifs_inode** %26, align 8
  %73 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %72, i32 0, i32 5
  %74 = call i32 @mutex_is_locked(i32* %73)
  %75 = call i32 @ubifs_assert(i32 %74)
  %76 = load i32, i32* @UBIFS_DENT_NODE_SZ, align 4
  %77 = load %struct.qstr*, %struct.qstr** %10, align 8
  %78 = getelementptr inbounds %struct.qstr, %struct.qstr* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = add nsw i32 %76, %79
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %15, align 4
  %82 = load i32, i32* @UBIFS_INO_NODE_SZ, align 4
  store i32 %82, i32* %16, align 4
  %83 = load i32, i32* %24, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %97, label %85

85:                                               ; preds = %41
  %86 = load %struct.ubifs_inode*, %struct.ubifs_inode** %25, align 8
  %87 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i32, i32* %16, align 4
  %90 = sext i32 %89 to i64
  %91 = add nsw i64 %90, %88
  %92 = trunc i64 %91 to i32
  store i32 %92, i32* %16, align 4
  %93 = load %struct.inode*, %struct.inode** %11, align 8
  %94 = call i32 @IS_SYNC(%struct.inode* %93)
  %95 = load i32, i32* %23, align 4
  %96 = or i32 %95, %94
  store i32 %96, i32* %23, align 4
  br label %97

97:                                               ; preds = %85, %41
  %98 = load i32, i32* %15, align 4
  %99 = call i32 @ALIGN(i32 %98, i32 8)
  store i32 %99, i32* %21, align 4
  %100 = load i32, i32* %16, align 4
  %101 = call i32 @ALIGN(i32 %100, i32 8)
  store i32 %101, i32* %22, align 4
  %102 = load i32, i32* %21, align 4
  %103 = load i32, i32* %22, align 4
  %104 = add nsw i32 %102, %103
  %105 = load i32, i32* @UBIFS_INO_NODE_SZ, align 4
  %106 = add nsw i32 %104, %105
  store i32 %106, i32* %17, align 4
  %107 = load i32, i32* %17, align 4
  %108 = load i32, i32* @GFP_NOFS, align 4
  %109 = call %struct.ubifs_dent_node* @kmalloc(i32 %107, i32 %108)
  store %struct.ubifs_dent_node* %109, %struct.ubifs_dent_node** %27, align 8
  %110 = load %struct.ubifs_dent_node*, %struct.ubifs_dent_node** %27, align 8
  %111 = icmp ne %struct.ubifs_dent_node* %110, null
  br i1 %111, label %115, label %112

112:                                              ; preds = %97
  %113 = load i32, i32* @ENOMEM, align 4
  %114 = sub nsw i32 0, %113
  store i32 %114, i32* %7, align 4
  br label %384

115:                                              ; preds = %97
  %116 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %117 = load i64, i64* @BASEHD, align 8
  %118 = load i32, i32* %17, align 4
  %119 = call i32 @make_reservation(%struct.ubifs_info* %116, i64 %117, i32 %118)
  store i32 %119, i32* %14, align 4
  %120 = load i32, i32* %14, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %115
  br label %360

123:                                              ; preds = %115
  %124 = load i32, i32* %13, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %137, label %126

126:                                              ; preds = %123
  %127 = load i32, i32* @UBIFS_DENT_NODE, align 4
  %128 = load %struct.ubifs_dent_node*, %struct.ubifs_dent_node** %27, align 8
  %129 = getelementptr inbounds %struct.ubifs_dent_node, %struct.ubifs_dent_node* %128, i32 0, i32 5
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i32 0, i32 0
  store i32 %127, i32* %130, align 8
  %131 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %132 = load %struct.inode*, %struct.inode** %9, align 8
  %133 = getelementptr inbounds %struct.inode, %struct.inode* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 8
  %135 = load %struct.qstr*, %struct.qstr** %10, align 8
  %136 = call i32 @dent_key_init(%struct.ubifs_info* %131, %union.ubifs_key* %29, i32 %134, %struct.qstr* %135)
  br label %148

137:                                              ; preds = %123
  %138 = load i32, i32* @UBIFS_XENT_NODE, align 4
  %139 = load %struct.ubifs_dent_node*, %struct.ubifs_dent_node** %27, align 8
  %140 = getelementptr inbounds %struct.ubifs_dent_node, %struct.ubifs_dent_node* %139, i32 0, i32 5
  %141 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %140, i32 0, i32 0
  store i32 %138, i32* %141, align 8
  %142 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %143 = load %struct.inode*, %struct.inode** %9, align 8
  %144 = getelementptr inbounds %struct.inode, %struct.inode* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 8
  %146 = load %struct.qstr*, %struct.qstr** %10, align 8
  %147 = call i32 @xent_key_init(%struct.ubifs_info* %142, %union.ubifs_key* %29, i32 %145, %struct.qstr* %146)
  br label %148

148:                                              ; preds = %137, %126
  %149 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %150 = load %struct.ubifs_dent_node*, %struct.ubifs_dent_node** %27, align 8
  %151 = getelementptr inbounds %struct.ubifs_dent_node, %struct.ubifs_dent_node* %150, i32 0, i32 4
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @key_write(%struct.ubifs_info* %149, %union.ubifs_key* %29, i32 %152)
  %154 = load i32, i32* %12, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %157

156:                                              ; preds = %148
  br label %162

157:                                              ; preds = %148
  %158 = load %struct.inode*, %struct.inode** %11, align 8
  %159 = getelementptr inbounds %struct.inode, %struct.inode* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 8
  %161 = call i32 @cpu_to_le64(i32 %160)
  br label %162

162:                                              ; preds = %157, %156
  %163 = phi i32 [ 0, %156 ], [ %161, %157 ]
  %164 = load %struct.ubifs_dent_node*, %struct.ubifs_dent_node** %27, align 8
  %165 = getelementptr inbounds %struct.ubifs_dent_node, %struct.ubifs_dent_node* %164, i32 0, i32 3
  store i32 %163, i32* %165, align 8
  %166 = load %struct.inode*, %struct.inode** %11, align 8
  %167 = getelementptr inbounds %struct.inode, %struct.inode* %166, i32 0, i32 2
  %168 = load i32, i32* %167, align 4
  %169 = call i32 @get_dent_type(i32 %168)
  %170 = load %struct.ubifs_dent_node*, %struct.ubifs_dent_node** %27, align 8
  %171 = getelementptr inbounds %struct.ubifs_dent_node, %struct.ubifs_dent_node* %170, i32 0, i32 2
  store i32 %169, i32* %171, align 4
  %172 = load %struct.qstr*, %struct.qstr** %10, align 8
  %173 = getelementptr inbounds %struct.qstr, %struct.qstr* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = call i32 @cpu_to_le16(i32 %174)
  %176 = load %struct.ubifs_dent_node*, %struct.ubifs_dent_node** %27, align 8
  %177 = getelementptr inbounds %struct.ubifs_dent_node, %struct.ubifs_dent_node* %176, i32 0, i32 1
  store i32 %175, i32* %177, align 8
  %178 = load %struct.ubifs_dent_node*, %struct.ubifs_dent_node** %27, align 8
  %179 = getelementptr inbounds %struct.ubifs_dent_node, %struct.ubifs_dent_node* %178, i32 0, i32 0
  %180 = load i8*, i8** %179, align 8
  %181 = load %struct.qstr*, %struct.qstr** %10, align 8
  %182 = getelementptr inbounds %struct.qstr, %struct.qstr* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = load %struct.qstr*, %struct.qstr** %10, align 8
  %185 = getelementptr inbounds %struct.qstr, %struct.qstr* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = call i32 @memcpy(i8* %180, i32 %183, i32 %186)
  %188 = load %struct.ubifs_dent_node*, %struct.ubifs_dent_node** %27, align 8
  %189 = getelementptr inbounds %struct.ubifs_dent_node, %struct.ubifs_dent_node* %188, i32 0, i32 0
  %190 = load i8*, i8** %189, align 8
  %191 = load %struct.qstr*, %struct.qstr** %10, align 8
  %192 = getelementptr inbounds %struct.qstr, %struct.qstr* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i8, i8* %190, i64 %194
  store i8 0, i8* %195, align 1
  %196 = load %struct.ubifs_dent_node*, %struct.ubifs_dent_node** %27, align 8
  %197 = call i32 @zero_dent_node_unused(%struct.ubifs_dent_node* %196)
  %198 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %199 = load %struct.ubifs_dent_node*, %struct.ubifs_dent_node** %27, align 8
  %200 = load i32, i32* %15, align 4
  %201 = call i32 @ubifs_prep_grp_node(%struct.ubifs_info* %198, %struct.ubifs_dent_node* %199, i32 %200, i32 0)
  %202 = load %struct.ubifs_dent_node*, %struct.ubifs_dent_node** %27, align 8
  %203 = bitcast %struct.ubifs_dent_node* %202 to i8*
  %204 = load i32, i32* %21, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr i8, i8* %203, i64 %205
  %207 = bitcast i8* %206 to %struct.ubifs_ino_node*
  store %struct.ubifs_ino_node* %207, %struct.ubifs_ino_node** %28, align 8
  %208 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %209 = load %struct.ubifs_ino_node*, %struct.ubifs_ino_node** %28, align 8
  %210 = load %struct.inode*, %struct.inode** %11, align 8
  %211 = call i32 @pack_inode(%struct.ubifs_info* %208, %struct.ubifs_ino_node* %209, %struct.inode* %210, i32 0)
  %212 = load %struct.ubifs_ino_node*, %struct.ubifs_ino_node** %28, align 8
  %213 = bitcast %struct.ubifs_ino_node* %212 to i8*
  %214 = load i32, i32* %22, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr i8, i8* %213, i64 %215
  %217 = bitcast i8* %216 to %struct.ubifs_ino_node*
  store %struct.ubifs_ino_node* %217, %struct.ubifs_ino_node** %28, align 8
  %218 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %219 = load %struct.ubifs_ino_node*, %struct.ubifs_ino_node** %28, align 8
  %220 = load %struct.inode*, %struct.inode** %9, align 8
  %221 = call i32 @pack_inode(%struct.ubifs_info* %218, %struct.ubifs_ino_node* %219, %struct.inode* %220, i32 1)
  %222 = load i32, i32* %24, align 4
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %242

224:                                              ; preds = %162
  %225 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %226 = load %struct.inode*, %struct.inode** %11, align 8
  %227 = getelementptr inbounds %struct.inode, %struct.inode* %226, i32 0, i32 1
  %228 = load i32, i32* %227, align 8
  %229 = call i32 @ubifs_add_orphan(%struct.ubifs_info* %225, i32 %228)
  store i32 %229, i32* %14, align 4
  %230 = load i32, i32* %14, align 4
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %236

232:                                              ; preds = %224
  %233 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %234 = load i64, i64* @BASEHD, align 8
  %235 = call i32 @release_head(%struct.ubifs_info* %233, i64 %234)
  br label %357

236:                                              ; preds = %224
  %237 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %238 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %237, i32 0, i32 1
  %239 = load i32, i32* %238, align 8
  %240 = load %struct.ubifs_inode*, %struct.ubifs_inode** %25, align 8
  %241 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %240, i32 0, i32 4
  store i32 %239, i32* %241, align 4
  br label %242

242:                                              ; preds = %236, %162
  %243 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %244 = load i64, i64* @BASEHD, align 8
  %245 = load %struct.ubifs_dent_node*, %struct.ubifs_dent_node** %27, align 8
  %246 = load i32, i32* %17, align 4
  %247 = load i32, i32* %23, align 4
  %248 = call i32 @write_head(%struct.ubifs_info* %243, i64 %244, %struct.ubifs_dent_node* %245, i32 %246, i32* %18, i32* %20, i32 %247)
  store i32 %248, i32* %14, align 4
  %249 = load i32, i32* %14, align 4
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %252

251:                                              ; preds = %242
  br label %364

252:                                              ; preds = %242
  %253 = load i32, i32* %23, align 4
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %272, label %255

255:                                              ; preds = %252
  %256 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %257 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %256, i32 0, i32 0
  %258 = load %struct.TYPE_4__*, %struct.TYPE_4__** %257, align 8
  %259 = load i64, i64* @BASEHD, align 8
  %260 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %258, i64 %259
  %261 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %260, i32 0, i32 0
  store %struct.ubifs_wbuf* %261, %struct.ubifs_wbuf** %31, align 8
  %262 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %31, align 8
  %263 = load %struct.inode*, %struct.inode** %11, align 8
  %264 = getelementptr inbounds %struct.inode, %struct.inode* %263, i32 0, i32 1
  %265 = load i32, i32* %264, align 8
  %266 = call i32 @ubifs_wbuf_add_ino_nolock(%struct.ubifs_wbuf* %262, i32 %265)
  %267 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %31, align 8
  %268 = load %struct.inode*, %struct.inode** %9, align 8
  %269 = getelementptr inbounds %struct.inode, %struct.inode* %268, i32 0, i32 1
  %270 = load i32, i32* %269, align 8
  %271 = call i32 @ubifs_wbuf_add_ino_nolock(%struct.ubifs_wbuf* %267, i32 %270)
  br label %272

272:                                              ; preds = %255, %252
  %273 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %274 = load i64, i64* @BASEHD, align 8
  %275 = call i32 @release_head(%struct.ubifs_info* %273, i64 %274)
  %276 = load %struct.ubifs_dent_node*, %struct.ubifs_dent_node** %27, align 8
  %277 = call i32 @kfree(%struct.ubifs_dent_node* %276)
  %278 = load i32, i32* %12, align 4
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %280, label %292

280:                                              ; preds = %272
  %281 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %282 = load %struct.qstr*, %struct.qstr** %10, align 8
  %283 = call i32 @ubifs_tnc_remove_nm(%struct.ubifs_info* %281, %union.ubifs_key* %29, %struct.qstr* %282)
  store i32 %283, i32* %14, align 4
  %284 = load i32, i32* %14, align 4
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %286, label %287

286:                                              ; preds = %280
  br label %368

287:                                              ; preds = %280
  %288 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %289 = load i32, i32* %18, align 4
  %290 = load i32, i32* %15, align 4
  %291 = call i32 @ubifs_add_dirt(%struct.ubifs_info* %288, i32 %289, i32 %290)
  store i32 %291, i32* %14, align 4
  br label %299

292:                                              ; preds = %272
  %293 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %294 = load i32, i32* %18, align 4
  %295 = load i32, i32* %20, align 4
  %296 = load i32, i32* %15, align 4
  %297 = load %struct.qstr*, %struct.qstr** %10, align 8
  %298 = call i32 @ubifs_tnc_add_nm(%struct.ubifs_info* %293, %union.ubifs_key* %29, i32 %294, i32 %295, i32 %296, %struct.qstr* %297)
  store i32 %298, i32* %14, align 4
  br label %299

299:                                              ; preds = %292, %287
  %300 = load i32, i32* %14, align 4
  %301 = icmp ne i32 %300, 0
  br i1 %301, label %302, label %303

302:                                              ; preds = %299
  br label %368

303:                                              ; preds = %299
  %304 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %305 = load %struct.inode*, %struct.inode** %11, align 8
  %306 = getelementptr inbounds %struct.inode, %struct.inode* %305, i32 0, i32 1
  %307 = load i32, i32* %306, align 8
  %308 = call i32 @ino_key_init(%struct.ubifs_info* %304, %union.ubifs_key* %30, i32 %307)
  %309 = load i32, i32* %20, align 4
  %310 = load i32, i32* %21, align 4
  %311 = add nsw i32 %309, %310
  store i32 %311, i32* %19, align 4
  %312 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %313 = load i32, i32* %18, align 4
  %314 = load i32, i32* %19, align 4
  %315 = load i32, i32* %16, align 4
  %316 = call i32 @ubifs_tnc_add(%struct.ubifs_info* %312, %union.ubifs_key* %30, i32 %313, i32 %314, i32 %315)
  store i32 %316, i32* %14, align 4
  %317 = load i32, i32* %14, align 4
  %318 = icmp ne i32 %317, 0
  br i1 %318, label %319, label %320

319:                                              ; preds = %303
  br label %368

320:                                              ; preds = %303
  %321 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %322 = load %struct.inode*, %struct.inode** %9, align 8
  %323 = getelementptr inbounds %struct.inode, %struct.inode* %322, i32 0, i32 1
  %324 = load i32, i32* %323, align 8
  %325 = call i32 @ino_key_init(%struct.ubifs_info* %321, %union.ubifs_key* %30, i32 %324)
  %326 = load i32, i32* %22, align 4
  %327 = load i32, i32* %19, align 4
  %328 = add nsw i32 %327, %326
  store i32 %328, i32* %19, align 4
  %329 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %330 = load i32, i32* %18, align 4
  %331 = load i32, i32* %19, align 4
  %332 = load i32, i32* @UBIFS_INO_NODE_SZ, align 4
  %333 = call i32 @ubifs_tnc_add(%struct.ubifs_info* %329, %union.ubifs_key* %30, i32 %330, i32 %331, i32 %332)
  store i32 %333, i32* %14, align 4
  %334 = load i32, i32* %14, align 4
  %335 = icmp ne i32 %334, 0
  br i1 %335, label %336, label %337

336:                                              ; preds = %320
  br label %368

337:                                              ; preds = %320
  %338 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %339 = call i32 @finish_reservation(%struct.ubifs_info* %338)
  %340 = load %struct.ubifs_inode*, %struct.ubifs_inode** %25, align 8
  %341 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %340, i32 0, i32 1
  %342 = call i32 @spin_lock(i32* %341)
  %343 = load %struct.ubifs_inode*, %struct.ubifs_inode** %25, align 8
  %344 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %343, i32 0, i32 2
  %345 = load i32, i32* %344, align 4
  %346 = load %struct.ubifs_inode*, %struct.ubifs_inode** %25, align 8
  %347 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %346, i32 0, i32 3
  store i32 %345, i32* %347, align 8
  %348 = load %struct.ubifs_inode*, %struct.ubifs_inode** %25, align 8
  %349 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %348, i32 0, i32 1
  %350 = call i32 @spin_unlock(i32* %349)
  %351 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %352 = load %struct.ubifs_inode*, %struct.ubifs_inode** %25, align 8
  %353 = call i32 @mark_inode_clean(%struct.ubifs_info* %351, %struct.ubifs_inode* %352)
  %354 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %355 = load %struct.ubifs_inode*, %struct.ubifs_inode** %26, align 8
  %356 = call i32 @mark_inode_clean(%struct.ubifs_info* %354, %struct.ubifs_inode* %355)
  store i32 0, i32* %7, align 4
  br label %384

357:                                              ; preds = %232
  %358 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %359 = call i32 @finish_reservation(%struct.ubifs_info* %358)
  br label %360

360:                                              ; preds = %357, %122
  %361 = load %struct.ubifs_dent_node*, %struct.ubifs_dent_node** %27, align 8
  %362 = call i32 @kfree(%struct.ubifs_dent_node* %361)
  %363 = load i32, i32* %14, align 4
  store i32 %363, i32* %7, align 4
  br label %384

364:                                              ; preds = %251
  %365 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %366 = load i64, i64* @BASEHD, align 8
  %367 = call i32 @release_head(%struct.ubifs_info* %365, i64 %366)
  br label %368

368:                                              ; preds = %364, %336, %319, %302, %286
  %369 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %370 = load i32, i32* %14, align 4
  %371 = call i32 @ubifs_ro_mode(%struct.ubifs_info* %369, i32 %370)
  %372 = load i32, i32* %24, align 4
  %373 = icmp ne i32 %372, 0
  br i1 %373, label %374, label %380

374:                                              ; preds = %368
  %375 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %376 = load %struct.inode*, %struct.inode** %11, align 8
  %377 = getelementptr inbounds %struct.inode, %struct.inode* %376, i32 0, i32 1
  %378 = load i32, i32* %377, align 8
  %379 = call i32 @ubifs_delete_orphan(%struct.ubifs_info* %375, i32 %378)
  br label %380

380:                                              ; preds = %374, %368
  %381 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %382 = call i32 @finish_reservation(%struct.ubifs_info* %381)
  %383 = load i32, i32* %14, align 4
  store i32 %383, i32* %7, align 4
  br label %384

384:                                              ; preds = %380, %360, %337, %112
  %385 = load i32, i32* %7, align 4
  ret i32 %385
}

declare dso_local i32 @IS_DIRSYNC(%struct.inode*) #1

declare dso_local %struct.ubifs_inode* @ubifs_inode(%struct.inode*) #1

declare dso_local i32 @dbg_jnl(i8*, i32, i32, i32, i64, i32) #1

declare dso_local i32 @ubifs_assert(i32) #1

declare dso_local i32 @mutex_is_locked(i32*) #1

declare dso_local i32 @IS_SYNC(%struct.inode*) #1

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local %struct.ubifs_dent_node* @kmalloc(i32, i32) #1

declare dso_local i32 @make_reservation(%struct.ubifs_info*, i64, i32) #1

declare dso_local i32 @dent_key_init(%struct.ubifs_info*, %union.ubifs_key*, i32, %struct.qstr*) #1

declare dso_local i32 @xent_key_init(%struct.ubifs_info*, %union.ubifs_key*, i32, %struct.qstr*) #1

declare dso_local i32 @key_write(%struct.ubifs_info*, %union.ubifs_key*, i32) #1

declare dso_local i32 @cpu_to_le64(i32) #1

declare dso_local i32 @get_dent_type(i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @zero_dent_node_unused(%struct.ubifs_dent_node*) #1

declare dso_local i32 @ubifs_prep_grp_node(%struct.ubifs_info*, %struct.ubifs_dent_node*, i32, i32) #1

declare dso_local i32 @pack_inode(%struct.ubifs_info*, %struct.ubifs_ino_node*, %struct.inode*, i32) #1

declare dso_local i32 @ubifs_add_orphan(%struct.ubifs_info*, i32) #1

declare dso_local i32 @release_head(%struct.ubifs_info*, i64) #1

declare dso_local i32 @write_head(%struct.ubifs_info*, i64, %struct.ubifs_dent_node*, i32, i32*, i32*, i32) #1

declare dso_local i32 @ubifs_wbuf_add_ino_nolock(%struct.ubifs_wbuf*, i32) #1

declare dso_local i32 @kfree(%struct.ubifs_dent_node*) #1

declare dso_local i32 @ubifs_tnc_remove_nm(%struct.ubifs_info*, %union.ubifs_key*, %struct.qstr*) #1

declare dso_local i32 @ubifs_add_dirt(%struct.ubifs_info*, i32, i32) #1

declare dso_local i32 @ubifs_tnc_add_nm(%struct.ubifs_info*, %union.ubifs_key*, i32, i32, i32, %struct.qstr*) #1

declare dso_local i32 @ino_key_init(%struct.ubifs_info*, %union.ubifs_key*, i32) #1

declare dso_local i32 @ubifs_tnc_add(%struct.ubifs_info*, %union.ubifs_key*, i32, i32, i32) #1

declare dso_local i32 @finish_reservation(%struct.ubifs_info*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @mark_inode_clean(%struct.ubifs_info*, %struct.ubifs_inode*) #1

declare dso_local i32 @ubifs_ro_mode(%struct.ubifs_info*, i32) #1

declare dso_local i32 @ubifs_delete_orphan(%struct.ubifs_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
