; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_journal.c_journal_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_journal.c_journal_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32, i32 }
%struct.reiserfs_journal = type { i64, i32, i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.reiserfs_journal_desc = type { i32 }
%struct.buffer_head = type { i64, i64 }
%struct.reiserfs_journal_header = type { i32, i32, i32 }

@BDEVNAME_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"checking transaction log (%s)\0A\00", align 1
@REISERFS_DEBUG_CODE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [84 x i8] c"journal-1153: found in header: first_unflushed_offset %d, last_flushed_trans_id %lu\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"clm-2076\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"device is readonly, unable to replay log\00", align 1
@.str.4 = private unnamed_addr constant [64 x i8] c"journal-1179: Setting oldest_start to offset %llu, trans_id %lu\00", align 1
@.str.5 = private unnamed_addr constant [65 x i8] c"journal-1180: Resetting oldest_start to offset %lu, trans_id %lu\00", align 1
@.str.6 = private unnamed_addr constant [44 x i8] c"journal-1299: Setting newest_mount_id to %d\00", align 1
@.str.7 = private unnamed_addr constant [61 x i8] c"journal-1206: Starting replay from offset %llu, trans_id %lu\00", align 1
@.str.8 = private unnamed_addr constant [42 x i8] c"journal-1225: No valid transactions found\00", align 1
@.str.9 = private unnamed_addr constant [45 x i8] c"journal-1299: Setting newest_mount_id to %lu\00", align 1
@.str.10 = private unnamed_addr constant [41 x i8] c"replayed %d transactions in %lu seconds\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*)* @journal_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @journal_read(%struct.super_block* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca %struct.reiserfs_journal*, align 8
  %5 = alloca %struct.reiserfs_journal_desc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.buffer_head*, align 8
  %13 = alloca %struct.reiserfs_journal_header*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %3, align 8
  %21 = load %struct.super_block*, %struct.super_block** %3, align 8
  %22 = call %struct.reiserfs_journal* @SB_JOURNAL(%struct.super_block* %21)
  store %struct.reiserfs_journal* %22, %struct.reiserfs_journal** %4, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  store i64 9, i64* %11, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 1, i32* %16, align 4
  %23 = load i32, i32* @BDEVNAME_SIZE, align 4
  %24 = zext i32 %23 to i64
  %25 = call i8* @llvm.stacksave()
  store i8* %25, i8** %18, align 8
  %26 = alloca i8, i64 %24, align 16
  store i64 %24, i64* %19, align 8
  %27 = load %struct.super_block*, %struct.super_block** %3, align 8
  %28 = call i64 @SB_ONDISK_JOURNAL_1st_BLOCK(%struct.super_block* %27)
  store i64 %28, i64* %10, align 8
  %29 = load %struct.super_block*, %struct.super_block** %3, align 8
  %30 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %4, align 8
  %31 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %30, i32 0, i32 5
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @bdevname(i32 %32, i8* %26)
  %34 = call i32 (%struct.super_block*, i8*, i32, ...) @reiserfs_info(%struct.super_block* %29, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %33)
  %35 = call i64 (...) @get_seconds()
  store i64 %35, i64* %8, align 8
  %36 = load %struct.super_block*, %struct.super_block** %3, align 8
  %37 = load %struct.super_block*, %struct.super_block** %3, align 8
  %38 = call i64 @SB_ONDISK_JOURNAL_1st_BLOCK(%struct.super_block* %37)
  %39 = load %struct.super_block*, %struct.super_block** %3, align 8
  %40 = call i64 @SB_ONDISK_JOURNAL_SIZE(%struct.super_block* %39)
  %41 = add i64 %38, %40
  %42 = trunc i64 %41 to i32
  %43 = call i8* @journal_bread(%struct.super_block* %36, i32 %42)
  %44 = bitcast i8* %43 to %struct.TYPE_2__*
  %45 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %4, align 8
  %46 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %45, i32 0, i32 6
  store %struct.TYPE_2__* %44, %struct.TYPE_2__** %46, align 8
  %47 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %4, align 8
  %48 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %47, i32 0, i32 6
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = icmp ne %struct.TYPE_2__* %49, null
  br i1 %50, label %52, label %51

51:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  store i32 1, i32* %20, align 4
  br label %386

52:                                               ; preds = %1
  %53 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %4, align 8
  %54 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %53, i32 0, i32 6
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = inttoptr i64 %57 to %struct.reiserfs_journal_header*
  store %struct.reiserfs_journal_header* %58, %struct.reiserfs_journal_header** %13, align 8
  %59 = load %struct.reiserfs_journal_header*, %struct.reiserfs_journal_header** %13, align 8
  %60 = getelementptr inbounds %struct.reiserfs_journal_header, %struct.reiserfs_journal_header* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @le32_to_cpu(i32 %61)
  %63 = sext i32 %62 to i64
  %64 = load %struct.super_block*, %struct.super_block** %3, align 8
  %65 = call i64 @SB_ONDISK_JOURNAL_SIZE(%struct.super_block* %64)
  %66 = icmp ult i64 %63, %65
  br i1 %66, label %67, label %124

67:                                               ; preds = %52
  %68 = load %struct.reiserfs_journal_header*, %struct.reiserfs_journal_header** %13, align 8
  %69 = getelementptr inbounds %struct.reiserfs_journal_header, %struct.reiserfs_journal_header* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @le32_to_cpu(i32 %70)
  %72 = icmp sgt i32 %71, 0
  br i1 %72, label %73, label %124

73:                                               ; preds = %67
  %74 = load %struct.super_block*, %struct.super_block** %3, align 8
  %75 = call i64 @SB_ONDISK_JOURNAL_1st_BLOCK(%struct.super_block* %74)
  %76 = load %struct.reiserfs_journal_header*, %struct.reiserfs_journal_header** %13, align 8
  %77 = getelementptr inbounds %struct.reiserfs_journal_header, %struct.reiserfs_journal_header* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @le32_to_cpu(i32 %78)
  %80 = sext i32 %79 to i64
  %81 = add i64 %75, %80
  store i64 %81, i64* %9, align 8
  %82 = load %struct.reiserfs_journal_header*, %struct.reiserfs_journal_header** %13, align 8
  %83 = getelementptr inbounds %struct.reiserfs_journal_header, %struct.reiserfs_journal_header* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @le32_to_cpu(i32 %84)
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %6, align 4
  %87 = load %struct.reiserfs_journal_header*, %struct.reiserfs_journal_header** %13, align 8
  %88 = getelementptr inbounds %struct.reiserfs_journal_header, %struct.reiserfs_journal_header* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @le32_to_cpu(i32 %89)
  %91 = sext i32 %90 to i64
  store i64 %91, i64* %11, align 8
  %92 = load %struct.super_block*, %struct.super_block** %3, align 8
  %93 = load i32, i32* @REISERFS_DEBUG_CODE, align 4
  %94 = load %struct.reiserfs_journal_header*, %struct.reiserfs_journal_header** %13, align 8
  %95 = getelementptr inbounds %struct.reiserfs_journal_header, %struct.reiserfs_journal_header* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @le32_to_cpu(i32 %96)
  %98 = load %struct.reiserfs_journal_header*, %struct.reiserfs_journal_header** %13, align 8
  %99 = getelementptr inbounds %struct.reiserfs_journal_header, %struct.reiserfs_journal_header* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @le32_to_cpu(i32 %100)
  %102 = call i32 (%struct.super_block*, i32, i8*, ...) @reiserfs_debug(%struct.super_block* %92, i32 %93, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.1, i64 0, i64 0), i32 %97, i32 %101)
  store i32 1, i32* %14, align 4
  %103 = load %struct.super_block*, %struct.super_block** %3, align 8
  %104 = load %struct.super_block*, %struct.super_block** %3, align 8
  %105 = call i64 @SB_ONDISK_JOURNAL_1st_BLOCK(%struct.super_block* %104)
  %106 = load %struct.reiserfs_journal_header*, %struct.reiserfs_journal_header** %13, align 8
  %107 = getelementptr inbounds %struct.reiserfs_journal_header, %struct.reiserfs_journal_header* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @le32_to_cpu(i32 %108)
  %110 = sext i32 %109 to i64
  %111 = add i64 %105, %110
  %112 = trunc i64 %111 to i32
  %113 = call i8* @journal_bread(%struct.super_block* %103, i32 %112)
  %114 = bitcast i8* %113 to %struct.buffer_head*
  store %struct.buffer_head* %114, %struct.buffer_head** %12, align 8
  %115 = load %struct.super_block*, %struct.super_block** %3, align 8
  %116 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %117 = call i32 @journal_transaction_is_valid(%struct.super_block* %115, %struct.buffer_head* %116, i32* null, i64* null)
  store i32 %117, i32* %17, align 4
  %118 = load i32, i32* %17, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %121, label %120

