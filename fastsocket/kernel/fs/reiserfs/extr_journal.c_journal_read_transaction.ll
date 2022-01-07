; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_journal.c_journal_read_transaction.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_journal.c_journal_read_transaction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.reiserfs_journal = type { i64, i32, i32 }
%struct.reiserfs_journal_desc = type { i32* }
%struct.reiserfs_journal_commit = type { i32* }
%struct.buffer_head = type { i32, i32, i64 }

@REISERFS_DEBUG_CODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [72 x i8] c"journal-1037: journal_read_transaction, offset %llu, len %d mount_id %d\00", align 1
@.str.1 = private unnamed_addr constant [65 x i8] c"journal-1039: journal_read_trans skipping because %lu is too old\00", align 1
@.str.2 = private unnamed_addr constant [79 x i8] c"journal-1146: journal_read_trans skipping because %d is != newest_mount_id %lu\00", align 1
@.str.3 = private unnamed_addr constant [74 x i8] c"journal_read_transaction, commit offset %llu had bad time %d or length %d\00", align 1
@GFP_NOFS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [13 x i8] c"journal-1169\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"kmalloc failed, unable to mount FS\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"journal-1207\00", align 1
@.str.7 = private unnamed_addr constant [71 x i8] c"REPLAY FAILURE fsck required! Block to replay is outside of filesystem\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"journal-1204\00", align 1
@.str.9 = private unnamed_addr constant [64 x i8] c"REPLAY FAILURE fsck required! Trying to replay onto a log block\00", align 1
@READ = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [13 x i8] c"journal-1212\00", align 1
@.str.11 = private unnamed_addr constant [50 x i8] c"REPLAY FAILURE fsck required! buffer write failed\00", align 1
@SWRITE = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [13 x i8] c"journal-1226\00", align 1
@.str.13 = private unnamed_addr constant [51 x i8] c"REPLAY FAILURE, fsck required! buffer write failed\00", align 1
@.str.14 = private unnamed_addr constant [50 x i8] c"journal-1095: setting journal start to offset %ld\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, i64, i64, i32, i64)* @journal_read_transaction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @journal_read_transaction(%struct.super_block* %0, i64 %1, i64 %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.super_block*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.reiserfs_journal*, align 8
  %13 = alloca %struct.reiserfs_journal_desc*, align 8
  %14 = alloca %struct.reiserfs_journal_commit*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.buffer_head*, align 8
  %17 = alloca %struct.buffer_head*, align 8
  %18 = alloca %struct.buffer_head**, align 8
  %19 = alloca %struct.buffer_head**, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %23 = load %struct.super_block*, %struct.super_block** %7, align 8
  %24 = call %struct.reiserfs_journal* @SB_JOURNAL(%struct.super_block* %23)
  store %struct.reiserfs_journal* %24, %struct.reiserfs_journal** %12, align 8
  store i32 0, i32* %15, align 4
  store %struct.buffer_head** null, %struct.buffer_head*** %18, align 8
  store %struct.buffer_head** null, %struct.buffer_head*** %19, align 8
  %25 = load %struct.super_block*, %struct.super_block** %7, align 8
  %26 = load i64, i64* %8, align 8
  %27 = trunc i64 %26 to i32
  %28 = call %struct.buffer_head* @journal_bread(%struct.super_block* %25, i32 %27)
  store %struct.buffer_head* %28, %struct.buffer_head** %17, align 8
  %29 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  %30 = icmp ne %struct.buffer_head* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %5
  store i32 1, i32* %6, align 4
  br label %491

32:                                               ; preds = %5
  %33 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  %34 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = inttoptr i64 %35 to %struct.reiserfs_journal_desc*
  store %struct.reiserfs_journal_desc* %36, %struct.reiserfs_journal_desc** %13, align 8
  %37 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  %38 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = zext i32 %39 to i64
  %41 = load %struct.super_block*, %struct.super_block** %7, align 8
  %42 = call i64 @SB_ONDISK_JOURNAL_1st_BLOCK(%struct.super_block* %41)
  %43 = sub i64 %40, %42
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %20, align 4
  %45 = load %struct.super_block*, %struct.super_block** %7, align 8
  %46 = load i32, i32* @REISERFS_DEBUG_CODE, align 4
  %47 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  %48 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = zext i32 %49 to i64
  %51 = load %struct.super_block*, %struct.super_block** %7, align 8
  %52 = call i64 @SB_ONDISK_JOURNAL_1st_BLOCK(%struct.super_block* %51)
  %53 = sub i64 %50, %52
  %54 = load %struct.reiserfs_journal_desc*, %struct.reiserfs_journal_desc** %13, align 8
  %55 = call i32 @get_desc_trans_len(%struct.reiserfs_journal_desc* %54)
  %56 = load %struct.reiserfs_journal_desc*, %struct.reiserfs_journal_desc** %13, align 8
  %57 = call i64 @get_desc_mount_id(%struct.reiserfs_journal_desc* %56)
  %58 = call i32 (%struct.super_block*, i32, i8*, i64, ...) @reiserfs_debug(%struct.super_block* %45, i32 %46, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str, i64 0, i64 0), i64 %53, i32 %55, i64 %57)
  %59 = load %struct.reiserfs_journal_desc*, %struct.reiserfs_journal_desc** %13, align 8
  %60 = call i32 @get_desc_trans_id(%struct.reiserfs_journal_desc* %59)
  %61 = load i32, i32* %10, align 4
  %62 = icmp ult i32 %60, %61
  br i1 %62, label %63, label %73

