; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_extents.c_ext4_ext_remove_space.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_extents.c_ext4_ext_remove_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.super_block* }
%struct.super_block = type { i32 }
%struct.ext4_ext_path = type { i32, %struct.TYPE_7__*, %struct.buffer_head*, i8*, i64, %struct.ext4_extent* }
%struct.TYPE_7__ = type { i64, i32, i64 }
%struct.buffer_head = type { i32 }
%struct.ext4_extent = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"truncate since %u to %u\0A\00", align 1
@EXT_MAX_BLOCKS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"path[%d].p_hdr == NULL\00", align 1
@EIO = common dso_local global i32 0, align 4
@EXT4_EXT_MARK_UNINIT1 = common dso_local global i32 0, align 4
@EXT4_EXT_MARK_UNINIT2 = common dso_local global i32 0, align 4
@EXT4_GET_BLOCKS_DIO = common dso_local global i32 0, align 4
@EXT4_GET_BLOCKS_METADATA_NOFAIL = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"initialize header\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"init index ptr: hdr 0x%p, num %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"level %d - index, first 0x%p, cur 0x%p\0A\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"move to level %d (block %llu)\0A\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"return to level %d\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i32, i32)* @ext4_ext_remove_space to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_ext_remove_space(%struct.inode* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.super_block*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ext4_ext_path*, align 8
  %11 = alloca %struct.ext4_ext_path*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.ext4_extent*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.buffer_head*, align 8
  store %struct.inode* %0, %struct.inode** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %19 = load %struct.inode*, %struct.inode** %5, align 8
  %20 = getelementptr inbounds %struct.inode, %struct.inode* %19, i32 0, i32 0
  %21 = load %struct.super_block*, %struct.super_block** %20, align 8
  store %struct.super_block* %21, %struct.super_block** %8, align 8
  %22 = load %struct.inode*, %struct.inode** %5, align 8
  %23 = call i32 @ext_depth(%struct.inode* %22)
  store i32 %23, i32* %9, align 4
  store %struct.ext4_ext_path* null, %struct.ext4_ext_path** %10, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* %7, align 4
  %26 = call i32 (i8*, ...) @ext_debug(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %25)
  %27 = load %struct.inode*, %struct.inode** %5, align 8
  %28 = load i32, i32* %9, align 4
  %29 = add nsw i32 %28, 1
  %30 = call %struct.ext4_ext_path* @ext4_journal_start(%struct.inode* %27, i32 %29)
  store %struct.ext4_ext_path* %30, %struct.ext4_ext_path** %11, align 8
  %31 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %11, align 8
  %32 = call i64 @IS_ERR(%struct.ext4_ext_path* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %3
  %35 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %11, align 8
  %36 = call i32 @PTR_ERR(%struct.ext4_ext_path* %35)
  store i32 %36, i32* %4, align 4
  br label %484

37:                                               ; preds = %3
  br label %38

38:                                               ; preds = %479, %37
  %39 = load %struct.inode*, %struct.inode** %5, align 8
  %40 = call i32 @ext4_ext_invalidate_cache(%struct.inode* %39)
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* @EXT_MAX_BLOCKS, align 4
  %43 = sub nsw i32 %42, 1
  %44 = icmp slt i32 %41, %43
  br i1 %44, label %45, label %118

45:                                               ; preds = %38
  %46 = load %struct.inode*, %struct.inode** %5, align 8
  %47 = load i32, i32* %7, align 4
  %48 = call %struct.ext4_ext_path* @ext4_ext_find_extent(%struct.inode* %46, i32 %47, i32* null)
  store %struct.ext4_ext_path* %48, %struct.ext4_ext_path** %10, align 8
  %49 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %50 = call i64 @IS_ERR(%struct.ext4_ext_path* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %45
  %53 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %11, align 8
  %54 = call i32 @ext4_journal_stop(%struct.ext4_ext_path* %53)
  %55 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %56 = call i32 @PTR_ERR(%struct.ext4_ext_path* %55)
  store i32 %56, i32* %4, align 4
  br label %484

57:                                               ; preds = %45
  %58 = load %struct.inode*, %struct.inode** %5, align 8
  %59 = call i32 @ext_depth(%struct.inode* %58)
  store i32 %59, i32* %9, align 4
  %60 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %61 = load i32, i32* %9, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %60, i64 %62
  %64 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %63, i32 0, i32 5
  %65 = load %struct.ext4_extent*, %struct.ext4_extent** %64, align 8
  store %struct.ext4_extent* %65, %struct.ext4_extent** %14, align 8
  %66 = load %struct.ext4_extent*, %struct.ext4_extent** %14, align 8
  %67 = icmp ne %struct.ext4_extent* %66, null
  br i1 %67, label %78, label %68

68:                                               ; preds = %57
  %69 = load i32, i32* %9, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %68
  %72 = load %struct.inode*, %struct.inode** %5, align 8
  %73 = load i32, i32* %9, align 4
  %74 = call i32 @EXT4_ERROR_INODE(%struct.inode* %72, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %73)
  %75 = load i32, i32* @EIO, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %13, align 4
  br label %77

77:                                               ; preds = %71, %68
  br label %470

78:                                               ; preds = %57
  %79 = load %struct.ext4_extent*, %struct.ext4_extent** %14, align 8
  %80 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @le32_to_cpu(i32 %81)
  store i32 %82, i32* %15, align 4
  %83 = load i32, i32* %7, align 4
  %84 = load i32, i32* %15, align 4
  %85 = icmp sge i32 %83, %84
  br i1 %85, label %86, label %117

86:                                               ; preds = %78
  %87 = load i32, i32* %7, align 4
  %88 = load i32, i32* %15, align 4
  %89 = load %struct.ext4_extent*, %struct.ext4_extent** %14, align 8
  %90 = call i32 @ext4_ext_get_actual_len(%struct.ext4_extent* %89)
  %91 = add nsw i32 %88, %90
  %92 = sub nsw i32 %91, 1
  %93 = icmp slt i32 %87, %92
  br i1 %93, label %94, label %117

94:                                               ; preds = %86
  store i32 0, i32* %16, align 4
  %95 = load %struct.ext4_extent*, %struct.ext4_extent** %14, align 8
  %96 = call i64 @ext4_ext_is_uninitialized(%struct.ext4_extent* %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %94
  %99 = load i32, i32* @EXT4_EXT_MARK_UNINIT1, align 4
  %100 = load i32, i32* @EXT4_EXT_MARK_UNINIT2, align 4
  %101 = or i32 %99, %100
  store i32 %101, i32* %16, align 4
  br label %102

102:                                              ; preds = %98, %94
  %103 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %11, align 8
  %104 = load %struct.inode*, %struct.inode** %5, align 8
  %105 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %106 = load i32, i32* %7, align 4
  %107 = add nsw i32 %106, 1
  %108 = load i32, i32* %16, align 4
  %109 = load i32, i32* @EXT4_GET_BLOCKS_DIO, align 4
  %110 = load i32, i32* @EXT4_GET_BLOCKS_METADATA_NOFAIL, align 4
  %111 = or i32 %109, %110
  %112 = call i32 @ext4_split_extent_at(%struct.ext4_ext_path* %103, %struct.inode* %104, %struct.ext4_ext_path* %105, i32 %107, i32 %108, i32 %111)
  store i32 %112, i32* %13, align 4
  %113 = load i32, i32* %13, align 4
  %114 = icmp slt i32 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %102
  br label %470

116:                                              ; preds = %102
  br label %117

117:                                              ; preds = %116, %86, %78
  br label %118

118:                                              ; preds = %117, %38
  %119 = load %struct.inode*, %struct.inode** %5, align 8
  %120 = call i32 @ext_depth(%struct.inode* %119)
  store i32 %120, i32* %9, align 4
  %121 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %122 = icmp ne %struct.ext4_ext_path* %121, null
  br i1 %122, label %123, label %146

123:                                              ; preds = %118
  %124 = load i32, i32* %9, align 4
  store i32 %124, i32* %12, align 4
  store i32 %124, i32* %17, align 4
  br label %125

125:                                              ; preds = %129, %123
  %126 = load i32, i32* %17, align 4
  %127 = add nsw i32 %126, -1
  store i32 %127, i32* %17, align 4
  %128 = icmp sgt i32 %127, 0
  br i1 %128, label %129, label %145

129:                                              ; preds = %125
  %130 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %131 = load i32, i32* %17, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %130, i64 %132
  %134 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %133, i32 0, i32 1
  %135 = load %struct.TYPE_7__*, %struct.TYPE_7__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = call i8* @le16_to_cpu(i64 %137)
  %139 = getelementptr i8, i8* %138, i64 1
  %140 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %141 = load i32, i32* %17, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %140, i64 %142
  %144 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %143, i32 0, i32 3
  store i8* %139, i8** %144, align 8
  br label %125

145:                                              ; preds = %125
  br label %183

146:                                              ; preds = %118
  %147 = load i32, i32* %9, align 4
  %148 = add nsw i32 %147, 1
  %149 = sext i32 %148 to i64
  %150 = mul i64 48, %149
  %151 = trunc i64 %150 to i32
  %152 = load i32, i32* @GFP_NOFS, align 4
  %153 = call %struct.ext4_ext_path* @kzalloc(i32 %151, i32 %152)
  store %struct.ext4_ext_path* %153, %struct.ext4_ext_path** %10, align 8
  %154 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %155 = icmp eq %struct.ext4_ext_path* %154, null
  br i1 %155, label %156, label %161

156:                                              ; preds = %146
  %157 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %11, align 8
  %158 = call i32 @ext4_journal_stop(%struct.ext4_ext_path* %157)
  %159 = load i32, i32* @ENOMEM, align 4
  %160 = sub nsw i32 0, %159
  store i32 %160, i32* %4, align 4
  br label %484

161:                                              ; preds = %146
  %162 = load i32, i32* %9, align 4
  %163 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %164 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %163, i64 0
  %165 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %164, i32 0, i32 0
  store i32 %162, i32* %165, align 8
  %166 = load %struct.inode*, %struct.inode** %5, align 8
  %167 = call %struct.TYPE_7__* @ext_inode_hdr(%struct.inode* %166)
  %168 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %169 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %168, i64 0
  %170 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %169, i32 0, i32 1
  store %struct.TYPE_7__* %167, %struct.TYPE_7__** %170, align 8
  store i32 0, i32* %12, align 4
  %171 = load %struct.inode*, %struct.inode** %5, align 8
  %172 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %173 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %172, i64 0
  %174 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %173, i32 0, i32 1
  %175 = load %struct.TYPE_7__*, %struct.TYPE_7__** %174, align 8
  %176 = load i32, i32* %9, align 4
  %177 = call i64 @ext4_ext_check(%struct.inode* %171, %struct.TYPE_7__* %175, i32 %176)
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %182

179:                                              ; preds = %161
  %180 = load i32, i32* @EIO, align 4
  %181 = sub nsw i32 0, %180
  store i32 %181, i32* %13, align 4
  br label %470

182:                                              ; preds = %161
  br label %183

183:                                              ; preds = %182, %145
  store i32 0, i32* %13, align 4
  br label %184

184:                                              ; preds = %439, %196, %183
  %185 = load i32, i32* %12, align 4
  %186 = icmp sge i32 %185, 0
  br i1 %186, label %187, label %190

187:                                              ; preds = %184
  %188 = load i32, i32* %13, align 4
  %189 = icmp eq i32 %188, 0
  br label %190

190:                                              ; preds = %187, %184
  %191 = phi i1 [ false, %184 ], [ %189, %187 ]
  br i1 %191, label %192, label %440

192:                                              ; preds = %190
  %193 = load i32, i32* %12, align 4
  %194 = load i32, i32* %9, align 4
  %195 = icmp eq i32 %193, %194
  br i1 %195, label %196, label %217

196:                                              ; preds = %192
  %197 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %11, align 8
  %198 = load %struct.inode*, %struct.inode** %5, align 8
  %199 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %200 = load i32, i32* %6, align 4
  %201 = load i32, i32* %7, align 4
  %202 = call i32 @ext4_ext_rm_leaf(%struct.ext4_ext_path* %197, %struct.inode* %198, %struct.ext4_ext_path* %199, i32 %200, i32 %201)
  store i32 %202, i32* %13, align 4
  %203 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %204 = load i32, i32* %12, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %203, i64 %205
  %207 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %206, i32 0, i32 2
  %208 = load %struct.buffer_head*, %struct.buffer_head** %207, align 8
  %209 = call i32 @brelse(%struct.buffer_head* %208)
  %210 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %211 = load i32, i32* %12, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %210, i64 %212
  %214 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %213, i32 0, i32 2
  store %struct.buffer_head* null, %struct.buffer_head** %214, align 8
  %215 = load i32, i32* %12, align 4
  %216 = add nsw i32 %215, -1
  store i32 %216, i32* %12, align 4
  br label %184

217:                                              ; preds = %192
  %218 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %219 = load i32, i32* %12, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %218, i64 %220
  %222 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %221, i32 0, i32 1
  %223 = load %struct.TYPE_7__*, %struct.TYPE_7__** %222, align 8
  %224 = icmp ne %struct.TYPE_7__* %223, null
  br i1 %224, label %239, label %225

225:                                              ; preds = %217
  %226 = call i32 (i8*, ...) @ext_debug(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %227 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %228 = load i32, i32* %12, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %227, i64 %229
  %231 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %230, i32 0, i32 2
  %232 = load %struct.buffer_head*, %struct.buffer_head** %231, align 8
  %233 = call %struct.TYPE_7__* @ext_block_hdr(%struct.buffer_head* %232)
  %234 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %235 = load i32, i32* %12, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %234, i64 %236
  %238 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %237, i32 0, i32 1
  store %struct.TYPE_7__* %233, %struct.TYPE_7__** %238, align 8
  br label %239

239:                                              ; preds = %225, %217
  %240 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %241 = load i32, i32* %12, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %240, i64 %242
  %244 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %243, i32 0, i32 4
  %245 = load i64, i64* %244, align 8
  %246 = icmp ne i64 %245, 0
  br i1 %246, label %291, label %247

247:                                              ; preds = %239
  %248 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %249 = load i32, i32* %12, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %248, i64 %250
  %252 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %251, i32 0, i32 1
  %253 = load %struct.TYPE_7__*, %struct.TYPE_7__** %252, align 8
  %254 = call i64 @EXT_LAST_INDEX(%struct.TYPE_7__* %253)
  %255 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %256 = load i32, i32* %12, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %255, i64 %257
  %259 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %258, i32 0, i32 4
  store i64 %254, i64* %259, align 8
  %260 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %261 = load i32, i32* %12, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %260, i64 %262
  %264 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %263, i32 0, i32 1
  %265 = load %struct.TYPE_7__*, %struct.TYPE_7__** %264, align 8
  %266 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %265, i32 0, i32 0
  %267 = load i64, i64* %266, align 8
  %268 = call i8* @le16_to_cpu(i64 %267)
  %269 = getelementptr i8, i8* %268, i64 1
  %270 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %271 = load i32, i32* %12, align 4
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %270, i64 %272
  %274 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %273, i32 0, i32 3
  store i8* %269, i8** %274, align 8
  %275 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %276 = load i32, i32* %12, align 4
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %275, i64 %277
  %279 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %278, i32 0, i32 1
  %280 = load %struct.TYPE_7__*, %struct.TYPE_7__** %279, align 8
  %281 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %282 = load i32, i32* %12, align 4
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %281, i64 %283
  %285 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %284, i32 0, i32 1
  %286 = load %struct.TYPE_7__*, %struct.TYPE_7__** %285, align 8
  %287 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %286, i32 0, i32 0
  %288 = load i64, i64* %287, align 8
  %289 = call i8* @le16_to_cpu(i64 %288)
  %290 = call i32 (i8*, ...) @ext_debug(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), %struct.TYPE_7__* %280, i8* %289)
  br label %299

291:                                              ; preds = %239
  %292 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %293 = load i32, i32* %12, align 4
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %292, i64 %294
  %296 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %295, i32 0, i32 4
  %297 = load i64, i64* %296, align 8
  %298 = add nsw i64 %297, -1
  store i64 %298, i64* %296, align 8
  br label %299

299:                                              ; preds = %291, %247
  %300 = load i32, i32* %12, align 4
  %301 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %302 = load i32, i32* %12, align 4
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %301, i64 %303
  %305 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %304, i32 0, i32 1
  %306 = load %struct.TYPE_7__*, %struct.TYPE_7__** %305, align 8
  %307 = call i32 @EXT_FIRST_INDEX(%struct.TYPE_7__* %306)
  %308 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %309 = load i32, i32* %12, align 4
  %310 = sext i32 %309 to i64
  %311 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %308, i64 %310
  %312 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %311, i32 0, i32 4
  %313 = load i64, i64* %312, align 8
  %314 = call i32 (i8*, ...) @ext_debug(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0), i32 %300, i32 %307, i64 %313)
  %315 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %316 = load i32, i32* %12, align 4
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %315, i64 %317
  %319 = call i64 @ext4_ext_more_to_rm(%struct.ext4_ext_path* %318)
  %320 = icmp ne i64 %319, 0
  br i1 %320, label %321, label %401

321:                                              ; preds = %299
  %322 = load i32, i32* %12, align 4
  %323 = add nsw i32 %322, 1
  %324 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %325 = load i32, i32* %12, align 4
  %326 = sext i32 %325 to i64
  %327 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %324, i64 %326
  %328 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %327, i32 0, i32 4
  %329 = load i64, i64* %328, align 8
  %330 = call i32 @ext4_idx_pblock(i64 %329)
  %331 = call i32 (i8*, ...) @ext_debug(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i32 %323, i32 %330)
  %332 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %333 = load i32, i32* %12, align 4
  %334 = sext i32 %333 to i64
  %335 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %332, i64 %334
  %336 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %335, i64 1
  %337 = call i32 @memset(%struct.ext4_ext_path* %336, i32 0, i32 48)
  %338 = load %struct.super_block*, %struct.super_block** %8, align 8
  %339 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %340 = load i32, i32* %12, align 4
  %341 = sext i32 %340 to i64
  %342 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %339, i64 %341
  %343 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %342, i32 0, i32 4
  %344 = load i64, i64* %343, align 8
  %345 = call i32 @ext4_idx_pblock(i64 %344)
  %346 = call %struct.buffer_head* @sb_bread(%struct.super_block* %338, i32 %345)
  store %struct.buffer_head* %346, %struct.buffer_head** %18, align 8
  %347 = load %struct.buffer_head*, %struct.buffer_head** %18, align 8
  %348 = icmp ne %struct.buffer_head* %347, null
  br i1 %348, label %352, label %349

349:                                              ; preds = %321
  %350 = load i32, i32* @EIO, align 4
  %351 = sub nsw i32 0, %350
  store i32 %351, i32* %13, align 4
  br label %440

352:                                              ; preds = %321
  %353 = load i32, i32* %12, align 4
  %354 = add nsw i32 %353, 1
  %355 = load i32, i32* %9, align 4
  %356 = icmp sgt i32 %354, %355
  %357 = zext i1 %356 to i32
  %358 = call i64 @WARN_ON(i32 %357)
  %359 = icmp ne i64 %358, 0
  br i1 %359, label %360, label %363

360:                                              ; preds = %352
  %361 = load i32, i32* @EIO, align 4
  %362 = sub nsw i32 0, %361
  store i32 %362, i32* %13, align 4
  br label %440

363:                                              ; preds = %352
  %364 = load %struct.inode*, %struct.inode** %5, align 8
  %365 = load %struct.buffer_head*, %struct.buffer_head** %18, align 8
  %366 = call %struct.TYPE_7__* @ext_block_hdr(%struct.buffer_head* %365)
  %367 = load i32, i32* %9, align 4
  %368 = load i32, i32* %12, align 4
  %369 = sub nsw i32 %367, %368
  %370 = sub nsw i32 %369, 1
  %371 = load %struct.buffer_head*, %struct.buffer_head** %18, align 8
  %372 = call i64 @ext4_ext_check_block(%struct.inode* %364, %struct.TYPE_7__* %366, i32 %370, %struct.buffer_head* %371)
  %373 = icmp ne i64 %372, 0
  br i1 %373, label %374, label %377

374:                                              ; preds = %363
  %375 = load i32, i32* @EIO, align 4
  %376 = sub nsw i32 0, %375
  store i32 %376, i32* %13, align 4
  br label %440

377:                                              ; preds = %363
  %378 = load %struct.buffer_head*, %struct.buffer_head** %18, align 8
  %379 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %380 = load i32, i32* %12, align 4
  %381 = add nsw i32 %380, 1
  %382 = sext i32 %381 to i64
  %383 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %379, i64 %382
  %384 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %383, i32 0, i32 2
  store %struct.buffer_head* %378, %struct.buffer_head** %384, align 8
  %385 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %386 = load i32, i32* %12, align 4
  %387 = sext i32 %386 to i64
  %388 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %385, i64 %387
  %389 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %388, i32 0, i32 1
  %390 = load %struct.TYPE_7__*, %struct.TYPE_7__** %389, align 8
  %391 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %390, i32 0, i32 0
  %392 = load i64, i64* %391, align 8
  %393 = call i8* @le16_to_cpu(i64 %392)
  %394 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %395 = load i32, i32* %12, align 4
  %396 = sext i32 %395 to i64
  %397 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %394, i64 %396
  %398 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %397, i32 0, i32 3
  store i8* %393, i8** %398, align 8
  %399 = load i32, i32* %12, align 4
  %400 = add nsw i32 %399, 1
  store i32 %400, i32* %12, align 4
  br label %439

401:                                              ; preds = %299
  %402 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %403 = load i32, i32* %12, align 4
  %404 = sext i32 %403 to i64
  %405 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %402, i64 %404
  %406 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %405, i32 0, i32 1
  %407 = load %struct.TYPE_7__*, %struct.TYPE_7__** %406, align 8
  %408 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %407, i32 0, i32 0
  %409 = load i64, i64* %408, align 8
  %410 = icmp eq i64 %409, 0
  br i1 %410, label %411, label %422

411:                                              ; preds = %401
  %412 = load i32, i32* %12, align 4
  %413 = icmp sgt i32 %412, 0
  br i1 %413, label %414, label %422

414:                                              ; preds = %411
  %415 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %11, align 8
  %416 = load %struct.inode*, %struct.inode** %5, align 8
  %417 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %418 = load i32, i32* %12, align 4
  %419 = sext i32 %418 to i64
  %420 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %417, i64 %419
  %421 = call i32 @ext4_ext_rm_idx(%struct.ext4_ext_path* %415, %struct.inode* %416, %struct.ext4_ext_path* %420)
  store i32 %421, i32* %13, align 4
  br label %422

422:                                              ; preds = %414, %411, %401
  %423 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %424 = load i32, i32* %12, align 4
  %425 = sext i32 %424 to i64
  %426 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %423, i64 %425
  %427 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %426, i32 0, i32 2
  %428 = load %struct.buffer_head*, %struct.buffer_head** %427, align 8
  %429 = call i32 @brelse(%struct.buffer_head* %428)
  %430 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %431 = load i32, i32* %12, align 4
  %432 = sext i32 %431 to i64
  %433 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %430, i64 %432
  %434 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %433, i32 0, i32 2
  store %struct.buffer_head* null, %struct.buffer_head** %434, align 8
  %435 = load i32, i32* %12, align 4
  %436 = add nsw i32 %435, -1
  store i32 %436, i32* %12, align 4
  %437 = load i32, i32* %12, align 4
  %438 = call i32 (i8*, ...) @ext_debug(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i32 %437)
  br label %439

439:                                              ; preds = %422, %377
  br label %184

440:                                              ; preds = %374, %360, %349, %190
  %441 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %442 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %441, i32 0, i32 1
  %443 = load %struct.TYPE_7__*, %struct.TYPE_7__** %442, align 8
  %444 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %443, i32 0, i32 0
  %445 = load i64, i64* %444, align 8
  %446 = icmp eq i64 %445, 0
  br i1 %446, label %447, label %469

447:                                              ; preds = %440
  %448 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %11, align 8
  %449 = load %struct.inode*, %struct.inode** %5, align 8
  %450 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %451 = call i32 @ext4_ext_get_access(%struct.ext4_ext_path* %448, %struct.inode* %449, %struct.ext4_ext_path* %450)
  store i32 %451, i32* %13, align 4
  %452 = load i32, i32* %13, align 4
  %453 = icmp eq i32 %452, 0
  br i1 %453, label %454, label %468

454:                                              ; preds = %447
  %455 = load %struct.inode*, %struct.inode** %5, align 8
  %456 = call %struct.TYPE_7__* @ext_inode_hdr(%struct.inode* %455)
  %457 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %456, i32 0, i32 2
  store i64 0, i64* %457, align 8
  %458 = load %struct.inode*, %struct.inode** %5, align 8
  %459 = call i32 @ext4_ext_space_root(%struct.inode* %458, i32 0)
  %460 = call i32 @cpu_to_le16(i32 %459)
  %461 = load %struct.inode*, %struct.inode** %5, align 8
  %462 = call %struct.TYPE_7__* @ext_inode_hdr(%struct.inode* %461)
  %463 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %462, i32 0, i32 1
  store i32 %460, i32* %463, align 8
  %464 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %11, align 8
  %465 = load %struct.inode*, %struct.inode** %5, align 8
  %466 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %467 = call i32 @ext4_ext_dirty(%struct.ext4_ext_path* %464, %struct.inode* %465, %struct.ext4_ext_path* %466)
  store i32 %467, i32* %13, align 4
  br label %468

468:                                              ; preds = %454, %447
  br label %469

469:                                              ; preds = %468, %440
  br label %470

470:                                              ; preds = %469, %179, %115, %77
  %471 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %472 = call i32 @ext4_ext_drop_refs(%struct.ext4_ext_path* %471)
  %473 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %474 = call i32 @kfree(%struct.ext4_ext_path* %473)
  %475 = load i32, i32* %13, align 4
  %476 = load i32, i32* @EAGAIN, align 4
  %477 = sub nsw i32 0, %476
  %478 = icmp eq i32 %475, %477
  br i1 %478, label %479, label %480

479:                                              ; preds = %470
  store %struct.ext4_ext_path* null, %struct.ext4_ext_path** %10, align 8
  br label %38

480:                                              ; preds = %470
  %481 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %11, align 8
  %482 = call i32 @ext4_journal_stop(%struct.ext4_ext_path* %481)
  %483 = load i32, i32* %13, align 4
  store i32 %483, i32* %4, align 4
  br label %484

484:                                              ; preds = %480, %156, %52, %34
  %485 = load i32, i32* %4, align 4
  ret i32 %485
}

declare dso_local i32 @ext_depth(%struct.inode*) #1

declare dso_local i32 @ext_debug(i8*, ...) #1

declare dso_local %struct.ext4_ext_path* @ext4_journal_start(%struct.inode*, i32) #1

declare dso_local i64 @IS_ERR(%struct.ext4_ext_path*) #1

declare dso_local i32 @PTR_ERR(%struct.ext4_ext_path*) #1

declare dso_local i32 @ext4_ext_invalidate_cache(%struct.inode*) #1

declare dso_local %struct.ext4_ext_path* @ext4_ext_find_extent(%struct.inode*, i32, i32*) #1

declare dso_local i32 @ext4_journal_stop(%struct.ext4_ext_path*) #1

declare dso_local i32 @EXT4_ERROR_INODE(%struct.inode*, i8*, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @ext4_ext_get_actual_len(%struct.ext4_extent*) #1

declare dso_local i64 @ext4_ext_is_uninitialized(%struct.ext4_extent*) #1

declare dso_local i32 @ext4_split_extent_at(%struct.ext4_ext_path*, %struct.inode*, %struct.ext4_ext_path*, i32, i32, i32) #1

declare dso_local i8* @le16_to_cpu(i64) #1

declare dso_local %struct.ext4_ext_path* @kzalloc(i32, i32) #1

declare dso_local %struct.TYPE_7__* @ext_inode_hdr(%struct.inode*) #1

declare dso_local i64 @ext4_ext_check(%struct.inode*, %struct.TYPE_7__*, i32) #1

declare dso_local i32 @ext4_ext_rm_leaf(%struct.ext4_ext_path*, %struct.inode*, %struct.ext4_ext_path*, i32, i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local %struct.TYPE_7__* @ext_block_hdr(%struct.buffer_head*) #1

declare dso_local i64 @EXT_LAST_INDEX(%struct.TYPE_7__*) #1

declare dso_local i32 @EXT_FIRST_INDEX(%struct.TYPE_7__*) #1

declare dso_local i64 @ext4_ext_more_to_rm(%struct.ext4_ext_path*) #1

declare dso_local i32 @ext4_idx_pblock(i64) #1

declare dso_local i32 @memset(%struct.ext4_ext_path*, i32, i32) #1

declare dso_local %struct.buffer_head* @sb_bread(%struct.super_block*, i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i64 @ext4_ext_check_block(%struct.inode*, %struct.TYPE_7__*, i32, %struct.buffer_head*) #1

declare dso_local i32 @ext4_ext_rm_idx(%struct.ext4_ext_path*, %struct.inode*, %struct.ext4_ext_path*) #1

declare dso_local i32 @ext4_ext_get_access(%struct.ext4_ext_path*, %struct.inode*, %struct.ext4_ext_path*) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @ext4_ext_space_root(%struct.inode*, i32) #1

declare dso_local i32 @ext4_ext_dirty(%struct.ext4_ext_path*, %struct.inode*, %struct.ext4_ext_path*) #1

declare dso_local i32 @ext4_ext_drop_refs(%struct.ext4_ext_path*) #1

declare dso_local i32 @kfree(%struct.ext4_ext_path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