120:                                              ; preds = %73
  store i32 0, i32* %16, align 4
  br label %121

121:                                              ; preds = %120, %73
  %122 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %123 = call i32 @brelse(%struct.buffer_head* %122)
  br label %238

124:                                              ; preds = %67, %52
  %125 = load i32, i32* %16, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %136

127:                                              ; preds = %124
  %128 = load %struct.super_block*, %struct.super_block** %3, align 8
  %129 = getelementptr inbounds %struct.super_block, %struct.super_block* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = call i64 @bdev_read_only(i32 %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %136

133:                                              ; preds = %127
  %134 = load %struct.super_block*, %struct.super_block** %3, align 8
  %135 = call i32 @reiserfs_warning(%struct.super_block* %134, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %20, align 4
  br label %386

136:                                              ; preds = %127, %124
  br label %137

137:                                              ; preds = %234, %136
  %138 = load i32, i32* %16, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %148

140:                                              ; preds = %137
  %141 = load i64, i64* %10, align 8
  %142 = load %struct.super_block*, %struct.super_block** %3, align 8
  %143 = call i64 @SB_ONDISK_JOURNAL_1st_BLOCK(%struct.super_block* %142)
  %144 = load %struct.super_block*, %struct.super_block** %3, align 8
  %145 = call i64 @SB_ONDISK_JOURNAL_SIZE(%struct.super_block* %144)
  %146 = add i64 %143, %145
  %147 = icmp ult i64 %141, %146
  br label %148

148:                                              ; preds = %140, %137
  %149 = phi i1 [ false, %137 ], [ %147, %140 ]
  br i1 %149, label %150, label %237

150:                                              ; preds = %148
  %151 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %4, align 8
  %152 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %151, i32 0, i32 5
  %153 = load i32, i32* %152, align 8
  %154 = load i64, i64* %10, align 8
  %155 = load %struct.super_block*, %struct.super_block** %3, align 8
  %156 = getelementptr inbounds %struct.super_block, %struct.super_block* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.super_block*, %struct.super_block** %3, align 8
  %159 = call i64 @SB_ONDISK_JOURNAL_1st_BLOCK(%struct.super_block* %158)
  %160 = load %struct.super_block*, %struct.super_block** %3, align 8
  %161 = call i64 @SB_ONDISK_JOURNAL_SIZE(%struct.super_block* %160)
  %162 = add i64 %159, %161
  %163 = call %struct.buffer_head* @reiserfs_breada(i32 %153, i64 %154, i32 %157, i64 %162)
  store %struct.buffer_head* %163, %struct.buffer_head** %12, align 8
  %164 = load %struct.super_block*, %struct.super_block** %3, align 8
  %165 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %166 = call i32 @journal_transaction_is_valid(%struct.super_block* %164, %struct.buffer_head* %165, i32* %7, i64* %11)
  store i32 %166, i32* %17, align 4
  %167 = load i32, i32* %17, align 4
  %168 = icmp eq i32 %167, 1
  br i1 %168, label %169, label %231

169:                                              ; preds = %150
  %170 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %171 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %170, i32 0, i32 1
  %172 = load i64, i64* %171, align 8
  %173 = inttoptr i64 %172 to %struct.reiserfs_journal_desc*
  store %struct.reiserfs_journal_desc* %173, %struct.reiserfs_journal_desc** %5, align 8
  %174 = load i64, i64* %9, align 8
  %175 = icmp eq i64 %174, 0
  br i1 %175, label %176, label %192

176:                                              ; preds = %169
  %177 = load %struct.reiserfs_journal_desc*, %struct.reiserfs_journal_desc** %5, align 8
  %178 = call i32 @get_desc_trans_id(%struct.reiserfs_journal_desc* %177)
  store i32 %178, i32* %6, align 4
  %179 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %180 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %179, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  store i64 %181, i64* %9, align 8
  %182 = load %struct.reiserfs_journal_desc*, %struct.reiserfs_journal_desc** %5, align 8
  %183 = call i64 @get_desc_mount_id(%struct.reiserfs_journal_desc* %182)
  store i64 %183, i64* %11, align 8
  %184 = load %struct.super_block*, %struct.super_block** %3, align 8
  %185 = load i32, i32* @REISERFS_DEBUG_CODE, align 4
  %186 = load i64, i64* %9, align 8
  %187 = load %struct.super_block*, %struct.super_block** %3, align 8
  %188 = call i64 @SB_ONDISK_JOURNAL_1st_BLOCK(%struct.super_block* %187)
  %189 = sub i64 %186, %188
  %190 = load i32, i32* %6, align 4
  %191 = call i32 (%struct.super_block*, i32, i8*, ...) @reiserfs_debug(%struct.super_block* %184, i32 %185, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.4, i64 0, i64 0), i64 %189, i32 %190)
  br label %212

192:                                              ; preds = %169
  %193 = load i32, i32* %6, align 4
  %194 = load %struct.reiserfs_journal_desc*, %struct.reiserfs_journal_desc** %5, align 8
  %195 = call i32 @get_desc_trans_id(%struct.reiserfs_journal_desc* %194)
  %196 = icmp ugt i32 %193, %195
  br i1 %196, label %197, label %211

197:                                              ; preds = %192
  %198 = load %struct.reiserfs_journal_desc*, %struct.reiserfs_journal_desc** %5, align 8
  %199 = call i32 @get_desc_trans_id(%struct.reiserfs_journal_desc* %198)
  store i32 %199, i32* %6, align 4
  %200 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %201 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %200, i32 0, i32 0
  %202 = load i64, i64* %201, align 8
  store i64 %202, i64* %9, align 8
  %203 = load %struct.super_block*, %struct.super_block** %3, align 8
  %204 = load i32, i32* @REISERFS_DEBUG_CODE, align 4
  %205 = load i64, i64* %9, align 8
  %206 = load %struct.super_block*, %struct.super_block** %3, align 8
  %207 = call i64 @SB_ONDISK_JOURNAL_1st_BLOCK(%struct.super_block* %206)
  %208 = sub i64 %205, %207
  %209 = load i32, i32* %6, align 4
  %210 = call i32 (%struct.super_block*, i32, i8*, ...) @reiserfs_debug(%struct.super_block* %203, i32 %204, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.5, i64 0, i64 0), i64 %208, i32 %209)
  br label %211

