; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/udf/extr_truncate.c_udf_truncate_extents.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/udf/extr_truncate.c_udf_truncate_extents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, %struct.super_block* }
%struct.super_block = type { i32, i32 }
%struct.extent_position = type { i32, i64, %struct.kernel_lb_addr }
%struct.kernel_lb_addr = type { i32 }
%struct.udf_inode_info = type { i64, i32, i32 }
%struct.kernel_long_ad = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }

@ICBTAG_FLAG_AD_SHORT = common dso_local global i64 0, align 8
@ICBTAG_FLAG_AD_LONG = common dso_local global i64 0, align 8
@EXT_NEXT_EXTENT_ALLOCDECS = common dso_local global i32 0, align 4
@EXT_NOT_RECORDED_NOT_ALLOCATED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @udf_truncate_extents(%struct.inode* %0) #0 {
  %2 = alloca %struct.inode*, align 8
  %3 = alloca %struct.extent_position, align 8
  %4 = alloca %struct.kernel_lb_addr, align 4
  %5 = alloca %struct.kernel_lb_addr, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.super_block*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.udf_inode_info*, align 8
  %17 = alloca %struct.kernel_long_ad, align 8
  store %struct.inode* %0, %struct.inode** %2, align 8
  %18 = bitcast %struct.kernel_lb_addr* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %18, i8 0, i64 4, i1 false)
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %19 = load %struct.inode*, %struct.inode** %2, align 8
  %20 = getelementptr inbounds %struct.inode, %struct.inode* %19, i32 0, i32 1
  %21 = load %struct.super_block*, %struct.super_block** %20, align 8
  store %struct.super_block* %21, %struct.super_block** %11, align 8
  %22 = load %struct.inode*, %struct.inode** %2, align 8
  %23 = getelementptr inbounds %struct.inode, %struct.inode* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.super_block*, %struct.super_block** %11, align 8
  %26 = getelementptr inbounds %struct.super_block, %struct.super_block* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = ashr i32 %24, %27
  store i32 %28, i32* %12, align 4
  %29 = load %struct.inode*, %struct.inode** %2, align 8
  %30 = call %struct.udf_inode_info* @UDF_I(%struct.inode* %29)
  store %struct.udf_inode_info* %30, %struct.udf_inode_info** %16, align 8
  %31 = load %struct.udf_inode_info*, %struct.udf_inode_info** %16, align 8
  %32 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @ICBTAG_FLAG_AD_SHORT, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %1
  store i32 4, i32* %15, align 4
  br label %47

37:                                               ; preds = %1
  %38 = load %struct.udf_inode_info*, %struct.udf_inode_info** %16, align 8
  %39 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @ICBTAG_FLAG_AD_LONG, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  store i32 4, i32* %15, align 4
  br label %46

44:                                               ; preds = %37
  %45 = call i32 (...) @BUG()
  br label %46

46:                                               ; preds = %44, %43
  br label %47

47:                                               ; preds = %46, %36
  %48 = load %struct.inode*, %struct.inode** %2, align 8
  %49 = load i32, i32* %12, align 4
  %50 = call i32 @inode_bmap(%struct.inode* %48, i32 %49, %struct.extent_position* %3, %struct.kernel_lb_addr* %4, i32* %6, i32* %13)
  store i32 %50, i32* %10, align 4
  %51 = load i32, i32* %13, align 4
  %52 = load %struct.super_block*, %struct.super_block** %11, align 8
  %53 = getelementptr inbounds %struct.super_block, %struct.super_block* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = shl i32 %51, %54
  %56 = load %struct.inode*, %struct.inode** %2, align 8
  %57 = getelementptr inbounds %struct.inode, %struct.inode* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.super_block*, %struct.super_block** %11, align 8
  %60 = getelementptr inbounds %struct.super_block, %struct.super_block* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = sub nsw i32 %61, 1
  %63 = and i32 %58, %62
  %64 = add nsw i32 %55, %63
  store i32 %64, i32* %14, align 4
  %65 = load i32, i32* %10, align 4
  %66 = icmp ne i32 %65, -1
  br i1 %66, label %67, label %217

