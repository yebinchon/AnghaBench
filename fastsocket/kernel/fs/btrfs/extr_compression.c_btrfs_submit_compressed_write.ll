; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_compression.c_btrfs_submit_compressed_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_compression.c_btrfs_submit_compressed_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32* }
%struct.page = type { i32* }
%struct.bio = type { i8*, %struct.compressed_bio*, i64 }
%struct.compressed_bio = type { i64, i64, i64, i64, i32, i32*, %struct.page**, i64, %struct.inode*, i64 }
%struct.btrfs_root = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.block_device* }
%struct.block_device = type { i32 }
%struct.extent_io_tree = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 (%struct.page*, i32, i64, %struct.bio*, i32)* }
%struct.TYPE_8__ = type { i32, %struct.btrfs_root*, %struct.extent_io_tree }

@BTRFS_INODE_NODATASUM = common dso_local global i32 0, align 4
@PAGE_CACHE_SIZE = common dso_local global i64 0, align 8
@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@end_compressed_bio_write = common dso_local global i8* null, align 8
@WRITE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"bytes left %lu compress len %lu nr %lu\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btrfs_submit_compressed_write(%struct.inode* %0, i64 %1, i64 %2, i64 %3, i64 %4, %struct.page** %5, i64 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.inode*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.page**, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.bio*, align 8
  %17 = alloca %struct.btrfs_root*, align 8
  %18 = alloca %struct.compressed_bio*, align 8
  %19 = alloca i64, align 8
  %20 = alloca %struct.extent_io_tree*, align 8
  %21 = alloca i32, align 4
  %22 = alloca %struct.page*, align 8
  %23 = alloca i64, align 8
  %24 = alloca %struct.block_device*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %9, align 8
  store i64 %1, i64* %10, align 8
  store i64 %2, i64* %11, align 8
  store i64 %3, i64* %12, align 8
  store i64 %4, i64* %13, align 8
  store %struct.page** %5, %struct.page*** %14, align 8
  store i64 %6, i64* %15, align 8
  store %struct.bio* null, %struct.bio** %16, align 8
  %27 = load %struct.inode*, %struct.inode** %9, align 8
  %28 = call %struct.TYPE_8__* @BTRFS_I(%struct.inode* %27)
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 1
  %30 = load %struct.btrfs_root*, %struct.btrfs_root** %29, align 8
  store %struct.btrfs_root* %30, %struct.btrfs_root** %17, align 8
  %31 = load %struct.inode*, %struct.inode** %9, align 8
  %32 = call %struct.TYPE_8__* @BTRFS_I(%struct.inode* %31)
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 2
  store %struct.extent_io_tree* %33, %struct.extent_io_tree** %20, align 8
  store i32 0, i32* %21, align 4
  %34 = load i64, i64* %12, align 8
  store i64 %34, i64* %23, align 8
  %35 = load %struct.inode*, %struct.inode** %9, align 8
  %36 = call %struct.TYPE_8__* @BTRFS_I(%struct.inode* %35)
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @BTRFS_INODE_NODATASUM, align 4
  %40 = and i32 %38, %39
  store i32 %40, i32* %26, align 4
  %41 = load i64, i64* %10, align 8
  %42 = load i64, i64* @PAGE_CACHE_SIZE, align 8
  %43 = sub i64 %42, 1
  %44 = and i64 %41, %43
  %45 = call i32 @WARN_ON(i64 %44)
  %46 = load %struct.btrfs_root*, %struct.btrfs_root** %17, align 8
  %47 = load i64, i64* %13, align 8
  %48 = call i32 @compressed_bio_size(%struct.btrfs_root* %46, i64 %47)
  %49 = load i32, i32* @GFP_NOFS, align 4
  %50 = call %struct.compressed_bio* @kmalloc(i32 %48, i32 %49)
  store %struct.compressed_bio* %50, %struct.compressed_bio** %18, align 8
  %51 = load %struct.compressed_bio*, %struct.compressed_bio** %18, align 8
  %52 = icmp ne %struct.compressed_bio* %51, null
  br i1 %52, label %56, label %53

53:                                               ; preds = %7
  %54 = load i32, i32* @ENOMEM, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %8, align 4
  br label %266

