; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext3/extr_super.c_parse_options.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext3/extr_super.c_parse_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.ext3_sb_info = type { i32, i32, i32, i32, i8**, i32 }
%struct.TYPE_5__ = type { i64, i64 }

@MAX_OPT_ARGS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c",\00", align 1
@tokens = common dso_local global i32 0, align 4
@MINIX_DF = common dso_local global i64 0, align 8
@GRPID = common dso_local global i64 0, align 8
@ERRORS_CONT = common dso_local global i64 0, align 8
@ERRORS_RO = common dso_local global i64 0, align 8
@ERRORS_PANIC = common dso_local global i64 0, align 8
@NO_UID32 = common dso_local global i64 0, align 8
@CHECK = common dso_local global i64 0, align 8
@DEBUG = common dso_local global i64 0, align 8
@OLDALLOC = common dso_local global i64 0, align 8
@KERN_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"(no)user_xattr options not supported\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"(no)acl options not supported\00", align 1
@RESERVATION = common dso_local global i64 0, align 8
@KERN_ERR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [41 x i8] c"error: cannot specify journal on remount\00", align 1
@UPDATE_JOURNAL = common dso_local global i64 0, align 8
@NOLOAD = common dso_local global i64 0, align 8
@JBD_DEFAULT_MAX_COMMIT_AGE = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@EXT3_MOUNT_JOURNAL_DATA = common dso_local global i32 0, align 4
@EXT3_MOUNT_ORDERED_DATA = common dso_local global i32 0, align 4
@EXT3_MOUNT_WRITEBACK_DATA = common dso_local global i32 0, align 4
@EXT3_MOUNT_DATA_FLAGS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [128 x i8] c"error: cannot change data mode on remount. The filesystem is mounted in data=%s mode and you try to remount it in data=%s mode.\00", align 1
@DATA_ERR_ABORT = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [36 x i8] c"error: quota options not supported.\00", align 1
@.str.6 = private unnamed_addr constant [46 x i8] c"error: journaled quota options not supported.\00", align 1
@ABORT = common dso_local global i64 0, align 8
@BARRIER = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [48 x i8] c"error: resize option only available for remount\00", align 1
@NOBH = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [55 x i8] c"error: unrecognized mount option \22%s\22 or missing value\00", align 1
@EXT3_MOUNT_GRPQUOTA = common dso_local global i32 0, align 4
@EXT3_MOUNT_USRQUOTA = common dso_local global i32 0, align 4
@GRPQUOTA = common dso_local global i64 0, align 8
@POSIX_ACL = common dso_local global i64 0, align 8
@QFMT_VFS_OLD = common dso_local global i32 0, align 4
@QFMT_VFS_V0 = common dso_local global i32 0, align 4
@QFMT_VFS_V1 = common dso_local global i32 0, align 4
@QUOTA = common dso_local global i64 0, align 8
@USRQUOTA = common dso_local global i64 0, align 8
@XATTR_USER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.super_block*, i32*, i64*, i32*, i32)* @parse_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_options(i8* %0, %struct.super_block* %1, i32* %2, i64* %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.super_block*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.ext3_sb_info*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store %struct.super_block* %1, %struct.super_block** %9, align 8
  store i32* %2, i32** %10, align 8
  store i64* %3, i64** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  %22 = load %struct.super_block*, %struct.super_block** %9, align 8
  %23 = call %struct.ext3_sb_info* @EXT3_SB(%struct.super_block* %22)
  store %struct.ext3_sb_info* %23, %struct.ext3_sb_info** %14, align 8
  %24 = load i32, i32* @MAX_OPT_ARGS, align 4
  %25 = zext i32 %24 to i64
  %26 = call i8* @llvm.stacksave()
  store i8* %26, i8** %16, align 8
  %27 = alloca %struct.TYPE_5__, i64 %25, align 16
  store i64 %25, i64* %17, align 8
  store i32 0, i32* %18, align 4
  %28 = load i8*, i8** %8, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %6
  store i32 1, i32* %7, align 4
  store i32 1, i32* %20, align 4
  br label %399

31:                                               ; preds = %6
  br label %32

32:                                               ; preds = %397, %39, %31
  %33 = call i8* @strsep(i8** %8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %33, i8** %15, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %398

35:                                               ; preds = %32
  %36 = load i8*, i8** %15, align 8
  %37 = load i8, i8* %36, align 1
  %38 = icmp ne i8 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %35
  br label %32

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i64 0
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  store i64 0, i64* %42, align 16
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i64 0
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 1
  store i64 0, i64* %44, align 8
  %45 = load i8*, i8** %15, align 8
  %46 = load i32, i32* @tokens, align 4
  %47 = call i32 @match_token(i8* %45, i32 %46, %struct.TYPE_5__* %27)
  store i32 %47, i32* %21, align 4
  %48 = load i32, i32* %21, align 4
  switch i32 %48, label %392 [
    i32 172, label %49
    i32 151, label %55
    i32 161, label %61
    i32 146, label %67
    i32 132, label %73
    i32 134, label %82
    i32 131, label %91
    i32 163, label %92
    i32 162, label %108
    i32 164, label %124
    i32 142, label %140
    i32 147, label %146
    i32 165, label %152
    i32 138, label %158
    i32 137, label %164
    i32 130, label %170
    i32 141, label %170
    i32 175, label %174
    i32 150, label %174
    i32 135, label %178
    i32 143, label %184
    i32 155, label %190
    i32 156, label %203
    i32 157, label %218
    i32 145, label %234
    i32 171, label %240
    i32 168, label %260
    i32 167, label %262
    i32 166, label %264
    i32 170, label %303
    i32 169, label %309
    i32 136, label %315
    i32 128, label %315
    i32 159, label %315
    i32 129, label %319
    i32 160, label %319
    i32 139, label %319
    i32 140, label %319
    i32 154, label %319
    i32 153, label %319
    i32 152, label %319
    i32 144, label %323
    i32 176, label %324
    i32 149, label %330
    i32 174, label %336
    i32 158, label %364
    i32 133, label %365
    i32 148, label %380
    i32 173, label %386
  ]

49:                                               ; preds = %40
  %50 = load %struct.ext3_sb_info*, %struct.ext3_sb_info** %14, align 8
  %51 = getelementptr inbounds %struct.ext3_sb_info, %struct.ext3_sb_info* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i64, i64* @MINIX_DF, align 8
  %54 = call i32 @clear_opt(i32 %52, i64 %53)
  br label %397

55:                                               ; preds = %40
  %56 = load %struct.ext3_sb_info*, %struct.ext3_sb_info** %14, align 8
  %57 = getelementptr inbounds %struct.ext3_sb_info, %struct.ext3_sb_info* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i64, i64* @MINIX_DF, align 8
  %60 = call i32 @set_opt(i32 %58, i64 %59)
  br label %397

61:                                               ; preds = %40
  %62 = load %struct.ext3_sb_info*, %struct.ext3_sb_info** %14, align 8
  %63 = getelementptr inbounds %struct.ext3_sb_info, %struct.ext3_sb_info* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i64, i64* @GRPID, align 8
  %66 = call i32 @set_opt(i32 %64, i64 %65)
  br label %397

67:                                               ; preds = %40
  %68 = load %struct.ext3_sb_info*, %struct.ext3_sb_info** %14, align 8
  %69 = getelementptr inbounds %struct.ext3_sb_info, %struct.ext3_sb_info* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i64, i64* @GRPID, align 8
  %72 = call i32 @clear_opt(i32 %70, i64 %71)
  br label %397

73:                                               ; preds = %40
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i64 0
  %75 = call i32 @match_int(%struct.TYPE_5__* %74, i32* %19)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %73
  store i32 0, i32* %7, align 4
  store i32 1, i32* %20, align 4
  br label %399

78:                                               ; preds = %73
  %79 = load i32, i32* %19, align 4
  %80 = load %struct.ext3_sb_info*, %struct.ext3_sb_info** %14, align 8
  %81 = getelementptr inbounds %struct.ext3_sb_info, %struct.ext3_sb_info* %80, i32 0, i32 1
  store i32 %79, i32* %81, align 4
  br label %397

82:                                               ; preds = %40
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i64 0
  %84 = call i32 @match_int(%struct.TYPE_5__* %83, i32* %19)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %82
  store i32 0, i32* %7, align 4
  store i32 1, i32* %20, align 4
  br label %399

87:                                               ; preds = %82
  %88 = load i32, i32* %19, align 4
  %89 = load %struct.ext3_sb_info*, %struct.ext3_sb_info** %14, align 8
  %90 = getelementptr inbounds %struct.ext3_sb_info, %struct.ext3_sb_info* %89, i32 0, i32 2
  store i32 %88, i32* %90, align 8
  br label %397

91:                                               ; preds = %40
  br label %397

92:                                               ; preds = %40
  %93 = load %struct.ext3_sb_info*, %struct.ext3_sb_info** %14, align 8
  %94 = getelementptr inbounds %struct.ext3_sb_info, %struct.ext3_sb_info* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load i64, i64* @ERRORS_CONT, align 8
  %97 = call i32 @clear_opt(i32 %95, i64 %96)
  %98 = load %struct.ext3_sb_info*, %struct.ext3_sb_info** %14, align 8
  %99 = getelementptr inbounds %struct.ext3_sb_info, %struct.ext3_sb_info* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load i64, i64* @ERRORS_RO, align 8
  %102 = call i32 @clear_opt(i32 %100, i64 %101)
  %103 = load %struct.ext3_sb_info*, %struct.ext3_sb_info** %14, align 8
  %104 = getelementptr inbounds %struct.ext3_sb_info, %struct.ext3_sb_info* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load i64, i64* @ERRORS_PANIC, align 8
  %107 = call i32 @set_opt(i32 %105, i64 %106)
  br label %397

108:                                              ; preds = %40
  %109 = load %struct.ext3_sb_info*, %struct.ext3_sb_info** %14, align 8
  %110 = getelementptr inbounds %struct.ext3_sb_info, %struct.ext3_sb_info* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load i64, i64* @ERRORS_CONT, align 8
  %113 = call i32 @clear_opt(i32 %111, i64 %112)
  %114 = load %struct.ext3_sb_info*, %struct.ext3_sb_info** %14, align 8
  %115 = getelementptr inbounds %struct.ext3_sb_info, %struct.ext3_sb_info* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load i64, i64* @ERRORS_PANIC, align 8
  %118 = call i32 @clear_opt(i32 %116, i64 %117)
  %119 = load %struct.ext3_sb_info*, %struct.ext3_sb_info** %14, align 8
  %120 = getelementptr inbounds %struct.ext3_sb_info, %struct.ext3_sb_info* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = load i64, i64* @ERRORS_RO, align 8
  %123 = call i32 @set_opt(i32 %121, i64 %122)
  br label %397

124:                                              ; preds = %40
  %125 = load %struct.ext3_sb_info*, %struct.ext3_sb_info** %14, align 8
  %126 = getelementptr inbounds %struct.ext3_sb_info, %struct.ext3_sb_info* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = load i64, i64* @ERRORS_RO, align 8
  %129 = call i32 @clear_opt(i32 %127, i64 %128)
  %130 = load %struct.ext3_sb_info*, %struct.ext3_sb_info** %14, align 8
  %131 = getelementptr inbounds %struct.ext3_sb_info, %struct.ext3_sb_info* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = load i64, i64* @ERRORS_PANIC, align 8
  %134 = call i32 @clear_opt(i32 %132, i64 %133)
  %135 = load %struct.ext3_sb_info*, %struct.ext3_sb_info** %14, align 8
  %136 = getelementptr inbounds %struct.ext3_sb_info, %struct.ext3_sb_info* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = load i64, i64* @ERRORS_CONT, align 8
  %139 = call i32 @set_opt(i32 %137, i64 %138)
  br label %397

140:                                              ; preds = %40
  %141 = load %struct.ext3_sb_info*, %struct.ext3_sb_info** %14, align 8
  %142 = getelementptr inbounds %struct.ext3_sb_info, %struct.ext3_sb_info* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = load i64, i64* @NO_UID32, align 8
  %145 = call i32 @set_opt(i32 %143, i64 %144)
  br label %397

146:                                              ; preds = %40
  %147 = load %struct.ext3_sb_info*, %struct.ext3_sb_info** %14, align 8
  %148 = getelementptr inbounds %struct.ext3_sb_info, %struct.ext3_sb_info* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = load i64, i64* @CHECK, align 8
  %151 = call i32 @clear_opt(i32 %149, i64 %150)
  br label %397

152:                                              ; preds = %40
  %153 = load %struct.ext3_sb_info*, %struct.ext3_sb_info** %14, align 8
  %154 = getelementptr inbounds %struct.ext3_sb_info, %struct.ext3_sb_info* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = load i64, i64* @DEBUG, align 8
  %157 = call i32 @set_opt(i32 %155, i64 %156)
  br label %397

158:                                              ; preds = %40
  %159 = load %struct.ext3_sb_info*, %struct.ext3_sb_info** %14, align 8
  %160 = getelementptr inbounds %struct.ext3_sb_info, %struct.ext3_sb_info* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = load i64, i64* @OLDALLOC, align 8
  %163 = call i32 @set_opt(i32 %161, i64 %162)
  br label %397

164:                                              ; preds = %40
  %165 = load %struct.ext3_sb_info*, %struct.ext3_sb_info** %14, align 8
  %166 = getelementptr inbounds %struct.ext3_sb_info, %struct.ext3_sb_info* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = load i64, i64* @OLDALLOC, align 8
  %169 = call i32 @clear_opt(i32 %167, i64 %168)
  br label %397

170:                                              ; preds = %40, %40
  %171 = load %struct.super_block*, %struct.super_block** %9, align 8
  %172 = load i32, i32* @KERN_INFO, align 4
  %173 = call i32 (%struct.super_block*, i32, i8*, ...) @ext3_msg(%struct.super_block* %171, i32 %172, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  br label %397

174:                                              ; preds = %40, %40
  %175 = load %struct.super_block*, %struct.super_block** %9, align 8
  %176 = load i32, i32* @KERN_INFO, align 4
  %177 = call i32 (%struct.super_block*, i32, i8*, ...) @ext3_msg(%struct.super_block* %175, i32 %176, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  br label %397

178:                                              ; preds = %40
  %179 = load %struct.ext3_sb_info*, %struct.ext3_sb_info** %14, align 8
  %180 = getelementptr inbounds %struct.ext3_sb_info, %struct.ext3_sb_info* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = load i64, i64* @RESERVATION, align 8
  %183 = call i32 @set_opt(i32 %181, i64 %182)
  br label %397

184:                                              ; preds = %40
  %185 = load %struct.ext3_sb_info*, %struct.ext3_sb_info** %14, align 8
  %186 = getelementptr inbounds %struct.ext3_sb_info, %struct.ext3_sb_info* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = load i64, i64* @RESERVATION, align 8
  %189 = call i32 @clear_opt(i32 %187, i64 %188)
  br label %397

190:                                              ; preds = %40
  %191 = load i32, i32* %13, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %197

193:                                              ; preds = %190
  %194 = load %struct.super_block*, %struct.super_block** %9, align 8
  %195 = load i32, i32* @KERN_ERR, align 4
  %196 = call i32 (%struct.super_block*, i32, i8*, ...) @ext3_msg(%struct.super_block* %194, i32 %195, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  store i32 1, i32* %20, align 4
  br label %399

197:                                              ; preds = %190
  %198 = load %struct.ext3_sb_info*, %struct.ext3_sb_info** %14, align 8
  %199 = getelementptr inbounds %struct.ext3_sb_info, %struct.ext3_sb_info* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = load i64, i64* @UPDATE_JOURNAL, align 8
  %202 = call i32 @set_opt(i32 %200, i64 %201)
  br label %397

203:                                              ; preds = %40
  %204 = load i32, i32* %13, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %210

206:                                              ; preds = %203
  %207 = load %struct.super_block*, %struct.super_block** %9, align 8
  %208 = load i32, i32* @KERN_ERR, align 4
  %209 = call i32 (%struct.super_block*, i32, i8*, ...) @ext3_msg(%struct.super_block* %207, i32 %208, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  store i32 1, i32* %20, align 4
  br label %399

210:                                              ; preds = %203
  %211 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i64 0
  %212 = call i32 @match_int(%struct.TYPE_5__* %211, i32* %19)
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %215

214:                                              ; preds = %210
  store i32 0, i32* %7, align 4
  store i32 1, i32* %20, align 4
  br label %399

215:                                              ; preds = %210
  %216 = load i32, i32* %19, align 4
  %217 = load i32*, i32** %10, align 8
  store i32 %216, i32* %217, align 4
  br label %397

218:                                              ; preds = %40
  %219 = load i32, i32* %13, align 4
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %225

221:                                              ; preds = %218
  %222 = load %struct.super_block*, %struct.super_block** %9, align 8
  %223 = load i32, i32* @KERN_ERR, align 4
  %224 = call i32 (%struct.super_block*, i32, i8*, ...) @ext3_msg(%struct.super_block* %222, i32 %223, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  store i32 1, i32* %20, align 4
  br label %399

225:                                              ; preds = %218
  %226 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i64 0
  %227 = call i32 @match_int(%struct.TYPE_5__* %226, i32* %19)
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %230

229:                                              ; preds = %225
  store i32 0, i32* %7, align 4
  store i32 1, i32* %20, align 4
  br label %399

230:                                              ; preds = %225
  %231 = load i32, i32* %19, align 4
  %232 = sext i32 %231 to i64
  %233 = load i64*, i64** %11, align 8
  store i64 %232, i64* %233, align 8
  br label %397

234:                                              ; preds = %40
  %235 = load %struct.ext3_sb_info*, %struct.ext3_sb_info** %14, align 8
  %236 = getelementptr inbounds %struct.ext3_sb_info, %struct.ext3_sb_info* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 8
  %238 = load i64, i64* @NOLOAD, align 8
  %239 = call i32 @set_opt(i32 %237, i64 %238)
  br label %397

240:                                              ; preds = %40
  %241 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i64 0
  %242 = call i32 @match_int(%struct.TYPE_5__* %241, i32* %19)
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %245

244:                                              ; preds = %240
  store i32 0, i32* %7, align 4
  store i32 1, i32* %20, align 4
  br label %399

245:                                              ; preds = %240
  %246 = load i32, i32* %19, align 4
  %247 = icmp slt i32 %246, 0
  br i1 %247, label %248, label %249

248:                                              ; preds = %245
  store i32 0, i32* %7, align 4
  store i32 1, i32* %20, align 4
  br label %399

249:                                              ; preds = %245
  %250 = load i32, i32* %19, align 4
  %251 = icmp eq i32 %250, 0
  br i1 %251, label %252, label %254

252:                                              ; preds = %249
  %253 = load i32, i32* @JBD_DEFAULT_MAX_COMMIT_AGE, align 4
  store i32 %253, i32* %19, align 4
  br label %254

254:                                              ; preds = %252, %249
  %255 = load i32, i32* @HZ, align 4
  %256 = load i32, i32* %19, align 4
  %257 = mul nsw i32 %255, %256
  %258 = load %struct.ext3_sb_info*, %struct.ext3_sb_info** %14, align 8
  %259 = getelementptr inbounds %struct.ext3_sb_info, %struct.ext3_sb_info* %258, i32 0, i32 3
  store i32 %257, i32* %259, align 4
  br label %397

260:                                              ; preds = %40
  %261 = load i32, i32* @EXT3_MOUNT_JOURNAL_DATA, align 4
  store i32 %261, i32* %18, align 4
  br label %266

262:                                              ; preds = %40
  %263 = load i32, i32* @EXT3_MOUNT_ORDERED_DATA, align 4
  store i32 %263, i32* %18, align 4
  br label %266

264:                                              ; preds = %40
  %265 = load i32, i32* @EXT3_MOUNT_WRITEBACK_DATA, align 4
  store i32 %265, i32* %18, align 4
  br label %266

266:                                              ; preds = %264, %262, %260
  %267 = load i32, i32* %13, align 4
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %269, label %290

269:                                              ; preds = %266
  %270 = load %struct.ext3_sb_info*, %struct.ext3_sb_info** %14, align 8
  %271 = getelementptr inbounds %struct.ext3_sb_info, %struct.ext3_sb_info* %270, i32 0, i32 0
  %272 = load i32, i32* %271, align 8
  %273 = load i32, i32* @EXT3_MOUNT_DATA_FLAGS, align 4
  %274 = and i32 %272, %273
  %275 = load i32, i32* %18, align 4
  %276 = icmp eq i32 %274, %275
  br i1 %276, label %277, label %278

277:                                              ; preds = %269
  br label %397

278:                                              ; preds = %269
  %279 = load %struct.super_block*, %struct.super_block** %9, align 8
  %280 = load i32, i32* @KERN_ERR, align 4
  %281 = load %struct.ext3_sb_info*, %struct.ext3_sb_info** %14, align 8
  %282 = getelementptr inbounds %struct.ext3_sb_info, %struct.ext3_sb_info* %281, i32 0, i32 0
  %283 = load i32, i32* %282, align 8
  %284 = load i32, i32* @EXT3_MOUNT_DATA_FLAGS, align 4
  %285 = and i32 %283, %284
  %286 = call i32 @data_mode_string(i32 %285)
  %287 = load i32, i32* %18, align 4
  %288 = call i32 @data_mode_string(i32 %287)
  %289 = call i32 (%struct.super_block*, i32, i8*, ...) @ext3_msg(%struct.super_block* %279, i32 %280, i8* getelementptr inbounds ([128 x i8], [128 x i8]* @.str.4, i64 0, i64 0), i32 %286, i32 %288)
  store i32 0, i32* %7, align 4
  store i32 1, i32* %20, align 4
  br label %399

290:                                              ; preds = %266
  %291 = load i32, i32* @EXT3_MOUNT_DATA_FLAGS, align 4
  %292 = xor i32 %291, -1
  %293 = load %struct.ext3_sb_info*, %struct.ext3_sb_info** %14, align 8
  %294 = getelementptr inbounds %struct.ext3_sb_info, %struct.ext3_sb_info* %293, i32 0, i32 0
  %295 = load i32, i32* %294, align 8
  %296 = and i32 %295, %292
  store i32 %296, i32* %294, align 8
  %297 = load i32, i32* %18, align 4
  %298 = load %struct.ext3_sb_info*, %struct.ext3_sb_info** %14, align 8
  %299 = getelementptr inbounds %struct.ext3_sb_info, %struct.ext3_sb_info* %298, i32 0, i32 0
  %300 = load i32, i32* %299, align 8
  %301 = or i32 %300, %297
  store i32 %301, i32* %299, align 8
  br label %302

302:                                              ; preds = %290
  br label %397

303:                                              ; preds = %40
  %304 = load %struct.ext3_sb_info*, %struct.ext3_sb_info** %14, align 8
  %305 = getelementptr inbounds %struct.ext3_sb_info, %struct.ext3_sb_info* %304, i32 0, i32 0
  %306 = load i32, i32* %305, align 8
  %307 = load i64, i64* @DATA_ERR_ABORT, align 8
  %308 = call i32 @set_opt(i32 %306, i64 %307)
  br label %397

309:                                              ; preds = %40
  %310 = load %struct.ext3_sb_info*, %struct.ext3_sb_info** %14, align 8
  %311 = getelementptr inbounds %struct.ext3_sb_info, %struct.ext3_sb_info* %310, i32 0, i32 0
  %312 = load i32, i32* %311, align 8
  %313 = load i64, i64* @DATA_ERR_ABORT, align 8
  %314 = call i32 @clear_opt(i32 %312, i64 %313)
  br label %397

315:                                              ; preds = %40, %40, %40
  %316 = load %struct.super_block*, %struct.super_block** %9, align 8
  %317 = load i32, i32* @KERN_ERR, align 4
  %318 = call i32 (%struct.super_block*, i32, i8*, ...) @ext3_msg(%struct.super_block* %316, i32 %317, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0))
  br label %397

319:                                              ; preds = %40, %40, %40, %40, %40, %40, %40
  %320 = load %struct.super_block*, %struct.super_block** %9, align 8
  %321 = load i32, i32* @KERN_ERR, align 4
  %322 = call i32 (%struct.super_block*, i32, i8*, ...) @ext3_msg(%struct.super_block* %320, i32 %321, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.6, i64 0, i64 0))
  br label %397

323:                                              ; preds = %40
  br label %397

324:                                              ; preds = %40
  %325 = load %struct.ext3_sb_info*, %struct.ext3_sb_info** %14, align 8
  %326 = getelementptr inbounds %struct.ext3_sb_info, %struct.ext3_sb_info* %325, i32 0, i32 0
  %327 = load i32, i32* %326, align 8
  %328 = load i64, i64* @ABORT, align 8
  %329 = call i32 @set_opt(i32 %327, i64 %328)
  br label %397

330:                                              ; preds = %40
  %331 = load %struct.ext3_sb_info*, %struct.ext3_sb_info** %14, align 8
  %332 = getelementptr inbounds %struct.ext3_sb_info, %struct.ext3_sb_info* %331, i32 0, i32 0
  %333 = load i32, i32* %332, align 8
  %334 = load i64, i64* @BARRIER, align 8
  %335 = call i32 @clear_opt(i32 %333, i64 %334)
  br label %397

336:                                              ; preds = %40
  %337 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i64 0
  %338 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %337, i32 0, i32 0
  %339 = load i64, i64* %338, align 16
  %340 = icmp ne i64 %339, 0
  br i1 %340, label %341, label %347

341:                                              ; preds = %336
  %342 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i64 0
  %343 = call i32 @match_int(%struct.TYPE_5__* %342, i32* %19)
  %344 = icmp ne i32 %343, 0
  br i1 %344, label %345, label %346

345:                                              ; preds = %341
  store i32 0, i32* %7, align 4
  store i32 1, i32* %20, align 4
  br label %399

346:                                              ; preds = %341
  br label %348

347:                                              ; preds = %336
  store i32 1, i32* %19, align 4
  br label %348

348:                                              ; preds = %347, %346
  %349 = load i32, i32* %19, align 4
  %350 = icmp ne i32 %349, 0
  br i1 %350, label %351, label %357

351:                                              ; preds = %348
  %352 = load %struct.ext3_sb_info*, %struct.ext3_sb_info** %14, align 8
  %353 = getelementptr inbounds %struct.ext3_sb_info, %struct.ext3_sb_info* %352, i32 0, i32 0
  %354 = load i32, i32* %353, align 8
  %355 = load i64, i64* @BARRIER, align 8
  %356 = call i32 @set_opt(i32 %354, i64 %355)
  br label %363

357:                                              ; preds = %348
  %358 = load %struct.ext3_sb_info*, %struct.ext3_sb_info** %14, align 8
  %359 = getelementptr inbounds %struct.ext3_sb_info, %struct.ext3_sb_info* %358, i32 0, i32 0
  %360 = load i32, i32* %359, align 8
  %361 = load i64, i64* @BARRIER, align 8
  %362 = call i32 @clear_opt(i32 %360, i64 %361)
  br label %363

363:                                              ; preds = %357, %351
  br label %397

364:                                              ; preds = %40
  br label %397

365:                                              ; preds = %40
  %366 = load i32, i32* %13, align 4
  %367 = icmp ne i32 %366, 0
  br i1 %367, label %372, label %368

368:                                              ; preds = %365
  %369 = load %struct.super_block*, %struct.super_block** %9, align 8
  %370 = load i32, i32* @KERN_ERR, align 4
  %371 = call i32 (%struct.super_block*, i32, i8*, ...) @ext3_msg(%struct.super_block* %369, i32 %370, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.7, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  store i32 1, i32* %20, align 4
  br label %399

372:                                              ; preds = %365
  %373 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i64 0
  %374 = call i32 @match_int(%struct.TYPE_5__* %373, i32* %19)
  %375 = icmp ne i32 %374, 0
  br i1 %375, label %376, label %377

376:                                              ; preds = %372
  store i32 0, i32* %7, align 4
  store i32 1, i32* %20, align 4
  br label %399

377:                                              ; preds = %372
  %378 = load i32, i32* %19, align 4
  %379 = load i32*, i32** %12, align 8
  store i32 %378, i32* %379, align 4
  br label %397

380:                                              ; preds = %40
  %381 = load %struct.ext3_sb_info*, %struct.ext3_sb_info** %14, align 8
  %382 = getelementptr inbounds %struct.ext3_sb_info, %struct.ext3_sb_info* %381, i32 0, i32 0
  %383 = load i32, i32* %382, align 8
  %384 = load i64, i64* @NOBH, align 8
  %385 = call i32 @set_opt(i32 %383, i64 %384)
  br label %397

386:                                              ; preds = %40
  %387 = load %struct.ext3_sb_info*, %struct.ext3_sb_info** %14, align 8
  %388 = getelementptr inbounds %struct.ext3_sb_info, %struct.ext3_sb_info* %387, i32 0, i32 0
  %389 = load i32, i32* %388, align 8
  %390 = load i64, i64* @NOBH, align 8
  %391 = call i32 @clear_opt(i32 %389, i64 %390)
  br label %397

392:                                              ; preds = %40
  %393 = load %struct.super_block*, %struct.super_block** %9, align 8
  %394 = load i32, i32* @KERN_ERR, align 4
  %395 = load i8*, i8** %15, align 8
  %396 = call i32 (%struct.super_block*, i32, i8*, ...) @ext3_msg(%struct.super_block* %393, i32 %394, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.8, i64 0, i64 0), i8* %395)
  store i32 0, i32* %7, align 4
  store i32 1, i32* %20, align 4
  br label %399

397:                                              ; preds = %386, %380, %377, %364, %363, %330, %324, %323, %319, %315, %309, %303, %302, %277, %254, %234, %230, %215, %197, %184, %178, %174, %170, %164, %158, %152, %146, %140, %124, %108, %92, %91, %87, %78, %67, %61, %55, %49
  br label %32

398:                                              ; preds = %32
  store i32 1, i32* %7, align 4
  store i32 1, i32* %20, align 4
  br label %399

399:                                              ; preds = %398, %392, %376, %368, %345, %278, %248, %244, %229, %221, %214, %206, %193, %86, %77, %30
  %400 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %400)
  %401 = load i32, i32* %7, align 4
  ret i32 %401
}

declare dso_local %struct.ext3_sb_info* @EXT3_SB(%struct.super_block*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i8* @strsep(i8**, i8*) #1

declare dso_local i32 @match_token(i8*, i32, %struct.TYPE_5__*) #1

declare dso_local i32 @clear_opt(i32, i64) #1

declare dso_local i32 @set_opt(i32, i64) #1

declare dso_local i32 @match_int(%struct.TYPE_5__*, i32*) #1

declare dso_local i32 @ext3_msg(%struct.super_block*, i32, i8*, ...) #1

declare dso_local i32 @data_mode_string(i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