211:                                              ; preds = %197, %192
  br label %212

212:                                              ; preds = %211, %176
  %213 = load i64, i64* %11, align 8
  %214 = load %struct.reiserfs_journal_desc*, %struct.reiserfs_journal_desc** %5, align 8
  %215 = call i64 @get_desc_mount_id(%struct.reiserfs_journal_desc* %214)
  %216 = icmp ult i64 %213, %215
  br i1 %216, label %217, label %225

217:                                              ; preds = %212
  %218 = load %struct.reiserfs_journal_desc*, %struct.reiserfs_journal_desc** %5, align 8
  %219 = call i64 @get_desc_mount_id(%struct.reiserfs_journal_desc* %218)
  store i64 %219, i64* %11, align 8
  %220 = load %struct.super_block*, %struct.super_block** %3, align 8
  %221 = load i32, i32* @REISERFS_DEBUG_CODE, align 4
  %222 = load %struct.reiserfs_journal_desc*, %struct.reiserfs_journal_desc** %5, align 8
  %223 = call i64 @get_desc_mount_id(%struct.reiserfs_journal_desc* %222)
  %224 = call i32 (%struct.super_block*, i32, i8*, ...) @reiserfs_debug(%struct.super_block* %220, i32 %221, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.6, i64 0, i64 0), i64 %223)
  br label %225

