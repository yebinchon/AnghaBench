; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_extents.c_ext4_fill_fiemap_extents.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_extents.c_ext4_fill_fiemap_extents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i8 }
%struct.fiemap_extent_info = type { i32 }
%struct.ext4_ext_path = type { %struct.ext4_extent*, i32* }
%struct.ext4_extent = type { i32 }
%struct.ext4_ext_cache = type { i64, i64, i32 }
%struct.TYPE_4__ = type { i32 }

@EXT_MAX_BLOCKS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"path[%d].p_hdr == NULL\00", align 1
@EIO = common dso_local global i32 0, align 4
@FIEMAP_EXTENT_UNWRITTEN = common dso_local global i32 0, align 4
@FIEMAP_EXTENT_DELALLOC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"cbex.ec_len == 0\00", align 1
@FIEMAP_EXTENT_LAST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i64, i64, %struct.fiemap_extent_info*)* @ext4_fill_fiemap_extents to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_fill_fiemap_extents(%struct.inode* %0, i64 %1, i64 %2, %struct.fiemap_extent_info* %3) #0 {
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.fiemap_extent_info*, align 8
  %9 = alloca %struct.ext4_ext_path*, align 8
  %10 = alloca %struct.ext4_ext_cache, align 8
  %11 = alloca %struct.ext4_extent*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8, align 1
  %22 = alloca %struct.ext4_ext_cache, align 8
  store %struct.inode* %0, %struct.inode** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.fiemap_extent_info* %3, %struct.fiemap_extent_info** %8, align 8
  store %struct.ext4_ext_path* null, %struct.ext4_ext_path** %9, align 8
  store i64 0, i64* %14, align 8
  store i64 0, i64* %15, align 8
  %23 = load i64, i64* %6, align 8
  %24 = load i64, i64* %7, align 8
  %25 = add nsw i64 %23, %24
  store i64 %25, i64* %16, align 8
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  %26 = load %struct.inode*, %struct.inode** %5, align 8
  %27 = getelementptr inbounds %struct.inode, %struct.inode* %26, i32 0, i32 0
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i8, i8* %29, align 1
  store i8 %30, i8* %21, align 1
  br label %31

31:                                               ; preds = %320, %4
  %32 = load i64, i64* %6, align 8
  %33 = load i64, i64* %16, align 8
  %34 = icmp slt i64 %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %31
  %36 = load i64, i64* %6, align 8
  %37 = load i64, i64* @EXT_MAX_BLOCKS, align 8
  %38 = icmp ne i64 %36, %37
  br label %39

39:                                               ; preds = %35, %31
  %40 = phi i1 [ false, %31 ], [ %38, %35 ]
  br i1 %40, label %41, label %326

41:                                               ; preds = %39
  %42 = load i64, i64* %16, align 8
  %43 = load i64, i64* %6, align 8
  %44 = sub nsw i64 %42, %43
  store i64 %44, i64* %7, align 8
  %45 = load %struct.inode*, %struct.inode** %5, align 8
  %46 = call %struct.TYPE_4__* @EXT4_I(%struct.inode* %45)
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = call i32 @down_read(i32* %47)
  %49 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %9, align 8
  %50 = icmp ne %struct.ext4_ext_path* %49, null
  br i1 %50, label %51, label %59

51:                                               ; preds = %41
  %52 = load %struct.inode*, %struct.inode** %5, align 8
  %53 = call i32 @ext_depth(%struct.inode* %52)
  %54 = load i32, i32* %18, align 4
  %55 = icmp ne i32 %53, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %51
  %57 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %9, align 8
  %58 = call i32 @kfree(%struct.ext4_ext_path* %57)
  store %struct.ext4_ext_path* null, %struct.ext4_ext_path** %9, align 8
  br label %59

