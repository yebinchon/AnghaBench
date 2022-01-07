; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/udf/extr_inode.c_udf_extend_file.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/udf/extr_inode.c_udf_extend_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.super_block* }
%struct.super_block = type { i32, i32 }
%struct.extent_position = type { i32 }
%struct.kernel_long_ad = type { i32, %struct.kernel_lb_addr }
%struct.kernel_lb_addr = type { i64, i64 }
%struct.udf_inode_info = type { i32, i64 }

@UDF_EXTENT_LENGTH_MASK = common dso_local global i32 0, align 4
@UDF_EXTENT_FLAG_MASK = common dso_local global i32 0, align 4
@EXT_NOT_RECORDED_ALLOCATED = common dso_local global i32 0, align 4
@EXT_NOT_RECORDED_NOT_ALLOCATED = common dso_local global i32 0, align 4
@ICBTAG_FLAG_AD_SHORT = common dso_local global i64 0, align 8
@ICBTAG_FLAG_AD_LONG = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @udf_extend_file(%struct.inode* %0, %struct.extent_position* %1, %struct.kernel_long_ad* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.extent_position*, align 8
  %8 = alloca %struct.kernel_long_ad*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.super_block*, align 8
  %14 = alloca %struct.kernel_lb_addr, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.udf_inode_info*, align 8
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.extent_position* %1, %struct.extent_position** %7, align 8
  store %struct.kernel_long_ad* %2, %struct.kernel_long_ad** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %11, align 4
  %17 = load %struct.kernel_long_ad*, %struct.kernel_long_ad** %8, align 8
  %18 = getelementptr inbounds %struct.kernel_long_ad, %struct.kernel_long_ad* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @UDF_EXTENT_LENGTH_MASK, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  store i32 %24, i32* %12, align 4
  %25 = load %struct.inode*, %struct.inode** %6, align 8
  %26 = getelementptr inbounds %struct.inode, %struct.inode* %25, i32 0, i32 0
  %27 = load %struct.super_block*, %struct.super_block** %26, align 8
  store %struct.super_block* %27, %struct.super_block** %13, align 8
  %28 = bitcast %struct.kernel_lb_addr* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %28, i8 0, i64 16, i1 false)
  store i32 0, i32* %15, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %4
  %32 = load i32, i32* %12, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  store i32 0, i32* %5, align 4
  br label %307

35:                                               ; preds = %31, %4
  %36 = load %struct.inode*, %struct.inode** %6, align 8
  %37 = call %struct.udf_inode_info* @UDF_I(%struct.inode* %36)
  store %struct.udf_inode_info* %37, %struct.udf_inode_info** %16, align 8
  %38 = load %struct.kernel_long_ad*, %struct.kernel_long_ad** %8, align 8
  %39 = getelementptr inbounds %struct.kernel_long_ad, %struct.kernel_long_ad* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.super_block*, %struct.super_block** %13, align 8
  %42 = getelementptr inbounds %struct.super_block, %struct.super_block* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = sub nsw i32 %43, 1
  %45 = and i32 %40, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %88

47:                                               ; preds = %35
  %48 = load %struct.kernel_long_ad*, %struct.kernel_long_ad** %8, align 8
  %49 = getelementptr inbounds %struct.kernel_long_ad, %struct.kernel_long_ad* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @UDF_EXTENT_FLAG_MASK, align 4
  %52 = and i32 %50, %51
  %53 = load %struct.kernel_long_ad*, %struct.kernel_long_ad** %8, align 8
  %54 = getelementptr inbounds %struct.kernel_long_ad, %struct.kernel_long_ad* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @UDF_EXTENT_LENGTH_MASK, align 4
  %57 = and i32 %55, %56
  %58 = load %struct.super_block*, %struct.super_block** %13, align 8
  %59 = getelementptr inbounds %struct.super_block, %struct.super_block* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = add nsw i32 %57, %60
  %62 = sub nsw i32 %61, 1
  %63 = load %struct.super_block*, %struct.super_block** %13, align 8
  %64 = getelementptr inbounds %struct.super_block, %struct.super_block* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = sub nsw i32 %65, 1
  %67 = xor i32 %66, -1
  %68 = and i32 %62, %67
  %69 = or i32 %52, %68
  %70 = load %struct.kernel_long_ad*, %struct.kernel_long_ad** %8, align 8
  %71 = getelementptr inbounds %struct.kernel_long_ad, %struct.kernel_long_ad* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 8
  %72 = load %struct.udf_inode_info*, %struct.udf_inode_info** %16, align 8
  %73 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.super_block*, %struct.super_block** %13, align 8
  %76 = getelementptr inbounds %struct.super_block, %struct.super_block* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = add nsw i32 %74, %77
  %79 = sub nsw i32 %78, 1
  %80 = load %struct.super_block*, %struct.super_block** %13, align 8
  %81 = getelementptr inbounds %struct.super_block, %struct.super_block* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = sub nsw i32 %82, 1
  %84 = xor i32 %83, -1
  %85 = and i32 %79, %84
  %86 = load %struct.udf_inode_info*, %struct.udf_inode_info** %16, align 8
  %87 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 8
  br label %88

