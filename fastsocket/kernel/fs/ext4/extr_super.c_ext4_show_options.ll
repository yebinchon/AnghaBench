; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_super.c_ext4_show_options.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_super.c_ext4_show_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.vfsmount = type { %struct.super_block* }
%struct.super_block = type { i32 }
%struct.ext4_sb_info = type { i32, i32, i32, i32, i64, i64, i32, i32, i64, %struct.ext4_super_block* }
%struct.ext4_super_block = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c",sb=%llu\00", align 1
@MINIX_DF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c",minixdf\00", align 1
@GRPID = common dso_local global i32 0, align 4
@EXT4_DEFM_BSDGROUPS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [7 x i8] c",grpid\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c",nogrpid\00", align 1
@EXT4_DEF_RESUID = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [11 x i8] c",resuid=%u\00", align 1
@EXT4_DEF_RESGID = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [11 x i8] c",resgid=%u\00", align 1
@ERRORS_RO = common dso_local global i32 0, align 4
@EXT4_ERRORS_PANIC = common dso_local global i32 0, align 4
@EXT4_ERRORS_CONTINUE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [19 x i8] c",errors=remount-ro\00", align 1
@ERRORS_CONT = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [17 x i8] c",errors=continue\00", align 1
@ERRORS_PANIC = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [14 x i8] c",errors=panic\00", align 1
@NO_UID32 = common dso_local global i32 0, align 4
@EXT4_DEFM_UID16 = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [9 x i8] c",nouid32\00", align 1
@DEBUG = common dso_local global i32 0, align 4
@EXT4_DEFM_DEBUG = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [7 x i8] c",debug\00", align 1
@OLDALLOC = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [10 x i8] c",oldalloc\00", align 1
@JBD2_DEFAULT_MAX_COMMIT_AGE = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [11 x i8] c",commit=%u\00", align 1
@EXT4_DEF_MIN_BATCH_TIME = common dso_local global i64 0, align 8
@.str.13 = private unnamed_addr constant [19 x i8] c",min_batch_time=%u\00", align 1
@EXT4_DEF_MAX_BATCH_TIME = common dso_local global i64 0, align 8
@.str.14 = private unnamed_addr constant [19 x i8] c",max_batch_time=%u\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c",barrier=\00", align 1
@BARRIER = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@JOURNAL_ASYNC_COMMIT = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [22 x i8] c",journal_async_commit\00", align 1
@NOBH = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [6 x i8] c",nobh\00", align 1
@I_VERSION = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [11 x i8] c",i_version\00", align 1
@DELALLOC = common dso_local global i32 0, align 4
@EXT4_DEFM_NODELALLOC = common dso_local global i64 0, align 8
@.str.21 = private unnamed_addr constant [12 x i8] c",nodelalloc\00", align 1
@.str.22 = private unnamed_addr constant [12 x i8] c",stripe=%lu\00", align 1
@DATA_FLAGS = common dso_local global i32 0, align 4
@EXT4_MOUNT_JOURNAL_DATA = common dso_local global i64 0, align 8
@.str.23 = private unnamed_addr constant [14 x i8] c",data=journal\00", align 1
@EXT4_MOUNT_ORDERED_DATA = common dso_local global i64 0, align 8
@.str.24 = private unnamed_addr constant [14 x i8] c",data=ordered\00", align 1
@EXT4_MOUNT_WRITEBACK_DATA = common dso_local global i64 0, align 8
@.str.25 = private unnamed_addr constant [16 x i8] c",data=writeback\00", align 1
@EXT4_DEF_INODE_READAHEAD_BLKS = common dso_local global i32 0, align 4
@.str.26 = private unnamed_addr constant [25 x i8] c",inode_readahead_blks=%u\00", align 1
@DATA_ERR_ABORT = common dso_local global i32 0, align 4
@.str.27 = private unnamed_addr constant [16 x i8] c",data_err=abort\00", align 1
@NO_AUTO_DA_ALLOC = common dso_local global i32 0, align 4
@.str.28 = private unnamed_addr constant [17 x i8] c",noauto_da_alloc\00", align 1
@DISCARD = common dso_local global i32 0, align 4
@EXT4_DEFM_DISCARD = common dso_local global i64 0, align 8
@.str.29 = private unnamed_addr constant [9 x i8] c",discard\00", align 1
@NOLOAD = common dso_local global i32 0, align 4
@.str.30 = private unnamed_addr constant [12 x i8] c",norecovery\00", align 1
@BLOCK_VALIDITY = common dso_local global i32 0, align 4
@EXT4_DEFM_BLOCK_VALIDITY = common dso_local global i64 0, align 8
@.str.31 = private unnamed_addr constant [16 x i8] c",block_validity\00", align 1
@INIT_INODE_TABLE = common dso_local global i32 0, align 4
@.str.32 = private unnamed_addr constant [15 x i8] c",noinit_itable\00", align 1
@EXT4_DEF_LI_WAIT_MULT = common dso_local global i64 0, align 8
@.str.33 = private unnamed_addr constant [16 x i8] c",init_itable=%u\00", align 1
@EXT4_DEFM_ACL = common dso_local global i64 0, align 8
@EXT4_DEFM_XATTR_USER = common dso_local global i64 0, align 8
@POSIX_ACL = common dso_local global i32 0, align 4
@XATTR_USER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, %struct.vfsmount*)* @ext4_show_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_show_options(%struct.seq_file* %0, %struct.vfsmount* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca %struct.vfsmount*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.super_block*, align 8
  %8 = alloca %struct.ext4_sb_info*, align 8
  %9 = alloca %struct.ext4_super_block*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store %struct.vfsmount* %1, %struct.vfsmount** %4, align 8
  %10 = load %struct.vfsmount*, %struct.vfsmount** %4, align 8
  %11 = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %10, i32 0, i32 0
  %12 = load %struct.super_block*, %struct.super_block** %11, align 8
  store %struct.super_block* %12, %struct.super_block** %7, align 8
  %13 = load %struct.super_block*, %struct.super_block** %7, align 8
  %14 = call %struct.ext4_sb_info* @EXT4_SB(%struct.super_block* %13)
  store %struct.ext4_sb_info* %14, %struct.ext4_sb_info** %8, align 8
  %15 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %8, align 8
  %16 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %15, i32 0, i32 9
  %17 = load %struct.ext4_super_block*, %struct.ext4_super_block** %16, align 8
  store %struct.ext4_super_block* %17, %struct.ext4_super_block** %9, align 8
  %18 = load %struct.ext4_super_block*, %struct.ext4_super_block** %9, align 8
  %19 = getelementptr inbounds %struct.ext4_super_block, %struct.ext4_super_block* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @le32_to_cpu(i32 %20)
  store i64 %21, i64* %6, align 8
  %22 = load %struct.ext4_super_block*, %struct.ext4_super_block** %9, align 8
  %23 = getelementptr inbounds %struct.ext4_super_block, %struct.ext4_super_block* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @le16_to_cpu(i32 %24)
  store i32 %25, i32* %5, align 4
  %26 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %8, align 8
  %27 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 1
  br i1 %29, label %30, label %36

30:                                               ; preds = %2
  %31 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %32 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %8, align 8
  %33 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @seq_printf(%struct.seq_file* %31, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %34)
  br label %36

36:                                               ; preds = %30, %2
  %37 = load %struct.super_block*, %struct.super_block** %7, align 8
  %38 = load i32, i32* @MINIX_DF, align 4
  %39 = call i64 @test_opt(%struct.super_block* %37, i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  %42 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %43 = call i32 @seq_puts(%struct.seq_file* %42, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  br label %44

44:                                               ; preds = %41, %36
  %45 = load %struct.super_block*, %struct.super_block** %7, align 8
  %46 = load i32, i32* @GRPID, align 4
  %47 = call i64 @test_opt(%struct.super_block* %45, i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %57

49:                                               ; preds = %44
  %50 = load i64, i64* %6, align 8
  %51 = load i64, i64* @EXT4_DEFM_BSDGROUPS, align 8
  %52 = and i64 %50, %51
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %49
  %55 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %56 = call i32 @seq_puts(%struct.seq_file* %55, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  br label %57

57:                                               ; preds = %54, %49, %44
  %58 = load %struct.super_block*, %struct.super_block** %7, align 8
  %59 = load i32, i32* @GRPID, align 4
  %60 = call i64 @test_opt(%struct.super_block* %58, i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %70, label %62

62:                                               ; preds = %57
  %63 = load i64, i64* %6, align 8
  %64 = load i64, i64* @EXT4_DEFM_BSDGROUPS, align 8
  %65 = and i64 %63, %64
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %62
  %68 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %69 = call i32 @seq_puts(%struct.seq_file* %68, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  br label %70

70:                                               ; preds = %67, %62, %57
  %71 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %8, align 8
  %72 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @EXT4_DEF_RESUID, align 4
  %75 = icmp ne i32 %73, %74
  br i1 %75, label %83, label %76

76:                                               ; preds = %70
  %77 = load %struct.ext4_super_block*, %struct.ext4_super_block** %9, align 8
  %78 = getelementptr inbounds %struct.ext4_super_block, %struct.ext4_super_block* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @le16_to_cpu(i32 %79)
  %81 = load i32, i32* @EXT4_DEF_RESUID, align 4
  %82 = icmp ne i32 %80, %81
  br i1 %82, label %83, label %89

83:                                               ; preds = %76, %70
  %84 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %85 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %8, align 8
  %86 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @seq_printf(%struct.seq_file* %84, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 %87)
  br label %89

89:                                               ; preds = %83, %76
  %90 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %8, align 8
  %91 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @EXT4_DEF_RESGID, align 4
  %94 = icmp ne i32 %92, %93
  br i1 %94, label %102, label %95

95:                                               ; preds = %89
  %96 = load %struct.ext4_super_block*, %struct.ext4_super_block** %9, align 8
  %97 = getelementptr inbounds %struct.ext4_super_block, %struct.ext4_super_block* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @le16_to_cpu(i32 %98)
  %100 = load i32, i32* @EXT4_DEF_RESGID, align 4
  %101 = icmp ne i32 %99, %100
  br i1 %101, label %102, label %108

102:                                              ; preds = %95, %89
  %103 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %104 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %8, align 8
  %105 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @seq_printf(%struct.seq_file* %103, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32 %106)
  br label %108

108:                                              ; preds = %102, %95
  %109 = load %struct.super_block*, %struct.super_block** %7, align 8
  %110 = load i32, i32* @ERRORS_RO, align 4
  %111 = call i64 @test_opt(%struct.super_block* %109, i32 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %125

113:                                              ; preds = %108
  %114 = load i32, i32* %5, align 4
  %115 = load i32, i32* @EXT4_ERRORS_PANIC, align 4
  %116 = icmp eq i32 %114, %115
  br i1 %116, label %121, label %117

117:                                              ; preds = %113
  %118 = load i32, i32* %5, align 4
  %119 = load i32, i32* @EXT4_ERRORS_CONTINUE, align 4
  %120 = icmp eq i32 %118, %119
  br i1 %120, label %121, label %124

121:                                              ; preds = %117, %113
  %122 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %123 = call i32 @seq_puts(%struct.seq_file* %122, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0))
  br label %124

124:                                              ; preds = %121, %117
  br label %125

125:                                              ; preds = %124, %108
  %126 = load %struct.super_block*, %struct.super_block** %7, align 8
  %127 = load i32, i32* @ERRORS_CONT, align 4
  %128 = call i64 @test_opt(%struct.super_block* %126, i32 %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %137

130:                                              ; preds = %125
  %131 = load i32, i32* %5, align 4
  %132 = load i32, i32* @EXT4_ERRORS_CONTINUE, align 4
  %133 = icmp ne i32 %131, %132
  br i1 %133, label %134, label %137

134:                                              ; preds = %130
  %135 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %136 = call i32 @seq_puts(%struct.seq_file* %135, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0))
  br label %137

137:                                              ; preds = %134, %130, %125
  %138 = load %struct.super_block*, %struct.super_block** %7, align 8
  %139 = load i32, i32* @ERRORS_PANIC, align 4
  %140 = call i64 @test_opt(%struct.super_block* %138, i32 %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %149

142:                                              ; preds = %137
  %143 = load i32, i32* %5, align 4
  %144 = load i32, i32* @EXT4_ERRORS_PANIC, align 4
  %145 = icmp ne i32 %143, %144
  br i1 %145, label %146, label %149

146:                                              ; preds = %142
  %147 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %148 = call i32 @seq_puts(%struct.seq_file* %147, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0))
  br label %149

149:                                              ; preds = %146, %142, %137
  %150 = load %struct.super_block*, %struct.super_block** %7, align 8
  %151 = load i32, i32* @NO_UID32, align 4
  %152 = call i64 @test_opt(%struct.super_block* %150, i32 %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %162

154:                                              ; preds = %149
  %155 = load i64, i64* %6, align 8
  %156 = load i64, i64* @EXT4_DEFM_UID16, align 8
  %157 = and i64 %155, %156
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %162, label %159

159:                                              ; preds = %154
  %160 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %161 = call i32 @seq_puts(%struct.seq_file* %160, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0))
  br label %162

162:                                              ; preds = %159, %154, %149
  %163 = load %struct.super_block*, %struct.super_block** %7, align 8
  %164 = load i32, i32* @DEBUG, align 4
  %165 = call i64 @test_opt(%struct.super_block* %163, i32 %164)
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %175

167:                                              ; preds = %162
  %168 = load i64, i64* %6, align 8
  %169 = load i64, i64* @EXT4_DEFM_DEBUG, align 8
  %170 = and i64 %168, %169
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %175, label %172

172:                                              ; preds = %167
  %173 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %174 = call i32 @seq_puts(%struct.seq_file* %173, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0))
  br label %175

175:                                              ; preds = %172, %167, %162
  %176 = load %struct.super_block*, %struct.super_block** %7, align 8
  %177 = load i32, i32* @OLDALLOC, align 4
  %178 = call i64 @test_opt(%struct.super_block* %176, i32 %177)
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %183

180:                                              ; preds = %175
  %181 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %182 = call i32 @seq_puts(%struct.seq_file* %181, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0))
  br label %183

183:                                              ; preds = %180, %175
  %184 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %8, align 8
  %185 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %184, i32 0, i32 3
  %186 = load i32, i32* %185, align 4
  %187 = load i32, i32* @JBD2_DEFAULT_MAX_COMMIT_AGE, align 4
  %188 = load i32, i32* @HZ, align 4
  %189 = mul nsw i32 %187, %188
  %190 = icmp ne i32 %186, %189
  br i1 %190, label %191, label %199

191:                                              ; preds = %183
  %192 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %193 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %8, align 8
  %194 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %193, i32 0, i32 3
  %195 = load i32, i32* %194, align 4
  %196 = load i32, i32* @HZ, align 4
  %197 = sdiv i32 %195, %196
  %198 = call i32 @seq_printf(%struct.seq_file* %192, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0), i32 %197)
  br label %199

199:                                              ; preds = %191, %183
  %200 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %8, align 8
  %201 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %200, i32 0, i32 4
  %202 = load i64, i64* %201, align 8
  %203 = load i64, i64* @EXT4_DEF_MIN_BATCH_TIME, align 8
  %204 = icmp ne i64 %202, %203
  br i1 %204, label %205, label %212

205:                                              ; preds = %199
  %206 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %207 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %8, align 8
  %208 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %207, i32 0, i32 4
  %209 = load i64, i64* %208, align 8
  %210 = trunc i64 %209 to i32
  %211 = call i32 @seq_printf(%struct.seq_file* %206, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.13, i64 0, i64 0), i32 %210)
  br label %212

212:                                              ; preds = %205, %199
  %213 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %8, align 8
  %214 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %213, i32 0, i32 5
  %215 = load i64, i64* %214, align 8
  %216 = load i64, i64* @EXT4_DEF_MAX_BATCH_TIME, align 8
  %217 = icmp ne i64 %215, %216
  br i1 %217, label %218, label %225

218:                                              ; preds = %212
  %219 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %220 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %8, align 8
  %221 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %220, i32 0, i32 4
  %222 = load i64, i64* %221, align 8
  %223 = trunc i64 %222 to i32
  %224 = call i32 @seq_printf(%struct.seq_file* %219, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i64 0, i64 0), i32 %223)
  br label %225

225:                                              ; preds = %218, %212
  %226 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %227 = call i32 @seq_puts(%struct.seq_file* %226, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0))
  %228 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %229 = load %struct.super_block*, %struct.super_block** %7, align 8
  %230 = load i32, i32* @BARRIER, align 4
  %231 = call i64 @test_opt(%struct.super_block* %229, i32 %230)
  %232 = icmp ne i64 %231, 0
  %233 = zext i1 %232 to i64
  %234 = select i1 %232, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0)
  %235 = call i32 @seq_puts(%struct.seq_file* %228, i8* %234)
  %236 = load %struct.super_block*, %struct.super_block** %7, align 8
  %237 = load i32, i32* @JOURNAL_ASYNC_COMMIT, align 4
  %238 = call i64 @test_opt(%struct.super_block* %236, i32 %237)
  %239 = icmp ne i64 %238, 0
  br i1 %239, label %240, label %243

