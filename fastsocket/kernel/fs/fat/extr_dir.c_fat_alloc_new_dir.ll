; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/fat/extr_dir.c_fat_alloc_new_dir.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/fat/extr_dir.c_fat_alloc_new_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.super_block* }
%struct.super_block = type { i64 }
%struct.timespec = type { i32 }
%struct.msdos_sb_info = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.msdos_dir_entry = type { i64, i8*, i8*, i8*, i8*, i64, i8*, i8*, i8*, i64, i32, i32 }
%struct.buffer_head = type { i64 }
%struct.TYPE_4__ = type { i32 }

@MAX_BUF_PER_PAGE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MSDOS_DOT = common dso_local global i32 0, align 4
@MSDOS_NAME = common dso_local global i32 0, align 4
@MSDOS_DOTDOT = common dso_local global i32 0, align 4
@ATTR_DIR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fat_alloc_new_dir(%struct.inode* %0, %struct.timespec* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.timespec*, align 8
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca %struct.msdos_sb_info*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.msdos_dir_entry*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.timespec* %1, %struct.timespec** %5, align 8
  %18 = load %struct.inode*, %struct.inode** %4, align 8
  %19 = getelementptr inbounds %struct.inode, %struct.inode* %18, i32 0, i32 0
  %20 = load %struct.super_block*, %struct.super_block** %19, align 8
  store %struct.super_block* %20, %struct.super_block** %6, align 8
  %21 = load %struct.super_block*, %struct.super_block** %6, align 8
  %22 = call %struct.msdos_sb_info* @MSDOS_SB(%struct.super_block* %21)
  store %struct.msdos_sb_info* %22, %struct.msdos_sb_info** %7, align 8
  %23 = load i32, i32* @MAX_BUF_PER_PAGE, align 4
  %24 = zext i32 %23 to i64
  %25 = call i8* @llvm.stacksave()
  store i8* %25, i8** %8, align 8
  %26 = alloca %struct.buffer_head*, i64 %24, align 16
  store i64 %24, i64* %9, align 8
  %27 = load %struct.inode*, %struct.inode** %4, align 8
  %28 = call i32 @fat_alloc_clusters(%struct.inode* %27, i32* %16, i32 1)
  store i32 %28, i32* %15, align 4
  %29 = load i32, i32* %15, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %2
  br label %215

32:                                               ; preds = %2
  %33 = load %struct.msdos_sb_info*, %struct.msdos_sb_info** %7, align 8
  %34 = load i32, i32* %16, align 4
  %35 = call i32 @fat_clus_to_blknr(%struct.msdos_sb_info* %33, i32 %34)
  store i32 %35, i32* %11, align 4
  %36 = load %struct.super_block*, %struct.super_block** %6, align 8
  %37 = load i32, i32* %11, align 4
  %38 = call %struct.buffer_head* @sb_getblk(%struct.super_block* %36, i32 %37)
  %39 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %26, i64 0
  store %struct.buffer_head* %38, %struct.buffer_head** %39, align 16
  %40 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %26, i64 0
  %41 = load %struct.buffer_head*, %struct.buffer_head** %40, align 16
  %42 = icmp ne %struct.buffer_head* %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %32
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %15, align 4
  br label %211

46:                                               ; preds = %32
  %47 = load %struct.msdos_sb_info*, %struct.msdos_sb_info** %7, align 8
  %48 = load %struct.timespec*, %struct.timespec** %5, align 8
  %49 = call i32 @fat_time_unix2fat(%struct.msdos_sb_info* %47, %struct.timespec* %48, i8** %13, i8** %12, i64* %14)
  %50 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %26, i64 0
  %51 = load %struct.buffer_head*, %struct.buffer_head** %50, align 16
  %52 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = inttoptr i64 %53 to %struct.msdos_dir_entry*
  store %struct.msdos_dir_entry* %54, %struct.msdos_dir_entry** %10, align 8
  %55 = load %struct.msdos_dir_entry*, %struct.msdos_dir_entry** %10, align 8
  %56 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %55, i64 0
  %57 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %56, i32 0, i32 11
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @MSDOS_DOT, align 4
  %60 = load i32, i32* @MSDOS_NAME, align 4
  %61 = call i32 @memcpy(i32 %58, i32 %59, i32 %60)
  %62 = load %struct.msdos_dir_entry*, %struct.msdos_dir_entry** %10, align 8
  %63 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %62, i64 1
  %64 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %63, i32 0, i32 11
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @MSDOS_DOTDOT, align 4
  %67 = load i32, i32* @MSDOS_NAME, align 4
  %68 = call i32 @memcpy(i32 %65, i32 %66, i32 %67)
  %69 = load i32, i32* @ATTR_DIR, align 4
  %70 = load %struct.msdos_dir_entry*, %struct.msdos_dir_entry** %10, align 8
  %71 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %70, i64 1
  %72 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %71, i32 0, i32 10
  store i32 %69, i32* %72, align 8
  %73 = load %struct.msdos_dir_entry*, %struct.msdos_dir_entry** %10, align 8
  %74 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %73, i32 0, i32 10
  store i32 %69, i32* %74, align 8
  %75 = load %struct.msdos_dir_entry*, %struct.msdos_dir_entry** %10, align 8
  %76 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %75, i64 1
  %77 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %76, i32 0, i32 9
  store i64 0, i64* %77, align 8
  %78 = load %struct.msdos_dir_entry*, %struct.msdos_dir_entry** %10, align 8
  %79 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %78, i64 0
  %80 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %79, i32 0, i32 9
  store i64 0, i64* %80, align 8
  %81 = load i8*, i8** %13, align 8
  %82 = load %struct.msdos_dir_entry*, %struct.msdos_dir_entry** %10, align 8
  %83 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %82, i64 1
  %84 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %83, i32 0, i32 8
  store i8* %81, i8** %84, align 8
  %85 = load %struct.msdos_dir_entry*, %struct.msdos_dir_entry** %10, align 8
  %86 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %85, i64 0
  %87 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %86, i32 0, i32 8
  store i8* %81, i8** %87, align 8
  %88 = load i8*, i8** %12, align 8
  %89 = load %struct.msdos_dir_entry*, %struct.msdos_dir_entry** %10, align 8
  %90 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %89, i64 1
  %91 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %90, i32 0, i32 7
  store i8* %88, i8** %91, align 8
  %92 = load %struct.msdos_dir_entry*, %struct.msdos_dir_entry** %10, align 8
  %93 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %92, i64 0
  %94 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %93, i32 0, i32 7
  store i8* %88, i8** %94, align 8
  %95 = load %struct.msdos_sb_info*, %struct.msdos_sb_info** %7, align 8
  %96 = getelementptr inbounds %struct.msdos_sb_info, %struct.msdos_sb_info* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %128

100:                                              ; preds = %46
  %101 = load i8*, i8** %13, align 8
  %102 = load %struct.msdos_dir_entry*, %struct.msdos_dir_entry** %10, align 8
  %103 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %102, i64 1
  %104 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %103, i32 0, i32 6
  store i8* %101, i8** %104, align 8
  %105 = load %struct.msdos_dir_entry*, %struct.msdos_dir_entry** %10, align 8
  %106 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %105, i64 0
  %107 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %106, i32 0, i32 6
  store i8* %101, i8** %107, align 8
  %108 = load i64, i64* %14, align 8
  %109 = load %struct.msdos_dir_entry*, %struct.msdos_dir_entry** %10, align 8
  %110 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %109, i64 1
  %111 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %110, i32 0, i32 5
  store i64 %108, i64* %111, align 8
  %112 = load %struct.msdos_dir_entry*, %struct.msdos_dir_entry** %10, align 8
  %113 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %112, i64 0
  %114 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %113, i32 0, i32 5
  store i64 %108, i64* %114, align 8
  %115 = load i8*, i8** %12, align 8
  %116 = load %struct.msdos_dir_entry*, %struct.msdos_dir_entry** %10, align 8
  %117 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %116, i64 1
  %118 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %117, i32 0, i32 3
  store i8* %115, i8** %118, align 8
  %119 = load %struct.msdos_dir_entry*, %struct.msdos_dir_entry** %10, align 8
  %120 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %119, i64 1
  %121 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %120, i32 0, i32 4
  store i8* %115, i8** %121, align 8
  %122 = load %struct.msdos_dir_entry*, %struct.msdos_dir_entry** %10, align 8
  %123 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %122, i64 0
  %124 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %123, i32 0, i32 3
  store i8* %115, i8** %124, align 8
  %125 = load %struct.msdos_dir_entry*, %struct.msdos_dir_entry** %10, align 8
  %126 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %125, i64 0
  %127 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %126, i32 0, i32 4
  store i8* %115, i8** %127, align 8
  br label %153

128:                                              ; preds = %46
  %129 = load %struct.msdos_dir_entry*, %struct.msdos_dir_entry** %10, align 8
  %130 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %129, i64 1
  %131 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %130, i32 0, i32 6
  store i8* null, i8** %131, align 8
  %132 = load %struct.msdos_dir_entry*, %struct.msdos_dir_entry** %10, align 8
  %133 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %132, i64 0
  %134 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %133, i32 0, i32 6
  store i8* null, i8** %134, align 8
  %135 = load %struct.msdos_dir_entry*, %struct.msdos_dir_entry** %10, align 8
  %136 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %135, i64 1
  %137 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %136, i32 0, i32 5
  store i64 0, i64* %137, align 8
  %138 = load %struct.msdos_dir_entry*, %struct.msdos_dir_entry** %10, align 8
  %139 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %138, i64 0
  %140 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %139, i32 0, i32 5
  store i64 0, i64* %140, align 8
  %141 = load %struct.msdos_dir_entry*, %struct.msdos_dir_entry** %10, align 8
  %142 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %141, i64 1
  %143 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %142, i32 0, i32 3
  store i8* null, i8** %143, align 8
  %144 = load %struct.msdos_dir_entry*, %struct.msdos_dir_entry** %10, align 8
  %145 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %144, i64 1
  %146 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %145, i32 0, i32 4
  store i8* null, i8** %146, align 8
  %147 = load %struct.msdos_dir_entry*, %struct.msdos_dir_entry** %10, align 8
  %148 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %147, i64 0
  %149 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %148, i32 0, i32 3
  store i8* null, i8** %149, align 8
  %150 = load %struct.msdos_dir_entry*, %struct.msdos_dir_entry** %10, align 8
  %151 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %150, i64 0
  %152 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %151, i32 0, i32 4
  store i8* null, i8** %152, align 8
  br label %153

153:                                              ; preds = %128, %100
  %154 = load i32, i32* %16, align 4
  %155 = call i8* @cpu_to_le16(i32 %154)
  %156 = load %struct.msdos_dir_entry*, %struct.msdos_dir_entry** %10, align 8
  %157 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %156, i64 0
  %158 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %157, i32 0, i32 2
  store i8* %155, i8** %158, align 8
  %159 = load i32, i32* %16, align 4
  %160 = ashr i32 %159, 16
  %161 = call i8* @cpu_to_le16(i32 %160)
  %162 = load %struct.msdos_dir_entry*, %struct.msdos_dir_entry** %10, align 8
  %163 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %162, i64 0
  %164 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %163, i32 0, i32 1
  store i8* %161, i8** %164, align 8
  %165 = load %struct.inode*, %struct.inode** %4, align 8
  %166 = call %struct.TYPE_4__* @MSDOS_I(%struct.inode* %165)
  %167 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = call i8* @cpu_to_le16(i32 %168)
  %170 = load %struct.msdos_dir_entry*, %struct.msdos_dir_entry** %10, align 8
  %171 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %170, i64 1
  %172 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %171, i32 0, i32 2
  store i8* %169, i8** %172, align 8
  %173 = load %struct.inode*, %struct.inode** %4, align 8
  %174 = call %struct.TYPE_4__* @MSDOS_I(%struct.inode* %173)
  %175 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = ashr i32 %176, 16
  %178 = call i8* @cpu_to_le16(i32 %177)
  %179 = load %struct.msdos_dir_entry*, %struct.msdos_dir_entry** %10, align 8
  %180 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %179, i64 1
  %181 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %180, i32 0, i32 1
  store i8* %178, i8** %181, align 8
  %182 = load %struct.msdos_dir_entry*, %struct.msdos_dir_entry** %10, align 8
  %183 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %182, i64 1
  %184 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %183, i32 0, i32 0
  store i64 0, i64* %184, align 8
  %185 = load %struct.msdos_dir_entry*, %struct.msdos_dir_entry** %10, align 8
  %186 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %185, i64 0
  %187 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %186, i32 0, i32 0
  store i64 0, i64* %187, align 8
  %188 = load %struct.msdos_dir_entry*, %struct.msdos_dir_entry** %10, align 8
  %189 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %188, i64 2
  %190 = load %struct.super_block*, %struct.super_block** %6, align 8
  %191 = getelementptr inbounds %struct.super_block, %struct.super_block* %190, i32 0, i32 0
  %192 = load i64, i64* %191, align 8
  %193 = sub i64 %192, 176
  %194 = call i32 @memset(%struct.msdos_dir_entry* %189, i32 0, i64 %193)
  %195 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %26, i64 0
  %196 = load %struct.buffer_head*, %struct.buffer_head** %195, align 16
  %197 = call i32 @set_buffer_uptodate(%struct.buffer_head* %196)
  %198 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %26, i64 0
  %199 = load %struct.buffer_head*, %struct.buffer_head** %198, align 16
  %200 = load %struct.inode*, %struct.inode** %4, align 8
  %201 = call i32 @mark_buffer_dirty_inode(%struct.buffer_head* %199, %struct.inode* %200)
  %202 = load %struct.inode*, %struct.inode** %4, align 8
  %203 = load i32, i32* %11, align 4
  %204 = load i32, i32* @MAX_BUF_PER_PAGE, align 4
  %205 = call i32 @fat_zeroed_cluster(%struct.inode* %202, i32 %203, i32 1, %struct.buffer_head** %26, i32 %204)
  store i32 %205, i32* %15, align 4
  %206 = load i32, i32* %15, align 4
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %209

208:                                              ; preds = %153
  br label %211

209:                                              ; preds = %153
  %210 = load i32, i32* %16, align 4
  store i32 %210, i32* %3, align 4
  store i32 1, i32* %17, align 4
  br label %217

211:                                              ; preds = %208, %43
  %212 = load %struct.inode*, %struct.inode** %4, align 8
  %213 = load i32, i32* %16, align 4
  %214 = call i32 @fat_free_clusters(%struct.inode* %212, i32 %213)
  br label %215

215:                                              ; preds = %211, %31
  %216 = load i32, i32* %15, align 4
  store i32 %216, i32* %3, align 4
  store i32 1, i32* %17, align 4
  br label %217

217:                                              ; preds = %215, %209
  %218 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %218)
  %219 = load i32, i32* %3, align 4
  ret i32 %219
}

declare dso_local %struct.msdos_sb_info* @MSDOS_SB(%struct.super_block*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @fat_alloc_clusters(%struct.inode*, i32*, i32) #1

declare dso_local i32 @fat_clus_to_blknr(%struct.msdos_sb_info*, i32) #1

declare dso_local %struct.buffer_head* @sb_getblk(%struct.super_block*, i32) #1

declare dso_local i32 @fat_time_unix2fat(%struct.msdos_sb_info*, %struct.timespec*, i8**, i8**, i64*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local %struct.TYPE_4__* @MSDOS_I(%struct.inode*) #1

declare dso_local i32 @memset(%struct.msdos_dir_entry*, i32, i64) #1

declare dso_local i32 @set_buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i32 @mark_buffer_dirty_inode(%struct.buffer_head*, %struct.inode*) #1

declare dso_local i32 @fat_zeroed_cluster(%struct.inode*, i32, i32, %struct.buffer_head**, i32) #1

declare dso_local i32 @fat_free_clusters(%struct.inode*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
