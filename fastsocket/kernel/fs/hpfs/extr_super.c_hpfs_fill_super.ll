; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/hpfs/extr_super.c_hpfs_fill_super.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/hpfs/extr_super.c_hpfs_fill_super.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32, %struct.hpfs_sb_info*, i32, i32*, i32 }
%struct.hpfs_sb_info = type { i32, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.hpfs_sb_info*, %struct.hpfs_sb_info*, i32, i64, i32, i32, i32 }
%struct.buffer_head = type { i32 }
%struct.hpfs_boot_block = type { i32 }
%struct.hpfs_super_block = type { i64, i32, i32, i64, i64, i64, i64, i64, i32, i64 }
%struct.hpfs_spare_block = type { i64, i32, i64, i64, i32, i64, i64, i64, i64 }
%struct.inode = type { i32, i32, i32, %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i64, i8* }
%struct.TYPE_6__ = type { i64, i8* }
%struct.TYPE_5__ = type { i64, i8* }
%struct.hpfs_dirent = type { i32, i32, i32, i32 }
%struct.quad_buffer_head = type { i32 }
%struct.TYPE_8__ = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CONV_BINARY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"HPFS: bad mount options.\0A\00", align 1
@SB_MAGIC = common dso_local global i64 0, align 8
@SP_MAGIC = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [39 x i8] c"HPFS: Bad magic ... probably not HPFS\0A\00", align 1
@MS_RDONLY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [54 x i8] c"HPFS: Bad version %d,%d. Mount readonly to go around\0A\00", align 1
@.str.3 = private unnamed_addr constant [213 x i8] c"HPFS: please try recent version of HPFS driver at http://artax.karlin.mff.cuni.cz/~mikulas/vyplody/hpfs/index-e.cgi and if it still can't understand this format, contact author - mikulas@artax.karlin.mff.cuni.cz\0A\00", align 1
@MS_NOATIME = common dso_local global i32 0, align 4
@HPFS_SUPER_MAGIC = common dso_local global i32 0, align 4
@hpfs_sops = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [39 x i8] c"HPFS: Improperly stopped, not mounted\0A\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"improperly stopped\00", align 1
@.str.6 = private unnamed_addr constant [47 x i8] c"HPFS: Hotfixes not supported here, try chkdsk\0A\00", align 1
@.str.7 = private unnamed_addr constant [40 x i8] c"hotfixes not supported here, try chkdsk\00", align 1
@.str.8 = private unnamed_addr constant [84 x i8] c"HPFS: Proceeding, but your filesystem will be probably corrupted by this driver...\0A\00", align 1
@.str.9 = private unnamed_addr constant [85 x i8] c"HPFS: This driver may read bad files or crash when operating on disk with hotfixes.\0A\00", align 1
@.str.10 = private unnamed_addr constant [37 x i8] c"HPFS: Spare dnodes used, try chkdsk\0A\00", align 1
@.str.11 = private unnamed_addr constant [39 x i8] c"warning: spare dnodes used, try chkdsk\00", align 1
@.str.12 = private unnamed_addr constant [93 x i8] c"HPFS: Proceeding, but your filesystem could be corrupted if you delete files or directories\0A\00", align 1
@.str.13 = private unnamed_addr constant [83 x i8] c"dir band size mismatch: dir_band_start==%08x, dir_band_end==%08x, n_dir_band==%08x\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"dir_band\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"dir_band_bitmap\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"bitmaps\00", align 1
@.str.17 = private unnamed_addr constant [58 x i8] c"HPFS: You really don't want any checks? You are crazy...\0A\00", align 1
@.str.18 = private unnamed_addr constant [46 x i8] c"HPFS: Warning: code page support is disabled\0A\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c"\01\01\00", align 1
@.str.20 = private unnamed_addr constant [24 x i8] c"unable to find root dir\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, i8*, i32)* @hpfs_fill_super to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hpfs_fill_super(%struct.super_block* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.buffer_head*, align 8
  %9 = alloca %struct.buffer_head*, align 8
  %10 = alloca %struct.buffer_head*, align 8
  %11 = alloca %struct.hpfs_boot_block*, align 8
  %12 = alloca %struct.hpfs_super_block*, align 8
  %13 = alloca %struct.hpfs_spare_block*, align 8
  %14 = alloca %struct.hpfs_sb_info*, align 8
  %15 = alloca %struct.inode*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i64, align 8
  %27 = alloca %struct.hpfs_dirent*, align 8
  %28 = alloca %struct.quad_buffer_head, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.hpfs_dirent* null, %struct.hpfs_dirent** %27, align 8
  %31 = load %struct.super_block*, %struct.super_block** %5, align 8
  %32 = load i8*, i8** %6, align 8
  %33 = call i32 @save_mount_options(%struct.super_block* %31, i8* %32)
  %34 = load i32, i32* @GFP_KERNEL, align 4
  %35 = call %struct.hpfs_sb_info* @kzalloc(i32 136, i32 %34)
  store %struct.hpfs_sb_info* %35, %struct.hpfs_sb_info** %14, align 8
  %36 = load %struct.hpfs_sb_info*, %struct.hpfs_sb_info** %14, align 8
  %37 = icmp ne %struct.hpfs_sb_info* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %3
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  br label %552