67:                                               ; preds = %47
  %68 = load i32, i32* %15, align 4
  %69 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %3, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = sub nsw i32 %70, %68
  store i32 %71, i32* %69, align 8
  %72 = load %struct.inode*, %struct.inode** %2, align 8
  %73 = load i32, i32* %10, align 4
  %74 = load i32, i32* %6, align 4
  %75 = load i32, i32* %14, align 4
  %76 = call i32 @extent_trunc(%struct.inode* %72, %struct.extent_position* %3, %struct.kernel_lb_addr* %4, i32 %73, i32 %74, i32 %75)
  %77 = load i32, i32* %15, align 4
  %78 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %3, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = add nsw i32 %79, %77
  store i32 %80, i32* %78, align 8
  %81 = load i32, i32* %14, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %67
  %84 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %3, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  store i32 %85, i32* %9, align 4
  br label %91

86:                                               ; preds = %67
  %87 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %3, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* %15, align 4
  %90 = sub nsw i32 %88, %89
  store i32 %90, i32* %9, align 4
  br label %91

91:                                               ; preds = %86, %83
  %92 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %3, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %100, label %95

95:                                               ; preds = %91
  %96 = load %struct.inode*, %struct.inode** %2, align 8
  %97 = call i32 @udf_file_entry_alloc_offset(%struct.inode* %96)
  %98 = load i32, i32* %9, align 4
  %99 = sub nsw i32 %98, %97
  store i32 %99, i32* %9, align 4
  br label %105

100:                                              ; preds = %91
  %101 = load i32, i32* %9, align 4
  %102 = sext i32 %101 to i64
  %103 = sub i64 %102, 4
  %104 = trunc i64 %103 to i32
  store i32 %104, i32* %9, align 4
  br label %105

105:                                              ; preds = %100, %95
  br label %106

106:                                              ; preds = %185, %105
  %107 = load %struct.inode*, %struct.inode** %2, align 8
  %108 = call i32 @udf_current_aext(%struct.inode* %107, %struct.extent_position* %3, %struct.kernel_lb_addr* %4, i32* %6, i32 0)
  store i32 %108, i32* %10, align 4
  %109 = icmp ne i32 %108, -1
  br i1 %109, label %110, label %186

110:                                              ; preds = %106
  %111 = load i32, i32* %10, align 4
  %112 = load i32, i32* @EXT_NEXT_EXTENT_ALLOCDECS, align 4
  %113 = ashr i32 %112, 30
  %114 = icmp eq i32 %111, %113
  br i1 %114, label %115, label %176

115:                                              ; preds = %110
  %116 = load %struct.inode*, %struct.inode** %2, align 8
  %117 = load i32, i32* %7, align 4
  %118 = call i32 @udf_write_aext(%struct.inode* %116, %struct.extent_position* %3, %struct.kernel_lb_addr* %5, i32 %117, i32 0)
  %119 = load i32, i32* %8, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %133

121:                                              ; preds = %115
  %122 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %3, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %123, 0
  %125 = xor i1 %124, true
  %126 = zext i1 %125 to i32
  %127 = call i32 @BUG_ON(i32 %126)
  %128 = load %struct.super_block*, %struct.super_block** %11, align 8
  %129 = load %struct.inode*, %struct.inode** %2, align 8
  %130 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %3, i32 0, i32 2
  %131 = load i32, i32* %8, align 4
  %132 = call i32 @udf_free_blocks(%struct.super_block* %128, %struct.inode* %129, %struct.kernel_lb_addr* %130, i32 0, i32 %131)
  br label %148

133:                                              ; preds = %115
  %134 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %3, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %143, label %137