225:                                              ; preds = %217, %212
  %226 = load %struct.reiserfs_journal_desc*, %struct.reiserfs_journal_desc** %5, align 8
  %227 = call i64 @get_desc_trans_len(%struct.reiserfs_journal_desc* %226)
  %228 = add nsw i64 %227, 2
  %229 = load i64, i64* %10, align 8
  %230 = add i64 %229, %228
  store i64 %230, i64* %10, align 8
  br label %234

231:                                              ; preds = %150
  %232 = load i64, i64* %10, align 8
  %233 = add i64 %232, 1
  store i64 %233, i64* %10, align 8
  br label %234

234:                                              ; preds = %231, %225
  %235 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %236 = call i32 @brelse(%struct.buffer_head* %235)
  br label %137

237:                                              ; preds = %148
  br label %238

238:                                              ; preds = %237, %121
  %239 = load i64, i64* %9, align 8
  store i64 %239, i64* %10, align 8
  %240 = load i32, i32* %6, align 4
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %251

242:                                              ; preds = %238
  %243 = load %struct.super_block*, %struct.super_block** %3, align 8
  %244 = load i32, i32* @REISERFS_DEBUG_CODE, align 4
  %245 = load i64, i64* %10, align 8
  %246 = load %struct.super_block*, %struct.super_block** %3, align 8
  %247 = call i64 @SB_ONDISK_JOURNAL_1st_BLOCK(%struct.super_block* %246)
  %248 = sub i64 %245, %247
  %249 = load i32, i32* %6, align 4
  %250 = call i32 (%struct.super_block*, i32, i8*, ...) @reiserfs_debug(%struct.super_block* %243, i32 %244, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.7, i64 0, i64 0), i64 %248, i32 %249)
  br label %251