240:                                              ; preds = %225
  %241 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %242 = call i32 @seq_puts(%struct.seq_file* %241, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18, i64 0, i64 0))
  br label %243

243:                                              ; preds = %240, %225
  %244 = load %struct.super_block*, %struct.super_block** %7, align 8
  %245 = load i32, i32* @NOBH, align 4
  %246 = call i64 @test_opt(%struct.super_block* %244, i32 %245)
  %247 = icmp ne i64 %246, 0
  br i1 %247, label %248, label %251

248:                                              ; preds = %243
  %249 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %250 = call i32 @seq_puts(%struct.seq_file* %249, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i64 0, i64 0))
  br label %251

251:                                              ; preds = %248, %243
  %252 = load %struct.super_block*, %struct.super_block** %7, align 8
  %253 = load i32, i32* @I_VERSION, align 4
  %254 = call i64 @test_opt(%struct.super_block* %252, i32 %253)
  %255 = icmp ne i64 %254, 0
  br i1 %255, label %256, label %259

256:                                              ; preds = %251
  %257 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %258 = call i32 @seq_puts(%struct.seq_file* %257, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.20, i64 0, i64 0))
  br label %259

259:                                              ; preds = %256, %251
  %260 = load %struct.super_block*, %struct.super_block** %7, align 8
  %261 = load i32, i32* @DELALLOC, align 4
  %262 = call i64 @test_opt(%struct.super_block* %260, i32 %261)
  %263 = icmp ne i64 %262, 0
  br i1 %263, label %272, label %264