63:                                               ; preds = %32
  %64 = load %struct.super_block*, %struct.super_block** %7, align 8
  %65 = load i32, i32* @REISERFS_DEBUG_CODE, align 4
  %66 = load i64, i64* %8, align 8
  %67 = load %struct.super_block*, %struct.super_block** %7, align 8
  %68 = call i64 @SB_ONDISK_JOURNAL_1st_BLOCK(%struct.super_block* %67)
  %69 = sub i64 %66, %68
  %70 = call i32 (%struct.super_block*, i32, i8*, i64, ...) @reiserfs_debug(%struct.super_block* %64, i32 %65, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.1, i64 0, i64 0), i64 %69)
  %71 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  %72 = call i32 @brelse(%struct.buffer_head* %71)
  store i32 1, i32* %6, align 4
  br label %491

73:                                               ; preds = %32
  %74 = load %struct.reiserfs_journal_desc*, %struct.reiserfs_journal_desc** %13, align 8
  %75 = call i64 @get_desc_mount_id(%struct.reiserfs_journal_desc* %74)
  %76 = load i64, i64* %11, align 8
  %77 = icmp ne i64 %75, %76
  br i1 %77, label %78, label %87

78:                                               ; preds = %73
  %79 = load %struct.super_block*, %struct.super_block** %7, align 8
  %80 = load i32, i32* @REISERFS_DEBUG_CODE, align 4
  %81 = load %struct.reiserfs_journal_desc*, %struct.reiserfs_journal_desc** %13, align 8
  %82 = call i64 @get_desc_mount_id(%struct.reiserfs_journal_desc* %81)
  %83 = load i64, i64* %11, align 8
  %84 = call i32 (%struct.super_block*, i32, i8*, i64, ...) @reiserfs_debug(%struct.super_block* %79, i32 %80, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.2, i64 0, i64 0), i64 %82, i64 %83)
  %85 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  %86 = call i32 @brelse(%struct.buffer_head* %85)
  store i32 1, i32* %6, align 4
  br label %491

87:                                               ; preds = %73
  %88 = load %struct.super_block*, %struct.super_block** %7, align 8
  %89 = load %struct.super_block*, %struct.super_block** %7, align 8
  %90 = call i64 @SB_ONDISK_JOURNAL_1st_BLOCK(%struct.super_block* %89)
  %91 = load i32, i32* %20, align 4
  %92 = load %struct.reiserfs_journal_desc*, %struct.reiserfs_journal_desc** %13, align 8
  %93 = call i32 @get_desc_trans_len(%struct.reiserfs_journal_desc* %92)
  %94 = add i32 %91, %93
  %95 = add i32 %94, 1
  %96 = load %struct.super_block*, %struct.super_block** %7, align 8
  %97 = call i32 @SB_ONDISK_JOURNAL_SIZE(%struct.super_block* %96)
  %98 = urem i32 %95, %97
  %99 = zext i32 %98 to i64
  %100 = add i64 %90, %99
  %101 = trunc i64 %100 to i32
  %102 = call %struct.buffer_head* @journal_bread(%struct.super_block* %88, i32 %101)
  store %struct.buffer_head* %102, %struct.buffer_head** %16, align 8
  %103 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %104 = icmp ne %struct.buffer_head* %103, null
  br i1 %104, label %108, label %105

105:                                              ; preds = %87
  %106 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  %107 = call i32 @brelse(%struct.buffer_head* %106)
  store i32 1, i32* %6, align 4
  br label %491

