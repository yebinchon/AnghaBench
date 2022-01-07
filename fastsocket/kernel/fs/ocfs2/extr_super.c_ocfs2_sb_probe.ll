; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_super.c_ocfs2_sb_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_super.c_ocfs2_sb_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.buffer_head = type { i64 }
%struct.ocfs2_blockcheck_stats = type { i32 }
%struct.ocfs1_vol_disk_hdr = type { i32, i32, i32 }
%struct.ocfs2_dinode = type { i32 }

@OCFS2_MAX_BLOCKSIZE = common dso_local global i32 0, align 4
@ML_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Hardware sector size too large: %d (max=%d)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@OCFS2_MIN_BLOCKSIZE = common dso_local global i32 0, align 4
@OCFS1_MAJOR_VERSION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"incompatible version: %u.%u\0A\00", align 1
@OCFS1_VOLUME_SIGNATURE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"incompatible volume signature: %8s\0A\00", align 1
@.str.3 = private unnamed_addr constant [83 x i8] c"This is an ocfs v1 filesystem which must be upgraded before mounting with ocfs v2\0A\00", align 1
@OCFS2_SUPER_BLOCK_BLKNO = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, %struct.buffer_head**, i32*, %struct.ocfs2_blockcheck_stats*)* @ocfs2_sb_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_sb_probe(%struct.super_block* %0, %struct.buffer_head** %1, i32* %2, %struct.ocfs2_blockcheck_stats* %3) #0 {
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca %struct.buffer_head**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.ocfs2_blockcheck_stats*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ocfs1_vol_disk_hdr*, align 8
  %12 = alloca %struct.ocfs2_dinode*, align 8
  %13 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store %struct.buffer_head** %1, %struct.buffer_head*** %6, align 8
  store i32* %2, i32** %7, align 8
  store %struct.ocfs2_blockcheck_stats* %3, %struct.ocfs2_blockcheck_stats** %8, align 8
  %14 = load %struct.buffer_head**, %struct.buffer_head*** %6, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %14, align 8
  %15 = load %struct.super_block*, %struct.super_block** %5, align 8
  %16 = getelementptr inbounds %struct.super_block, %struct.super_block* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @bdev_logical_block_size(i32 %17)
  %19 = load i32*, i32** %7, align 8
  store i32 %18, i32* %19, align 4
  %20 = load i32*, i32** %7, align 8
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @OCFS2_MAX_BLOCKSIZE, align 4
  %23 = icmp sgt i32 %21, %22
  br i1 %23, label %24, label %32

24:                                               ; preds = %4
  %25 = load i32, i32* @ML_ERROR, align 4
  %26 = load i32*, i32** %7, align 8
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @OCFS2_MAX_BLOCKSIZE, align 4
  %29 = call i32 (i32, i8*, ...) @mlog(i32 %25, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %27, i32 %28)
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %9, align 4
  br label %157

32:                                               ; preds = %4
  %33 = load i32*, i32** %7, align 8
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @OCFS2_MIN_BLOCKSIZE, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = load i32, i32* @OCFS2_MIN_BLOCKSIZE, align 4
  %39 = load i32*, i32** %7, align 8
  store i32 %38, i32* %39, align 4
  br label %40

40:                                               ; preds = %37, %32
  %41 = load %struct.super_block*, %struct.super_block** %5, align 8
  %42 = load %struct.buffer_head**, %struct.buffer_head*** %6, align 8
  %43 = load i32*, i32** %7, align 8
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @ocfs2_get_sector(%struct.super_block* %41, %struct.buffer_head** %42, i32 0, i32 %44)
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %9, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %40
  %49 = load i32, i32* %9, align 4
  %50 = call i32 @mlog_errno(i32 %49)
  br label %157