88:                                               ; preds = %47, %35
  %89 = load %struct.kernel_long_ad*, %struct.kernel_long_ad** %8, align 8
  %90 = getelementptr inbounds %struct.kernel_long_ad, %struct.kernel_long_ad* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @UDF_EXTENT_FLAG_MASK, align 4
  %93 = and i32 %91, %92
  %94 = load i32, i32* @EXT_NOT_RECORDED_ALLOCATED, align 4
  %95 = icmp eq i32 %93, %94
  br i1 %95, label %96, label %119

96:                                               ; preds = %88
  %97 = load %struct.kernel_long_ad*, %struct.kernel_long_ad** %8, align 8
  %98 = getelementptr inbounds %struct.kernel_long_ad, %struct.kernel_long_ad* %97, i32 0, i32 1
  %99 = bitcast %struct.kernel_lb_addr* %14 to i8*
  %100 = bitcast %struct.kernel_lb_addr* %98 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %99, i8* align 8 %100, i64 16, i1 false)
  %101 = load %struct.kernel_long_ad*, %struct.kernel_long_ad** %8, align 8
  %102 = getelementptr inbounds %struct.kernel_long_ad, %struct.kernel_long_ad* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  store i32 %103, i32* %15, align 4
  %104 = load i32, i32* @EXT_NOT_RECORDED_NOT_ALLOCATED, align 4
  %105 = load %struct.kernel_long_ad*, %struct.kernel_long_ad** %8, align 8
  %106 = getelementptr inbounds %struct.kernel_long_ad, %struct.kernel_long_ad* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* @UDF_EXTENT_LENGTH_MASK, align 4
  %109 = and i32 %107, %108
  %110 = or i32 %104, %109
  %111 = load %struct.kernel_long_ad*, %struct.kernel_long_ad** %8, align 8
  %112 = getelementptr inbounds %struct.kernel_long_ad, %struct.kernel_long_ad* %111, i32 0, i32 0
  store i32 %110, i32* %112, align 8
  %113 = load %struct.kernel_long_ad*, %struct.kernel_long_ad** %8, align 8
  %114 = getelementptr inbounds %struct.kernel_long_ad, %struct.kernel_long_ad* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.kernel_lb_addr, %struct.kernel_lb_addr* %114, i32 0, i32 1
  store i64 0, i64* %115, align 8
  %116 = load %struct.kernel_long_ad*, %struct.kernel_long_ad** %8, align 8
  %117 = getelementptr inbounds %struct.kernel_long_ad, %struct.kernel_long_ad* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.kernel_lb_addr, %struct.kernel_lb_addr* %117, i32 0, i32 0
  store i64 0, i64* %118, align 8
  br label %119

119:                                              ; preds = %96, %88
  %120 = load %struct.kernel_long_ad*, %struct.kernel_long_ad** %8, align 8
  %121 = getelementptr inbounds %struct.kernel_long_ad, %struct.kernel_long_ad* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = load i32, i32* @UDF_EXTENT_FLAG_MASK, align 4
  %124 = and i32 %122, %123
  %125 = load i32, i32* @EXT_NOT_RECORDED_NOT_ALLOCATED, align 4
  %126 = icmp eq i32 %124, %125
  br i1 %126, label %127, label %160

