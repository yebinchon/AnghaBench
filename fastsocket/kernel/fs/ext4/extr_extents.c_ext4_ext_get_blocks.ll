; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_extents.c_ext4_ext_get_blocks.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_extents.c_ext4_ext_get_blocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.buffer_head = type { i32, i32, i32 }
%struct.ext4_ext_path = type { %struct.ext4_extent*, %struct.ext4_extent_header*, i32 }
%struct.ext4_extent = type { i8*, i32, i32, i32 }
%struct.ext4_extent_header = type { i32 }
%struct.ext4_allocation_request = type { i16, i16, i16, i16, i32, i64, %struct.inode*, i32, i32 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__* }

@BH_New = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"blocks %u/%u requested for inode %lu\0A\00", align 1
@EXT4_GET_BLOCKS_CREATE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [53 x i8] c"bad extent address iblock: %d, depth: %d pblock %lld\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"%u fit into %u:%d -> %llu\0A\00", align 1
@EXT_INIT_MAX_LEN = common dso_local global i32 0, align 4
@EXT4_GET_BLOCKS_UNINIT_EXT = common dso_local global i32 0, align 4
@EXT_UNINIT_MAX_LEN = common dso_local global i32 0, align 4
@EXT4_MB_HINT_DATA = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [46 x i8] c"allocate new block: goal %llu, found %llu/%u\0A\00", align 1
@EXT4_GET_BLOCKS_METADATA_NOFAIL = common dso_local global i32 0, align 4
@EXT4_GET_BLOCKS_DIO_CREATE_EXT = common dso_local global i32 0, align 4
@DIO_AIO_UNWRITTEN = common dso_local global i64 0, align 8
@EXT4_STATE_DIO_UNWRITTEN = common dso_local global i32 0, align 4
@EXT4_GET_BLOCKS_DELALLOC_RESERVE = common dso_local global i32 0, align 4
@EXT4_FREE_BLOCKS_NO_QUOT_UPDATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext4_ext_get_blocks(i32* %0, %struct.inode* %1, i16 zeroext %2, i32 %3, %struct.buffer_head* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca i16, align 2
  %11 = alloca i32, align 4
  %12 = alloca %struct.buffer_head*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.ext4_ext_path*, align 8
  %15 = alloca %struct.ext4_extent_header*, align 8
  %16 = alloca %struct.ext4_extent, align 8
  %17 = alloca %struct.ext4_extent*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.ext4_allocation_request, align 8
  %24 = alloca %struct.TYPE_5__*, align 8
  %25 = alloca i16, align 2
  %26 = alloca i32, align 4
  %27 = alloca i16, align 2
  %28 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store %struct.inode* %1, %struct.inode** %9, align 8
  store i16 %2, i16* %10, align 2
  store i32 %3, i32* %11, align 4
  store %struct.buffer_head* %4, %struct.buffer_head** %12, align 8
  store i32 %5, i32* %13, align 4
  store %struct.ext4_ext_path* null, %struct.ext4_ext_path** %14, align 8
  store i32 0, i32* %19, align 4
  store i32 0, i32* %22, align 4
  %29 = load %struct.inode*, %struct.inode** %9, align 8
  %30 = call %struct.TYPE_6__* @EXT4_I(%struct.inode* %29)
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  store %struct.TYPE_5__* %32, %struct.TYPE_5__** %24, align 8
  %33 = load i32, i32* @BH_New, align 4
  %34 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %35 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %34, i32 0, i32 2
  %36 = call i32 @__clear_bit(i32 %33, i32* %35)
  %37 = load i16, i16* %10, align 2
  %38 = load i32, i32* %11, align 4
  %39 = load %struct.inode*, %struct.inode** %9, align 8
  %40 = getelementptr inbounds %struct.inode, %struct.inode* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 (i8*, i16, i32, i32, ...) @ext_debug(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i16 zeroext %37, i32 %38, i32 %41)
  %43 = load %struct.inode*, %struct.inode** %9, align 8
  %44 = load i16, i16* %10, align 2
  %45 = call i64 @ext4_ext_in_cache(%struct.inode* %43, i16 zeroext %44, %struct.ext4_extent* %16)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %85

47:                                               ; preds = %6
  %48 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %16, i32 0, i32 3
  %49 = load i32, i32* %48, align 8
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %62, label %51

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %16, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %62, label %55

55:                                               ; preds = %51
  %56 = load i32, i32* %13, align 4
  %57 = load i32, i32* @EXT4_GET_BLOCKS_CREATE, align 4
  %58 = and i32 %56, %57
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %55
  br label %447

61:                                               ; preds = %55
  br label %84

62:                                               ; preds = %51, %47
  %63 = load i16, i16* %10, align 2
  %64 = zext i16 %63 to i32
  %65 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %16, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = call zeroext i16 @le32_to_cpu(i32 %66)
  %68 = zext i16 %67 to i32
  %69 = sub nsw i32 %64, %68
  %70 = call i32 @ext4_ext_pblock(%struct.ext4_extent* %16)
  %71 = add i32 %69, %70
  store i32 %71, i32* %18, align 4
  %72 = call i8* @ext4_ext_get_actual_len(%struct.ext4_extent* %16)
  %73 = load i16, i16* %10, align 2
  %74 = zext i16 %73 to i32
  %75 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %16, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = call zeroext i16 @le32_to_cpu(i32 %76)
  %78 = zext i16 %77 to i32
  %79 = sub nsw i32 %74, %78
  %80 = sext i32 %79 to i64
  %81 = sub i64 0, %80
  %82 = getelementptr i8, i8* %72, i64 %81
  %83 = ptrtoint i8* %82 to i32
  store i32 %83, i32* %22, align 4
  br label %425

84:                                               ; preds = %61
  br label %85

85:                                               ; preds = %84, %6
  %86 = load %struct.inode*, %struct.inode** %9, align 8
  %87 = load i16, i16* %10, align 2
  %88 = call %struct.ext4_ext_path* @ext4_ext_find_extent(%struct.inode* %86, i16 zeroext %87, i32* null)
  store %struct.ext4_ext_path* %88, %struct.ext4_ext_path** %14, align 8
  %89 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %14, align 8
  %90 = call i64 @IS_ERR(%struct.ext4_ext_path* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %85
  %93 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %14, align 8
  %94 = call i32 @PTR_ERR(%struct.ext4_ext_path* %93)
  store i32 %94, i32* %19, align 4
  store %struct.ext4_ext_path* null, %struct.ext4_ext_path** %14, align 8
  br label %447

95:                                               ; preds = %85
  %96 = load %struct.inode*, %struct.inode** %9, align 8
  %97 = call i32 @ext_depth(%struct.inode* %96)
  store i32 %97, i32* %20, align 4
  %98 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %14, align 8
  %99 = load i32, i32* %20, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %98, i64 %100
  %102 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %101, i32 0, i32 0
  %103 = load %struct.ext4_extent*, %struct.ext4_extent** %102, align 8
  %104 = icmp eq %struct.ext4_extent* %103, null
  br i1 %104, label %105, label %108

105:                                              ; preds = %95
  %106 = load i32, i32* %20, align 4
  %107 = icmp ne i32 %106, 0
  br label %108

108:                                              ; preds = %105, %95
  %109 = phi i1 [ false, %95 ], [ %107, %105 ]
  %110 = zext i1 %109 to i32
  %111 = call i64 @unlikely(i32 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %126

113:                                              ; preds = %108
  %114 = load %struct.inode*, %struct.inode** %9, align 8
  %115 = load i16, i16* %10, align 2
  %116 = load i32, i32* %20, align 4
  %117 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %14, align 8
  %118 = load i32, i32* %20, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %117, i64 %119
  %121 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = call i32 @EXT4_ERROR_INODE(%struct.inode* %114, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i16 zeroext %115, i32 %116, i32 %122)
  %124 = load i32, i32* @EIO, align 4
  %125 = sub nsw i32 0, %124
  store i32 %125, i32* %19, align 4
  br label %447

126:                                              ; preds = %108
  %127 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %14, align 8
  %128 = load i32, i32* %20, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %127, i64 %129
  %131 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %130, i32 0, i32 1
  %132 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %131, align 8
  store %struct.ext4_extent_header* %132, %struct.ext4_extent_header** %15, align 8
  %133 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %14, align 8
  %134 = load i32, i32* %20, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %133, i64 %135
  %137 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %136, i32 0, i32 0
  %138 = load %struct.ext4_extent*, %struct.ext4_extent** %137, align 8
  store %struct.ext4_extent* %138, %struct.ext4_extent** %17, align 8
  %139 = load %struct.ext4_extent*, %struct.ext4_extent** %17, align 8
  %140 = icmp ne %struct.ext4_extent* %139, null
  br i1 %140, label %141, label %202

141:                                              ; preds = %126
  %142 = load %struct.ext4_extent*, %struct.ext4_extent** %17, align 8
  %143 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 8
  %145 = call zeroext i16 @le32_to_cpu(i32 %144)
  store i16 %145, i16* %25, align 2
  %146 = load %struct.ext4_extent*, %struct.ext4_extent** %17, align 8
  %147 = call i32 @ext4_ext_pblock(%struct.ext4_extent* %146)
  store i32 %147, i32* %26, align 4
  %148 = load %struct.ext4_extent*, %struct.ext4_extent** %17, align 8
  %149 = call i8* @ext4_ext_get_actual_len(%struct.ext4_extent* %148)
  %150 = ptrtoint i8* %149 to i16
  store i16 %150, i16* %27, align 2
  %151 = load i16, i16* %10, align 2
  %152 = load i16, i16* %25, align 2
  %153 = load i16, i16* %27, align 2
  %154 = call i64 @in_range(i16 zeroext %151, i16 zeroext %152, i16 zeroext %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %201

156:                                              ; preds = %141
  %157 = load i16, i16* %10, align 2
  %158 = zext i16 %157 to i32
  %159 = load i16, i16* %25, align 2
  %160 = zext i16 %159 to i32
  %161 = sub nsw i32 %158, %160
  %162 = load i32, i32* %26, align 4
  %163 = add i32 %161, %162
  store i32 %163, i32* %18, align 4
  %164 = load i16, i16* %27, align 2
  %165 = zext i16 %164 to i32
  %166 = load i16, i16* %10, align 2
  %167 = zext i16 %166 to i32
  %168 = load i16, i16* %25, align 2
  %169 = zext i16 %168 to i32
  %170 = sub nsw i32 %167, %169
  %171 = sub nsw i32 %165, %170
  store i32 %171, i32* %22, align 4
  %172 = load i16, i16* %10, align 2
  %173 = load i16, i16* %25, align 2
  %174 = zext i16 %173 to i32
  %175 = load i16, i16* %27, align 2
  %176 = zext i16 %175 to i32
  %177 = load i32, i32* %18, align 4
  %178 = call i32 (i8*, i16, i32, i32, ...) @ext_debug(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i16 zeroext %172, i32 %174, i32 %176, i32 %177)
  %179 = load %struct.ext4_extent*, %struct.ext4_extent** %17, align 8
  %180 = call i32 @ext4_ext_is_uninitialized(%struct.ext4_extent* %179)
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %189, label %182

182:                                              ; preds = %156
  %183 = load %struct.inode*, %struct.inode** %9, align 8
  %184 = load i16, i16* %25, align 2
  %185 = load i16, i16* %27, align 2
  %186 = zext i16 %185 to i32
  %187 = load i32, i32* %26, align 4
  %188 = call i32 @ext4_ext_put_in_cache(%struct.inode* %183, i16 zeroext %184, i32 %186, i32 %187)
  br label %425

189:                                              ; preds = %156
  %190 = load i32*, i32** %8, align 8
  %191 = load %struct.inode*, %struct.inode** %9, align 8
  %192 = load i16, i16* %10, align 2
  %193 = load i32, i32* %11, align 4
  %194 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %14, align 8
  %195 = load i32, i32* %13, align 4
  %196 = load i32, i32* %22, align 4
  %197 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %198 = load i32, i32* %18, align 4
  %199 = call i32 @ext4_ext_handle_uninitialized_extents(i32* %190, %struct.inode* %191, i16 zeroext %192, i32 %193, %struct.ext4_ext_path* %194, i32 %195, i32 %196, %struct.buffer_head* %197, i32 %198)
  store i32 %199, i32* %21, align 4
  %200 = load i32, i32* %21, align 4
  store i32 %200, i32* %7, align 4
  br label %464

201:                                              ; preds = %141
  br label %202

202:                                              ; preds = %201, %126
  %203 = load i32, i32* %13, align 4
  %204 = load i32, i32* @EXT4_GET_BLOCKS_CREATE, align 4
  %205 = and i32 %203, %204
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %207, label %212

207:                                              ; preds = %202
  %208 = load %struct.inode*, %struct.inode** %9, align 8
  %209 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %14, align 8
  %210 = load i16, i16* %10, align 2
  %211 = call i32 @ext4_ext_put_gap_in_cache(%struct.inode* %208, %struct.ext4_ext_path* %209, i16 zeroext %210)
  br label %447

212:                                              ; preds = %202
  %213 = load i16, i16* %10, align 2
  %214 = getelementptr inbounds %struct.ext4_allocation_request, %struct.ext4_allocation_request* %23, i32 0, i32 0
  store i16 %213, i16* %214, align 8
  %215 = load %struct.inode*, %struct.inode** %9, align 8
  %216 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %14, align 8
  %217 = getelementptr inbounds %struct.ext4_allocation_request, %struct.ext4_allocation_request* %23, i32 0, i32 0
  %218 = getelementptr inbounds %struct.ext4_allocation_request, %struct.ext4_allocation_request* %23, i32 0, i32 8
  %219 = call i32 @ext4_ext_search_left(%struct.inode* %215, %struct.ext4_ext_path* %216, i16* %217, i32* %218)
  store i32 %219, i32* %19, align 4
  %220 = load i32, i32* %19, align 4
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %223

222:                                              ; preds = %212
  br label %447

223:                                              ; preds = %212
  %224 = load i16, i16* %10, align 2
  %225 = getelementptr inbounds %struct.ext4_allocation_request, %struct.ext4_allocation_request* %23, i32 0, i32 1
  store i16 %224, i16* %225, align 2
  %226 = load %struct.inode*, %struct.inode** %9, align 8
  %227 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %14, align 8
  %228 = getelementptr inbounds %struct.ext4_allocation_request, %struct.ext4_allocation_request* %23, i32 0, i32 1
  %229 = getelementptr inbounds %struct.ext4_allocation_request, %struct.ext4_allocation_request* %23, i32 0, i32 7
  %230 = call i32 @ext4_ext_search_right(%struct.inode* %226, %struct.ext4_ext_path* %227, i16* %228, i32* %229)
  store i32 %230, i32* %19, align 4
  %231 = load i32, i32* %19, align 4
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %234

233:                                              ; preds = %223
  br label %447

234:                                              ; preds = %223
  %235 = load i32, i32* %11, align 4
  %236 = load i32, i32* @EXT_INIT_MAX_LEN, align 4
  %237 = icmp ugt i32 %235, %236
  br i1 %237, label %238, label %245

238:                                              ; preds = %234
  %239 = load i32, i32* %13, align 4
  %240 = load i32, i32* @EXT4_GET_BLOCKS_UNINIT_EXT, align 4
  %241 = and i32 %239, %240
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %245, label %243

243:                                              ; preds = %238
  %244 = load i32, i32* @EXT_INIT_MAX_LEN, align 4
  store i32 %244, i32* %11, align 4
  br label %257

245:                                              ; preds = %238, %234
  %246 = load i32, i32* %11, align 4
  %247 = load i32, i32* @EXT_UNINIT_MAX_LEN, align 4
  %248 = icmp ugt i32 %246, %247
  br i1 %248, label %249, label %256

249:                                              ; preds = %245
  %250 = load i32, i32* %13, align 4
  %251 = load i32, i32* @EXT4_GET_BLOCKS_UNINIT_EXT, align 4
  %252 = and i32 %250, %251
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %254, label %256

254:                                              ; preds = %249
  %255 = load i32, i32* @EXT_UNINIT_MAX_LEN, align 4
  store i32 %255, i32* %11, align 4
  br label %256

256:                                              ; preds = %254, %249, %245
  br label %257

257:                                              ; preds = %256, %243
  %258 = load i16, i16* %10, align 2
  %259 = call i32 @cpu_to_le32(i16 zeroext %258)
  %260 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %16, i32 0, i32 1
  store i32 %259, i32* %260, align 8
  %261 = load i32, i32* %11, align 4
  %262 = call i8* @cpu_to_le16(i32 %261)
  %263 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %16, i32 0, i32 0
  store i8* %262, i8** %263, align 8
  %264 = load %struct.inode*, %struct.inode** %9, align 8
  %265 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %14, align 8
  %266 = call i32 @ext4_ext_check_overlap(%struct.inode* %264, %struct.ext4_extent* %16, %struct.ext4_ext_path* %265)
  store i32 %266, i32* %19, align 4
  %267 = load i32, i32* %19, align 4
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %269, label %272

269:                                              ; preds = %257
  %270 = call i8* @ext4_ext_get_actual_len(%struct.ext4_extent* %16)
  %271 = ptrtoint i8* %270 to i32
  store i32 %271, i32* %22, align 4
  br label %274

272:                                              ; preds = %257
  %273 = load i32, i32* %11, align 4
  store i32 %273, i32* %22, align 4
  br label %274

274:                                              ; preds = %272, %269
  %275 = load %struct.inode*, %struct.inode** %9, align 8
  %276 = getelementptr inbounds %struct.ext4_allocation_request, %struct.ext4_allocation_request* %23, i32 0, i32 6
  store %struct.inode* %275, %struct.inode** %276, align 8
  %277 = load %struct.inode*, %struct.inode** %9, align 8
  %278 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %14, align 8
  %279 = load i16, i16* %10, align 2
  %280 = call zeroext i16 @ext4_ext_find_goal(%struct.inode* %277, %struct.ext4_ext_path* %278, i16 zeroext %279)
  %281 = getelementptr inbounds %struct.ext4_allocation_request, %struct.ext4_allocation_request* %23, i32 0, i32 2
  store i16 %280, i16* %281, align 4
  %282 = load i16, i16* %10, align 2
  %283 = getelementptr inbounds %struct.ext4_allocation_request, %struct.ext4_allocation_request* %23, i32 0, i32 3
  store i16 %282, i16* %283, align 2
  %284 = load i32, i32* %22, align 4
  %285 = getelementptr inbounds %struct.ext4_allocation_request, %struct.ext4_allocation_request* %23, i32 0, i32 4
  store i32 %284, i32* %285, align 8
  %286 = load %struct.inode*, %struct.inode** %9, align 8
  %287 = getelementptr inbounds %struct.inode, %struct.inode* %286, i32 0, i32 2
  %288 = load i32, i32* %287, align 8
  %289 = call i64 @S_ISREG(i32 %288)
  %290 = icmp ne i64 %289, 0
  br i1 %290, label %291, label %294

291:                                              ; preds = %274
  %292 = load i64, i64* @EXT4_MB_HINT_DATA, align 8
  %293 = getelementptr inbounds %struct.ext4_allocation_request, %struct.ext4_allocation_request* %23, i32 0, i32 5
  store i64 %292, i64* %293, align 8
  br label %296

294:                                              ; preds = %274
  %295 = getelementptr inbounds %struct.ext4_allocation_request, %struct.ext4_allocation_request* %23, i32 0, i32 5
  store i64 0, i64* %295, align 8
  br label %296

296:                                              ; preds = %294, %291
  %297 = load i32*, i32** %8, align 8
  %298 = call i32 @ext4_mb_new_blocks(i32* %297, %struct.ext4_allocation_request* %23, i32* %19)
  store i32 %298, i32* %18, align 4
  %299 = load i32, i32* %18, align 4
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %302, label %301

301:                                              ; preds = %296
  br label %447

302:                                              ; preds = %296
  %303 = getelementptr inbounds %struct.ext4_allocation_request, %struct.ext4_allocation_request* %23, i32 0, i32 2
  %304 = load i16, i16* %303, align 4
  %305 = load i32, i32* %18, align 4
  %306 = load i32, i32* %22, align 4
  %307 = call i32 (i8*, i16, i32, i32, ...) @ext_debug(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0), i16 zeroext %304, i32 %305, i32 %306)
  %308 = load i32, i32* %18, align 4
  %309 = call i32 @ext4_ext_store_pblock(%struct.ext4_extent* %16, i32 %308)
  %310 = getelementptr inbounds %struct.ext4_allocation_request, %struct.ext4_allocation_request* %23, i32 0, i32 4
  %311 = load i32, i32* %310, align 8
  %312 = call i8* @cpu_to_le16(i32 %311)
  %313 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %16, i32 0, i32 0
  store i8* %312, i8** %313, align 8
  %314 = load i32, i32* %13, align 4
  %315 = load i32, i32* @EXT4_GET_BLOCKS_UNINIT_EXT, align 4
  %316 = and i32 %314, %315
  %317 = icmp ne i32 %316, 0
  br i1 %317, label %318, label %349

318:                                              ; preds = %302
  %319 = call i32 @ext4_ext_mark_uninitialized(%struct.ext4_extent* %16)
  %320 = load i32, i32* %13, align 4
  %321 = load i32, i32* @EXT4_GET_BLOCKS_METADATA_NOFAIL, align 4
  %322 = xor i32 %321, -1
  %323 = and i32 %320, %322
  %324 = load i32, i32* @EXT4_GET_BLOCKS_DIO_CREATE_EXT, align 4
  %325 = icmp eq i32 %323, %324
  br i1 %325, label %326, label %348

326:                                              ; preds = %318
  %327 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %328 = icmp ne %struct.TYPE_5__* %327, null
  br i1 %328, label %329, label %343

329:                                              ; preds = %326
  %330 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %331 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %330, i32 0, i32 0
  %332 = load i64, i64* %331, align 8
  %333 = load i64, i64* @DIO_AIO_UNWRITTEN, align 8
  %334 = icmp ne i64 %332, %333
  br i1 %334, label %335, label %343

335:                                              ; preds = %329
  %336 = load i64, i64* @DIO_AIO_UNWRITTEN, align 8
  %337 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %338 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %337, i32 0, i32 0
  store i64 %336, i64* %338, align 8
  %339 = load %struct.inode*, %struct.inode** %9, align 8
  %340 = call %struct.TYPE_6__* @EXT4_I(%struct.inode* %339)
  %341 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %340, i32 0, i32 0
  %342 = call i32 @atomic_inc(i32* %341)
  br label %347

343:                                              ; preds = %329, %326
  %344 = load %struct.inode*, %struct.inode** %9, align 8
  %345 = load i32, i32* @EXT4_STATE_DIO_UNWRITTEN, align 4
  %346 = call i32 @ext4_set_inode_state(%struct.inode* %344, i32 %345)
  br label %347

347:                                              ; preds = %343, %335
  br label %348

348:                                              ; preds = %347, %318
  br label %349

349:                                              ; preds = %348, %302
  %350 = load i32*, i32** %8, align 8
  %351 = load %struct.inode*, %struct.inode** %9, align 8
  %352 = load i16, i16* %10, align 2
  %353 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %14, align 8
  %354 = getelementptr inbounds %struct.ext4_allocation_request, %struct.ext4_allocation_request* %23, i32 0, i32 4
  %355 = load i32, i32* %354, align 8
  %356 = call i32 @check_eofblocks_fl(i32* %350, %struct.inode* %351, i16 zeroext %352, %struct.ext4_ext_path* %353, i32 %355)
  store i32 %356, i32* %19, align 4
  %357 = load i32, i32* %19, align 4
  %358 = icmp ne i32 %357, 0
  br i1 %358, label %359, label %360

359:                                              ; preds = %349
  br label %447

360:                                              ; preds = %349
  %361 = load i32*, i32** %8, align 8
  %362 = load %struct.inode*, %struct.inode** %9, align 8
  %363 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %14, align 8
  %364 = load i32, i32* %13, align 4
  %365 = call i32 @ext4_ext_insert_extent(i32* %361, %struct.inode* %362, %struct.ext4_ext_path* %363, %struct.ext4_extent* %16, i32 %364)
  store i32 %365, i32* %19, align 4
  %366 = load i32, i32* %19, align 4
  %367 = icmp ne i32 %366, 0
  br i1 %367, label %368, label %386

368:                                              ; preds = %360
  %369 = load i32, i32* %13, align 4
  %370 = load i32, i32* @EXT4_GET_BLOCKS_DELALLOC_RESERVE, align 4
  %371 = and i32 %369, %370
  %372 = icmp ne i32 %371, 0
  br i1 %372, label %373, label %375

373:                                              ; preds = %368
  %374 = load i32, i32* @EXT4_FREE_BLOCKS_NO_QUOT_UPDATE, align 4
  br label %376

375:                                              ; preds = %368
  br label %376

376:                                              ; preds = %375, %373
  %377 = phi i32 [ %374, %373 ], [ 0, %375 ]
  store i32 %377, i32* %28, align 4
  %378 = load %struct.inode*, %struct.inode** %9, align 8
  %379 = call i32 @ext4_discard_preallocations(%struct.inode* %378)
  %380 = load i32*, i32** %8, align 8
  %381 = load %struct.inode*, %struct.inode** %9, align 8
  %382 = call i32 @ext4_ext_pblock(%struct.ext4_extent* %16)
  %383 = call i8* @ext4_ext_get_actual_len(%struct.ext4_extent* %16)
  %384 = load i32, i32* %28, align 4
  %385 = call i32 @ext4_free_blocks(i32* %380, %struct.inode* %381, i32 %382, i8* %383, i32 %384)
  br label %447

386:                                              ; preds = %360
  %387 = call i32 @ext4_ext_pblock(%struct.ext4_extent* %16)
  store i32 %387, i32* %18, align 4
  %388 = call i8* @ext4_ext_get_actual_len(%struct.ext4_extent* %16)
  %389 = ptrtoint i8* %388 to i32
  store i32 %389, i32* %22, align 4
  %390 = load i32, i32* %22, align 4
  %391 = load i32, i32* %11, align 4
  %392 = icmp ugt i32 %390, %391
  br i1 %392, label %393, label %395

393:                                              ; preds = %386
  %394 = load i32, i32* %11, align 4
  store i32 %394, i32* %22, align 4
  br label %395

395:                                              ; preds = %393, %386
  %396 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %397 = call i32 @set_buffer_new(%struct.buffer_head* %396)
  %398 = load i32, i32* %13, align 4
  %399 = load i32, i32* @EXT4_GET_BLOCKS_DELALLOC_RESERVE, align 4
  %400 = and i32 %398, %399
  %401 = icmp ne i32 %400, 0
  br i1 %401, label %402, label %406

402:                                              ; preds = %395
  %403 = load %struct.inode*, %struct.inode** %9, align 8
  %404 = load i32, i32* %22, align 4
  %405 = call i32 @ext4_da_update_reserve_space(%struct.inode* %403, i32 %404, i32 1)
  br label %406

406:                                              ; preds = %402, %395
  %407 = load i32, i32* %13, align 4
  %408 = load i32, i32* @EXT4_GET_BLOCKS_UNINIT_EXT, align 4
  %409 = and i32 %407, %408
  %410 = icmp eq i32 %409, 0
  br i1 %410, label %411, label %420

411:                                              ; preds = %406
  %412 = load %struct.inode*, %struct.inode** %9, align 8
  %413 = load i16, i16* %10, align 2
  %414 = load i32, i32* %22, align 4
  %415 = load i32, i32* %18, align 4
  %416 = call i32 @ext4_ext_put_in_cache(%struct.inode* %412, i16 zeroext %413, i32 %414, i32 %415)
  %417 = load i32*, i32** %8, align 8
  %418 = load %struct.inode*, %struct.inode** %9, align 8
  %419 = call i32 @ext4_update_inode_fsync_trans(i32* %417, %struct.inode* %418, i32 1)
  br label %424

420:                                              ; preds = %406
  %421 = load i32*, i32** %8, align 8
  %422 = load %struct.inode*, %struct.inode** %9, align 8
  %423 = call i32 @ext4_update_inode_fsync_trans(i32* %421, %struct.inode* %422, i32 0)
  br label %424

424:                                              ; preds = %420, %411
  br label %425

425:                                              ; preds = %424, %182, %62
  %426 = load i32, i32* %22, align 4
  %427 = load i32, i32* %11, align 4
  %428 = icmp ugt i32 %426, %427
  br i1 %428, label %429, label %431

429:                                              ; preds = %425
  %430 = load i32, i32* %11, align 4
  store i32 %430, i32* %22, align 4
  br label %431

431:                                              ; preds = %429, %425
  %432 = load %struct.inode*, %struct.inode** %9, align 8
  %433 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %14, align 8
  %434 = call i32 @ext4_ext_show_leaf(%struct.inode* %432, %struct.ext4_ext_path* %433)
  %435 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %436 = call i32 @set_buffer_mapped(%struct.buffer_head* %435)
  %437 = load %struct.inode*, %struct.inode** %9, align 8
  %438 = getelementptr inbounds %struct.inode, %struct.inode* %437, i32 0, i32 1
  %439 = load %struct.TYPE_4__*, %struct.TYPE_4__** %438, align 8
  %440 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %439, i32 0, i32 0
  %441 = load i32, i32* %440, align 4
  %442 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %443 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %442, i32 0, i32 1
  store i32 %441, i32* %443, align 4
  %444 = load i32, i32* %18, align 4
  %445 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %446 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %445, i32 0, i32 0
  store i32 %444, i32* %446, align 4
  br label %447

447:                                              ; preds = %431, %376, %359, %301, %233, %222, %207, %113, %92, %60
  %448 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %14, align 8
  %449 = icmp ne %struct.ext4_ext_path* %448, null
  br i1 %449, label %450, label %455

450:                                              ; preds = %447
  %451 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %14, align 8
  %452 = call i32 @ext4_ext_drop_refs(%struct.ext4_ext_path* %451)
  %453 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %14, align 8
  %454 = call i32 @kfree(%struct.ext4_ext_path* %453)
  br label %455

455:                                              ; preds = %450, %447
  %456 = load i32, i32* %19, align 4
  %457 = icmp ne i32 %456, 0
  br i1 %457, label %458, label %460

458:                                              ; preds = %455
  %459 = load i32, i32* %19, align 4
  br label %462

460:                                              ; preds = %455
  %461 = load i32, i32* %22, align 4
  br label %462

462:                                              ; preds = %460, %458
  %463 = phi i32 [ %459, %458 ], [ %461, %460 ]
  store i32 %463, i32* %7, align 4
  br label %464

464:                                              ; preds = %462, %189
  %465 = load i32, i32* %7, align 4
  ret i32 %465
}

declare dso_local %struct.TYPE_6__* @EXT4_I(%struct.inode*) #1

declare dso_local i32 @__clear_bit(i32, i32*) #1

declare dso_local i32 @ext_debug(i8*, i16 zeroext, i32, i32, ...) #1

declare dso_local i64 @ext4_ext_in_cache(%struct.inode*, i16 zeroext, %struct.ext4_extent*) #1

declare dso_local zeroext i16 @le32_to_cpu(i32) #1

declare dso_local i32 @ext4_ext_pblock(%struct.ext4_extent*) #1

declare dso_local i8* @ext4_ext_get_actual_len(%struct.ext4_extent*) #1

declare dso_local %struct.ext4_ext_path* @ext4_ext_find_extent(%struct.inode*, i16 zeroext, i32*) #1

declare dso_local i64 @IS_ERR(%struct.ext4_ext_path*) #1

declare dso_local i32 @PTR_ERR(%struct.ext4_ext_path*) #1

declare dso_local i32 @ext_depth(%struct.inode*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @EXT4_ERROR_INODE(%struct.inode*, i8*, i16 zeroext, i32, i32) #1

declare dso_local i64 @in_range(i16 zeroext, i16 zeroext, i16 zeroext) #1

declare dso_local i32 @ext4_ext_is_uninitialized(%struct.ext4_extent*) #1

declare dso_local i32 @ext4_ext_put_in_cache(%struct.inode*, i16 zeroext, i32, i32) #1

declare dso_local i32 @ext4_ext_handle_uninitialized_extents(i32*, %struct.inode*, i16 zeroext, i32, %struct.ext4_ext_path*, i32, i32, %struct.buffer_head*, i32) #1

declare dso_local i32 @ext4_ext_put_gap_in_cache(%struct.inode*, %struct.ext4_ext_path*, i16 zeroext) #1

declare dso_local i32 @ext4_ext_search_left(%struct.inode*, %struct.ext4_ext_path*, i16*, i32*) #1

declare dso_local i32 @ext4_ext_search_right(%struct.inode*, %struct.ext4_ext_path*, i16*, i32*) #1

declare dso_local i32 @cpu_to_le32(i16 zeroext) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @ext4_ext_check_overlap(%struct.inode*, %struct.ext4_extent*, %struct.ext4_ext_path*) #1

declare dso_local zeroext i16 @ext4_ext_find_goal(%struct.inode*, %struct.ext4_ext_path*, i16 zeroext) #1

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i32 @ext4_mb_new_blocks(i32*, %struct.ext4_allocation_request*, i32*) #1

declare dso_local i32 @ext4_ext_store_pblock(%struct.ext4_extent*, i32) #1

declare dso_local i32 @ext4_ext_mark_uninitialized(%struct.ext4_extent*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @ext4_set_inode_state(%struct.inode*, i32) #1

declare dso_local i32 @check_eofblocks_fl(i32*, %struct.inode*, i16 zeroext, %struct.ext4_ext_path*, i32) #1

declare dso_local i32 @ext4_ext_insert_extent(i32*, %struct.inode*, %struct.ext4_ext_path*, %struct.ext4_extent*, i32) #1

declare dso_local i32 @ext4_discard_preallocations(%struct.inode*) #1

declare dso_local i32 @ext4_free_blocks(i32*, %struct.inode*, i32, i8*, i32) #1

declare dso_local i32 @set_buffer_new(%struct.buffer_head*) #1

declare dso_local i32 @ext4_da_update_reserve_space(%struct.inode*, i32, i32) #1

declare dso_local i32 @ext4_update_inode_fsync_trans(i32*, %struct.inode*, i32) #1

declare dso_local i32 @ext4_ext_show_leaf(%struct.inode*, %struct.ext4_ext_path*) #1

declare dso_local i32 @set_buffer_mapped(%struct.buffer_head*) #1

declare dso_local i32 @ext4_ext_drop_refs(%struct.ext4_ext_path*) #1

declare dso_local i32 @kfree(%struct.ext4_ext_path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