137:                                              ; preds = %133
  %138 = load i32, i32* %9, align 4
  %139 = load %struct.udf_inode_info*, %struct.udf_inode_info** %16, align 8
  %140 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %139, i32 0, i32 1
  store i32 %138, i32* %140, align 8
  %141 = load %struct.inode*, %struct.inode** %2, align 8
  %142 = call i32 @mark_inode_dirty(%struct.inode* %141)
  br label %147

143:                                              ; preds = %133
  %144 = load %struct.inode*, %struct.inode** %2, align 8
  %145 = load i32, i32* %9, align 4
  %146 = call i32 @udf_update_alloc_ext_desc(%struct.inode* %144, %struct.extent_position* %3, i32 %145)
  br label %147

147:                                              ; preds = %143, %137
  br label %148

148:                                              ; preds = %147, %121
  %149 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %3, i32 0, i32 1
  %150 = load i64, i64* %149, align 8
  %151 = call i32 @brelse(i64 %150)
  %152 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %3, i32 0, i32 0
  store i32 4, i32* %152, align 8
  %153 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %3, i32 0, i32 2
  %154 = bitcast %struct.kernel_lb_addr* %153 to i8*
  %155 = bitcast %struct.kernel_lb_addr* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %154, i8* align 4 %155, i64 4, i1 false)
  %156 = load %struct.super_block*, %struct.super_block** %11, align 8
  %157 = load %struct.super_block*, %struct.super_block** %11, align 8
  %158 = call i32 @udf_get_lb_pblock(%struct.super_block* %157, %struct.kernel_lb_addr* %4, i32 0)
  %159 = call i64 @udf_tread(%struct.super_block* %156, i32 %158)
  %160 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %3, i32 0, i32 1
  store i64 %159, i64* %160, align 8
  %161 = load i32, i32* %6, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %174

163:                                              ; preds = %148
  %164 = load i32, i32* %6, align 4
  %165 = load %struct.super_block*, %struct.super_block** %11, align 8
  %166 = getelementptr inbounds %struct.super_block, %struct.super_block* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = add nsw i32 %164, %167
  %169 = sub nsw i32 %168, 1
  %170 = load %struct.super_block*, %struct.super_block** %11, align 8
  %171 = getelementptr inbounds %struct.super_block, %struct.super_block* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = ashr i32 %169, %172
  store i32 %173, i32* %8, align 4
  br label %175

174:                                              ; preds = %148
  store i32 1, i32* %8, align 4
  br label %175

175:                                              ; preds = %174, %163
  br label %185

176:                                              ; preds = %110
  %177 = load %struct.inode*, %struct.inode** %2, align 8
  %178 = load i32, i32* %10, align 4
  %179 = load i32, i32* %6, align 4
  %180 = call i32 @extent_trunc(%struct.inode* %177, %struct.extent_position* %3, %struct.kernel_lb_addr* %4, i32 %178, i32 %179, i32 0)
  %181 = load i32, i32* %15, align 4
  %182 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %3, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = add nsw i32 %183, %181
  store i32 %184, i32* %182, align 8
  br label %185

185:                                              ; preds = %176, %175
  br label %106

186:                                              ; preds = %106
  %187 = load i32, i32* %8, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %201

189:                                              ; preds = %186
  %190 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %3, i32 0, i32 1
  %191 = load i64, i64* %190, align 8
  %192 = icmp ne i64 %191, 0
  %193 = xor i1 %192, true
  %194 = zext i1 %193 to i32
  %195 = call i32 @BUG_ON(i32 %194)
  %196 = load %struct.super_block*, %struct.super_block** %11, align 8
  %197 = load %struct.inode*, %struct.inode** %2, align 8
  %198 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %3, i32 0, i32 2
  %199 = load i32, i32* %8, align 4
  %200 = call i32 @udf_free_blocks(%struct.super_block* %196, %struct.inode* %197, %struct.kernel_lb_addr* %198, i32 0, i32 %199)
  br label %216

