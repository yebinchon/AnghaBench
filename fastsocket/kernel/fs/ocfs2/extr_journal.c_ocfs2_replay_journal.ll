; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_journal.c_ocfs2_replay_journal.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_journal.c_ocfs2_replay_journal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_super = type { i64*, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.inode = type { i32 }
%struct.ocfs2_dinode = type { i32, %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.buffer_head = type { i64 }
%struct.TYPE_9__ = type { i8* }

@.str = private unnamed_addr constant [43 x i8] c"Slot %u already recovered (old/new=%u/%u)\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@OCFS2_META_LOCK_RECOVERY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"status returned from ocfs2_inode_lock=%d\0A\00", align 1
@ERESTARTSYS = common dso_local global i32 0, align 4
@ML_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"Could not lock journal!\0A\00", align 1
@OCFS2_JOURNAL_DIRTY_FL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"No recovery required for node %d\0A\00", align 1
@REPLAY_NEEDED = common dso_local global i32 0, align 4
@ML_NOTICE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [51 x i8] c"Recovering node %d from slot %d on device (%u,%u)\0A\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"calling journal_init_inode\0A\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"Linux journal layer error\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [23 x i8] c"flushing the journal.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocfs2_super*, i32, i32)* @ocfs2_replay_journal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_replay_journal(%struct.ocfs2_super* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ocfs2_super*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.inode*, align 8
  %11 = alloca %struct.ocfs2_dinode*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.buffer_head*, align 8
  %14 = alloca i64, align 8
  store %struct.ocfs2_super* %0, %struct.ocfs2_super** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %8, align 4
  store %struct.inode* null, %struct.inode** %10, align 8
  store i32* null, i32** %12, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %13, align 8
  %15 = load %struct.ocfs2_super*, %struct.ocfs2_super** %4, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @ocfs2_read_journal_inode(%struct.ocfs2_super* %15, i32 %16, %struct.buffer_head** %13, %struct.inode** %10)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @mlog_errno(i32 %21)
  br label %242

23:                                               ; preds = %3
  %24 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %25 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to %struct.ocfs2_dinode*
  store %struct.ocfs2_dinode* %27, %struct.ocfs2_dinode** %11, align 8
  %28 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %11, align 8
  %29 = call i64 @ocfs2_get_recovery_generation(%struct.ocfs2_dinode* %28)
  store i64 %29, i64* %14, align 8
  %30 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %31 = call i32 @brelse(%struct.buffer_head* %30)
  store %struct.buffer_head* null, %struct.buffer_head** %13, align 8
  %32 = load %struct.ocfs2_super*, %struct.ocfs2_super** %4, align 8
  %33 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %32, i32 0, i32 0
  %34 = load i64*, i64** %33, align 8
  %35 = load i32, i32* %6, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i64, i64* %34, i64 %36
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* %14, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %61

41:                                               ; preds = %23
  %42 = load i32, i32* %6, align 4
  %43 = load %struct.ocfs2_super*, %struct.ocfs2_super** %4, align 8
  %44 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %43, i32 0, i32 0
  %45 = load i64*, i64** %44, align 8
  %46 = load i32, i32* %6, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i64, i64* %45, i64 %47
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* %14, align 8
  %51 = call i32 (i32, i8*, ...) @mlog(i32 0, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %42, i64 %49, i64 %50)
  %52 = load i64, i64* %14, align 8
  %53 = load %struct.ocfs2_super*, %struct.ocfs2_super** %4, align 8
  %54 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %53, i32 0, i32 0
  %55 = load i64*, i64** %54, align 8
  %56 = load i32, i32* %6, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i64, i64* %55, i64 %57
  store i64 %52, i64* %58, align 8
  %59 = load i32, i32* @EBUSY, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %7, align 4
  br label %242

61:                                               ; preds = %23
  %62 = load %struct.inode*, %struct.inode** %10, align 8
  %63 = load i32, i32* @OCFS2_META_LOCK_RECOVERY, align 4
  %64 = call i32 @ocfs2_inode_lock_full(%struct.inode* %62, %struct.buffer_head** %13, i32 1, i32 %63)
  store i32 %64, i32* %7, align 4
  %65 = load i32, i32* %7, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %78

67:                                               ; preds = %61
  %68 = load i32, i32* %7, align 4
  %69 = call i32 (i32, i8*, ...) @mlog(i32 0, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %68)
  %70 = load i32, i32* %7, align 4
  %71 = load i32, i32* @ERESTARTSYS, align 4
  %72 = sub nsw i32 0, %71
  %73 = icmp ne i32 %70, %72
  br i1 %73, label %74, label %77

74:                                               ; preds = %67
  %75 = load i32, i32* @ML_ERROR, align 4
  %76 = call i32 (i32, i8*, ...) @mlog(i32 %75, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  br label %77

77:                                               ; preds = %74, %67
  br label %242

78:                                               ; preds = %61
  store i32 1, i32* %8, align 4
  %79 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %80 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = inttoptr i64 %81 to %struct.ocfs2_dinode*
  store %struct.ocfs2_dinode* %82, %struct.ocfs2_dinode** %11, align 8
  %83 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %11, align 8
  %84 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i8* @le32_to_cpu(i32 %87)
  %89 = ptrtoint i8* %88 to i32
  store i32 %89, i32* %9, align 4
  %90 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %11, align 8
  %91 = call i64 @ocfs2_get_recovery_generation(%struct.ocfs2_dinode* %90)
  store i64 %91, i64* %14, align 8
  %92 = load i32, i32* %9, align 4
  %93 = load i32, i32* @OCFS2_JOURNAL_DIRTY_FL, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %106, label %96

96:                                               ; preds = %78
  %97 = load i32, i32* %5, align 4
  %98 = call i32 (i32, i8*, ...) @mlog(i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %97)
  %99 = load i64, i64* %14, align 8
  %100 = load %struct.ocfs2_super*, %struct.ocfs2_super** %4, align 8
  %101 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %100, i32 0, i32 0
  %102 = load i64*, i64** %101, align 8
  %103 = load i32, i32* %6, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i64, i64* %102, i64 %104
  store i64 %99, i64* %105, align 8
  br label %242

106:                                              ; preds = %78
  %107 = load %struct.ocfs2_super*, %struct.ocfs2_super** %4, align 8
  %108 = load i32, i32* @REPLAY_NEEDED, align 4
  %109 = call i32 @ocfs2_replay_map_set_state(%struct.ocfs2_super* %107, i32 %108)
  %110 = load i32, i32* @ML_NOTICE, align 4
  %111 = load i32, i32* %5, align 4
  %112 = load i32, i32* %6, align 4
  %113 = load %struct.ocfs2_super*, %struct.ocfs2_super** %4, align 8
  %114 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %113, i32 0, i32 1
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @MAJOR(i32 %117)
  %119 = load %struct.ocfs2_super*, %struct.ocfs2_super** %4, align 8
  %120 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %119, i32 0, i32 1
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @MINOR(i32 %123)
  %125 = call i32 (i32, i8*, ...) @mlog(i32 %110, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.4, i64 0, i64 0), i32 %111, i32 %112, i32 %118, i32 %124)
  %126 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %11, align 8
  %127 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 4
  %129 = call i8* @le32_to_cpu(i32 %128)
  %130 = load %struct.inode*, %struct.inode** %10, align 8
  %131 = call %struct.TYPE_9__* @OCFS2_I(%struct.inode* %130)
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %131, i32 0, i32 0
  store i8* %129, i8** %132, align 8
  %133 = load %struct.inode*, %struct.inode** %10, align 8
  %134 = call i32 @ocfs2_force_read_journal(%struct.inode* %133)
  store i32 %134, i32* %7, align 4
  %135 = load i32, i32* %7, align 4
  %136 = icmp slt i32 %135, 0
  br i1 %136, label %137, label %140

137:                                              ; preds = %106
  %138 = load i32, i32* %7, align 4
  %139 = call i32 @mlog_errno(i32 %138)
  br label %242

140:                                              ; preds = %106
  %141 = call i32 (i32, i8*, ...) @mlog(i32 0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  %142 = load %struct.inode*, %struct.inode** %10, align 8
  %143 = call i32* @jbd2_journal_init_inode(%struct.inode* %142)
  store i32* %143, i32** %12, align 8
  %144 = load i32*, i32** %12, align 8
  %145 = icmp eq i32* %144, null
  br i1 %145, label %146, label %151

146:                                              ; preds = %140
  %147 = load i32, i32* @ML_ERROR, align 4
  %148 = call i32 (i32, i8*, ...) @mlog(i32 %147, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0))
  %149 = load i32, i32* @EIO, align 4
  %150 = sub nsw i32 0, %149
  store i32 %150, i32* %7, align 4
  br label %242

151:                                              ; preds = %140
  %152 = load i32*, i32** %12, align 8
  %153 = call i32 @jbd2_journal_load(i32* %152)
  store i32 %153, i32* %7, align 4
  %154 = load i32, i32* %7, align 4
  %155 = icmp slt i32 %154, 0
  br i1 %155, label %156, label %167

156:                                              ; preds = %151
  %157 = load i32, i32* %7, align 4
  %158 = call i32 @mlog_errno(i32 %157)
  %159 = load %struct.inode*, %struct.inode** %10, align 8
  %160 = call i32 @igrab(%struct.inode* %159)
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %164, label %162

162:                                              ; preds = %156
  %163 = call i32 (...) @BUG()
  br label %164

164:                                              ; preds = %162, %156
  %165 = load i32*, i32** %12, align 8
  %166 = call i32 @jbd2_journal_destroy(i32* %165)
  br label %242

167:                                              ; preds = %151
  %168 = load %struct.ocfs2_super*, %struct.ocfs2_super** %4, align 8
  %169 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %168, i32 0, i32 1
  %170 = load %struct.TYPE_8__*, %struct.TYPE_8__** %169, align 8
  %171 = load i32*, i32** %12, align 8
  %172 = load i32, i32* %6, align 4
  %173 = call i32 @ocfs2_clear_journal_error(%struct.TYPE_8__* %170, i32* %171, i32 %172)
  %174 = call i32 (i32, i8*, ...) @mlog(i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0))
  %175 = load i32*, i32** %12, align 8
  %176 = call i32 @jbd2_journal_lock_updates(i32* %175)
  %177 = load i32*, i32** %12, align 8
  %178 = call i32 @jbd2_journal_flush(i32* %177)
  store i32 %178, i32* %7, align 4
  %179 = load i32*, i32** %12, align 8
  %180 = call i32 @jbd2_journal_unlock_updates(i32* %179)
  %181 = load i32, i32* %7, align 4
  %182 = icmp slt i32 %181, 0
  br i1 %182, label %183, label %186

183:                                              ; preds = %167
  %184 = load i32, i32* %7, align 4
  %185 = call i32 @mlog_errno(i32 %184)
  br label %186

186:                                              ; preds = %183, %167
  %187 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %11, align 8
  %188 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %187, i32 0, i32 1
  %189 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  %192 = call i8* @le32_to_cpu(i32 %191)
  %193 = ptrtoint i8* %192 to i32
  store i32 %193, i32* %9, align 4
  %194 = load i32, i32* @OCFS2_JOURNAL_DIRTY_FL, align 4
  %195 = xor i32 %194, -1
  %196 = load i32, i32* %9, align 4
  %197 = and i32 %196, %195
  store i32 %197, i32* %9, align 4
  %198 = load i32, i32* %9, align 4
  %199 = call i32 @cpu_to_le32(i32 %198)
  %200 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %11, align 8
  %201 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %200, i32 0, i32 1
  %202 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %201, i32 0, i32 0
  %203 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %202, i32 0, i32 0
  store i32 %199, i32* %203, align 4
  %204 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %11, align 8
  %205 = call i32 @ocfs2_bump_recovery_generation(%struct.ocfs2_dinode* %204)
  %206 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %11, align 8
  %207 = call i64 @ocfs2_get_recovery_generation(%struct.ocfs2_dinode* %206)
  %208 = load %struct.ocfs2_super*, %struct.ocfs2_super** %4, align 8
  %209 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %208, i32 0, i32 0
  %210 = load i64*, i64** %209, align 8
  %211 = load i32, i32* %6, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds i64, i64* %210, i64 %212
  store i64 %207, i64* %213, align 8
  %214 = load %struct.ocfs2_super*, %struct.ocfs2_super** %4, align 8
  %215 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %214, i32 0, i32 1
  %216 = load %struct.TYPE_8__*, %struct.TYPE_8__** %215, align 8
  %217 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %218 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %217, i32 0, i32 0
  %219 = load i64, i64* %218, align 8
  %220 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %11, align 8
  %221 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %220, i32 0, i32 0
  %222 = call i32 @ocfs2_compute_meta_ecc(%struct.TYPE_8__* %216, i64 %219, i32* %221)
  %223 = load %struct.ocfs2_super*, %struct.ocfs2_super** %4, align 8
  %224 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %225 = load %struct.inode*, %struct.inode** %10, align 8
  %226 = call i32 @INODE_CACHE(%struct.inode* %225)
  %227 = call i32 @ocfs2_write_block(%struct.ocfs2_super* %223, %struct.buffer_head* %224, i32 %226)
  store i32 %227, i32* %7, align 4
  %228 = load i32, i32* %7, align 4
  %229 = icmp slt i32 %228, 0
  br i1 %229, label %230, label %233

230:                                              ; preds = %186
  %231 = load i32, i32* %7, align 4
  %232 = call i32 @mlog_errno(i32 %231)
  br label %233

233:                                              ; preds = %230, %186
  %234 = load %struct.inode*, %struct.inode** %10, align 8
  %235 = call i32 @igrab(%struct.inode* %234)
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %239, label %237

237:                                              ; preds = %233
  %238 = call i32 (...) @BUG()
  br label %239

239:                                              ; preds = %237, %233
  %240 = load i32*, i32** %12, align 8
  %241 = call i32 @jbd2_journal_destroy(i32* %240)
  br label %242

242:                                              ; preds = %239, %164, %146, %137, %96, %77, %41, %20
  %243 = load i32, i32* %8, align 4
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %248

245:                                              ; preds = %242
  %246 = load %struct.inode*, %struct.inode** %10, align 8
  %247 = call i32 @ocfs2_inode_unlock(%struct.inode* %246, i32 1)
  br label %248

248:                                              ; preds = %245, %242
  %249 = load %struct.inode*, %struct.inode** %10, align 8
  %250 = icmp ne %struct.inode* %249, null
  br i1 %250, label %251, label %254

251:                                              ; preds = %248
  %252 = load %struct.inode*, %struct.inode** %10, align 8
  %253 = call i32 @iput(%struct.inode* %252)
  br label %254

254:                                              ; preds = %251, %248
  %255 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %256 = call i32 @brelse(%struct.buffer_head* %255)
  %257 = load i32, i32* %7, align 4
  %258 = call i32 @mlog_exit(i32 %257)
  %259 = load i32, i32* %7, align 4
  ret i32 %259
}