41:                                               ; preds = %3
  %42 = load %struct.hpfs_sb_info*, %struct.hpfs_sb_info** %14, align 8
  %43 = load %struct.super_block*, %struct.super_block** %5, align 8
  %44 = getelementptr inbounds %struct.super_block, %struct.super_block* %43, i32 0, i32 1
  store %struct.hpfs_sb_info* %42, %struct.hpfs_sb_info** %44, align 8
  %45 = load %struct.hpfs_sb_info*, %struct.hpfs_sb_info** %14, align 8
  %46 = getelementptr inbounds %struct.hpfs_sb_info, %struct.hpfs_sb_info* %45, i32 0, i32 18
  store %struct.hpfs_sb_info* null, %struct.hpfs_sb_info** %46, align 8
  %47 = load %struct.hpfs_sb_info*, %struct.hpfs_sb_info** %14, align 8
  %48 = getelementptr inbounds %struct.hpfs_sb_info, %struct.hpfs_sb_info* %47, i32 0, i32 17
  store %struct.hpfs_sb_info* null, %struct.hpfs_sb_info** %48, align 8
  %49 = load %struct.hpfs_sb_info*, %struct.hpfs_sb_info** %14, align 8
  %50 = getelementptr inbounds %struct.hpfs_sb_info, %struct.hpfs_sb_info* %49, i32 0, i32 23
  %51 = call i32 @init_MUTEX(i32* %50)
  %52 = call i32 (...) @current_uid()
  store i32 %52, i32* %16, align 4
  %53 = call i32 (...) @current_gid()
  store i32 %53, i32* %17, align 4
  %54 = call i32 (...) @current_umask()
  store i32 %54, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %55 = load i32, i32* @CONV_BINARY, align 4
  store i32 %55, i32* %20, align 4
  store i32 2, i32* %21, align 4
  store i32 1, i32* %22, align 4
  store i32 1, i32* %23, align 4
  store i32 1, i32* %24, align 4
  store i32 0, i32* %25, align 4
  %56 = load i8*, i8** %6, align 8
  %57 = call i32 @parse_opts(i8* %56, i32* %16, i32* %17, i32* %18, i32* %19, i32* %20, i32* %21, i32* %22, i32* %23, i32* %24, i32* %25)
  store i32 %57, i32* %29, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %61, label %59

59:                                               ; preds = %41
  %60 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %537

61:                                               ; preds = %41
  %62 = load i32, i32* %29, align 4
  %63 = icmp eq i32 %62, 2
  br i1 %63, label %64, label %66

64:                                               ; preds = %61
  %65 = call i32 (...) @hpfs_help()
  br label %537

66:                                               ; preds = %61
  %67 = load %struct.super_block*, %struct.super_block** %5, align 8
  %68 = call i32 @sb_set_blocksize(%struct.super_block* %67, i32 512)
  %69 = load %struct.hpfs_sb_info*, %struct.hpfs_sb_info** %14, align 8
  %70 = getelementptr inbounds %struct.hpfs_sb_info, %struct.hpfs_sb_info* %69, i32 0, i32 0
  store i32 -1, i32* %70, align 8
  %71 = load %struct.super_block*, %struct.super_block** %5, align 8
  %72 = call i8* @hpfs_map_sector(%struct.super_block* %71, i32 0, %struct.buffer_head** %8, i32 0)
  %73 = bitcast i8* %72 to %struct.hpfs_boot_block*
  store %struct.hpfs_boot_block* %73, %struct.hpfs_boot_block** %11, align 8
  %74 = icmp ne %struct.hpfs_boot_block* %73, null
  br i1 %74, label %76, label %75

75:                                               ; preds = %66
  br label %536

76:                                               ; preds = %66
  %77 = load %struct.super_block*, %struct.super_block** %5, align 8
  %78 = call i8* @hpfs_map_sector(%struct.super_block* %77, i32 16, %struct.buffer_head** %9, i32 1)
  %79 = bitcast i8* %78 to %struct.hpfs_super_block*
  store %struct.hpfs_super_block* %79, %struct.hpfs_super_block** %12, align 8
  %80 = icmp ne %struct.hpfs_super_block* %79, null
  br i1 %80, label %82, label %81

81:                                               ; preds = %76
  br label %533

82:                                               ; preds = %76
  %83 = load %struct.super_block*, %struct.super_block** %5, align 8
  %84 = call i8* @hpfs_map_sector(%struct.super_block* %83, i32 17, %struct.buffer_head** %10, i32 0)
  %85 = bitcast i8* %84 to %struct.hpfs_spare_block*
  store %struct.hpfs_spare_block* %85, %struct.hpfs_spare_block** %13, align 8
  %86 = icmp ne %struct.hpfs_spare_block* %85, null
  br i1 %86, label %88, label %87

87:                                               ; preds = %82
  br label %530

88:                                               ; preds = %82
  %89 = load %struct.hpfs_super_block*, %struct.hpfs_super_block** %12, align 8
  %90 = getelementptr inbounds %struct.hpfs_super_block, %struct.hpfs_super_block* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @SB_MAGIC, align 8
  %93 = icmp ne i64 %91, %92
  br i1 %93, label %100, label %94

94:                                               ; preds = %88
  %95 = load %struct.hpfs_spare_block*, %struct.hpfs_spare_block** %13, align 8
  %96 = getelementptr inbounds %struct.hpfs_spare_block, %struct.hpfs_spare_block* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @SP_MAGIC, align 8
  %99 = icmp ne i64 %97, %98
  br i1 %99, label %100, label %106

100:                                              ; preds = %94, %88
  %101 = load i32, i32* %7, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %105, label %103

103:                                              ; preds = %100
  %104 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  br label %105

105:                                              ; preds = %103, %100
  br label %527

106:                                              ; preds = %94
  %107 = load %struct.super_block*, %struct.super_block** %5, align 8
  %108 = getelementptr inbounds %struct.super_block, %struct.super_block* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* @MS_RDONLY, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %133, label %113

113:                                              ; preds = %106
  %114 = load %struct.hpfs_super_block*, %struct.hpfs_super_block** %12, align 8
  %115 = getelementptr inbounds %struct.hpfs_super_block, %struct.hpfs_super_block* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = icmp ne i32 %116, 2
  br i1 %117, label %118, label %133

118:                                              ; preds = %113
  %119 = load %struct.hpfs_super_block*, %struct.hpfs_super_block** %12, align 8
  %120 = getelementptr inbounds %struct.hpfs_super_block, %struct.hpfs_super_block* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = icmp ne i32 %121, 3
  br i1 %122, label %123, label %133

123:                                              ; preds = %118
  %124 = load %struct.hpfs_super_block*, %struct.hpfs_super_block** %12, align 8
  %125 = getelementptr inbounds %struct.hpfs_super_block, %struct.hpfs_super_block* %124, i32 0, i32 9
  %126 = load i64, i64* %125, align 8
  %127 = trunc i64 %126 to i32
  %128 = load %struct.hpfs_super_block*, %struct.hpfs_super_block** %12, align 8
  %129 = getelementptr inbounds %struct.hpfs_super_block, %struct.hpfs_super_block* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 8
  %131 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0), i32 %127, i32 %130)
  %132 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([213 x i8], [213 x i8]* @.str.3, i64 0, i64 0))
  br label %527