108:                                              ; preds = %87
  %109 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %110 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %109, i32 0, i32 2
  %111 = load i64, i64* %110, align 8
  %112 = inttoptr i64 %111 to %struct.reiserfs_journal_commit*
  store %struct.reiserfs_journal_commit* %112, %struct.reiserfs_journal_commit** %14, align 8
  %113 = load %struct.super_block*, %struct.super_block** %7, align 8
  %114 = load %struct.reiserfs_journal_desc*, %struct.reiserfs_journal_desc** %13, align 8
  %115 = load %struct.reiserfs_journal_commit*, %struct.reiserfs_journal_commit** %14, align 8
  %116 = call i64 @journal_compare_desc_commit(%struct.super_block* %113, %struct.reiserfs_journal_desc* %114, %struct.reiserfs_journal_commit* %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %137

118:                                              ; preds = %108
  %119 = load %struct.super_block*, %struct.super_block** %7, align 8
  %120 = load i32, i32* @REISERFS_DEBUG_CODE, align 4
  %121 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %122 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = zext i32 %123 to i64
  %125 = load %struct.super_block*, %struct.super_block** %7, align 8
  %126 = call i64 @SB_ONDISK_JOURNAL_1st_BLOCK(%struct.super_block* %125)
  %127 = sub i64 %124, %126
  %128 = load %struct.reiserfs_journal_commit*, %struct.reiserfs_journal_commit** %14, align 8
  %129 = call i32 @get_commit_trans_id(%struct.reiserfs_journal_commit* %128)
  %130 = load %struct.reiserfs_journal_commit*, %struct.reiserfs_journal_commit** %14, align 8
  %131 = call i32 @get_commit_trans_len(%struct.reiserfs_journal_commit* %130)
  %132 = call i32 (%struct.super_block*, i32, i8*, i64, ...) @reiserfs_debug(%struct.super_block* %119, i32 %120, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.3, i64 0, i64 0), i64 %127, i32 %129, i32 %131)
  %133 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %134 = call i32 @brelse(%struct.buffer_head* %133)
  %135 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  %136 = call i32 @brelse(%struct.buffer_head* %135)
  store i32 1, i32* %6, align 4
  br label %491

137:                                              ; preds = %108
  %138 = load %struct.reiserfs_journal_desc*, %struct.reiserfs_journal_desc** %13, align 8
  %139 = call i32 @get_desc_trans_id(%struct.reiserfs_journal_desc* %138)
  store i32 %139, i32* %15, align 4
  %140 = load %struct.reiserfs_journal_desc*, %struct.reiserfs_journal_desc** %13, align 8
  %141 = call i32 @get_desc_trans_len(%struct.reiserfs_journal_desc* %140)
  %142 = zext i32 %141 to i64
  %143 = mul i64 %142, 8
  %144 = trunc i64 %143 to i32
  %145 = load i32, i32* @GFP_NOFS, align 4
  %146 = call %struct.buffer_head** @kmalloc(i32 %144, i32 %145)
  store %struct.buffer_head** %146, %struct.buffer_head*** %18, align 8
  %147 = load %struct.reiserfs_journal_desc*, %struct.reiserfs_journal_desc** %13, align 8
  %148 = call i32 @get_desc_trans_len(%struct.reiserfs_journal_desc* %147)
  %149 = zext i32 %148 to i64
  %150 = mul i64 %149, 8
  %151 = trunc i64 %150 to i32
  %152 = load i32, i32* @GFP_NOFS, align 4
  %153 = call %struct.buffer_head** @kmalloc(i32 %151, i32 %152)
  store %struct.buffer_head** %153, %struct.buffer_head*** %19, align 8
  %154 = load %struct.buffer_head**, %struct.buffer_head*** %18, align 8
  %155 = icmp ne %struct.buffer_head** %154, null
  br i1 %155, label %156, label %159

156:                                              ; preds = %137
  %157 = load %struct.buffer_head**, %struct.buffer_head*** %19, align 8
  %158 = icmp ne %struct.buffer_head** %157, null
  br i1 %158, label %170, label %159

159:                                              ; preds = %156, %137
  %160 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %161 = call i32 @brelse(%struct.buffer_head* %160)
  %162 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  %163 = call i32 @brelse(%struct.buffer_head* %162)
  %164 = load %struct.buffer_head**, %struct.buffer_head*** %18, align 8
  %165 = call i32 @kfree(%struct.buffer_head** %164)
  %166 = load %struct.buffer_head**, %struct.buffer_head*** %19, align 8
  %167 = call i32 @kfree(%struct.buffer_head** %166)
  %168 = load %struct.super_block*, %struct.super_block** %7, align 8
  %169 = call i32 @reiserfs_warning(%struct.super_block* %168, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0))
  store i32 -1, i32* %6, align 4
  br label %491

