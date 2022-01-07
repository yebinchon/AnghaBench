; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_dlmglue.c___ocfs2_cluster_lock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_dlmglue.c___ocfs2_cluster_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_super = type { i32, i32 }
%struct.ocfs2_lock_res = type { i32, i32, i64, i32, %struct.TYPE_5__, i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32* }
%struct.TYPE_4__ = type { i32 }
%struct.ocfs2_mask_waiter = type { i32 }

@OCFS2_MOUNT_NOINTR = common dso_local global i32 0, align 4
@LOCK_TYPE_USES_LVB = common dso_local global i32 0, align 4
@DLM_LKF_VALBLK = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@OCFS2_LOCK_FREEING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"Cluster lock called on freeing lockres %s! flags 0x%lx\0A\00", align 1
@OCFS2_LOCK_BUSY = common dso_local global i32 0, align 4
@OCFS2_LOCK_BLOCKED = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@DLM_LKF_NOQUEUE = common dso_local global i32 0, align 4
@OCFS2_AST_INVALID = common dso_local global i64 0, align 8
@ML_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"lockres %s has action %u pending\0A\00", align 1
@OCFS2_LOCK_ATTACHED = common dso_local global i32 0, align 4
@OCFS2_AST_ATTACH = common dso_local global i64 0, align 8
@DLM_LKF_CONVERT = common dso_local global i32 0, align 4
@OCFS2_AST_CONVERT = common dso_local global i64 0, align 8
@DLM_LOCK_IV = common dso_local global i32 0, align 4
@DLM_LOCK_NL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"lock %s, convert from %d to level = %d\0A\00", align 1
@OCFS2_LOCK_ID_MAX_LEN = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [15 x i8] c"ocfs2_dlm_lock\00", align 1
@.str.4 = private unnamed_addr constant [48 x i8] c"lock %s, successful return from ocfs2_dlm_lock\0A\00", align 1
@OCFS2_LOCK_NONBLOCK = common dso_local global i32 0, align 4
@DLM_LOCK_PR = common dso_local global i32 0, align 4
@OCFS2_META_LOCK_NOQUEUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocfs2_super*, %struct.ocfs2_lock_res*, i32, i32, i32, i32, i64)* @__ocfs2_cluster_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__ocfs2_cluster_lock(%struct.ocfs2_super* %0, %struct.ocfs2_lock_res* %1, i32 %2, i32 %3, i32 %4, i32 %5, i64 %6) #0 {
  %8 = alloca %struct.ocfs2_super*, align 8
  %9 = alloca %struct.ocfs2_lock_res*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca %struct.ocfs2_mask_waiter, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.ocfs2_super* %0, %struct.ocfs2_super** %8, align 8
  store %struct.ocfs2_lock_res* %1, %struct.ocfs2_lock_res** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i64 %6, i64* %14, align 8
  %22 = load %struct.ocfs2_super*, %struct.ocfs2_super** %8, align 8
  %23 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @OCFS2_MOUNT_NOINTR, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  store i32 %29, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %21, align 4
  %30 = call i32 (...) @mlog_entry_void()
  %31 = call i32 @ocfs2_init_mask_waiter(%struct.ocfs2_mask_waiter* %15)
  %32 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %9, align 8
  %33 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %32, i32 0, i32 8
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @LOCK_TYPE_USES_LVB, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %7
  %41 = load i32, i32* @DLM_LKF_VALBLK, align 4
  %42 = load i32, i32* %11, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %11, align 4
  br label %44

44:                                               ; preds = %40, %7
  br label %45

