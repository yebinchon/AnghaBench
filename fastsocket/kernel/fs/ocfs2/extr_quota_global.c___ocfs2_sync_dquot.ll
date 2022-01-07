; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_quota_global.c___ocfs2_sync_dquot.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_quota_global.c___ocfs2_sync_dquot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dquot = type { i32, i64, %struct.TYPE_7__, i32, i32, %struct.super_block* }
%struct.TYPE_7__ = type { i64, i64, i64, i64, i64, i64 }
%struct.super_block = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 (%struct.super_block*, i32, i8*, i32, i32)* }
%struct.ocfs2_mem_dqinfo = type { i32 }
%struct.ocfs2_global_disk_dqblk = type { i32 }
%struct.TYPE_8__ = type { %struct.ocfs2_mem_dqinfo* }
%struct.TYPE_9__ = type { i64, i64, i32 }

@ML_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Short read from global quota file (%u read)\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@dq_data_lock = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [59 x i8] c"Syncing global dquot %u space %lld+%lld, inodes %lld+%lld\0A\00", align 1
@DQ_LASTSET_B = common dso_local global i64 0, align 8
@QIF_SPACE_B = common dso_local global i64 0, align 8
@QIF_INODES_B = common dso_local global i64 0, align 8
@QIF_BTIME_B = common dso_local global i64 0, align 8
@DQ_BLKS_B = common dso_local global i32 0, align 4
@QIF_ITIME_B = common dso_local global i64 0, align 8
@DQ_INODES_B = common dso_local global i32 0, align 4
@QIF_BLIMITS_B = common dso_local global i64 0, align 8
@QIF_ILIMITS_B = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [65 x i8] c"Failed to lock quota info, loosing quota write (type=%d, id=%u)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__ocfs2_sync_dquot(%struct.dquot* %0, i32 %1) #0 {
  %3 = alloca %struct.dquot*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.super_block*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ocfs2_mem_dqinfo*, align 8
  %10 = alloca %struct.ocfs2_global_disk_dqblk, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.dquot* %0, %struct.dquot** %3, align 8
  store i32 %1, i32* %4, align 4
  %15 = load %struct.dquot*, %struct.dquot** %3, align 8
  %16 = getelementptr inbounds %struct.dquot, %struct.dquot* %15, i32 0, i32 5
  %17 = load %struct.super_block*, %struct.super_block** %16, align 8
  store %struct.super_block* %17, %struct.super_block** %7, align 8
  %18 = load %struct.dquot*, %struct.dquot** %3, align 8
  %19 = getelementptr inbounds %struct.dquot, %struct.dquot* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %8, align 4
  %21 = load %struct.super_block*, %struct.super_block** %7, align 8
  %22 = load i32, i32* %8, align 4
  %23 = call %struct.TYPE_8__* @sb_dqinfo(%struct.super_block* %21, i32 %22)
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load %struct.ocfs2_mem_dqinfo*, %struct.ocfs2_mem_dqinfo** %24, align 8
  store %struct.ocfs2_mem_dqinfo* %25, %struct.ocfs2_mem_dqinfo** %9, align 8
  %26 = load %struct.super_block*, %struct.super_block** %7, align 8
  %27 = getelementptr inbounds %struct.super_block, %struct.super_block* %26, i32 0, i32 0
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i32 (%struct.super_block*, i32, i8*, i32, i32)*, i32 (%struct.super_block*, i32, i8*, i32, i32)** %29, align 8
  %31 = load %struct.super_block*, %struct.super_block** %7, align 8
  %32 = load i32, i32* %8, align 4
  %33 = bitcast %struct.ocfs2_global_disk_dqblk* %10 to i8*
  %34 = load %struct.dquot*, %struct.dquot** %3, align 8
  %35 = getelementptr inbounds %struct.dquot, %struct.dquot* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 4
  %37 = call i32 %30(%struct.super_block* %31, i32 %32, i8* %33, i32 4, i32 %36)
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = icmp ne i64 %39, 4
  br i1 %40, label %41, label %51

41:                                               ; preds = %2
  %42 = load i32, i32* %5, align 4
  %43 = icmp sge i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %41
  %45 = load i32, i32* @ML_ERROR, align 4
  %46 = load i32, i32* %5, align 4
  %47 = call i32 (i32, i8*, i32, ...) @mlog(i32 %45, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %46)
  %48 = load i32, i32* @EIO, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %5, align 4
  br label %50

50:                                               ; preds = %44, %41
  br label %361