56:                                               ; preds = %7
  %57 = load %struct.compressed_bio*, %struct.compressed_bio** %18, align 8
  %58 = getelementptr inbounds %struct.compressed_bio, %struct.compressed_bio* %57, i32 0, i32 4
  %59 = call i32 @atomic_set(i32* %58, i32 0)
  %60 = load %struct.compressed_bio*, %struct.compressed_bio** %18, align 8
  %61 = getelementptr inbounds %struct.compressed_bio, %struct.compressed_bio* %60, i32 0, i32 9
  store i64 0, i64* %61, align 8
  %62 = load %struct.inode*, %struct.inode** %9, align 8
  %63 = load %struct.compressed_bio*, %struct.compressed_bio** %18, align 8
  %64 = getelementptr inbounds %struct.compressed_bio, %struct.compressed_bio* %63, i32 0, i32 8
  store %struct.inode* %62, %struct.inode** %64, align 8
  %65 = load i64, i64* %10, align 8
  %66 = load %struct.compressed_bio*, %struct.compressed_bio** %18, align 8
  %67 = getelementptr inbounds %struct.compressed_bio, %struct.compressed_bio* %66, i32 0, i32 0
  store i64 %65, i64* %67, align 8
  %68 = load i64, i64* %11, align 8
  %69 = load %struct.compressed_bio*, %struct.compressed_bio** %18, align 8
  %70 = getelementptr inbounds %struct.compressed_bio, %struct.compressed_bio* %69, i32 0, i32 1
  store i64 %68, i64* %70, align 8
  %71 = load %struct.compressed_bio*, %struct.compressed_bio** %18, align 8
  %72 = getelementptr inbounds %struct.compressed_bio, %struct.compressed_bio* %71, i32 0, i32 7
  store i64 0, i64* %72, align 8
  %73 = load %struct.page**, %struct.page*** %14, align 8
  %74 = load %struct.compressed_bio*, %struct.compressed_bio** %18, align 8
  %75 = getelementptr inbounds %struct.compressed_bio, %struct.compressed_bio* %74, i32 0, i32 6
  store %struct.page** %73, %struct.page*** %75, align 8
  %76 = load i64, i64* %13, align 8
  %77 = load %struct.compressed_bio*, %struct.compressed_bio** %18, align 8
  %78 = getelementptr inbounds %struct.compressed_bio, %struct.compressed_bio* %77, i32 0, i32 2
  store i64 %76, i64* %78, align 8
  %79 = load %struct.compressed_bio*, %struct.compressed_bio** %18, align 8
  %80 = getelementptr inbounds %struct.compressed_bio, %struct.compressed_bio* %79, i32 0, i32 5
  store i32* null, i32** %80, align 8
  %81 = load i64, i64* %15, align 8
  %82 = load %struct.compressed_bio*, %struct.compressed_bio** %18, align 8
  %83 = getelementptr inbounds %struct.compressed_bio, %struct.compressed_bio* %82, i32 0, i32 3
  store i64 %81, i64* %83, align 8
  %84 = load %struct.inode*, %struct.inode** %9, align 8
  %85 = call %struct.TYPE_8__* @BTRFS_I(%struct.inode* %84)
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 1
  %87 = load %struct.btrfs_root*, %struct.btrfs_root** %86, align 8
  %88 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %87, i32 0, i32 0
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 0
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 0
  %93 = load %struct.block_device*, %struct.block_device** %92, align 8
  store %struct.block_device* %93, %struct.block_device** %24, align 8
  %94 = load %struct.block_device*, %struct.block_device** %24, align 8
  %95 = load i64, i64* %23, align 8
  %96 = load i32, i32* @GFP_NOFS, align 4
  %97 = call %struct.bio* @compressed_bio_alloc(%struct.block_device* %94, i64 %95, i32 %96)
  store %struct.bio* %97, %struct.bio** %16, align 8
  %98 = load %struct.bio*, %struct.bio** %16, align 8
  %99 = icmp ne %struct.bio* %98, null
  br i1 %99, label %105, label %100

100:                                              ; preds = %56
  %101 = load %struct.compressed_bio*, %struct.compressed_bio** %18, align 8
  %102 = call i32 @kfree(%struct.compressed_bio* %101)
  %103 = load i32, i32* @ENOMEM, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %8, align 4
  br label %266