45:                                               ; preds = %273, %264, %227, %44
  store i32 0, i32* %16, align 4
  %46 = load i32, i32* %17, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %45
  %49 = load i32, i32* @current, align 4
  %50 = call i64 @signal_pending(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %48
  %53 = load i32, i32* @ERESTARTSYS, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %18, align 4
  br label %241

55:                                               ; preds = %48, %45
  %56 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %9, align 8
  %57 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %56, i32 0, i32 5
  %58 = load i64, i64* %19, align 8
  %59 = call i32 @spin_lock_irqsave(i32* %57, i64 %58)
  %60 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %9, align 8
  %61 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @OCFS2_LOCK_FREEING, align 4
  %64 = and i32 %62, %63
  %65 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %9, align 8
  %66 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %65, i32 0, i32 6
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %9, align 8
  %69 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @mlog_bug_on_msg(i32 %64, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %67, i32 %70)
  %72 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %9, align 8
  %73 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @OCFS2_LOCK_BUSY, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %88

78:                                               ; preds = %55
  %79 = load i32, i32* %10, align 4
  %80 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %9, align 8
  %81 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = icmp sgt i32 %79, %82
  br i1 %83, label %84, label %88

84:                                               ; preds = %78
  %85 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %9, align 8
  %86 = load i32, i32* @OCFS2_LOCK_BUSY, align 4
  %87 = call i32 @lockres_add_mask_waiter(%struct.ocfs2_lock_res* %85, %struct.ocfs2_mask_waiter* %15, i32 %86, i32 0)
  store i32 1, i32* %16, align 4
  br label %236

88:                                               ; preds = %78, %55
  %89 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %9, align 8
  %90 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @OCFS2_LOCK_BLOCKED, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %104

95:                                               ; preds = %88
  %96 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %9, align 8
  %97 = load i32, i32* %10, align 4
  %98 = call i32 @ocfs2_may_continue_on_blocked_lock(%struct.ocfs2_lock_res* %96, i32 %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %104, label %100

100:                                              ; preds = %95
  %101 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %9, align 8
  %102 = load i32, i32* @OCFS2_LOCK_BLOCKED, align 4
  %103 = call i32 @lockres_add_mask_waiter(%struct.ocfs2_lock_res* %101, %struct.ocfs2_mask_waiter* %15, i32 %102, i32 0)
  store i32 1, i32* %16, align 4
  br label %236

104:                                              ; preds = %95, %88
  %105 = load i32, i32* %10, align 4
  %106 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %9, align 8
  %107 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = icmp sgt i32 %105, %108
  br i1 %109, label %110, label %232

110:                                              ; preds = %104
  %111 = load i32, i32* %21, align 4
  %112 = icmp sgt i32 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %110
  %114 = load i32, i32* @EAGAIN, align 4
  %115 = sub nsw i32 0, %114
  store i32 %115, i32* %18, align 4
  br label %236

116:                                              ; preds = %110
  %117 = load i32, i32* %11, align 4
  %118 = load i32, i32* @DLM_LKF_NOQUEUE, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %116
  store i32 1, i32* %21, align 4
  br label %122

122:                                              ; preds = %121, %116
  %123 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %9, align 8
  %124 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %123, i32 0, i32 2
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* @OCFS2_AST_INVALID, align 8
  %127 = icmp ne i64 %125, %126
  br i1 %127, label %128, label %137

128:                                              ; preds = %122
  %129 = load i32, i32* @ML_ERROR, align 4
  %130 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %9, align 8
  %131 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %130, i32 0, i32 6
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %9, align 8
  %134 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %133, i32 0, i32 2
  %135 = load i64, i64* %134, align 8
  %136 = call i32 (i32, i8*, i32, ...) @mlog(i32 %129, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %132, i64 %135)
  br label %137

137:                                              ; preds = %128, %122
  %138 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %9, align 8
  %139 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = load i32, i32* @OCFS2_LOCK_ATTACHED, align 4
  %142 = and i32 %140, %141
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %152, label %144

144:                                              ; preds = %137
  %145 = load i64, i64* @OCFS2_AST_ATTACH, align 8
  %146 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %9, align 8
  %147 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %146, i32 0, i32 2
  store i64 %145, i64* %147, align 8
  %148 = load i32, i32* @DLM_LKF_CONVERT, align 4
  %149 = xor i32 %148, -1
  %150 = load i32, i32* %11, align 4
  %151 = and i32 %150, %149
  store i32 %151, i32* %11, align 4
  br label %159

152:                                              ; preds = %137
  %153 = load i64, i64* @OCFS2_AST_CONVERT, align 8
  %154 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %9, align 8
  %155 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %154, i32 0, i32 2
  store i64 %153, i64* %155, align 8
  %156 = load i32, i32* @DLM_LKF_CONVERT, align 4
  %157 = load i32, i32* %11, align 4
  %158 = or i32 %157, %156
  store i32 %158, i32* %11, align 4
  br label %159

159:                                              ; preds = %152, %144
  %160 = load i32, i32* %10, align 4
  %161 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %9, align 8
  %162 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %161, i32 0, i32 3
  store i32 %160, i32* %162, align 8
  %163 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %9, align 8
  %164 = load i32, i32* @OCFS2_LOCK_BUSY, align 4
  %165 = call i32 @lockres_or_flags(%struct.ocfs2_lock_res* %163, i32 %164)
  %166 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %9, align 8
  %167 = call i32 @lockres_set_pending(%struct.ocfs2_lock_res* %166)
  store i32 %167, i32* %20, align 4
  %168 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %9, align 8
  %169 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %168, i32 0, i32 5
  %170 = load i64, i64* %19, align 8
  %171 = call i32 @spin_unlock_irqrestore(i32* %169, i64 %170)
  %172 = load i32, i32* %10, align 4
  %173 = load i32, i32* @DLM_LOCK_IV, align 4
  %174 = icmp eq i32 %172, %173
  %175 = zext i1 %174 to i32
  %176 = call i32 @BUG_ON(i32 %175)
  %177 = load i32, i32* %10, align 4
  %178 = load i32, i32* @DLM_LOCK_NL, align 4
  %179 = icmp eq i32 %177, %178
  %180 = zext i1 %179 to i32
  %181 = call i32 @BUG_ON(i32 %180)
  %182 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %9, align 8
  %183 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %182, i32 0, i32 6
  %184 = load i32, i32* %183, align 4
  %185 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %9, align 8
  %186 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 4
  %188 = load i32, i32* %10, align 4
  %189 = call i32 (i32, i8*, i32, ...) @mlog(i32 0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %184, i32 %187, i32 %188)
  %190 = load %struct.ocfs2_super*, %struct.ocfs2_super** %8, align 8
  %191 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  %193 = load i32, i32* %10, align 4
  %194 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %9, align 8
  %195 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %194, i32 0, i32 7
  %196 = load i32, i32* %11, align 4
  %197 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %9, align 8
  %198 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %197, i32 0, i32 6
  %199 = load i32, i32* %198, align 4
  %200 = load i64, i64* @OCFS2_LOCK_ID_MAX_LEN, align 8
  %201 = sub nsw i64 %200, 1
  %202 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %9, align 8
  %203 = call i32 @ocfs2_dlm_lock(i32 %192, i32 %193, i32* %195, i32 %196, i32 %199, i64 %201, %struct.ocfs2_lock_res* %202)
  store i32 %203, i32* %18, align 4
  %204 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %9, align 8
  %205 = load i32, i32* %20, align 4
  %206 = load %struct.ocfs2_super*, %struct.ocfs2_super** %8, align 8
  %207 = call i32 @lockres_clear_pending(%struct.ocfs2_lock_res* %204, i32 %205, %struct.ocfs2_super* %206)
  %208 = load i32, i32* %18, align 4
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %227

210:                                              ; preds = %159
  %211 = load i32, i32* %11, align 4
  %212 = load i32, i32* @DLM_LKF_NOQUEUE, align 4
  %213 = and i32 %211, %212
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %220

215:                                              ; preds = %210
  %216 = load i32, i32* %18, align 4
  %217 = load i32, i32* @EAGAIN, align 4
  %218 = sub nsw i32 0, %217
  %219 = icmp ne i32 %216, %218
  br i1 %219, label %220, label %224

220:                                              ; preds = %215, %210
  %221 = load i32, i32* %18, align 4
  %222 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %9, align 8
  %223 = call i32 @ocfs2_log_dlm_error(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 %221, %struct.ocfs2_lock_res* %222)
  br label %224

224:                                              ; preds = %220, %215
  %225 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %9, align 8
  %226 = call i32 @ocfs2_recover_from_dlm_error(%struct.ocfs2_lock_res* %225, i32 1)
  br label %241

227:                                              ; preds = %159
  %228 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %9, align 8
  %229 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %228, i32 0, i32 6
  %230 = load i32, i32* %229, align 4
  %231 = call i32 (i32, i8*, i32, ...) @mlog(i32 0, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0), i32 %230)
  store i32 0, i32* %17, align 4
  br label %45

232:                                              ; preds = %104
  %233 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %9, align 8
  %234 = load i32, i32* %10, align 4
  %235 = call i32 @ocfs2_inc_holders(%struct.ocfs2_lock_res* %233, i32 %234)
  store i32 0, i32* %18, align 4
  br label %236

236:                                              ; preds = %232, %113, %100, %84
  %237 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %9, align 8
  %238 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %237, i32 0, i32 5
  %239 = load i64, i64* %19, align 8
  %240 = call i32 @spin_unlock_irqrestore(i32* %238, i64 %239)
  br label %241

241:                                              ; preds = %236, %224, %52
  %242 = load i32, i32* %16, align 4
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %266

244:                                              ; preds = %241
  %245 = load i32, i32* %12, align 4
  %246 = load i32, i32* @OCFS2_LOCK_NONBLOCK, align 4
  %247 = and i32 %245, %246
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %266

249:                                              ; preds = %244
  %250 = getelementptr inbounds %struct.ocfs2_mask_waiter, %struct.ocfs2_mask_waiter* %15, i32 0, i32 0
  %251 = load i32, i32* %250, align 4
  %252 = load i32, i32* @OCFS2_LOCK_BUSY, align 4
  %253 = load i32, i32* @OCFS2_LOCK_BLOCKED, align 4
  %254 = or i32 %252, %253
  %255 = and i32 %251, %254
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %266

257:                                              ; preds = %249
  store i32 0, i32* %16, align 4
  %258 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %9, align 8
  %259 = call i64 @lockres_remove_mask_waiter(%struct.ocfs2_lock_res* %258, %struct.ocfs2_mask_waiter* %15)
  %260 = icmp ne i64 %259, 0
  br i1 %260, label %261, label %264

261:                                              ; preds = %257
  %262 = load i32, i32* @EAGAIN, align 4
  %263 = sub nsw i32 0, %262
  store i32 %263, i32* %18, align 4
  br label %265

264:                                              ; preds = %257
  br label %45

265:                                              ; preds = %261
  br label %266

266:                                              ; preds = %265, %249, %244, %241
  %267 = load i32, i32* %16, align 4
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %269, label %277

269:                                              ; preds = %266
  %270 = call i32 @ocfs2_wait_for_mask(%struct.ocfs2_mask_waiter* %15)
  store i32 %270, i32* %18, align 4
  %271 = load i32, i32* %18, align 4
  %272 = icmp eq i32 %271, 0
  br i1 %272, label %273, label %274

273:                                              ; preds = %269
  br label %45

274:                                              ; preds = %269
  %275 = load i32, i32* %18, align 4
  %276 = call i32 @mlog_errno(i32 %275)
  br label %277

277:                                              ; preds = %274, %266
  %278 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %9, align 8
  %279 = load i32, i32* %10, align 4
  %280 = load i32, i32* %18, align 4
  %281 = call i32 @ocfs2_update_lock_stats(%struct.ocfs2_lock_res* %278, i32 %279, %struct.ocfs2_mask_waiter* %15, i32 %280)
  %282 = load i32, i32* %18, align 4
  %283 = call i32 @mlog_exit(i32 %282)
  %284 = load i32, i32* %18, align 4
  ret i32 %284
}