51:                                               ; preds = %2
  %52 = call i32 @spin_lock(i32* @dq_data_lock)
  %53 = load %struct.dquot*, %struct.dquot** %3, align 8
  %54 = getelementptr inbounds %struct.dquot, %struct.dquot* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.dquot*, %struct.dquot** %3, align 8
  %58 = call %struct.TYPE_9__* @OCFS2_DQUOT(%struct.dquot* %57)
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = sub nsw i64 %56, %60
  store i64 %61, i64* %11, align 8
  %62 = load %struct.dquot*, %struct.dquot** %3, align 8
  %63 = getelementptr inbounds %struct.dquot, %struct.dquot* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.dquot*, %struct.dquot** %3, align 8
  %67 = call %struct.TYPE_9__* @OCFS2_DQUOT(%struct.dquot* %66)
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = sub nsw i64 %65, %69
  store i64 %70, i64* %12, align 8
  %71 = load %struct.dquot*, %struct.dquot** %3, align 8
  %72 = getelementptr inbounds %struct.dquot, %struct.dquot* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  store i64 %74, i64* %13, align 8
  %75 = load %struct.dquot*, %struct.dquot** %3, align 8
  %76 = getelementptr inbounds %struct.dquot, %struct.dquot* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 3
  %78 = load i64, i64* %77, align 8
  store i64 %78, i64* %14, align 8
  %79 = load %struct.dquot*, %struct.dquot** %3, align 8
  %80 = call i32 @ocfs2_global_disk2memdqb(%struct.dquot* %79, %struct.ocfs2_global_disk_dqblk* %10)
  %81 = load %struct.dquot*, %struct.dquot** %3, align 8
  %82 = getelementptr inbounds %struct.dquot, %struct.dquot* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = trunc i64 %83 to i32
  %85 = load %struct.dquot*, %struct.dquot** %3, align 8
  %86 = getelementptr inbounds %struct.dquot, %struct.dquot* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* %11, align 8
  %90 = load %struct.dquot*, %struct.dquot** %3, align 8
  %91 = getelementptr inbounds %struct.dquot, %struct.dquot* %90, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* %12, align 8
  %95 = call i32 (i32, i8*, i32, ...) @mlog(i32 0, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0), i32 %84, i64 %88, i64 %89, i64 %93, i64 %94)
  %96 = load i64, i64* @DQ_LASTSET_B, align 8
  %97 = load i64, i64* @QIF_SPACE_B, align 8
  %98 = add nsw i64 %96, %97
  %99 = load %struct.dquot*, %struct.dquot** %3, align 8
  %100 = getelementptr inbounds %struct.dquot, %struct.dquot* %99, i32 0, i32 3
  %101 = call i32 @test_bit(i64 %98, i32* %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %110, label %103

103:                                              ; preds = %51
  %104 = load i64, i64* %11, align 8
  %105 = load %struct.dquot*, %struct.dquot** %3, align 8
  %106 = getelementptr inbounds %struct.dquot, %struct.dquot* %105, i32 0, i32 2
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = add nsw i64 %108, %104
  store i64 %109, i64* %107, align 8
  br label %110

110:                                              ; preds = %103, %51
  %111 = load i64, i64* @DQ_LASTSET_B, align 8
  %112 = load i64, i64* @QIF_INODES_B, align 8
  %113 = add nsw i64 %111, %112
  %114 = load %struct.dquot*, %struct.dquot** %3, align 8
  %115 = getelementptr inbounds %struct.dquot, %struct.dquot* %114, i32 0, i32 3
  %116 = call i32 @test_bit(i64 %113, i32* %115)
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %125, label %118

118:                                              ; preds = %110
  %119 = load i64, i64* %12, align 8
  %120 = load %struct.dquot*, %struct.dquot** %3, align 8
  %121 = getelementptr inbounds %struct.dquot, %struct.dquot* %120, i32 0, i32 2
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = add nsw i64 %123, %119
  store i64 %124, i64* %122, align 8
  br label %125

125:                                              ; preds = %118, %110
  %126 = load %struct.dquot*, %struct.dquot** %3, align 8
  %127 = getelementptr inbounds %struct.dquot, %struct.dquot* %126, i32 0, i32 2
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 4
  %129 = load i64, i64* %128, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %176

131:                                              ; preds = %125
  %132 = load %struct.dquot*, %struct.dquot** %3, align 8
  %133 = getelementptr inbounds %struct.dquot, %struct.dquot* %132, i32 0, i32 2
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = load %struct.dquot*, %struct.dquot** %3, align 8
  %137 = getelementptr inbounds %struct.dquot, %struct.dquot* %136, i32 0, i32 2
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 4
  %139 = load i64, i64* %138, align 8
  %140 = icmp sgt i64 %135, %139
  br i1 %140, label %141, label %176

141:                                              ; preds = %131
  %142 = load i64, i64* @DQ_LASTSET_B, align 8
  %143 = load i64, i64* @QIF_BTIME_B, align 8
  %144 = add nsw i64 %142, %143
  %145 = load %struct.dquot*, %struct.dquot** %3, align 8
  %146 = getelementptr inbounds %struct.dquot, %struct.dquot* %145, i32 0, i32 3
  %147 = call i32 @test_bit(i64 %144, i32* %146)
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %175, label %149

149:                                              ; preds = %141
  %150 = load i64, i64* %14, align 8
  %151 = icmp sgt i64 %150, 0
  br i1 %151, label %152, label %175

152:                                              ; preds = %149
  %153 = load %struct.dquot*, %struct.dquot** %3, align 8
  %154 = getelementptr inbounds %struct.dquot, %struct.dquot* %153, i32 0, i32 2
  %155 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %154, i32 0, i32 3
  %156 = load i64, i64* %155, align 8
  %157 = icmp sgt i64 %156, 0
  br i1 %157, label %158, label %169

158:                                              ; preds = %152
  %159 = load %struct.dquot*, %struct.dquot** %3, align 8
  %160 = getelementptr inbounds %struct.dquot, %struct.dquot* %159, i32 0, i32 2
  %161 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %160, i32 0, i32 3
  %162 = load i64, i64* %161, align 8
  %163 = load i64, i64* %14, align 8
  %164 = call i8* @min(i64 %162, i64 %163)
  %165 = ptrtoint i8* %164 to i64
  %166 = load %struct.dquot*, %struct.dquot** %3, align 8
  %167 = getelementptr inbounds %struct.dquot, %struct.dquot* %166, i32 0, i32 2
  %168 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %167, i32 0, i32 3
  store i64 %165, i64* %168, align 8
  br label %174

169:                                              ; preds = %152
  %170 = load i64, i64* %14, align 8
  %171 = load %struct.dquot*, %struct.dquot** %3, align 8
  %172 = getelementptr inbounds %struct.dquot, %struct.dquot* %171, i32 0, i32 2
  %173 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %172, i32 0, i32 3
  store i64 %170, i64* %173, align 8
  br label %174

174:                                              ; preds = %169, %158
  br label %175

175:                                              ; preds = %174, %149, %141
  br label %184

176:                                              ; preds = %131, %125
  %177 = load %struct.dquot*, %struct.dquot** %3, align 8
  %178 = getelementptr inbounds %struct.dquot, %struct.dquot* %177, i32 0, i32 2
  %179 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %178, i32 0, i32 3
  store i64 0, i64* %179, align 8
  %180 = load i32, i32* @DQ_BLKS_B, align 4
  %181 = load %struct.dquot*, %struct.dquot** %3, align 8
  %182 = getelementptr inbounds %struct.dquot, %struct.dquot* %181, i32 0, i32 3
  %183 = call i32 @clear_bit(i32 %180, i32* %182)
  br label %184

184:                                              ; preds = %176, %175
  %185 = load %struct.dquot*, %struct.dquot** %3, align 8
  %186 = getelementptr inbounds %struct.dquot, %struct.dquot* %185, i32 0, i32 2
  %187 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %186, i32 0, i32 5
  %188 = load i64, i64* %187, align 8
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %235

190:                                              ; preds = %184
  %191 = load %struct.dquot*, %struct.dquot** %3, align 8
  %192 = getelementptr inbounds %struct.dquot, %struct.dquot* %191, i32 0, i32 2
  %193 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %192, i32 0, i32 1
  %194 = load i64, i64* %193, align 8
  %195 = load %struct.dquot*, %struct.dquot** %3, align 8
  %196 = getelementptr inbounds %struct.dquot, %struct.dquot* %195, i32 0, i32 2
  %197 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %196, i32 0, i32 5
  %198 = load i64, i64* %197, align 8
  %199 = icmp sgt i64 %194, %198
  br i1 %199, label %200, label %235

200:                                              ; preds = %190
  %201 = load i64, i64* @DQ_LASTSET_B, align 8
  %202 = load i64, i64* @QIF_ITIME_B, align 8
  %203 = add nsw i64 %201, %202
  %204 = load %struct.dquot*, %struct.dquot** %3, align 8
  %205 = getelementptr inbounds %struct.dquot, %struct.dquot* %204, i32 0, i32 3
  %206 = call i32 @test_bit(i64 %203, i32* %205)
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %234, label %208

208:                                              ; preds = %200
  %209 = load i64, i64* %13, align 8
  %210 = icmp sgt i64 %209, 0
  br i1 %210, label %211, label %234

211:                                              ; preds = %208
  %212 = load %struct.dquot*, %struct.dquot** %3, align 8
  %213 = getelementptr inbounds %struct.dquot, %struct.dquot* %212, i32 0, i32 2
  %214 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %213, i32 0, i32 2
  %215 = load i64, i64* %214, align 8
  %216 = icmp sgt i64 %215, 0
  br i1 %216, label %217, label %228

217:                                              ; preds = %211
  %218 = load %struct.dquot*, %struct.dquot** %3, align 8
  %219 = getelementptr inbounds %struct.dquot, %struct.dquot* %218, i32 0, i32 2
  %220 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %219, i32 0, i32 2
  %221 = load i64, i64* %220, align 8
  %222 = load i64, i64* %13, align 8
  %223 = call i8* @min(i64 %221, i64 %222)
  %224 = ptrtoint i8* %223 to i64
  %225 = load %struct.dquot*, %struct.dquot** %3, align 8
  %226 = getelementptr inbounds %struct.dquot, %struct.dquot* %225, i32 0, i32 2
  %227 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %226, i32 0, i32 2
  store i64 %224, i64* %227, align 8
  br label %233

228:                                              ; preds = %211
  %229 = load i64, i64* %13, align 8
  %230 = load %struct.dquot*, %struct.dquot** %3, align 8
  %231 = getelementptr inbounds %struct.dquot, %struct.dquot* %230, i32 0, i32 2
  %232 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %231, i32 0, i32 2
  store i64 %229, i64* %232, align 8
  br label %233

233:                                              ; preds = %228, %217
  br label %234

234:                                              ; preds = %233, %208, %200
  br label %243

235:                                              ; preds = %190, %184
  %236 = load %struct.dquot*, %struct.dquot** %3, align 8
  %237 = getelementptr inbounds %struct.dquot, %struct.dquot* %236, i32 0, i32 2
  %238 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %237, i32 0, i32 2
  store i64 0, i64* %238, align 8
  %239 = load i32, i32* @DQ_INODES_B, align 4
  %240 = load %struct.dquot*, %struct.dquot** %3, align 8
  %241 = getelementptr inbounds %struct.dquot, %struct.dquot* %240, i32 0, i32 3
  %242 = call i32 @clear_bit(i32 %239, i32* %241)
  br label %243

243:                                              ; preds = %235, %234
  %244 = load i64, i64* @DQ_LASTSET_B, align 8
  %245 = load i64, i64* @QIF_SPACE_B, align 8
  %246 = add nsw i64 %244, %245
  %247 = load %struct.dquot*, %struct.dquot** %3, align 8
  %248 = getelementptr inbounds %struct.dquot, %struct.dquot* %247, i32 0, i32 3
  %249 = call i32 @__clear_bit(i64 %246, i32* %248)
  %250 = load i64, i64* @DQ_LASTSET_B, align 8
  %251 = load i64, i64* @QIF_INODES_B, align 8
  %252 = add nsw i64 %250, %251
  %253 = load %struct.dquot*, %struct.dquot** %3, align 8
  %254 = getelementptr inbounds %struct.dquot, %struct.dquot* %253, i32 0, i32 3
  %255 = call i32 @__clear_bit(i64 %252, i32* %254)
  %256 = load i64, i64* @DQ_LASTSET_B, align 8
  %257 = load i64, i64* @QIF_BLIMITS_B, align 8
  %258 = add nsw i64 %256, %257
  %259 = load %struct.dquot*, %struct.dquot** %3, align 8
  %260 = getelementptr inbounds %struct.dquot, %struct.dquot* %259, i32 0, i32 3
  %261 = call i32 @__clear_bit(i64 %258, i32* %260)
  %262 = load i64, i64* @DQ_LASTSET_B, align 8
  %263 = load i64, i64* @QIF_ILIMITS_B, align 8
  %264 = add nsw i64 %262, %263
  %265 = load %struct.dquot*, %struct.dquot** %3, align 8
  %266 = getelementptr inbounds %struct.dquot, %struct.dquot* %265, i32 0, i32 3
  %267 = call i32 @__clear_bit(i64 %264, i32* %266)
  %268 = load i64, i64* @DQ_LASTSET_B, align 8
  %269 = load i64, i64* @QIF_BTIME_B, align 8
  %270 = add nsw i64 %268, %269
  %271 = load %struct.dquot*, %struct.dquot** %3, align 8
  %272 = getelementptr inbounds %struct.dquot, %struct.dquot* %271, i32 0, i32 3
  %273 = call i32 @__clear_bit(i64 %270, i32* %272)
  %274 = load i64, i64* @DQ_LASTSET_B, align 8
  %275 = load i64, i64* @QIF_ITIME_B, align 8
  %276 = add nsw i64 %274, %275
  %277 = load %struct.dquot*, %struct.dquot** %3, align 8
  %278 = getelementptr inbounds %struct.dquot, %struct.dquot* %277, i32 0, i32 3
  %279 = call i32 @__clear_bit(i64 %276, i32* %278)
  %280 = load %struct.dquot*, %struct.dquot** %3, align 8
  %281 = getelementptr inbounds %struct.dquot, %struct.dquot* %280, i32 0, i32 2
  %282 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %281, i32 0, i32 0
  %283 = load i64, i64* %282, align 8
  %284 = load %struct.dquot*, %struct.dquot** %3, align 8
  %285 = call %struct.TYPE_9__* @OCFS2_DQUOT(%struct.dquot* %284)
  %286 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %285, i32 0, i32 0
  store i64 %283, i64* %286, align 8
  %287 = load %struct.dquot*, %struct.dquot** %3, align 8
  %288 = getelementptr inbounds %struct.dquot, %struct.dquot* %287, i32 0, i32 2
  %289 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %288, i32 0, i32 1
  %290 = load i64, i64* %289, align 8
  %291 = load %struct.dquot*, %struct.dquot** %3, align 8
  %292 = call %struct.TYPE_9__* @OCFS2_DQUOT(%struct.dquot* %291)
  %293 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %292, i32 0, i32 1
  store i64 %290, i64* %293, align 8
  %294 = call i32 @spin_unlock(i32* @dq_data_lock)
  %295 = load %struct.ocfs2_mem_dqinfo*, %struct.ocfs2_mem_dqinfo** %9, align 8
  %296 = load i32, i32* %4, align 4
  %297 = call i32 @ocfs2_qinfo_lock(%struct.ocfs2_mem_dqinfo* %295, i32 %296)
  store i32 %297, i32* %5, align 4
  %298 = load i32, i32* %5, align 4
  %299 = icmp slt i32 %298, 0
  br i1 %299, label %300, label %310

300:                                              ; preds = %243
  %301 = load i32, i32* @ML_ERROR, align 4
  %302 = load %struct.dquot*, %struct.dquot** %3, align 8
  %303 = getelementptr inbounds %struct.dquot, %struct.dquot* %302, i32 0, i32 0
  %304 = load i32, i32* %303, align 8
  %305 = load %struct.dquot*, %struct.dquot** %3, align 8
  %306 = getelementptr inbounds %struct.dquot, %struct.dquot* %305, i32 0, i32 1
  %307 = load i64, i64* %306, align 8
  %308 = trunc i64 %307 to i32
  %309 = call i32 (i32, i8*, i32, ...) @mlog(i32 %301, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.2, i64 0, i64 0), i32 %304, i32 %308)
  br label %361