133:                                              ; preds = %118, %113, %106
  %134 = load i32, i32* @MS_NOATIME, align 4
  %135 = load %struct.super_block*, %struct.super_block** %5, align 8
  %136 = getelementptr inbounds %struct.super_block, %struct.super_block* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = or i32 %137, %134
  store i32 %138, i32* %136, align 8
  %139 = load i32, i32* @HPFS_SUPER_MAGIC, align 4
  %140 = load %struct.super_block*, %struct.super_block** %5, align 8
  %141 = getelementptr inbounds %struct.super_block, %struct.super_block* %140, i32 0, i32 4
  store i32 %139, i32* %141, align 8
  %142 = load %struct.super_block*, %struct.super_block** %5, align 8
  %143 = getelementptr inbounds %struct.super_block, %struct.super_block* %142, i32 0, i32 3
  store i32* @hpfs_sops, i32** %143, align 8
  %144 = load %struct.hpfs_super_block*, %struct.hpfs_super_block** %12, align 8
  %145 = getelementptr inbounds %struct.hpfs_super_block, %struct.hpfs_super_block* %144, i32 0, i32 8
  %146 = load i32, i32* %145, align 8
  %147 = load %struct.hpfs_sb_info*, %struct.hpfs_sb_info** %14, align 8
  %148 = getelementptr inbounds %struct.hpfs_sb_info, %struct.hpfs_sb_info* %147, i32 0, i32 19
  store i32 %146, i32* %148, align 8
  %149 = load %struct.hpfs_super_block*, %struct.hpfs_super_block** %12, align 8
  %150 = getelementptr inbounds %struct.hpfs_super_block, %struct.hpfs_super_block* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.hpfs_sb_info*, %struct.hpfs_sb_info** %14, align 8
  %153 = getelementptr inbounds %struct.hpfs_sb_info, %struct.hpfs_sb_info* %152, i32 0, i32 0
  store i32 %151, i32* %153, align 8
  %154 = load %struct.hpfs_super_block*, %struct.hpfs_super_block** %12, align 8
  %155 = getelementptr inbounds %struct.hpfs_super_block, %struct.hpfs_super_block* %154, i32 0, i32 3
  %156 = load i64, i64* %155, align 8
  %157 = load %struct.hpfs_sb_info*, %struct.hpfs_sb_info** %14, align 8
  %158 = getelementptr inbounds %struct.hpfs_sb_info, %struct.hpfs_sb_info* %157, i32 0, i32 1
  store i64 %156, i64* %158, align 8
  %159 = load %struct.hpfs_super_block*, %struct.hpfs_super_block** %12, align 8
  %160 = getelementptr inbounds %struct.hpfs_super_block, %struct.hpfs_super_block* %159, i32 0, i32 4
  %161 = load i64, i64* %160, align 8
  %162 = load %struct.hpfs_sb_info*, %struct.hpfs_sb_info** %14, align 8
  %163 = getelementptr inbounds %struct.hpfs_sb_info, %struct.hpfs_sb_info* %162, i32 0, i32 2
  store i64 %161, i64* %163, align 8
  %164 = load %struct.hpfs_super_block*, %struct.hpfs_super_block** %12, align 8
  %165 = getelementptr inbounds %struct.hpfs_super_block, %struct.hpfs_super_block* %164, i32 0, i32 5
  %166 = load i64, i64* %165, align 8
  %167 = load %struct.hpfs_sb_info*, %struct.hpfs_sb_info** %14, align 8
  %168 = getelementptr inbounds %struct.hpfs_sb_info, %struct.hpfs_sb_info* %167, i32 0, i32 3
  store i64 %166, i64* %168, align 8
  %169 = load %struct.hpfs_super_block*, %struct.hpfs_super_block** %12, align 8
  %170 = getelementptr inbounds %struct.hpfs_super_block, %struct.hpfs_super_block* %169, i32 0, i32 6
  %171 = load i64, i64* %170, align 8
  %172 = load %struct.hpfs_sb_info*, %struct.hpfs_sb_info** %14, align 8
  %173 = getelementptr inbounds %struct.hpfs_sb_info, %struct.hpfs_sb_info* %172, i32 0, i32 4
  store i64 %171, i64* %173, align 8
  %174 = load i32, i32* %16, align 4
  %175 = load %struct.hpfs_sb_info*, %struct.hpfs_sb_info** %14, align 8
  %176 = getelementptr inbounds %struct.hpfs_sb_info, %struct.hpfs_sb_info* %175, i32 0, i32 22
  store i32 %174, i32* %176, align 4
  %177 = load i32, i32* %17, align 4
  %178 = load %struct.hpfs_sb_info*, %struct.hpfs_sb_info** %14, align 8
  %179 = getelementptr inbounds %struct.hpfs_sb_info, %struct.hpfs_sb_info* %178, i32 0, i32 21
  store i32 %177, i32* %179, align 8
  %180 = load i32, i32* %18, align 4
  %181 = xor i32 %180, -1
  %182 = and i32 511, %181
  %183 = load %struct.hpfs_sb_info*, %struct.hpfs_sb_info** %14, align 8
  %184 = getelementptr inbounds %struct.hpfs_sb_info, %struct.hpfs_sb_info* %183, i32 0, i32 5
  store i32 %182, i32* %184, align 8
  %185 = load %struct.hpfs_sb_info*, %struct.hpfs_sb_info** %14, align 8
  %186 = getelementptr inbounds %struct.hpfs_sb_info, %struct.hpfs_sb_info* %185, i32 0, i32 6
  store i32 -1, i32* %186, align 4
  %187 = load %struct.hpfs_sb_info*, %struct.hpfs_sb_info** %14, align 8
  %188 = getelementptr inbounds %struct.hpfs_sb_info, %struct.hpfs_sb_info* %187, i32 0, i32 7
  store i32 -1, i32* %188, align 8
  %189 = load i32, i32* %19, align 4
  %190 = load %struct.hpfs_sb_info*, %struct.hpfs_sb_info** %14, align 8
  %191 = getelementptr inbounds %struct.hpfs_sb_info, %struct.hpfs_sb_info* %190, i32 0, i32 8
  store i32 %189, i32* %191, align 4
  %192 = load i32, i32* %20, align 4
  %193 = load %struct.hpfs_sb_info*, %struct.hpfs_sb_info** %14, align 8
  %194 = getelementptr inbounds %struct.hpfs_sb_info, %struct.hpfs_sb_info* %193, i32 0, i32 9
  store i32 %192, i32* %194, align 8
  %195 = load i32, i32* %21, align 4
  %196 = load %struct.hpfs_sb_info*, %struct.hpfs_sb_info** %14, align 8
  %197 = getelementptr inbounds %struct.hpfs_sb_info, %struct.hpfs_sb_info* %196, i32 0, i32 10
  store i32 %195, i32* %197, align 4
  %198 = load i32, i32* %22, align 4
  %199 = load %struct.hpfs_sb_info*, %struct.hpfs_sb_info** %14, align 8
  %200 = getelementptr inbounds %struct.hpfs_sb_info, %struct.hpfs_sb_info* %199, i32 0, i32 11
  store i32 %198, i32* %200, align 8
  %201 = load i32, i32* %24, align 4
  %202 = load %struct.hpfs_sb_info*, %struct.hpfs_sb_info** %14, align 8
  %203 = getelementptr inbounds %struct.hpfs_sb_info, %struct.hpfs_sb_info* %202, i32 0, i32 12
  store i32 %201, i32* %203, align 4
  %204 = load i32, i32* %23, align 4
  %205 = load %struct.hpfs_sb_info*, %struct.hpfs_sb_info** %14, align 8
  %206 = getelementptr inbounds %struct.hpfs_sb_info, %struct.hpfs_sb_info* %205, i32 0, i32 13
  store i32 %204, i32* %206, align 8
  %207 = load i32, i32* %25, align 4
  %208 = load %struct.hpfs_sb_info*, %struct.hpfs_sb_info** %14, align 8
  %209 = getelementptr inbounds %struct.hpfs_sb_info, %struct.hpfs_sb_info* %208, i32 0, i32 14
  store i32 %207, i32* %209, align 4
  %210 = load %struct.hpfs_sb_info*, %struct.hpfs_sb_info** %14, align 8
  %211 = getelementptr inbounds %struct.hpfs_sb_info, %struct.hpfs_sb_info* %210, i32 0, i32 20
  store i64 0, i64* %211, align 8
  %212 = load %struct.hpfs_sb_info*, %struct.hpfs_sb_info** %14, align 8
  %213 = getelementptr inbounds %struct.hpfs_sb_info, %struct.hpfs_sb_info* %212, i32 0, i32 17
  store %struct.hpfs_sb_info* null, %struct.hpfs_sb_info** %213, align 8
  %214 = load %struct.hpfs_sb_info*, %struct.hpfs_sb_info** %14, align 8
  %215 = getelementptr inbounds %struct.hpfs_sb_info, %struct.hpfs_sb_info* %214, i32 0, i32 15
  store i32 -1, i32* %215, align 8
  %216 = load %struct.hpfs_sb_info*, %struct.hpfs_sb_info** %14, align 8
  %217 = getelementptr inbounds %struct.hpfs_sb_info, %struct.hpfs_sb_info* %216, i32 0, i32 16
  store i32 16777215, i32* %217, align 4
  %218 = load %struct.super_block*, %struct.super_block** %5, align 8
  %219 = load %struct.hpfs_super_block*, %struct.hpfs_super_block** %12, align 8
  %220 = getelementptr inbounds %struct.hpfs_super_block, %struct.hpfs_super_block* %219, i32 0, i32 3
  %221 = load i64, i64* %220, align 8
  %222 = call %struct.hpfs_sb_info* @hpfs_load_bitmap_directory(%struct.super_block* %218, i64 %221)
  %223 = load %struct.hpfs_sb_info*, %struct.hpfs_sb_info** %14, align 8
  %224 = getelementptr inbounds %struct.hpfs_sb_info, %struct.hpfs_sb_info* %223, i32 0, i32 18
  store %struct.hpfs_sb_info* %222, %struct.hpfs_sb_info** %224, align 8
  %225 = icmp ne %struct.hpfs_sb_info* %222, null
  br i1 %225, label %227, label %226