201:                                              ; preds = %186
  %202 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %3, i32 0, i32 1
  %203 = load i64, i64* %202, align 8
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %211, label %205

205:                                              ; preds = %201
  %206 = load i32, i32* %9, align 4
  %207 = load %struct.udf_inode_info*, %struct.udf_inode_info** %16, align 8
  %208 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %207, i32 0, i32 1
  store i32 %206, i32* %208, align 8
  %209 = load %struct.inode*, %struct.inode** %2, align 8
  %210 = call i32 @mark_inode_dirty(%struct.inode* %209)
  br label %215

211:                                              ; preds = %201
  %212 = load %struct.inode*, %struct.inode** %2, align 8
  %213 = load i32, i32* %9, align 4
  %214 = call i32 @udf_update_alloc_ext_desc(%struct.inode* %212, %struct.extent_position* %3, i32 %213)
  br label %215

215:                                              ; preds = %211, %205
  br label %216

216:                                              ; preds = %215, %189
  br label %282

217:                                              ; preds = %47
  %218 = load %struct.inode*, %struct.inode** %2, align 8
  %219 = getelementptr inbounds %struct.inode, %struct.inode* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 8
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %281

222:                                              ; preds = %217
  %223 = load i32, i32* %14, align 4
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %280

225:                                              ; preds = %222
  %226 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %3, i32 0, i32 1
  %227 = load i64, i64* %226, align 8
  %228 = icmp ne i64 %227, 0
  br i1 %228, label %235, label %229

229:                                              ; preds = %225
  %230 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %3, i32 0, i32 0
  %231 = load i32, i32* %230, align 8
  %232 = load %struct.inode*, %struct.inode** %2, align 8
  %233 = call i32 @udf_file_entry_alloc_offset(%struct.inode* %232)
  %234 = icmp eq i32 %231, %233
  br i1 %234, label %244, label %235

235:                                              ; preds = %229, %225
  %236 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %3, i32 0, i32 1
  %237 = load i64, i64* %236, align 8
  %238 = icmp ne i64 %237, 0
  br i1 %238, label %239, label %251

239:                                              ; preds = %235
  %240 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %3, i32 0, i32 0
  %241 = load i32, i32* %240, align 8
  %242 = sext i32 %241 to i64
  %243 = icmp eq i64 %242, 4
  br i1 %243, label %244, label %251

244:                                              ; preds = %239, %229
  %245 = getelementptr inbounds %struct.kernel_long_ad, %struct.kernel_long_ad* %17, i32 0, i32 1
  %246 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %245, i32 0, i32 1
  store i64 0, i64* %246, align 8
  %247 = getelementptr inbounds %struct.kernel_long_ad, %struct.kernel_long_ad* %17, i32 0, i32 1
  %248 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %247, i32 0, i32 0
  store i64 0, i64* %248, align 8
  %249 = load i32, i32* @EXT_NOT_RECORDED_NOT_ALLOCATED, align 4
  %250 = getelementptr inbounds %struct.kernel_long_ad, %struct.kernel_long_ad* %17, i32 0, i32 0
  store i32 %249, i32* %250, align 8
  br label %265

251:                                              ; preds = %239, %235
  %252 = load i32, i32* %15, align 4
  %253 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %3, i32 0, i32 0
  %254 = load i32, i32* %253, align 8
  %255 = sub nsw i32 %254, %252
  store i32 %255, i32* %253, align 8
  %256 = load %struct.inode*, %struct.inode** %2, align 8
  %257 = getelementptr inbounds %struct.kernel_long_ad, %struct.kernel_long_ad* %17, i32 0, i32 1
  %258 = getelementptr inbounds %struct.kernel_long_ad, %struct.kernel_long_ad* %17, i32 0, i32 0
  %259 = call i32 @udf_next_aext(%struct.inode* %256, %struct.extent_position* %3, %struct.TYPE_2__* %257, i32* %258, i32 0)
  store i32 %259, i32* %10, align 4
  %260 = load i32, i32* %10, align 4
  %261 = shl i32 %260, 30
  %262 = getelementptr inbounds %struct.kernel_long_ad, %struct.kernel_long_ad* %17, i32 0, i32 0
  %263 = load i32, i32* %262, align 8
  %264 = or i32 %263, %261
  store i32 %264, i32* %262, align 8
  br label %265