127:                                              ; preds = %119
  %128 = load %struct.super_block*, %struct.super_block** %13, align 8
  %129 = getelementptr inbounds %struct.super_block, %struct.super_block* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = sub nsw i32 1073741824, %130
  %132 = load %struct.kernel_long_ad*, %struct.kernel_long_ad** %8, align 8
  %133 = getelementptr inbounds %struct.kernel_long_ad, %struct.kernel_long_ad* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = load i32, i32* @UDF_EXTENT_LENGTH_MASK, align 4
  %136 = and i32 %134, %135
  %137 = sub nsw i32 %131, %136
  %138 = load %struct.super_block*, %struct.super_block** %13, align 8
  %139 = getelementptr inbounds %struct.super_block, %struct.super_block* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = ashr i32 %137, %140
  store i32 %141, i32* %10, align 4
  %142 = load i32, i32* %10, align 4
  %143 = load i32, i32* %9, align 4
  %144 = icmp sgt i32 %142, %143
  br i1 %144, label %145, label %147

145:                                              ; preds = %127
  %146 = load i32, i32* %9, align 4
  store i32 %146, i32* %10, align 4
  br label %147

147:                                              ; preds = %145, %127
  %148 = load i32, i32* %10, align 4
  %149 = load i32, i32* %9, align 4
  %150 = sub nsw i32 %149, %148
  store i32 %150, i32* %9, align 4
  %151 = load i32, i32* %10, align 4
  %152 = load %struct.super_block*, %struct.super_block** %13, align 8
  %153 = getelementptr inbounds %struct.super_block, %struct.super_block* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = shl i32 %151, %154
  %156 = load %struct.kernel_long_ad*, %struct.kernel_long_ad** %8, align 8
  %157 = getelementptr inbounds %struct.kernel_long_ad, %struct.kernel_long_ad* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = add nsw i32 %158, %155
  store i32 %159, i32* %157, align 8
  br label %160

160:                                              ; preds = %147, %119
  %161 = load i32, i32* %12, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %174

163:                                              ; preds = %160
  %164 = load %struct.inode*, %struct.inode** %6, align 8
  %165 = load %struct.extent_position*, %struct.extent_position** %7, align 8
  %166 = load %struct.kernel_long_ad*, %struct.kernel_long_ad** %8, align 8
  %167 = getelementptr inbounds %struct.kernel_long_ad, %struct.kernel_long_ad* %166, i32 0, i32 1
  %168 = load %struct.kernel_long_ad*, %struct.kernel_long_ad** %8, align 8
  %169 = getelementptr inbounds %struct.kernel_long_ad, %struct.kernel_long_ad* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = call i32 @udf_add_aext(%struct.inode* %164, %struct.extent_position* %165, %struct.kernel_lb_addr* %167, i32 %170, i32 1)
  %172 = load i32, i32* %11, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %11, align 4
  br label %183

174:                                              ; preds = %160
  %175 = load %struct.inode*, %struct.inode** %6, align 8
  %176 = load %struct.extent_position*, %struct.extent_position** %7, align 8
  %177 = load %struct.kernel_long_ad*, %struct.kernel_long_ad** %8, align 8
  %178 = getelementptr inbounds %struct.kernel_long_ad, %struct.kernel_long_ad* %177, i32 0, i32 1
  %179 = load %struct.kernel_long_ad*, %struct.kernel_long_ad** %8, align 8
  %180 = getelementptr inbounds %struct.kernel_long_ad, %struct.kernel_long_ad* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = call i32 @udf_write_aext(%struct.inode* %175, %struct.extent_position* %176, %struct.kernel_lb_addr* %178, i32 %181, i32 1)
  br label %183

183:                                              ; preds = %174, %163
  %184 = load i32, i32* %9, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %187, label %186

186:                                              ; preds = %183
  br label %257

