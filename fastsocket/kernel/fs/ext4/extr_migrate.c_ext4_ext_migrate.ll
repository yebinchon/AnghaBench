; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_migrate.c_ext4_ext_migrate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_migrate.c_ext4_ext_migrate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i64, i32, i32, %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.ext4_inode_info = type { i64*, i32 }
%struct.list_blocks_struct = type { i32 }

@EXT4_FEATURE_INCOMPAT_EXTENTS = common dso_local global i32 0, align 4
@EXT4_INODE_EXTENTS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EXT4_INDEX_EXTRA_TRANS_BLOCKS = common dso_local global i32 0, align 4
@S_IFREG = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EXT4_STATE_EXT_MIGRATE = common dso_local global i32 0, align 4
@EXT4_NDIR_BLOCKS = common dso_local global i32 0, align 4
@EXT4_IND_BLOCK = common dso_local global i64 0, align 8
@EXT4_DIND_BLOCK = common dso_local global i64 0, align 8
@EXT4_TIND_BLOCK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext4_ext_migrate(%struct.inode* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.ext4_inode_info*, align 8
  %10 = alloca %struct.inode*, align 8
  %11 = alloca %struct.list_blocks_struct, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  store i32 0, i32* %5, align 4
  store i64 0, i64* %8, align 8
  store %struct.inode* null, %struct.inode** %10, align 8
  %14 = load %struct.inode*, %struct.inode** %3, align 8
  %15 = getelementptr inbounds %struct.inode, %struct.inode* %14, i32 0, i32 3
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %17 = load i32, i32* @EXT4_FEATURE_INCOMPAT_EXTENTS, align 4
  %18 = call i32 @EXT4_HAS_INCOMPAT_FEATURE(%struct.TYPE_7__* %16, i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %1
  %21 = load %struct.inode*, %struct.inode** %3, align 8
  %22 = load i32, i32* @EXT4_INODE_EXTENTS, align 4
  %23 = call i64 @ext4_test_inode_flag(%struct.inode* %21, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %20, %1
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %287

28:                                               ; preds = %20
  %29 = load %struct.inode*, %struct.inode** %3, align 8
  %30 = getelementptr inbounds %struct.inode, %struct.inode* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 8
  %32 = call i64 @S_ISLNK(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %28
  %35 = load %struct.inode*, %struct.inode** %3, align 8
  %36 = getelementptr inbounds %struct.inode, %struct.inode* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = load i32, i32* %5, align 4
  store i32 %40, i32* %2, align 4
  br label %287

41:                                               ; preds = %34, %28
  %42 = load %struct.inode*, %struct.inode** %3, align 8
  %43 = load %struct.inode*, %struct.inode** %3, align 8
  %44 = getelementptr inbounds %struct.inode, %struct.inode* %43, i32 0, i32 3
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %44, align 8
  %46 = call i32 @EXT4_DATA_TRANS_BLOCKS(%struct.TYPE_7__* %45)
  %47 = load i32, i32* @EXT4_INDEX_EXTRA_TRANS_BLOCKS, align 4
  %48 = add nsw i32 %46, %47
  %49 = add nsw i32 %48, 3
  %50 = load %struct.inode*, %struct.inode** %3, align 8
  %51 = getelementptr inbounds %struct.inode, %struct.inode* %50, i32 0, i32 3
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %51, align 8
  %53 = call i32 @EXT4_MAXQUOTAS_INIT_BLOCKS(%struct.TYPE_7__* %52)
  %54 = add nsw i32 %49, %53
  %55 = add nsw i32 %54, 1
  %56 = call %struct.inode* @ext4_journal_start(%struct.inode* %42, i32 %55)
  store %struct.inode* %56, %struct.inode** %4, align 8
  %57 = load %struct.inode*, %struct.inode** %4, align 8
  %58 = call i64 @IS_ERR(%struct.inode* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %41
  %61 = load %struct.inode*, %struct.inode** %4, align 8
  %62 = call i32 @PTR_ERR(%struct.inode* %61)
  store i32 %62, i32* %5, align 4
  %63 = load i32, i32* %5, align 4
  store i32 %63, i32* %2, align 4
  br label %287

64:                                               ; preds = %41
  %65 = load %struct.inode*, %struct.inode** %3, align 8
  %66 = getelementptr inbounds %struct.inode, %struct.inode* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = sub nsw i32 %67, 1
  %69 = load %struct.inode*, %struct.inode** %3, align 8
  %70 = getelementptr inbounds %struct.inode, %struct.inode* %69, i32 0, i32 3
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %70, align 8
  %72 = call i32 @EXT4_INODES_PER_GROUP(%struct.TYPE_7__* %71)
  %73 = sdiv i32 %68, %72
  %74 = load %struct.inode*, %struct.inode** %3, align 8
  %75 = getelementptr inbounds %struct.inode, %struct.inode* %74, i32 0, i32 3
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %75, align 8
  %77 = call i32 @EXT4_INODES_PER_GROUP(%struct.TYPE_7__* %76)
  %78 = mul nsw i32 %73, %77
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %13, align 4
  %80 = load %struct.inode*, %struct.inode** %4, align 8
  %81 = load %struct.inode*, %struct.inode** %3, align 8
  %82 = getelementptr inbounds %struct.inode, %struct.inode* %81, i32 0, i32 3
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 1
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @S_IFREG, align 4
  %89 = load i32, i32* %13, align 4
  %90 = call %struct.inode* @ext4_new_inode(%struct.inode* %80, i32 %87, i32 %88, i32 0, i32 %89)
  store %struct.inode* %90, %struct.inode** %10, align 8
  %91 = load %struct.inode*, %struct.inode** %10, align 8
  %92 = call i64 @IS_ERR(%struct.inode* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %100

94:                                               ; preds = %64
  %95 = load i32, i32* @ENOMEM, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %5, align 4
  %97 = load %struct.inode*, %struct.inode** %4, align 8
  %98 = call i32 @ext4_journal_stop(%struct.inode* %97)
  %99 = load i32, i32* %5, align 4
  store i32 %99, i32* %2, align 4
  br label %287

100:                                              ; preds = %64
  %101 = load %struct.inode*, %struct.inode** %10, align 8
  %102 = load %struct.inode*, %struct.inode** %3, align 8
  %103 = call i32 @i_size_read(%struct.inode* %102)
  %104 = call i32 @i_size_write(%struct.inode* %101, i32 %103)
  %105 = load %struct.inode*, %struct.inode** %10, align 8
  %106 = getelementptr inbounds %struct.inode, %struct.inode* %105, i32 0, i32 2
  store i32 1, i32* %106, align 4
  %107 = load %struct.inode*, %struct.inode** %4, align 8
  %108 = load %struct.inode*, %struct.inode** %10, align 8
  %109 = call i32 @ext4_ext_tree_init(%struct.inode* %107, %struct.inode* %108)
  %110 = load %struct.inode*, %struct.inode** %4, align 8
  %111 = load %struct.inode*, %struct.inode** %10, align 8
  %112 = call i32 @ext4_orphan_add(%struct.inode* %110, %struct.inode* %111)
  %113 = load %struct.inode*, %struct.inode** %4, align 8
  %114 = call i32 @ext4_journal_stop(%struct.inode* %113)
  %115 = load %struct.inode*, %struct.inode** %3, align 8
  %116 = call %struct.ext4_inode_info* @EXT4_I(%struct.inode* %115)
  %117 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %116, i32 0, i32 1
  %118 = call i32 @down_read(i32* %117)
  %119 = load %struct.inode*, %struct.inode** %3, align 8
  %120 = load i32, i32* @EXT4_STATE_EXT_MIGRATE, align 4
  %121 = call i32 @ext4_set_inode_state(%struct.inode* %119, i32 %120)
  %122 = load %struct.inode*, %struct.inode** %3, align 8
  %123 = call %struct.ext4_inode_info* @EXT4_I(%struct.inode* %122)
  %124 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %123, i32 0, i32 1
  %125 = call i32 @up_read(i32* %124)
  %126 = load %struct.inode*, %struct.inode** %3, align 8
  %127 = call %struct.inode* @ext4_journal_start(%struct.inode* %126, i32 1)
  store %struct.inode* %127, %struct.inode** %4, align 8
  %128 = load %struct.inode*, %struct.inode** %3, align 8
  %129 = call %struct.ext4_inode_info* @EXT4_I(%struct.inode* %128)
  store %struct.ext4_inode_info* %129, %struct.ext4_inode_info** %9, align 8
  %130 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %9, align 8
  %131 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %130, i32 0, i32 0
  %132 = load i64*, i64** %131, align 8
  store i64* %132, i64** %7, align 8
  %133 = call i32 @memset(%struct.list_blocks_struct* %11, i32 0, i32 4)
  %134 = load %struct.inode*, %struct.inode** %3, align 8
  %135 = getelementptr inbounds %struct.inode, %struct.inode* %134, i32 0, i32 3
  %136 = load %struct.TYPE_7__*, %struct.TYPE_7__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = ashr i32 %138, 2
  %140 = sext i32 %139 to i64
  store i64 %140, i64* %12, align 8
  store i32 0, i32* %6, align 4
  br label %141

141:                                              ; preds = %168, %100
  %142 = load i32, i32* %6, align 4
  %143 = load i32, i32* @EXT4_NDIR_BLOCKS, align 4
  %144 = icmp slt i32 %142, %143
  br i1 %144, label %145, label %173

145:                                              ; preds = %141
  %146 = load i64*, i64** %7, align 8
  %147 = load i32, i32* %6, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i64, i64* %146, i64 %148
  %150 = load i64, i64* %149, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %167

152:                                              ; preds = %145
  %153 = load %struct.inode*, %struct.inode** %4, align 8
  %154 = load %struct.inode*, %struct.inode** %10, align 8
  %155 = load i64*, i64** %7, align 8
  %156 = load i32, i32* %6, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i64, i64* %155, i64 %157
  %159 = load i64, i64* %158, align 8
  %160 = call i32 @le32_to_cpu(i64 %159)
  %161 = load i64, i64* %8, align 8
  %162 = call i32 @update_extent_range(%struct.inode* %153, %struct.inode* %154, i32 %160, i64 %161, %struct.list_blocks_struct* %11)
  store i32 %162, i32* %5, align 4
  %163 = load i32, i32* %5, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %166

165:                                              ; preds = %152
  br label %244

166:                                              ; preds = %152
  br label %167

167:                                              ; preds = %166, %145
  br label %168

168:                                              ; preds = %167
  %169 = load i32, i32* %6, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %6, align 4
  %171 = load i64, i64* %8, align 8
  %172 = add nsw i64 %171, 1
  store i64 %172, i64* %8, align 8
  br label %141

173:                                              ; preds = %141
  %174 = load i64*, i64** %7, align 8
  %175 = load i64, i64* @EXT4_IND_BLOCK, align 8
  %176 = getelementptr inbounds i64, i64* %174, i64 %175
  %177 = load i64, i64* %176, align 8
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %192

179:                                              ; preds = %173
  %180 = load %struct.inode*, %struct.inode** %4, align 8
  %181 = load %struct.inode*, %struct.inode** %10, align 8
  %182 = load i64*, i64** %7, align 8
  %183 = load i64, i64* @EXT4_IND_BLOCK, align 8
  %184 = getelementptr inbounds i64, i64* %182, i64 %183
  %185 = load i64, i64* %184, align 8
  %186 = call i32 @le32_to_cpu(i64 %185)
  %187 = call i32 @update_ind_extent_range(%struct.inode* %180, %struct.inode* %181, i32 %186, i64* %8, %struct.list_blocks_struct* %11)
  store i32 %187, i32* %5, align 4
  %188 = load i32, i32* %5, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %191

190:                                              ; preds = %179
  br label %244

191:                                              ; preds = %179
  br label %196

192:                                              ; preds = %173
  %193 = load i64, i64* %12, align 8
  %194 = load i64, i64* %8, align 8
  %195 = add i64 %194, %193
  store i64 %195, i64* %8, align 8
  br label %196

196:                                              ; preds = %192, %191
  %197 = load i64*, i64** %7, align 8
  %198 = load i64, i64* @EXT4_DIND_BLOCK, align 8
  %199 = getelementptr inbounds i64, i64* %197, i64 %198
  %200 = load i64, i64* %199, align 8
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %215

202:                                              ; preds = %196
  %203 = load %struct.inode*, %struct.inode** %4, align 8
  %204 = load %struct.inode*, %struct.inode** %10, align 8
  %205 = load i64*, i64** %7, align 8
  %206 = load i64, i64* @EXT4_DIND_BLOCK, align 8
  %207 = getelementptr inbounds i64, i64* %205, i64 %206
  %208 = load i64, i64* %207, align 8
  %209 = call i32 @le32_to_cpu(i64 %208)
  %210 = call i32 @update_dind_extent_range(%struct.inode* %203, %struct.inode* %204, i32 %209, i64* %8, %struct.list_blocks_struct* %11)
  store i32 %210, i32* %5, align 4
  %211 = load i32, i32* %5, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %214

213:                                              ; preds = %202
  br label %244

214:                                              ; preds = %202
  br label %221

215:                                              ; preds = %196
  %216 = load i64, i64* %12, align 8
  %217 = load i64, i64* %12, align 8
  %218 = mul i64 %216, %217
  %219 = load i64, i64* %8, align 8
  %220 = add i64 %219, %218
  store i64 %220, i64* %8, align 8
  br label %221

221:                                              ; preds = %215, %214
  %222 = load i64*, i64** %7, align 8
  %223 = load i64, i64* @EXT4_TIND_BLOCK, align 8
  %224 = getelementptr inbounds i64, i64* %222, i64 %223
  %225 = load i64, i64* %224, align 8
  %226 = icmp ne i64 %225, 0
  br i1 %226, label %227, label %240

227:                                              ; preds = %221
  %228 = load %struct.inode*, %struct.inode** %4, align 8
  %229 = load %struct.inode*, %struct.inode** %10, align 8
  %230 = load i64*, i64** %7, align 8
  %231 = load i64, i64* @EXT4_TIND_BLOCK, align 8
  %232 = getelementptr inbounds i64, i64* %230, i64 %231
  %233 = load i64, i64* %232, align 8
  %234 = call i32 @le32_to_cpu(i64 %233)
  %235 = call i32 @update_tind_extent_range(%struct.inode* %228, %struct.inode* %229, i32 %234, i64* %8, %struct.list_blocks_struct* %11)
  store i32 %235, i32* %5, align 4
  %236 = load i32, i32* %5, align 4
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %239

238:                                              ; preds = %227
  br label %244

239:                                              ; preds = %227
  br label %240

240:                                              ; preds = %239, %221
  %241 = load %struct.inode*, %struct.inode** %4, align 8
  %242 = load %struct.inode*, %struct.inode** %10, align 8
  %243 = call i32 @finish_range(%struct.inode* %241, %struct.inode* %242, %struct.list_blocks_struct* %11)
  store i32 %243, i32* %5, align 4
  br label %244

244:                                              ; preds = %240, %238, %213, %190, %165
  %245 = load i32, i32* %5, align 4
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %251

247:                                              ; preds = %244
  %248 = load %struct.inode*, %struct.inode** %4, align 8
  %249 = load %struct.inode*, %struct.inode** %10, align 8
  %250 = call i32 @free_ext_block(%struct.inode* %248, %struct.inode* %249)
  br label %263

251:                                              ; preds = %244
  %252 = load %struct.inode*, %struct.inode** %4, align 8
  %253 = load %struct.inode*, %struct.inode** %3, align 8
  %254 = load %struct.inode*, %struct.inode** %10, align 8
  %255 = call i32 @ext4_ext_swap_inode_data(%struct.inode* %252, %struct.inode* %253, %struct.inode* %254)
  store i32 %255, i32* %5, align 4
  %256 = load i32, i32* %5, align 4
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %258, label %262

258:                                              ; preds = %251
  %259 = load %struct.inode*, %struct.inode** %4, align 8
  %260 = load %struct.inode*, %struct.inode** %10, align 8
  %261 = call i32 @free_ext_block(%struct.inode* %259, %struct.inode* %260)
  br label %262

262:                                              ; preds = %258, %251
  br label %263

263:                                              ; preds = %262, %247
  %264 = load %struct.inode*, %struct.inode** %4, align 8
  %265 = call i64 @ext4_journal_extend(%struct.inode* %264, i32 1)
  %266 = icmp ne i64 %265, 0
  br i1 %266, label %267, label %270

267:                                              ; preds = %263
  %268 = load %struct.inode*, %struct.inode** %4, align 8
  %269 = call i32 @ext4_journal_restart(%struct.inode* %268, i32 1)
  br label %270

270:                                              ; preds = %267, %263
  %271 = load %struct.inode*, %struct.inode** %10, align 8
  %272 = call i32 @i_size_write(%struct.inode* %271, i32 0)
  %273 = load %struct.inode*, %struct.inode** %10, align 8
  %274 = getelementptr inbounds %struct.inode, %struct.inode* %273, i32 0, i32 0
  store i64 0, i64* %274, align 8
  %275 = load %struct.inode*, %struct.inode** %4, align 8
  %276 = load %struct.inode*, %struct.inode** %10, align 8
  %277 = call i32 @ext4_ext_tree_init(%struct.inode* %275, %struct.inode* %276)
  %278 = load %struct.inode*, %struct.inode** %10, align 8
  %279 = getelementptr inbounds %struct.inode, %struct.inode* %278, i32 0, i32 2
  store i32 0, i32* %279, align 4
  %280 = load %struct.inode*, %struct.inode** %4, align 8
  %281 = call i32 @ext4_journal_stop(%struct.inode* %280)
  %282 = load %struct.inode*, %struct.inode** %10, align 8
  %283 = call i32 @unlock_new_inode(%struct.inode* %282)
  %284 = load %struct.inode*, %struct.inode** %10, align 8
  %285 = call i32 @iput(%struct.inode* %284)
  %286 = load i32, i32* %5, align 4
  store i32 %286, i32* %2, align 4
  br label %287

287:                                              ; preds = %270, %94, %60, %39, %25
  %288 = load i32, i32* %2, align 4
  ret i32 %288
}

declare dso_local i32 @EXT4_HAS_INCOMPAT_FEATURE(%struct.TYPE_7__*, i32) #1

declare dso_local i64 @ext4_test_inode_flag(%struct.inode*, i32) #1

declare dso_local i64 @S_ISLNK(i32) #1

declare dso_local %struct.inode* @ext4_journal_start(%struct.inode*, i32) #1

declare dso_local i32 @EXT4_DATA_TRANS_BLOCKS(%struct.TYPE_7__*) #1

declare dso_local i32 @EXT4_MAXQUOTAS_INIT_BLOCKS(%struct.TYPE_7__*) #1

declare dso_local i64 @IS_ERR(%struct.inode*) #1

declare dso_local i32 @PTR_ERR(%struct.inode*) #1

declare dso_local i32 @EXT4_INODES_PER_GROUP(%struct.TYPE_7__*) #1

declare dso_local %struct.inode* @ext4_new_inode(%struct.inode*, i32, i32, i32, i32) #1

declare dso_local i32 @ext4_journal_stop(%struct.inode*) #1

declare dso_local i32 @i_size_write(%struct.inode*, i32) #1

declare dso_local i32 @i_size_read(%struct.inode*) #1

declare dso_local i32 @ext4_ext_tree_init(%struct.inode*, %struct.inode*) #1

declare dso_local i32 @ext4_orphan_add(%struct.inode*, %struct.inode*) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local %struct.ext4_inode_info* @EXT4_I(%struct.inode*) #1

declare dso_local i32 @ext4_set_inode_state(%struct.inode*, i32) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @memset(%struct.list_blocks_struct*, i32, i32) #1

declare dso_local i32 @update_extent_range(%struct.inode*, %struct.inode*, i32, i64, %struct.list_blocks_struct*) #1

declare dso_local i32 @le32_to_cpu(i64) #1

declare dso_local i32 @update_ind_extent_range(%struct.inode*, %struct.inode*, i32, i64*, %struct.list_blocks_struct*) #1

declare dso_local i32 @update_dind_extent_range(%struct.inode*, %struct.inode*, i32, i64*, %struct.list_blocks_struct*) #1

declare dso_local i32 @update_tind_extent_range(%struct.inode*, %struct.inode*, i32, i64*, %struct.list_blocks_struct*) #1

declare dso_local i32 @finish_range(%struct.inode*, %struct.inode*, %struct.list_blocks_struct*) #1

declare dso_local i32 @free_ext_block(%struct.inode*, %struct.inode*) #1

declare dso_local i32 @ext4_ext_swap_inode_data(%struct.inode*, %struct.inode*, %struct.inode*) #1

declare dso_local i64 @ext4_journal_extend(%struct.inode*, i32) #1

declare dso_local i32 @ext4_journal_restart(%struct.inode*, i32) #1

declare dso_local i32 @unlock_new_inode(%struct.inode*) #1

declare dso_local i32 @iput(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