170:                                              ; preds = %156
  %171 = load %struct.super_block*, %struct.super_block** %7, align 8
  %172 = getelementptr inbounds %struct.super_block, %struct.super_block* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = call i32 @journal_trans_half(i32 %173)
  store i32 %174, i32* %22, align 4
  store i32 0, i32* %21, align 4
  br label %175

175:                                              ; preds = %280, %170
  %176 = load i32, i32* %21, align 4
  %177 = load %struct.reiserfs_journal_desc*, %struct.reiserfs_journal_desc** %13, align 8
  %178 = call i32 @get_desc_trans_len(%struct.reiserfs_journal_desc* %177)
  %179 = icmp ult i32 %176, %178
  br i1 %179, label %180, label %283

180:                                              ; preds = %175
  %181 = load %struct.super_block*, %struct.super_block** %7, align 8
  %182 = load %struct.super_block*, %struct.super_block** %7, align 8
  %183 = call i64 @SB_ONDISK_JOURNAL_1st_BLOCK(%struct.super_block* %182)
  %184 = load i32, i32* %20, align 4
  %185 = add i32 %184, 1
  %186 = load i32, i32* %21, align 4
  %187 = add i32 %185, %186
  %188 = load %struct.super_block*, %struct.super_block** %7, align 8
  %189 = call i32 @SB_ONDISK_JOURNAL_SIZE(%struct.super_block* %188)
  %190 = urem i32 %187, %189
  %191 = zext i32 %190 to i64
  %192 = add i64 %183, %191
  %193 = trunc i64 %192 to i32
  %194 = call %struct.buffer_head* @journal_getblk(%struct.super_block* %181, i32 %193)
  %195 = load %struct.buffer_head**, %struct.buffer_head*** %18, align 8
  %196 = load i32, i32* %21, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %195, i64 %197
  store %struct.buffer_head* %194, %struct.buffer_head** %198, align 8
  %199 = load i32, i32* %21, align 4
  %200 = load i32, i32* %22, align 4
  %201 = icmp slt i32 %199, %200
  br i1 %201, label %202, label %217

202:                                              ; preds = %180
  %203 = load %struct.super_block*, %struct.super_block** %7, align 8
  %204 = load %struct.reiserfs_journal_desc*, %struct.reiserfs_journal_desc** %13, align 8
  %205 = getelementptr inbounds %struct.reiserfs_journal_desc, %struct.reiserfs_journal_desc* %204, i32 0, i32 0
  %206 = load i32*, i32** %205, align 8
  %207 = load i32, i32* %21, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i32, i32* %206, i64 %208
  %210 = load i32, i32* %209, align 4
  %211 = call i32 @le32_to_cpu(i32 %210)
  %212 = call %struct.buffer_head* @sb_getblk(%struct.super_block* %203, i32 %211)
  %213 = load %struct.buffer_head**, %struct.buffer_head*** %19, align 8
  %214 = load i32, i32* %21, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %213, i64 %215
  store %struct.buffer_head* %212, %struct.buffer_head** %216, align 8
  br label %234

217:                                              ; preds = %180
  %218 = load %struct.super_block*, %struct.super_block** %7, align 8
  %219 = load %struct.reiserfs_journal_commit*, %struct.reiserfs_journal_commit** %14, align 8
  %220 = getelementptr inbounds %struct.reiserfs_journal_commit, %struct.reiserfs_journal_commit* %219, i32 0, i32 0
  %221 = load i32*, i32** %220, align 8
  %222 = load i32, i32* %21, align 4
  %223 = load i32, i32* %22, align 4
  %224 = sub nsw i32 %222, %223
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds i32, i32* %221, i64 %225
  %227 = load i32, i32* %226, align 4
  %228 = call i32 @le32_to_cpu(i32 %227)
  %229 = call %struct.buffer_head* @sb_getblk(%struct.super_block* %218, i32 %228)
  %230 = load %struct.buffer_head**, %struct.buffer_head*** %19, align 8
  %231 = load i32, i32* %21, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %230, i64 %232
  store %struct.buffer_head* %229, %struct.buffer_head** %233, align 8
  br label %234

234:                                              ; preds = %217, %202
  %235 = load %struct.buffer_head**, %struct.buffer_head*** %19, align 8
  %236 = load i32, i32* %21, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %235, i64 %237
  %239 = load %struct.buffer_head*, %struct.buffer_head** %238, align 8
  %240 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 8
  %242 = zext i32 %241 to i64
  %243 = load %struct.super_block*, %struct.super_block** %7, align 8
  %244 = call i64 @SB_BLOCK_COUNT(%struct.super_block* %243)
  %245 = icmp sgt i64 %242, %244
  br i1 %245, label %246, label %249