51:                                               ; preds = %40
  %52 = load %struct.buffer_head**, %struct.buffer_head*** %6, align 8
  %53 = load %struct.buffer_head*, %struct.buffer_head** %52, align 8
  %54 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = inttoptr i64 %55 to %struct.ocfs1_vol_disk_hdr*
  store %struct.ocfs1_vol_disk_hdr* %56, %struct.ocfs1_vol_disk_hdr** %11, align 8
  %57 = load %struct.ocfs1_vol_disk_hdr*, %struct.ocfs1_vol_disk_hdr** %11, align 8
  %58 = getelementptr inbounds %struct.ocfs1_vol_disk_hdr, %struct.ocfs1_vol_disk_hdr* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @OCFS1_MAJOR_VERSION, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %73

62:                                               ; preds = %51
  %63 = load i32, i32* @ML_ERROR, align 4
  %64 = load %struct.ocfs1_vol_disk_hdr*, %struct.ocfs1_vol_disk_hdr** %11, align 8
  %65 = getelementptr inbounds %struct.ocfs1_vol_disk_hdr, %struct.ocfs1_vol_disk_hdr* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.ocfs1_vol_disk_hdr*, %struct.ocfs1_vol_disk_hdr** %11, align 8
  %68 = getelementptr inbounds %struct.ocfs1_vol_disk_hdr, %struct.ocfs1_vol_disk_hdr* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32 (i32, i8*, ...) @mlog(i32 %63, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %66, i32 %69)
  %71 = load i32, i32* @EINVAL, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %9, align 4
  br label %73

73:                                               ; preds = %62, %51
  %74 = load %struct.ocfs1_vol_disk_hdr*, %struct.ocfs1_vol_disk_hdr** %11, align 8
  %75 = getelementptr inbounds %struct.ocfs1_vol_disk_hdr, %struct.ocfs1_vol_disk_hdr* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @OCFS1_VOLUME_SIGNATURE, align 4
  %78 = load i32, i32* @OCFS1_VOLUME_SIGNATURE, align 4
  %79 = call i32 @strlen(i32 %78)
  %80 = call i64 @memcmp(i32 %76, i32 %77, i32 %79)
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %82, label %90

82:                                               ; preds = %73
  %83 = load i32, i32* @ML_ERROR, align 4
  %84 = load %struct.ocfs1_vol_disk_hdr*, %struct.ocfs1_vol_disk_hdr** %11, align 8
  %85 = getelementptr inbounds %struct.ocfs1_vol_disk_hdr, %struct.ocfs1_vol_disk_hdr* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 (i32, i8*, ...) @mlog(i32 %83, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %86)
  %88 = load i32, i32* @EINVAL, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %9, align 4
  br label %90

90:                                               ; preds = %82, %73
  %91 = load %struct.buffer_head**, %struct.buffer_head*** %6, align 8
  %92 = load %struct.buffer_head*, %struct.buffer_head** %91, align 8
  %93 = call i32 @brelse(%struct.buffer_head* %92)
  %94 = load %struct.buffer_head**, %struct.buffer_head*** %6, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %94, align 8
  %95 = load i32, i32* %9, align 4
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %90
  %98 = load i32, i32* @ML_ERROR, align 4
  %99 = call i32 (i32, i8*, ...) @mlog(i32 %98, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.3, i64 0, i64 0))
  br label %157

100:                                              ; preds = %90
  %101 = load i32, i32* @EINVAL, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %9, align 4
  %103 = load i32*, i32** %7, align 8
  %104 = load i32, i32* %103, align 4
  store i32 %104, i32* %13, align 4
  br label %105

105:                                              ; preds = %153, %100
  %106 = load i32, i32* %13, align 4
  %107 = load i32, i32* @OCFS2_MAX_BLOCKSIZE, align 4
  %108 = icmp sle i32 %106, %107
  br i1 %108, label %109, label %156

