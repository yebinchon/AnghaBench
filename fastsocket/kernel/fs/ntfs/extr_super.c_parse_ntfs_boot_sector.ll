; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ntfs/extr_super.c_parse_ntfs_boot_sector.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ntfs/extr_super.c_parse_ntfs_boot_sector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i64, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, i32, i32 }

@.str = private unnamed_addr constant [29 x i8] c"vol->sector_size = %i (0x%x)\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"vol->sector_size_bits = %i (0x%x)\00", align 1
@.str.2 = private unnamed_addr constant [94 x i8] c"Sector size (%i) is smaller than the device block size (%lu).  This is not supported.  Sorry.\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"sectors_per_cluster = 0x%x\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"sectors_per_cluster_bits = 0x%x\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"number of hidden sectors = 0x%x\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"vol->cluster_size = %i (0x%x)\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"vol->cluster_size_mask = 0x%x\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"vol->cluster_size_bits = %i\00", align 1
@.str.9 = private unnamed_addr constant [88 x i8] c"Cluster size (%i) is smaller than the sector size (%i).  This is not supported.  Sorry.\00", align 1
@.str.10 = private unnamed_addr constant [36 x i8] c"clusters_per_mft_record = %i (0x%x)\00", align 1
@.str.11 = private unnamed_addr constant [33 x i8] c"vol->mft_record_size = %i (0x%x)\00", align 1
@.str.12 = private unnamed_addr constant [33 x i8] c"vol->mft_record_size_mask = 0x%x\00", align 1
@.str.13 = private unnamed_addr constant [38 x i8] c"vol->mft_record_size_bits = %i (0x%x)\00", align 1
@PAGE_CACHE_SIZE = common dso_local global i64 0, align 8
@.str.14 = private unnamed_addr constant [103 x i8] c"Mft record size (%i) exceeds the PAGE_CACHE_SIZE on your system (%lu).  This is not supported.  Sorry.\00", align 1
@.str.15 = private unnamed_addr constant [91 x i8] c"Mft record size (%i) is smaller than the sector size (%i).  This is not supported.  Sorry.\00", align 1
@.str.16 = private unnamed_addr constant [38 x i8] c"clusters_per_index_record = %i (0x%x)\00", align 1
@.str.17 = private unnamed_addr constant [35 x i8] c"vol->index_record_size = %i (0x%x)\00", align 1
@.str.18 = private unnamed_addr constant [35 x i8] c"vol->index_record_size_mask = 0x%x\00", align 1
@.str.19 = private unnamed_addr constant [40 x i8] c"vol->index_record_size_bits = %i (0x%x)\00", align 1
@.str.20 = private unnamed_addr constant [93 x i8] c"Index record size (%i) is smaller than the sector size (%i).  This is not supported.  Sorry.\00", align 1
@.str.21 = private unnamed_addr constant [39 x i8] c"Cannot handle 64-bit clusters.  Sorry.\00", align 1
@.str.22 = private unnamed_addr constant [26 x i8] c"vol->nr_clusters = 0x%llx\00", align 1
@.str.23 = private unnamed_addr constant [56 x i8] c"MFT LCN (%lli, 0x%llx) is beyond end of volume.  Weird.\00", align 1
@.str.24 = private unnamed_addr constant [22 x i8] c"vol->mft_lcn = 0x%llx\00", align 1
@.str.25 = private unnamed_addr constant [60 x i8] c"MFTMirr LCN (%lli, 0x%llx) is beyond end of volume.  Weird.\00", align 1
@.str.26 = private unnamed_addr constant [26 x i8] c"vol->mftmirr_lcn = 0x%llx\00", align 1
@.str.27 = private unnamed_addr constant [24 x i8] c"vol->serial_no = 0x%llx\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, %struct.TYPE_9__*)* @parse_ntfs_boot_sector to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_ntfs_boot_sector(%struct.TYPE_8__* %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %5, align 8
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 6
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @le16_to_cpu(i32 %14)
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 8
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @ffs(i32 %20)
  %22 = sub nsw i32 %21, 1
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = sext i32 %27 to i64
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 (i8*, i64, ...) @ntfs_debug(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 %28, i32 %31)
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = sext i32 %35 to i64
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 (i8*, i64, ...) @ntfs_debug(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i64 %36, i32 %39)
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 16
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp slt i32 %43, %48
  br i1 %49, label %50, label %63