226:                                              ; preds = %133
  br label %527

227:                                              ; preds = %133
  %228 = load %struct.hpfs_spare_block*, %struct.hpfs_spare_block** %13, align 8
  %229 = getelementptr inbounds %struct.hpfs_spare_block, %struct.hpfs_spare_block* %228, i32 0, i32 1
  %230 = load i32, i32* %229, align 8
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %245

232:                                              ; preds = %227
  %233 = load %struct.hpfs_spare_block*, %struct.hpfs_spare_block** %13, align 8
  %234 = getelementptr inbounds %struct.hpfs_spare_block, %struct.hpfs_spare_block* %233, i32 0, i32 8
  %235 = load i64, i64* %234, align 8
  %236 = icmp ne i64 %235, 0
  br i1 %236, label %245, label %237

237:                                              ; preds = %232
  %238 = load i32, i32* %23, align 4
  %239 = icmp eq i32 %238, 2
  br i1 %239, label %240, label %242

240:                                              ; preds = %237
  %241 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0))
  br label %527

242:                                              ; preds = %237
  %243 = load %struct.super_block*, %struct.super_block** %5, align 8
  %244 = call i32 (%struct.super_block*, i8*, ...) @hpfs_error(%struct.super_block* %243, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  br label %245

245:                                              ; preds = %242, %232, %227
  %246 = load %struct.super_block*, %struct.super_block** %5, align 8
  %247 = getelementptr inbounds %struct.super_block, %struct.super_block* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 8
  %249 = load i32, i32* @MS_RDONLY, align 4
  %250 = and i32 %248, %249
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %259, label %252

252:                                              ; preds = %245
  %253 = load %struct.hpfs_spare_block*, %struct.hpfs_spare_block** %13, align 8
  %254 = getelementptr inbounds %struct.hpfs_spare_block, %struct.hpfs_spare_block* %253, i32 0, i32 1
  store i32 1, i32* %254, align 8
  %255 = load %struct.hpfs_spare_block*, %struct.hpfs_spare_block** %13, align 8
  %256 = getelementptr inbounds %struct.hpfs_spare_block, %struct.hpfs_spare_block* %255, i32 0, i32 8
  store i64 0, i64* %256, align 8
  %257 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %258 = call i32 @mark_buffer_dirty(%struct.buffer_head* %257)
  br label %259

259:                                              ; preds = %252, %245
  %260 = load %struct.hpfs_spare_block*, %struct.hpfs_spare_block** %13, align 8
  %261 = getelementptr inbounds %struct.hpfs_spare_block, %struct.hpfs_spare_block* %260, i32 0, i32 7
  %262 = load i64, i64* %261, align 8
  %263 = icmp ne i64 %262, 0
  br i1 %263, label %269, label %264

264:                                              ; preds = %259
  %265 = load %struct.hpfs_spare_block*, %struct.hpfs_spare_block** %13, align 8
  %266 = getelementptr inbounds %struct.hpfs_spare_block, %struct.hpfs_spare_block* %265, i32 0, i32 6
  %267 = load i64, i64* %266, align 8
  %268 = icmp ne i64 %267, 0
  br i1 %268, label %269, label %286

269:                                              ; preds = %264, %259
  %270 = load i32, i32* %23, align 4
  %271 = icmp sge i32 %270, 2
  br i1 %271, label %272, label %276

272:                                              ; preds = %269
  %273 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.6, i64 0, i64 0))
  %274 = load %struct.super_block*, %struct.super_block** %5, align 8
  %275 = call i32 @mark_dirty(%struct.super_block* %274)
  br label %527

