; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/affs/extr_file.c_affs_write_end_ofs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/affs/extr_file.c_affs_write_end_ofs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.address_space = type { %struct.inode* }
%struct.inode = type { i32, i32, %struct.super_block* }
%struct.super_block = type { i32 }
%struct.page = type { i32 }
%struct.buffer_head = type { i64, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_5__ = type { i32 }

@PAGE_CACHE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"AFFS: write_begin(%u, %llu, %llu)\0A\00", align 1
@PAGE_CACHE_SHIFT = common dso_local global i32 0, align 4
@T_DATA = common dso_local global i32 0, align 4
@BH_New = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"commit_write_ofs\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"next block already set for %d (%d)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.address_space*, i32, i32, i32, %struct.page*, i8*)* @affs_write_end_ofs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @affs_write_end_ofs(%struct.file* %0, %struct.address_space* %1, i32 %2, i32 %3, i32 %4, %struct.page* %5, i8* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.file*, align 8
  %10 = alloca %struct.address_space*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.page*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct.inode*, align 8
  %17 = alloca %struct.super_block*, align 8
  %18 = alloca %struct.buffer_head*, align 8
  %19 = alloca %struct.buffer_head*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %9, align 8
  store %struct.address_space* %1, %struct.address_space** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store %struct.page* %5, %struct.page** %14, align 8
  store i8* %6, i8** %15, align 8
  %30 = load %struct.address_space*, %struct.address_space** %10, align 8
  %31 = getelementptr inbounds %struct.address_space, %struct.address_space* %30, i32 0, i32 0
  %32 = load %struct.inode*, %struct.inode** %31, align 8
  store %struct.inode* %32, %struct.inode** %16, align 8
  %33 = load %struct.inode*, %struct.inode** %16, align 8
  %34 = getelementptr inbounds %struct.inode, %struct.inode* %33, i32 0, i32 2
  %35 = load %struct.super_block*, %struct.super_block** %34, align 8
  store %struct.super_block* %35, %struct.super_block** %17, align 8
  %36 = load i32, i32* %11, align 4
  %37 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %38 = sub nsw i32 %37, 1
  %39 = and i32 %36, %38
  store i32 %39, i32* %24, align 4
  %40 = load i32, i32* %11, align 4
  %41 = load i32, i32* %12, align 4
  %42 = add i32 %40, %41
  store i32 %42, i32* %25, align 4
  %43 = load %struct.inode*, %struct.inode** %16, align 8
  %44 = getelementptr inbounds %struct.inode, %struct.inode* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* %11, align 4
  %47 = sext i32 %46 to i64
  %48 = load i32, i32* %11, align 4
  %49 = sext i32 %48 to i64
  %50 = load i32, i32* %12, align 4
  %51 = zext i32 %50 to i64
  %52 = add i64 %49, %51
  %53 = call i32 @pr_debug(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %45, i64 %47, i64 %52)
  %54 = load %struct.super_block*, %struct.super_block** %17, align 8
  %55 = call %struct.TYPE_4__* @AFFS_SB(%struct.super_block* %54)
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %23, align 4
  %58 = load %struct.page*, %struct.page** %14, align 8
  %59 = call i8* @page_address(%struct.page* %58)
  store i8* %59, i8** %20, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %18, align 8
  store i32 0, i32* %27, align 4
  %60 = load %struct.page*, %struct.page** %14, align 8
  %61 = getelementptr inbounds %struct.page, %struct.page* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @PAGE_CACHE_SHIFT, align 4
  %64 = shl i32 %62, %63
  %65 = load i32, i32* %24, align 4
  %66 = add i32 %64, %65
  store i32 %66, i32* %26, align 4
  %67 = load i32, i32* %26, align 4
  %68 = load i32, i32* %23, align 4
  %69 = sdiv i32 %67, %68
  store i32 %69, i32* %21, align 4
  %70 = load i32, i32* %26, align 4
  %71 = load i32, i32* %23, align 4
  %72 = srem i32 %70, %71
  store i32 %72, i32* %22, align 4
  %73 = load i32, i32* %22, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %136

75:                                               ; preds = %7
  %76 = load %struct.inode*, %struct.inode** %16, align 8
  %77 = load i32, i32* %21, align 4
  %78 = call %struct.buffer_head* @affs_bread_ino(%struct.inode* %76, i32 %77, i32 0)
  store %struct.buffer_head* %78, %struct.buffer_head** %18, align 8
  %79 = load %struct.buffer_head*, %struct.buffer_head** %18, align 8
  %80 = call i64 @IS_ERR(%struct.buffer_head* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %75
  %83 = load %struct.buffer_head*, %struct.buffer_head** %18, align 8
  %84 = call i32 @PTR_ERR(%struct.buffer_head* %83)
  store i32 %84, i32* %8, align 4
  br label %437

85:                                               ; preds = %75
  %86 = load i32, i32* %23, align 4
  %87 = load i32, i32* %22, align 4
  %88 = sub nsw i32 %86, %87
  %89 = load i32, i32* %25, align 4
  %90 = load i32, i32* %24, align 4
  %91 = sub i32 %89, %90
  %92 = call i32 @min(i32 %88, i32 %91)
  store i32 %92, i32* %26, align 4
  %93 = load i32, i32* %22, align 4
  %94 = load i32, i32* %26, align 4
  %95 = add nsw i32 %93, %94
  %96 = load i32, i32* %23, align 4
  %97 = icmp sgt i32 %95, %96
  br i1 %97, label %102, label %98

98:                                               ; preds = %85
  %99 = load i32, i32* %26, align 4
  %100 = load i32, i32* %23, align 4
  %101 = icmp sgt i32 %99, %100
  br label %102

102:                                              ; preds = %98, %85
  %103 = phi i1 [ true, %85 ], [ %101, %98 ]
  %104 = zext i1 %103 to i32
  %105 = call i32 @BUG_ON(i32 %104)
  %106 = load %struct.buffer_head*, %struct.buffer_head** %18, align 8
  %107 = call i64 @AFFS_DATA(%struct.buffer_head* %106)
  %108 = load i32, i32* %22, align 4
  %109 = sext i32 %108 to i64
  %110 = add nsw i64 %107, %109
  %111 = load i8*, i8** %20, align 8
  %112 = load i32, i32* %24, align 4
  %113 = zext i32 %112 to i64
  %114 = getelementptr inbounds i8, i8* %111, i64 %113
  %115 = load i32, i32* %26, align 4
  %116 = call i32 @memcpy(i64 %110, i8* %114, i32 %115)
  %117 = load %struct.buffer_head*, %struct.buffer_head** %18, align 8
  %118 = call %struct.TYPE_6__* @AFFS_DATA_HEAD(%struct.buffer_head* %117)
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 0
  %120 = load i32, i32* %26, align 4
  %121 = call i32 @be32_add_cpu(i8** %119, i32 %120)
  %122 = load %struct.super_block*, %struct.super_block** %17, align 8
  %123 = load %struct.buffer_head*, %struct.buffer_head** %18, align 8
  %124 = call i32 @affs_fix_checksum(%struct.super_block* %122, %struct.buffer_head* %123)
  %125 = load %struct.buffer_head*, %struct.buffer_head** %18, align 8
  %126 = load %struct.inode*, %struct.inode** %16, align 8
  %127 = call i32 @mark_buffer_dirty_inode(%struct.buffer_head* %125, %struct.inode* %126)
  %128 = load i32, i32* %26, align 4
  %129 = load i32, i32* %27, align 4
  %130 = add nsw i32 %129, %128
  store i32 %130, i32* %27, align 4
  %131 = load i32, i32* %26, align 4
  %132 = load i32, i32* %24, align 4
  %133 = add i32 %132, %131
  store i32 %133, i32* %24, align 4
  %134 = load i32, i32* %21, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %21, align 4
  br label %152

136:                                              ; preds = %7
  %137 = load i32, i32* %21, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %151

139:                                              ; preds = %136
  %140 = load %struct.inode*, %struct.inode** %16, align 8
  %141 = load i32, i32* %21, align 4
  %142 = sub nsw i32 %141, 1
  %143 = call %struct.buffer_head* @affs_bread_ino(%struct.inode* %140, i32 %142, i32 0)
  store %struct.buffer_head* %143, %struct.buffer_head** %18, align 8
  %144 = load %struct.buffer_head*, %struct.buffer_head** %18, align 8
  %145 = call i64 @IS_ERR(%struct.buffer_head* %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %150

147:                                              ; preds = %139
  %148 = load %struct.buffer_head*, %struct.buffer_head** %18, align 8
  %149 = call i32 @PTR_ERR(%struct.buffer_head* %148)
  store i32 %149, i32* %8, align 4
  br label %437

150:                                              ; preds = %139
  br label %151

151:                                              ; preds = %150, %136
  br label %152

152:                                              ; preds = %151, %102
  br label %153

153:                                              ; preds = %247, %152
  %154 = load i32, i32* %24, align 4
  %155 = load i32, i32* %23, align 4
  %156 = add i32 %154, %155
  %157 = load i32, i32* %25, align 4
  %158 = icmp ule i32 %156, %157
  br i1 %158, label %159, label %264

159:                                              ; preds = %153
  %160 = load %struct.buffer_head*, %struct.buffer_head** %18, align 8
  store %struct.buffer_head* %160, %struct.buffer_head** %19, align 8
  %161 = load %struct.inode*, %struct.inode** %16, align 8
  %162 = load i32, i32* %21, align 4
  %163 = call %struct.buffer_head* @affs_getemptyblk_ino(%struct.inode* %161, i32 %162)
  store %struct.buffer_head* %163, %struct.buffer_head** %18, align 8
  %164 = load %struct.buffer_head*, %struct.buffer_head** %18, align 8
  %165 = call i64 @IS_ERR(%struct.buffer_head* %164)
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %168

167:                                              ; preds = %159
  br label %429

168:                                              ; preds = %159
  %169 = load %struct.buffer_head*, %struct.buffer_head** %18, align 8
  %170 = call i64 @AFFS_DATA(%struct.buffer_head* %169)
  %171 = load i8*, i8** %20, align 8
  %172 = load i32, i32* %24, align 4
  %173 = zext i32 %172 to i64
  %174 = getelementptr inbounds i8, i8* %171, i64 %173
  %175 = load i32, i32* %23, align 4
  %176 = call i32 @memcpy(i64 %170, i8* %174, i32 %175)
  %177 = load %struct.buffer_head*, %struct.buffer_head** %18, align 8
  %178 = call i64 @buffer_new(%struct.buffer_head* %177)
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %247

180:                                              ; preds = %168
  %181 = load i32, i32* @T_DATA, align 4
  %182 = call i8* @cpu_to_be32(i32 %181)
  %183 = load %struct.buffer_head*, %struct.buffer_head** %18, align 8
  %184 = call %struct.TYPE_6__* @AFFS_DATA_HEAD(%struct.buffer_head* %183)
  %185 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %184, i32 0, i32 4
  store i8* %182, i8** %185, align 8
  %186 = load %struct.inode*, %struct.inode** %16, align 8
  %187 = getelementptr inbounds %struct.inode, %struct.inode* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = call i8* @cpu_to_be32(i32 %188)
  %190 = load %struct.buffer_head*, %struct.buffer_head** %18, align 8
  %191 = call %struct.TYPE_6__* @AFFS_DATA_HEAD(%struct.buffer_head* %190)
  %192 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %191, i32 0, i32 3
  store i8* %189, i8** %192, align 8
  %193 = load i32, i32* %21, align 4
  %194 = call i8* @cpu_to_be32(i32 %193)
  %195 = load %struct.buffer_head*, %struct.buffer_head** %18, align 8
  %196 = call %struct.TYPE_6__* @AFFS_DATA_HEAD(%struct.buffer_head* %195)
  %197 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %196, i32 0, i32 2
  store i8* %194, i8** %197, align 8
  %198 = load i32, i32* %23, align 4
  %199 = call i8* @cpu_to_be32(i32 %198)
  %200 = load %struct.buffer_head*, %struct.buffer_head** %18, align 8
  %201 = call %struct.TYPE_6__* @AFFS_DATA_HEAD(%struct.buffer_head* %200)
  %202 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %201, i32 0, i32 0
  store i8* %199, i8** %202, align 8
  %203 = load %struct.buffer_head*, %struct.buffer_head** %18, align 8
  %204 = call %struct.TYPE_6__* @AFFS_DATA_HEAD(%struct.buffer_head* %203)
  %205 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %204, i32 0, i32 1
  store i8* null, i8** %205, align 8
  %206 = load i64, i64* @BH_New, align 8
  %207 = shl i64 1, %206
  %208 = xor i64 %207, -1
  %209 = load %struct.buffer_head*, %struct.buffer_head** %18, align 8
  %210 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %209, i32 0, i32 0
  %211 = load i64, i64* %210, align 8
  %212 = and i64 %211, %208
  store i64 %212, i64* %210, align 8
  %213 = load %struct.buffer_head*, %struct.buffer_head** %19, align 8
  %214 = icmp ne %struct.buffer_head* %213, null
  br i1 %214, label %215, label %246

215:                                              ; preds = %180
  %216 = load %struct.buffer_head*, %struct.buffer_head** %19, align 8
  %217 = call %struct.TYPE_6__* @AFFS_DATA_HEAD(%struct.buffer_head* %216)
  %218 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %217, i32 0, i32 1
  %219 = load i8*, i8** %218, align 8
  %220 = call i32 @be32_to_cpu(i8* %219)
  store i32 %220, i32* %28, align 4
  %221 = load i32, i32* %28, align 4
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %228

223:                                              ; preds = %215
  %224 = load %struct.super_block*, %struct.super_block** %17, align 8
  %225 = load i32, i32* %21, align 4
  %226 = load i32, i32* %28, align 4
  %227 = call i32 @affs_warning(%struct.super_block* %224, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %225, i32 %226)
  br label %228

228:                                              ; preds = %223, %215
  %229 = load %struct.buffer_head*, %struct.buffer_head** %18, align 8
  %230 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %229, i32 0, i32 1
  %231 = load i32, i32* %230, align 8
  %232 = call i8* @cpu_to_be32(i32 %231)
  %233 = load %struct.buffer_head*, %struct.buffer_head** %19, align 8
  %234 = call %struct.TYPE_6__* @AFFS_DATA_HEAD(%struct.buffer_head* %233)
  %235 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %234, i32 0, i32 1
  store i8* %232, i8** %235, align 8
  %236 = load %struct.buffer_head*, %struct.buffer_head** %19, align 8
  %237 = load %struct.buffer_head*, %struct.buffer_head** %18, align 8
  %238 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %237, i32 0, i32 1
  %239 = load i32, i32* %238, align 8
  %240 = load i32, i32* %28, align 4
  %241 = sub nsw i32 %239, %240
  %242 = call i32 @affs_adjust_checksum(%struct.buffer_head* %236, i32 %241)
  %243 = load %struct.buffer_head*, %struct.buffer_head** %19, align 8
  %244 = load %struct.inode*, %struct.inode** %16, align 8
  %245 = call i32 @mark_buffer_dirty_inode(%struct.buffer_head* %243, %struct.inode* %244)
  br label %246

246:                                              ; preds = %228, %180
  br label %247

247:                                              ; preds = %246, %168
  %248 = load %struct.buffer_head*, %struct.buffer_head** %19, align 8
  %249 = call i32 @affs_brelse(%struct.buffer_head* %248)
  %250 = load %struct.super_block*, %struct.super_block** %17, align 8
  %251 = load %struct.buffer_head*, %struct.buffer_head** %18, align 8
  %252 = call i32 @affs_fix_checksum(%struct.super_block* %250, %struct.buffer_head* %251)
  %253 = load %struct.buffer_head*, %struct.buffer_head** %18, align 8
  %254 = load %struct.inode*, %struct.inode** %16, align 8
  %255 = call i32 @mark_buffer_dirty_inode(%struct.buffer_head* %253, %struct.inode* %254)
  %256 = load i32, i32* %23, align 4
  %257 = load i32, i32* %27, align 4
  %258 = add nsw i32 %257, %256
  store i32 %258, i32* %27, align 4
  %259 = load i32, i32* %23, align 4
  %260 = load i32, i32* %24, align 4
  %261 = add i32 %260, %259
  store i32 %261, i32* %24, align 4
  %262 = load i32, i32* %21, align 4
  %263 = add nsw i32 %262, 1
  store i32 %263, i32* %21, align 4
  br label %153

264:                                              ; preds = %153
  %265 = load i32, i32* %24, align 4
  %266 = load i32, i32* %25, align 4
  %267 = icmp ult i32 %265, %266
  br i1 %267, label %268, label %398

268:                                              ; preds = %264
  %269 = load %struct.buffer_head*, %struct.buffer_head** %18, align 8
  store %struct.buffer_head* %269, %struct.buffer_head** %19, align 8
  %270 = load %struct.inode*, %struct.inode** %16, align 8
  %271 = load i32, i32* %21, align 4
  %272 = call %struct.buffer_head* @affs_bread_ino(%struct.inode* %270, i32 %271, i32 1)
  store %struct.buffer_head* %272, %struct.buffer_head** %18, align 8
  %273 = load %struct.buffer_head*, %struct.buffer_head** %18, align 8
  %274 = call i64 @IS_ERR(%struct.buffer_head* %273)
  %275 = icmp ne i64 %274, 0
  br i1 %275, label %276, label %277

276:                                              ; preds = %268
  br label %429

277:                                              ; preds = %268
  %278 = load i32, i32* %23, align 4
  %279 = load i32, i32* %25, align 4
  %280 = load i32, i32* %24, align 4
  %281 = sub i32 %279, %280
  %282 = call i32 @min(i32 %278, i32 %281)
  store i32 %282, i32* %26, align 4
  %283 = load i32, i32* %26, align 4
  %284 = load i32, i32* %23, align 4
  %285 = icmp sgt i32 %283, %284
  %286 = zext i1 %285 to i32
  %287 = call i32 @BUG_ON(i32 %286)
  %288 = load %struct.buffer_head*, %struct.buffer_head** %18, align 8
  %289 = call i64 @AFFS_DATA(%struct.buffer_head* %288)
  %290 = load i8*, i8** %20, align 8
  %291 = load i32, i32* %24, align 4
  %292 = zext i32 %291 to i64
  %293 = getelementptr inbounds i8, i8* %290, i64 %292
  %294 = load i32, i32* %26, align 4
  %295 = call i32 @memcpy(i64 %289, i8* %293, i32 %294)
  %296 = load %struct.buffer_head*, %struct.buffer_head** %18, align 8
  %297 = call i64 @buffer_new(%struct.buffer_head* %296)
  %298 = icmp ne i64 %297, 0
  br i1 %298, label %299, label %366

299:                                              ; preds = %277
  %300 = load i32, i32* @T_DATA, align 4
  %301 = call i8* @cpu_to_be32(i32 %300)
  %302 = load %struct.buffer_head*, %struct.buffer_head** %18, align 8
  %303 = call %struct.TYPE_6__* @AFFS_DATA_HEAD(%struct.buffer_head* %302)
  %304 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %303, i32 0, i32 4
  store i8* %301, i8** %304, align 8
  %305 = load %struct.inode*, %struct.inode** %16, align 8
  %306 = getelementptr inbounds %struct.inode, %struct.inode* %305, i32 0, i32 0
  %307 = load i32, i32* %306, align 8
  %308 = call i8* @cpu_to_be32(i32 %307)
  %309 = load %struct.buffer_head*, %struct.buffer_head** %18, align 8
  %310 = call %struct.TYPE_6__* @AFFS_DATA_HEAD(%struct.buffer_head* %309)
  %311 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %310, i32 0, i32 3
  store i8* %308, i8** %311, align 8
  %312 = load i32, i32* %21, align 4
  %313 = call i8* @cpu_to_be32(i32 %312)
  %314 = load %struct.buffer_head*, %struct.buffer_head** %18, align 8
  %315 = call %struct.TYPE_6__* @AFFS_DATA_HEAD(%struct.buffer_head* %314)
  %316 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %315, i32 0, i32 2
  store i8* %313, i8** %316, align 8
  %317 = load i32, i32* %26, align 4
  %318 = call i8* @cpu_to_be32(i32 %317)
  %319 = load %struct.buffer_head*, %struct.buffer_head** %18, align 8
  %320 = call %struct.TYPE_6__* @AFFS_DATA_HEAD(%struct.buffer_head* %319)
  %321 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %320, i32 0, i32 0
  store i8* %318, i8** %321, align 8
  %322 = load %struct.buffer_head*, %struct.buffer_head** %18, align 8
  %323 = call %struct.TYPE_6__* @AFFS_DATA_HEAD(%struct.buffer_head* %322)
  %324 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %323, i32 0, i32 1
  store i8* null, i8** %324, align 8
  %325 = load i64, i64* @BH_New, align 8
  %326 = shl i64 1, %325
  %327 = xor i64 %326, -1
  %328 = load %struct.buffer_head*, %struct.buffer_head** %18, align 8
  %329 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %328, i32 0, i32 0
  %330 = load i64, i64* %329, align 8
  %331 = and i64 %330, %327
  store i64 %331, i64* %329, align 8
  %332 = load %struct.buffer_head*, %struct.buffer_head** %19, align 8
  %333 = icmp ne %struct.buffer_head* %332, null
  br i1 %333, label %334, label %365

334:                                              ; preds = %299
  %335 = load %struct.buffer_head*, %struct.buffer_head** %19, align 8
  %336 = call %struct.TYPE_6__* @AFFS_DATA_HEAD(%struct.buffer_head* %335)
  %337 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %336, i32 0, i32 1
  %338 = load i8*, i8** %337, align 8
  %339 = call i32 @be32_to_cpu(i8* %338)
  store i32 %339, i32* %29, align 4
  %340 = load i32, i32* %29, align 4
  %341 = icmp ne i32 %340, 0
  br i1 %341, label %342, label %347

342:                                              ; preds = %334
  %343 = load %struct.super_block*, %struct.super_block** %17, align 8
  %344 = load i32, i32* %21, align 4
  %345 = load i32, i32* %29, align 4
  %346 = call i32 @affs_warning(%struct.super_block* %343, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %344, i32 %345)
  br label %347

347:                                              ; preds = %342, %334
  %348 = load %struct.buffer_head*, %struct.buffer_head** %18, align 8
  %349 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %348, i32 0, i32 1
  %350 = load i32, i32* %349, align 8
  %351 = call i8* @cpu_to_be32(i32 %350)
  %352 = load %struct.buffer_head*, %struct.buffer_head** %19, align 8
  %353 = call %struct.TYPE_6__* @AFFS_DATA_HEAD(%struct.buffer_head* %352)
  %354 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %353, i32 0, i32 1
  store i8* %351, i8** %354, align 8
  %355 = load %struct.buffer_head*, %struct.buffer_head** %19, align 8
  %356 = load %struct.buffer_head*, %struct.buffer_head** %18, align 8
  %357 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %356, i32 0, i32 1
  %358 = load i32, i32* %357, align 8
  %359 = load i32, i32* %29, align 4
  %360 = sub nsw i32 %358, %359
  %361 = call i32 @affs_adjust_checksum(%struct.buffer_head* %355, i32 %360)
  %362 = load %struct.buffer_head*, %struct.buffer_head** %19, align 8
  %363 = load %struct.inode*, %struct.inode** %16, align 8
  %364 = call i32 @mark_buffer_dirty_inode(%struct.buffer_head* %362, %struct.inode* %363)
  br label %365

365:                                              ; preds = %347, %299
  br label %381

366:                                              ; preds = %277
  %367 = load %struct.buffer_head*, %struct.buffer_head** %18, align 8
  %368 = call %struct.TYPE_6__* @AFFS_DATA_HEAD(%struct.buffer_head* %367)
  %369 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %368, i32 0, i32 0
  %370 = load i8*, i8** %369, align 8
  %371 = call i32 @be32_to_cpu(i8* %370)
  %372 = load i32, i32* %26, align 4
  %373 = icmp slt i32 %371, %372
  br i1 %373, label %374, label %380

374:                                              ; preds = %366
  %375 = load i32, i32* %26, align 4
  %376 = call i8* @cpu_to_be32(i32 %375)
  %377 = load %struct.buffer_head*, %struct.buffer_head** %18, align 8
  %378 = call %struct.TYPE_6__* @AFFS_DATA_HEAD(%struct.buffer_head* %377)
  %379 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %378, i32 0, i32 0
  store i8* %376, i8** %379, align 8
  br label %380

380:                                              ; preds = %374, %366
  br label %381

381:                                              ; preds = %380, %365
  %382 = load %struct.buffer_head*, %struct.buffer_head** %19, align 8
  %383 = call i32 @affs_brelse(%struct.buffer_head* %382)
  %384 = load %struct.super_block*, %struct.super_block** %17, align 8
  %385 = load %struct.buffer_head*, %struct.buffer_head** %18, align 8
  %386 = call i32 @affs_fix_checksum(%struct.super_block* %384, %struct.buffer_head* %385)
  %387 = load %struct.buffer_head*, %struct.buffer_head** %18, align 8
  %388 = load %struct.inode*, %struct.inode** %16, align 8
  %389 = call i32 @mark_buffer_dirty_inode(%struct.buffer_head* %387, %struct.inode* %388)
  %390 = load i32, i32* %26, align 4
  %391 = load i32, i32* %27, align 4
  %392 = add nsw i32 %391, %390
  store i32 %392, i32* %27, align 4
  %393 = load i32, i32* %26, align 4
  %394 = load i32, i32* %24, align 4
  %395 = add i32 %394, %393
  store i32 %395, i32* %24, align 4
  %396 = load i32, i32* %21, align 4
  %397 = add nsw i32 %396, 1
  store i32 %397, i32* %21, align 4
  br label %398

398:                                              ; preds = %381, %264
  %399 = load %struct.page*, %struct.page** %14, align 8
  %400 = call i32 @SetPageUptodate(%struct.page* %399)
  br label %401

401:                                              ; preds = %436, %398
  %402 = load %struct.buffer_head*, %struct.buffer_head** %18, align 8
  %403 = call i32 @affs_brelse(%struct.buffer_head* %402)
  %404 = load %struct.page*, %struct.page** %14, align 8
  %405 = getelementptr inbounds %struct.page, %struct.page* %404, i32 0, i32 0
  %406 = load i32, i32* %405, align 4
  %407 = load i32, i32* @PAGE_CACHE_SHIFT, align 4
  %408 = shl i32 %406, %407
  %409 = load i32, i32* %24, align 4
  %410 = add i32 %408, %409
  store i32 %410, i32* %26, align 4
  %411 = load i32, i32* %26, align 4
  %412 = load %struct.inode*, %struct.inode** %16, align 8
  %413 = getelementptr inbounds %struct.inode, %struct.inode* %412, i32 0, i32 1
  %414 = load i32, i32* %413, align 4
  %415 = icmp sgt i32 %411, %414
  br i1 %415, label %416, label %423

416:                                              ; preds = %401
  %417 = load i32, i32* %26, align 4
  %418 = load %struct.inode*, %struct.inode** %16, align 8
  %419 = call %struct.TYPE_5__* @AFFS_I(%struct.inode* %418)
  %420 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %419, i32 0, i32 0
  store i32 %417, i32* %420, align 4
  %421 = load %struct.inode*, %struct.inode** %16, align 8
  %422 = getelementptr inbounds %struct.inode, %struct.inode* %421, i32 0, i32 1
  store i32 %417, i32* %422, align 4
  br label %423

423:                                              ; preds = %416, %401
  %424 = load %struct.page*, %struct.page** %14, align 8
  %425 = call i32 @unlock_page(%struct.page* %424)
  %426 = load %struct.page*, %struct.page** %14, align 8
  %427 = call i32 @page_cache_release(%struct.page* %426)
  %428 = load i32, i32* %27, align 4
  store i32 %428, i32* %8, align 4
  br label %437

429:                                              ; preds = %276, %167
  %430 = load %struct.buffer_head*, %struct.buffer_head** %19, align 8
  store %struct.buffer_head* %430, %struct.buffer_head** %18, align 8
  %431 = load i32, i32* %27, align 4
  %432 = icmp ne i32 %431, 0
  br i1 %432, label %436, label %433

433:                                              ; preds = %429
  %434 = load %struct.buffer_head*, %struct.buffer_head** %18, align 8
  %435 = call i32 @PTR_ERR(%struct.buffer_head* %434)
  store i32 %435, i32* %27, align 4
  br label %436

436:                                              ; preds = %433, %429
  br label %401

437:                                              ; preds = %423, %147, %82
  %438 = load i32, i32* %8, align 4
  ret i32 %438
}

declare dso_local i32 @pr_debug(i8*, i32, i64, i64) #1

declare dso_local %struct.TYPE_4__* @AFFS_SB(%struct.super_block*) #1

declare dso_local i8* @page_address(%struct.page*) #1

declare dso_local %struct.buffer_head* @affs_bread_ino(%struct.inode*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.buffer_head*) #1

declare dso_local i32 @PTR_ERR(%struct.buffer_head*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @memcpy(i64, i8*, i32) #1

declare dso_local i64 @AFFS_DATA(%struct.buffer_head*) #1

declare dso_local i32 @be32_add_cpu(i8**, i32) #1

declare dso_local %struct.TYPE_6__* @AFFS_DATA_HEAD(%struct.buffer_head*) #1

declare dso_local i32 @affs_fix_checksum(%struct.super_block*, %struct.buffer_head*) #1

declare dso_local i32 @mark_buffer_dirty_inode(%struct.buffer_head*, %struct.inode*) #1

declare dso_local %struct.buffer_head* @affs_getemptyblk_ino(%struct.inode*, i32) #1

declare dso_local i64 @buffer_new(%struct.buffer_head*) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @be32_to_cpu(i8*) #1

declare dso_local i32 @affs_warning(%struct.super_block*, i8*, i8*, i32, i32) #1

declare dso_local i32 @affs_adjust_checksum(%struct.buffer_head*, i32) #1

declare dso_local i32 @affs_brelse(%struct.buffer_head*) #1

declare dso_local i32 @SetPageUptodate(%struct.page*) #1

declare dso_local %struct.TYPE_5__* @AFFS_I(%struct.inode*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @page_cache_release(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