246:                                              ; preds = %234
  %247 = load %struct.super_block*, %struct.super_block** %7, align 8
  %248 = call i32 @reiserfs_warning(%struct.super_block* %247, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.7, i64 0, i64 0))
  br label %264

249:                                              ; preds = %234
  %250 = load %struct.super_block*, %struct.super_block** %7, align 8
  %251 = load %struct.buffer_head**, %struct.buffer_head*** %19, align 8
  %252 = load i32, i32* %21, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %251, i64 %253
  %255 = load %struct.buffer_head*, %struct.buffer_head** %254, align 8
  %256 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 8
  %258 = zext i32 %257 to i64
  %259 = call i64 @is_block_in_log_or_reserved_area(%struct.super_block* %250, i64 %258)
  %260 = icmp ne i64 %259, 0
  br i1 %260, label %261, label %279

261:                                              ; preds = %249
  %262 = load %struct.super_block*, %struct.super_block** %7, align 8
  %263 = call i32 @reiserfs_warning(%struct.super_block* %262, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.9, i64 0, i64 0))
  br label %264

264:                                              ; preds = %261, %246
  %265 = load %struct.buffer_head**, %struct.buffer_head*** %18, align 8
  %266 = load i32, i32* %21, align 4
  %267 = call i32 @brelse_array(%struct.buffer_head** %265, i32 %266)
  %268 = load %struct.buffer_head**, %struct.buffer_head*** %19, align 8
  %269 = load i32, i32* %21, align 4
  %270 = call i32 @brelse_array(%struct.buffer_head** %268, i32 %269)
  %271 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %272 = call i32 @brelse(%struct.buffer_head* %271)
  %273 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  %274 = call i32 @brelse(%struct.buffer_head* %273)
  %275 = load %struct.buffer_head**, %struct.buffer_head*** %18, align 8
  %276 = call i32 @kfree(%struct.buffer_head** %275)
  %277 = load %struct.buffer_head**, %struct.buffer_head*** %19, align 8
  %278 = call i32 @kfree(%struct.buffer_head** %277)
  store i32 -1, i32* %6, align 4
  br label %491

279:                                              ; preds = %249
  br label %280

280:                                              ; preds = %279
  %281 = load i32, i32* %21, align 4
  %282 = add nsw i32 %281, 1
  store i32 %282, i32* %21, align 4
  br label %175

283:                                              ; preds = %175
  %284 = load i32, i32* @READ, align 4
  %285 = load %struct.reiserfs_journal_desc*, %struct.reiserfs_journal_desc** %13, align 8
  %286 = call i32 @get_desc_trans_len(%struct.reiserfs_journal_desc* %285)
  %287 = load %struct.buffer_head**, %struct.buffer_head*** %18, align 8
  %288 = call i32 @ll_rw_block(i32 %284, i32 %286, %struct.buffer_head** %287)
  store i32 0, i32* %21, align 4
  br label %289

289:                                              ; preds = %367, %283
  %290 = load i32, i32* %21, align 4
  %291 = load %struct.reiserfs_journal_desc*, %struct.reiserfs_journal_desc** %13, align 8
  %292 = call i32 @get_desc_trans_len(%struct.reiserfs_journal_desc* %291)
  %293 = icmp ult i32 %290, %292
  br i1 %293, label %294, label %370

294:                                              ; preds = %289
  %295 = load %struct.buffer_head**, %struct.buffer_head*** %18, align 8
  %296 = load i32, i32* %21, align 4
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %295, i64 %297
  %299 = load %struct.buffer_head*, %struct.buffer_head** %298, align 8
  %300 = call i32 @wait_on_buffer(%struct.buffer_head* %299)
  %301 = load %struct.buffer_head**, %struct.buffer_head*** %18, align 8
  %302 = load i32, i32* %21, align 4
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %301, i64 %303
  %305 = load %struct.buffer_head*, %struct.buffer_head** %304, align 8
  %306 = call i32 @buffer_uptodate(%struct.buffer_head* %305)
  %307 = icmp ne i32 %306, 0
  br i1 %307, label %332, label %308