276:                                              ; preds = %269
  %277 = load %struct.super_block*, %struct.super_block** %5, align 8
  %278 = call i32 (%struct.super_block*, i8*, ...) @hpfs_error(%struct.super_block* %277, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i64 0, i64 0))
  %279 = load i32, i32* %23, align 4
  %280 = icmp eq i32 %279, 0
  br i1 %280, label %281, label %283

281:                                              ; preds = %276
  %282 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.8, i64 0, i64 0))
  br label %285

283:                                              ; preds = %276
  %284 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.9, i64 0, i64 0))
  br label %285

285:                                              ; preds = %283, %281
  br label %286

286:                                              ; preds = %285, %264
  %287 = load %struct.hpfs_spare_block*, %struct.hpfs_spare_block** %13, align 8
  %288 = getelementptr inbounds %struct.hpfs_spare_block, %struct.hpfs_spare_block* %287, i32 0, i32 2
  %289 = load i64, i64* %288, align 8
  %290 = load %struct.hpfs_spare_block*, %struct.hpfs_spare_block** %13, align 8
  %291 = getelementptr inbounds %struct.hpfs_spare_block, %struct.hpfs_spare_block* %290, i32 0, i32 3
  %292 = load i64, i64* %291, align 8
  %293 = icmp ne i64 %289, %292
  br i1 %293, label %294, label %309

294:                                              ; preds = %286
  %295 = load i32, i32* %23, align 4
  %296 = icmp sge i32 %295, 2
  br i1 %296, label %297, label %301

297:                                              ; preds = %294
  %298 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.10, i64 0, i64 0))
  %299 = load %struct.super_block*, %struct.super_block** %5, align 8
  %300 = call i32 @mark_dirty(%struct.super_block* %299)
  br label %527

301:                                              ; preds = %294
  %302 = load %struct.super_block*, %struct.super_block** %5, align 8
  %303 = call i32 (%struct.super_block*, i8*, ...) @hpfs_error(%struct.super_block* %302, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.11, i64 0, i64 0))
  %304 = load i32, i32* %23, align 4
  %305 = icmp eq i32 %304, 0
  br i1 %305, label %306, label %308

306:                                              ; preds = %301
  %307 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str.12, i64 0, i64 0))
  br label %308

308:                                              ; preds = %306, %301
  br label %309

309:                                              ; preds = %308, %286
  %310 = load i32, i32* %22, align 4
  %311 = icmp ne i32 %310, 0
  br i1 %311, label %312, label %389

312:                                              ; preds = %309
  %313 = load %struct.hpfs_super_block*, %struct.hpfs_super_block** %12, align 8
  %314 = getelementptr inbounds %struct.hpfs_super_block, %struct.hpfs_super_block* %313, i32 0, i32 7
  %315 = load i64, i64* %314, align 8
  %316 = load %struct.hpfs_super_block*, %struct.hpfs_super_block** %12, align 8
  %317 = getelementptr inbounds %struct.hpfs_super_block, %struct.hpfs_super_block* %316, i32 0, i32 4
  %318 = load i64, i64* %317, align 8
  %319 = sub nsw i64 %315, %318
  %320 = add nsw i64 %319, 1
  %321 = load %struct.hpfs_super_block*, %struct.hpfs_super_block** %12, align 8
  %322 = getelementptr inbounds %struct.hpfs_super_block, %struct.hpfs_super_block* %321, i32 0, i32 5
  %323 = load i64, i64* %322, align 8
  %324 = icmp ne i64 %320, %323
  br i1 %324, label %338, label %325

325:                                              ; preds = %312
  %326 = load %struct.hpfs_super_block*, %struct.hpfs_super_block** %12, align 8
  %327 = getelementptr inbounds %struct.hpfs_super_block, %struct.hpfs_super_block* %326, i32 0, i32 7
  %328 = load i64, i64* %327, align 8
  %329 = load %struct.hpfs_super_block*, %struct.hpfs_super_block** %12, align 8
  %330 = getelementptr inbounds %struct.hpfs_super_block, %struct.hpfs_super_block* %329, i32 0, i32 4
  %331 = load i64, i64* %330, align 8
  %332 = icmp slt i64 %328, %331
  br i1 %332, label %338, label %333

333:                                              ; preds = %325
  %334 = load %struct.hpfs_super_block*, %struct.hpfs_super_block** %12, align 8
  %335 = getelementptr inbounds %struct.hpfs_super_block, %struct.hpfs_super_block* %334, i32 0, i32 5
  %336 = load i64, i64* %335, align 8
  %337 = icmp sgt i64 %336, 16384
  br i1 %337, label %338, label %350

338:                                              ; preds = %333, %325, %312
  %339 = load %struct.super_block*, %struct.super_block** %5, align 8
  %340 = load %struct.hpfs_super_block*, %struct.hpfs_super_block** %12, align 8
  %341 = getelementptr inbounds %struct.hpfs_super_block, %struct.hpfs_super_block* %340, i32 0, i32 4
  %342 = load i64, i64* %341, align 8
  %343 = load %struct.hpfs_super_block*, %struct.hpfs_super_block** %12, align 8
  %344 = getelementptr inbounds %struct.hpfs_super_block, %struct.hpfs_super_block* %343, i32 0, i32 7
  %345 = load i64, i64* %344, align 8
  %346 = load %struct.hpfs_super_block*, %struct.hpfs_super_block** %12, align 8
  %347 = getelementptr inbounds %struct.hpfs_super_block, %struct.hpfs_super_block* %346, i32 0, i32 5
  %348 = load i64, i64* %347, align 8
  %349 = call i32 (%struct.super_block*, i8*, ...) @hpfs_error(%struct.super_block* %339, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.13, i64 0, i64 0), i64 %342, i64 %345, i64 %348)
  br label %527