109:                                              ; preds = %105
  %110 = load %struct.super_block*, %struct.super_block** %5, align 8
  %111 = load %struct.buffer_head**, %struct.buffer_head*** %6, align 8
  %112 = load i32, i32* @OCFS2_SUPER_BLOCK_BLKNO, align 4
  %113 = load i32, i32* %13, align 4
  %114 = call i32 @ocfs2_get_sector(%struct.super_block* %110, %struct.buffer_head** %111, i32 %112, i32 %113)
  store i32 %114, i32* %10, align 4
  %115 = load i32, i32* %10, align 4
  %116 = icmp slt i32 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %109
  %118 = load i32, i32* %10, align 4
  store i32 %118, i32* %9, align 4
  %119 = load i32, i32* %9, align 4
  %120 = call i32 @mlog_errno(i32 %119)
  br label %156

121:                                              ; preds = %109
  %122 = load %struct.buffer_head**, %struct.buffer_head*** %6, align 8
  %123 = load %struct.buffer_head*, %struct.buffer_head** %122, align 8
  %124 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = inttoptr i64 %125 to %struct.ocfs2_dinode*
  store %struct.ocfs2_dinode* %126, %struct.ocfs2_dinode** %12, align 8
  %127 = load %struct.ocfs2_blockcheck_stats*, %struct.ocfs2_blockcheck_stats** %8, align 8
  %128 = call i32 @memset(%struct.ocfs2_blockcheck_stats* %127, i32 0, i32 4)
  %129 = load %struct.ocfs2_blockcheck_stats*, %struct.ocfs2_blockcheck_stats** %8, align 8
  %130 = getelementptr inbounds %struct.ocfs2_blockcheck_stats, %struct.ocfs2_blockcheck_stats* %129, i32 0, i32 0
  %131 = call i32 @spin_lock_init(i32* %130)
  %132 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %12, align 8
  %133 = load %struct.buffer_head**, %struct.buffer_head*** %6, align 8
  %134 = load %struct.buffer_head*, %struct.buffer_head** %133, align 8
  %135 = load i32, i32* %13, align 4
  %136 = load %struct.ocfs2_blockcheck_stats*, %struct.ocfs2_blockcheck_stats** %8, align 8
  %137 = call i32 @ocfs2_verify_volume(%struct.ocfs2_dinode* %132, %struct.buffer_head* %134, i32 %135, %struct.ocfs2_blockcheck_stats* %136)
  store i32 %137, i32* %10, align 4
  %138 = load i32, i32* %10, align 4
  %139 = icmp slt i32 %138, 0
  br i1 %139, label %140, label %145

140:                                              ; preds = %121
  %141 = load %struct.buffer_head**, %struct.buffer_head*** %6, align 8
  %142 = load %struct.buffer_head*, %struct.buffer_head** %141, align 8
  %143 = call i32 @brelse(%struct.buffer_head* %142)
  %144 = load %struct.buffer_head**, %struct.buffer_head*** %6, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %144, align 8
  br label %145

145:                                              ; preds = %140, %121
  %146 = load i32, i32* %10, align 4
  %147 = load i32, i32* @EAGAIN, align 4
  %148 = sub nsw i32 0, %147
  %149 = icmp ne i32 %146, %148
  br i1 %149, label %150, label %152

150:                                              ; preds = %145
  %151 = load i32, i32* %10, align 4
  store i32 %151, i32* %9, align 4
  br label %156

152:                                              ; preds = %145
  br label %153

153:                                              ; preds = %152
  %154 = load i32, i32* %13, align 4
  %155 = shl i32 %154, 1
  store i32 %155, i32* %13, align 4
  br label %105

156:                                              ; preds = %150, %117, %105
  br label %157

157:                                              ; preds = %156, %97, %48, %24
  %158 = load i32, i32* %9, align 4
  ret i32 %158
}

declare dso_local i32 @bdev_logical_block_size(i32) #1

declare dso_local i32 @mlog(i32, i8*, ...) #1

declare dso_local i32 @ocfs2_get_sector(%struct.super_block*, %struct.buffer_head**, i32, i32) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i64 @memcmp(i32, i32, i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @memset(%struct.ocfs2_blockcheck_stats*, i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @ocfs2_verify_volume(%struct.ocfs2_dinode*, %struct.buffer_head*, i32, %struct.ocfs2_blockcheck_stats*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
