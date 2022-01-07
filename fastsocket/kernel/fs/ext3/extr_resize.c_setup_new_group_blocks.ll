; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext3/extr_resize.c_setup_new_group_blocks.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext3/extr_resize.c_setup_new_group_blocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.ext3_new_group_data = type { i64, i32, i32, i32, i32 }
%struct.ext3_sb_info = type { i64, i32, i32, %struct.TYPE_4__**, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.buffer_head = type { i32, i32 }

@EXT3_MAX_TRANS_DATA = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"mark backup superblock %#04lx (+0)\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"update backup group %#04lx (+%d)\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"clear reserved block %#04lx (+%d)\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"mark block bitmap %#04x (+%ld)\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"mark inode bitmap %#04x (+%ld)\0A\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"clear inode block %#04lx (+%d)\0A\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"clear inode bitmap %#04x (+%ld)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, %struct.ext3_new_group_data*)* @setup_new_group_blocks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setup_new_group_blocks(%struct.super_block* %0, %struct.ext3_new_group_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca %struct.ext3_new_group_data*, align 8
  %6 = alloca %struct.ext3_sb_info*, align 8
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
  %18 = alloca %struct.buffer_head*, align 8
  %19 = alloca %struct.buffer_head*, align 8
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store %struct.ext3_new_group_data* %1, %struct.ext3_new_group_data** %5, align 8
  %20 = load %struct.super_block*, %struct.super_block** %4, align 8
  %21 = call %struct.ext3_sb_info* @EXT3_SB(%struct.super_block* %20)
  store %struct.ext3_sb_info* %21, %struct.ext3_sb_info** %6, align 8
  %22 = load %struct.super_block*, %struct.super_block** %4, align 8
  %23 = load %struct.ext3_new_group_data*, %struct.ext3_new_group_data** %5, align 8
  %24 = getelementptr inbounds %struct.ext3_new_group_data, %struct.ext3_new_group_data* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @ext3_group_first_block_no(%struct.super_block* %22, i64 %25)
  store i32 %26, i32* %7, align 4
  %27 = load %struct.super_block*, %struct.super_block** %4, align 8
  %28 = load %struct.ext3_new_group_data*, %struct.ext3_new_group_data** %5, align 8
  %29 = getelementptr inbounds %struct.ext3_new_group_data, %struct.ext3_new_group_data* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call i64 @ext3_bg_has_super(%struct.super_block* %27, i64 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %2
  %34 = load %struct.ext3_sb_info*, %struct.ext3_sb_info** %6, align 8
  %35 = getelementptr inbounds %struct.ext3_sb_info, %struct.ext3_sb_info* %34, i32 0, i32 4
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @le16_to_cpu(i32 %38)
  br label %41

40:                                               ; preds = %2
  br label %41

41:                                               ; preds = %40, %33
  %42 = phi i32 [ %39, %33 ], [ 0, %40 ]
  store i32 %42, i32* %8, align 4
  %43 = load %struct.super_block*, %struct.super_block** %4, align 8
  %44 = load %struct.ext3_new_group_data*, %struct.ext3_new_group_data** %5, align 8
  %45 = getelementptr inbounds %struct.ext3_new_group_data, %struct.ext3_new_group_data* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = call i64 @ext3_bg_num_gdb(%struct.super_block* %43, i64 %46)
  store i64 %47, i64* %9, align 8
  store i32 0, i32* %15, align 4
  %48 = load %struct.super_block*, %struct.super_block** %4, align 8
  %49 = load i32, i32* @EXT3_MAX_TRANS_DATA, align 4
  %50 = call %struct.buffer_head* @ext3_journal_start_sb(%struct.super_block* %48, i32 %49)
  store %struct.buffer_head* %50, %struct.buffer_head** %11, align 8
  %51 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %52 = call i64 @IS_ERR(%struct.buffer_head* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %41
  %55 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %56 = call i32 @PTR_ERR(%struct.buffer_head* %55)
  store i32 %56, i32* %3, align 4
  br label %379

57:                                               ; preds = %41
  %58 = load %struct.ext3_sb_info*, %struct.ext3_sb_info** %6, align 8
  %59 = getelementptr inbounds %struct.ext3_sb_info, %struct.ext3_sb_info* %58, i32 0, i32 2
  %60 = call i32 @mutex_lock(i32* %59)
  %61 = load %struct.ext3_new_group_data*, %struct.ext3_new_group_data** %5, align 8
  %62 = getelementptr inbounds %struct.ext3_new_group_data, %struct.ext3_new_group_data* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.ext3_sb_info*, %struct.ext3_sb_info** %6, align 8
  %65 = getelementptr inbounds %struct.ext3_sb_info, %struct.ext3_sb_info* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %63, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %57
  %69 = load i32, i32* @EBUSY, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %15, align 4
  br label %365

71:                                               ; preds = %57
  %72 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %73 = load %struct.super_block*, %struct.super_block** %4, align 8
  %74 = load %struct.ext3_new_group_data*, %struct.ext3_new_group_data** %5, align 8
  %75 = getelementptr inbounds %struct.ext3_new_group_data, %struct.ext3_new_group_data* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = call %struct.buffer_head* @bclean(%struct.buffer_head* %72, %struct.super_block* %73, i32 %76)
  store %struct.buffer_head* %77, %struct.buffer_head** %10, align 8
  %78 = call i64 @IS_ERR(%struct.buffer_head* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %71
  %81 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %82 = call i32 @PTR_ERR(%struct.buffer_head* %81)
  store i32 %82, i32* %15, align 4
  br label %365

83:                                               ; preds = %71
  %84 = load %struct.super_block*, %struct.super_block** %4, align 8
  %85 = load %struct.ext3_new_group_data*, %struct.ext3_new_group_data** %5, align 8
  %86 = getelementptr inbounds %struct.ext3_new_group_data, %struct.ext3_new_group_data* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = call i64 @ext3_bg_has_super(%struct.super_block* %84, i64 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %97

90:                                               ; preds = %83
  %91 = load i32, i32* %7, align 4
  %92 = call i32 (i8*, i32, ...) @ext3_debug(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %91)
  %93 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %94 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @ext3_set_bit(i32 0, i32 %95)
  br label %97

97:                                               ; preds = %90, %83
  store i32 0, i32* %14, align 4
  store i32 1, i32* %13, align 4
  %98 = load i32, i32* %7, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %12, align 4
  br label %100

100:                                              ; preds = %165, %97
  %101 = load i32, i32* %14, align 4
  %102 = sext i32 %101 to i64
  %103 = load i64, i64* %9, align 8
  %104 = icmp ult i64 %102, %103
  br i1 %104, label %105, label %172

105:                                              ; preds = %100
  %106 = load i32, i32* %12, align 4
  %107 = load i32, i32* %13, align 4
  %108 = call i32 (i8*, i32, ...) @ext3_debug(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %106, i32 %107)
  %109 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %110 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %111 = call i32 @extend_or_restart_transaction(%struct.buffer_head* %109, i32 1, %struct.buffer_head* %110)
  store i32 %111, i32* %15, align 4
  %112 = load i32, i32* %15, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %105
  br label %362

115:                                              ; preds = %105
  %116 = load %struct.super_block*, %struct.super_block** %4, align 8
  %117 = load i32, i32* %12, align 4
  %118 = call %struct.buffer_head* @sb_getblk(%struct.super_block* %116, i32 %117)
  store %struct.buffer_head* %118, %struct.buffer_head** %17, align 8
  %119 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  %120 = icmp ne %struct.buffer_head* %119, null
  br i1 %120, label %124, label %121

121:                                              ; preds = %115
  %122 = load i32, i32* @EIO, align 4
  %123 = sub nsw i32 0, %122
  store i32 %123, i32* %15, align 4
  br label %362

124:                                              ; preds = %115
  %125 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %126 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  %127 = call i32 @ext3_journal_get_write_access(%struct.buffer_head* %125, %struct.buffer_head* %126)
  store i32 %127, i32* %15, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %132

129:                                              ; preds = %124
  %130 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  %131 = call i32 @brelse(%struct.buffer_head* %130)
  br label %362

132:                                              ; preds = %124
  %133 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  %134 = call i32 @lock_buffer(%struct.buffer_head* %133)
  %135 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  %136 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.ext3_sb_info*, %struct.ext3_sb_info** %6, align 8
  %139 = getelementptr inbounds %struct.ext3_sb_info, %struct.ext3_sb_info* %138, i32 0, i32 3
  %140 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %139, align 8
  %141 = load i32, i32* %14, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %140, i64 %142
  %144 = load %struct.TYPE_4__*, %struct.TYPE_4__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  %148 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @memcpy(i32 %137, i32 %146, i32 %149)
  %151 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  %152 = call i32 @set_buffer_uptodate(%struct.buffer_head* %151)
  %153 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  %154 = call i32 @unlock_buffer(%struct.buffer_head* %153)
  %155 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %156 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  %157 = call i32 @ext3_journal_dirty_metadata(%struct.buffer_head* %155, %struct.buffer_head* %156)
  %158 = load i32, i32* %13, align 4
  %159 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %160 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = call i32 @ext3_set_bit(i32 %158, i32 %161)
  %163 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  %164 = call i32 @brelse(%struct.buffer_head* %163)
  br label %165

165:                                              ; preds = %132
  %166 = load i32, i32* %14, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %14, align 4
  %168 = load i32, i32* %12, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %12, align 4
  %170 = load i32, i32* %13, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %13, align 4
  br label %100

172:                                              ; preds = %100
  store i32 0, i32* %14, align 4
  %173 = load i64, i64* %9, align 8
  %174 = add i64 %173, 1
  %175 = trunc i64 %174 to i32
  store i32 %175, i32* %13, align 4
  %176 = load i32, i32* %7, align 4
  %177 = load i32, i32* %13, align 4
  %178 = add nsw i32 %176, %177
  store i32 %178, i32* %12, align 4
  br label %179

179:                                              ; preds = %214, %172
  %180 = load i32, i32* %14, align 4
  %181 = load i32, i32* %8, align 4
  %182 = icmp slt i32 %180, %181
  br i1 %182, label %183, label %221

183:                                              ; preds = %179
  %184 = load i32, i32* %12, align 4
  %185 = load i32, i32* %13, align 4
  %186 = call i32 (i8*, i32, ...) @ext3_debug(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %184, i32 %185)
  %187 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %188 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %189 = call i32 @extend_or_restart_transaction(%struct.buffer_head* %187, i32 1, %struct.buffer_head* %188)
  store i32 %189, i32* %15, align 4
  %190 = load i32, i32* %15, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %193

192:                                              ; preds = %183
  br label %362

193:                                              ; preds = %183
  %194 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %195 = load %struct.super_block*, %struct.super_block** %4, align 8
  %196 = load i32, i32* %12, align 4
  %197 = call %struct.buffer_head* @bclean(%struct.buffer_head* %194, %struct.super_block* %195, i32 %196)
  store %struct.buffer_head* %197, %struct.buffer_head** %18, align 8
  %198 = call i64 @IS_ERR(%struct.buffer_head* %197)
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %203

200:                                              ; preds = %193
  %201 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %202 = call i32 @PTR_ERR(%struct.buffer_head* %201)
  store i32 %202, i32* %15, align 4
  br label %362

203:                                              ; preds = %193
  %204 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %205 = load %struct.buffer_head*, %struct.buffer_head** %18, align 8
  %206 = call i32 @ext3_journal_dirty_metadata(%struct.buffer_head* %204, %struct.buffer_head* %205)
  %207 = load i32, i32* %13, align 4
  %208 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %209 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 4
  %211 = call i32 @ext3_set_bit(i32 %207, i32 %210)
  %212 = load %struct.buffer_head*, %struct.buffer_head** %18, align 8
  %213 = call i32 @brelse(%struct.buffer_head* %212)
  br label %214

214:                                              ; preds = %203
  %215 = load i32, i32* %14, align 4
  %216 = add nsw i32 %215, 1
  store i32 %216, i32* %14, align 4
  %217 = load i32, i32* %12, align 4
  %218 = add nsw i32 %217, 1
  store i32 %218, i32* %12, align 4
  %219 = load i32, i32* %13, align 4
  %220 = add nsw i32 %219, 1
  store i32 %220, i32* %13, align 4
  br label %179

221:                                              ; preds = %179
  %222 = load %struct.ext3_new_group_data*, %struct.ext3_new_group_data** %5, align 8
  %223 = getelementptr inbounds %struct.ext3_new_group_data, %struct.ext3_new_group_data* %222, i32 0, i32 1
  %224 = load i32, i32* %223, align 8
  %225 = load %struct.ext3_new_group_data*, %struct.ext3_new_group_data** %5, align 8
  %226 = getelementptr inbounds %struct.ext3_new_group_data, %struct.ext3_new_group_data* %225, i32 0, i32 1
  %227 = load i32, i32* %226, align 8
  %228 = load i32, i32* %7, align 4
  %229 = sub nsw i32 %227, %228
  %230 = call i32 (i8*, i32, ...) @ext3_debug(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %224, i32 %229)
  %231 = load %struct.ext3_new_group_data*, %struct.ext3_new_group_data** %5, align 8
  %232 = getelementptr inbounds %struct.ext3_new_group_data, %struct.ext3_new_group_data* %231, i32 0, i32 1
  %233 = load i32, i32* %232, align 8
  %234 = load i32, i32* %7, align 4
  %235 = sub nsw i32 %233, %234
  %236 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %237 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 4
  %239 = call i32 @ext3_set_bit(i32 %235, i32 %238)
  %240 = load %struct.ext3_new_group_data*, %struct.ext3_new_group_data** %5, align 8
  %241 = getelementptr inbounds %struct.ext3_new_group_data, %struct.ext3_new_group_data* %240, i32 0, i32 2
  %242 = load i32, i32* %241, align 4
  %243 = load %struct.ext3_new_group_data*, %struct.ext3_new_group_data** %5, align 8
  %244 = getelementptr inbounds %struct.ext3_new_group_data, %struct.ext3_new_group_data* %243, i32 0, i32 2
  %245 = load i32, i32* %244, align 4
  %246 = load i32, i32* %7, align 4
  %247 = sub nsw i32 %245, %246
  %248 = call i32 (i8*, i32, ...) @ext3_debug(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i32 %242, i32 %247)
  %249 = load %struct.ext3_new_group_data*, %struct.ext3_new_group_data** %5, align 8
  %250 = getelementptr inbounds %struct.ext3_new_group_data, %struct.ext3_new_group_data* %249, i32 0, i32 2
  %251 = load i32, i32* %250, align 4
  %252 = load i32, i32* %7, align 4
  %253 = sub nsw i32 %251, %252
  %254 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %255 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %254, i32 0, i32 0
  %256 = load i32, i32* %255, align 4
  %257 = call i32 @ext3_set_bit(i32 %253, i32 %256)
  store i32 0, i32* %14, align 4
  %258 = load %struct.ext3_new_group_data*, %struct.ext3_new_group_data** %5, align 8
  %259 = getelementptr inbounds %struct.ext3_new_group_data, %struct.ext3_new_group_data* %258, i32 0, i32 3
  %260 = load i32, i32* %259, align 8
  store i32 %260, i32* %12, align 4
  %261 = load i32, i32* %12, align 4
  %262 = load i32, i32* %7, align 4
  %263 = sub nsw i32 %261, %262
  store i32 %263, i32* %13, align 4
  br label %264

264:                                              ; preds = %301, %221
  %265 = load i32, i32* %14, align 4
  %266 = load %struct.ext3_sb_info*, %struct.ext3_sb_info** %6, align 8
  %267 = getelementptr inbounds %struct.ext3_sb_info, %struct.ext3_sb_info* %266, i32 0, i32 1
  %268 = load i32, i32* %267, align 8
  %269 = icmp slt i32 %265, %268
  br i1 %269, label %270, label %308

270:                                              ; preds = %264
  %271 = load i32, i32* %12, align 4
  %272 = load i32, i32* %13, align 4
  %273 = call i32 (i8*, i32, ...) @ext3_debug(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i32 %271, i32 %272)
  %274 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %275 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %276 = call i32 @extend_or_restart_transaction(%struct.buffer_head* %274, i32 1, %struct.buffer_head* %275)
  store i32 %276, i32* %15, align 4
  %277 = load i32, i32* %15, align 4
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %279, label %280

279:                                              ; preds = %270
  br label %362

280:                                              ; preds = %270
  %281 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %282 = load %struct.super_block*, %struct.super_block** %4, align 8
  %283 = load i32, i32* %12, align 4
  %284 = call %struct.buffer_head* @bclean(%struct.buffer_head* %281, %struct.super_block* %282, i32 %283)
  store %struct.buffer_head* %284, %struct.buffer_head** %19, align 8
  %285 = call i64 @IS_ERR(%struct.buffer_head* %284)
  %286 = icmp ne i64 %285, 0
  br i1 %286, label %287, label %290

287:                                              ; preds = %280
  %288 = load %struct.buffer_head*, %struct.buffer_head** %19, align 8
  %289 = call i32 @PTR_ERR(%struct.buffer_head* %288)
  store i32 %289, i32* %15, align 4
  br label %362

290:                                              ; preds = %280
  %291 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %292 = load %struct.buffer_head*, %struct.buffer_head** %19, align 8
  %293 = call i32 @ext3_journal_dirty_metadata(%struct.buffer_head* %291, %struct.buffer_head* %292)
  %294 = load %struct.buffer_head*, %struct.buffer_head** %19, align 8
  %295 = call i32 @brelse(%struct.buffer_head* %294)
  %296 = load i32, i32* %13, align 4
  %297 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %298 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %297, i32 0, i32 0
  %299 = load i32, i32* %298, align 4
  %300 = call i32 @ext3_set_bit(i32 %296, i32 %299)
  br label %301

301:                                              ; preds = %290
  %302 = load i32, i32* %14, align 4
  %303 = add nsw i32 %302, 1
  store i32 %303, i32* %14, align 4
  %304 = load i32, i32* %13, align 4
  %305 = add nsw i32 %304, 1
  store i32 %305, i32* %13, align 4
  %306 = load i32, i32* %12, align 4
  %307 = add nsw i32 %306, 1
  store i32 %307, i32* %12, align 4
  br label %264

308:                                              ; preds = %264
  %309 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %310 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %311 = call i32 @extend_or_restart_transaction(%struct.buffer_head* %309, i32 2, %struct.buffer_head* %310)
  store i32 %311, i32* %15, align 4
  %312 = load i32, i32* %15, align 4
  %313 = icmp ne i32 %312, 0
  br i1 %313, label %314, label %315

314:                                              ; preds = %308
  br label %362

315:                                              ; preds = %308
  %316 = load %struct.ext3_new_group_data*, %struct.ext3_new_group_data** %5, align 8
  %317 = getelementptr inbounds %struct.ext3_new_group_data, %struct.ext3_new_group_data* %316, i32 0, i32 4
  %318 = load i32, i32* %317, align 4
  %319 = load %struct.super_block*, %struct.super_block** %4, align 8
  %320 = call i32 @EXT3_BLOCKS_PER_GROUP(%struct.super_block* %319)
  %321 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %322 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %321, i32 0, i32 0
  %323 = load i32, i32* %322, align 4
  %324 = call i32 @mark_bitmap_end(i32 %318, i32 %320, i32 %323)
  %325 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %326 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %327 = call i32 @ext3_journal_dirty_metadata(%struct.buffer_head* %325, %struct.buffer_head* %326)
  %328 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %329 = call i32 @brelse(%struct.buffer_head* %328)
  %330 = load %struct.ext3_new_group_data*, %struct.ext3_new_group_data** %5, align 8
  %331 = getelementptr inbounds %struct.ext3_new_group_data, %struct.ext3_new_group_data* %330, i32 0, i32 2
  %332 = load i32, i32* %331, align 4
  %333 = load %struct.ext3_new_group_data*, %struct.ext3_new_group_data** %5, align 8
  %334 = getelementptr inbounds %struct.ext3_new_group_data, %struct.ext3_new_group_data* %333, i32 0, i32 2
  %335 = load i32, i32* %334, align 4
  %336 = load i32, i32* %7, align 4
  %337 = sub nsw i32 %335, %336
  %338 = call i32 (i8*, i32, ...) @ext3_debug(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i32 %332, i32 %337)
  %339 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %340 = load %struct.super_block*, %struct.super_block** %4, align 8
  %341 = load %struct.ext3_new_group_data*, %struct.ext3_new_group_data** %5, align 8
  %342 = getelementptr inbounds %struct.ext3_new_group_data, %struct.ext3_new_group_data* %341, i32 0, i32 2
  %343 = load i32, i32* %342, align 4
  %344 = call %struct.buffer_head* @bclean(%struct.buffer_head* %339, %struct.super_block* %340, i32 %343)
  store %struct.buffer_head* %344, %struct.buffer_head** %10, align 8
  %345 = call i64 @IS_ERR(%struct.buffer_head* %344)
  %346 = icmp ne i64 %345, 0
  br i1 %346, label %347, label %350

347:                                              ; preds = %315
  %348 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %349 = call i32 @PTR_ERR(%struct.buffer_head* %348)
  store i32 %349, i32* %15, align 4
  br label %365

350:                                              ; preds = %315
  %351 = load %struct.super_block*, %struct.super_block** %4, align 8
  %352 = call i32 @EXT3_INODES_PER_GROUP(%struct.super_block* %351)
  %353 = load %struct.super_block*, %struct.super_block** %4, align 8
  %354 = call i32 @EXT3_BLOCKS_PER_GROUP(%struct.super_block* %353)
  %355 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %356 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %355, i32 0, i32 0
  %357 = load i32, i32* %356, align 4
  %358 = call i32 @mark_bitmap_end(i32 %352, i32 %354, i32 %357)
  %359 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %360 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %361 = call i32 @ext3_journal_dirty_metadata(%struct.buffer_head* %359, %struct.buffer_head* %360)
  br label %362

362:                                              ; preds = %350, %314, %287, %279, %200, %192, %129, %121, %114
  %363 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %364 = call i32 @brelse(%struct.buffer_head* %363)
  br label %365

365:                                              ; preds = %362, %347, %80, %68
  %366 = load %struct.ext3_sb_info*, %struct.ext3_sb_info** %6, align 8
  %367 = getelementptr inbounds %struct.ext3_sb_info, %struct.ext3_sb_info* %366, i32 0, i32 2
  %368 = call i32 @mutex_unlock(i32* %367)
  %369 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %370 = call i32 @ext3_journal_stop(%struct.buffer_head* %369)
  store i32 %370, i32* %16, align 4
  %371 = icmp ne i32 %370, 0
  br i1 %371, label %372, label %377

372:                                              ; preds = %365
  %373 = load i32, i32* %15, align 4
  %374 = icmp ne i32 %373, 0
  br i1 %374, label %377, label %375

375:                                              ; preds = %372
  %376 = load i32, i32* %16, align 4
  store i32 %376, i32* %15, align 4
  br label %377

377:                                              ; preds = %375, %372, %365
  %378 = load i32, i32* %15, align 4
  store i32 %378, i32* %3, align 4
  br label %379

379:                                              ; preds = %377, %54
  %380 = load i32, i32* %3, align 4
  ret i32 %380
}

declare dso_local %struct.ext3_sb_info* @EXT3_SB(%struct.super_block*) #1

declare dso_local i32 @ext3_group_first_block_no(%struct.super_block*, i64) #1

declare dso_local i64 @ext3_bg_has_super(%struct.super_block*, i64) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i64 @ext3_bg_num_gdb(%struct.super_block*, i64) #1

declare dso_local %struct.buffer_head* @ext3_journal_start_sb(%struct.super_block*, i32) #1

declare dso_local i64 @IS_ERR(%struct.buffer_head*) #1

declare dso_local i32 @PTR_ERR(%struct.buffer_head*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.buffer_head* @bclean(%struct.buffer_head*, %struct.super_block*, i32) #1

declare dso_local i32 @ext3_debug(i8*, i32, ...) #1

declare dso_local i32 @ext3_set_bit(i32, i32) #1

declare dso_local i32 @extend_or_restart_transaction(%struct.buffer_head*, i32, %struct.buffer_head*) #1

declare dso_local %struct.buffer_head* @sb_getblk(%struct.super_block*, i32) #1

declare dso_local i32 @ext3_journal_get_write_access(%struct.buffer_head*, %struct.buffer_head*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @lock_buffer(%struct.buffer_head*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @set_buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i32 @unlock_buffer(%struct.buffer_head*) #1

declare dso_local i32 @ext3_journal_dirty_metadata(%struct.buffer_head*, %struct.buffer_head*) #1

declare dso_local i32 @mark_bitmap_end(i32, i32, i32) #1

declare dso_local i32 @EXT3_BLOCKS_PER_GROUP(%struct.super_block*) #1

declare dso_local i32 @EXT3_INODES_PER_GROUP(%struct.super_block*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @ext3_journal_stop(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
