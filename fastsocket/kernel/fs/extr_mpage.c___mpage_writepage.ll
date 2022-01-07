; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_mpage.c___mpage_writepage.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_mpage.c___mpage_writepage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i64, %struct.address_space* }
%struct.address_space = type { %struct.TYPE_2__*, %struct.inode* }
%struct.TYPE_2__ = type { i32 (%struct.page*, %struct.writeback_control*)* }
%struct.inode = type { i32 }
%struct.writeback_control = type { i32 }
%struct.mpage_data = type { i64, %struct.bio*, i64, i64 (%struct.inode.0*, i64, %struct.buffer_head*, i32)* }
%struct.bio = type { i32 }
%struct.inode.0 = type opaque
%struct.buffer_head = type opaque
%struct.block_device = type { i32 }
%struct.buffer_head.1 = type { i64, i32, %struct.buffer_head.1*, %struct.block_device*, i64, %struct.page* }

@PAGE_CACHE_SIZE = common dso_local global i32 0, align 4
@MAX_BUF_PER_PAGE = common dso_local global i32 0, align 4
@PAGE_CACHE_SHIFT = common dso_local global i32 0, align 4
@WRITE = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@__GFP_HIGH = common dso_local global i32 0, align 4
@buffer_heads_over_limit = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.page*, %struct.writeback_control*, i8*)* @__mpage_writepage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__mpage_writepage(%struct.page* %0, %struct.writeback_control* %1, i8* %2) #0 {
  %4 = alloca %struct.page*, align 8
  %5 = alloca %struct.writeback_control*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.mpage_data*, align 8
  %8 = alloca %struct.bio*, align 8
  %9 = alloca %struct.address_space*, align 8
  %10 = alloca %struct.inode*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.block_device*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  %23 = alloca %struct.block_device*, align 8
  %24 = alloca i32, align 4
  %25 = alloca %struct.buffer_head.1, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca %struct.buffer_head.1*, align 8
  %29 = alloca %struct.buffer_head.1*, align 8
  %30 = alloca i32, align 4
  %31 = alloca %struct.buffer_head.1*, align 8
  %32 = alloca %struct.buffer_head.1*, align 8
  %33 = alloca i32, align 4
  store %struct.page* %0, %struct.page** %4, align 8
  store %struct.writeback_control* %1, %struct.writeback_control** %5, align 8
  store i8* %2, i8** %6, align 8
  %34 = load i8*, i8** %6, align 8
  %35 = bitcast i8* %34 to %struct.mpage_data*
  store %struct.mpage_data* %35, %struct.mpage_data** %7, align 8
  %36 = load %struct.mpage_data*, %struct.mpage_data** %7, align 8
  %37 = getelementptr inbounds %struct.mpage_data, %struct.mpage_data* %36, i32 0, i32 1
  %38 = load %struct.bio*, %struct.bio** %37, align 8
  store %struct.bio* %38, %struct.bio** %8, align 8
  %39 = load %struct.page*, %struct.page** %4, align 8
  %40 = getelementptr inbounds %struct.page, %struct.page* %39, i32 0, i32 1
  %41 = load %struct.address_space*, %struct.address_space** %40, align 8
  store %struct.address_space* %41, %struct.address_space** %9, align 8
  %42 = load %struct.page*, %struct.page** %4, align 8
  %43 = getelementptr inbounds %struct.page, %struct.page* %42, i32 0, i32 1
  %44 = load %struct.address_space*, %struct.address_space** %43, align 8
  %45 = getelementptr inbounds %struct.address_space, %struct.address_space* %44, i32 0, i32 1
  %46 = load %struct.inode*, %struct.inode** %45, align 8
  store %struct.inode* %46, %struct.inode** %10, align 8
  %47 = load %struct.inode*, %struct.inode** %10, align 8
  %48 = getelementptr inbounds %struct.inode, %struct.inode* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %11, align 4
  %50 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %51 = load i32, i32* %11, align 4
  %52 = lshr i32 %50, %51
  store i32 %52, i32* %13, align 4
  %53 = load i32, i32* @MAX_BUF_PER_PAGE, align 4
  %54 = zext i32 %53 to i64
  %55 = call i8* @llvm.stacksave()
  store i8* %55, i8** %16, align 8
  %56 = alloca i64, i64 %54, align 16
  store i64 %54, i64* %17, align 8
  %57 = load i32, i32* %13, align 4
  store i32 %57, i32* %19, align 4
  store %struct.block_device* null, %struct.block_device** %20, align 8
  store i32 0, i32* %21, align 4
  store i64 0, i64* %22, align 8
  store %struct.block_device* null, %struct.block_device** %23, align 8
  %58 = load %struct.inode*, %struct.inode** %10, align 8
  %59 = call i32 @i_size_read(%struct.inode* %58)
  store i32 %59, i32* %26, align 4
  store i32 0, i32* %27, align 4
  %60 = load %struct.page*, %struct.page** %4, align 8
  %61 = call i64 @page_has_buffers(%struct.page* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %150

63:                                               ; preds = %3
  %64 = load %struct.page*, %struct.page** %4, align 8
  %65 = call %struct.buffer_head.1* @page_buffers(%struct.page* %64)
  store %struct.buffer_head.1* %65, %struct.buffer_head.1** %28, align 8
  %66 = load %struct.buffer_head.1*, %struct.buffer_head.1** %28, align 8
  store %struct.buffer_head.1* %66, %struct.buffer_head.1** %29, align 8
  store i32 0, i32* %18, align 4
  br label %67

67:                                               ; preds = %139, %63
  %68 = load %struct.buffer_head.1*, %struct.buffer_head.1** %29, align 8
  %69 = call i32 @buffer_locked(%struct.buffer_head.1* %68)
  %70 = call i32 @BUG_ON(i32 %69)
  %71 = load %struct.buffer_head.1*, %struct.buffer_head.1** %29, align 8
  %72 = call i32 @buffer_mapped(%struct.buffer_head.1* %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %86, label %74

74:                                               ; preds = %67
  %75 = load %struct.buffer_head.1*, %struct.buffer_head.1** %29, align 8
  %76 = call i64 @buffer_dirty(%struct.buffer_head.1* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %74
  br label %397

79:                                               ; preds = %74
  %80 = load i32, i32* %19, align 4
  %81 = load i32, i32* %13, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %83, label %85

83:                                               ; preds = %79
  %84 = load i32, i32* %18, align 4
  store i32 %84, i32* %19, align 4
  br label %85

85:                                               ; preds = %83, %79
  br label %139

86:                                               ; preds = %67
  %87 = load i32, i32* %19, align 4
  %88 = load i32, i32* %13, align 4
  %89 = icmp ne i32 %87, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %86
  br label %397

91:                                               ; preds = %86
  %92 = load %struct.buffer_head.1*, %struct.buffer_head.1** %29, align 8
  %93 = call i64 @buffer_dirty(%struct.buffer_head.1* %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %91
  %96 = load %struct.buffer_head.1*, %struct.buffer_head.1** %29, align 8
  %97 = call i32 @buffer_uptodate(%struct.buffer_head.1* %96)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %100, label %99

99:                                               ; preds = %95, %91
  br label %397

100:                                              ; preds = %95
  %101 = load i32, i32* %18, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %116

103:                                              ; preds = %100
  %104 = load %struct.buffer_head.1*, %struct.buffer_head.1** %29, align 8
  %105 = getelementptr inbounds %struct.buffer_head.1, %struct.buffer_head.1* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load i32, i32* %18, align 4
  %108 = sub i32 %107, 1
  %109 = zext i32 %108 to i64
  %110 = getelementptr inbounds i64, i64* %56, i64 %109
  %111 = load i64, i64* %110, align 8
  %112 = add nsw i64 %111, 1
  %113 = icmp ne i64 %106, %112
  br i1 %113, label %114, label %115

114:                                              ; preds = %103
  br label %397

115:                                              ; preds = %103
  br label %116

116:                                              ; preds = %115, %100
  %117 = load %struct.buffer_head.1*, %struct.buffer_head.1** %29, align 8
  %118 = getelementptr inbounds %struct.buffer_head.1, %struct.buffer_head.1* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load i32, i32* %18, align 4
  %121 = add i32 %120, 1
  store i32 %121, i32* %18, align 4
  %122 = zext i32 %120 to i64
  %123 = getelementptr inbounds i64, i64* %56, i64 %122
  store i64 %119, i64* %123, align 8
  %124 = load %struct.buffer_head.1*, %struct.buffer_head.1** %29, align 8
  %125 = call i32 @buffer_boundary(%struct.buffer_head.1* %124)
  store i32 %125, i32* %21, align 4
  %126 = load i32, i32* %21, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %135

128:                                              ; preds = %116
  %129 = load %struct.buffer_head.1*, %struct.buffer_head.1** %29, align 8
  %130 = getelementptr inbounds %struct.buffer_head.1, %struct.buffer_head.1* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  store i64 %131, i64* %22, align 8
  %132 = load %struct.buffer_head.1*, %struct.buffer_head.1** %29, align 8
  %133 = getelementptr inbounds %struct.buffer_head.1, %struct.buffer_head.1* %132, i32 0, i32 3
  %134 = load %struct.block_device*, %struct.block_device** %133, align 8
  store %struct.block_device* %134, %struct.block_device** %23, align 8
  br label %135

135:                                              ; preds = %128, %116
  %136 = load %struct.buffer_head.1*, %struct.buffer_head.1** %29, align 8
  %137 = getelementptr inbounds %struct.buffer_head.1, %struct.buffer_head.1* %136, i32 0, i32 3
  %138 = load %struct.block_device*, %struct.block_device** %137, align 8
  store %struct.block_device* %138, %struct.block_device** %20, align 8
  br label %139

139:                                              ; preds = %135, %85
  %140 = load %struct.buffer_head.1*, %struct.buffer_head.1** %29, align 8
  %141 = getelementptr inbounds %struct.buffer_head.1, %struct.buffer_head.1* %140, i32 0, i32 2
  %142 = load %struct.buffer_head.1*, %struct.buffer_head.1** %141, align 8
  store %struct.buffer_head.1* %142, %struct.buffer_head.1** %29, align 8
  %143 = load %struct.buffer_head.1*, %struct.buffer_head.1** %28, align 8
  %144 = icmp ne %struct.buffer_head.1* %142, %143
  br i1 %144, label %67, label %145

145:                                              ; preds = %139
  %146 = load i32, i32* %19, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %145
  br label %246

149:                                              ; preds = %145
  br label %397

150:                                              ; preds = %3
  %151 = load %struct.page*, %struct.page** %4, align 8
  %152 = call i64 @PageUptodate(%struct.page* %151)
  %153 = icmp ne i64 %152, 0
  %154 = xor i1 %153, true
  %155 = zext i1 %154 to i32
  %156 = call i32 @BUG_ON(i32 %155)
  %157 = load %struct.page*, %struct.page** %4, align 8
  %158 = getelementptr inbounds %struct.page, %struct.page* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = load i32, i32* @PAGE_CACHE_SHIFT, align 4
  %161 = load i32, i32* %11, align 4
  %162 = sub i32 %160, %161
  %163 = zext i32 %162 to i64
  %164 = shl i64 %159, %163
  store i64 %164, i64* %15, align 8
  %165 = load i32, i32* %26, align 4
  %166 = sub nsw i32 %165, 1
  %167 = load i32, i32* %11, align 4
  %168 = ashr i32 %166, %167
  %169 = sext i32 %168 to i64
  store i64 %169, i64* %14, align 8
  %170 = load %struct.page*, %struct.page** %4, align 8
  %171 = getelementptr inbounds %struct.buffer_head.1, %struct.buffer_head.1* %25, i32 0, i32 5
  store %struct.page* %170, %struct.page** %171, align 8
  store i32 0, i32* %18, align 4
  br label %172

172:                                              ; preds = %237, %150
  %173 = load i32, i32* %18, align 4
  %174 = load i32, i32* %13, align 4
  %175 = icmp ult i32 %173, %174
  br i1 %175, label %176, label %240

176:                                              ; preds = %172
  %177 = getelementptr inbounds %struct.buffer_head.1, %struct.buffer_head.1* %25, i32 0, i32 4
  store i64 0, i64* %177, align 8
  %178 = load i32, i32* %11, align 4
  %179 = shl i32 1, %178
  %180 = getelementptr inbounds %struct.buffer_head.1, %struct.buffer_head.1* %25, i32 0, i32 1
  store i32 %179, i32* %180, align 8
  %181 = load %struct.mpage_data*, %struct.mpage_data** %7, align 8
  %182 = getelementptr inbounds %struct.mpage_data, %struct.mpage_data* %181, i32 0, i32 3
  %183 = load i64 (%struct.inode.0*, i64, %struct.buffer_head*, i32)*, i64 (%struct.inode.0*, i64, %struct.buffer_head*, i32)** %182, align 8
  %184 = load %struct.inode*, %struct.inode** %10, align 8
  %185 = bitcast %struct.inode* %184 to %struct.inode.0*
  %186 = load i64, i64* %15, align 8
  %187 = bitcast %struct.buffer_head.1* %25 to %struct.buffer_head*
  %188 = call i64 %183(%struct.inode.0* %185, i64 %186, %struct.buffer_head* %187, i32 1)
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %191

190:                                              ; preds = %176
  br label %397

191:                                              ; preds = %176
  %192 = call i64 @buffer_new(%struct.buffer_head.1* %25)
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %200

194:                                              ; preds = %191
  %195 = getelementptr inbounds %struct.buffer_head.1, %struct.buffer_head.1* %25, i32 0, i32 3
  %196 = load %struct.block_device*, %struct.block_device** %195, align 8
  %197 = getelementptr inbounds %struct.buffer_head.1, %struct.buffer_head.1* %25, i32 0, i32 0
  %198 = load i64, i64* %197, align 8
  %199 = call i32 @unmap_underlying_metadata(%struct.block_device* %196, i64 %198)
  br label %200

200:                                              ; preds = %194, %191
  %201 = call i32 @buffer_boundary(%struct.buffer_head.1* %25)
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %208

203:                                              ; preds = %200
  %204 = getelementptr inbounds %struct.buffer_head.1, %struct.buffer_head.1* %25, i32 0, i32 0
  %205 = load i64, i64* %204, align 8
  store i64 %205, i64* %22, align 8
  %206 = getelementptr inbounds %struct.buffer_head.1, %struct.buffer_head.1* %25, i32 0, i32 3
  %207 = load %struct.block_device*, %struct.block_device** %206, align 8
  store %struct.block_device* %207, %struct.block_device** %23, align 8
  br label %208

208:                                              ; preds = %203, %200
  %209 = load i32, i32* %18, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %223

211:                                              ; preds = %208
  %212 = getelementptr inbounds %struct.buffer_head.1, %struct.buffer_head.1* %25, i32 0, i32 0
  %213 = load i64, i64* %212, align 8
  %214 = load i32, i32* %18, align 4
  %215 = sub i32 %214, 1
  %216 = zext i32 %215 to i64
  %217 = getelementptr inbounds i64, i64* %56, i64 %216
  %218 = load i64, i64* %217, align 8
  %219 = add nsw i64 %218, 1
  %220 = icmp ne i64 %213, %219
  br i1 %220, label %221, label %222

221:                                              ; preds = %211
  br label %397

222:                                              ; preds = %211
  br label %223

223:                                              ; preds = %222, %208
  %224 = getelementptr inbounds %struct.buffer_head.1, %struct.buffer_head.1* %25, i32 0, i32 0
  %225 = load i64, i64* %224, align 8
  %226 = load i32, i32* %18, align 4
  %227 = add i32 %226, 1
  store i32 %227, i32* %18, align 4
  %228 = zext i32 %226 to i64
  %229 = getelementptr inbounds i64, i64* %56, i64 %228
  store i64 %225, i64* %229, align 8
  %230 = call i32 @buffer_boundary(%struct.buffer_head.1* %25)
  store i32 %230, i32* %21, align 4
  %231 = getelementptr inbounds %struct.buffer_head.1, %struct.buffer_head.1* %25, i32 0, i32 3
  %232 = load %struct.block_device*, %struct.block_device** %231, align 8
  store %struct.block_device* %232, %struct.block_device** %20, align 8
  %233 = load i64, i64* %15, align 8
  %234 = load i64, i64* %14, align 8
  %235 = icmp eq i64 %233, %234
  br i1 %235, label %236, label %237

236:                                              ; preds = %223
  br label %240

237:                                              ; preds = %223
  %238 = load i64, i64* %15, align 8
  %239 = add nsw i64 %238, 1
  store i64 %239, i64* %15, align 8
  br label %172

240:                                              ; preds = %236, %172
  %241 = load i32, i32* %18, align 4
  %242 = icmp eq i32 %241, 0
  %243 = zext i1 %242 to i32
  %244 = call i32 @BUG_ON(i32 %243)
  %245 = load i32, i32* %18, align 4
  store i32 %245, i32* %19, align 4
  br label %246

246:                                              ; preds = %240, %148
  %247 = load i32, i32* %26, align 4
  %248 = load i32, i32* @PAGE_CACHE_SHIFT, align 4
  %249 = ashr i32 %247, %248
  %250 = sext i32 %249 to i64
  store i64 %250, i64* %12, align 8
  %251 = load %struct.page*, %struct.page** %4, align 8
  %252 = getelementptr inbounds %struct.page, %struct.page* %251, i32 0, i32 0
  %253 = load i64, i64* %252, align 8
  %254 = load i64, i64* %12, align 8
  %255 = icmp uge i64 %253, %254
  br i1 %255, label %256, label %275

256:                                              ; preds = %246
  %257 = load i32, i32* %26, align 4
  %258 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %259 = sub i32 %258, 1
  %260 = and i32 %257, %259
  store i32 %260, i32* %30, align 4
  %261 = load %struct.page*, %struct.page** %4, align 8
  %262 = getelementptr inbounds %struct.page, %struct.page* %261, i32 0, i32 0
  %263 = load i64, i64* %262, align 8
  %264 = load i64, i64* %12, align 8
  %265 = icmp ugt i64 %263, %264
  br i1 %265, label %269, label %266

266:                                              ; preds = %256
  %267 = load i32, i32* %30, align 4
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %270, label %269

269:                                              ; preds = %266, %256
  br label %397

270:                                              ; preds = %266
  %271 = load %struct.page*, %struct.page** %4, align 8
  %272 = load i32, i32* %30, align 4
  %273 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %274 = call i32 @zero_user_segment(%struct.page* %271, i32 %272, i32 %273)
  br label %275

275:                                              ; preds = %270, %246
  %276 = load %struct.bio*, %struct.bio** %8, align 8
  %277 = icmp ne %struct.bio* %276, null
  br i1 %277, label %278, label %290

278:                                              ; preds = %275
  %279 = load %struct.mpage_data*, %struct.mpage_data** %7, align 8
  %280 = getelementptr inbounds %struct.mpage_data, %struct.mpage_data* %279, i32 0, i32 0
  %281 = load i64, i64* %280, align 8
  %282 = getelementptr inbounds i64, i64* %56, i64 0
  %283 = load i64, i64* %282, align 16
  %284 = sub nsw i64 %283, 1
  %285 = icmp ne i64 %281, %284
  br i1 %285, label %286, label %290

286:                                              ; preds = %278
  %287 = load i32, i32* @WRITE, align 4
  %288 = load %struct.bio*, %struct.bio** %8, align 8
  %289 = call %struct.bio* @mpage_bio_submit(i32 %287, %struct.bio* %288)
  store %struct.bio* %289, %struct.bio** %8, align 8
  br label %290

290:                                              ; preds = %286, %278, %275
  br label %291

291:                                              ; preds = %322, %290
  %292 = load %struct.bio*, %struct.bio** %8, align 8
  %293 = icmp eq %struct.bio* %292, null
  br i1 %293, label %294, label %312

294:                                              ; preds = %291
  %295 = load %struct.block_device*, %struct.block_device** %20, align 8
  %296 = getelementptr inbounds i64, i64* %56, i64 0
  %297 = load i64, i64* %296, align 16
  %298 = load i32, i32* %11, align 4
  %299 = sub i32 %298, 9
  %300 = zext i32 %299 to i64
  %301 = shl i64 %297, %300
  %302 = load %struct.block_device*, %struct.block_device** %20, align 8
  %303 = call i32 @bio_get_nr_vecs(%struct.block_device* %302)
  %304 = load i32, i32* @GFP_NOFS, align 4
  %305 = load i32, i32* @__GFP_HIGH, align 4
  %306 = or i32 %304, %305
  %307 = call %struct.bio* @mpage_alloc(%struct.block_device* %295, i64 %301, i32 %303, i32 %306)
  store %struct.bio* %307, %struct.bio** %8, align 8
  %308 = load %struct.bio*, %struct.bio** %8, align 8
  %309 = icmp eq %struct.bio* %308, null
  br i1 %309, label %310, label %311

310:                                              ; preds = %294
  br label %397

311:                                              ; preds = %294
  br label %312

312:                                              ; preds = %311, %291
  %313 = load i32, i32* %19, align 4
  %314 = load i32, i32* %11, align 4
  %315 = shl i32 %313, %314
  store i32 %315, i32* %24, align 4
  %316 = load %struct.bio*, %struct.bio** %8, align 8
  %317 = load %struct.page*, %struct.page** %4, align 8
  %318 = load i32, i32* %24, align 4
  %319 = call i32 @bio_add_page(%struct.bio* %316, %struct.page* %317, i32 %318, i32 0)
  %320 = load i32, i32* %24, align 4
  %321 = icmp slt i32 %319, %320
  br i1 %321, label %322, label %326

322:                                              ; preds = %312
  %323 = load i32, i32* @WRITE, align 4
  %324 = load %struct.bio*, %struct.bio** %8, align 8
  %325 = call %struct.bio* @mpage_bio_submit(i32 %323, %struct.bio* %324)
  store %struct.bio* %325, %struct.bio** %8, align 8
  br label %291

326:                                              ; preds = %312
  %327 = load %struct.page*, %struct.page** %4, align 8
  %328 = call i64 @page_has_buffers(%struct.page* %327)
  %329 = icmp ne i64 %328, 0
  br i1 %329, label %330, label %361

330:                                              ; preds = %326
  %331 = load %struct.page*, %struct.page** %4, align 8
  %332 = call %struct.buffer_head.1* @page_buffers(%struct.page* %331)
  store %struct.buffer_head.1* %332, %struct.buffer_head.1** %31, align 8
  %333 = load %struct.buffer_head.1*, %struct.buffer_head.1** %31, align 8
  store %struct.buffer_head.1* %333, %struct.buffer_head.1** %32, align 8
  store i32 0, i32* %33, align 4
  br label %334

334:                                              ; preds = %346, %330
  %335 = load i32, i32* %33, align 4
  %336 = add i32 %335, 1
  store i32 %336, i32* %33, align 4
  %337 = load i32, i32* %19, align 4
  %338 = icmp eq i32 %335, %337
  br i1 %338, label %339, label %340

339:                                              ; preds = %334
  br label %350

340:                                              ; preds = %334
  %341 = load %struct.buffer_head.1*, %struct.buffer_head.1** %32, align 8
  %342 = call i32 @clear_buffer_dirty(%struct.buffer_head.1* %341)
  %343 = load %struct.buffer_head.1*, %struct.buffer_head.1** %32, align 8
  %344 = getelementptr inbounds %struct.buffer_head.1, %struct.buffer_head.1* %343, i32 0, i32 2
  %345 = load %struct.buffer_head.1*, %struct.buffer_head.1** %344, align 8
  store %struct.buffer_head.1* %345, %struct.buffer_head.1** %32, align 8
  br label %346

346:                                              ; preds = %340
  %347 = load %struct.buffer_head.1*, %struct.buffer_head.1** %32, align 8
  %348 = load %struct.buffer_head.1*, %struct.buffer_head.1** %31, align 8
  %349 = icmp ne %struct.buffer_head.1* %347, %348
  br i1 %349, label %334, label %350

350:                                              ; preds = %346, %339
  %351 = load i64, i64* @buffer_heads_over_limit, align 8
  %352 = icmp ne i64 %351, 0
  br i1 %352, label %353, label %360

353:                                              ; preds = %350
  %354 = load %struct.page*, %struct.page** %4, align 8
  %355 = call i64 @PageUptodate(%struct.page* %354)
  %356 = icmp ne i64 %355, 0
  br i1 %356, label %357, label %360

357:                                              ; preds = %353
  %358 = load %struct.page*, %struct.page** %4, align 8
  %359 = call i32 @try_to_free_buffers(%struct.page* %358)
  br label %360

360:                                              ; preds = %357, %353, %350
  br label %361

361:                                              ; preds = %360, %326
  %362 = load %struct.page*, %struct.page** %4, align 8
  %363 = call i32 @PageWriteback(%struct.page* %362)
  %364 = call i32 @BUG_ON(i32 %363)
  %365 = load %struct.page*, %struct.page** %4, align 8
  %366 = call i32 @set_page_writeback(%struct.page* %365)
  %367 = load %struct.page*, %struct.page** %4, align 8
  %368 = call i32 @unlock_page(%struct.page* %367)
  %369 = load i32, i32* %21, align 4
  %370 = icmp ne i32 %369, 0
  br i1 %370, label %375, label %371

371:                                              ; preds = %361
  %372 = load i32, i32* %19, align 4
  %373 = load i32, i32* %13, align 4
  %374 = icmp ne i32 %372, %373
  br i1 %374, label %375, label %388

375:                                              ; preds = %371, %361
  %376 = load i32, i32* @WRITE, align 4
  %377 = load %struct.bio*, %struct.bio** %8, align 8
  %378 = call %struct.bio* @mpage_bio_submit(i32 %376, %struct.bio* %377)
  store %struct.bio* %378, %struct.bio** %8, align 8
  %379 = load i64, i64* %22, align 8
  %380 = icmp ne i64 %379, 0
  br i1 %380, label %381, label %387

381:                                              ; preds = %375
  %382 = load %struct.block_device*, %struct.block_device** %23, align 8
  %383 = load i64, i64* %22, align 8
  %384 = load i32, i32* %11, align 4
  %385 = shl i32 1, %384
  %386 = call i32 @write_boundary_block(%struct.block_device* %382, i64 %383, i32 %385)
  br label %387

387:                                              ; preds = %381, %375
  br label %396

388:                                              ; preds = %371
  %389 = load i32, i32* %13, align 4
  %390 = sub i32 %389, 1
  %391 = zext i32 %390 to i64
  %392 = getelementptr inbounds i64, i64* %56, i64 %391
  %393 = load i64, i64* %392, align 8
  %394 = load %struct.mpage_data*, %struct.mpage_data** %7, align 8
  %395 = getelementptr inbounds %struct.mpage_data, %struct.mpage_data* %394, i32 0, i32 0
  store i64 %393, i64* %395, align 8
  br label %396

396:                                              ; preds = %388, %387
  br label %425

397:                                              ; preds = %310, %269, %221, %190, %149, %114, %99, %90, %78
  %398 = load %struct.bio*, %struct.bio** %8, align 8
  %399 = icmp ne %struct.bio* %398, null
  br i1 %399, label %400, label %404

400:                                              ; preds = %397
  %401 = load i32, i32* @WRITE, align 4
  %402 = load %struct.bio*, %struct.bio** %8, align 8
  %403 = call %struct.bio* @mpage_bio_submit(i32 %401, %struct.bio* %402)
  store %struct.bio* %403, %struct.bio** %8, align 8
  br label %404

404:                                              ; preds = %400, %397
  %405 = load %struct.mpage_data*, %struct.mpage_data** %7, align 8
  %406 = getelementptr inbounds %struct.mpage_data, %struct.mpage_data* %405, i32 0, i32 2
  %407 = load i64, i64* %406, align 8
  %408 = icmp ne i64 %407, 0
  br i1 %408, label %409, label %418

409:                                              ; preds = %404
  %410 = load %struct.address_space*, %struct.address_space** %9, align 8
  %411 = getelementptr inbounds %struct.address_space, %struct.address_space* %410, i32 0, i32 0
  %412 = load %struct.TYPE_2__*, %struct.TYPE_2__** %411, align 8
  %413 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %412, i32 0, i32 0
  %414 = load i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.page*, %struct.writeback_control*)** %413, align 8
  %415 = load %struct.page*, %struct.page** %4, align 8
  %416 = load %struct.writeback_control*, %struct.writeback_control** %5, align 8
  %417 = call i32 %414(%struct.page* %415, %struct.writeback_control* %416)
  store i32 %417, i32* %27, align 4
  br label %421

418:                                              ; preds = %404
  %419 = load i32, i32* @EAGAIN, align 4
  %420 = sub nsw i32 0, %419
  store i32 %420, i32* %27, align 4
  br label %425

421:                                              ; preds = %409
  %422 = load %struct.address_space*, %struct.address_space** %9, align 8
  %423 = load i32, i32* %27, align 4
  %424 = call i32 @mapping_set_error(%struct.address_space* %422, i32 %423)
  br label %425

425:                                              ; preds = %421, %418, %396
  %426 = load %struct.bio*, %struct.bio** %8, align 8
  %427 = load %struct.mpage_data*, %struct.mpage_data** %7, align 8
  %428 = getelementptr inbounds %struct.mpage_data, %struct.mpage_data* %427, i32 0, i32 1
  store %struct.bio* %426, %struct.bio** %428, align 8
  %429 = load i32, i32* %27, align 4
  %430 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %430)
  ret i32 %429
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @i_size_read(%struct.inode*) #2

declare dso_local i64 @page_has_buffers(%struct.page*) #2

declare dso_local %struct.buffer_head.1* @page_buffers(%struct.page*) #2

declare dso_local i32 @BUG_ON(i32) #2

declare dso_local i32 @buffer_locked(%struct.buffer_head.1*) #2

declare dso_local i32 @buffer_mapped(%struct.buffer_head.1*) #2

declare dso_local i64 @buffer_dirty(%struct.buffer_head.1*) #2

declare dso_local i32 @buffer_uptodate(%struct.buffer_head.1*) #2

declare dso_local i32 @buffer_boundary(%struct.buffer_head.1*) #2

declare dso_local i64 @PageUptodate(%struct.page*) #2

declare dso_local i64 @buffer_new(%struct.buffer_head.1*) #2

declare dso_local i32 @unmap_underlying_metadata(%struct.block_device*, i64) #2

declare dso_local i32 @zero_user_segment(%struct.page*, i32, i32) #2

declare dso_local %struct.bio* @mpage_bio_submit(i32, %struct.bio*) #2

declare dso_local %struct.bio* @mpage_alloc(%struct.block_device*, i64, i32, i32) #2

declare dso_local i32 @bio_get_nr_vecs(%struct.block_device*) #2

declare dso_local i32 @bio_add_page(%struct.bio*, %struct.page*, i32, i32) #2

declare dso_local i32 @clear_buffer_dirty(%struct.buffer_head.1*) #2

declare dso_local i32 @try_to_free_buffers(%struct.page*) #2

declare dso_local i32 @PageWriteback(%struct.page*) #2

declare dso_local i32 @set_page_writeback(%struct.page*) #2

declare dso_local i32 @unlock_page(%struct.page*) #2

declare dso_local i32 @write_boundary_block(%struct.block_device*, i64, i32) #2

declare dso_local i32 @mapping_set_error(%struct.address_space*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