264:                                              ; preds = %259
  %265 = load i64, i64* %6, align 8
  %266 = load i64, i64* @EXT4_DEFM_NODELALLOC, align 8
  %267 = and i64 %265, %266
  %268 = icmp ne i64 %267, 0
  br i1 %268, label %272, label %269

269:                                              ; preds = %264
  %270 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %271 = call i32 @seq_puts(%struct.seq_file* %270, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.21, i64 0, i64 0))
  br label %272

272:                                              ; preds = %269, %264, %259
  %273 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %8, align 8
  %274 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %273, i32 0, i32 6
  %275 = load i32, i32* %274, align 8
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %277, label %283

277:                                              ; preds = %272
  %278 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %279 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %8, align 8
  %280 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %279, i32 0, i32 6
  %281 = load i32, i32* %280, align 8
  %282 = call i32 @seq_printf(%struct.seq_file* %278, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.22, i64 0, i64 0), i32 %281)
  br label %283

283:                                              ; preds = %277, %272
  %284 = load %struct.super_block*, %struct.super_block** %7, align 8
  %285 = load i32, i32* @DATA_FLAGS, align 4
  %286 = call i64 @test_opt(%struct.super_block* %284, i32 %285)
  %287 = load i64, i64* @EXT4_MOUNT_JOURNAL_DATA, align 8
  %288 = icmp eq i64 %286, %287
  br i1 %288, label %289, label %292