251:                                              ; preds = %242, %238
  store i32 0, i32* %15, align 4
  br label %252

252:                                              ; preds = %289, %251
  %253 = load i32, i32* %16, align 4
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %255, label %258

255:                                              ; preds = %252
  %256 = load i32, i32* %6, align 4
  %257 = icmp ugt i32 %256, 0
  br label %258

258:                                              ; preds = %255, %252
  %259 = phi i1 [ false, %252 ], [ %257, %255 ]
  br i1 %259, label %260, label %290

260:                                              ; preds = %258
  %261 = load %struct.super_block*, %struct.super_block** %3, align 8
  %262 = load i64, i64* %10, align 8
  %263 = load i64, i64* %9, align 8
  %264 = load i32, i32* %6, align 4
  %265 = load i64, i64* %11, align 8
  %266 = call i32 @journal_read_transaction(%struct.super_block* %261, i64 %262, i64 %263, i32 %264, i64 %265)
  store i32 %266, i32* %17, align 4
  %267 = load i32, i32* %17, align 4
  %268 = icmp slt i32 %267, 0
  br i1 %268, label %269, label %271

269:                                              ; preds = %260
  %270 = load i32, i32* %17, align 4
  store i32 %270, i32* %2, align 4
  store i32 1, i32* %20, align 4
  br label %386

271:                                              ; preds = %260
  %272 = load i32, i32* %17, align 4
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %274, label %275

274:                                              ; preds = %271
  br label %290

275:                                              ; preds = %271
  br label %276

276:                                              ; preds = %275
  %277 = load %struct.super_block*, %struct.super_block** %3, align 8
  %278 = call i64 @SB_ONDISK_JOURNAL_1st_BLOCK(%struct.super_block* %277)
  %279 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %4, align 8
  %280 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %279, i32 0, i32 0
  %281 = load i64, i64* %280, align 8
  %282 = add i64 %278, %281
  store i64 %282, i64* %10, align 8
  %283 = load i32, i32* %15, align 4
  %284 = add nsw i32 %283, 1
  store i32 %284, i32* %15, align 4
  %285 = load i64, i64* %10, align 8
  %286 = load i64, i64* %9, align 8
  %287 = icmp eq i64 %285, %286
  br i1 %287, label %288, label %289