308:                                              ; preds = %294
  %309 = load %struct.super_block*, %struct.super_block** %7, align 8
  %310 = call i32 @reiserfs_warning(%struct.super_block* %309, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.11, i64 0, i64 0))
  %311 = load %struct.buffer_head**, %struct.buffer_head*** %18, align 8
  %312 = load i32, i32* %21, align 4
  %313 = sext i32 %312 to i64
  %314 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %311, i64 %313
  %315 = load %struct.reiserfs_journal_desc*, %struct.reiserfs_journal_desc** %13, align 8
  %316 = call i32 @get_desc_trans_len(%struct.reiserfs_journal_desc* %315)
  %317 = load i32, i32* %21, align 4
  %318 = sub i32 %316, %317
  %319 = call i32 @brelse_array(%struct.buffer_head** %314, i32 %318)
  %320 = load %struct.buffer_head**, %struct.buffer_head*** %19, align 8
  %321 = load %struct.reiserfs_journal_desc*, %struct.reiserfs_journal_desc** %13, align 8
  %322 = call i32 @get_desc_trans_len(%struct.reiserfs_journal_desc* %321)
  %323 = call i32 @brelse_array(%struct.buffer_head** %320, i32 %322)
  %324 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %325 = call i32 @brelse(%struct.buffer_head* %324)
  %326 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  %327 = call i32 @brelse(%struct.buffer_head* %326)
  %328 = load %struct.buffer_head**, %struct.buffer_head*** %18, align 8
  %329 = call i32 @kfree(%struct.buffer_head** %328)
  %330 = load %struct.buffer_head**, %struct.buffer_head*** %19, align 8
  %331 = call i32 @kfree(%struct.buffer_head** %330)
  store i32 -1, i32* %6, align 4
  br label %491

332:                                              ; preds = %294
  %333 = load %struct.buffer_head**, %struct.buffer_head*** %19, align 8
  %334 = load i32, i32* %21, align 4
  %335 = sext i32 %334 to i64
  %336 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %333, i64 %335
  %337 = load %struct.buffer_head*, %struct.buffer_head** %336, align 8
  %338 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %337, i32 0, i32 2
  %339 = load i64, i64* %338, align 8
  %340 = load %struct.buffer_head**, %struct.buffer_head*** %18, align 8
  %341 = load i32, i32* %21, align 4
  %342 = sext i32 %341 to i64
  %343 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %340, i64 %342
  %344 = load %struct.buffer_head*, %struct.buffer_head** %343, align 8
  %345 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %344, i32 0, i32 2
  %346 = load i64, i64* %345, align 8
  %347 = load %struct.buffer_head**, %struct.buffer_head*** %19, align 8
  %348 = load i32, i32* %21, align 4
  %349 = sext i32 %348 to i64
  %350 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %347, i64 %349
  %351 = load %struct.buffer_head*, %struct.buffer_head** %350, align 8
  %352 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %351, i32 0, i32 1
  %353 = load i32, i32* %352, align 4
  %354 = call i32 @memcpy(i64 %339, i64 %346, i32 %353)
  %355 = load %struct.buffer_head**, %struct.buffer_head*** %19, align 8
  %356 = load i32, i32* %21, align 4
  %357 = sext i32 %356 to i64
  %358 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %355, i64 %357
  %359 = load %struct.buffer_head*, %struct.buffer_head** %358, align 8
  %360 = call i32 @set_buffer_uptodate(%struct.buffer_head* %359)
  %361 = load %struct.buffer_head**, %struct.buffer_head*** %18, align 8
  %362 = load i32, i32* %21, align 4
  %363 = sext i32 %362 to i64
  %364 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %361, i64 %363
  %365 = load %struct.buffer_head*, %struct.buffer_head** %364, align 8
  %366 = call i32 @brelse(%struct.buffer_head* %365)
  br label %367

367:                                              ; preds = %332
  %368 = load i32, i32* %21, align 4
  %369 = add nsw i32 %368, 1
  store i32 %369, i32* %21, align 4
  br label %289

370:                                              ; preds = %289
  store i32 0, i32* %21, align 4
  br label %371

371:                                              ; preds = %389, %370
  %372 = load i32, i32* %21, align 4
  %373 = load %struct.reiserfs_journal_desc*, %struct.reiserfs_journal_desc** %13, align 8
  %374 = call i32 @get_desc_trans_len(%struct.reiserfs_journal_desc* %373)
  %375 = icmp ult i32 %372, %374
  br i1 %375, label %376, label %392

376:                                              ; preds = %371
  %377 = load %struct.buffer_head**, %struct.buffer_head*** %19, align 8
  %378 = load i32, i32* %21, align 4
  %379 = sext i32 %378 to i64
  %380 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %377, i64 %379
  %381 = load %struct.buffer_head*, %struct.buffer_head** %380, align 8
  %382 = call i32 @set_buffer_dirty(%struct.buffer_head* %381)
  %383 = load i32, i32* @SWRITE, align 4
  %384 = load %struct.buffer_head**, %struct.buffer_head*** %19, align 8
  %385 = load i32, i32* %21, align 4
  %386 = sext i32 %385 to i64
  %387 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %384, i64 %386
  %388 = call i32 @ll_rw_block(i32 %383, i32 1, %struct.buffer_head** %387)
  br label %389