50:                                               ; preds = %2
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 16
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %52, align 8
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 16
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 (%struct.TYPE_10__*, i8*, ...) @ntfs_error(%struct.TYPE_10__* %53, i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str.2, i64 0, i64 0), i32 %56, i32 %61)
  store i32 0, i32* %3, align 4
  br label %400

63:                                               ; preds = %2
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 6
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = call i32 (i8*, i64, ...) @ntfs_debug(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i64 %67)
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 6
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = trunc i64 %72 to i32
  %74 = call i32 @ffs(i32 %73)
  %75 = sub nsw i32 %74, 1
  store i32 %75, i32* %6, align 4
  %76 = load i32, i32* %6, align 4
  %77 = zext i32 %76 to i64
  %78 = call i32 (i8*, i64, ...) @ntfs_debug(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i64 %77)
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 6
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @le32_to_cpu(i32 %82)
  store i32 %83, i32* %7, align 4
  %84 = load i32, i32* %7, align 4
  %85 = zext i32 %84 to i64
  %86 = call i32 (i8*, i64, ...) @ntfs_debug(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i64 %85)
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* %6, align 4
  %91 = shl i32 %89, %90
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 2
  store i32 %91, i32* %93, align 8
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = sub i32 %96, 1
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 3
  store i32 %97, i32* %99, align 4
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @ffs(i32 %102)
  %104 = sub nsw i32 %103, 1
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 4
  store i32 %104, i32* %106, align 8
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = zext i32 %109 to i64
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = call i32 (i8*, i64, ...) @ntfs_debug(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i64 %110, i32 %113)
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 4
  %118 = sext i32 %117 to i64
  %119 = call i32 (i8*, i64, ...) @ntfs_debug(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0), i64 %118)
  %120 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 4
  %122 = load i32, i32* %121, align 8
  %123 = sext i32 %122 to i64
  %124 = call i32 (i8*, i64, ...) @ntfs_debug(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0), i64 %123)
  %125 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = icmp ult i32 %127, %130
  br i1 %131, label %132, label %143

132:                                              ; preds = %63
  %133 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 16
  %135 = load %struct.TYPE_10__*, %struct.TYPE_10__** %134, align 8
  %136 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 8
  %139 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = call i32 (%struct.TYPE_10__*, i8*, ...) @ntfs_error(%struct.TYPE_10__* %135, i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.9, i64 0, i64 0), i32 %138, i32 %141)
  store i32 0, i32* %3, align 4
  br label %400

143:                                              ; preds = %63
  %144 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %145 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  store i32 %146, i32* %8, align 4
  %147 = load i32, i32* %8, align 4
  %148 = sext i32 %147 to i64
  %149 = load i32, i32* %8, align 4
  %150 = call i32 (i8*, i64, ...) @ntfs_debug(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10, i64 0, i64 0), i64 %148, i32 %149)
  %151 = load i32, i32* %8, align 4
  %152 = icmp sgt i32 %151, 0
  br i1 %152, label %153, label %163

153:                                              ; preds = %143
  %154 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 8
  %157 = load i32, i32* %8, align 4
  %158 = call i32 @ffs(i32 %157)
  %159 = sub nsw i32 %158, 1
  %160 = shl i32 %156, %159
  %161 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %162 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %161, i32 0, i32 5
  store i32 %160, i32* %162, align 4
  br label %169

163:                                              ; preds = %143
  %164 = load i32, i32* %8, align 4
  %165 = sub nsw i32 0, %164
  %166 = shl i32 1, %165
  %167 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %168 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %167, i32 0, i32 5
  store i32 %166, i32* %168, align 4
  br label %169