declare dso_local i32 @ocfs2_read_journal_inode(%struct.ocfs2_super*, i32, %struct.buffer_head**, %struct.inode**) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i64 @ocfs2_get_recovery_generation(%struct.ocfs2_dinode*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @mlog(i32, i8*, ...) #1

declare dso_local i32 @ocfs2_inode_lock_full(%struct.inode*, %struct.buffer_head**, i32, i32) #1

declare dso_local i8* @le32_to_cpu(i32) #1

declare dso_local i32 @ocfs2_replay_map_set_state(%struct.ocfs2_super*, i32) #1

declare dso_local i32 @MAJOR(i32) #1

declare dso_local i32 @MINOR(i32) #1

declare dso_local %struct.TYPE_9__* @OCFS2_I(%struct.inode*) #1

declare dso_local i32 @ocfs2_force_read_journal(%struct.inode*) #1

declare dso_local i32* @jbd2_journal_init_inode(%struct.inode*) #1

declare dso_local i32 @jbd2_journal_load(i32*) #1

declare dso_local i32 @igrab(%struct.inode*) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @jbd2_journal_destroy(i32*) #1

declare dso_local i32 @ocfs2_clear_journal_error(%struct.TYPE_8__*, i32*, i32) #1

declare dso_local i32 @jbd2_journal_lock_updates(i32*) #1

declare dso_local i32 @jbd2_journal_flush(i32*) #1

declare dso_local i32 @jbd2_journal_unlock_updates(i32*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @ocfs2_bump_recovery_generation(%struct.ocfs2_dinode*) #1

declare dso_local i32 @ocfs2_compute_meta_ecc(%struct.TYPE_8__*, i64, i32*) #1

declare dso_local i32 @ocfs2_write_block(%struct.ocfs2_super*, %struct.buffer_head*, i32) #1

declare dso_local i32 @INODE_CACHE(%struct.inode*) #1

declare dso_local i32 @ocfs2_inode_unlock(%struct.inode*, i32) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local i32 @mlog_exit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