389:                                              ; preds = %376
  %390 = load i32, i32* %21, align 4
  %391 = add nsw i32 %390, 1
  store i32 %391, i32* %21, align 4
  br label %371

392:                                              ; preds = %371
  store i32 0, i32* %21, align 4
  br label %393

393:                                              ; preds = %439, %392
  %394 = load i32, i32* %21, align 4
  %395 = load %struct.reiserfs_journal_desc*, %struct.reiserfs_journal_desc** %13, align 8
  %396 = call i32 @get_desc_trans_len(%struct.reiserfs_journal_desc* %395)
  %397 = icmp ult i32 %394, %396
  br i1 %397, label %398, label %442

398:                                              ; preds = %393
  %399 = load %struct.buffer_head**, %struct.buffer_head*** %19, align 8
  %400 = load i32, i32* %21, align 4
  %401 = sext i32 %400 to i64
  %402 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %399, i64 %401
  %403 = load %struct.buffer_head*, %struct.buffer_head** %402, align 8
  %404 = call i32 @wait_on_buffer(%struct.buffer_head* %403)
  %405 = load %struct.buffer_head**, %struct.buffer_head*** %19, align 8
  %406 = load i32, i32* %21, align 4
  %407 = sext i32 %406 to i64
  %408 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %405, i64 %407
  %409 = load %struct.buffer_head*, %struct.buffer_head** %408, align 8
  %410 = call i32 @buffer_uptodate(%struct.buffer_head* %409)
  %411 = icmp ne i32 %410, 0
  br i1 %411, label %432, label %412

412:                                              ; preds = %398
  %413 = load %struct.super_block*, %struct.super_block** %7, align 8
  %414 = call i32 @reiserfs_warning(%struct.super_block* %413, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.13, i64 0, i64 0))
  %415 = load %struct.buffer_head**, %struct.buffer_head*** %19, align 8
  %416 = load i32, i32* %21, align 4
  %417 = sext i32 %416 to i64
  %418 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %415, i64 %417
  %419 = load %struct.reiserfs_journal_desc*, %struct.reiserfs_journal_desc** %13, align 8
  %420 = call i32 @get_desc_trans_len(%struct.reiserfs_journal_desc* %419)
  %421 = load i32, i32* %21, align 4
  %422 = sub i32 %420, %421
  %423 = call i32 @brelse_array(%struct.buffer_head** %418, i32 %422)
  %424 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %425 = call i32 @brelse(%struct.buffer_head* %424)
  %426 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  %427 = call i32 @brelse(%struct.buffer_head* %426)
  %428 = load %struct.buffer_head**, %struct.buffer_head*** %18, align 8
  %429 = call i32 @kfree(%struct.buffer_head** %428)
  %430 = load %struct.buffer_head**, %struct.buffer_head*** %19, align 8
  %431 = call i32 @kfree(%struct.buffer_head** %430)
  store i32 -1, i32* %6, align 4
  br label %491

432:                                              ; preds = %398
  %433 = load %struct.buffer_head**, %struct.buffer_head*** %19, align 8
  %434 = load i32, i32* %21, align 4
  %435 = sext i32 %434 to i64
  %436 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %433, i64 %435
  %437 = load %struct.buffer_head*, %struct.buffer_head** %436, align 8
  %438 = call i32 @brelse(%struct.buffer_head* %437)
  br label %439

439:                                              ; preds = %432
  %440 = load i32, i32* %21, align 4
  %441 = add nsw i32 %440, 1
  store i32 %441, i32* %21, align 4
  br label %393