169:                                              ; preds = %163, %153
  %170 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %171 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %170, i32 0, i32 5
  %172 = load i32, i32* %171, align 4
  %173 = sub nsw i32 %172, 1
  %174 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %175 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %174, i32 0, i32 6
  store i32 %173, i32* %175, align 8
  %176 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %177 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %176, i32 0, i32 5
  %178 = load i32, i32* %177, align 4
  %179 = call i32 @ffs(i32 %178)
  %180 = sub nsw i32 %179, 1
  %181 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %182 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %181, i32 0, i32 7
  store i32 %180, i32* %182, align 4
  %183 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %184 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %183, i32 0, i32 5
  %185 = load i32, i32* %184, align 4
  %186 = sext i32 %185 to i64
  %187 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %188 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %187, i32 0, i32 5
  %189 = load i32, i32* %188, align 4
  %190 = call i32 (i8*, i64, ...) @ntfs_debug(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.11, i64 0, i64 0), i64 %186, i32 %189)
  %191 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %192 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %191, i32 0, i32 6
  %193 = load i32, i32* %192, align 8
  %194 = sext i32 %193 to i64
  %195 = call i32 (i8*, i64, ...) @ntfs_debug(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.12, i64 0, i64 0), i64 %194)
  %196 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %197 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %196, i32 0, i32 7
  %198 = load i32, i32* %197, align 4
  %199 = sext i32 %198 to i64
  %200 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %201 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %200, i32 0, i32 7
  %202 = load i32, i32* %201, align 4
  %203 = call i32 (i8*, i64, ...) @ntfs_debug(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.13, i64 0, i64 0), i64 %199, i32 %202)
  %204 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %205 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %204, i32 0, i32 5
  %206 = load i32, i32* %205, align 4
  %207 = sext i32 %206 to i64
  %208 = load i64, i64* @PAGE_CACHE_SIZE, align 8
  %209 = icmp ugt i64 %207, %208
  br i1 %209, label %210, label %219

210:                                              ; preds = %169
  %211 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %212 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %211, i32 0, i32 16
  %213 = load %struct.TYPE_10__*, %struct.TYPE_10__** %212, align 8
  %214 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %215 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %214, i32 0, i32 5
  %216 = load i32, i32* %215, align 4
  %217 = load i64, i64* @PAGE_CACHE_SIZE, align 8
  %218 = call i32 (%struct.TYPE_10__*, i8*, ...) @ntfs_error(%struct.TYPE_10__* %213, i8* getelementptr inbounds ([103 x i8], [103 x i8]* @.str.14, i64 0, i64 0), i32 %216, i64 %217)
  store i32 0, i32* %3, align 4
  br label %400

219:                                              ; preds = %169
  %220 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %221 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %220, i32 0, i32 5
  %222 = load i32, i32* %221, align 4
  %223 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %224 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 8
  %226 = icmp slt i32 %222, %225
  br i1 %226, label %227, label %238

227:                                              ; preds = %219
  %228 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %229 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %228, i32 0, i32 16
  %230 = load %struct.TYPE_10__*, %struct.TYPE_10__** %229, align 8
  %231 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %232 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %231, i32 0, i32 5
  %233 = load i32, i32* %232, align 4
  %234 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %235 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 8
  %237 = call i32 (%struct.TYPE_10__*, i8*, ...) @ntfs_error(%struct.TYPE_10__* %230, i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str.15, i64 0, i64 0), i32 %233, i32 %236)
  store i32 0, i32* %3, align 4
  br label %400

238:                                              ; preds = %219
  %239 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %240 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %239, i32 0, i32 1
  %241 = load i32, i32* %240, align 4
  store i32 %241, i32* %9, align 4
  %242 = load i32, i32* %9, align 4
  %243 = sext i32 %242 to i64
  %244 = load i32, i32* %9, align 4
  %245 = call i32 (i8*, i64, ...) @ntfs_debug(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.16, i64 0, i64 0), i64 %243, i32 %244)
  %246 = load i32, i32* %9, align 4
  %247 = icmp sgt i32 %246, 0
  br i1 %247, label %248, label %258

248:                                              ; preds = %238
  %249 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %250 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %249, i32 0, i32 2
  %251 = load i32, i32* %250, align 8
  %252 = load i32, i32* %9, align 4
  %253 = call i32 @ffs(i32 %252)
  %254 = sub nsw i32 %253, 1
  %255 = shl i32 %251, %254
  %256 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %257 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %256, i32 0, i32 8
  store i32 %255, i32* %257, align 8
  br label %264