289:                                              ; preds = %283
  %290 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %291 = call i32 @seq_puts(%struct.seq_file* %290, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.23, i64 0, i64 0))
  br label %312

292:                                              ; preds = %283
  %293 = load %struct.super_block*, %struct.super_block** %7, align 8
  %294 = load i32, i32* @DATA_FLAGS, align 4
  %295 = call i64 @test_opt(%struct.super_block* %293, i32 %294)
  %296 = load i64, i64* @EXT4_MOUNT_ORDERED_DATA, align 8
  %297 = icmp eq i64 %295, %296
  br i1 %297, label %298, label %301

298:                                              ; preds = %292
  %299 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %300 = call i32 @seq_puts(%struct.seq_file* %299, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.24, i64 0, i64 0))
  br label %311

301:                                              ; preds = %292
  %302 = load %struct.super_block*, %struct.super_block** %7, align 8
  %303 = load i32, i32* @DATA_FLAGS, align 4
  %304 = call i64 @test_opt(%struct.super_block* %302, i32 %303)
  %305 = load i64, i64* @EXT4_MOUNT_WRITEBACK_DATA, align 8
  %306 = icmp eq i64 %304, %305
  br i1 %306, label %307, label %310

307:                                              ; preds = %301
  %308 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %309 = call i32 @seq_puts(%struct.seq_file* %308, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.25, i64 0, i64 0))
  br label %310