350:                                              ; preds = %333
  %351 = load %struct.hpfs_sb_info*, %struct.hpfs_sb_info** %14, align 8
  %352 = getelementptr inbounds %struct.hpfs_sb_info, %struct.hpfs_sb_info* %351, i32 0, i32 3
  %353 = load i64, i64* %352, align 8
  %354 = trunc i64 %353 to i32
  store i32 %354, i32* %30, align 4
  %355 = load %struct.hpfs_sb_info*, %struct.hpfs_sb_info** %14, align 8
  %356 = getelementptr inbounds %struct.hpfs_sb_info, %struct.hpfs_sb_info* %355, i32 0, i32 3
  store i64 0, i64* %356, align 8
  %357 = load %struct.super_block*, %struct.super_block** %5, align 8
  %358 = load %struct.hpfs_super_block*, %struct.hpfs_super_block** %12, align 8
  %359 = getelementptr inbounds %struct.hpfs_super_block, %struct.hpfs_super_block* %358, i32 0, i32 4
  %360 = load i64, i64* %359, align 8
  %361 = load %struct.hpfs_super_block*, %struct.hpfs_super_block** %12, align 8
  %362 = getelementptr inbounds %struct.hpfs_super_block, %struct.hpfs_super_block* %361, i32 0, i32 5
  %363 = load i64, i64* %362, align 8
  %364 = trunc i64 %363 to i32
  %365 = call i64 @hpfs_chk_sectors(%struct.super_block* %357, i64 %360, i32 %364, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i64 0, i64 0))
  %366 = icmp ne i64 %365, 0
  br i1 %366, label %381, label %367

367:                                              ; preds = %350
  %368 = load %struct.super_block*, %struct.super_block** %5, align 8
  %369 = load %struct.hpfs_super_block*, %struct.hpfs_super_block** %12, align 8
  %370 = getelementptr inbounds %struct.hpfs_super_block, %struct.hpfs_super_block* %369, i32 0, i32 6
  %371 = load i64, i64* %370, align 8
  %372 = call i64 @hpfs_chk_sectors(%struct.super_block* %368, i64 %371, i32 4, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i64 0, i64 0))
  %373 = icmp ne i64 %372, 0
  br i1 %373, label %381, label %374

374:                                              ; preds = %367
  %375 = load %struct.super_block*, %struct.super_block** %5, align 8
  %376 = load %struct.hpfs_super_block*, %struct.hpfs_super_block** %12, align 8
  %377 = getelementptr inbounds %struct.hpfs_super_block, %struct.hpfs_super_block* %376, i32 0, i32 3
  %378 = load i64, i64* %377, align 8
  %379 = call i64 @hpfs_chk_sectors(%struct.super_block* %375, i64 %378, i32 4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i64 0, i64 0))
  %380 = icmp ne i64 %379, 0
  br i1 %380, label %381, label %384

381:                                              ; preds = %374, %367, %350
  %382 = load %struct.super_block*, %struct.super_block** %5, align 8
  %383 = call i32 @mark_dirty(%struct.super_block* %382)
  br label %527

384:                                              ; preds = %374
  %385 = load i32, i32* %30, align 4
  %386 = zext i32 %385 to i64
  %387 = load %struct.hpfs_sb_info*, %struct.hpfs_sb_info** %14, align 8
  %388 = getelementptr inbounds %struct.hpfs_sb_info, %struct.hpfs_sb_info* %387, i32 0, i32 3
  store i64 %386, i64* %388, align 8
  br label %391

389:                                              ; preds = %309
  %390 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.17, i64 0, i64 0))
  br label %391

391:                                              ; preds = %389, %384
  %392 = load %struct.hpfs_spare_block*, %struct.hpfs_spare_block** %13, align 8
  %393 = getelementptr inbounds %struct.hpfs_spare_block, %struct.hpfs_spare_block* %392, i32 0, i32 5
  %394 = load i64, i64* %393, align 8
  %395 = icmp ne i64 %394, 0
  br i1 %395, label %396, label %408

396:                                              ; preds = %391
  %397 = load %struct.super_block*, %struct.super_block** %5, align 8
  %398 = load %struct.hpfs_spare_block*, %struct.hpfs_spare_block** %13, align 8
  %399 = getelementptr inbounds %struct.hpfs_spare_block, %struct.hpfs_spare_block* %398, i32 0, i32 4
  %400 = load i32, i32* %399, align 8
  %401 = call %struct.hpfs_sb_info* @hpfs_load_code_page(%struct.super_block* %397, i32 %400)
  %402 = load %struct.hpfs_sb_info*, %struct.hpfs_sb_info** %14, align 8
  %403 = getelementptr inbounds %struct.hpfs_sb_info, %struct.hpfs_sb_info* %402, i32 0, i32 17
  store %struct.hpfs_sb_info* %401, %struct.hpfs_sb_info** %403, align 8
  %404 = icmp ne %struct.hpfs_sb_info* %401, null
  br i1 %404, label %407, label %405

405:                                              ; preds = %396
  %406 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.18, i64 0, i64 0))
  br label %407

407:                                              ; preds = %405, %396
  br label %408

408:                                              ; preds = %407, %391
  %409 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %410 = call i32 @brelse(%struct.buffer_head* %409)
  %411 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %412 = call i32 @brelse(%struct.buffer_head* %411)
  %413 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %414 = call i32 @brelse(%struct.buffer_head* %413)
  %415 = load %struct.super_block*, %struct.super_block** %5, align 8
  %416 = load %struct.hpfs_sb_info*, %struct.hpfs_sb_info** %14, align 8
  %417 = getelementptr inbounds %struct.hpfs_sb_info, %struct.hpfs_sb_info* %416, i32 0, i32 19
  %418 = load i32, i32* %417, align 8
  %419 = call %struct.inode* @iget_locked(%struct.super_block* %415, i32 %418)
  store %struct.inode* %419, %struct.inode** %15, align 8
  %420 = load %struct.inode*, %struct.inode** %15, align 8
  %421 = icmp ne %struct.inode* %420, null
  br i1 %421, label %423, label %422