265:                                              ; preds = %251, %244
  %266 = load %struct.inode*, %struct.inode** %2, align 8
  %267 = load i32, i32* %13, align 4
  %268 = load %struct.inode*, %struct.inode** %2, align 8
  %269 = getelementptr inbounds %struct.inode, %struct.inode* %268, i32 0, i32 0
  %270 = load i32, i32* %269, align 8
  %271 = load %struct.super_block*, %struct.super_block** %11, align 8
  %272 = getelementptr inbounds %struct.super_block, %struct.super_block* %271, i32 0, i32 1
  %273 = load i32, i32* %272, align 4
  %274 = sub nsw i32 %273, 1
  %275 = and i32 %270, %274
  %276 = icmp ne i32 %275, 0
  %277 = zext i1 %276 to i32
  %278 = add nsw i32 %267, %277
  %279 = call i32 @udf_extend_file(%struct.inode* %266, %struct.extent_position* %3, %struct.kernel_long_ad* %17, i32 %278)
  br label %280

280:                                              ; preds = %265, %222
  br label %281

281:                                              ; preds = %280, %217
  br label %282

282:                                              ; preds = %281, %216
  %283 = load %struct.inode*, %struct.inode** %2, align 8
  %284 = getelementptr inbounds %struct.inode, %struct.inode* %283, i32 0, i32 0
  %285 = load i32, i32* %284, align 8
  %286 = load %struct.udf_inode_info*, %struct.udf_inode_info** %16, align 8
  %287 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %286, i32 0, i32 2
  store i32 %285, i32* %287, align 4
  %288 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %3, i32 0, i32 1
  %289 = load i64, i64* %288, align 8
  %290 = call i32 @brelse(i64 %289)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.udf_inode_info* @UDF_I(%struct.inode*) #2

declare dso_local i32 @BUG(...) #2

declare dso_local i32 @inode_bmap(%struct.inode*, i32, %struct.extent_position*, %struct.kernel_lb_addr*, i32*, i32*) #2

declare dso_local i32 @extent_trunc(%struct.inode*, %struct.extent_position*, %struct.kernel_lb_addr*, i32, i32, i32) #2

declare dso_local i32 @udf_file_entry_alloc_offset(%struct.inode*) #2

declare dso_local i32 @udf_current_aext(%struct.inode*, %struct.extent_position*, %struct.kernel_lb_addr*, i32*, i32) #2

declare dso_local i32 @udf_write_aext(%struct.inode*, %struct.extent_position*, %struct.kernel_lb_addr*, i32, i32) #2

declare dso_local i32 @BUG_ON(i32) #2

declare dso_local i32 @udf_free_blocks(%struct.super_block*, %struct.inode*, %struct.kernel_lb_addr*, i32, i32) #2

declare dso_local i32 @mark_inode_dirty(%struct.inode*) #2

declare dso_local i32 @udf_update_alloc_ext_desc(%struct.inode*, %struct.extent_position*, i32) #2

declare dso_local i32 @brelse(i64) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @udf_tread(%struct.super_block*, i32) #2

declare dso_local i32 @udf_get_lb_pblock(%struct.super_block*, %struct.kernel_lb_addr*, i32) #2

declare dso_local i32 @udf_next_aext(%struct.inode*, %struct.extent_position*, %struct.TYPE_2__*, i32*, i32) #2

declare dso_local i32 @udf_extend_file(%struct.inode*, %struct.extent_position*, %struct.kernel_long_ad*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
