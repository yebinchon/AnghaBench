; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_quota.c_gfs2_adjust_quota.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_quota.c_gfs2_adjust_quota.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_inode = type { i32, %struct.inode }
%struct.inode = type { i32, i32, i32, %struct.TYPE_4__*, %struct.address_space* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.address_space = type { i32 }
%struct.gfs2_quota_data = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i8*, i8* }
%struct.fs_disk_quota = type { i32, i32, i32, i32 }
%struct.gfs2_sbd = type { i32 }
%struct.buffer_head = type { i32, %struct.buffer_head* }
%struct.page = type { i32 }
%struct.gfs2_quota = type { i32, i8*, i8* }

@PAGE_CACHE_SHIFT = common dso_local global i32 0, align 4
@PAGE_CACHE_SIZE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@FS_DQ_BSOFT = common dso_local global i32 0, align 4
@FS_DQ_BHARD = common dso_local global i32 0, align 4
@FS_DQ_BCOUNT = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@READ_META = common dso_local global i32 0, align 4
@KM_USER0 = common dso_local global i32 0, align 4
@CURRENT_TIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gfs2_inode*, i32, i64, %struct.gfs2_quota_data*, %struct.fs_disk_quota*)* @gfs2_adjust_quota to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfs2_adjust_quota(%struct.gfs2_inode* %0, i32 %1, i64 %2, %struct.gfs2_quota_data* %3, %struct.fs_disk_quota* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.gfs2_inode*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.gfs2_quota_data*, align 8
  %11 = alloca %struct.fs_disk_quota*, align 8
  %12 = alloca %struct.inode*, align 8
  %13 = alloca %struct.gfs2_sbd*, align 8
  %14 = alloca %struct.address_space*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.buffer_head*, align 8
  %21 = alloca %struct.page*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca %struct.gfs2_quota, align 8
  %25 = alloca %struct.gfs2_quota*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  store %struct.gfs2_inode* %0, %struct.gfs2_inode** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store %struct.gfs2_quota_data* %3, %struct.gfs2_quota_data** %10, align 8
  store %struct.fs_disk_quota* %4, %struct.fs_disk_quota** %11, align 8
  %29 = load %struct.gfs2_inode*, %struct.gfs2_inode** %7, align 8
  %30 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %29, i32 0, i32 1
  store %struct.inode* %30, %struct.inode** %12, align 8
  %31 = load %struct.inode*, %struct.inode** %12, align 8
  %32 = call %struct.gfs2_sbd* @GFS2_SB(%struct.inode* %31)
  store %struct.gfs2_sbd* %32, %struct.gfs2_sbd** %13, align 8
  %33 = load %struct.inode*, %struct.inode** %12, align 8
  %34 = getelementptr inbounds %struct.inode, %struct.inode* %33, i32 0, i32 4
  %35 = load %struct.address_space*, %struct.address_space** %34, align 8
  store %struct.address_space* %35, %struct.address_space** %14, align 8
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* @PAGE_CACHE_SHIFT, align 4
  %38 = ashr i32 %36, %37
  %39 = sext i32 %38 to i64
  store i64 %39, i64* %15, align 8
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %42 = sub nsw i32 %41, 1
  %43 = and i32 %40, %42
  store i32 %43, i32* %16, align 4
  %44 = load %struct.gfs2_inode*, %struct.gfs2_inode** %7, align 8
  %45 = call i64 @gfs2_is_stuffed(%struct.gfs2_inode* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %55

47:                                               ; preds = %5
  %48 = load %struct.gfs2_inode*, %struct.gfs2_inode** %7, align 8
  %49 = call i32 @gfs2_unstuff_dinode(%struct.gfs2_inode* %48, i32* null)
  store i32 %49, i32* %26, align 4
  %50 = load i32, i32* %26, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %47
  %53 = load i32, i32* %26, align 4
  store i32 %53, i32* %6, align 4
  br label %352

54:                                               ; preds = %47
  br label %55

55:                                               ; preds = %54, %5
  %56 = call i32 @memset(%struct.gfs2_quota* %24, i32 0, i32 24)
  %57 = load %struct.gfs2_inode*, %struct.gfs2_inode** %7, align 8
  %58 = bitcast %struct.gfs2_quota* %24 to i8*
  %59 = call i32 @gfs2_internal_read(%struct.gfs2_inode* %57, i32* null, i8* %58, i32* %8, i32 24)
  store i32 %59, i32* %26, align 4
  %60 = load i32, i32* %26, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %55
  %63 = load i32, i32* %26, align 4
  store i32 %63, i32* %6, align 4
  br label %352

64:                                               ; preds = %55
  %65 = load i32, i32* @EIO, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %26, align 4
  store %struct.gfs2_quota* %24, %struct.gfs2_quota** %25, align 8
  %67 = load %struct.gfs2_quota*, %struct.gfs2_quota** %25, align 8
  %68 = getelementptr inbounds %struct.gfs2_quota, %struct.gfs2_quota* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @be64_to_cpu(i32 %69)
  %71 = load %struct.gfs2_quota*, %struct.gfs2_quota** %25, align 8
  %72 = getelementptr inbounds %struct.gfs2_quota, %struct.gfs2_quota* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 8
  %73 = load i64, i64* %9, align 8
  %74 = load %struct.gfs2_quota*, %struct.gfs2_quota** %25, align 8
  %75 = getelementptr inbounds %struct.gfs2_quota, %struct.gfs2_quota* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = sext i32 %76 to i64
  %78 = add nsw i64 %77, %73
  %79 = trunc i64 %78 to i32
  store i32 %79, i32* %75, align 8
  %80 = load %struct.gfs2_quota*, %struct.gfs2_quota** %25, align 8
  %81 = getelementptr inbounds %struct.gfs2_quota, %struct.gfs2_quota* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call i8* @cpu_to_be64(i32 %82)
  %84 = ptrtoint i8* %83 to i32
  %85 = load %struct.gfs2_quota*, %struct.gfs2_quota** %25, align 8
  %86 = getelementptr inbounds %struct.gfs2_quota, %struct.gfs2_quota* %85, i32 0, i32 0
  store i32 %84, i32* %86, align 8
  %87 = load %struct.gfs2_quota*, %struct.gfs2_quota** %25, align 8
  %88 = getelementptr inbounds %struct.gfs2_quota, %struct.gfs2_quota* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %10, align 8
  %91 = getelementptr inbounds %struct.gfs2_quota_data, %struct.gfs2_quota_data* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 0
  store i32 %89, i32* %92, align 8
  %93 = load %struct.fs_disk_quota*, %struct.fs_disk_quota** %11, align 8
  %94 = icmp ne %struct.fs_disk_quota* %93, null
  br i1 %94, label %95, label %169

95:                                               ; preds = %64
  %96 = load %struct.fs_disk_quota*, %struct.fs_disk_quota** %11, align 8
  %97 = getelementptr inbounds %struct.fs_disk_quota, %struct.fs_disk_quota* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @FS_DQ_BSOFT, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %119

102:                                              ; preds = %95
  %103 = load %struct.fs_disk_quota*, %struct.fs_disk_quota** %11, align 8
  %104 = getelementptr inbounds %struct.fs_disk_quota, %struct.fs_disk_quota* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %13, align 8
  %107 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = ashr i32 %105, %108
  %110 = call i8* @cpu_to_be64(i32 %109)
  %111 = load %struct.gfs2_quota*, %struct.gfs2_quota** %25, align 8
  %112 = getelementptr inbounds %struct.gfs2_quota, %struct.gfs2_quota* %111, i32 0, i32 2
  store i8* %110, i8** %112, align 8
  %113 = load %struct.gfs2_quota*, %struct.gfs2_quota** %25, align 8
  %114 = getelementptr inbounds %struct.gfs2_quota, %struct.gfs2_quota* %113, i32 0, i32 2
  %115 = load i8*, i8** %114, align 8
  %116 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %10, align 8
  %117 = getelementptr inbounds %struct.gfs2_quota_data, %struct.gfs2_quota_data* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i32 0, i32 2
  store i8* %115, i8** %118, align 8
  br label %119

119:                                              ; preds = %102, %95
  %120 = load %struct.fs_disk_quota*, %struct.fs_disk_quota** %11, align 8
  %121 = getelementptr inbounds %struct.fs_disk_quota, %struct.fs_disk_quota* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @FS_DQ_BHARD, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %143

126:                                              ; preds = %119
  %127 = load %struct.fs_disk_quota*, %struct.fs_disk_quota** %11, align 8
  %128 = getelementptr inbounds %struct.fs_disk_quota, %struct.fs_disk_quota* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %13, align 8
  %131 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = ashr i32 %129, %132
  %134 = call i8* @cpu_to_be64(i32 %133)
  %135 = load %struct.gfs2_quota*, %struct.gfs2_quota** %25, align 8
  %136 = getelementptr inbounds %struct.gfs2_quota, %struct.gfs2_quota* %135, i32 0, i32 1
  store i8* %134, i8** %136, align 8
  %137 = load %struct.gfs2_quota*, %struct.gfs2_quota** %25, align 8
  %138 = getelementptr inbounds %struct.gfs2_quota, %struct.gfs2_quota* %137, i32 0, i32 1
  %139 = load i8*, i8** %138, align 8
  %140 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %10, align 8
  %141 = getelementptr inbounds %struct.gfs2_quota_data, %struct.gfs2_quota_data* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %141, i32 0, i32 1
  store i8* %139, i8** %142, align 8
  br label %143

143:                                              ; preds = %126, %119
  %144 = load %struct.fs_disk_quota*, %struct.fs_disk_quota** %11, align 8
  %145 = getelementptr inbounds %struct.fs_disk_quota, %struct.fs_disk_quota* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* @FS_DQ_BCOUNT, align 4
  %148 = and i32 %146, %147
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %168

150:                                              ; preds = %143
  %151 = load %struct.fs_disk_quota*, %struct.fs_disk_quota** %11, align 8
  %152 = getelementptr inbounds %struct.fs_disk_quota, %struct.fs_disk_quota* %151, i32 0, i32 3
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %13, align 8
  %155 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = ashr i32 %153, %156
  %158 = call i8* @cpu_to_be64(i32 %157)
  %159 = ptrtoint i8* %158 to i32
  %160 = load %struct.gfs2_quota*, %struct.gfs2_quota** %25, align 8
  %161 = getelementptr inbounds %struct.gfs2_quota, %struct.gfs2_quota* %160, i32 0, i32 0
  store i32 %159, i32* %161, align 8
  %162 = load %struct.gfs2_quota*, %struct.gfs2_quota** %25, align 8
  %163 = getelementptr inbounds %struct.gfs2_quota, %struct.gfs2_quota* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %10, align 8
  %166 = getelementptr inbounds %struct.gfs2_quota_data, %struct.gfs2_quota_data* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %166, i32 0, i32 0
  store i32 %164, i32* %167, align 8
  br label %168

168:                                              ; preds = %150, %143
  br label %169

169:                                              ; preds = %168, %64
  %170 = load %struct.gfs2_quota*, %struct.gfs2_quota** %25, align 8
  %171 = bitcast %struct.gfs2_quota* %170 to i8*
  store i8* %171, i8** %23, align 8
  store i32 24, i32* %27, align 4
  br label %172

172:                                              ; preds = %313, %169
  %173 = load %struct.address_space*, %struct.address_space** %14, align 8
  %174 = load i64, i64* %15, align 8
  %175 = load i32, i32* @GFP_NOFS, align 4
  %176 = call %struct.page* @find_or_create_page(%struct.address_space* %173, i64 %174, i32 %175)
  store %struct.page* %176, %struct.page** %21, align 8
  %177 = load %struct.page*, %struct.page** %21, align 8
  %178 = icmp ne %struct.page* %177, null
  br i1 %178, label %182, label %179

179:                                              ; preds = %172
  %180 = load i32, i32* @ENOMEM, align 4
  %181 = sub nsw i32 0, %180
  store i32 %181, i32* %6, align 4
  br label %352

182:                                              ; preds = %172
  %183 = load %struct.inode*, %struct.inode** %12, align 8
  %184 = getelementptr inbounds %struct.inode, %struct.inode* %183, i32 0, i32 3
  %185 = load %struct.TYPE_4__*, %struct.TYPE_4__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  store i32 %187, i32* %17, align 4
  %188 = load i64, i64* %15, align 8
  %189 = load i32, i32* @PAGE_CACHE_SHIFT, align 4
  %190 = load %struct.inode*, %struct.inode** %12, align 8
  %191 = getelementptr inbounds %struct.inode, %struct.inode* %190, i32 0, i32 3
  %192 = load %struct.TYPE_4__*, %struct.TYPE_4__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 4
  %195 = sub nsw i32 %189, %194
  %196 = zext i32 %195 to i64
  %197 = shl i64 %188, %196
  %198 = trunc i64 %197 to i32
  store i32 %198, i32* %18, align 4
  %199 = load %struct.page*, %struct.page** %21, align 8
  %200 = call i32 @page_has_buffers(%struct.page* %199)
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %206, label %202

202:                                              ; preds = %182
  %203 = load %struct.page*, %struct.page** %21, align 8
  %204 = load i32, i32* %17, align 4
  %205 = call i32 @create_empty_buffers(%struct.page* %203, i32 %204, i32 0)
  br label %206

206:                                              ; preds = %202, %182
  %207 = load %struct.page*, %struct.page** %21, align 8
  %208 = call %struct.buffer_head* @page_buffers(%struct.page* %207)
  store %struct.buffer_head* %208, %struct.buffer_head** %20, align 8
  %209 = load i32, i32* %17, align 4
  store i32 %209, i32* %19, align 4
  br label %210

210:                                              ; preds = %214, %206
  %211 = load i32, i32* %16, align 4
  %212 = load i32, i32* %19, align 4
  %213 = icmp uge i32 %211, %212
  br i1 %213, label %214, label %223

214:                                              ; preds = %210
  %215 = load %struct.buffer_head*, %struct.buffer_head** %20, align 8
  %216 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %215, i32 0, i32 1
  %217 = load %struct.buffer_head*, %struct.buffer_head** %216, align 8
  store %struct.buffer_head* %217, %struct.buffer_head** %20, align 8
  %218 = load i32, i32* %18, align 4
  %219 = add i32 %218, 1
  store i32 %219, i32* %18, align 4
  %220 = load i32, i32* %17, align 4
  %221 = load i32, i32* %19, align 4
  %222 = add i32 %221, %220
  store i32 %222, i32* %19, align 4
  br label %210

223:                                              ; preds = %210
  %224 = load %struct.buffer_head*, %struct.buffer_head** %20, align 8
  %225 = call i32 @buffer_mapped(%struct.buffer_head* %224)
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %250, label %227

227:                                              ; preds = %223
  %228 = load %struct.inode*, %struct.inode** %12, align 8
  %229 = load i32, i32* %18, align 4
  %230 = load %struct.buffer_head*, %struct.buffer_head** %20, align 8
  %231 = call i32 @gfs2_block_map(%struct.inode* %228, i32 %229, %struct.buffer_head* %230, i32 1)
  %232 = load %struct.buffer_head*, %struct.buffer_head** %20, align 8
  %233 = call i32 @buffer_mapped(%struct.buffer_head* %232)
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %236, label %235

235:                                              ; preds = %227
  br label %346

236:                                              ; preds = %227
  %237 = load %struct.buffer_head*, %struct.buffer_head** %20, align 8
  %238 = call i64 @buffer_new(%struct.buffer_head* %237)
  %239 = icmp ne i64 %238, 0
  br i1 %239, label %240, label %249

240:                                              ; preds = %236
  %241 = load %struct.page*, %struct.page** %21, align 8
  %242 = load i32, i32* %19, align 4
  %243 = load i32, i32* %17, align 4
  %244 = sub i32 %242, %243
  %245 = load %struct.buffer_head*, %struct.buffer_head** %20, align 8
  %246 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 8
  %248 = call i32 @zero_user(%struct.page* %241, i32 %244, i32 %247)
  br label %249

249:                                              ; preds = %240, %236
  br label %250

250:                                              ; preds = %249, %223
  %251 = load %struct.page*, %struct.page** %21, align 8
  %252 = call i64 @PageUptodate(%struct.page* %251)
  %253 = icmp ne i64 %252, 0
  br i1 %253, label %254, label %257

254:                                              ; preds = %250
  %255 = load %struct.buffer_head*, %struct.buffer_head** %20, align 8
  %256 = call i32 @set_buffer_uptodate(%struct.buffer_head* %255)
  br label %257

257:                                              ; preds = %254, %250
  %258 = load %struct.buffer_head*, %struct.buffer_head** %20, align 8
  %259 = call i32 @buffer_uptodate(%struct.buffer_head* %258)
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %271, label %261

261:                                              ; preds = %257
  %262 = load i32, i32* @READ_META, align 4
  %263 = call i32 @ll_rw_block(i32 %262, i32 1, %struct.buffer_head** %20)
  %264 = load %struct.buffer_head*, %struct.buffer_head** %20, align 8
  %265 = call i32 @wait_on_buffer(%struct.buffer_head* %264)
  %266 = load %struct.buffer_head*, %struct.buffer_head** %20, align 8
  %267 = call i32 @buffer_uptodate(%struct.buffer_head* %266)
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %270, label %269

269:                                              ; preds = %261
  br label %346

270:                                              ; preds = %261
  br label %271

271:                                              ; preds = %270, %257
  %272 = load %struct.gfs2_inode*, %struct.gfs2_inode** %7, align 8
  %273 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %272, i32 0, i32 0
  %274 = load i32, i32* %273, align 8
  %275 = load %struct.buffer_head*, %struct.buffer_head** %20, align 8
  %276 = call i32 @gfs2_trans_add_data(i32 %274, %struct.buffer_head* %275)
  %277 = load %struct.page*, %struct.page** %21, align 8
  %278 = load i32, i32* @KM_USER0, align 4
  %279 = call i8* @kmap_atomic(%struct.page* %277, i32 %278)
  store i8* %279, i8** %22, align 8
  %280 = load i32, i32* %16, align 4
  %281 = zext i32 %280 to i64
  %282 = add i64 %281, 24
  %283 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %284 = sext i32 %283 to i64
  %285 = icmp ugt i64 %282, %284
  br i1 %285, label %286, label %290

286:                                              ; preds = %271
  %287 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %288 = load i32, i32* %16, align 4
  %289 = sub i32 %287, %288
  store i32 %289, i32* %27, align 4
  br label %290

290:                                              ; preds = %286, %271
  %291 = load i8*, i8** %22, align 8
  %292 = load i32, i32* %16, align 4
  %293 = zext i32 %292 to i64
  %294 = getelementptr i8, i8* %291, i64 %293
  %295 = load i8*, i8** %23, align 8
  %296 = load i32, i32* %27, align 4
  %297 = call i32 @memcpy(i8* %294, i8* %295, i32 %296)
  %298 = load %struct.page*, %struct.page** %21, align 8
  %299 = call i32 @flush_dcache_page(%struct.page* %298)
  %300 = load i8*, i8** %22, align 8
  %301 = load i32, i32* @KM_USER0, align 4
  %302 = call i32 @kunmap_atomic(i8* %300, i32 %301)
  %303 = load %struct.page*, %struct.page** %21, align 8
  %304 = call i32 @unlock_page(%struct.page* %303)
  %305 = load %struct.page*, %struct.page** %21, align 8
  %306 = call i32 @page_cache_release(%struct.page* %305)
  %307 = load i32, i32* %16, align 4
  %308 = zext i32 %307 to i64
  %309 = add i64 %308, 24
  %310 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %311 = sext i32 %310 to i64
  %312 = icmp ugt i64 %309, %311
  br i1 %312, label %313, label %324

313:                                              ; preds = %290
  %314 = load i8*, i8** %23, align 8
  %315 = load i32, i32* %27, align 4
  %316 = sext i32 %315 to i64
  %317 = getelementptr i8, i8* %314, i64 %316
  store i8* %317, i8** %23, align 8
  %318 = load i32, i32* %27, align 4
  %319 = sext i32 %318 to i64
  %320 = sub i64 24, %319
  %321 = trunc i64 %320 to i32
  store i32 %321, i32* %27, align 4
  store i32 0, i32* %16, align 4
  %322 = load i64, i64* %15, align 8
  %323 = add i64 %322, 1
  store i64 %323, i64* %15, align 8
  br label %172

324:                                              ; preds = %290
  %325 = load i32, i32* %8, align 4
  %326 = sext i32 %325 to i64
  %327 = add i64 %326, 24
  %328 = trunc i64 %327 to i32
  store i32 %328, i32* %28, align 4
  %329 = load i32, i32* %28, align 4
  %330 = load %struct.inode*, %struct.inode** %12, align 8
  %331 = getelementptr inbounds %struct.inode, %struct.inode* %330, i32 0, i32 2
  %332 = load i32, i32* %331, align 8
  %333 = icmp sgt i32 %329, %332
  br i1 %333, label %334, label %338

334:                                              ; preds = %324
  %335 = load %struct.inode*, %struct.inode** %12, align 8
  %336 = load i32, i32* %28, align 4
  %337 = call i32 @i_size_write(%struct.inode* %335, i32 %336)
  br label %338

338:                                              ; preds = %334, %324
  %339 = load i32, i32* @CURRENT_TIME, align 4
  %340 = load %struct.inode*, %struct.inode** %12, align 8
  %341 = getelementptr inbounds %struct.inode, %struct.inode* %340, i32 0, i32 0
  store i32 %339, i32* %341, align 8
  %342 = load %struct.inode*, %struct.inode** %12, align 8
  %343 = getelementptr inbounds %struct.inode, %struct.inode* %342, i32 0, i32 1
  store i32 %339, i32* %343, align 4
  %344 = load %struct.inode*, %struct.inode** %12, align 8
  %345 = call i32 @mark_inode_dirty(%struct.inode* %344)
  store i32 0, i32* %6, align 4
  br label %352

346:                                              ; preds = %269, %235
  %347 = load %struct.page*, %struct.page** %21, align 8
  %348 = call i32 @unlock_page(%struct.page* %347)
  %349 = load %struct.page*, %struct.page** %21, align 8
  %350 = call i32 @page_cache_release(%struct.page* %349)
  %351 = load i32, i32* %26, align 4
  store i32 %351, i32* %6, align 4
  br label %352

352:                                              ; preds = %346, %338, %179, %62, %52
  %353 = load i32, i32* %6, align 4
  ret i32 %353
}

declare dso_local %struct.gfs2_sbd* @GFS2_SB(%struct.inode*) #1

declare dso_local i64 @gfs2_is_stuffed(%struct.gfs2_inode*) #1

declare dso_local i32 @gfs2_unstuff_dinode(%struct.gfs2_inode*, i32*) #1

declare dso_local i32 @memset(%struct.gfs2_quota*, i32, i32) #1

declare dso_local i32 @gfs2_internal_read(%struct.gfs2_inode*, i32*, i8*, i32*, i32) #1

declare dso_local i32 @be64_to_cpu(i32) #1

declare dso_local i8* @cpu_to_be64(i32) #1

declare dso_local %struct.page* @find_or_create_page(%struct.address_space*, i64, i32) #1

declare dso_local i32 @page_has_buffers(%struct.page*) #1

declare dso_local i32 @create_empty_buffers(%struct.page*, i32, i32) #1

declare dso_local %struct.buffer_head* @page_buffers(%struct.page*) #1

declare dso_local i32 @buffer_mapped(%struct.buffer_head*) #1

declare dso_local i32 @gfs2_block_map(%struct.inode*, i32, %struct.buffer_head*, i32) #1

declare dso_local i64 @buffer_new(%struct.buffer_head*) #1

declare dso_local i32 @zero_user(%struct.page*, i32, i32) #1

declare dso_local i64 @PageUptodate(%struct.page*) #1

declare dso_local i32 @set_buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i32 @buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i32 @ll_rw_block(i32, i32, %struct.buffer_head**) #1

declare dso_local i32 @wait_on_buffer(%struct.buffer_head*) #1

declare dso_local i32 @gfs2_trans_add_data(i32, %struct.buffer_head*) #1

declare dso_local i8* @kmap_atomic(%struct.page*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @flush_dcache_page(%struct.page*) #1

declare dso_local i32 @kunmap_atomic(i8*, i32) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @page_cache_release(%struct.page*) #1

declare dso_local i32 @i_size_write(%struct.inode*, i32) #1

declare dso_local i32 @mark_inode_dirty(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