422:                                              ; preds = %408
  br label %537

423:                                              ; preds = %408
  %424 = load %struct.inode*, %struct.inode** %15, align 8
  %425 = call i32 @hpfs_init_inode(%struct.inode* %424)
  %426 = load %struct.inode*, %struct.inode** %15, align 8
  %427 = call i32 @hpfs_read_inode(%struct.inode* %426)
  %428 = load %struct.inode*, %struct.inode** %15, align 8
  %429 = call i32 @unlock_new_inode(%struct.inode* %428)
  %430 = load %struct.inode*, %struct.inode** %15, align 8
  %431 = call i32 @d_alloc_root(%struct.inode* %430)
  %432 = load %struct.super_block*, %struct.super_block** %5, align 8
  %433 = getelementptr inbounds %struct.super_block, %struct.super_block* %432, i32 0, i32 2
  store i32 %431, i32* %433, align 8
  %434 = load %struct.super_block*, %struct.super_block** %5, align 8
  %435 = getelementptr inbounds %struct.super_block, %struct.super_block* %434, i32 0, i32 2
  %436 = load i32, i32* %435, align 8
  %437 = icmp ne i32 %436, 0
  br i1 %437, label %441, label %438

438:                                              ; preds = %423
  %439 = load %struct.inode*, %struct.inode** %15, align 8
  %440 = call i32 @iput(%struct.inode* %439)
  br label %537

441:                                              ; preds = %423
  %442 = load %struct.super_block*, %struct.super_block** %5, align 8
  %443 = getelementptr inbounds %struct.super_block, %struct.super_block* %442, i32 0, i32 2
  %444 = load i32, i32* %443, align 8
  %445 = call i32 @hpfs_set_dentry_operations(i32 %444)
  %446 = load %struct.super_block*, %struct.super_block** %5, align 8
  %447 = load %struct.hpfs_sb_info*, %struct.hpfs_sb_info** %14, align 8
  %448 = getelementptr inbounds %struct.hpfs_sb_info, %struct.hpfs_sb_info* %447, i32 0, i32 19
  %449 = load i32, i32* %448, align 8
  %450 = call i64 @hpfs_fnode_dno(%struct.super_block* %446, i32 %449)
  store i64 %450, i64* %26, align 8
  %451 = load i64, i64* %26, align 8
  %452 = icmp ne i64 %451, 0
  br i1 %452, label %453, label %457

453:                                              ; preds = %441
  %454 = load %struct.inode*, %struct.inode** %15, align 8
  %455 = load i64, i64* %26, align 8
  %456 = call %struct.hpfs_dirent* @map_dirent(%struct.inode* %454, i64 %455, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i64 0, i64 0), i32 2, i32* null, %struct.quad_buffer_head* %28)
  store %struct.hpfs_dirent* %456, %struct.hpfs_dirent** %27, align 8
  br label %457

457:                                              ; preds = %453, %441
  %458 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %27, align 8
  %459 = icmp ne %struct.hpfs_dirent* %458, null
  br i1 %459, label %463, label %460

460:                                              ; preds = %457
  %461 = load %struct.super_block*, %struct.super_block** %5, align 8
  %462 = call i32 (%struct.super_block*, i8*, ...) @hpfs_error(%struct.super_block* %461, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.20, i64 0, i64 0))
  br label %526

463:                                              ; preds = %457
  %464 = load %struct.super_block*, %struct.super_block** %5, align 8
  %465 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %27, align 8
  %466 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %465, i32 0, i32 3
  %467 = load i32, i32* %466, align 4
  %468 = call i8* @local_to_gmt(%struct.super_block* %464, i32 %467)
  %469 = load %struct.inode*, %struct.inode** %15, align 8
  %470 = getelementptr inbounds %struct.inode, %struct.inode* %469, i32 0, i32 5
  %471 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %470, i32 0, i32 1
  store i8* %468, i8** %471, align 8
  %472 = load %struct.inode*, %struct.inode** %15, align 8
  %473 = getelementptr inbounds %struct.inode, %struct.inode* %472, i32 0, i32 5
  %474 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %473, i32 0, i32 0
  store i64 0, i64* %474, align 8
  %475 = load %struct.super_block*, %struct.super_block** %5, align 8
  %476 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %27, align 8
  %477 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %476, i32 0, i32 2
  %478 = load i32, i32* %477, align 4
  %479 = call i8* @local_to_gmt(%struct.super_block* %475, i32 %478)
  %480 = load %struct.inode*, %struct.inode** %15, align 8
  %481 = getelementptr inbounds %struct.inode, %struct.inode* %480, i32 0, i32 4
  %482 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %481, i32 0, i32 1
  store i8* %479, i8** %482, align 8
  %483 = load %struct.inode*, %struct.inode** %15, align 8
  %484 = getelementptr inbounds %struct.inode, %struct.inode* %483, i32 0, i32 4
  %485 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %484, i32 0, i32 0
  store i64 0, i64* %485, align 8
  %486 = load %struct.super_block*, %struct.super_block** %5, align 8
  %487 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %27, align 8
  %488 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %487, i32 0, i32 1
  %489 = load i32, i32* %488, align 4
  %490 = call i8* @local_to_gmt(%struct.super_block* %486, i32 %489)
  %491 = load %struct.inode*, %struct.inode** %15, align 8
  %492 = getelementptr inbounds %struct.inode, %struct.inode* %491, i32 0, i32 3
  %493 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %492, i32 0, i32 1
  store i8* %490, i8** %493, align 8
  %494 = load %struct.inode*, %struct.inode** %15, align 8
  %495 = getelementptr inbounds %struct.inode, %struct.inode* %494, i32 0, i32 3
  %496 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %495, i32 0, i32 0
  store i64 0, i64* %496, align 8
  %497 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %27, align 8
  %498 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %497, i32 0, i32 0
  %499 = load i32, i32* %498, align 4
  %500 = load %struct.inode*, %struct.inode** %15, align 8
  %501 = call %struct.TYPE_8__* @hpfs_i(%struct.inode* %500)
  %502 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %501, i32 0, i32 1
  store i32 %499, i32* %502, align 4
  %503 = load %struct.inode*, %struct.inode** %15, align 8
  %504 = getelementptr inbounds %struct.inode, %struct.inode* %503, i32 0, i32 2
  %505 = load i32, i32* %504, align 8
  %506 = load %struct.inode*, %struct.inode** %15, align 8
  %507 = call %struct.TYPE_8__* @hpfs_i(%struct.inode* %506)
  %508 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %507, i32 0, i32 0
  store i32 %505, i32* %508, align 4
  %509 = load %struct.inode*, %struct.inode** %15, align 8
  %510 = getelementptr inbounds %struct.inode, %struct.inode* %509, i32 0, i32 0
  %511 = load i32, i32* %510, align 8
  %512 = icmp eq i32 %511, -1
  br i1 %512, label %513, label %516