105:                                              ; preds = %56
  %106 = load %struct.compressed_bio*, %struct.compressed_bio** %18, align 8
  %107 = load %struct.bio*, %struct.bio** %16, align 8
  %108 = getelementptr inbounds %struct.bio, %struct.bio* %107, i32 0, i32 1
  store %struct.compressed_bio* %106, %struct.compressed_bio** %108, align 8
  %109 = load i8*, i8** @end_compressed_bio_write, align 8
  %110 = load %struct.bio*, %struct.bio** %16, align 8
  %111 = getelementptr inbounds %struct.bio, %struct.bio* %110, i32 0, i32 0
  store i8* %109, i8** %111, align 8
  %112 = load %struct.compressed_bio*, %struct.compressed_bio** %18, align 8
  %113 = getelementptr inbounds %struct.compressed_bio, %struct.compressed_bio* %112, i32 0, i32 4
  %114 = call i32 @atomic_inc(i32* %113)
  %115 = load i64, i64* %13, align 8
  store i64 %115, i64* %19, align 8
  store i32 0, i32* %21, align 4
  br label %116

116:                                              ; preds = %234, %105
  %117 = load i32, i32* %21, align 4
  %118 = sext i32 %117 to i64
  %119 = load %struct.compressed_bio*, %struct.compressed_bio** %18, align 8
  %120 = getelementptr inbounds %struct.compressed_bio, %struct.compressed_bio* %119, i32 0, i32 3
  %121 = load i64, i64* %120, align 8
  %122 = icmp ult i64 %118, %121
  br i1 %122, label %123, label %237

123:                                              ; preds = %116
  %124 = load %struct.page**, %struct.page*** %14, align 8
  %125 = load i32, i32* %21, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.page*, %struct.page** %124, i64 %126
  %128 = load %struct.page*, %struct.page** %127, align 8
  store %struct.page* %128, %struct.page** %22, align 8
  %129 = load %struct.inode*, %struct.inode** %9, align 8
  %130 = getelementptr inbounds %struct.inode, %struct.inode* %129, i32 0, i32 0
  %131 = load i32*, i32** %130, align 8
  %132 = load %struct.page*, %struct.page** %22, align 8
  %133 = getelementptr inbounds %struct.page, %struct.page* %132, i32 0, i32 0
  store i32* %131, i32** %133, align 8
  %134 = load %struct.bio*, %struct.bio** %16, align 8
  %135 = getelementptr inbounds %struct.bio, %struct.bio* %134, i32 0, i32 2
  %136 = load i64, i64* %135, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %148

138:                                              ; preds = %123
  %139 = load %struct.extent_io_tree*, %struct.extent_io_tree** %20, align 8
  %140 = getelementptr inbounds %struct.extent_io_tree, %struct.extent_io_tree* %139, i32 0, i32 0
  %141 = load %struct.TYPE_6__*, %struct.TYPE_6__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 0
  %143 = load i32 (%struct.page*, i32, i64, %struct.bio*, i32)*, i32 (%struct.page*, i32, i64, %struct.bio*, i32)** %142, align 8
  %144 = load %struct.page*, %struct.page** %22, align 8
  %145 = load i64, i64* @PAGE_CACHE_SIZE, align 8
  %146 = load %struct.bio*, %struct.bio** %16, align 8
  %147 = call i32 %143(%struct.page* %144, i32 0, i64 %145, %struct.bio* %146, i32 0)
  store i32 %147, i32* %25, align 4
  br label %149

148:                                              ; preds = %123
  store i32 0, i32* %25, align 4
  br label %149

149:                                              ; preds = %148, %138
  %150 = load %struct.page*, %struct.page** %22, align 8
  %151 = getelementptr inbounds %struct.page, %struct.page* %150, i32 0, i32 0
  store i32* null, i32** %151, align 8
  %152 = load i32, i32* %25, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %161, label %154

154:                                              ; preds = %149
  %155 = load %struct.bio*, %struct.bio** %16, align 8
  %156 = load %struct.page*, %struct.page** %22, align 8
  %157 = load i64, i64* @PAGE_CACHE_SIZE, align 8
  %158 = call i64 @bio_add_page(%struct.bio* %155, %struct.page* %156, i64 %157, i32 0)
  %159 = load i64, i64* @PAGE_CACHE_SIZE, align 8
  %160 = icmp ult i64 %158, %159
  br i1 %160, label %161, label %212