310:                                              ; preds = %307, %301
  br label %311

311:                                              ; preds = %310, %298
  br label %312

312:                                              ; preds = %311, %289
  %313 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %8, align 8
  %314 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %313, i32 0, i32 7
  %315 = load i32, i32* %314, align 4
  %316 = load i32, i32* @EXT4_DEF_INODE_READAHEAD_BLKS, align 4
  %317 = icmp ne i32 %315, %316
  br i1 %317, label %318, label %324

318:                                              ; preds = %312
  %319 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %320 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %8, align 8
  %321 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %320, i32 0, i32 7
  %322 = load i32, i32* %321, align 4
  %323 = call i32 @seq_printf(%struct.seq_file* %319, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.26, i64 0, i64 0), i32 %322)
  br label %324

324:                                              ; preds = %318, %312
  %325 = load %struct.super_block*, %struct.super_block** %7, align 8
  %326 = load i32, i32* @DATA_ERR_ABORT, align 4
  %327 = call i64 @test_opt(%struct.super_block* %325, i32 %326)
  %328 = icmp ne i64 %327, 0
  br i1 %328, label %329, label %332

329:                                              ; preds = %324
  %330 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %331 = call i32 @seq_puts(%struct.seq_file* %330, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.27, i64 0, i64 0))
  br label %332