59:                                               ; preds = %56, %51, %41
  %60 = load %struct.inode*, %struct.inode** %5, align 8
  %61 = load i64, i64* %6, align 8
  %62 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %9, align 8
  %63 = call %struct.ext4_ext_path* @ext4_ext_find_extent(%struct.inode* %60, i64 %61, %struct.ext4_ext_path* %62)
  store %struct.ext4_ext_path* %63, %struct.ext4_ext_path** %9, align 8
  %64 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %9, align 8
  %65 = call i64 @IS_ERR(%struct.ext4_ext_path* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %59
  %68 = load %struct.inode*, %struct.inode** %5, align 8
  %69 = call %struct.TYPE_4__* @EXT4_I(%struct.inode* %68)
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = call i32 @up_read(i32* %70)
  %72 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %9, align 8
  %73 = call i32 @PTR_ERR(%struct.ext4_ext_path* %72)
  store i32 %73, i32* %19, align 4
  store %struct.ext4_ext_path* null, %struct.ext4_ext_path** %9, align 8
  br label %326

74:                                               ; preds = %59
  %75 = load %struct.inode*, %struct.inode** %5, align 8
  %76 = call i32 @ext_depth(%struct.inode* %75)
  store i32 %76, i32* %18, align 4
  %77 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %9, align 8
  %78 = load i32, i32* %18, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %77, i64 %79
  %81 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %80, i32 0, i32 1
  %82 = load i32*, i32** %81, align 8
  %83 = icmp eq i32* %82, null
  %84 = zext i1 %83 to i32
  %85 = call i64 @unlikely(i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %97

87:                                               ; preds = %74
  %88 = load %struct.inode*, %struct.inode** %5, align 8
  %89 = call %struct.TYPE_4__* @EXT4_I(%struct.inode* %88)
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = call i32 @up_read(i32* %90)
  %92 = load %struct.inode*, %struct.inode** %5, align 8
  %93 = load i32, i32* %18, align 4
  %94 = call i32 (%struct.inode*, i8*, ...) @EXT4_ERROR_INODE(%struct.inode* %92, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %93)
  %95 = load i32, i32* @EIO, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %19, align 4
  br label %326

97:                                               ; preds = %74
  %98 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %9, align 8
  %99 = load i32, i32* %18, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %98, i64 %100
  %102 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %101, i32 0, i32 0
  %103 = load %struct.ext4_extent*, %struct.ext4_extent** %102, align 8
  store %struct.ext4_extent* %103, %struct.ext4_extent** %11, align 8
  %104 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %9, align 8
  %105 = call i64 @ext4_ext_next_allocated_block(%struct.ext4_ext_path* %104)
  store i64 %105, i64* %12, align 8
  %106 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %9, align 8
  %107 = call i32 @ext4_ext_drop_refs(%struct.ext4_ext_path* %106)
  store i32 0, i32* %20, align 4
  store i32 0, i32* %17, align 4
  %108 = load %struct.ext4_extent*, %struct.ext4_extent** %11, align 8
  %109 = icmp ne %struct.ext4_extent* %108, null
  br i1 %109, label %115, label %110

110:                                              ; preds = %97
  %111 = load i64, i64* %6, align 8
  store i64 %111, i64* %14, align 8
  %112 = load i64, i64* %6, align 8
  %113 = load i64, i64* %7, align 8
  %114 = add nsw i64 %112, %113
  store i64 %114, i64* %15, align 8
  br label %190

115:                                              ; preds = %97
  %116 = load %struct.ext4_extent*, %struct.ext4_extent** %11, align 8
  %117 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = call i64 @le32_to_cpu(i32 %118)
  %120 = load i64, i64* %6, align 8
  %121 = icmp sgt i64 %119, %120
  br i1 %121, label %122, label %138

122:                                              ; preds = %115
  %123 = load i64, i64* %6, align 8
  store i64 %123, i64* %14, align 8
  %124 = load %struct.ext4_extent*, %struct.ext4_extent** %11, align 8
  %125 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = call i64 @le32_to_cpu(i32 %126)
  store i64 %127, i64* %15, align 8
  %128 = load i64, i64* %6, align 8
  %129 = load i64, i64* %7, align 8
  %130 = add nsw i64 %128, %129
  %131 = load i64, i64* %15, align 8
  %132 = icmp slt i64 %130, %131
  br i1 %132, label %133, label %137

133:                                              ; preds = %122
  %134 = load i64, i64* %6, align 8
  %135 = load i64, i64* %7, align 8
  %136 = add nsw i64 %134, %135
  store i64 %136, i64* %15, align 8
  br label %137

137:                                              ; preds = %133, %122
  br label %189

138:                                              ; preds = %115
  %139 = load i64, i64* %6, align 8
  %140 = load %struct.ext4_extent*, %struct.ext4_extent** %11, align 8
  %141 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = call i64 @le32_to_cpu(i32 %142)
  %144 = load %struct.ext4_extent*, %struct.ext4_extent** %11, align 8
  %145 = call i64 @ext4_ext_get_actual_len(%struct.ext4_extent* %144)
  %146 = add nsw i64 %143, %145
  %147 = icmp sge i64 %139, %146
  br i1 %147, label %148, label %159

148:                                              ; preds = %138
  %149 = load i64, i64* %6, align 8
  store i64 %149, i64* %14, align 8
  %150 = load i64, i64* %6, align 8
  %151 = load i64, i64* %7, align 8
  %152 = add nsw i64 %150, %151
  store i64 %152, i64* %15, align 8
  %153 = load i64, i64* %15, align 8
  %154 = load i64, i64* %12, align 8
  %155 = icmp sge i64 %153, %154
  br i1 %155, label %156, label %158

156:                                              ; preds = %148
  %157 = load i64, i64* %12, align 8
  store i64 %157, i64* %15, align 8
  br label %158

158:                                              ; preds = %156, %148
  br label %188

159:                                              ; preds = %138
  %160 = load i64, i64* %6, align 8
  %161 = load %struct.ext4_extent*, %struct.ext4_extent** %11, align 8
  %162 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = call i64 @le32_to_cpu(i32 %163)
  %165 = icmp sge i64 %160, %164
  br i1 %165, label %166, label %185

166:                                              ; preds = %159
  %167 = load i64, i64* %6, align 8
  store i64 %167, i64* %14, align 8
  %168 = load %struct.ext4_extent*, %struct.ext4_extent** %11, align 8
  %169 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = call i64 @le32_to_cpu(i32 %170)
  %172 = load %struct.ext4_extent*, %struct.ext4_extent** %11, align 8
  %173 = call i64 @ext4_ext_get_actual_len(%struct.ext4_extent* %172)
  %174 = add nsw i64 %171, %173
  store i64 %174, i64* %15, align 8
  %175 = load i64, i64* %6, align 8
  %176 = load i64, i64* %7, align 8
  %177 = add nsw i64 %175, %176
  %178 = load i64, i64* %15, align 8
  %179 = icmp slt i64 %177, %178
  br i1 %179, label %180, label %184

180:                                              ; preds = %166
  %181 = load i64, i64* %6, align 8
  %182 = load i64, i64* %7, align 8
  %183 = add nsw i64 %181, %182
  store i64 %183, i64* %15, align 8
  br label %184

184:                                              ; preds = %180, %166
  store i32 1, i32* %17, align 4
  br label %187

185:                                              ; preds = %159
  %186 = call i32 (...) @BUG()
  br label %187

187:                                              ; preds = %185, %184
  br label %188

188:                                              ; preds = %187, %158
  br label %189

189:                                              ; preds = %188, %137
  br label %190

190:                                              ; preds = %189, %110
  %191 = load i64, i64* %15, align 8
  %192 = load i64, i64* %14, align 8
  %193 = icmp sle i64 %191, %192
  %194 = zext i1 %193 to i32
  %195 = call i32 @BUG_ON(i32 %194)
  %196 = load i32, i32* %17, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %206, label %198

198:                                              ; preds = %190
  %199 = load i64, i64* %14, align 8
  %200 = getelementptr inbounds %struct.ext4_ext_cache, %struct.ext4_ext_cache* %10, i32 0, i32 0
  store i64 %199, i64* %200, align 8
  %201 = load i64, i64* %15, align 8
  %202 = load i64, i64* %14, align 8
  %203 = sub nsw i64 %201, %202
  %204 = getelementptr inbounds %struct.ext4_ext_cache, %struct.ext4_ext_cache* %10, i32 0, i32 1
  store i64 %203, i64* %204, align 8
  %205 = getelementptr inbounds %struct.ext4_ext_cache, %struct.ext4_ext_cache* %10, i32 0, i32 2
  store i32 0, i32* %205, align 8
  br label %226

206:                                              ; preds = %190
  %207 = load %struct.ext4_extent*, %struct.ext4_extent** %11, align 8
  %208 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 4
  %210 = call i64 @le32_to_cpu(i32 %209)
  %211 = getelementptr inbounds %struct.ext4_ext_cache, %struct.ext4_ext_cache* %10, i32 0, i32 0
  store i64 %210, i64* %211, align 8
  %212 = load %struct.ext4_extent*, %struct.ext4_extent** %11, align 8
  %213 = call i64 @ext4_ext_get_actual_len(%struct.ext4_extent* %212)
  %214 = getelementptr inbounds %struct.ext4_ext_cache, %struct.ext4_ext_cache* %10, i32 0, i32 1
  store i64 %213, i64* %214, align 8
  %215 = load %struct.ext4_extent*, %struct.ext4_extent** %11, align 8
  %216 = call i32 @ext4_ext_pblock(%struct.ext4_extent* %215)
  %217 = getelementptr inbounds %struct.ext4_ext_cache, %struct.ext4_ext_cache* %10, i32 0, i32 2
  store i32 %216, i32* %217, align 8
  %218 = load %struct.ext4_extent*, %struct.ext4_extent** %11, align 8
  %219 = call i64 @ext4_ext_is_uninitialized(%struct.ext4_extent* %218)
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %221, label %225

221:                                              ; preds = %206
  %222 = load i32, i32* @FIEMAP_EXTENT_UNWRITTEN, align 4
  %223 = load i32, i32* %20, align 4
  %224 = or i32 %223, %222
  store i32 %224, i32* %20, align 4
  br label %225

225:                                              ; preds = %221, %206
  br label %226

226:                                              ; preds = %225, %198
  %227 = load %struct.inode*, %struct.inode** %5, align 8
  %228 = call i64 @ext4_find_delayed_extent(%struct.inode* %227, %struct.ext4_ext_cache* %10)
  store i64 %228, i64* %13, align 8
  %229 = load i32, i32* %17, align 4
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %253, label %231

231:                                              ; preds = %226
  %232 = load i64, i64* %13, align 8
  %233 = load i64, i64* @EXT_MAX_BLOCKS, align 8
  %234 = icmp ne i64 %232, %233
  br i1 %234, label %235, label %253

235:                                              ; preds = %231
  store i32 1, i32* %17, align 4
  %236 = load i32, i32* @FIEMAP_EXTENT_DELALLOC, align 4
  %237 = load i32, i32* %20, align 4
  %238 = or i32 %237, %236
  store i32 %238, i32* %20, align 4
  %239 = getelementptr inbounds %struct.ext4_ext_cache, %struct.ext4_ext_cache* %22, i32 0, i32 2
  store i32 1, i32* %239, align 8
  %240 = getelementptr inbounds %struct.ext4_ext_cache, %struct.ext4_ext_cache* %10, i32 0, i32 0
  %241 = load i64, i64* %240, align 8
  %242 = getelementptr inbounds %struct.ext4_ext_cache, %struct.ext4_ext_cache* %10, i32 0, i32 1
  %243 = load i64, i64* %242, align 8
  %244 = add nsw i64 %241, %243
  %245 = getelementptr inbounds %struct.ext4_ext_cache, %struct.ext4_ext_cache* %22, i32 0, i32 0
  store i64 %244, i64* %245, align 8
  %246 = load i64, i64* %12, align 8
  %247 = getelementptr inbounds %struct.ext4_ext_cache, %struct.ext4_ext_cache* %22, i32 0, i32 0
  %248 = load i64, i64* %247, align 8
  %249 = sub nsw i64 %246, %248
  %250 = getelementptr inbounds %struct.ext4_ext_cache, %struct.ext4_ext_cache* %22, i32 0, i32 1
  store i64 %249, i64* %250, align 8
  %251 = load %struct.inode*, %struct.inode** %5, align 8
  %252 = call i64 @ext4_find_delayed_extent(%struct.inode* %251, %struct.ext4_ext_cache* %22)
  store i64 %252, i64* %13, align 8
  br label %253

253:                                              ; preds = %235, %231, %226
  %254 = load %struct.inode*, %struct.inode** %5, align 8
  %255 = call %struct.TYPE_4__* @EXT4_I(%struct.inode* %254)
  %256 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %255, i32 0, i32 0
  %257 = call i32 @up_read(i32* %256)
  %258 = getelementptr inbounds %struct.ext4_ext_cache, %struct.ext4_ext_cache* %10, i32 0, i32 1
  %259 = load i64, i64* %258, align 8
  %260 = icmp eq i64 %259, 0
  %261 = zext i1 %260 to i32
  %262 = call i64 @unlikely(i32 %261)
  %263 = icmp ne i64 %262, 0
  br i1 %263, label %264, label %269

264:                                              ; preds = %253
  %265 = load %struct.inode*, %struct.inode** %5, align 8
  %266 = call i32 (%struct.inode*, i8*, ...) @EXT4_ERROR_INODE(%struct.inode* %265, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %267 = load i32, i32* @EIO, align 4
  %268 = sub nsw i32 0, %267
  store i32 %268, i32* %19, align 4
  br label %326

269:                                              ; preds = %253
  %270 = load i64, i64* %12, align 8
  %271 = load i64, i64* %13, align 8
  %272 = icmp eq i64 %270, %271
  br i1 %272, label %273, label %281

273:                                              ; preds = %269
  %274 = load i64, i64* %12, align 8
  %275 = load i64, i64* @EXT_MAX_BLOCKS, align 8
  %276 = icmp eq i64 %274, %275
  br i1 %276, label %277, label %281

277:                                              ; preds = %273
  %278 = load i32, i32* @FIEMAP_EXTENT_LAST, align 4
  %279 = load i32, i32* %20, align 4
  %280 = or i32 %279, %278
  store i32 %280, i32* %20, align 4
  br label %281

281:                                              ; preds = %277, %273, %269
  %282 = load i32, i32* %17, align 4
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %284, label %320

284:                                              ; preds = %281
  %285 = load %struct.fiemap_extent_info*, %struct.fiemap_extent_info** %8, align 8
  %286 = getelementptr inbounds %struct.ext4_ext_cache, %struct.ext4_ext_cache* %10, i32 0, i32 0
  %287 = load i64, i64* %286, align 8
  %288 = trunc i64 %287 to i8
  %289 = zext i8 %288 to i32
  %290 = load i8, i8* %21, align 1
  %291 = zext i8 %290 to i32
  %292 = shl i32 %289, %291
  %293 = trunc i32 %292 to i8
  %294 = getelementptr inbounds %struct.ext4_ext_cache, %struct.ext4_ext_cache* %10, i32 0, i32 2
  %295 = load i32, i32* %294, align 8
  %296 = trunc i32 %295 to i8
  %297 = zext i8 %296 to i32
  %298 = load i8, i8* %21, align 1
  %299 = zext i8 %298 to i32
  %300 = shl i32 %297, %299
  %301 = trunc i32 %300 to i8
  %302 = getelementptr inbounds %struct.ext4_ext_cache, %struct.ext4_ext_cache* %10, i32 0, i32 1
  %303 = load i64, i64* %302, align 8
  %304 = trunc i64 %303 to i8
  %305 = zext i8 %304 to i32
  %306 = load i8, i8* %21, align 1
  %307 = zext i8 %306 to i32
  %308 = shl i32 %305, %307
  %309 = trunc i32 %308 to i8
  %310 = load i32, i32* %20, align 4
  %311 = call i32 @fiemap_fill_next_extent(%struct.fiemap_extent_info* %285, i8 zeroext %293, i8 zeroext %301, i8 zeroext %309, i32 %310)
  store i32 %311, i32* %19, align 4
  %312 = load i32, i32* %19, align 4
  %313 = icmp slt i32 %312, 0
  br i1 %313, label %314, label %315

314:                                              ; preds = %284
  br label %326

315:                                              ; preds = %284
  %316 = load i32, i32* %19, align 4
  %317 = icmp eq i32 %316, 1
  br i1 %317, label %318, label %319

318:                                              ; preds = %315
  store i32 0, i32* %19, align 4
  br label %326

319:                                              ; preds = %315
  br label %320

320:                                              ; preds = %319, %281
  %321 = getelementptr inbounds %struct.ext4_ext_cache, %struct.ext4_ext_cache* %10, i32 0, i32 0
  %322 = load i64, i64* %321, align 8
  %323 = getelementptr inbounds %struct.ext4_ext_cache, %struct.ext4_ext_cache* %10, i32 0, i32 1
  %324 = load i64, i64* %323, align 8
  %325 = add nsw i64 %322, %324
  store i64 %325, i64* %6, align 8
  br label %31

326:                                              ; preds = %318, %314, %264, %87, %67, %39
  %327 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %9, align 8
  %328 = icmp ne %struct.ext4_ext_path* %327, null
  br i1 %328, label %329, label %334

329:                                              ; preds = %326
  %330 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %9, align 8
  %331 = call i32 @ext4_ext_drop_refs(%struct.ext4_ext_path* %330)
  %332 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %9, align 8
  %333 = call i32 @kfree(%struct.ext4_ext_path* %332)
  br label %334

334:                                              ; preds = %329, %326
  %335 = load i32, i32* %19, align 4
  ret i32 %335
}

declare dso_local i32 @down_read(i32*) #1

declare dso_local %struct.TYPE_4__* @EXT4_I(%struct.inode*) #1

declare dso_local i32 @ext_depth(%struct.inode*) #1

declare dso_local i32 @kfree(%struct.ext4_ext_path*) #1

declare dso_local %struct.ext4_ext_path* @ext4_ext_find_extent(%struct.inode*, i64, %struct.ext4_ext_path*) #1

declare dso_local i64 @IS_ERR(%struct.ext4_ext_path*) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @PTR_ERR(%struct.ext4_ext_path*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @EXT4_ERROR_INODE(%struct.inode*, i8*, ...) #1

declare dso_local i64 @ext4_ext_next_allocated_block(%struct.ext4_ext_path*) #1

declare dso_local i32 @ext4_ext_drop_refs(%struct.ext4_ext_path*) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i64 @ext4_ext_get_actual_len(%struct.ext4_extent*) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @ext4_ext_pblock(%struct.ext4_extent*) #1

declare dso_local i64 @ext4_ext_is_uninitialized(%struct.ext4_extent*) #1

declare dso_local i64 @ext4_find_delayed_extent(%struct.inode*, %struct.ext4_ext_cache*) #1

declare dso_local i32 @fiemap_fill_next_extent(%struct.fiemap_extent_info*, i8 zeroext, i8 zeroext, i8 zeroext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