161:                                              ; preds = %154, %149
  %162 = load %struct.bio*, %struct.bio** %16, align 8
  %163 = call i32 @bio_get(%struct.bio* %162)
  %164 = load %struct.compressed_bio*, %struct.compressed_bio** %18, align 8
  %165 = getelementptr inbounds %struct.compressed_bio, %struct.compressed_bio* %164, i32 0, i32 4
  %166 = call i32 @atomic_inc(i32* %165)
  %167 = load %struct.btrfs_root*, %struct.btrfs_root** %17, align 8
  %168 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %167, i32 0, i32 0
  %169 = load %struct.TYPE_7__*, %struct.TYPE_7__** %168, align 8
  %170 = load %struct.bio*, %struct.bio** %16, align 8
  %171 = call i32 @btrfs_bio_wq_end_io(%struct.TYPE_7__* %169, %struct.bio* %170, i32 0)
  store i32 %171, i32* %25, align 4
  %172 = load i32, i32* %25, align 4
  %173 = call i32 @BUG_ON(i32 %172)
  %174 = load i32, i32* %26, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %184, label %176

176:                                              ; preds = %161
  %177 = load %struct.btrfs_root*, %struct.btrfs_root** %17, align 8
  %178 = load %struct.inode*, %struct.inode** %9, align 8
  %179 = load %struct.bio*, %struct.bio** %16, align 8
  %180 = load i64, i64* %10, align 8
  %181 = call i32 @btrfs_csum_one_bio(%struct.btrfs_root* %177, %struct.inode* %178, %struct.bio* %179, i64 %180, i32 1)
  store i32 %181, i32* %25, align 4
  %182 = load i32, i32* %25, align 4
  %183 = call i32 @BUG_ON(i32 %182)
  br label %184

184:                                              ; preds = %176, %161
  %185 = load %struct.btrfs_root*, %struct.btrfs_root** %17, align 8
  %186 = load i32, i32* @WRITE, align 4
  %187 = load %struct.bio*, %struct.bio** %16, align 8
  %188 = call i32 @btrfs_map_bio(%struct.btrfs_root* %185, i32 %186, %struct.bio* %187, i32 0, i32 1)
  store i32 %188, i32* %25, align 4
  %189 = load i32, i32* %25, align 4
  %190 = call i32 @BUG_ON(i32 %189)
  %191 = load %struct.bio*, %struct.bio** %16, align 8
  %192 = call i32 @bio_put(%struct.bio* %191)
  %193 = load %struct.block_device*, %struct.block_device** %24, align 8
  %194 = load i64, i64* %23, align 8
  %195 = load i32, i32* @GFP_NOFS, align 4
  %196 = call %struct.bio* @compressed_bio_alloc(%struct.block_device* %193, i64 %194, i32 %195)
  store %struct.bio* %196, %struct.bio** %16, align 8
  %197 = load %struct.bio*, %struct.bio** %16, align 8
  %198 = icmp ne %struct.bio* %197, null
  %199 = xor i1 %198, true
  %200 = zext i1 %199 to i32
  %201 = call i32 @BUG_ON(i32 %200)
  %202 = load %struct.compressed_bio*, %struct.compressed_bio** %18, align 8
  %203 = load %struct.bio*, %struct.bio** %16, align 8
  %204 = getelementptr inbounds %struct.bio, %struct.bio* %203, i32 0, i32 1
  store %struct.compressed_bio* %202, %struct.compressed_bio** %204, align 8
  %205 = load i8*, i8** @end_compressed_bio_write, align 8
  %206 = load %struct.bio*, %struct.bio** %16, align 8
  %207 = getelementptr inbounds %struct.bio, %struct.bio* %206, i32 0, i32 0
  store i8* %205, i8** %207, align 8
  %208 = load %struct.bio*, %struct.bio** %16, align 8
  %209 = load %struct.page*, %struct.page** %22, align 8
  %210 = load i64, i64* @PAGE_CACHE_SIZE, align 8
  %211 = call i64 @bio_add_page(%struct.bio* %208, %struct.page* %209, i64 %210, i32 0)
  br label %212

212:                                              ; preds = %184, %154
  %213 = load i64, i64* %19, align 8
  %214 = load i64, i64* @PAGE_CACHE_SIZE, align 8
  %215 = icmp ult i64 %213, %214
  br i1 %215, label %216, label %226

216:                                              ; preds = %212
  %217 = load i64, i64* %19, align 8
  %218 = load %struct.compressed_bio*, %struct.compressed_bio** %18, align 8
  %219 = getelementptr inbounds %struct.compressed_bio, %struct.compressed_bio* %218, i32 0, i32 2
  %220 = load i64, i64* %219, align 8
  %221 = load %struct.compressed_bio*, %struct.compressed_bio** %18, align 8
  %222 = getelementptr inbounds %struct.compressed_bio, %struct.compressed_bio* %221, i32 0, i32 3
  %223 = load i64, i64* %222, align 8
  %224 = trunc i64 %223 to i32
  %225 = call i32 @printk(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i64 %217, i64 %220, i32 %224)
  br label %226