288:                                              ; preds = %276
  br label %290

289:                                              ; preds = %276
  br label %252

290:                                              ; preds = %288, %274, %258
  %291 = load i32, i32* %6, align 4
  %292 = icmp eq i32 %291, 0
  br i1 %292, label %293, label %297

293:                                              ; preds = %290
  %294 = load %struct.super_block*, %struct.super_block** %3, align 8
  %295 = load i32, i32* @REISERFS_DEBUG_CODE, align 4
  %296 = call i32 (%struct.super_block*, i32, i8*, ...) @reiserfs_debug(%struct.super_block* %294, i32 %295, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.8, i64 0, i64 0))
  br label %297

297:                                              ; preds = %293, %290
  %298 = load i32, i32* %14, align 4
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %300, label %339

300:                                              ; preds = %297
  %301 = load i32, i32* %15, align 4
  %302 = icmp eq i32 %301, 0
  br i1 %302, label %303, label %339

303:                                              ; preds = %300
  %304 = load %struct.reiserfs_journal_header*, %struct.reiserfs_journal_header** %13, align 8
  %305 = getelementptr inbounds %struct.reiserfs_journal_header, %struct.reiserfs_journal_header* %304, i32 0, i32 2
  %306 = load i32, i32* %305, align 4
  %307 = call i32 @le32_to_cpu(i32 %306)
  %308 = sext i32 %307 to i64
  %309 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %4, align 8
  %310 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %309, i32 0, i32 0
  store i64 %308, i64* %310, align 8
  %311 = load %struct.reiserfs_journal_header*, %struct.reiserfs_journal_header** %13, align 8
  %312 = getelementptr inbounds %struct.reiserfs_journal_header, %struct.reiserfs_journal_header* %311, i32 0, i32 1
  %313 = load i32, i32* %312, align 4
  %314 = call i32 @le32_to_cpu(i32 %313)
  %315 = add nsw i32 %314, 1
  %316 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %4, align 8
  %317 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %316, i32 0, i32 1
  store i32 %315, i32* %317, align 8
  %318 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %4, align 8
  %319 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %318, i32 0, i32 1
  %320 = load i32, i32* %319, align 8
  %321 = icmp eq i32 %320, 0
  br i1 %321, label %322, label %325

322:                                              ; preds = %303
  %323 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %4, align 8
  %324 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %323, i32 0, i32 1
  store i32 10, i32* %324, align 8
  br label %325

325:                                              ; preds = %322, %303
  %326 = load %struct.reiserfs_journal_header*, %struct.reiserfs_journal_header** %13, align 8
  %327 = getelementptr inbounds %struct.reiserfs_journal_header, %struct.reiserfs_journal_header* %326, i32 0, i32 1
  %328 = load i32, i32* %327, align 4
  %329 = call i32 @le32_to_cpu(i32 %328)
  %330 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %4, align 8
  %331 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %330, i32 0, i32 2
  store i32 %329, i32* %331, align 4
  %332 = load %struct.reiserfs_journal_header*, %struct.reiserfs_journal_header** %13, align 8
  %333 = getelementptr inbounds %struct.reiserfs_journal_header, %struct.reiserfs_journal_header* %332, i32 0, i32 0
  %334 = load i32, i32* %333, align 4
  %335 = call i32 @le32_to_cpu(i32 %334)
  %336 = add nsw i32 %335, 1
  %337 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %4, align 8
  %338 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %337, i32 0, i32 3
  store i32 %336, i32* %338, align 8
  br label %345

339:                                              ; preds = %300, %297
  %340 = load i64, i64* %11, align 8
  %341 = add i64 %340, 1
  %342 = trunc i64 %341 to i32
  %343 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %4, align 8
  %344 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %343, i32 0, i32 3
  store i32 %342, i32* %344, align 8
  br label %345