258:                                              ; preds = %238
  %259 = load i32, i32* %9, align 4
  %260 = sub nsw i32 0, %259
  %261 = shl i32 1, %260
  %262 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %263 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %262, i32 0, i32 8
  store i32 %261, i32* %263, align 8
  br label %264

264:                                              ; preds = %258, %248
  %265 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %266 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %265, i32 0, i32 8
  %267 = load i32, i32* %266, align 8
  %268 = sub nsw i32 %267, 1
  %269 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %270 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %269, i32 0, i32 9
  store i32 %268, i32* %270, align 4
  %271 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %272 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %271, i32 0, i32 8
  %273 = load i32, i32* %272, align 8
  %274 = call i32 @ffs(i32 %273)
  %275 = sub nsw i32 %274, 1
  %276 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %277 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %276, i32 0, i32 10
  store i32 %275, i32* %277, align 8
  %278 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %279 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %278, i32 0, i32 8
  %280 = load i32, i32* %279, align 8
  %281 = sext i32 %280 to i64
  %282 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %283 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %282, i32 0, i32 8
  %284 = load i32, i32* %283, align 8
  %285 = call i32 (i8*, i64, ...) @ntfs_debug(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.17, i64 0, i64 0), i64 %281, i32 %284)
  %286 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %287 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %286, i32 0, i32 9
  %288 = load i32, i32* %287, align 4
  %289 = sext i32 %288 to i64
  %290 = call i32 (i8*, i64, ...) @ntfs_debug(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.18, i64 0, i64 0), i64 %289)
  %291 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %292 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %291, i32 0, i32 10
  %293 = load i32, i32* %292, align 8
  %294 = sext i32 %293 to i64
  %295 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %296 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %295, i32 0, i32 10
  %297 = load i32, i32* %296, align 8
  %298 = call i32 (i8*, i64, ...) @ntfs_debug(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.19, i64 0, i64 0), i64 %294, i32 %297)
  %299 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %300 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %299, i32 0, i32 8
  %301 = load i32, i32* %300, align 8
  %302 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %303 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %302, i32 0, i32 0
  %304 = load i32, i32* %303, align 8
  %305 = icmp slt i32 %301, %304
  br i1 %305, label %306, label %317

306:                                              ; preds = %264
  %307 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %308 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %307, i32 0, i32 16
  %309 = load %struct.TYPE_10__*, %struct.TYPE_10__** %308, align 8
  %310 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %311 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %310, i32 0, i32 8
  %312 = load i32, i32* %311, align 8
  %313 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %314 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %313, i32 0, i32 0
  %315 = load i32, i32* %314, align 8
  %316 = call i32 (%struct.TYPE_10__*, i8*, ...) @ntfs_error(%struct.TYPE_10__* %309, i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str.20, i64 0, i64 0), i32 %312, i32 %315)
  store i32 0, i32* %3, align 4
  br label %400

317:                                              ; preds = %264
  %318 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %319 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %318, i32 0, i32 5
  %320 = load i32, i32* %319, align 4
  %321 = call i32 @sle64_to_cpu(i32 %320)
  %322 = load i32, i32* %6, align 4
  %323 = lshr i32 %321, %322
  %324 = zext i32 %323 to i64
  store i64 %324, i64* %10, align 8
  %325 = load i64, i64* %10, align 8
  %326 = icmp uge i64 %325, 4294967296
  br i1 %326, label %327, label %332