332:                                              ; preds = %329, %324
  %333 = load %struct.super_block*, %struct.super_block** %7, align 8
  %334 = load i32, i32* @NO_AUTO_DA_ALLOC, align 4
  %335 = call i64 @test_opt(%struct.super_block* %333, i32 %334)
  %336 = icmp ne i64 %335, 0
  br i1 %336, label %337, label %340

337:                                              ; preds = %332
  %338 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %339 = call i32 @seq_puts(%struct.seq_file* %338, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.28, i64 0, i64 0))
  br label %340

340:                                              ; preds = %337, %332
  %341 = load %struct.super_block*, %struct.super_block** %7, align 8
  %342 = load i32, i32* @DISCARD, align 4
  %343 = call i64 @test_opt(%struct.super_block* %341, i32 %342)
  %344 = icmp ne i64 %343, 0
  br i1 %344, label %345, label %353

345:                                              ; preds = %340
  %346 = load i64, i64* %6, align 8
  %347 = load i64, i64* @EXT4_DEFM_DISCARD, align 8
  %348 = and i64 %346, %347
  %349 = icmp ne i64 %348, 0
  br i1 %349, label %353, label %350

350:                                              ; preds = %345
  %351 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %352 = call i32 @seq_puts(%struct.seq_file* %351, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.29, i64 0, i64 0))
  br label %353