declare dso_local i32 @mlog_entry_void(...) #1

declare dso_local i32 @ocfs2_init_mask_waiter(%struct.ocfs2_mask_waiter*) #1

declare dso_local i64 @signal_pending(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @mlog_bug_on_msg(i32, i8*, i32, i32) #1

declare dso_local i32 @lockres_add_mask_waiter(%struct.ocfs2_lock_res*, %struct.ocfs2_mask_waiter*, i32, i32) #1

declare dso_local i32 @ocfs2_may_continue_on_blocked_lock(%struct.ocfs2_lock_res*, i32) #1

declare dso_local i32 @mlog(i32, i8*, i32, ...) #1

declare dso_local i32 @lockres_or_flags(%struct.ocfs2_lock_res*, i32) #1

declare dso_local i32 @lockres_set_pending(%struct.ocfs2_lock_res*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @ocfs2_dlm_lock(i32, i32, i32*, i32, i32, i64, %struct.ocfs2_lock_res*) #1

declare dso_local i32 @lockres_clear_pending(%struct.ocfs2_lock_res*, i32, %struct.ocfs2_super*) #1

declare dso_local i32 @ocfs2_log_dlm_error(i8*, i32, %struct.ocfs2_lock_res*) #1

declare dso_local i32 @ocfs2_recover_from_dlm_error(%struct.ocfs2_lock_res*, i32) #1

declare dso_local i32 @ocfs2_inc_holders(%struct.ocfs2_lock_res*, i32) #1

declare dso_local i64 @lockres_remove_mask_waiter(%struct.ocfs2_lock_res*, %struct.ocfs2_mask_waiter*) #1

declare dso_local i32 @ocfs2_wait_for_mask(%struct.ocfs2_mask_waiter*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_update_lock_stats(%struct.ocfs2_lock_res*, i32, %struct.ocfs2_mask_waiter*, i32) #1

declare dso_local i32 @mlog_exit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
