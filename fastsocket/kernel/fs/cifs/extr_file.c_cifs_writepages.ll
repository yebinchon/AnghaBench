; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_file.c_cifs_writepages.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_file.c_cifs_writepages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.address_space = type { i64, %struct.TYPE_5__*, %struct.backing_dev_info* }
%struct.TYPE_5__ = type { i32 }
%struct.backing_dev_info = type { i32 }
%struct.writeback_control = type { i32, i64, i64, i64, i64, i64, i64 }
%struct.cifs_sb_info = type { i32 }
%struct.cifs_writedata = type { i64, i32, i32, i32, %struct.page**, %struct.TYPE_6__*, i32, i64, i64, i64 }
%struct.page = type { i64, %struct.address_space* }
%struct.TYPE_6__ = type { i32 }

@PAGE_CACHE_SIZE = common dso_local global i32 0, align 4
@PAGE_CACHE_SHIFT = common dso_local global i64 0, align 8
@LLONG_MAX = common dso_local global i64 0, align 8
@cifs_writev_complete_ops = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PAGECACHE_TAG_DIRTY = common dso_local global i32 0, align 4
@cifs_writedata_release = common dso_local global i32 0, align 4
@WB_SYNC_NONE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"No writable handles for inode\00", align 1
@EBADF = common dso_local global i32 0, align 4
@WB_SYNC_ALL = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.address_space*, %struct.writeback_control*)* @cifs_writepages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cifs_writepages(%struct.address_space* %0, %struct.writeback_control* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.address_space*, align 8
  %5 = alloca %struct.writeback_control*, align 8
  %6 = alloca %struct.backing_dev_info*, align 8
  %7 = alloca %struct.cifs_sb_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.cifs_writedata*, align 8
  %14 = alloca %struct.page*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca %struct.page**, align 8
  store %struct.address_space* %0, %struct.address_space** %4, align 8
  store %struct.writeback_control* %1, %struct.writeback_control** %5, align 8
  %22 = load %struct.address_space*, %struct.address_space** %4, align 8
  %23 = getelementptr inbounds %struct.address_space, %struct.address_space* %22, i32 0, i32 2
  %24 = load %struct.backing_dev_info*, %struct.backing_dev_info** %23, align 8
  store %struct.backing_dev_info* %24, %struct.backing_dev_info** %6, align 8
  %25 = load %struct.address_space*, %struct.address_space** %4, align 8
  %26 = getelementptr inbounds %struct.address_space, %struct.address_space* %25, i32 0, i32 1
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call %struct.cifs_sb_info* @CIFS_SB(i32 %29)
  store %struct.cifs_sb_info* %30, %struct.cifs_sb_info** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %15, align 4
  %31 = load %struct.writeback_control*, %struct.writeback_control** %5, align 8
  %32 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %31, i32 0, i32 6
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %2
  %36 = load %struct.backing_dev_info*, %struct.backing_dev_info** %6, align 8
  %37 = call i64 @bdi_write_congested(%struct.backing_dev_info* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %35
  %40 = load %struct.writeback_control*, %struct.writeback_control** %5, align 8
  %41 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %40, i32 0, i32 0
  store i32 1, i32* %41, align 8
  store i32 0, i32* %3, align 4
  br label %537

42:                                               ; preds = %35, %2
  %43 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %7, align 8
  %44 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %42
  %49 = load %struct.address_space*, %struct.address_space** %4, align 8
  %50 = load %struct.writeback_control*, %struct.writeback_control** %5, align 8
  %51 = call i32 @generic_writepages(%struct.address_space* %49, %struct.writeback_control* %50)
  store i32 %51, i32* %3, align 4
  br label %537

52:                                               ; preds = %42
  %53 = load %struct.writeback_control*, %struct.writeback_control** %5, align 8
  %54 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %53, i32 0, i32 5
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %52
  %58 = load %struct.address_space*, %struct.address_space** %4, align 8
  %59 = getelementptr inbounds %struct.address_space, %struct.address_space* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  store i64 %60, i64* %12, align 8
  store i64 -1, i64* %11, align 8
  br label %84

61:                                               ; preds = %52
  %62 = load %struct.writeback_control*, %struct.writeback_control** %5, align 8
  %63 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @PAGE_CACHE_SHIFT, align 8
  %66 = ashr i64 %64, %65
  store i64 %66, i64* %12, align 8
  %67 = load %struct.writeback_control*, %struct.writeback_control** %5, align 8
  %68 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @PAGE_CACHE_SHIFT, align 8
  %71 = ashr i64 %69, %70
  store i64 %71, i64* %11, align 8
  %72 = load %struct.writeback_control*, %struct.writeback_control** %5, align 8
  %73 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %83

76:                                               ; preds = %61
  %77 = load %struct.writeback_control*, %struct.writeback_control** %5, align 8
  %78 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @LLONG_MAX, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %76
  store i32 1, i32* %10, align 4
  br label %83

83:                                               ; preds = %82, %76, %61
  store i32 1, i32* %9, align 4
  br label %84

84:                                               ; preds = %83, %57
  br label %85

85:                                               ; preds = %517, %84
  br label %86

86:                                               ; preds = %509, %310, %85
  %87 = load i32, i32* %8, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %93, label %89

89:                                               ; preds = %86
  %90 = load i64, i64* %12, align 8
  %91 = load i64, i64* %11, align 8
  %92 = icmp sle i64 %90, %91
  br label %93

93:                                               ; preds = %89, %86
  %94 = phi i1 [ false, %86 ], [ %92, %89 ]
  br i1 %94, label %95, label %511

95:                                               ; preds = %93
  store i64 0, i64* %19, align 8
  %96 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %7, align 8
  %97 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %100 = sdiv i32 %98, %99
  %101 = sub nsw i32 %100, 1
  %102 = sext i32 %101 to i64
  %103 = load i64, i64* %11, align 8
  %104 = load i64, i64* %12, align 8
  %105 = sub nsw i64 %103, %104
  %106 = call i64 @min(i64 %102, i64 %105)
  %107 = add nsw i64 %106, 1
  store i64 %107, i64* %20, align 8
  %108 = load i64, i64* %20, align 8
  %109 = trunc i64 %108 to i32
  %110 = call %struct.cifs_writedata* @cifs_writedata_alloc(i32 %109, i32* @cifs_writev_complete_ops)
  store %struct.cifs_writedata* %110, %struct.cifs_writedata** %13, align 8
  %111 = load %struct.cifs_writedata*, %struct.cifs_writedata** %13, align 8
  %112 = icmp ne %struct.cifs_writedata* %111, null
  br i1 %112, label %116, label %113

113:                                              ; preds = %95
  %114 = load i32, i32* @ENOMEM, align 4
  %115 = sub nsw i32 0, %114
  store i32 %115, i32* %15, align 4
  br label %511

116:                                              ; preds = %95
  store i32 0, i32* %18, align 4
  %117 = load %struct.cifs_writedata*, %struct.cifs_writedata** %13, align 8
  %118 = getelementptr inbounds %struct.cifs_writedata, %struct.cifs_writedata* %117, i32 0, i32 4
  %119 = load %struct.page**, %struct.page*** %118, align 8
  store %struct.page** %119, %struct.page*** %21, align 8
  br label %120

120:                                              ; preds = %147, %116
  %121 = load %struct.address_space*, %struct.address_space** %4, align 8
  %122 = load i32, i32* @PAGECACHE_TAG_DIRTY, align 4
  %123 = load i64, i64* %20, align 8
  %124 = load %struct.page**, %struct.page*** %21, align 8
  %125 = call i32 @find_get_pages_tag(%struct.address_space* %121, i64* %12, i32 %122, i64 %123, %struct.page** %124)
  store i32 %125, i32* %17, align 4
  %126 = load i32, i32* %17, align 4
  %127 = load i32, i32* %18, align 4
  %128 = add i32 %127, %126
  store i32 %128, i32* %18, align 4
  %129 = load i32, i32* %17, align 4
  %130 = zext i32 %129 to i64
  %131 = load i64, i64* %20, align 8
  %132 = sub nsw i64 %131, %130
  store i64 %132, i64* %20, align 8
  %133 = load i32, i32* %17, align 4
  %134 = load %struct.page**, %struct.page*** %21, align 8
  %135 = zext i32 %133 to i64
  %136 = getelementptr inbounds %struct.page*, %struct.page** %134, i64 %135
  store %struct.page** %136, %struct.page*** %21, align 8
  br label %137

137:                                              ; preds = %120
  %138 = load i32, i32* %17, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %147

140:                                              ; preds = %137
  %141 = load i64, i64* %20, align 8
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %147

143:                                              ; preds = %140
  %144 = load i64, i64* %12, align 8
  %145 = load i64, i64* %11, align 8
  %146 = icmp sle i64 %144, %145
  br label %147

147:                                              ; preds = %143, %140, %137
  %148 = phi i1 [ false, %140 ], [ false, %137 ], [ %146, %143 ]
  br i1 %148, label %120, label %149

149:                                              ; preds = %147
  %150 = load i32, i32* %18, align 4
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %152, label %157

152:                                              ; preds = %149
  %153 = load %struct.cifs_writedata*, %struct.cifs_writedata** %13, align 8
  %154 = getelementptr inbounds %struct.cifs_writedata, %struct.cifs_writedata* %153, i32 0, i32 3
  %155 = load i32, i32* @cifs_writedata_release, align 4
  %156 = call i32 @kref_put(i32* %154, i32 %155)
  br label %511

157:                                              ; preds = %149
  store i32 0, i32* %17, align 4
  store i32 0, i32* %16, align 4
  br label %158

158:                                              ; preds = %268, %157
  %159 = load i32, i32* %16, align 4
  %160 = load i32, i32* %18, align 4
  %161 = icmp ult i32 %159, %160
  br i1 %161, label %162, label %271

162:                                              ; preds = %158
  %163 = load %struct.cifs_writedata*, %struct.cifs_writedata** %13, align 8
  %164 = getelementptr inbounds %struct.cifs_writedata, %struct.cifs_writedata* %163, i32 0, i32 4
  %165 = load %struct.page**, %struct.page*** %164, align 8
  %166 = load i32, i32* %16, align 4
  %167 = zext i32 %166 to i64
  %168 = getelementptr inbounds %struct.page*, %struct.page** %165, i64 %167
  %169 = load %struct.page*, %struct.page** %168, align 8
  store %struct.page* %169, %struct.page** %14, align 8
  %170 = load i32, i32* %17, align 4
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %172, label %175

172:                                              ; preds = %162
  %173 = load %struct.page*, %struct.page** %14, align 8
  %174 = call i32 @lock_page(%struct.page* %173)
  br label %181

175:                                              ; preds = %162
  %176 = load %struct.page*, %struct.page** %14, align 8
  %177 = call i32 @trylock_page(%struct.page* %176)
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %180, label %179

179:                                              ; preds = %175
  br label %271

180:                                              ; preds = %175
  br label %181

181:                                              ; preds = %180, %172
  %182 = load %struct.page*, %struct.page** %14, align 8
  %183 = getelementptr inbounds %struct.page, %struct.page* %182, i32 0, i32 1
  %184 = load %struct.address_space*, %struct.address_space** %183, align 8
  %185 = load %struct.address_space*, %struct.address_space** %4, align 8
  %186 = icmp ne %struct.address_space* %184, %185
  %187 = zext i1 %186 to i32
  %188 = call i64 @unlikely(i32 %187)
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %193

190:                                              ; preds = %181
  %191 = load %struct.page*, %struct.page** %14, align 8
  %192 = call i32 @unlock_page(%struct.page* %191)
  br label %271

193:                                              ; preds = %181
  %194 = load %struct.writeback_control*, %struct.writeback_control** %5, align 8
  %195 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %194, i32 0, i32 5
  %196 = load i64, i64* %195, align 8
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %207, label %198

198:                                              ; preds = %193
  %199 = load %struct.page*, %struct.page** %14, align 8
  %200 = getelementptr inbounds %struct.page, %struct.page* %199, i32 0, i32 0
  %201 = load i64, i64* %200, align 8
  %202 = load i64, i64* %11, align 8
  %203 = icmp sgt i64 %201, %202
  br i1 %203, label %204, label %207

204:                                              ; preds = %198
  store i32 1, i32* %8, align 4
  %205 = load %struct.page*, %struct.page** %14, align 8
  %206 = call i32 @unlock_page(%struct.page* %205)
  br label %271

207:                                              ; preds = %198, %193
  %208 = load i64, i64* %19, align 8
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %210, label %219

210:                                              ; preds = %207
  %211 = load %struct.page*, %struct.page** %14, align 8
  %212 = getelementptr inbounds %struct.page, %struct.page* %211, i32 0, i32 0
  %213 = load i64, i64* %212, align 8
  %214 = load i64, i64* %19, align 8
  %215 = icmp ne i64 %213, %214
  br i1 %215, label %216, label %219

216:                                              ; preds = %210
  %217 = load %struct.page*, %struct.page** %14, align 8
  %218 = call i32 @unlock_page(%struct.page* %217)
  br label %271

219:                                              ; preds = %210, %207
  %220 = load %struct.writeback_control*, %struct.writeback_control** %5, align 8
  %221 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %220, i32 0, i32 3
  %222 = load i64, i64* %221, align 8
  %223 = load i64, i64* @WB_SYNC_NONE, align 8
  %224 = icmp ne i64 %222, %223
  br i1 %224, label %225, label %228

225:                                              ; preds = %219
  %226 = load %struct.page*, %struct.page** %14, align 8
  %227 = call i32 @wait_on_page_writeback(%struct.page* %226)
  br label %228

228:                                              ; preds = %225, %219
  %229 = load %struct.page*, %struct.page** %14, align 8
  %230 = call i64 @PageWriteback(%struct.page* %229)
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %236, label %232

232:                                              ; preds = %228
  %233 = load %struct.page*, %struct.page** %14, align 8
  %234 = call i32 @clear_page_dirty_for_io(%struct.page* %233)
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %239, label %236

236:                                              ; preds = %232, %228
  %237 = load %struct.page*, %struct.page** %14, align 8
  %238 = call i32 @unlock_page(%struct.page* %237)
  br label %271

239:                                              ; preds = %232
  %240 = load %struct.page*, %struct.page** %14, align 8
  %241 = call i32 @set_page_writeback(%struct.page* %240)
  %242 = load %struct.page*, %struct.page** %14, align 8
  %243 = call i64 @page_offset(%struct.page* %242)
  %244 = load %struct.address_space*, %struct.address_space** %4, align 8
  %245 = getelementptr inbounds %struct.address_space, %struct.address_space* %244, i32 0, i32 1
  %246 = load %struct.TYPE_5__*, %struct.TYPE_5__** %245, align 8
  %247 = call i64 @i_size_read(%struct.TYPE_5__* %246)
  %248 = icmp sge i64 %243, %247
  br i1 %248, label %249, label %254

249:                                              ; preds = %239
  store i32 1, i32* %8, align 4
  %250 = load %struct.page*, %struct.page** %14, align 8
  %251 = call i32 @unlock_page(%struct.page* %250)
  %252 = load %struct.page*, %struct.page** %14, align 8
  %253 = call i32 @end_page_writeback(%struct.page* %252)
  br label %271

254:                                              ; preds = %239
  %255 = load %struct.page*, %struct.page** %14, align 8
  %256 = load %struct.cifs_writedata*, %struct.cifs_writedata** %13, align 8
  %257 = getelementptr inbounds %struct.cifs_writedata, %struct.cifs_writedata* %256, i32 0, i32 4
  %258 = load %struct.page**, %struct.page*** %257, align 8
  %259 = load i32, i32* %16, align 4
  %260 = zext i32 %259 to i64
  %261 = getelementptr inbounds %struct.page*, %struct.page** %258, i64 %260
  store %struct.page* %255, %struct.page** %261, align 8
  %262 = load %struct.page*, %struct.page** %14, align 8
  %263 = getelementptr inbounds %struct.page, %struct.page* %262, i32 0, i32 0
  %264 = load i64, i64* %263, align 8
  %265 = add nsw i64 %264, 1
  store i64 %265, i64* %19, align 8
  %266 = load i32, i32* %17, align 4
  %267 = add i32 %266, 1
  store i32 %267, i32* %17, align 4
  br label %268

268:                                              ; preds = %254
  %269 = load i32, i32* %16, align 4
  %270 = add i32 %269, 1
  store i32 %270, i32* %16, align 4
  br label %158

271:                                              ; preds = %249, %236, %216, %204, %190, %179, %158
  %272 = load i32, i32* %17, align 4
  %273 = icmp eq i32 %272, 0
  br i1 %273, label %274, label %283

274:                                              ; preds = %271
  %275 = load %struct.cifs_writedata*, %struct.cifs_writedata** %13, align 8
  %276 = getelementptr inbounds %struct.cifs_writedata, %struct.cifs_writedata* %275, i32 0, i32 4
  %277 = load %struct.page**, %struct.page*** %276, align 8
  %278 = getelementptr inbounds %struct.page*, %struct.page** %277, i64 0
  %279 = load %struct.page*, %struct.page** %278, align 8
  %280 = getelementptr inbounds %struct.page, %struct.page* %279, i32 0, i32 0
  %281 = load i64, i64* %280, align 8
  %282 = add nsw i64 %281, 1
  store i64 %282, i64* %12, align 8
  br label %283

283:                                              ; preds = %274, %271
  %284 = load i32, i32* %17, align 4
  store i32 %284, i32* %16, align 4
  br label %285

285:                                              ; preds = %304, %283
  %286 = load i32, i32* %16, align 4
  %287 = load i32, i32* %18, align 4
  %288 = icmp ult i32 %286, %287
  br i1 %288, label %289, label %307

289:                                              ; preds = %285
  %290 = load %struct.cifs_writedata*, %struct.cifs_writedata** %13, align 8
  %291 = getelementptr inbounds %struct.cifs_writedata, %struct.cifs_writedata* %290, i32 0, i32 4
  %292 = load %struct.page**, %struct.page*** %291, align 8
  %293 = load i32, i32* %16, align 4
  %294 = zext i32 %293 to i64
  %295 = getelementptr inbounds %struct.page*, %struct.page** %292, i64 %294
  %296 = load %struct.page*, %struct.page** %295, align 8
  %297 = call i32 @page_cache_release(%struct.page* %296)
  %298 = load %struct.cifs_writedata*, %struct.cifs_writedata** %13, align 8
  %299 = getelementptr inbounds %struct.cifs_writedata, %struct.cifs_writedata* %298, i32 0, i32 4
  %300 = load %struct.page**, %struct.page*** %299, align 8
  %301 = load i32, i32* %16, align 4
  %302 = zext i32 %301 to i64
  %303 = getelementptr inbounds %struct.page*, %struct.page** %300, i64 %302
  store %struct.page* null, %struct.page** %303, align 8
  br label %304

304:                                              ; preds = %289
  %305 = load i32, i32* %16, align 4
  %306 = add i32 %305, 1
  store i32 %306, i32* %16, align 4
  br label %285

307:                                              ; preds = %285
  %308 = load i32, i32* %17, align 4
  %309 = icmp eq i32 %308, 0
  br i1 %309, label %310, label %315

310:                                              ; preds = %307
  %311 = load %struct.cifs_writedata*, %struct.cifs_writedata** %13, align 8
  %312 = getelementptr inbounds %struct.cifs_writedata, %struct.cifs_writedata* %311, i32 0, i32 3
  %313 = load i32, i32* @cifs_writedata_release, align 4
  %314 = call i32 @kref_put(i32* %312, i32 %313)
  br label %86

315:                                              ; preds = %307
  %316 = load %struct.writeback_control*, %struct.writeback_control** %5, align 8
  %317 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %316, i32 0, i32 3
  %318 = load i64, i64* %317, align 8
  %319 = load %struct.cifs_writedata*, %struct.cifs_writedata** %13, align 8
  %320 = getelementptr inbounds %struct.cifs_writedata, %struct.cifs_writedata* %319, i32 0, i32 0
  store i64 %318, i64* %320, align 8
  %321 = load i32, i32* %17, align 4
  %322 = load %struct.cifs_writedata*, %struct.cifs_writedata** %13, align 8
  %323 = getelementptr inbounds %struct.cifs_writedata, %struct.cifs_writedata* %322, i32 0, i32 1
  store i32 %321, i32* %323, align 8
  %324 = load %struct.cifs_writedata*, %struct.cifs_writedata** %13, align 8
  %325 = getelementptr inbounds %struct.cifs_writedata, %struct.cifs_writedata* %324, i32 0, i32 4
  %326 = load %struct.page**, %struct.page*** %325, align 8
  %327 = getelementptr inbounds %struct.page*, %struct.page** %326, i64 0
  %328 = load %struct.page*, %struct.page** %327, align 8
  %329 = call i64 @page_offset(%struct.page* %328)
  %330 = load %struct.cifs_writedata*, %struct.cifs_writedata** %13, align 8
  %331 = getelementptr inbounds %struct.cifs_writedata, %struct.cifs_writedata* %330, i32 0, i32 9
  store i64 %329, i64* %331, align 8
  %332 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %333 = load %struct.cifs_writedata*, %struct.cifs_writedata** %13, align 8
  %334 = getelementptr inbounds %struct.cifs_writedata, %struct.cifs_writedata* %333, i32 0, i32 2
  store i32 %332, i32* %334, align 4
  %335 = load %struct.address_space*, %struct.address_space** %4, align 8
  %336 = getelementptr inbounds %struct.address_space, %struct.address_space* %335, i32 0, i32 1
  %337 = load %struct.TYPE_5__*, %struct.TYPE_5__** %336, align 8
  %338 = call i64 @i_size_read(%struct.TYPE_5__* %337)
  %339 = load %struct.cifs_writedata*, %struct.cifs_writedata** %13, align 8
  %340 = getelementptr inbounds %struct.cifs_writedata, %struct.cifs_writedata* %339, i32 0, i32 4
  %341 = load %struct.page**, %struct.page*** %340, align 8
  %342 = load i32, i32* %17, align 4
  %343 = sub i32 %342, 1
  %344 = zext i32 %343 to i64
  %345 = getelementptr inbounds %struct.page*, %struct.page** %341, i64 %344
  %346 = load %struct.page*, %struct.page** %345, align 8
  %347 = call i64 @page_offset(%struct.page* %346)
  %348 = sub nsw i64 %338, %347
  %349 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %350 = sext i32 %349 to i64
  %351 = call i64 @min(i64 %348, i64 %350)
  %352 = load %struct.cifs_writedata*, %struct.cifs_writedata** %13, align 8
  %353 = getelementptr inbounds %struct.cifs_writedata, %struct.cifs_writedata* %352, i32 0, i32 7
  store i64 %351, i64* %353, align 8
  %354 = load i32, i32* %17, align 4
  %355 = sub i32 %354, 1
  %356 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %357 = mul i32 %355, %356
  %358 = zext i32 %357 to i64
  %359 = load %struct.cifs_writedata*, %struct.cifs_writedata** %13, align 8
  %360 = getelementptr inbounds %struct.cifs_writedata, %struct.cifs_writedata* %359, i32 0, i32 7
  %361 = load i64, i64* %360, align 8
  %362 = add nsw i64 %358, %361
  %363 = load %struct.cifs_writedata*, %struct.cifs_writedata** %13, align 8
  %364 = getelementptr inbounds %struct.cifs_writedata, %struct.cifs_writedata* %363, i32 0, i32 8
  store i64 %362, i64* %364, align 8
  br label %365

365:                                              ; preds = %412, %315
  %366 = load %struct.cifs_writedata*, %struct.cifs_writedata** %13, align 8
  %367 = getelementptr inbounds %struct.cifs_writedata, %struct.cifs_writedata* %366, i32 0, i32 5
  %368 = load %struct.TYPE_6__*, %struct.TYPE_6__** %367, align 8
  %369 = icmp ne %struct.TYPE_6__* %368, null
  br i1 %369, label %370, label %375

370:                                              ; preds = %365
  %371 = load %struct.cifs_writedata*, %struct.cifs_writedata** %13, align 8
  %372 = getelementptr inbounds %struct.cifs_writedata, %struct.cifs_writedata* %371, i32 0, i32 5
  %373 = load %struct.TYPE_6__*, %struct.TYPE_6__** %372, align 8
  %374 = call i32 @cifsFileInfo_put(%struct.TYPE_6__* %373)
  br label %375

375:                                              ; preds = %370, %365
  %376 = load %struct.address_space*, %struct.address_space** %4, align 8
  %377 = getelementptr inbounds %struct.address_space, %struct.address_space* %376, i32 0, i32 1
  %378 = load %struct.TYPE_5__*, %struct.TYPE_5__** %377, align 8
  %379 = call i32 @CIFS_I(%struct.TYPE_5__* %378)
  %380 = call %struct.TYPE_6__* @find_writable_file(i32 %379, i32 0)
  %381 = load %struct.cifs_writedata*, %struct.cifs_writedata** %13, align 8
  %382 = getelementptr inbounds %struct.cifs_writedata, %struct.cifs_writedata* %381, i32 0, i32 5
  store %struct.TYPE_6__* %380, %struct.TYPE_6__** %382, align 8
  %383 = load %struct.cifs_writedata*, %struct.cifs_writedata** %13, align 8
  %384 = getelementptr inbounds %struct.cifs_writedata, %struct.cifs_writedata* %383, i32 0, i32 5
  %385 = load %struct.TYPE_6__*, %struct.TYPE_6__** %384, align 8
  %386 = icmp ne %struct.TYPE_6__* %385, null
  br i1 %386, label %391, label %387

387:                                              ; preds = %375
  %388 = call i32 @cERROR(i32 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %389 = load i32, i32* @EBADF, align 4
  %390 = sub nsw i32 0, %389
  store i32 %390, i32* %15, align 4
  br label %414

391:                                              ; preds = %375
  %392 = load %struct.cifs_writedata*, %struct.cifs_writedata** %13, align 8
  %393 = getelementptr inbounds %struct.cifs_writedata, %struct.cifs_writedata* %392, i32 0, i32 5
  %394 = load %struct.TYPE_6__*, %struct.TYPE_6__** %393, align 8
  %395 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %394, i32 0, i32 0
  %396 = load i32, i32* %395, align 4
  %397 = load %struct.cifs_writedata*, %struct.cifs_writedata** %13, align 8
  %398 = getelementptr inbounds %struct.cifs_writedata, %struct.cifs_writedata* %397, i32 0, i32 6
  store i32 %396, i32* %398, align 8
  %399 = load %struct.cifs_writedata*, %struct.cifs_writedata** %13, align 8
  %400 = call i32 @cifs_async_writev(%struct.cifs_writedata* %399)
  store i32 %400, i32* %15, align 4
  br label %401

401:                                              ; preds = %391
  %402 = load %struct.writeback_control*, %struct.writeback_control** %5, align 8
  %403 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %402, i32 0, i32 3
  %404 = load i64, i64* %403, align 8
  %405 = load i64, i64* @WB_SYNC_ALL, align 8
  %406 = icmp eq i64 %404, %405
  br i1 %406, label %407, label %412

407:                                              ; preds = %401
  %408 = load i32, i32* %15, align 4
  %409 = load i32, i32* @EAGAIN, align 4
  %410 = sub nsw i32 0, %409
  %411 = icmp eq i32 %408, %410
  br label %412

412:                                              ; preds = %407, %401
  %413 = phi i1 [ false, %401 ], [ %411, %407 ]
  br i1 %413, label %365, label %414

414:                                              ; preds = %412, %387
  store i32 0, i32* %16, align 4
  br label %415

415:                                              ; preds = %428, %414
  %416 = load i32, i32* %16, align 4
  %417 = load i32, i32* %17, align 4
  %418 = icmp ult i32 %416, %417
  br i1 %418, label %419, label %431

419:                                              ; preds = %415
  %420 = load %struct.cifs_writedata*, %struct.cifs_writedata** %13, align 8
  %421 = getelementptr inbounds %struct.cifs_writedata, %struct.cifs_writedata* %420, i32 0, i32 4
  %422 = load %struct.page**, %struct.page*** %421, align 8
  %423 = load i32, i32* %16, align 4
  %424 = zext i32 %423 to i64
  %425 = getelementptr inbounds %struct.page*, %struct.page** %422, i64 %424
  %426 = load %struct.page*, %struct.page** %425, align 8
  %427 = call i32 @unlock_page(%struct.page* %426)
  br label %428

428:                                              ; preds = %419
  %429 = load i32, i32* %16, align 4
  %430 = add i32 %429, 1
  store i32 %430, i32* %16, align 4
  br label %415

431:                                              ; preds = %415
  %432 = load i32, i32* %15, align 4
  %433 = icmp ne i32 %432, 0
  br i1 %433, label %434, label %493

434:                                              ; preds = %431
  store i32 0, i32* %16, align 4
  br label %435

435:                                              ; preds = %480, %434
  %436 = load i32, i32* %16, align 4
  %437 = load i32, i32* %17, align 4
  %438 = icmp ult i32 %436, %437
  br i1 %438, label %439, label %483

439:                                              ; preds = %435
  %440 = load i32, i32* %15, align 4
  %441 = load i32, i32* @EAGAIN, align 4
  %442 = sub nsw i32 0, %441
  %443 = icmp eq i32 %440, %442
  br i1 %443, label %444, label %454

444:                                              ; preds = %439
  %445 = load %struct.writeback_control*, %struct.writeback_control** %5, align 8
  %446 = load %struct.cifs_writedata*, %struct.cifs_writedata** %13, align 8
  %447 = getelementptr inbounds %struct.cifs_writedata, %struct.cifs_writedata* %446, i32 0, i32 4
  %448 = load %struct.page**, %struct.page*** %447, align 8
  %449 = load i32, i32* %16, align 4
  %450 = zext i32 %449 to i64
  %451 = getelementptr inbounds %struct.page*, %struct.page** %448, i64 %450
  %452 = load %struct.page*, %struct.page** %451, align 8
  %453 = call i32 @redirty_page_for_writepage(%struct.writeback_control* %445, %struct.page* %452)
  br label %463

454:                                              ; preds = %439
  %455 = load %struct.cifs_writedata*, %struct.cifs_writedata** %13, align 8
  %456 = getelementptr inbounds %struct.cifs_writedata, %struct.cifs_writedata* %455, i32 0, i32 4
  %457 = load %struct.page**, %struct.page*** %456, align 8
  %458 = load i32, i32* %16, align 4
  %459 = zext i32 %458 to i64
  %460 = getelementptr inbounds %struct.page*, %struct.page** %457, i64 %459
  %461 = load %struct.page*, %struct.page** %460, align 8
  %462 = call i32 @SetPageError(%struct.page* %461)
  br label %463

463:                                              ; preds = %454, %444
  %464 = load %struct.cifs_writedata*, %struct.cifs_writedata** %13, align 8
  %465 = getelementptr inbounds %struct.cifs_writedata, %struct.cifs_writedata* %464, i32 0, i32 4
  %466 = load %struct.page**, %struct.page*** %465, align 8
  %467 = load i32, i32* %16, align 4
  %468 = zext i32 %467 to i64
  %469 = getelementptr inbounds %struct.page*, %struct.page** %466, i64 %468
  %470 = load %struct.page*, %struct.page** %469, align 8
  %471 = call i32 @end_page_writeback(%struct.page* %470)
  %472 = load %struct.cifs_writedata*, %struct.cifs_writedata** %13, align 8
  %473 = getelementptr inbounds %struct.cifs_writedata, %struct.cifs_writedata* %472, i32 0, i32 4
  %474 = load %struct.page**, %struct.page*** %473, align 8
  %475 = load i32, i32* %16, align 4
  %476 = zext i32 %475 to i64
  %477 = getelementptr inbounds %struct.page*, %struct.page** %474, i64 %476
  %478 = load %struct.page*, %struct.page** %477, align 8
  %479 = call i32 @page_cache_release(%struct.page* %478)
  br label %480

480:                                              ; preds = %463
  %481 = load i32, i32* %16, align 4
  %482 = add i32 %481, 1
  store i32 %482, i32* %16, align 4
  br label %435

483:                                              ; preds = %435
  %484 = load i32, i32* %15, align 4
  %485 = load i32, i32* @EAGAIN, align 4
  %486 = sub nsw i32 0, %485
  %487 = icmp ne i32 %484, %486
  br i1 %487, label %488, label %492

488:                                              ; preds = %483
  %489 = load %struct.address_space*, %struct.address_space** %4, align 8
  %490 = load i32, i32* %15, align 4
  %491 = call i32 @mapping_set_error(%struct.address_space* %489, i32 %490)
  br label %492

492:                                              ; preds = %488, %483
  br label %493

493:                                              ; preds = %492, %431
  %494 = load %struct.cifs_writedata*, %struct.cifs_writedata** %13, align 8
  %495 = getelementptr inbounds %struct.cifs_writedata, %struct.cifs_writedata* %494, i32 0, i32 3
  %496 = load i32, i32* @cifs_writedata_release, align 4
  %497 = call i32 @kref_put(i32* %495, i32 %496)
  %498 = load i32, i32* %17, align 4
  %499 = zext i32 %498 to i64
  %500 = load %struct.writeback_control*, %struct.writeback_control** %5, align 8
  %501 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %500, i32 0, i32 4
  %502 = load i64, i64* %501, align 8
  %503 = sub nsw i64 %502, %499
  store i64 %503, i64* %501, align 8
  %504 = load %struct.writeback_control*, %struct.writeback_control** %5, align 8
  %505 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %504, i32 0, i32 4
  %506 = load i64, i64* %505, align 8
  %507 = icmp sle i64 %506, 0
  br i1 %507, label %508, label %509

508:                                              ; preds = %493
  store i32 1, i32* %8, align 4
  br label %509

509:                                              ; preds = %508, %493
  %510 = load i64, i64* %19, align 8
  store i64 %510, i64* %12, align 8
  br label %86

511:                                              ; preds = %152, %113, %93
  %512 = load i32, i32* %9, align 4
  %513 = icmp ne i32 %512, 0
  br i1 %513, label %518, label %514

514:                                              ; preds = %511
  %515 = load i32, i32* %8, align 4
  %516 = icmp ne i32 %515, 0
  br i1 %516, label %518, label %517

517:                                              ; preds = %514
  store i32 1, i32* %9, align 4
  store i64 0, i64* %12, align 8
  br label %85

518:                                              ; preds = %514, %511
  %519 = load %struct.writeback_control*, %struct.writeback_control** %5, align 8
  %520 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %519, i32 0, i32 5
  %521 = load i64, i64* %520, align 8
  %522 = icmp ne i64 %521, 0
  br i1 %522, label %531, label %523

523:                                              ; preds = %518
  %524 = load i32, i32* %10, align 4
  %525 = icmp ne i32 %524, 0
  br i1 %525, label %526, label %535

526:                                              ; preds = %523
  %527 = load %struct.writeback_control*, %struct.writeback_control** %5, align 8
  %528 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %527, i32 0, i32 4
  %529 = load i64, i64* %528, align 8
  %530 = icmp sgt i64 %529, 0
  br i1 %530, label %531, label %535

531:                                              ; preds = %526, %518
  %532 = load i64, i64* %12, align 8
  %533 = load %struct.address_space*, %struct.address_space** %4, align 8
  %534 = getelementptr inbounds %struct.address_space, %struct.address_space* %533, i32 0, i32 0
  store i64 %532, i64* %534, align 8
  br label %535

535:                                              ; preds = %531, %526, %523
  %536 = load i32, i32* %15, align 4
  store i32 %536, i32* %3, align 4
  br label %537

537:                                              ; preds = %535, %48, %39
  %538 = load i32, i32* %3, align 4
  ret i32 %538
}

declare dso_local %struct.cifs_sb_info* @CIFS_SB(i32) #1

declare dso_local i64 @bdi_write_congested(%struct.backing_dev_info*) #1

declare dso_local i32 @generic_writepages(%struct.address_space*, %struct.writeback_control*) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local %struct.cifs_writedata* @cifs_writedata_alloc(i32, i32*) #1

declare dso_local i32 @find_get_pages_tag(%struct.address_space*, i64*, i32, i64, %struct.page**) #1

declare dso_local i32 @kref_put(i32*, i32) #1

declare dso_local i32 @lock_page(%struct.page*) #1

declare dso_local i32 @trylock_page(%struct.page*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @wait_on_page_writeback(%struct.page*) #1

declare dso_local i64 @PageWriteback(%struct.page*) #1

declare dso_local i32 @clear_page_dirty_for_io(%struct.page*) #1

declare dso_local i32 @set_page_writeback(%struct.page*) #1

declare dso_local i64 @page_offset(%struct.page*) #1

declare dso_local i64 @i_size_read(%struct.TYPE_5__*) #1

declare dso_local i32 @end_page_writeback(%struct.page*) #1

declare dso_local i32 @page_cache_release(%struct.page*) #1

declare dso_local i32 @cifsFileInfo_put(%struct.TYPE_6__*) #1

declare dso_local %struct.TYPE_6__* @find_writable_file(i32, i32) #1

declare dso_local i32 @CIFS_I(%struct.TYPE_5__*) #1

declare dso_local i32 @cERROR(i32, i8*) #1

declare dso_local i32 @cifs_async_writev(%struct.cifs_writedata*) #1

declare dso_local i32 @redirty_page_for_writepage(%struct.writeback_control*, %struct.page*) #1

declare dso_local i32 @SetPageError(%struct.page*) #1

declare dso_local i32 @mapping_set_error(%struct.address_space*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