187:                                              ; preds = %183
  %188 = load %struct.kernel_long_ad*, %struct.kernel_long_ad** %8, align 8
  %189 = getelementptr inbounds %struct.kernel_long_ad, %struct.kernel_long_ad* %188, i32 0, i32 1
  %190 = getelementptr inbounds %struct.kernel_lb_addr, %struct.kernel_lb_addr* %189, i32 0, i32 1
  store i64 0, i64* %190, align 8
  %191 = load %struct.kernel_long_ad*, %struct.kernel_long_ad** %8, align 8
  %192 = getelementptr inbounds %struct.kernel_long_ad, %struct.kernel_long_ad* %191, i32 0, i32 1
  %193 = getelementptr inbounds %struct.kernel_lb_addr, %struct.kernel_lb_addr* %192, i32 0, i32 0
  store i64 0, i64* %193, align 8
  %194 = load %struct.super_block*, %struct.super_block** %13, align 8
  %195 = getelementptr inbounds %struct.super_block, %struct.super_block* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 4
  %197 = sub nsw i32 30, %196
  %198 = shl i32 1, %197
  %199 = sub nsw i32 %198, 1
  store i32 %199, i32* %10, align 4
  %200 = load i32, i32* @EXT_NOT_RECORDED_NOT_ALLOCATED, align 4
  %201 = load i32, i32* %10, align 4
  %202 = load %struct.super_block*, %struct.super_block** %13, align 8
  %203 = getelementptr inbounds %struct.super_block, %struct.super_block* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 4
  %205 = shl i32 %201, %204
  %206 = or i32 %200, %205
  %207 = load %struct.kernel_long_ad*, %struct.kernel_long_ad** %8, align 8
  %208 = getelementptr inbounds %struct.kernel_long_ad, %struct.kernel_long_ad* %207, i32 0, i32 0
  store i32 %206, i32* %208, align 8
  br label %209

209:                                              ; preds = %227, %187
  %210 = load i32, i32* %9, align 4
  %211 = load i32, i32* %10, align 4
  %212 = icmp sgt i32 %210, %211
  br i1 %212, label %213, label %230

213:                                              ; preds = %209
  %214 = load i32, i32* %10, align 4
  %215 = load i32, i32* %9, align 4
  %216 = sub nsw i32 %215, %214
  store i32 %216, i32* %9, align 4
  %217 = load %struct.inode*, %struct.inode** %6, align 8
  %218 = load %struct.extent_position*, %struct.extent_position** %7, align 8
  %219 = load %struct.kernel_long_ad*, %struct.kernel_long_ad** %8, align 8
  %220 = getelementptr inbounds %struct.kernel_long_ad, %struct.kernel_long_ad* %219, i32 0, i32 1
  %221 = load %struct.kernel_long_ad*, %struct.kernel_long_ad** %8, align 8
  %222 = getelementptr inbounds %struct.kernel_long_ad, %struct.kernel_long_ad* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 8
  %224 = call i32 @udf_add_aext(%struct.inode* %217, %struct.extent_position* %218, %struct.kernel_lb_addr* %220, i32 %223, i32 1)
  %225 = icmp eq i32 %224, -1
  br i1 %225, label %226, label %227

226:                                              ; preds = %213
  store i32 -1, i32* %5, align 4
  br label %307

227:                                              ; preds = %213
  %228 = load i32, i32* %11, align 4
  %229 = add nsw i32 %228, 1
  store i32 %229, i32* %11, align 4
  br label %209

230:                                              ; preds = %209
  %231 = load i32, i32* %9, align 4
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %256

233:                                              ; preds = %230
  %234 = load i32, i32* @EXT_NOT_RECORDED_NOT_ALLOCATED, align 4
  %235 = load i32, i32* %9, align 4
  %236 = load %struct.super_block*, %struct.super_block** %13, align 8
  %237 = getelementptr inbounds %struct.super_block, %struct.super_block* %236, i32 0, i32 1
  %238 = load i32, i32* %237, align 4
  %239 = shl i32 %235, %238
  %240 = or i32 %234, %239
  %241 = load %struct.kernel_long_ad*, %struct.kernel_long_ad** %8, align 8
  %242 = getelementptr inbounds %struct.kernel_long_ad, %struct.kernel_long_ad* %241, i32 0, i32 0
  store i32 %240, i32* %242, align 8
  %243 = load %struct.inode*, %struct.inode** %6, align 8
  %244 = load %struct.extent_position*, %struct.extent_position** %7, align 8
  %245 = load %struct.kernel_long_ad*, %struct.kernel_long_ad** %8, align 8
  %246 = getelementptr inbounds %struct.kernel_long_ad, %struct.kernel_long_ad* %245, i32 0, i32 1
  %247 = load %struct.kernel_long_ad*, %struct.kernel_long_ad** %8, align 8
  %248 = getelementptr inbounds %struct.kernel_long_ad, %struct.kernel_long_ad* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 8
  %250 = call i32 @udf_add_aext(%struct.inode* %243, %struct.extent_position* %244, %struct.kernel_lb_addr* %246, i32 %249, i32 1)
  %251 = icmp eq i32 %250, -1
  br i1 %251, label %252, label %253