345:                                              ; preds = %339, %325
  %346 = load %struct.super_block*, %struct.super_block** %3, align 8
  %347 = load i32, i32* @REISERFS_DEBUG_CODE, align 4
  %348 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %4, align 8
  %349 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %348, i32 0, i32 3
  %350 = load i32, i32* %349, align 8
  %351 = call i32 (%struct.super_block*, i32, i8*, ...) @reiserfs_debug(%struct.super_block* %346, i32 %347, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.9, i64 0, i64 0), i32 %350)
  %352 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %4, align 8
  %353 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %352, i32 0, i32 0
  %354 = load i64, i64* %353, align 8
  %355 = trunc i64 %354 to i32
  %356 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %4, align 8
  %357 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %356, i32 0, i32 4
  store i32 %355, i32* %357, align 4
  %358 = load i32, i32* %15, align 4
  %359 = icmp sgt i32 %358, 0
  br i1 %359, label %360, label %367

360:                                              ; preds = %345
  %361 = load %struct.super_block*, %struct.super_block** %3, align 8
  %362 = load i32, i32* %15, align 4
  %363 = call i64 (...) @get_seconds()
  %364 = load i64, i64* %8, align 8
  %365 = sub nsw i64 %363, %364
  %366 = call i32 (%struct.super_block*, i8*, i32, ...) @reiserfs_info(%struct.super_block* %361, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.10, i64 0, i64 0), i32 %362, i64 %365)
  br label %367

367:                                              ; preds = %360, %345
  %368 = load %struct.super_block*, %struct.super_block** %3, align 8
  %369 = getelementptr inbounds %struct.super_block, %struct.super_block* %368, i32 0, i32 0
  %370 = load i32, i32* %369, align 4
  %371 = call i64 @bdev_read_only(i32 %370)
  %372 = icmp ne i64 %371, 0
  br i1 %372, label %385, label %373

373:                                              ; preds = %367
  %374 = load %struct.super_block*, %struct.super_block** %3, align 8
  %375 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %4, align 8
  %376 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %375, i32 0, i32 0
  %377 = load i64, i64* %376, align 8
  %378 = trunc i64 %377 to i32
  %379 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %4, align 8
  %380 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %379, i32 0, i32 2
  %381 = load i32, i32* %380, align 4
  %382 = call i64 @_update_journal_header_block(%struct.super_block* %374, i32 %378, i32 %381)
  %383 = icmp ne i64 %382, 0
  br i1 %383, label %384, label %385

384:                                              ; preds = %373
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %20, align 4
  br label %386

385:                                              ; preds = %373, %367
  store i32 0, i32* %2, align 4
  store i32 1, i32* %20, align 4
  br label %386

386:                                              ; preds = %385, %384, %269, %133, %51
  %387 = load i8*, i8** %18, align 8
  call void @llvm.stackrestore(i8* %387)
  %388 = load i32, i32* %2, align 4
  ret i32 %388
}

declare dso_local %struct.reiserfs_journal* @SB_JOURNAL(%struct.super_block*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @SB_ONDISK_JOURNAL_1st_BLOCK(%struct.super_block*) #1

declare dso_local i32 @reiserfs_info(%struct.super_block*, i8*, i32, ...) #1

declare dso_local i32 @bdevname(i32, i8*) #1

declare dso_local i64 @get_seconds(...) #1

declare dso_local i8* @journal_bread(%struct.super_block*, i32) #1

declare dso_local i64 @SB_ONDISK_JOURNAL_SIZE(%struct.super_block*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @reiserfs_debug(%struct.super_block*, i32, i8*, ...) #1

declare dso_local i32 @journal_transaction_is_valid(%struct.super_block*, %struct.buffer_head*, i32*, i64*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i64 @bdev_read_only(i32) #1

declare dso_local i32 @reiserfs_warning(%struct.super_block*, i8*, i8*) #1

declare dso_local %struct.buffer_head* @reiserfs_breada(i32, i64, i32, i64) #1

declare dso_local i32 @get_desc_trans_id(%struct.reiserfs_journal_desc*) #1

declare dso_local i64 @get_desc_mount_id(%struct.reiserfs_journal_desc*) #1

declare dso_local i64 @get_desc_trans_len(%struct.reiserfs_journal_desc*) #1

declare dso_local i32 @journal_read_transaction(%struct.super_block*, i64, i64, i32, i64) #1

declare dso_local i64 @_update_journal_header_block(%struct.super_block*, i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