353:                                              ; preds = %350, %345, %340
  %354 = load %struct.super_block*, %struct.super_block** %7, align 8
  %355 = load i32, i32* @NOLOAD, align 4
  %356 = call i64 @test_opt(%struct.super_block* %354, i32 %355)
  %357 = icmp ne i64 %356, 0
  br i1 %357, label %358, label %361

358:                                              ; preds = %353
  %359 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %360 = call i32 @seq_puts(%struct.seq_file* %359, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.30, i64 0, i64 0))
  br label %361

361:                                              ; preds = %358, %353
  %362 = load %struct.super_block*, %struct.super_block** %7, align 8
  %363 = load i32, i32* @BLOCK_VALIDITY, align 4
  %364 = call i64 @test_opt(%struct.super_block* %362, i32 %363)
  %365 = icmp ne i64 %364, 0
  br i1 %365, label %366, label %374

366:                                              ; preds = %361
  %367 = load i64, i64* %6, align 8
  %368 = load i64, i64* @EXT4_DEFM_BLOCK_VALIDITY, align 8
  %369 = and i64 %367, %368
  %370 = icmp ne i64 %369, 0
  br i1 %370, label %374, label %371

371:                                              ; preds = %366
  %372 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %373 = call i32 @seq_puts(%struct.seq_file* %372, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.31, i64 0, i64 0))
  br label %374

374:                                              ; preds = %371, %366, %361
  %375 = load %struct.super_block*, %struct.super_block** %7, align 8
  %376 = load i32, i32* @INIT_INODE_TABLE, align 4
  %377 = call i64 @test_opt(%struct.super_block* %375, i32 %376)
  %378 = icmp ne i64 %377, 0
  br i1 %378, label %382, label %379

379:                                              ; preds = %374
  %380 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %381 = call i32 @seq_puts(%struct.seq_file* %380, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.32, i64 0, i64 0))
  br label %396

382:                                              ; preds = %374
  %383 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %8, align 8
  %384 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %383, i32 0, i32 8
  %385 = load i64, i64* %384, align 8
  %386 = load i64, i64* @EXT4_DEF_LI_WAIT_MULT, align 8
  %387 = icmp ne i64 %385, %386
  br i1 %387, label %388, label %395

388:                                              ; preds = %382
  %389 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %390 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %8, align 8
  %391 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %390, i32 0, i32 8
  %392 = load i64, i64* %391, align 8
  %393 = trunc i64 %392 to i32
  %394 = call i32 @seq_printf(%struct.seq_file* %389, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.33, i64 0, i64 0), i32 %393)
  br label %395

395:                                              ; preds = %388, %382
  br label %396

396:                                              ; preds = %395, %379
  %397 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %398 = load %struct.super_block*, %struct.super_block** %7, align 8
  %399 = call i32 @ext4_show_quota_options(%struct.seq_file* %397, %struct.super_block* %398)
  ret i32 0
}

declare dso_local %struct.ext4_sb_info* @EXT4_SB(%struct.super_block*) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32) #1

declare dso_local i64 @test_opt(%struct.super_block*, i32) #1

declare dso_local i32 @seq_puts(%struct.seq_file*, i8*) #1

declare dso_local i32 @ext4_show_quota_options(%struct.seq_file*, %struct.super_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
