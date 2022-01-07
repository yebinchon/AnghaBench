; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_super.c_ubifs_fill_super.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_super.c_ubifs_fill_super.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i64, i32, i32*, i32, i32, i32, %struct.ubifs_info*, %struct.TYPE_6__* }
%struct.ubifs_info = type { i64, %struct.inode*, %struct.TYPE_6__, i32, %struct.TYPE_5__, i32, i32, i32, i32, %struct.super_block*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.inode = type { i32 }
%struct.TYPE_6__ = type { i8*, i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.ubi_volume_desc = type { i64, %struct.inode*, %struct.TYPE_6__, i32, %struct.TYPE_5__, i32, i32, i32, i32, %struct.super_block*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@RB_ROOT = common dso_local global i8* null, align 8
@UBIFS_FIRST_INO = common dso_local global i32 0, align 4
@UBIFS_LOG_LNUM = common dso_local global i32 0, align 4
@UBI_READWRITE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"ubifs\00", align 1
@BDI_CAP_MAP_COPY = common dso_local global i32 0, align 4
@default_unplug_io_fn = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"ubifs_%d_%d\00", align 1
@UBIFS_SUPER_MAGIC = common dso_local global i32 0, align 4
@UBIFS_BLOCK_SIZE = common dso_local global i32 0, align 4
@UBIFS_BLOCK_SHIFT = common dso_local global i32 0, align 4
@MAX_LFS_FILESIZE = common dso_local global i64 0, align 8
@ubifs_super_operations = common dso_local global i32 0, align 4
@UBIFS_ROOT_INO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, i8*, i32)* @ubifs_fill_super to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ubifs_fill_super(%struct.super_block* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ubi_volume_desc*, align 8
  %9 = alloca %struct.ubifs_info*, align 8
  %10 = alloca %struct.inode*, align 8
  %11 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.super_block*, %struct.super_block** %5, align 8
  %13 = getelementptr inbounds %struct.super_block, %struct.super_block* %12, i32 0, i32 6
  %14 = load %struct.ubifs_info*, %struct.ubifs_info** %13, align 8
  %15 = bitcast %struct.ubifs_info* %14 to %struct.ubi_volume_desc*
  store %struct.ubi_volume_desc* %15, %struct.ubi_volume_desc** %8, align 8
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.ubifs_info* @kzalloc(i32 200, i32 %16)
  store %struct.ubifs_info* %17, %struct.ubifs_info** %9, align 8
  %18 = load %struct.ubifs_info*, %struct.ubifs_info** %9, align 8
  %19 = icmp ne %struct.ubifs_info* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %3
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %292

23:                                               ; preds = %3
  %24 = load %struct.ubifs_info*, %struct.ubifs_info** %9, align 8
  %25 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %24, i32 0, i32 37
  %26 = call i32 @spin_lock_init(i32* %25)
  %27 = load %struct.ubifs_info*, %struct.ubifs_info** %9, align 8
  %28 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %27, i32 0, i32 36
  %29 = call i32 @spin_lock_init(i32* %28)
  %30 = load %struct.ubifs_info*, %struct.ubifs_info** %9, align 8
  %31 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %30, i32 0, i32 35
  %32 = call i32 @spin_lock_init(i32* %31)
  %33 = load %struct.ubifs_info*, %struct.ubifs_info** %9, align 8
  %34 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %33, i32 0, i32 34
  %35 = call i32 @spin_lock_init(i32* %34)
  %36 = load %struct.ubifs_info*, %struct.ubifs_info** %9, align 8
  %37 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %36, i32 0, i32 33
  %38 = call i32 @spin_lock_init(i32* %37)
  %39 = load %struct.ubifs_info*, %struct.ubifs_info** %9, align 8
  %40 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %39, i32 0, i32 32
  %41 = call i32 @init_rwsem(i32* %40)
  %42 = load %struct.ubifs_info*, %struct.ubifs_info** %9, align 8
  %43 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %42, i32 0, i32 31
  %44 = call i32 @mutex_init(i32* %43)
  %45 = load %struct.ubifs_info*, %struct.ubifs_info** %9, align 8
  %46 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %45, i32 0, i32 30
  %47 = call i32 @mutex_init(i32* %46)
  %48 = load %struct.ubifs_info*, %struct.ubifs_info** %9, align 8
  %49 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %48, i32 0, i32 29
  %50 = call i32 @mutex_init(i32* %49)
  %51 = load %struct.ubifs_info*, %struct.ubifs_info** %9, align 8
  %52 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %51, i32 0, i32 28
  %53 = call i32 @mutex_init(i32* %52)
  %54 = load %struct.ubifs_info*, %struct.ubifs_info** %9, align 8
  %55 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %54, i32 0, i32 3
  %56 = call i32 @mutex_init(i32* %55)
  %57 = load %struct.ubifs_info*, %struct.ubifs_info** %9, align 8
  %58 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %57, i32 0, i32 27
  %59 = call i32 @mutex_init(i32* %58)
  %60 = load %struct.ubifs_info*, %struct.ubifs_info** %9, align 8
  %61 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %60, i32 0, i32 26
  %62 = call i32 @init_waitqueue_head(i32* %61)
  %63 = load i8*, i8** @RB_ROOT, align 8
  %64 = load %struct.ubifs_info*, %struct.ubifs_info** %9, align 8
  %65 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %64, i32 0, i32 25
  store i8* %63, i8** %65, align 8
  %66 = load i8*, i8** @RB_ROOT, align 8
  %67 = load %struct.ubifs_info*, %struct.ubifs_info** %9, align 8
  %68 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %67, i32 0, i32 24
  store i8* %66, i8** %68, align 8
  %69 = load i8*, i8** @RB_ROOT, align 8
  %70 = load %struct.ubifs_info*, %struct.ubifs_info** %9, align 8
  %71 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %70, i32 0, i32 23
  store i8* %69, i8** %71, align 8
  %72 = load i8*, i8** @RB_ROOT, align 8
  %73 = load %struct.ubifs_info*, %struct.ubifs_info** %9, align 8
  %74 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %73, i32 0, i32 22
  store i8* %72, i8** %74, align 8
  %75 = load %struct.ubifs_info*, %struct.ubifs_info** %9, align 8
  %76 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %75, i32 0, i32 21
  %77 = call i32 @INIT_LIST_HEAD(i32* %76)
  %78 = load %struct.ubifs_info*, %struct.ubifs_info** %9, align 8
  %79 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %78, i32 0, i32 20
  %80 = call i32 @INIT_LIST_HEAD(i32* %79)
  %81 = load %struct.ubifs_info*, %struct.ubifs_info** %9, align 8
  %82 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %81, i32 0, i32 19
  %83 = call i32 @INIT_LIST_HEAD(i32* %82)
  %84 = load %struct.ubifs_info*, %struct.ubifs_info** %9, align 8
  %85 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %84, i32 0, i32 18
  %86 = call i32 @INIT_LIST_HEAD(i32* %85)
  %87 = load %struct.ubifs_info*, %struct.ubifs_info** %9, align 8
  %88 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %87, i32 0, i32 17
  %89 = call i32 @INIT_LIST_HEAD(i32* %88)
  %90 = load %struct.ubifs_info*, %struct.ubifs_info** %9, align 8
  %91 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %90, i32 0, i32 16
  %92 = call i32 @INIT_LIST_HEAD(i32* %91)
  %93 = load %struct.ubifs_info*, %struct.ubifs_info** %9, align 8
  %94 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %93, i32 0, i32 15
  %95 = call i32 @INIT_LIST_HEAD(i32* %94)
  %96 = load %struct.ubifs_info*, %struct.ubifs_info** %9, align 8
  %97 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %96, i32 0, i32 14
  %98 = call i32 @INIT_LIST_HEAD(i32* %97)
  %99 = load %struct.ubifs_info*, %struct.ubifs_info** %9, align 8
  %100 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %99, i32 0, i32 13
  %101 = call i32 @INIT_LIST_HEAD(i32* %100)
  %102 = load %struct.ubifs_info*, %struct.ubifs_info** %9, align 8
  %103 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %102, i32 0, i32 12
  %104 = call i32 @INIT_LIST_HEAD(i32* %103)
  %105 = load %struct.ubifs_info*, %struct.ubifs_info** %9, align 8
  %106 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %105, i32 0, i32 11
  %107 = call i32 @INIT_LIST_HEAD(i32* %106)
  %108 = load %struct.ubifs_info*, %struct.ubifs_info** %9, align 8
  %109 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %108, i32 0, i32 10
  %110 = call i32 @INIT_LIST_HEAD(i32* %109)
  %111 = load %struct.super_block*, %struct.super_block** %5, align 8
  %112 = load %struct.ubifs_info*, %struct.ubifs_info** %9, align 8
  %113 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %112, i32 0, i32 9
  store %struct.super_block* %111, %struct.super_block** %113, align 8
  %114 = load i32, i32* @UBIFS_FIRST_INO, align 4
  %115 = load %struct.ubifs_info*, %struct.ubifs_info** %9, align 8
  %116 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %115, i32 0, i32 8
  store i32 %114, i32* %116, align 8
  %117 = load i32, i32* @UBIFS_LOG_LNUM, align 4
  %118 = load %struct.ubifs_info*, %struct.ubifs_info** %9, align 8
  %119 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %118, i32 0, i32 6
  store i32 %117, i32* %119, align 8
  %120 = load %struct.ubifs_info*, %struct.ubifs_info** %9, align 8
  %121 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %120, i32 0, i32 7
  store i32 %117, i32* %121, align 4
  %122 = load %struct.ubi_volume_desc*, %struct.ubi_volume_desc** %8, align 8
  %123 = bitcast %struct.ubi_volume_desc* %122 to %struct.ubifs_info*
  %124 = load %struct.ubifs_info*, %struct.ubifs_info** %9, align 8
  %125 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %124, i32 0, i32 4
  %126 = call i32 @ubi_get_volume_info(%struct.ubifs_info* %123, %struct.TYPE_5__* %125)
  %127 = load %struct.ubifs_info*, %struct.ubifs_info** %9, align 8
  %128 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %127, i32 0, i32 4
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.ubifs_info*, %struct.ubifs_info** %9, align 8
  %132 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %131, i32 0, i32 5
  %133 = call i32 @ubi_get_device_info(i32 %130, i32* %132)
  %134 = load %struct.ubifs_info*, %struct.ubifs_info** %9, align 8
  %135 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %134, i32 0, i32 4
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.ubifs_info*, %struct.ubifs_info** %9, align 8
  %139 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %138, i32 0, i32 4
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* @UBI_READWRITE, align 4
  %143 = call %struct.inode* @ubi_open_volume(i32 %137, i32 %141, i32 %142)
  %144 = load %struct.ubifs_info*, %struct.ubifs_info** %9, align 8
  %145 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %144, i32 0, i32 1
  store %struct.inode* %143, %struct.inode** %145, align 8
  %146 = load %struct.ubifs_info*, %struct.ubifs_info** %9, align 8
  %147 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %146, i32 0, i32 1
  %148 = load %struct.inode*, %struct.inode** %147, align 8
  %149 = call i64 @IS_ERR(%struct.inode* %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %156

151:                                              ; preds = %23
  %152 = load %struct.ubifs_info*, %struct.ubifs_info** %9, align 8
  %153 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %152, i32 0, i32 1
  %154 = load %struct.inode*, %struct.inode** %153, align 8
  %155 = call i32 @PTR_ERR(%struct.inode* %154)
  store i32 %155, i32* %11, align 4
  br label %288

156:                                              ; preds = %23
  %157 = load %struct.ubifs_info*, %struct.ubifs_info** %9, align 8
  %158 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %157, i32 0, i32 2
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %158, i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %159, align 8
  %160 = load i32, i32* @BDI_CAP_MAP_COPY, align 4
  %161 = load %struct.ubifs_info*, %struct.ubifs_info** %9, align 8
  %162 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %161, i32 0, i32 2
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i32 0, i32 2
  store i32 %160, i32* %163, align 4
  %164 = load i32, i32* @default_unplug_io_fn, align 4
  %165 = load %struct.ubifs_info*, %struct.ubifs_info** %9, align 8
  %166 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %165, i32 0, i32 2
  %167 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %166, i32 0, i32 1
  store i32 %164, i32* %167, align 8
  %168 = load %struct.ubifs_info*, %struct.ubifs_info** %9, align 8
  %169 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %168, i32 0, i32 2
  %170 = call i32 @bdi_init(%struct.TYPE_6__* %169)
  store i32 %170, i32* %11, align 4
  %171 = load i32, i32* %11, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %174

173:                                              ; preds = %156
  br label %283

174:                                              ; preds = %156
  %175 = load %struct.ubifs_info*, %struct.ubifs_info** %9, align 8
  %176 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %175, i32 0, i32 2
  %177 = load %struct.ubifs_info*, %struct.ubifs_info** %9, align 8
  %178 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %177, i32 0, i32 4
  %179 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = load %struct.ubifs_info*, %struct.ubifs_info** %9, align 8
  %182 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %181, i32 0, i32 4
  %183 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = call i32 @bdi_register(%struct.TYPE_6__* %176, i32* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %180, i32 %184)
  store i32 %185, i32* %11, align 4
  %186 = load i32, i32* %11, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %189

188:                                              ; preds = %174
  br label %279

189:                                              ; preds = %174
  %190 = load %struct.ubifs_info*, %struct.ubifs_info** %9, align 8
  %191 = load i8*, i8** %6, align 8
  %192 = call i32 @ubifs_parse_options(%struct.ubifs_info* %190, i8* %191, i32 0)
  store i32 %192, i32* %11, align 4
  %193 = load i32, i32* %11, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %196

195:                                              ; preds = %189
  br label %279

196:                                              ; preds = %189
  %197 = load %struct.ubifs_info*, %struct.ubifs_info** %9, align 8
  %198 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %197, i32 0, i32 2
  %199 = load %struct.super_block*, %struct.super_block** %5, align 8
  %200 = getelementptr inbounds %struct.super_block, %struct.super_block* %199, i32 0, i32 7
  store %struct.TYPE_6__* %198, %struct.TYPE_6__** %200, align 8
  %201 = load %struct.ubifs_info*, %struct.ubifs_info** %9, align 8
  %202 = load %struct.super_block*, %struct.super_block** %5, align 8
  %203 = getelementptr inbounds %struct.super_block, %struct.super_block* %202, i32 0, i32 6
  store %struct.ubifs_info* %201, %struct.ubifs_info** %203, align 8
  %204 = load i32, i32* @UBIFS_SUPER_MAGIC, align 4
  %205 = load %struct.super_block*, %struct.super_block** %5, align 8
  %206 = getelementptr inbounds %struct.super_block, %struct.super_block* %205, i32 0, i32 5
  store i32 %204, i32* %206, align 8
  %207 = load i32, i32* @UBIFS_BLOCK_SIZE, align 4
  %208 = load %struct.super_block*, %struct.super_block** %5, align 8
  %209 = getelementptr inbounds %struct.super_block, %struct.super_block* %208, i32 0, i32 4
  store i32 %207, i32* %209, align 4
  %210 = load i32, i32* @UBIFS_BLOCK_SHIFT, align 4
  %211 = load %struct.super_block*, %struct.super_block** %5, align 8
  %212 = getelementptr inbounds %struct.super_block, %struct.super_block* %211, i32 0, i32 3
  store i32 %210, i32* %212, align 8
  %213 = load %struct.ubifs_info*, %struct.ubifs_info** %9, align 8
  %214 = call i64 @key_max_inode_size(%struct.ubifs_info* %213)
  %215 = load %struct.ubifs_info*, %struct.ubifs_info** %9, align 8
  %216 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %215, i32 0, i32 0
  store i64 %214, i64* %216, align 8
  %217 = load %struct.super_block*, %struct.super_block** %5, align 8
  %218 = getelementptr inbounds %struct.super_block, %struct.super_block* %217, i32 0, i32 0
  store i64 %214, i64* %218, align 8
  %219 = load %struct.ubifs_info*, %struct.ubifs_info** %9, align 8
  %220 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %219, i32 0, i32 0
  %221 = load i64, i64* %220, align 8
  %222 = load i64, i64* @MAX_LFS_FILESIZE, align 8
  %223 = icmp sgt i64 %221, %222
  br i1 %223, label %224, label %230

224:                                              ; preds = %196
  %225 = load i64, i64* @MAX_LFS_FILESIZE, align 8
  %226 = load %struct.ubifs_info*, %struct.ubifs_info** %9, align 8
  %227 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %226, i32 0, i32 0
  store i64 %225, i64* %227, align 8
  %228 = load %struct.super_block*, %struct.super_block** %5, align 8
  %229 = getelementptr inbounds %struct.super_block, %struct.super_block* %228, i32 0, i32 0
  store i64 %225, i64* %229, align 8
  br label %230

230:                                              ; preds = %224, %196
  %231 = load %struct.super_block*, %struct.super_block** %5, align 8
  %232 = getelementptr inbounds %struct.super_block, %struct.super_block* %231, i32 0, i32 2
  store i32* @ubifs_super_operations, i32** %232, align 8
  %233 = load %struct.ubifs_info*, %struct.ubifs_info** %9, align 8
  %234 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %233, i32 0, i32 3
  %235 = call i32 @mutex_lock(i32* %234)
  %236 = load %struct.ubifs_info*, %struct.ubifs_info** %9, align 8
  %237 = call i32 @mount_ubifs(%struct.ubifs_info* %236)
  store i32 %237, i32* %11, align 4
  %238 = load i32, i32* %11, align 4
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %245

240:                                              ; preds = %230
  %241 = load i32, i32* %11, align 4
  %242 = icmp slt i32 %241, 0
  %243 = zext i1 %242 to i32
  %244 = call i32 @ubifs_assert(i32 %243)
  br label %275

245:                                              ; preds = %230
  %246 = load %struct.super_block*, %struct.super_block** %5, align 8
  %247 = load i32, i32* @UBIFS_ROOT_INO, align 4
  %248 = call %struct.inode* @ubifs_iget(%struct.super_block* %246, i32 %247)
  store %struct.inode* %248, %struct.inode** %10, align 8
  %249 = load %struct.inode*, %struct.inode** %10, align 8
  %250 = call i64 @IS_ERR(%struct.inode* %249)
  %251 = icmp ne i64 %250, 0
  br i1 %251, label %252, label %255

252:                                              ; preds = %245
  %253 = load %struct.inode*, %struct.inode** %10, align 8
  %254 = call i32 @PTR_ERR(%struct.inode* %253)
  store i32 %254, i32* %11, align 4
  br label %272

255:                                              ; preds = %245
  %256 = load %struct.inode*, %struct.inode** %10, align 8
  %257 = call i32 @d_alloc_root(%struct.inode* %256)
  %258 = load %struct.super_block*, %struct.super_block** %5, align 8
  %259 = getelementptr inbounds %struct.super_block, %struct.super_block* %258, i32 0, i32 1
  store i32 %257, i32* %259, align 8
  %260 = load %struct.super_block*, %struct.super_block** %5, align 8
  %261 = getelementptr inbounds %struct.super_block, %struct.super_block* %260, i32 0, i32 1
  %262 = load i32, i32* %261, align 8
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %265, label %264

264:                                              ; preds = %255
  br label %269

265:                                              ; preds = %255
  %266 = load %struct.ubifs_info*, %struct.ubifs_info** %9, align 8
  %267 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %266, i32 0, i32 3
  %268 = call i32 @mutex_unlock(i32* %267)
  store i32 0, i32* %4, align 4
  br label %292

269:                                              ; preds = %264
  %270 = load %struct.inode*, %struct.inode** %10, align 8
  %271 = call i32 @iput(%struct.inode* %270)
  br label %272

272:                                              ; preds = %269, %252
  %273 = load %struct.ubifs_info*, %struct.ubifs_info** %9, align 8
  %274 = call i32 @ubifs_umount(%struct.ubifs_info* %273)
  br label %275

275:                                              ; preds = %272, %240
  %276 = load %struct.ubifs_info*, %struct.ubifs_info** %9, align 8
  %277 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %276, i32 0, i32 3
  %278 = call i32 @mutex_unlock(i32* %277)
  br label %279

279:                                              ; preds = %275, %195, %188
  %280 = load %struct.ubifs_info*, %struct.ubifs_info** %9, align 8
  %281 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %280, i32 0, i32 2
  %282 = call i32 @bdi_destroy(%struct.TYPE_6__* %281)
  br label %283

283:                                              ; preds = %279, %173
  %284 = load %struct.ubifs_info*, %struct.ubifs_info** %9, align 8
  %285 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %284, i32 0, i32 1
  %286 = load %struct.inode*, %struct.inode** %285, align 8
  %287 = call i32 @ubi_close_volume(%struct.inode* %286)
  br label %288

288:                                              ; preds = %283, %151
  %289 = load %struct.ubifs_info*, %struct.ubifs_info** %9, align 8
  %290 = call i32 @kfree(%struct.ubifs_info* %289)
  %291 = load i32, i32* %11, align 4
  store i32 %291, i32* %4, align 4
  br label %292

292:                                              ; preds = %288, %265, %20
  %293 = load i32, i32* %4, align 4
  ret i32 %293
}

declare dso_local %struct.ubifs_info* @kzalloc(i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @init_rwsem(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @ubi_get_volume_info(%struct.ubifs_info*, %struct.TYPE_5__*) #1

declare dso_local i32 @ubi_get_device_info(i32, i32*) #1

declare dso_local %struct.inode* @ubi_open_volume(i32, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.inode*) #1

declare dso_local i32 @PTR_ERR(%struct.inode*) #1

declare dso_local i32 @bdi_init(%struct.TYPE_6__*) #1

declare dso_local i32 @bdi_register(%struct.TYPE_6__*, i32*, i8*, i32, i32) #1

declare dso_local i32 @ubifs_parse_options(%struct.ubifs_info*, i8*, i32) #1

declare dso_local i64 @key_max_inode_size(%struct.ubifs_info*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mount_ubifs(%struct.ubifs_info*) #1

declare dso_local i32 @ubifs_assert(i32) #1

declare dso_local %struct.inode* @ubifs_iget(%struct.super_block*, i32) #1

declare dso_local i32 @d_alloc_root(%struct.inode*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local i32 @ubifs_umount(%struct.ubifs_info*) #1

declare dso_local i32 @bdi_destroy(%struct.TYPE_6__*) #1

declare dso_local i32 @ubi_close_volume(%struct.inode*) #1

declare dso_local i32 @kfree(%struct.ubifs_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