226:                                              ; preds = %216, %212
  %227 = load i64, i64* @PAGE_CACHE_SIZE, align 8
  %228 = load i64, i64* %19, align 8
  %229 = sub i64 %228, %227
  store i64 %229, i64* %19, align 8
  %230 = load i64, i64* @PAGE_CACHE_SIZE, align 8
  %231 = load i64, i64* %23, align 8
  %232 = add i64 %231, %230
  store i64 %232, i64* %23, align 8
  %233 = call i32 (...) @cond_resched()
  br label %234

234:                                              ; preds = %226
  %235 = load i32, i32* %21, align 4
  %236 = add nsw i32 %235, 1
  store i32 %236, i32* %21, align 4
  br label %116

237:                                              ; preds = %116
  %238 = load %struct.bio*, %struct.bio** %16, align 8
  %239 = call i32 @bio_get(%struct.bio* %238)
  %240 = load %struct.btrfs_root*, %struct.btrfs_root** %17, align 8
  %241 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %240, i32 0, i32 0
  %242 = load %struct.TYPE_7__*, %struct.TYPE_7__** %241, align 8
  %243 = load %struct.bio*, %struct.bio** %16, align 8
  %244 = call i32 @btrfs_bio_wq_end_io(%struct.TYPE_7__* %242, %struct.bio* %243, i32 0)
  store i32 %244, i32* %25, align 4
  %245 = load i32, i32* %25, align 4
  %246 = call i32 @BUG_ON(i32 %245)
  %247 = load i32, i32* %26, align 4
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %257, label %249

249:                                              ; preds = %237
  %250 = load %struct.btrfs_root*, %struct.btrfs_root** %17, align 8
  %251 = load %struct.inode*, %struct.inode** %9, align 8
  %252 = load %struct.bio*, %struct.bio** %16, align 8
  %253 = load i64, i64* %10, align 8
  %254 = call i32 @btrfs_csum_one_bio(%struct.btrfs_root* %250, %struct.inode* %251, %struct.bio* %252, i64 %253, i32 1)
  store i32 %254, i32* %25, align 4
  %255 = load i32, i32* %25, align 4
  %256 = call i32 @BUG_ON(i32 %255)
  br label %257

257:                                              ; preds = %249, %237
  %258 = load %struct.btrfs_root*, %struct.btrfs_root** %17, align 8
  %259 = load i32, i32* @WRITE, align 4
  %260 = load %struct.bio*, %struct.bio** %16, align 8
  %261 = call i32 @btrfs_map_bio(%struct.btrfs_root* %258, i32 %259, %struct.bio* %260, i32 0, i32 1)
  store i32 %261, i32* %25, align 4
  %262 = load i32, i32* %25, align 4
  %263 = call i32 @BUG_ON(i32 %262)
  %264 = load %struct.bio*, %struct.bio** %16, align 8
  %265 = call i32 @bio_put(%struct.bio* %264)
  store i32 0, i32* %8, align 4
  br label %266

266:                                              ; preds = %257, %100, %53
  %267 = load i32, i32* %8, align 4
  ret i32 %267
}

declare dso_local %struct.TYPE_8__* @BTRFS_I(%struct.inode*) #1

declare dso_local i32 @WARN_ON(i64) #1

declare dso_local %struct.compressed_bio* @kmalloc(i32, i32) #1

declare dso_local i32 @compressed_bio_size(%struct.btrfs_root*, i64) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local %struct.bio* @compressed_bio_alloc(%struct.block_device*, i64, i32) #1

declare dso_local i32 @kfree(%struct.compressed_bio*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i64 @bio_add_page(%struct.bio*, %struct.page*, i64, i32) #1

declare dso_local i32 @bio_get(%struct.bio*) #1

declare dso_local i32 @btrfs_bio_wq_end_io(%struct.TYPE_7__*, %struct.bio*, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @btrfs_csum_one_bio(%struct.btrfs_root*, %struct.inode*, %struct.bio*, i64, i32) #1

declare dso_local i32 @btrfs_map_bio(%struct.btrfs_root*, i32, %struct.bio*, i32, i32) #1

declare dso_local i32 @bio_put(%struct.bio*) #1

declare dso_local i32 @printk(i8*, i64, i64, i32) #1

declare dso_local i32 @cond_resched(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