310:                                              ; preds = %243
  %311 = load i32, i32* %4, align 4
  %312 = icmp ne i32 %311, 0
  br i1 %312, label %313, label %319

313:                                              ; preds = %310
  %314 = load %struct.dquot*, %struct.dquot** %3, align 8
  %315 = call %struct.TYPE_9__* @OCFS2_DQUOT(%struct.dquot* %314)
  %316 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %315, i32 0, i32 2
  %317 = load i32, i32* %316, align 8
  %318 = add nsw i32 %317, -1
  store i32 %318, i32* %316, align 8
  br label %319

319:                                              ; preds = %313, %310
  %320 = load %struct.ocfs2_mem_dqinfo*, %struct.ocfs2_mem_dqinfo** %9, align 8
  %321 = getelementptr inbounds %struct.ocfs2_mem_dqinfo, %struct.ocfs2_mem_dqinfo* %320, i32 0, i32 0
  %322 = load %struct.dquot*, %struct.dquot** %3, align 8
  %323 = call i32 @qtree_write_dquot(i32* %321, %struct.dquot* %322)
  store i32 %323, i32* %5, align 4
  %324 = load i32, i32* %5, align 4
  %325 = icmp slt i32 %324, 0
  br i1 %325, label %326, label %327

326:                                              ; preds = %319
  br label %357