513:                                              ; preds = %463
  %514 = load %struct.inode*, %struct.inode** %15, align 8
  %515 = getelementptr inbounds %struct.inode, %struct.inode* %514, i32 0, i32 0
  store i32 2048, i32* %515, align 8
  br label %516

516:                                              ; preds = %513, %463
  %517 = load %struct.inode*, %struct.inode** %15, align 8
  %518 = getelementptr inbounds %struct.inode, %struct.inode* %517, i32 0, i32 1
  %519 = load i32, i32* %518, align 4
  %520 = icmp eq i32 %519, -1
  br i1 %520, label %521, label %524

521:                                              ; preds = %516
  %522 = load %struct.inode*, %struct.inode** %15, align 8
  %523 = getelementptr inbounds %struct.inode, %struct.inode* %522, i32 0, i32 1
  store i32 5, i32* %523, align 4
  br label %524

524:                                              ; preds = %521, %516
  %525 = call i32 @hpfs_brelse4(%struct.quad_buffer_head* %28)
  br label %526

526:                                              ; preds = %524, %460
  store i32 0, i32* %4, align 4
  br label %552

527:                                              ; preds = %381, %338, %297, %272, %240, %226, %123, %105
  %528 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %529 = call i32 @brelse(%struct.buffer_head* %528)
  br label %530

530:                                              ; preds = %527, %87
  %531 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %532 = call i32 @brelse(%struct.buffer_head* %531)
  br label %533

533:                                              ; preds = %530, %81
  %534 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %535 = call i32 @brelse(%struct.buffer_head* %534)
  br label %536

536:                                              ; preds = %533, %75
  br label %537

537:                                              ; preds = %536, %438, %422, %64, %59
  %538 = load %struct.hpfs_sb_info*, %struct.hpfs_sb_info** %14, align 8
  %539 = getelementptr inbounds %struct.hpfs_sb_info, %struct.hpfs_sb_info* %538, i32 0, i32 18
  %540 = load %struct.hpfs_sb_info*, %struct.hpfs_sb_info** %539, align 8
  %541 = call i32 @kfree(%struct.hpfs_sb_info* %540)
  %542 = load %struct.hpfs_sb_info*, %struct.hpfs_sb_info** %14, align 8
  %543 = getelementptr inbounds %struct.hpfs_sb_info, %struct.hpfs_sb_info* %542, i32 0, i32 17
  %544 = load %struct.hpfs_sb_info*, %struct.hpfs_sb_info** %543, align 8
  %545 = call i32 @kfree(%struct.hpfs_sb_info* %544)
  %546 = load %struct.super_block*, %struct.super_block** %5, align 8
  %547 = getelementptr inbounds %struct.super_block, %struct.super_block* %546, i32 0, i32 1
  store %struct.hpfs_sb_info* null, %struct.hpfs_sb_info** %547, align 8
  %548 = load %struct.hpfs_sb_info*, %struct.hpfs_sb_info** %14, align 8
  %549 = call i32 @kfree(%struct.hpfs_sb_info* %548)
  %550 = load i32, i32* @EINVAL, align 4
  %551 = sub nsw i32 0, %550
  store i32 %551, i32* %4, align 4
  br label %552

552:                                              ; preds = %537, %526, %38
  %553 = load i32, i32* %4, align 4
  ret i32 %553
}

declare dso_local i32 @save_mount_options(%struct.super_block*, i8*) #1

declare dso_local %struct.hpfs_sb_info* @kzalloc(i32, i32) #1

declare dso_local i32 @init_MUTEX(i32*) #1

declare dso_local i32 @current_uid(...) #1

declare dso_local i32 @current_gid(...) #1

declare dso_local i32 @current_umask(...) #1

declare dso_local i32 @parse_opts(i8*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i32 @hpfs_help(...) #1

declare dso_local i32 @sb_set_blocksize(%struct.super_block*, i32) #1

declare dso_local i8* @hpfs_map_sector(%struct.super_block*, i32, %struct.buffer_head**, i32) #1

declare dso_local %struct.hpfs_sb_info* @hpfs_load_bitmap_directory(%struct.super_block*, i64) #1

declare dso_local i32 @hpfs_error(%struct.super_block*, i8*, ...) #1

declare dso_local i32 @mark_buffer_dirty(%struct.buffer_head*) #1

declare dso_local i32 @mark_dirty(%struct.super_block*) #1

declare dso_local i64 @hpfs_chk_sectors(%struct.super_block*, i64, i32, i8*) #1

declare dso_local %struct.hpfs_sb_info* @hpfs_load_code_page(%struct.super_block*, i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local %struct.inode* @iget_locked(%struct.super_block*, i32) #1

declare dso_local i32 @hpfs_init_inode(%struct.inode*) #1

declare dso_local i32 @hpfs_read_inode(%struct.inode*) #1

declare dso_local i32 @unlock_new_inode(%struct.inode*) #1

declare dso_local i32 @d_alloc_root(%struct.inode*) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local i32 @hpfs_set_dentry_operations(i32) #1

declare dso_local i64 @hpfs_fnode_dno(%struct.super_block*, i32) #1

declare dso_local %struct.hpfs_dirent* @map_dirent(%struct.inode*, i64, i8*, i32, i32*, %struct.quad_buffer_head*) #1

declare dso_local i8* @local_to_gmt(%struct.super_block*, i32) #1

declare dso_local %struct.TYPE_8__* @hpfs_i(%struct.inode*) #1

declare dso_local i32 @hpfs_brelse4(%struct.quad_buffer_head*) #1

declare dso_local i32 @kfree(%struct.hpfs_sb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
