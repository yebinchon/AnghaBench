; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_sb.c_create_default_filesystem.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_sb.c_create_default_filesystem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.ubifs_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i64 }
%struct.ubifs_sb_node = type { %struct.TYPE_5__, i8*, i8*, i8*, i64, i64, i64, i8*, i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i64, i8*, i64, i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.ubifs_mst_node = type { %struct.TYPE_5__, i8*, i8*, i8*, i64, i64, i64, i8*, i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i64, i8*, i64, i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32 }
%struct.ubifs_idx_node = type { %struct.TYPE_5__, i8*, i8*, i8*, i64, i64, i64, i8*, i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i64, i8*, i64, i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32 }
%struct.ubifs_branch = type { i8*, i8*, i32 }
%struct.ubifs_ino_node = type { %struct.TYPE_5__, i8*, i8*, i8*, i64, i64, i64, i8*, i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i64, i8*, i64, i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32 }
%struct.ubifs_cs_node = type { %struct.TYPE_5__, i8*, i8*, i8*, i64, i64, i64, i8*, i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i64, i8*, i64, i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32 }
%union.ubifs_key = type { i32 }

@UBIFS_MIN_LEB_CNT = common dso_local global i32 0, align 4
@UBIFS_SK_LEN = common dso_local global i32 0, align 4
@DEFAULT_JNL_PERCENT = common dso_local global i32 0, align 4
@UBIFS_MIN_JNL_LEBS = common dso_local global i32 0, align 4
@DEFAULT_MAX_JNL = common dso_local global i32 0, align 4
@UBIFS_MIN_BUD_LEBS = common dso_local global i32 0, align 4
@UBIFS_MIN_ORPH_LEBS = common dso_local global i32 0, align 4
@UBIFS_SB_LEBS = common dso_local global i32 0, align 4
@UBIFS_MST_LEBS = common dso_local global i32 0, align 4
@UBIFS_LOG_LNUM = common dso_local global i32 0, align 4
@DEFAULT_LSAVE_CNT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"LEB Properties Tree created (LEBs %d-%d)\00", align 1
@UBIFS_SB_NODE_SZ = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@UBIFS_FLG_BIGLPT = common dso_local global i32 0, align 4
@UBIFS_SB_NODE = common dso_local global i32 0, align 4
@UBIFS_KEY_HASH_R5 = common dso_local global i32 0, align 4
@DEFAULT_JHEADS_CNT = common dso_local global i32 0, align 4
@DEFAULT_FANOUT = common dso_local global i32 0, align 4
@UBIFS_FORMAT_VERSION = common dso_local global i32 0, align 4
@DEFAULT_TIME_GRAN = common dso_local global i32 0, align 4
@UBIFS_COMPR_LZO = common dso_local global i32 0, align 4
@DEFAULT_RP_PERCENT = common dso_local global i64 0, align 8
@DEFAULT_MAX_RP_SIZE = common dso_local global i64 0, align 8
@UBIFS_RO_COMPAT_VERSION = common dso_local global i32 0, align 4
@UBI_LONGTERM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"default superblock created at LEB 0:0\00", align 1
@UBIFS_MST_NODE = common dso_local global i32 0, align 4
@UBIFS_FIRST_INO = common dso_local global i32 0, align 4
@DEFAULT_IDX_LEB = common dso_local global i32 0, align 4
@DEFAULT_GC_LEB = common dso_local global i32 0, align 4
@UBIFS_INO_NODE_SZ = common dso_local global i32 0, align 4
@UBIFS_MST_NODE_SZ = common dso_local global i32 0, align 4
@UBIFS_MST_LNUM = common dso_local global i32 0, align 4
@UBI_UNKNOWN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"default master node created at LEB %d:0\00", align 1
@UBIFS_SIMPLE_KEY_FMT = common dso_local global i32 0, align 4
@key_r5_hash = common dso_local global i32 0, align 4
@UBIFS_IDX_NODE = common dso_local global i32 0, align 4
@UBIFS_ROOT_INO = common dso_local global i32 0, align 4
@DEFAULT_DATA_LEB = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [44 x i8] c"default root indexing node created LEB %d:0\00", align 1
@UBIFS_INO_NODE = common dso_local global i32 0, align 4
@CURRENT_TIME_SEC = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@S_IFDIR = common dso_local global i32 0, align 4
@S_IRUGO = common dso_local global i32 0, align 4
@S_IWUSR = common dso_local global i32 0, align 4
@S_IXUGO = common dso_local global i32 0, align 4
@UBIFS_COMPR_FL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [31 x i8] c"root inode created at LEB %d:0\00", align 1
@UBIFS_CS_NODE_SZ = common dso_local global i32 0, align 4
@UBIFS_CS_NODE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [28 x i8] c"default file-system created\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubifs_info*)* @create_default_filesystem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_default_filesystem(%struct.ubifs_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ubifs_info*, align 8
  %4 = alloca %struct.ubifs_sb_node*, align 8
  %5 = alloca %struct.ubifs_mst_node*, align 8
  %6 = alloca %struct.ubifs_idx_node*, align 8
  %7 = alloca %struct.ubifs_branch*, align 8
  %8 = alloca %struct.ubifs_ino_node*, align 8
  %9 = alloca %struct.ubifs_cs_node*, align 8
  %10 = alloca %union.ubifs_key, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i8*, align 8
  store %struct.ubifs_info* %0, %struct.ubifs_info** %3, align 8
  store i32 0, i32* %23, align 4
  %28 = load i32, i32* @UBIFS_MIN_LEB_CNT, align 4
  store i32 %28, i32* %24, align 4
  %29 = load i32, i32* @UBIFS_SK_LEN, align 4
  %30 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %31 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %30, i32 0, i32 21
  store i32 %29, i32* %31, align 8
  %32 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %33 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @DEFAULT_JNL_PERCENT, align 4
  %36 = sdiv i32 2147483647, %35
  %37 = icmp slt i32 %34, %36
  br i1 %37, label %38, label %45

38:                                               ; preds = %1
  %39 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %40 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @DEFAULT_JNL_PERCENT, align 4
  %43 = mul nsw i32 %41, %42
  %44 = sdiv i32 %43, 100
  store i32 %44, i32* %13, align 4
  br label %52

45:                                               ; preds = %1
  %46 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %47 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = sdiv i32 %48, 100
  %50 = load i32, i32* @DEFAULT_JNL_PERCENT, align 4
  %51 = mul nsw i32 %49, %50
  store i32 %51, i32* %13, align 4
  br label %52

52:                                               ; preds = %45, %38
  %53 = load i32, i32* %13, align 4
  %54 = load i32, i32* @UBIFS_MIN_JNL_LEBS, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %52
  %57 = load i32, i32* @UBIFS_MIN_JNL_LEBS, align 4
  store i32 %57, i32* %13, align 4
  br label %58

58:                                               ; preds = %56, %52
  %59 = load i32, i32* %13, align 4
  %60 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %61 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = mul nsw i32 %59, %62
  %64 = load i32, i32* @DEFAULT_MAX_JNL, align 4
  %65 = icmp sgt i32 %63, %64
  br i1 %65, label %66, label %72

66:                                               ; preds = %58
  %67 = load i32, i32* @DEFAULT_MAX_JNL, align 4
  %68 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %69 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = sdiv i32 %67, %70
  store i32 %71, i32* %13, align 4
  br label %72

72:                                               ; preds = %66, %58
  %73 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %74 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* %13, align 4
  %77 = mul nsw i32 %75, %76
  %78 = mul nsw i32 2, %77
  %79 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %80 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = add nsw i32 %78, %81
  %83 = sub nsw i32 %82, 1
  store i32 %83, i32* %12, align 4
  %84 = load i32, i32* %12, align 4
  %85 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %86 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = sdiv i32 %84, %87
  store i32 %88, i32* %14, align 4
  %89 = load i32, i32* %14, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %14, align 4
  %91 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %92 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* %24, align 4
  %95 = sub nsw i32 %93, %94
  %96 = icmp sgt i32 %95, 8
  br i1 %96, label %97, label %102

97:                                               ; preds = %72
  %98 = load i32, i32* %14, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %14, align 4
  %100 = load i32, i32* %24, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %24, align 4
  br label %102

102:                                              ; preds = %97, %72
  %103 = load i32, i32* %13, align 4
  %104 = load i32, i32* %14, align 4
  %105 = sub nsw i32 %103, %104
  store i32 %105, i32* %15, align 4
  %106 = load i32, i32* %15, align 4
  %107 = load i32, i32* @UBIFS_MIN_BUD_LEBS, align 4
  %108 = icmp slt i32 %106, %107
  br i1 %108, label %109, label %111

109:                                              ; preds = %102
  %110 = load i32, i32* @UBIFS_MIN_BUD_LEBS, align 4
  store i32 %110, i32* %15, align 4
  br label %111

111:                                              ; preds = %109, %102
  %112 = load i32, i32* @UBIFS_MIN_ORPH_LEBS, align 4
  store i32 %112, i32* %20, align 4
  %113 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %114 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* @UBIFS_SB_LEBS, align 4
  %117 = sub nsw i32 %115, %116
  %118 = load i32, i32* @UBIFS_MST_LEBS, align 4
  %119 = sub nsw i32 %117, %118
  %120 = load i32, i32* %14, align 4
  %121 = sub nsw i32 %119, %120
  store i32 %121, i32* %16, align 4
  %122 = load i32, i32* %20, align 4
  %123 = load i32, i32* %16, align 4
  %124 = sub nsw i32 %123, %122
  store i32 %124, i32* %16, align 4
  %125 = load i32, i32* @UBIFS_LOG_LNUM, align 4
  %126 = load i32, i32* %14, align 4
  %127 = add nsw i32 %125, %126
  store i32 %127, i32* %19, align 4
  %128 = load i32, i32* @DEFAULT_LSAVE_CNT, align 4
  %129 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %130 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %129, i32 0, i32 3
  store i32 %128, i32* %130, align 4
  %131 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %132 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %135 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %134, i32 0, i32 4
  store i32 %133, i32* %135, align 8
  %136 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %137 = load i32, i32* %19, align 4
  %138 = call i32 @ubifs_create_dflt_lpt(%struct.ubifs_info* %136, i32* %16, i32 %137, i32* %18, i32* %21)
  store i32 %138, i32* %11, align 4
  %139 = load i32, i32* %11, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %143

141:                                              ; preds = %111
  %142 = load i32, i32* %11, align 4
  store i32 %142, i32* %2, align 4
  br label %744

143:                                              ; preds = %111
  %144 = load i32, i32* %19, align 4
  %145 = load i32, i32* %19, align 4
  %146 = load i32, i32* %18, align 4
  %147 = add nsw i32 %145, %146
  %148 = sub nsw i32 %147, 1
  %149 = call i32 (i8*, ...) @dbg_gen(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %144, i32 %148)
  %150 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %151 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = load i32, i32* %16, align 4
  %154 = sub nsw i32 %152, %153
  store i32 %154, i32* %17, align 4
  %155 = load i32, i32* @UBIFS_SB_NODE_SZ, align 4
  %156 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %157 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %156, i32 0, i32 5
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @ALIGN(i32 %155, i32 %158)
  store i32 %159, i32* %12, align 4
  %160 = load i32, i32* %12, align 4
  %161 = load i32, i32* @GFP_KERNEL, align 4
  %162 = call %struct.ubifs_sb_node* @kzalloc(i32 %160, i32 %161)
  store %struct.ubifs_sb_node* %162, %struct.ubifs_sb_node** %4, align 8
  %163 = load %struct.ubifs_sb_node*, %struct.ubifs_sb_node** %4, align 8
  %164 = icmp ne %struct.ubifs_sb_node* %163, null
  br i1 %164, label %168, label %165

165:                                              ; preds = %143
  %166 = load i32, i32* @ENOMEM, align 4
  %167 = sub nsw i32 0, %166
  store i32 %167, i32* %2, align 4
  br label %744

168:                                              ; preds = %143
  %169 = load i32, i32* %15, align 4
  %170 = sext i32 %169 to i64
  %171 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %172 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = sext i32 %173 to i64
  %175 = mul nsw i64 %170, %174
  store i64 %175, i64* %25, align 8
  %176 = load i32, i32* %21, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %182

178:                                              ; preds = %168
  %179 = load i32, i32* @UBIFS_FLG_BIGLPT, align 4
  %180 = load i32, i32* %23, align 4
  %181 = or i32 %180, %179
  store i32 %181, i32* %23, align 4
  br label %182

182:                                              ; preds = %178, %168
  %183 = load i32, i32* @UBIFS_SB_NODE, align 4
  %184 = load %struct.ubifs_sb_node*, %struct.ubifs_sb_node** %4, align 8
  %185 = getelementptr inbounds %struct.ubifs_sb_node, %struct.ubifs_sb_node* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %185, i32 0, i32 0
  store i32 %183, i32* %186, align 8
  %187 = load i32, i32* @UBIFS_KEY_HASH_R5, align 4
  %188 = load %struct.ubifs_sb_node*, %struct.ubifs_sb_node** %4, align 8
  %189 = getelementptr inbounds %struct.ubifs_sb_node, %struct.ubifs_sb_node* %188, i32 0, i32 56
  store i32 %187, i32* %189, align 8
  %190 = load i32, i32* %23, align 4
  %191 = call i8* @cpu_to_le32(i32 %190)
  %192 = load %struct.ubifs_sb_node*, %struct.ubifs_sb_node** %4, align 8
  %193 = getelementptr inbounds %struct.ubifs_sb_node, %struct.ubifs_sb_node* %192, i32 0, i32 1
  store i8* %191, i8** %193, align 8
  %194 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %195 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %194, i32 0, i32 5
  %196 = load i32, i32* %195, align 4
  %197 = call i8* @cpu_to_le32(i32 %196)
  %198 = load %struct.ubifs_sb_node*, %struct.ubifs_sb_node** %4, align 8
  %199 = getelementptr inbounds %struct.ubifs_sb_node, %struct.ubifs_sb_node* %198, i32 0, i32 55
  store i8* %197, i8** %199, align 8
  %200 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %201 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 4
  %203 = call i8* @cpu_to_le32(i32 %202)
  %204 = load %struct.ubifs_sb_node*, %struct.ubifs_sb_node** %4, align 8
  %205 = getelementptr inbounds %struct.ubifs_sb_node, %struct.ubifs_sb_node* %204, i32 0, i32 54
  store i8* %203, i8** %205, align 8
  %206 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %207 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 8
  %209 = call i8* @cpu_to_le32(i32 %208)
  %210 = load %struct.ubifs_sb_node*, %struct.ubifs_sb_node** %4, align 8
  %211 = getelementptr inbounds %struct.ubifs_sb_node, %struct.ubifs_sb_node* %210, i32 0, i32 18
  store i8* %209, i8** %211, align 8
  %212 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %213 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %212, i32 0, i32 4
  %214 = load i32, i32* %213, align 8
  %215 = call i8* @cpu_to_le32(i32 %214)
  %216 = load %struct.ubifs_sb_node*, %struct.ubifs_sb_node** %4, align 8
  %217 = getelementptr inbounds %struct.ubifs_sb_node, %struct.ubifs_sb_node* %216, i32 0, i32 53
  store i8* %215, i8** %217, align 8
  %218 = load i64, i64* %25, align 8
  %219 = trunc i64 %218 to i32
  %220 = call i8* @cpu_to_le64(i32 %219)
  %221 = load %struct.ubifs_sb_node*, %struct.ubifs_sb_node** %4, align 8
  %222 = getelementptr inbounds %struct.ubifs_sb_node, %struct.ubifs_sb_node* %221, i32 0, i32 52
  store i8* %220, i8** %222, align 8
  %223 = load i32, i32* %14, align 4
  %224 = call i8* @cpu_to_le32(i32 %223)
  %225 = load %struct.ubifs_sb_node*, %struct.ubifs_sb_node** %4, align 8
  %226 = getelementptr inbounds %struct.ubifs_sb_node, %struct.ubifs_sb_node* %225, i32 0, i32 51
  store i8* %224, i8** %226, align 8
  %227 = load i32, i32* %18, align 4
  %228 = call i8* @cpu_to_le32(i32 %227)
  %229 = load %struct.ubifs_sb_node*, %struct.ubifs_sb_node** %4, align 8
  %230 = getelementptr inbounds %struct.ubifs_sb_node, %struct.ubifs_sb_node* %229, i32 0, i32 50
  store i8* %228, i8** %230, align 8
  %231 = load i32, i32* %20, align 4
  %232 = call i8* @cpu_to_le32(i32 %231)
  %233 = load %struct.ubifs_sb_node*, %struct.ubifs_sb_node** %4, align 8
  %234 = getelementptr inbounds %struct.ubifs_sb_node, %struct.ubifs_sb_node* %233, i32 0, i32 49
  store i8* %232, i8** %234, align 8
  %235 = load i32, i32* @DEFAULT_JHEADS_CNT, align 4
  %236 = call i8* @cpu_to_le32(i32 %235)
  %237 = load %struct.ubifs_sb_node*, %struct.ubifs_sb_node** %4, align 8
  %238 = getelementptr inbounds %struct.ubifs_sb_node, %struct.ubifs_sb_node* %237, i32 0, i32 48
  store i8* %236, i8** %238, align 8
  %239 = load i32, i32* @DEFAULT_FANOUT, align 4
  %240 = call i8* @cpu_to_le32(i32 %239)
  %241 = load %struct.ubifs_sb_node*, %struct.ubifs_sb_node** %4, align 8
  %242 = getelementptr inbounds %struct.ubifs_sb_node, %struct.ubifs_sb_node* %241, i32 0, i32 47
  store i8* %240, i8** %242, align 8
  %243 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %244 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %243, i32 0, i32 3
  %245 = load i32, i32* %244, align 4
  %246 = call i8* @cpu_to_le32(i32 %245)
  %247 = load %struct.ubifs_sb_node*, %struct.ubifs_sb_node** %4, align 8
  %248 = getelementptr inbounds %struct.ubifs_sb_node, %struct.ubifs_sb_node* %247, i32 0, i32 46
  store i8* %246, i8** %248, align 8
  %249 = load i32, i32* @UBIFS_FORMAT_VERSION, align 4
  %250 = call i8* @cpu_to_le32(i32 %249)
  %251 = load %struct.ubifs_sb_node*, %struct.ubifs_sb_node** %4, align 8
  %252 = getelementptr inbounds %struct.ubifs_sb_node, %struct.ubifs_sb_node* %251, i32 0, i32 45
  store i8* %250, i8** %252, align 8
  %253 = load i32, i32* @DEFAULT_TIME_GRAN, align 4
  %254 = call i8* @cpu_to_le32(i32 %253)
  %255 = load %struct.ubifs_sb_node*, %struct.ubifs_sb_node** %4, align 8
  %256 = getelementptr inbounds %struct.ubifs_sb_node, %struct.ubifs_sb_node* %255, i32 0, i32 44
  store i8* %254, i8** %256, align 8
  %257 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %258 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %257, i32 0, i32 20
  %259 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %258, i32 0, i32 1
  %260 = load i64, i64* %259, align 8
  %261 = icmp ne i64 %260, 0
  br i1 %261, label %262, label %270

262:                                              ; preds = %182
  %263 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %264 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %263, i32 0, i32 20
  %265 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %264, i32 0, i32 0
  %266 = load i32, i32* %265, align 8
  %267 = call i8* @cpu_to_le16(i32 %266)
  %268 = load %struct.ubifs_sb_node*, %struct.ubifs_sb_node** %4, align 8
  %269 = getelementptr inbounds %struct.ubifs_sb_node, %struct.ubifs_sb_node* %268, i32 0, i32 43
  store i8* %267, i8** %269, align 8
  br label %275

270:                                              ; preds = %182
  %271 = load i32, i32* @UBIFS_COMPR_LZO, align 4
  %272 = call i8* @cpu_to_le16(i32 %271)
  %273 = load %struct.ubifs_sb_node*, %struct.ubifs_sb_node** %4, align 8
  %274 = getelementptr inbounds %struct.ubifs_sb_node, %struct.ubifs_sb_node* %273, i32 0, i32 43
  store i8* %272, i8** %274, align 8
  br label %275

275:                                              ; preds = %270, %262
  %276 = load %struct.ubifs_sb_node*, %struct.ubifs_sb_node** %4, align 8
  %277 = getelementptr inbounds %struct.ubifs_sb_node, %struct.ubifs_sb_node* %276, i32 0, i32 42
  %278 = load i32, i32* %277, align 8
  %279 = call i32 @generate_random_uuid(i32 %278)
  %280 = load i32, i32* %16, align 4
  %281 = sext i32 %280 to i64
  %282 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %283 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %282, i32 0, i32 1
  %284 = load i32, i32* %283, align 4
  %285 = sext i32 %284 to i64
  %286 = mul nsw i64 %281, %285
  store i64 %286, i64* %26, align 8
  %287 = load i64, i64* %26, align 8
  %288 = load i64, i64* @DEFAULT_RP_PERCENT, align 8
  %289 = mul nsw i64 %287, %288
  %290 = call i64 @div_u64(i64 %289, i32 100)
  store i64 %290, i64* %25, align 8
  %291 = load i64, i64* %25, align 8
  %292 = load i64, i64* @DEFAULT_MAX_RP_SIZE, align 8
  %293 = icmp sgt i64 %291, %292
  br i1 %293, label %294, label %296

294:                                              ; preds = %275
  %295 = load i64, i64* @DEFAULT_MAX_RP_SIZE, align 8
  store i64 %295, i64* %25, align 8
  br label %296

296:                                              ; preds = %294, %275
  %297 = load i64, i64* %25, align 8
  %298 = trunc i64 %297 to i32
  %299 = call i8* @cpu_to_le64(i32 %298)
  %300 = load %struct.ubifs_sb_node*, %struct.ubifs_sb_node** %4, align 8
  %301 = getelementptr inbounds %struct.ubifs_sb_node, %struct.ubifs_sb_node* %300, i32 0, i32 41
  store i8* %299, i8** %301, align 8
  %302 = load i32, i32* @UBIFS_RO_COMPAT_VERSION, align 4
  %303 = call i8* @cpu_to_le32(i32 %302)
  %304 = load %struct.ubifs_sb_node*, %struct.ubifs_sb_node** %4, align 8
  %305 = getelementptr inbounds %struct.ubifs_sb_node, %struct.ubifs_sb_node* %304, i32 0, i32 40
  store i8* %303, i8** %305, align 8
  %306 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %307 = load %struct.ubifs_sb_node*, %struct.ubifs_sb_node** %4, align 8
  %308 = load i32, i32* @UBIFS_SB_NODE_SZ, align 4
  %309 = load i32, i32* @UBI_LONGTERM, align 4
  %310 = call i32 @ubifs_write_node(%struct.ubifs_info* %306, %struct.ubifs_sb_node* %307, i32 %308, i32 0, i32 0, i32 %309)
  store i32 %310, i32* %11, align 4
  %311 = load %struct.ubifs_sb_node*, %struct.ubifs_sb_node** %4, align 8
  %312 = call i32 @kfree(%struct.ubifs_sb_node* %311)
  %313 = load i32, i32* %11, align 4
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %315, label %317

315:                                              ; preds = %296
  %316 = load i32, i32* %11, align 4
  store i32 %316, i32* %2, align 4
  br label %744

317:                                              ; preds = %296
  %318 = call i32 (i8*, ...) @dbg_gen(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %319 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %320 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %319, i32 0, i32 6
  %321 = load i32, i32* %320, align 8
  %322 = load i32, i32* @GFP_KERNEL, align 4
  %323 = call %struct.ubifs_sb_node* @kzalloc(i32 %321, i32 %322)
  %324 = bitcast %struct.ubifs_sb_node* %323 to %struct.ubifs_mst_node*
  store %struct.ubifs_mst_node* %324, %struct.ubifs_mst_node** %5, align 8
  %325 = load %struct.ubifs_mst_node*, %struct.ubifs_mst_node** %5, align 8
  %326 = icmp ne %struct.ubifs_mst_node* %325, null
  br i1 %326, label %330, label %327

327:                                              ; preds = %317
  %328 = load i32, i32* @ENOMEM, align 4
  %329 = sub nsw i32 0, %328
  store i32 %329, i32* %2, align 4
  br label %744

330:                                              ; preds = %317
  %331 = load i32, i32* @UBIFS_MST_NODE, align 4
  %332 = load %struct.ubifs_mst_node*, %struct.ubifs_mst_node** %5, align 8
  %333 = getelementptr inbounds %struct.ubifs_mst_node, %struct.ubifs_mst_node* %332, i32 0, i32 0
  %334 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %333, i32 0, i32 0
  store i32 %331, i32* %334, align 8
  %335 = load i32, i32* @UBIFS_LOG_LNUM, align 4
  %336 = call i8* @cpu_to_le32(i32 %335)
  %337 = load %struct.ubifs_mst_node*, %struct.ubifs_mst_node** %5, align 8
  %338 = getelementptr inbounds %struct.ubifs_mst_node, %struct.ubifs_mst_node* %337, i32 0, i32 39
  store i8* %336, i8** %338, align 8
  %339 = load i32, i32* @UBIFS_FIRST_INO, align 4
  %340 = call i8* @cpu_to_le64(i32 %339)
  %341 = load %struct.ubifs_mst_node*, %struct.ubifs_mst_node** %5, align 8
  %342 = getelementptr inbounds %struct.ubifs_mst_node, %struct.ubifs_mst_node* %341, i32 0, i32 38
  store i8* %340, i8** %342, align 8
  %343 = load %struct.ubifs_mst_node*, %struct.ubifs_mst_node** %5, align 8
  %344 = getelementptr inbounds %struct.ubifs_mst_node, %struct.ubifs_mst_node* %343, i32 0, i32 37
  store i64 0, i64* %344, align 8
  %345 = load i32, i32* %17, align 4
  %346 = load i32, i32* @DEFAULT_IDX_LEB, align 4
  %347 = add nsw i32 %345, %346
  %348 = call i8* @cpu_to_le32(i32 %347)
  %349 = load %struct.ubifs_mst_node*, %struct.ubifs_mst_node** %5, align 8
  %350 = getelementptr inbounds %struct.ubifs_mst_node, %struct.ubifs_mst_node* %349, i32 0, i32 36
  store i8* %348, i8** %350, align 8
  %351 = load %struct.ubifs_mst_node*, %struct.ubifs_mst_node** %5, align 8
  %352 = getelementptr inbounds %struct.ubifs_mst_node, %struct.ubifs_mst_node* %351, i32 0, i32 35
  store i64 0, i64* %352, align 8
  %353 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %354 = call i32 @ubifs_idx_node_sz(%struct.ubifs_info* %353, i32 1)
  store i32 %354, i32* %12, align 4
  %355 = load i32, i32* %12, align 4
  %356 = call i8* @cpu_to_le32(i32 %355)
  %357 = load %struct.ubifs_mst_node*, %struct.ubifs_mst_node** %5, align 8
  %358 = getelementptr inbounds %struct.ubifs_mst_node, %struct.ubifs_mst_node* %357, i32 0, i32 34
  store i8* %356, i8** %358, align 8
  %359 = load i32, i32* %17, align 4
  %360 = load i32, i32* @DEFAULT_GC_LEB, align 4
  %361 = add nsw i32 %359, %360
  %362 = call i8* @cpu_to_le32(i32 %361)
  %363 = load %struct.ubifs_mst_node*, %struct.ubifs_mst_node** %5, align 8
  %364 = getelementptr inbounds %struct.ubifs_mst_node, %struct.ubifs_mst_node* %363, i32 0, i32 33
  store i8* %362, i8** %364, align 8
  %365 = load i32, i32* %17, align 4
  %366 = load i32, i32* @DEFAULT_IDX_LEB, align 4
  %367 = add nsw i32 %365, %366
  %368 = call i8* @cpu_to_le32(i32 %367)
  %369 = load %struct.ubifs_mst_node*, %struct.ubifs_mst_node** %5, align 8
  %370 = getelementptr inbounds %struct.ubifs_mst_node, %struct.ubifs_mst_node* %369, i32 0, i32 32
  store i8* %368, i8** %370, align 8
  %371 = load i32, i32* %12, align 4
  %372 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %373 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %372, i32 0, i32 5
  %374 = load i32, i32* %373, align 4
  %375 = call i32 @ALIGN(i32 %371, i32 %374)
  %376 = call i8* @cpu_to_le32(i32 %375)
  %377 = load %struct.ubifs_mst_node*, %struct.ubifs_mst_node** %5, align 8
  %378 = getelementptr inbounds %struct.ubifs_mst_node, %struct.ubifs_mst_node* %377, i32 0, i32 31
  store i8* %376, i8** %378, align 8
  %379 = load i32, i32* %12, align 4
  %380 = call i32 @ALIGN(i32 %379, i32 8)
  %381 = call i8* @cpu_to_le64(i32 %380)
  %382 = load %struct.ubifs_mst_node*, %struct.ubifs_mst_node** %5, align 8
  %383 = getelementptr inbounds %struct.ubifs_mst_node, %struct.ubifs_mst_node* %382, i32 0, i32 30
  store i8* %381, i8** %383, align 8
  %384 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %385 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %384, i32 0, i32 7
  %386 = load i32, i32* %385, align 4
  %387 = call i8* @cpu_to_le32(i32 %386)
  %388 = load %struct.ubifs_mst_node*, %struct.ubifs_mst_node** %5, align 8
  %389 = getelementptr inbounds %struct.ubifs_mst_node, %struct.ubifs_mst_node* %388, i32 0, i32 29
  store i8* %387, i8** %389, align 8
  %390 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %391 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %390, i32 0, i32 8
  %392 = load i32, i32* %391, align 8
  %393 = call i8* @cpu_to_le32(i32 %392)
  %394 = load %struct.ubifs_mst_node*, %struct.ubifs_mst_node** %5, align 8
  %395 = getelementptr inbounds %struct.ubifs_mst_node, %struct.ubifs_mst_node* %394, i32 0, i32 28
  store i8* %393, i8** %395, align 8
  %396 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %397 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %396, i32 0, i32 9
  %398 = load i32, i32* %397, align 4
  %399 = call i8* @cpu_to_le32(i32 %398)
  %400 = load %struct.ubifs_mst_node*, %struct.ubifs_mst_node** %5, align 8
  %401 = getelementptr inbounds %struct.ubifs_mst_node, %struct.ubifs_mst_node* %400, i32 0, i32 27
  store i8* %399, i8** %401, align 8
  %402 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %403 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %402, i32 0, i32 10
  %404 = load i32, i32* %403, align 8
  %405 = call i8* @cpu_to_le32(i32 %404)
  %406 = load %struct.ubifs_mst_node*, %struct.ubifs_mst_node** %5, align 8
  %407 = getelementptr inbounds %struct.ubifs_mst_node, %struct.ubifs_mst_node* %406, i32 0, i32 26
  store i8* %405, i8** %407, align 8
  %408 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %409 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %408, i32 0, i32 11
  %410 = load i32, i32* %409, align 4
  %411 = call i8* @cpu_to_le32(i32 %410)
  %412 = load %struct.ubifs_mst_node*, %struct.ubifs_mst_node** %5, align 8
  %413 = getelementptr inbounds %struct.ubifs_mst_node, %struct.ubifs_mst_node* %412, i32 0, i32 25
  store i8* %411, i8** %413, align 8
  %414 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %415 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %414, i32 0, i32 12
  %416 = load i32, i32* %415, align 8
  %417 = call i8* @cpu_to_le32(i32 %416)
  %418 = load %struct.ubifs_mst_node*, %struct.ubifs_mst_node** %5, align 8
  %419 = getelementptr inbounds %struct.ubifs_mst_node, %struct.ubifs_mst_node* %418, i32 0, i32 24
  store i8* %417, i8** %419, align 8
  %420 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %421 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %420, i32 0, i32 13
  %422 = load i32, i32* %421, align 4
  %423 = call i8* @cpu_to_le32(i32 %422)
  %424 = load %struct.ubifs_mst_node*, %struct.ubifs_mst_node** %5, align 8
  %425 = getelementptr inbounds %struct.ubifs_mst_node, %struct.ubifs_mst_node* %424, i32 0, i32 23
  store i8* %423, i8** %425, align 8
  %426 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %427 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %426, i32 0, i32 14
  %428 = load i32, i32* %427, align 8
  %429 = call i8* @cpu_to_le32(i32 %428)
  %430 = load %struct.ubifs_mst_node*, %struct.ubifs_mst_node** %5, align 8
  %431 = getelementptr inbounds %struct.ubifs_mst_node, %struct.ubifs_mst_node* %430, i32 0, i32 22
  store i8* %429, i8** %431, align 8
  %432 = load i32, i32* %17, align 4
  %433 = call i8* @cpu_to_le32(i32 %432)
  %434 = load %struct.ubifs_mst_node*, %struct.ubifs_mst_node** %5, align 8
  %435 = getelementptr inbounds %struct.ubifs_mst_node, %struct.ubifs_mst_node* %434, i32 0, i32 21
  store i8* %433, i8** %435, align 8
  %436 = load i32, i32* %16, align 4
  %437 = sub nsw i32 %436, 2
  %438 = call i8* @cpu_to_le32(i32 %437)
  %439 = load %struct.ubifs_mst_node*, %struct.ubifs_mst_node** %5, align 8
  %440 = getelementptr inbounds %struct.ubifs_mst_node, %struct.ubifs_mst_node* %439, i32 0, i32 20
  store i8* %438, i8** %440, align 8
  %441 = call i8* @cpu_to_le32(i32 1)
  %442 = load %struct.ubifs_mst_node*, %struct.ubifs_mst_node** %5, align 8
  %443 = getelementptr inbounds %struct.ubifs_mst_node, %struct.ubifs_mst_node* %442, i32 0, i32 19
  store i8* %441, i8** %443, align 8
  %444 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %445 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %444, i32 0, i32 0
  %446 = load i32, i32* %445, align 8
  %447 = call i8* @cpu_to_le32(i32 %446)
  %448 = load %struct.ubifs_mst_node*, %struct.ubifs_mst_node** %5, align 8
  %449 = getelementptr inbounds %struct.ubifs_mst_node, %struct.ubifs_mst_node* %448, i32 0, i32 18
  store i8* %447, i8** %449, align 8
  %450 = load i64, i64* %26, align 8
  store i64 %450, i64* %25, align 8
  %451 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %452 = call i32 @ubifs_idx_node_sz(%struct.ubifs_info* %451, i32 1)
  %453 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %454 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %453, i32 0, i32 5
  %455 = load i32, i32* %454, align 4
  %456 = call i32 @ALIGN(i32 %452, i32 %455)
  %457 = sext i32 %456 to i64
  %458 = load i64, i64* %25, align 8
  %459 = sub nsw i64 %458, %457
  store i64 %459, i64* %25, align 8
  %460 = load i32, i32* @UBIFS_INO_NODE_SZ, align 4
  %461 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %462 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %461, i32 0, i32 5
  %463 = load i32, i32* %462, align 4
  %464 = call i32 @ALIGN(i32 %460, i32 %463)
  %465 = sext i32 %464 to i64
  %466 = load i64, i64* %25, align 8
  %467 = sub nsw i64 %466, %465
  store i64 %467, i64* %25, align 8
  %468 = load i64, i64* %25, align 8
  %469 = trunc i64 %468 to i32
  %470 = call i8* @cpu_to_le64(i32 %469)
  %471 = load %struct.ubifs_mst_node*, %struct.ubifs_mst_node** %5, align 8
  %472 = getelementptr inbounds %struct.ubifs_mst_node, %struct.ubifs_mst_node* %471, i32 0, i32 17
  store i8* %470, i8** %472, align 8
  %473 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %474 = call i32 @ubifs_idx_node_sz(%struct.ubifs_info* %473, i32 1)
  %475 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %476 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %475, i32 0, i32 5
  %477 = load i32, i32* %476, align 4
  %478 = call i32 @ALIGN(i32 %474, i32 %477)
  %479 = sext i32 %478 to i64
  store i64 %479, i64* %25, align 8
  %480 = load i32, i32* @UBIFS_INO_NODE_SZ, align 4
  %481 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %482 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %481, i32 0, i32 5
  %483 = load i32, i32* %482, align 4
  %484 = call i32 @ALIGN(i32 %480, i32 %483)
  %485 = load i32, i32* @UBIFS_INO_NODE_SZ, align 4
  %486 = sub nsw i32 %484, %485
  store i32 %486, i32* %22, align 4
  %487 = load i32, i32* %22, align 4
  %488 = sext i32 %487 to i64
  %489 = load i64, i64* %25, align 8
  %490 = add nsw i64 %489, %488
  store i64 %490, i64* %25, align 8
  %491 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %492 = call i32 @ubifs_idx_node_sz(%struct.ubifs_info* %491, i32 1)
  %493 = call i32 @ALIGN(i32 %492, i32 8)
  %494 = sext i32 %493 to i64
  %495 = load i64, i64* %25, align 8
  %496 = sub nsw i64 %495, %494
  store i64 %496, i64* %25, align 8
  %497 = load i64, i64* %25, align 8
  %498 = trunc i64 %497 to i32
  %499 = call i8* @cpu_to_le64(i32 %498)
  %500 = load %struct.ubifs_mst_node*, %struct.ubifs_mst_node** %5, align 8
  %501 = getelementptr inbounds %struct.ubifs_mst_node, %struct.ubifs_mst_node* %500, i32 0, i32 16
  store i8* %499, i8** %501, align 8
  %502 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %503 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %502, i32 0, i32 15
  %504 = load i32, i32* %503, align 4
  %505 = sub nsw i32 %504, 1
  %506 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %507 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %506, i32 0, i32 16
  %508 = load i32, i32* %507, align 8
  %509 = mul nsw i32 %505, %508
  %510 = sext i32 %509 to i64
  store i64 %510, i64* %25, align 8
  %511 = load i64, i64* %25, align 8
  %512 = trunc i64 %511 to i32
  %513 = call i8* @cpu_to_le64(i32 %512)
  %514 = load %struct.ubifs_mst_node*, %struct.ubifs_mst_node** %5, align 8
  %515 = getelementptr inbounds %struct.ubifs_mst_node, %struct.ubifs_mst_node* %514, i32 0, i32 15
  store i8* %513, i8** %515, align 8
  %516 = load i32, i32* @UBIFS_INO_NODE_SZ, align 4
  %517 = call i8* @cpu_to_le64(i32 %516)
  %518 = load %struct.ubifs_mst_node*, %struct.ubifs_mst_node** %5, align 8
  %519 = getelementptr inbounds %struct.ubifs_mst_node, %struct.ubifs_mst_node* %518, i32 0, i32 14
  store i8* %517, i8** %519, align 8
  %520 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %521 = load %struct.ubifs_mst_node*, %struct.ubifs_mst_node** %5, align 8
  %522 = bitcast %struct.ubifs_mst_node* %521 to %struct.ubifs_sb_node*
  %523 = load i32, i32* @UBIFS_MST_NODE_SZ, align 4
  %524 = load i32, i32* @UBIFS_MST_LNUM, align 4
  %525 = load i32, i32* @UBI_UNKNOWN, align 4
  %526 = call i32 @ubifs_write_node(%struct.ubifs_info* %520, %struct.ubifs_sb_node* %522, i32 %523, i32 %524, i32 0, i32 %525)
  store i32 %526, i32* %11, align 4
  %527 = load i32, i32* %11, align 4
  %528 = icmp ne i32 %527, 0
  br i1 %528, label %529, label %534

529:                                              ; preds = %330
  %530 = load %struct.ubifs_mst_node*, %struct.ubifs_mst_node** %5, align 8
  %531 = bitcast %struct.ubifs_mst_node* %530 to %struct.ubifs_sb_node*
  %532 = call i32 @kfree(%struct.ubifs_sb_node* %531)
  %533 = load i32, i32* %11, align 4
  store i32 %533, i32* %2, align 4
  br label %744

534:                                              ; preds = %330
  %535 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %536 = load %struct.ubifs_mst_node*, %struct.ubifs_mst_node** %5, align 8
  %537 = bitcast %struct.ubifs_mst_node* %536 to %struct.ubifs_sb_node*
  %538 = load i32, i32* @UBIFS_MST_NODE_SZ, align 4
  %539 = load i32, i32* @UBIFS_MST_LNUM, align 4
  %540 = add nsw i32 %539, 1
  %541 = load i32, i32* @UBI_UNKNOWN, align 4
  %542 = call i32 @ubifs_write_node(%struct.ubifs_info* %535, %struct.ubifs_sb_node* %537, i32 %538, i32 %540, i32 0, i32 %541)
  store i32 %542, i32* %11, align 4
  %543 = load %struct.ubifs_mst_node*, %struct.ubifs_mst_node** %5, align 8
  %544 = bitcast %struct.ubifs_mst_node* %543 to %struct.ubifs_sb_node*
  %545 = call i32 @kfree(%struct.ubifs_sb_node* %544)
  %546 = load i32, i32* %11, align 4
  %547 = icmp ne i32 %546, 0
  br i1 %547, label %548, label %550

548:                                              ; preds = %534
  %549 = load i32, i32* %11, align 4
  store i32 %549, i32* %2, align 4
  br label %744

550:                                              ; preds = %534
  %551 = load i32, i32* @UBIFS_MST_LNUM, align 4
  %552 = call i32 (i8*, ...) @dbg_gen(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %551)
  %553 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %554 = call i32 @ubifs_idx_node_sz(%struct.ubifs_info* %553, i32 1)
  store i32 %554, i32* %12, align 4
  %555 = load i32, i32* %12, align 4
  %556 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %557 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %556, i32 0, i32 5
  %558 = load i32, i32* %557, align 4
  %559 = call i32 @ALIGN(i32 %555, i32 %558)
  %560 = load i32, i32* @GFP_KERNEL, align 4
  %561 = call %struct.ubifs_sb_node* @kzalloc(i32 %559, i32 %560)
  %562 = bitcast %struct.ubifs_sb_node* %561 to %struct.ubifs_idx_node*
  store %struct.ubifs_idx_node* %562, %struct.ubifs_idx_node** %6, align 8
  %563 = load %struct.ubifs_idx_node*, %struct.ubifs_idx_node** %6, align 8
  %564 = icmp ne %struct.ubifs_idx_node* %563, null
  br i1 %564, label %568, label %565

565:                                              ; preds = %550
  %566 = load i32, i32* @ENOMEM, align 4
  %567 = sub nsw i32 0, %566
  store i32 %567, i32* %2, align 4
  br label %744

568:                                              ; preds = %550
  %569 = load i32, i32* @UBIFS_SIMPLE_KEY_FMT, align 4
  %570 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %571 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %570, i32 0, i32 19
  store i32 %569, i32* %571, align 4
  %572 = load i32, i32* @key_r5_hash, align 4
  %573 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %574 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %573, i32 0, i32 18
  store i32 %572, i32* %574, align 8
  %575 = load i32, i32* @UBIFS_IDX_NODE, align 4
  %576 = load %struct.ubifs_idx_node*, %struct.ubifs_idx_node** %6, align 8
  %577 = getelementptr inbounds %struct.ubifs_idx_node, %struct.ubifs_idx_node* %576, i32 0, i32 0
  %578 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %577, i32 0, i32 0
  store i32 %575, i32* %578, align 8
  %579 = call i8* @cpu_to_le16(i32 1)
  %580 = load %struct.ubifs_idx_node*, %struct.ubifs_idx_node** %6, align 8
  %581 = getelementptr inbounds %struct.ubifs_idx_node, %struct.ubifs_idx_node* %580, i32 0, i32 13
  store i8* %579, i8** %581, align 8
  %582 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %583 = load i32, i32* @UBIFS_ROOT_INO, align 4
  %584 = call i32 @ino_key_init(%struct.ubifs_info* %582, %union.ubifs_key* %10, i32 %583)
  %585 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %586 = load %struct.ubifs_idx_node*, %struct.ubifs_idx_node** %6, align 8
  %587 = bitcast %struct.ubifs_idx_node* %586 to %struct.ubifs_sb_node*
  %588 = call %struct.ubifs_branch* @ubifs_idx_branch(%struct.ubifs_info* %585, %struct.ubifs_sb_node* %587, i32 0)
  store %struct.ubifs_branch* %588, %struct.ubifs_branch** %7, align 8
  %589 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %590 = load %struct.ubifs_branch*, %struct.ubifs_branch** %7, align 8
  %591 = getelementptr inbounds %struct.ubifs_branch, %struct.ubifs_branch* %590, i32 0, i32 2
  %592 = call i32 @key_write_idx(%struct.ubifs_info* %589, %union.ubifs_key* %10, i32* %591)
  %593 = load i32, i32* %17, align 4
  %594 = load i32, i32* @DEFAULT_DATA_LEB, align 4
  %595 = add nsw i32 %593, %594
  %596 = call i8* @cpu_to_le32(i32 %595)
  %597 = load %struct.ubifs_branch*, %struct.ubifs_branch** %7, align 8
  %598 = getelementptr inbounds %struct.ubifs_branch, %struct.ubifs_branch* %597, i32 0, i32 1
  store i8* %596, i8** %598, align 8
  %599 = load i32, i32* @UBIFS_INO_NODE_SZ, align 4
  %600 = call i8* @cpu_to_le32(i32 %599)
  %601 = load %struct.ubifs_branch*, %struct.ubifs_branch** %7, align 8
  %602 = getelementptr inbounds %struct.ubifs_branch, %struct.ubifs_branch* %601, i32 0, i32 0
  store i8* %600, i8** %602, align 8
  %603 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %604 = load %struct.ubifs_idx_node*, %struct.ubifs_idx_node** %6, align 8
  %605 = bitcast %struct.ubifs_idx_node* %604 to %struct.ubifs_sb_node*
  %606 = load i32, i32* %12, align 4
  %607 = load i32, i32* %17, align 4
  %608 = load i32, i32* @DEFAULT_IDX_LEB, align 4
  %609 = add nsw i32 %607, %608
  %610 = load i32, i32* @UBI_UNKNOWN, align 4
  %611 = call i32 @ubifs_write_node(%struct.ubifs_info* %603, %struct.ubifs_sb_node* %605, i32 %606, i32 %609, i32 0, i32 %610)
  store i32 %611, i32* %11, align 4
  %612 = load %struct.ubifs_idx_node*, %struct.ubifs_idx_node** %6, align 8
  %613 = bitcast %struct.ubifs_idx_node* %612 to %struct.ubifs_sb_node*
  %614 = call i32 @kfree(%struct.ubifs_sb_node* %613)
  %615 = load i32, i32* %11, align 4
  %616 = icmp ne i32 %615, 0
  br i1 %616, label %617, label %619

617:                                              ; preds = %568
  %618 = load i32, i32* %11, align 4
  store i32 %618, i32* %2, align 4
  br label %744

619:                                              ; preds = %568
  %620 = load i32, i32* %17, align 4
  %621 = load i32, i32* @DEFAULT_IDX_LEB, align 4
  %622 = add nsw i32 %620, %621
  %623 = call i32 (i8*, ...) @dbg_gen(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i32 %622)
  %624 = load i32, i32* @UBIFS_INO_NODE_SZ, align 4
  %625 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %626 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %625, i32 0, i32 5
  %627 = load i32, i32* %626, align 4
  %628 = call i32 @ALIGN(i32 %624, i32 %627)
  store i32 %628, i32* %12, align 4
  %629 = load i32, i32* %12, align 4
  %630 = load i32, i32* @GFP_KERNEL, align 4
  %631 = call %struct.ubifs_sb_node* @kzalloc(i32 %629, i32 %630)
  %632 = bitcast %struct.ubifs_sb_node* %631 to %struct.ubifs_ino_node*
  store %struct.ubifs_ino_node* %632, %struct.ubifs_ino_node** %8, align 8
  %633 = load %struct.ubifs_ino_node*, %struct.ubifs_ino_node** %8, align 8
  %634 = icmp ne %struct.ubifs_ino_node* %633, null
  br i1 %634, label %638, label %635

635:                                              ; preds = %619
  %636 = load i32, i32* @ENOMEM, align 4
  %637 = sub nsw i32 0, %636
  store i32 %637, i32* %2, align 4
  br label %744

638:                                              ; preds = %619
  %639 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %640 = load %struct.ubifs_ino_node*, %struct.ubifs_ino_node** %8, align 8
  %641 = getelementptr inbounds %struct.ubifs_ino_node, %struct.ubifs_ino_node* %640, i32 0, i32 12
  %642 = load i32, i32* @UBIFS_ROOT_INO, align 4
  %643 = call i32 @ino_key_init_flash(%struct.ubifs_info* %639, i32* %641, i32 %642)
  %644 = load i32, i32* @UBIFS_INO_NODE, align 4
  %645 = load %struct.ubifs_ino_node*, %struct.ubifs_ino_node** %8, align 8
  %646 = getelementptr inbounds %struct.ubifs_ino_node, %struct.ubifs_ino_node* %645, i32 0, i32 0
  %647 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %646, i32 0, i32 0
  store i32 %644, i32* %647, align 8
  %648 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %649 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %648, i32 0, i32 17
  %650 = load i32, i32* %649, align 4
  %651 = add nsw i32 %650, 1
  store i32 %651, i32* %649, align 4
  %652 = call i8* @cpu_to_le64(i32 %651)
  %653 = load %struct.ubifs_ino_node*, %struct.ubifs_ino_node** %8, align 8
  %654 = getelementptr inbounds %struct.ubifs_ino_node, %struct.ubifs_ino_node* %653, i32 0, i32 11
  store i8* %652, i8** %654, align 8
  %655 = call i8* @cpu_to_le32(i32 2)
  %656 = load %struct.ubifs_ino_node*, %struct.ubifs_ino_node** %8, align 8
  %657 = getelementptr inbounds %struct.ubifs_ino_node, %struct.ubifs_ino_node* %656, i32 0, i32 10
  store i8* %655, i8** %657, align 8
  %658 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @CURRENT_TIME_SEC, i32 0, i32 0), align 4
  %659 = call i8* @cpu_to_le64(i32 %658)
  store i8* %659, i8** %27, align 8
  %660 = load i8*, i8** %27, align 8
  %661 = load %struct.ubifs_ino_node*, %struct.ubifs_ino_node** %8, align 8
  %662 = getelementptr inbounds %struct.ubifs_ino_node, %struct.ubifs_ino_node* %661, i32 0, i32 9
  store i8* %660, i8** %662, align 8
  %663 = load i8*, i8** %27, align 8
  %664 = load %struct.ubifs_ino_node*, %struct.ubifs_ino_node** %8, align 8
  %665 = getelementptr inbounds %struct.ubifs_ino_node, %struct.ubifs_ino_node* %664, i32 0, i32 8
  store i8* %663, i8** %665, align 8
  %666 = load i8*, i8** %27, align 8
  %667 = load %struct.ubifs_ino_node*, %struct.ubifs_ino_node** %8, align 8
  %668 = getelementptr inbounds %struct.ubifs_ino_node, %struct.ubifs_ino_node* %667, i32 0, i32 7
  store i8* %666, i8** %668, align 8
  %669 = load %struct.ubifs_ino_node*, %struct.ubifs_ino_node** %8, align 8
  %670 = getelementptr inbounds %struct.ubifs_ino_node, %struct.ubifs_ino_node* %669, i32 0, i32 6
  store i64 0, i64* %670, align 8
  %671 = load %struct.ubifs_ino_node*, %struct.ubifs_ino_node** %8, align 8
  %672 = getelementptr inbounds %struct.ubifs_ino_node, %struct.ubifs_ino_node* %671, i32 0, i32 5
  store i64 0, i64* %672, align 8
  %673 = load %struct.ubifs_ino_node*, %struct.ubifs_ino_node** %8, align 8
  %674 = getelementptr inbounds %struct.ubifs_ino_node, %struct.ubifs_ino_node* %673, i32 0, i32 4
  store i64 0, i64* %674, align 8
  %675 = load i32, i32* @S_IFDIR, align 4
  %676 = load i32, i32* @S_IRUGO, align 4
  %677 = or i32 %675, %676
  %678 = load i32, i32* @S_IWUSR, align 4
  %679 = or i32 %677, %678
  %680 = load i32, i32* @S_IXUGO, align 4
  %681 = or i32 %679, %680
  %682 = call i8* @cpu_to_le32(i32 %681)
  %683 = load %struct.ubifs_ino_node*, %struct.ubifs_ino_node** %8, align 8
  %684 = getelementptr inbounds %struct.ubifs_ino_node, %struct.ubifs_ino_node* %683, i32 0, i32 3
  store i8* %682, i8** %684, align 8
  %685 = load i32, i32* @UBIFS_INO_NODE_SZ, align 4
  %686 = call i8* @cpu_to_le64(i32 %685)
  %687 = load %struct.ubifs_ino_node*, %struct.ubifs_ino_node** %8, align 8
  %688 = getelementptr inbounds %struct.ubifs_ino_node, %struct.ubifs_ino_node* %687, i32 0, i32 2
  store i8* %686, i8** %688, align 8
  %689 = load i32, i32* @UBIFS_COMPR_FL, align 4
  %690 = call i8* @cpu_to_le32(i32 %689)
  %691 = load %struct.ubifs_ino_node*, %struct.ubifs_ino_node** %8, align 8
  %692 = getelementptr inbounds %struct.ubifs_ino_node, %struct.ubifs_ino_node* %691, i32 0, i32 1
  store i8* %690, i8** %692, align 8
  %693 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %694 = load %struct.ubifs_ino_node*, %struct.ubifs_ino_node** %8, align 8
  %695 = bitcast %struct.ubifs_ino_node* %694 to %struct.ubifs_sb_node*
  %696 = load i32, i32* @UBIFS_INO_NODE_SZ, align 4
  %697 = load i32, i32* %17, align 4
  %698 = load i32, i32* @DEFAULT_DATA_LEB, align 4
  %699 = add nsw i32 %697, %698
  %700 = load i32, i32* @UBI_UNKNOWN, align 4
  %701 = call i32 @ubifs_write_node(%struct.ubifs_info* %693, %struct.ubifs_sb_node* %695, i32 %696, i32 %699, i32 0, i32 %700)
  store i32 %701, i32* %11, align 4
  %702 = load %struct.ubifs_ino_node*, %struct.ubifs_ino_node** %8, align 8
  %703 = bitcast %struct.ubifs_ino_node* %702 to %struct.ubifs_sb_node*
  %704 = call i32 @kfree(%struct.ubifs_sb_node* %703)
  %705 = load i32, i32* %11, align 4
  %706 = icmp ne i32 %705, 0
  br i1 %706, label %707, label %709

707:                                              ; preds = %638
  %708 = load i32, i32* %11, align 4
  store i32 %708, i32* %2, align 4
  br label %744

709:                                              ; preds = %638
  %710 = load i32, i32* %17, align 4
  %711 = load i32, i32* @DEFAULT_DATA_LEB, align 4
  %712 = add nsw i32 %710, %711
  %713 = call i32 (i8*, ...) @dbg_gen(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 %712)
  %714 = load i32, i32* @UBIFS_CS_NODE_SZ, align 4
  %715 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %716 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %715, i32 0, i32 5
  %717 = load i32, i32* %716, align 4
  %718 = call i32 @ALIGN(i32 %714, i32 %717)
  store i32 %718, i32* %12, align 4
  %719 = load i32, i32* %12, align 4
  %720 = load i32, i32* @GFP_KERNEL, align 4
  %721 = call %struct.ubifs_sb_node* @kzalloc(i32 %719, i32 %720)
  %722 = bitcast %struct.ubifs_sb_node* %721 to %struct.ubifs_cs_node*
  store %struct.ubifs_cs_node* %722, %struct.ubifs_cs_node** %9, align 8
  %723 = load %struct.ubifs_cs_node*, %struct.ubifs_cs_node** %9, align 8
  %724 = icmp ne %struct.ubifs_cs_node* %723, null
  br i1 %724, label %728, label %725

725:                                              ; preds = %709
  %726 = load i32, i32* @ENOMEM, align 4
  %727 = sub nsw i32 0, %726
  store i32 %727, i32* %2, align 4
  br label %744

728:                                              ; preds = %709
  %729 = load i32, i32* @UBIFS_CS_NODE, align 4
  %730 = load %struct.ubifs_cs_node*, %struct.ubifs_cs_node** %9, align 8
  %731 = getelementptr inbounds %struct.ubifs_cs_node, %struct.ubifs_cs_node* %730, i32 0, i32 0
  %732 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %731, i32 0, i32 0
  store i32 %729, i32* %732, align 8
  %733 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %734 = load %struct.ubifs_cs_node*, %struct.ubifs_cs_node** %9, align 8
  %735 = bitcast %struct.ubifs_cs_node* %734 to %struct.ubifs_sb_node*
  %736 = load i32, i32* @UBIFS_CS_NODE_SZ, align 4
  %737 = load i32, i32* @UBIFS_LOG_LNUM, align 4
  %738 = load i32, i32* @UBI_UNKNOWN, align 4
  %739 = call i32 @ubifs_write_node(%struct.ubifs_info* %733, %struct.ubifs_sb_node* %735, i32 %736, i32 %737, i32 0, i32 %738)
  store i32 %739, i32* %11, align 4
  %740 = load %struct.ubifs_cs_node*, %struct.ubifs_cs_node** %9, align 8
  %741 = bitcast %struct.ubifs_cs_node* %740 to %struct.ubifs_sb_node*
  %742 = call i32 @kfree(%struct.ubifs_sb_node* %741)
  %743 = call i32 @ubifs_msg(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %744

744:                                              ; preds = %728, %725, %707, %635, %617, %565, %548, %529, %327, %315, %165, %141
  %745 = load i32, i32* %2, align 4
  ret i32 %745
}

declare dso_local i32 @ubifs_create_dflt_lpt(%struct.ubifs_info*, i32*, i32, i32*, i32*) #1

declare dso_local i32 @dbg_gen(i8*, ...) #1

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local %struct.ubifs_sb_node* @kzalloc(i32, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i8* @cpu_to_le64(i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @generate_random_uuid(i32) #1

declare dso_local i64 @div_u64(i64, i32) #1

declare dso_local i32 @ubifs_write_node(%struct.ubifs_info*, %struct.ubifs_sb_node*, i32, i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.ubifs_sb_node*) #1

declare dso_local i32 @ubifs_idx_node_sz(%struct.ubifs_info*, i32) #1

declare dso_local i32 @ino_key_init(%struct.ubifs_info*, %union.ubifs_key*, i32) #1

declare dso_local %struct.ubifs_branch* @ubifs_idx_branch(%struct.ubifs_info*, %struct.ubifs_sb_node*, i32) #1

declare dso_local i32 @key_write_idx(%struct.ubifs_info*, %union.ubifs_key*, i32*) #1

declare dso_local i32 @ino_key_init_flash(%struct.ubifs_info*, i32*, i32) #1

declare dso_local i32 @ubifs_msg(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