327:                                              ; preds = %319
  %328 = load i32, i32* %4, align 4
  %329 = icmp ne i32 %328, 0
  br i1 %329, label %330, label %356

330:                                              ; preds = %327
  %331 = load %struct.dquot*, %struct.dquot** %3, align 8
  %332 = call %struct.TYPE_9__* @OCFS2_DQUOT(%struct.dquot* %331)
  %333 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %332, i32 0, i32 2
  %334 = load i32, i32* %333, align 8
  %335 = icmp ne i32 %334, 0
  br i1 %335, label %356, label %336

336:                                              ; preds = %330
  %337 = load %struct.ocfs2_mem_dqinfo*, %struct.ocfs2_mem_dqinfo** %9, align 8
  %338 = getelementptr inbounds %struct.ocfs2_mem_dqinfo, %struct.ocfs2_mem_dqinfo* %337, i32 0, i32 0
  %339 = load %struct.dquot*, %struct.dquot** %3, align 8
  %340 = call i32 @qtree_release_dquot(i32* %338, %struct.dquot* %339)
  store i32 %340, i32* %5, align 4
  %341 = load %struct.super_block*, %struct.super_block** %7, align 8
  %342 = load i32, i32* %8, align 4
  %343 = call %struct.TYPE_8__* @sb_dqinfo(%struct.super_block* %341, i32 %342)
  %344 = call i64 @info_dirty(%struct.TYPE_8__* %343)
  %345 = icmp ne i64 %344, 0
  br i1 %345, label %346, label %355