327:                                              ; preds = %317
  %328 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %329 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %328, i32 0, i32 16
  %330 = load %struct.TYPE_10__*, %struct.TYPE_10__** %329, align 8
  %331 = call i32 (%struct.TYPE_10__*, i8*, ...) @ntfs_error(%struct.TYPE_10__* %330, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.21, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %400

332:                                              ; preds = %317
  %333 = load i64, i64* %10, align 8
  %334 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %335 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %334, i32 0, i32 11
  store i64 %333, i64* %335, align 8
  %336 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %337 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %336, i32 0, i32 11
  %338 = load i64, i64* %337, align 8
  %339 = call i32 (i8*, i64, ...) @ntfs_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.22, i64 0, i64 0), i64 %338)
  %340 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %341 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %340, i32 0, i32 4
  %342 = load i32, i32* %341, align 8
  %343 = call i32 @sle64_to_cpu(i32 %342)
  %344 = zext i32 %343 to i64
  store i64 %344, i64* %10, align 8
  %345 = load i64, i64* %10, align 8
  %346 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %347 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %346, i32 0, i32 11
  %348 = load i64, i64* %347, align 8
  %349 = icmp uge i64 %345, %348
  br i1 %349, label %350, label %357

350:                                              ; preds = %332
  %351 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %352 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %351, i32 0, i32 16
  %353 = load %struct.TYPE_10__*, %struct.TYPE_10__** %352, align 8
  %354 = load i64, i64* %10, align 8
  %355 = load i64, i64* %10, align 8
  %356 = call i32 (%struct.TYPE_10__*, i8*, ...) @ntfs_error(%struct.TYPE_10__* %353, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.23, i64 0, i64 0), i64 %354, i64 %355)
  store i32 0, i32* %3, align 4
  br label %400

357:                                              ; preds = %332
  %358 = load i64, i64* %10, align 8
  %359 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %360 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %359, i32 0, i32 12
  store i64 %358, i64* %360, align 8
  %361 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %362 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %361, i32 0, i32 12
  %363 = load i64, i64* %362, align 8
  %364 = call i32 (i8*, i64, ...) @ntfs_debug(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.24, i64 0, i64 0), i64 %363)
  %365 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %366 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %365, i32 0, i32 3
  %367 = load i32, i32* %366, align 4
  %368 = call i32 @sle64_to_cpu(i32 %367)
  %369 = zext i32 %368 to i64
  store i64 %369, i64* %10, align 8
  %370 = load i64, i64* %10, align 8
  %371 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %372 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %371, i32 0, i32 11
  %373 = load i64, i64* %372, align 8
  %374 = icmp uge i64 %370, %373
  br i1 %374, label %375, label %382

375:                                              ; preds = %357
  %376 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %377 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %376, i32 0, i32 16
  %378 = load %struct.TYPE_10__*, %struct.TYPE_10__** %377, align 8
  %379 = load i64, i64* %10, align 8
  %380 = load i64, i64* %10, align 8
  %381 = call i32 (%struct.TYPE_10__*, i8*, ...) @ntfs_error(%struct.TYPE_10__* %378, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.25, i64 0, i64 0), i64 %379, i64 %380)
  store i32 0, i32* %3, align 4
  br label %400

382:                                              ; preds = %357
  %383 = load i64, i64* %10, align 8
  %384 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %385 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %384, i32 0, i32 13
  store i64 %383, i64* %385, align 8
  %386 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %387 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %386, i32 0, i32 13
  %388 = load i64, i64* %387, align 8
  %389 = call i32 (i8*, i64, ...) @ntfs_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.26, i64 0, i64 0), i64 %388)
  %390 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %391 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %390, i32 0, i32 2
  %392 = load i32, i32* %391, align 8
  %393 = call i64 @le64_to_cpu(i32 %392)
  %394 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %395 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %394, i32 0, i32 15
  store i64 %393, i64* %395, align 8
  %396 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %397 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %396, i32 0, i32 15
  %398 = load i64, i64* %397, align 8
  %399 = call i32 (i8*, i64, ...) @ntfs_debug(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.27, i64 0, i64 0), i64 %398)
  store i32 1, i32* %3, align 4
  br label %400

400:                                              ; preds = %382, %375, %350, %327, %306, %227, %210, %132, %50
  %401 = load i32, i32* %3, align 4
  ret i32 %401
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @ffs(i32) #1

declare dso_local i32 @ntfs_debug(i8*, i64, ...) #1

declare dso_local i32 @ntfs_error(%struct.TYPE_10__*, i8*, ...) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @sle64_to_cpu(i32) #1

declare dso_local i64 @le64_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
