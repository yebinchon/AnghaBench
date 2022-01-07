; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_resize.c_setup_new_group_blocks.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_resize.c_setup_new_group_blocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.ext4_new_group_data = type { i64, i32, i32, i32, i32 }
%struct.ext4_sb_info = type { i64, i32, i32, %struct.TYPE_4__**, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.buffer_head = type { i32, i32 }

@EXT4_MAX_TRANS_DATA = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"mark backup superblock %#04llx (+0)\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"update backup group %#04llx (+%d)\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"clear inode table blocks %#04llx -> %#04lx\0A\00", align 1
@GFP_NOFS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"mark block bitmap %#04llx (+%llu)\0A\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"mark inode bitmap %#04llx (+%llu)\0A\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"clear inode bitmap %#04llx (+%llu)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, %struct.ext4_new_group_data*)* @setup_new_group_blocks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setup_new_group_blocks(%struct.super_block* %0, %struct.ext4_new_group_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca %struct.ext4_new_group_data*, align 8
  %6 = alloca %struct.ext4_sb_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.buffer_head*, align 8
  %11 = alloca %struct.buffer_head*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.buffer_head*, align 8
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store %struct.ext4_new_group_data* %1, %struct.ext4_new_group_data** %5, align 8
  %18 = load %struct.super_block*, %struct.super_block** %4, align 8
  %19 = call %struct.ext4_sb_info* @EXT4_SB(%struct.super_block* %18)
  store %struct.ext4_sb_info* %19, %struct.ext4_sb_info** %6, align 8
  %20 = load %struct.super_block*, %struct.super_block** %4, align 8
  %21 = load %struct.ext4_new_group_data*, %struct.ext4_new_group_data** %5, align 8
  %22 = getelementptr inbounds %struct.ext4_new_group_data, %struct.ext4_new_group_data* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @ext4_group_first_block_no(%struct.super_block* %20, i64 %23)
  store i32 %24, i32* %7, align 4
  %25 = load %struct.super_block*, %struct.super_block** %4, align 8
  %26 = load %struct.ext4_new_group_data*, %struct.ext4_new_group_data** %5, align 8
  %27 = getelementptr inbounds %struct.ext4_new_group_data, %struct.ext4_new_group_data* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = call i64 @ext4_bg_has_super(%struct.super_block* %25, i64 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %2
  %32 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %6, align 8
  %33 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %32, i32 0, i32 4
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @le16_to_cpu(i32 %36)
  br label %39

38:                                               ; preds = %2
  br label %39

39:                                               ; preds = %38, %31
  %40 = phi i32 [ %37, %31 ], [ 0, %38 ]
  store i32 %40, i32* %8, align 4
  %41 = load %struct.super_block*, %struct.super_block** %4, align 8
  %42 = load %struct.ext4_new_group_data*, %struct.ext4_new_group_data** %5, align 8
  %43 = getelementptr inbounds %struct.ext4_new_group_data, %struct.ext4_new_group_data* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = call i64 @ext4_bg_num_gdb(%struct.super_block* %41, i64 %44)
  store i64 %45, i64* %9, align 8
  store i32 0, i32* %15, align 4
  %46 = load %struct.super_block*, %struct.super_block** %4, align 8
  %47 = load i32, i32* @EXT4_MAX_TRANS_DATA, align 4
  %48 = call %struct.buffer_head* @ext4_journal_start_sb(%struct.super_block* %46, i32 %47)
  store %struct.buffer_head* %48, %struct.buffer_head** %11, align 8
  %49 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %50 = call i64 @IS_ERR(%struct.buffer_head* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %39
  %53 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %54 = call i32 @PTR_ERR(%struct.buffer_head* %53)
  store i32 %54, i32* %3, align 4
  br label %359

55:                                               ; preds = %39
  %56 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %6, align 8
  %57 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %56, i32 0, i32 2
  %58 = call i32 @mutex_lock(i32* %57)
  %59 = load %struct.ext4_new_group_data*, %struct.ext4_new_group_data** %5, align 8
  %60 = getelementptr inbounds %struct.ext4_new_group_data, %struct.ext4_new_group_data* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %6, align 8
  %63 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %61, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %55
  %67 = load i32, i32* @EBUSY, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %15, align 4
  br label %345

69:                                               ; preds = %55
  %70 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %71 = load %struct.super_block*, %struct.super_block** %4, align 8
  %72 = load %struct.ext4_new_group_data*, %struct.ext4_new_group_data** %5, align 8
  %73 = getelementptr inbounds %struct.ext4_new_group_data, %struct.ext4_new_group_data* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = call %struct.buffer_head* @bclean(%struct.buffer_head* %70, %struct.super_block* %71, i32 %74)
  store %struct.buffer_head* %75, %struct.buffer_head** %10, align 8
  %76 = call i64 @IS_ERR(%struct.buffer_head* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %69
  %79 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %80 = call i32 @PTR_ERR(%struct.buffer_head* %79)
  store i32 %80, i32* %15, align 4
  br label %345

81:                                               ; preds = %69
  %82 = load %struct.super_block*, %struct.super_block** %4, align 8
  %83 = load %struct.ext4_new_group_data*, %struct.ext4_new_group_data** %5, align 8
  %84 = getelementptr inbounds %struct.ext4_new_group_data, %struct.ext4_new_group_data* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = call i64 @ext4_bg_has_super(%struct.super_block* %82, i64 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %95

88:                                               ; preds = %81
  %89 = load i32, i32* %7, align 4
  %90 = call i32 (i8*, i32, ...) @ext4_debug(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %89)
  %91 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %92 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @ext4_set_bit(i32 0, i32 %93)
  br label %95

95:                                               ; preds = %88, %81
  store i32 0, i32* %14, align 4
  store i32 1, i32* %13, align 4
  %96 = load i32, i32* %7, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %12, align 4
  br label %98

98:                                               ; preds = %162, %95
  %99 = load i32, i32* %14, align 4
  %100 = sext i32 %99 to i64
  %101 = load i64, i64* %9, align 8
  %102 = icmp ult i64 %100, %101
  br i1 %102, label %103, label %169

103:                                              ; preds = %98
  %104 = load i32, i32* %12, align 4
  %105 = load i32, i32* %13, align 4
  %106 = call i32 (i8*, i32, ...) @ext4_debug(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %104, i32 %105)
  %107 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %108 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %109 = call i32 @extend_or_restart_transaction(%struct.buffer_head* %107, i32 1, %struct.buffer_head* %108)
  store i32 %109, i32* %15, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %103
  br label %342

112:                                              ; preds = %103
  %113 = load %struct.super_block*, %struct.super_block** %4, align 8
  %114 = load i32, i32* %12, align 4
  %115 = call %struct.buffer_head* @sb_getblk(%struct.super_block* %113, i32 %114)
  store %struct.buffer_head* %115, %struct.buffer_head** %17, align 8
  %116 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  %117 = icmp ne %struct.buffer_head* %116, null
  br i1 %117, label %121, label %118

118:                                              ; preds = %112
  %119 = load i32, i32* @EIO, align 4
  %120 = sub nsw i32 0, %119
  store i32 %120, i32* %15, align 4
  br label %342

121:                                              ; preds = %112
  %122 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %123 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  %124 = call i32 @ext4_journal_get_write_access(%struct.buffer_head* %122, %struct.buffer_head* %123)
  store i32 %124, i32* %15, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %129

126:                                              ; preds = %121
  %127 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  %128 = call i32 @brelse(%struct.buffer_head* %127)
  br label %342

129:                                              ; preds = %121
  %130 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  %131 = call i32 @lock_buffer(%struct.buffer_head* %130)
  %132 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  %133 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %6, align 8
  %136 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %135, i32 0, i32 3
  %137 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %136, align 8
  %138 = load i32, i32* %14, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %137, i64 %139
  %141 = load %struct.TYPE_4__*, %struct.TYPE_4__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  %145 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @memcpy(i32 %134, i32 %143, i32 %146)
  %148 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  %149 = call i32 @set_buffer_uptodate(%struct.buffer_head* %148)
  %150 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  %151 = call i32 @unlock_buffer(%struct.buffer_head* %150)
  %152 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %153 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  %154 = call i32 @ext4_handle_dirty_metadata(%struct.buffer_head* %152, i32* null, %struct.buffer_head* %153)
  %155 = load i32, i32* %13, align 4
  %156 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %157 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @ext4_set_bit(i32 %155, i32 %158)
  %160 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  %161 = call i32 @brelse(%struct.buffer_head* %160)
  br label %162

162:                                              ; preds = %129
  %163 = load i32, i32* %14, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %14, align 4
  %165 = load i32, i32* %12, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %12, align 4
  %167 = load i32, i32* %13, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %13, align 4
  br label %98

169:                                              ; preds = %98
  %170 = load i32, i32* %12, align 4
  %171 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %6, align 8
  %172 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 8
  %174 = call i32 (i8*, i32, ...) @ext4_debug(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %170, i32 %173)
  %175 = load %struct.super_block*, %struct.super_block** %4, align 8
  %176 = load i64, i64* %9, align 8
  %177 = load i32, i32* %7, align 4
  %178 = sext i32 %177 to i64
  %179 = add i64 %176, %178
  %180 = add i64 %179, 1
  %181 = trunc i64 %180 to i32
  %182 = load i32, i32* %8, align 4
  %183 = load i32, i32* @GFP_NOFS, align 4
  %184 = call i32 @sb_issue_zeroout(%struct.super_block* %175, i32 %181, i32 %182, i32 %183)
  store i32 %184, i32* %15, align 4
  %185 = load i32, i32* %15, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %188

187:                                              ; preds = %169
  br label %342

188:                                              ; preds = %169
  store i32 0, i32* %14, align 4
  %189 = load i64, i64* %9, align 8
  %190 = add i64 %189, 1
  %191 = trunc i64 %190 to i32
  store i32 %191, i32* %13, align 4
  br label %192

192:                                              ; preds = %202, %188
  %193 = load i32, i32* %14, align 4
  %194 = load i32, i32* %8, align 4
  %195 = icmp slt i32 %193, %194
  br i1 %195, label %196, label %207

196:                                              ; preds = %192
  %197 = load i32, i32* %13, align 4
  %198 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %199 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 4
  %201 = call i32 @ext4_set_bit(i32 %197, i32 %200)
  br label %202

202:                                              ; preds = %196
  %203 = load i32, i32* %14, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %14, align 4
  %205 = load i32, i32* %13, align 4
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %13, align 4
  br label %192

207:                                              ; preds = %192
  %208 = load %struct.ext4_new_group_data*, %struct.ext4_new_group_data** %5, align 8
  %209 = getelementptr inbounds %struct.ext4_new_group_data, %struct.ext4_new_group_data* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 8
  %211 = load %struct.ext4_new_group_data*, %struct.ext4_new_group_data** %5, align 8
  %212 = getelementptr inbounds %struct.ext4_new_group_data, %struct.ext4_new_group_data* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 8
  %214 = load i32, i32* %7, align 4
  %215 = sub nsw i32 %213, %214
  %216 = call i32 (i8*, i32, ...) @ext4_debug(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %210, i32 %215)
  %217 = load %struct.ext4_new_group_data*, %struct.ext4_new_group_data** %5, align 8
  %218 = getelementptr inbounds %struct.ext4_new_group_data, %struct.ext4_new_group_data* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 8
  %220 = load i32, i32* %7, align 4
  %221 = sub nsw i32 %219, %220
  %222 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %223 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 4
  %225 = call i32 @ext4_set_bit(i32 %221, i32 %224)
  %226 = load %struct.ext4_new_group_data*, %struct.ext4_new_group_data** %5, align 8
  %227 = getelementptr inbounds %struct.ext4_new_group_data, %struct.ext4_new_group_data* %226, i32 0, i32 2
  %228 = load i32, i32* %227, align 4
  %229 = load %struct.ext4_new_group_data*, %struct.ext4_new_group_data** %5, align 8
  %230 = getelementptr inbounds %struct.ext4_new_group_data, %struct.ext4_new_group_data* %229, i32 0, i32 2
  %231 = load i32, i32* %230, align 4
  %232 = load i32, i32* %7, align 4
  %233 = sub nsw i32 %231, %232
  %234 = call i32 (i8*, i32, ...) @ext4_debug(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i32 %228, i32 %233)
  %235 = load %struct.ext4_new_group_data*, %struct.ext4_new_group_data** %5, align 8
  %236 = getelementptr inbounds %struct.ext4_new_group_data, %struct.ext4_new_group_data* %235, i32 0, i32 2
  %237 = load i32, i32* %236, align 4
  %238 = load i32, i32* %7, align 4
  %239 = sub nsw i32 %237, %238
  %240 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %241 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 4
  %243 = call i32 @ext4_set_bit(i32 %239, i32 %242)
  %244 = load %struct.ext4_new_group_data*, %struct.ext4_new_group_data** %5, align 8
  %245 = getelementptr inbounds %struct.ext4_new_group_data, %struct.ext4_new_group_data* %244, i32 0, i32 3
  %246 = load i32, i32* %245, align 8
  store i32 %246, i32* %12, align 4
  %247 = load i32, i32* %12, align 4
  %248 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %6, align 8
  %249 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %248, i32 0, i32 1
  %250 = load i32, i32* %249, align 8
  %251 = call i32 (i8*, i32, ...) @ext4_debug(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %247, i32 %250)
  %252 = load %struct.super_block*, %struct.super_block** %4, align 8
  %253 = load i32, i32* %12, align 4
  %254 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %6, align 8
  %255 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %254, i32 0, i32 1
  %256 = load i32, i32* %255, align 8
  %257 = load i32, i32* @GFP_NOFS, align 4
  %258 = call i32 @sb_issue_zeroout(%struct.super_block* %252, i32 %253, i32 %256, i32 %257)
  store i32 %258, i32* %15, align 4
  %259 = load i32, i32* %15, align 4
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %261, label %262

261:                                              ; preds = %207
  br label %342

262:                                              ; preds = %207
  store i32 0, i32* %14, align 4
  %263 = load %struct.ext4_new_group_data*, %struct.ext4_new_group_data** %5, align 8
  %264 = getelementptr inbounds %struct.ext4_new_group_data, %struct.ext4_new_group_data* %263, i32 0, i32 3
  %265 = load i32, i32* %264, align 8
  %266 = load i32, i32* %7, align 4
  %267 = sub nsw i32 %265, %266
  store i32 %267, i32* %13, align 4
  br label %268

268:                                              ; preds = %280, %262
  %269 = load i32, i32* %14, align 4
  %270 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %6, align 8
  %271 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %270, i32 0, i32 1
  %272 = load i32, i32* %271, align 8
  %273 = icmp slt i32 %269, %272
  br i1 %273, label %274, label %285

274:                                              ; preds = %268
  %275 = load i32, i32* %13, align 4
  %276 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %277 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %276, i32 0, i32 0
  %278 = load i32, i32* %277, align 4
  %279 = call i32 @ext4_set_bit(i32 %275, i32 %278)
  br label %280

280:                                              ; preds = %274
  %281 = load i32, i32* %14, align 4
  %282 = add nsw i32 %281, 1
  store i32 %282, i32* %14, align 4
  %283 = load i32, i32* %13, align 4
  %284 = add nsw i32 %283, 1
  store i32 %284, i32* %13, align 4
  br label %268

285:                                              ; preds = %268
  %286 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %287 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %288 = call i32 @extend_or_restart_transaction(%struct.buffer_head* %286, i32 2, %struct.buffer_head* %287)
  store i32 %288, i32* %15, align 4
  %289 = icmp ne i32 %288, 0
  br i1 %289, label %290, label %291

290:                                              ; preds = %285
  br label %342

291:                                              ; preds = %285
  %292 = load %struct.ext4_new_group_data*, %struct.ext4_new_group_data** %5, align 8
  %293 = getelementptr inbounds %struct.ext4_new_group_data, %struct.ext4_new_group_data* %292, i32 0, i32 4
  %294 = load i32, i32* %293, align 4
  %295 = load %struct.super_block*, %struct.super_block** %4, align 8
  %296 = getelementptr inbounds %struct.super_block, %struct.super_block* %295, i32 0, i32 0
  %297 = load i32, i32* %296, align 4
  %298 = mul nsw i32 %297, 8
  %299 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %300 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %299, i32 0, i32 0
  %301 = load i32, i32* %300, align 4
  %302 = call i32 @mark_bitmap_end(i32 %294, i32 %298, i32 %301)
  %303 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %304 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %305 = call i32 @ext4_handle_dirty_metadata(%struct.buffer_head* %303, i32* null, %struct.buffer_head* %304)
  %306 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %307 = call i32 @brelse(%struct.buffer_head* %306)
  %308 = load %struct.ext4_new_group_data*, %struct.ext4_new_group_data** %5, align 8
  %309 = getelementptr inbounds %struct.ext4_new_group_data, %struct.ext4_new_group_data* %308, i32 0, i32 2
  %310 = load i32, i32* %309, align 4
  %311 = load %struct.ext4_new_group_data*, %struct.ext4_new_group_data** %5, align 8
  %312 = getelementptr inbounds %struct.ext4_new_group_data, %struct.ext4_new_group_data* %311, i32 0, i32 2
  %313 = load i32, i32* %312, align 4
  %314 = load i32, i32* %7, align 4
  %315 = sub nsw i32 %313, %314
  %316 = call i32 (i8*, i32, ...) @ext4_debug(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0), i32 %310, i32 %315)
  %317 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %318 = load %struct.super_block*, %struct.super_block** %4, align 8
  %319 = load %struct.ext4_new_group_data*, %struct.ext4_new_group_data** %5, align 8
  %320 = getelementptr inbounds %struct.ext4_new_group_data, %struct.ext4_new_group_data* %319, i32 0, i32 2
  %321 = load i32, i32* %320, align 4
  %322 = call %struct.buffer_head* @bclean(%struct.buffer_head* %317, %struct.super_block* %318, i32 %321)
  store %struct.buffer_head* %322, %struct.buffer_head** %10, align 8
  %323 = call i64 @IS_ERR(%struct.buffer_head* %322)
  %324 = icmp ne i64 %323, 0
  br i1 %324, label %325, label %328

325:                                              ; preds = %291
  %326 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %327 = call i32 @PTR_ERR(%struct.buffer_head* %326)
  store i32 %327, i32* %15, align 4
  br label %345

328:                                              ; preds = %291
  %329 = load %struct.super_block*, %struct.super_block** %4, align 8
  %330 = call i32 @EXT4_INODES_PER_GROUP(%struct.super_block* %329)
  %331 = load %struct.super_block*, %struct.super_block** %4, align 8
  %332 = getelementptr inbounds %struct.super_block, %struct.super_block* %331, i32 0, i32 0
  %333 = load i32, i32* %332, align 4
  %334 = mul nsw i32 %333, 8
  %335 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %336 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %335, i32 0, i32 0
  %337 = load i32, i32* %336, align 4
  %338 = call i32 @mark_bitmap_end(i32 %330, i32 %334, i32 %337)
  %339 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %340 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %341 = call i32 @ext4_handle_dirty_metadata(%struct.buffer_head* %339, i32* null, %struct.buffer_head* %340)
  br label %342

342:                                              ; preds = %328, %290, %261, %187, %126, %118, %111
  %343 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %344 = call i32 @brelse(%struct.buffer_head* %343)
  br label %345

345:                                              ; preds = %342, %325, %78, %66
  %346 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %6, align 8
  %347 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %346, i32 0, i32 2
  %348 = call i32 @mutex_unlock(i32* %347)
  %349 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %350 = call i32 @ext4_journal_stop(%struct.buffer_head* %349)
  store i32 %350, i32* %16, align 4
  %351 = icmp ne i32 %350, 0
  br i1 %351, label %352, label %357

352:                                              ; preds = %345
  %353 = load i32, i32* %15, align 4
  %354 = icmp ne i32 %353, 0
  br i1 %354, label %357, label %355

355:                                              ; preds = %352
  %356 = load i32, i32* %16, align 4
  store i32 %356, i32* %15, align 4
  br label %357

357:                                              ; preds = %355, %352, %345
  %358 = load i32, i32* %15, align 4
  store i32 %358, i32* %3, align 4
  br label %359

359:                                              ; preds = %357, %52
  %360 = load i32, i32* %3, align 4
  ret i32 %360
}

declare dso_local %struct.ext4_sb_info* @EXT4_SB(%struct.super_block*) #1

declare dso_local i32 @ext4_group_first_block_no(%struct.super_block*, i64) #1

declare dso_local i64 @ext4_bg_has_super(%struct.super_block*, i64) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i64 @ext4_bg_num_gdb(%struct.super_block*, i64) #1

declare dso_local %struct.buffer_head* @ext4_journal_start_sb(%struct.super_block*, i32) #1

declare dso_local i64 @IS_ERR(%struct.buffer_head*) #1

declare dso_local i32 @PTR_ERR(%struct.buffer_head*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.buffer_head* @bclean(%struct.buffer_head*, %struct.super_block*, i32) #1

declare dso_local i32 @ext4_debug(i8*, i32, ...) #1

declare dso_local i32 @ext4_set_bit(i32, i32) #1

declare dso_local i32 @extend_or_restart_transaction(%struct.buffer_head*, i32, %struct.buffer_head*) #1

declare dso_local %struct.buffer_head* @sb_getblk(%struct.super_block*, i32) #1

declare dso_local i32 @ext4_journal_get_write_access(%struct.buffer_head*, %struct.buffer_head*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @lock_buffer(%struct.buffer_head*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @set_buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i32 @unlock_buffer(%struct.buffer_head*) #1

declare dso_local i32 @ext4_handle_dirty_metadata(%struct.buffer_head*, i32*, %struct.buffer_head*) #1

declare dso_local i32 @sb_issue_zeroout(%struct.super_block*, i32, i32, i32) #1

declare dso_local i32 @mark_bitmap_end(i32, i32, i32) #1

declare dso_local i32 @EXT4_INODES_PER_GROUP(%struct.super_block*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @ext4_journal_stop(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