346:                                              ; preds = %336
  %347 = load %struct.super_block*, %struct.super_block** %7, align 8
  %348 = load i32, i32* %8, align 4
  %349 = call i32 @__ocfs2_global_write_info(%struct.super_block* %347, i32 %348)
  store i32 %349, i32* %6, align 4
  %350 = load i32, i32* %5, align 4
  %351 = icmp ne i32 %350, 0
  br i1 %351, label %354, label %352

352:                                              ; preds = %346
  %353 = load i32, i32* %6, align 4
  store i32 %353, i32* %5, align 4
  br label %354

354:                                              ; preds = %352, %346
  br label %355

355:                                              ; preds = %354, %336
  br label %356

356:                                              ; preds = %355, %330, %327
  br label %357

357:                                              ; preds = %356, %326
  %358 = load %struct.ocfs2_mem_dqinfo*, %struct.ocfs2_mem_dqinfo** %9, align 8
  %359 = load i32, i32* %4, align 4
  %360 = call i32 @ocfs2_qinfo_unlock(%struct.ocfs2_mem_dqinfo* %358, i32 %359)
  br label %361

361:                                              ; preds = %357, %300, %50
  %362 = load i32, i32* %5, align 4
  %363 = icmp slt i32 %362, 0
  br i1 %363, label %364, label %367