442:                                              ; preds = %393
  %443 = load %struct.super_block*, %struct.super_block** %7, align 8
  %444 = call i64 @SB_ONDISK_JOURNAL_1st_BLOCK(%struct.super_block* %443)
  %445 = load i32, i32* %20, align 4
  %446 = load %struct.reiserfs_journal_desc*, %struct.reiserfs_journal_desc** %13, align 8
  %447 = call i32 @get_desc_trans_len(%struct.reiserfs_journal_desc* %446)
  %448 = add i32 %445, %447
  %449 = add i32 %448, 2
  %450 = load %struct.super_block*, %struct.super_block** %7, align 8
  %451 = call i32 @SB_ONDISK_JOURNAL_SIZE(%struct.super_block* %450)
  %452 = urem i32 %449, %451
  %453 = zext i32 %452 to i64
  %454 = add i64 %444, %453
  store i64 %454, i64* %8, align 8
  %455 = load %struct.super_block*, %struct.super_block** %7, align 8
  %456 = load i32, i32* @REISERFS_DEBUG_CODE, align 4
  %457 = load i64, i64* %8, align 8
  %458 = load %struct.super_block*, %struct.super_block** %7, align 8
  %459 = call i64 @SB_ONDISK_JOURNAL_1st_BLOCK(%struct.super_block* %458)
  %460 = sub i64 %457, %459
  %461 = call i32 (%struct.super_block*, i32, i8*, i64, ...) @reiserfs_debug(%struct.super_block* %455, i32 %456, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.14, i64 0, i64 0), i64 %460)
  %462 = load i64, i64* %8, align 8
  %463 = load %struct.super_block*, %struct.super_block** %7, align 8
  %464 = call i64 @SB_ONDISK_JOURNAL_1st_BLOCK(%struct.super_block* %463)
  %465 = sub i64 %462, %464
  %466 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %12, align 8
  %467 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %466, i32 0, i32 0
  store i64 %465, i64* %467, align 8
  %468 = load i32, i32* %15, align 4
  %469 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %12, align 8
  %470 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %469, i32 0, i32 1
  store i32 %468, i32* %470, align 8
  %471 = load i32, i32* %15, align 4
  %472 = add i32 %471, 1
  %473 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %12, align 8
  %474 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %473, i32 0, i32 2
  store i32 %472, i32* %474, align 4
  %475 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %12, align 8
  %476 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %475, i32 0, i32 2
  %477 = load i32, i32* %476, align 4
  %478 = icmp eq i32 %477, 0
  br i1 %478, label %479, label %482

479:                                              ; preds = %442
  %480 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %12, align 8
  %481 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %480, i32 0, i32 2
  store i32 10, i32* %481, align 4
  br label %482

482:                                              ; preds = %479, %442
  %483 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %484 = call i32 @brelse(%struct.buffer_head* %483)
  %485 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  %486 = call i32 @brelse(%struct.buffer_head* %485)
  %487 = load %struct.buffer_head**, %struct.buffer_head*** %18, align 8
  %488 = call i32 @kfree(%struct.buffer_head** %487)
  %489 = load %struct.buffer_head**, %struct.buffer_head*** %19, align 8
  %490 = call i32 @kfree(%struct.buffer_head** %489)
  store i32 0, i32* %6, align 4
  br label %491

491:                                              ; preds = %482, %412, %308, %264, %159, %118, %105, %78, %63, %31
  %492 = load i32, i32* %6, align 4
  ret i32 %492
}

declare dso_local %struct.reiserfs_journal* @SB_JOURNAL(%struct.super_block*) #1

declare dso_local %struct.buffer_head* @journal_bread(%struct.super_block*, i32) #1

declare dso_local i64 @SB_ONDISK_JOURNAL_1st_BLOCK(%struct.super_block*) #1

declare dso_local i32 @reiserfs_debug(%struct.super_block*, i32, i8*, i64, ...) #1

declare dso_local i32 @get_desc_trans_len(%struct.reiserfs_journal_desc*) #1

declare dso_local i64 @get_desc_mount_id(%struct.reiserfs_journal_desc*) #1

declare dso_local i32 @get_desc_trans_id(%struct.reiserfs_journal_desc*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @SB_ONDISK_JOURNAL_SIZE(%struct.super_block*) #1

declare dso_local i64 @journal_compare_desc_commit(%struct.super_block*, %struct.reiserfs_journal_desc*, %struct.reiserfs_journal_commit*) #1

declare dso_local i32 @get_commit_trans_id(%struct.reiserfs_journal_commit*) #1

declare dso_local i32 @get_commit_trans_len(%struct.reiserfs_journal_commit*) #1

declare dso_local %struct.buffer_head** @kmalloc(i32, i32) #1

declare dso_local i32 @kfree(%struct.buffer_head**) #1

declare dso_local i32 @reiserfs_warning(%struct.super_block*, i8*, i8*) #1

declare dso_local i32 @journal_trans_half(i32) #1

declare dso_local %struct.buffer_head* @journal_getblk(%struct.super_block*, i32) #1

declare dso_local %struct.buffer_head* @sb_getblk(%struct.super_block*, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i64 @SB_BLOCK_COUNT(%struct.super_block*) #1

declare dso_local i64 @is_block_in_log_or_reserved_area(%struct.super_block*, i64) #1

declare dso_local i32 @brelse_array(%struct.buffer_head**, i32) #1

declare dso_local i32 @ll_rw_block(i32, i32, %struct.buffer_head**) #1

declare dso_local i32 @wait_on_buffer(%struct.buffer_head*) #1

declare dso_local i32 @buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i32 @memcpy(i64, i64, i32) #1

declare dso_local i32 @set_buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i32 @set_buffer_dirty(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