252:                                              ; preds = %233
  store i32 -1, i32* %5, align 4
  br label %307

253:                                              ; preds = %233
  %254 = load i32, i32* %11, align 4
  %255 = add nsw i32 %254, 1
  store i32 %255, i32* %11, align 4
  br label %256

256:                                              ; preds = %253, %230
  br label %257

257:                                              ; preds = %256, %186
  %258 = load i32, i32* %15, align 4
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %260, label %277

260:                                              ; preds = %257
  %261 = load %struct.inode*, %struct.inode** %6, align 8
  %262 = load %struct.extent_position*, %struct.extent_position** %7, align 8
  %263 = load i32, i32* %15, align 4
  %264 = call i32 @udf_add_aext(%struct.inode* %261, %struct.extent_position* %262, %struct.kernel_lb_addr* %14, i32 %263, i32 1)
  %265 = icmp eq i32 %264, -1
  br i1 %265, label %266, label %267

266:                                              ; preds = %260
  store i32 -1, i32* %5, align 4
  br label %307

267:                                              ; preds = %260
  %268 = load %struct.kernel_long_ad*, %struct.kernel_long_ad** %8, align 8
  %269 = getelementptr inbounds %struct.kernel_long_ad, %struct.kernel_long_ad* %268, i32 0, i32 1
  %270 = bitcast %struct.kernel_lb_addr* %269 to i8*
  %271 = bitcast %struct.kernel_lb_addr* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %270, i8* align 8 %271, i64 16, i1 false)
  %272 = load i32, i32* %15, align 4
  %273 = load %struct.kernel_long_ad*, %struct.kernel_long_ad** %8, align 8
  %274 = getelementptr inbounds %struct.kernel_long_ad, %struct.kernel_long_ad* %273, i32 0, i32 0
  store i32 %272, i32* %274, align 8
  %275 = load i32, i32* %11, align 4
  %276 = add nsw i32 %275, 1
  store i32 %276, i32* %11, align 4
  br label %277

277:                                              ; preds = %267, %257
  %278 = load %struct.udf_inode_info*, %struct.udf_inode_info** %16, align 8
  %279 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %278, i32 0, i32 1
  %280 = load i64, i64* %279, align 8
  %281 = load i64, i64* @ICBTAG_FLAG_AD_SHORT, align 8
  %282 = icmp eq i64 %280, %281
  br i1 %282, label %283, label %290

283:                                              ; preds = %277
  %284 = load %struct.extent_position*, %struct.extent_position** %7, align 8
  %285 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %284, i32 0, i32 0
  %286 = load i32, i32* %285, align 4
  %287 = sext i32 %286 to i64
  %288 = sub i64 %287, 4
  %289 = trunc i64 %288 to i32
  store i32 %289, i32* %285, align 4
  br label %305

290:                                              ; preds = %277
  %291 = load %struct.udf_inode_info*, %struct.udf_inode_info** %16, align 8
  %292 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %291, i32 0, i32 1
  %293 = load i64, i64* %292, align 8
  %294 = load i64, i64* @ICBTAG_FLAG_AD_LONG, align 8
  %295 = icmp eq i64 %293, %294
  br i1 %295, label %296, label %303

296:                                              ; preds = %290
  %297 = load %struct.extent_position*, %struct.extent_position** %7, align 8
  %298 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %297, i32 0, i32 0
  %299 = load i32, i32* %298, align 4
  %300 = sext i32 %299 to i64
  %301 = sub i64 %300, 4
  %302 = trunc i64 %301 to i32
  store i32 %302, i32* %298, align 4
  br label %304

303:                                              ; preds = %290
  store i32 -1, i32* %5, align 4
  br label %307

304:                                              ; preds = %296
  br label %305

305:                                              ; preds = %304, %283
  %306 = load i32, i32* %11, align 4
  store i32 %306, i32* %5, align 4
  br label %307

307:                                              ; preds = %305, %303, %266, %252, %226, %34
  %308 = load i32, i32* %5, align 4
  ret i32 %308
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.udf_inode_info* @UDF_I(%struct.inode*) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @udf_add_aext(%struct.inode*, %struct.extent_position*, %struct.kernel_lb_addr*, i32, i32) #2

declare dso_local i32 @udf_write_aext(%struct.inode*, %struct.extent_position*, %struct.kernel_lb_addr*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