364:                                              ; preds = %361
  %365 = load i32, i32* %5, align 4
  %366 = call i32 @mlog_errno(i32 %365)
  br label %367

367:                                              ; preds = %364, %361
  %368 = load i32, i32* %5, align 4
  ret i32 %368
}

declare dso_local %struct.TYPE_8__* @sb_dqinfo(%struct.super_block*, i32) #1

declare dso_local i32 @mlog(i32, i8*, i32, ...) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.TYPE_9__* @OCFS2_DQUOT(%struct.dquot*) #1

declare dso_local i32 @ocfs2_global_disk2memdqb(%struct.dquot*, %struct.ocfs2_global_disk_dqblk*) #1

declare dso_local i32 @test_bit(i64, i32*) #1

declare dso_local i8* @min(i64, i64) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @__clear_bit(i64, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @ocfs2_qinfo_lock(%struct.ocfs2_mem_dqinfo*, i32) #1

declare dso_local i32 @qtree_write_dquot(i32*, %struct.dquot*) #1

declare dso_local i32 @qtree_release_dquot(i32*, %struct.dquot*) #1

declare dso_local i64 @info_dirty(%struct.TYPE_8__*) #1

declare dso_local i32 @__ocfs2_global_write_info(%struct.super_block*, i32) #1

declare dso_local i32 @ocfs2_qinfo_unlock(%struct.ocfs2_mem_dqinfo*, i32) #1

declare dso_local i32 @mlog_errno(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
