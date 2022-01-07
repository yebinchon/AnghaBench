; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_dlmglue.c_ocfs2_drop_lock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_dlmglue.c_ocfs2_drop_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_super = type { i32 }
%struct.ocfs2_lock_res = type { i32, i32, i64, i64, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 (%struct.ocfs2_lock_res*)* }

@OCFS2_LOCK_INITIALIZED = common dso_local global i32 0, align 4
@LOCK_TYPE_USES_LVB = common dso_local global i32 0, align 4
@DLM_LKF_VALBLK = common dso_local global i32 0, align 4
@OCFS2_LOCK_FREEING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"lockres %s, flags 0x%lx\0A\00", align 1
@OCFS2_LOCK_BUSY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [73 x i8] c"waiting on busy lock \22%s\22: flags = %lx, action = %u, unlock_action = %u\0A\00", align 1
@OCFS2_LOCK_ATTACHED = common dso_local global i32 0, align 4
@DLM_LOCK_EX = common dso_local global i64 0, align 8
@OCFS2_LOCK_NEEDS_REFRESH = common dso_local global i32 0, align 4
@ML_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"destroying busy lock: \22%s\22\0A\00", align 1
@OCFS2_LOCK_BLOCKED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"destroying blocked lock: \22%s\22\0A\00", align 1
@OCFS2_AST_INVALID = common dso_local global i64 0, align 8
@OCFS2_UNLOCK_DROP_LOCK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [9 x i8] c"lock %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"ocfs2_dlm_unlock\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"lockres flags: %lu\0A\00", align 1
@.str.7 = private unnamed_addr constant [50 x i8] c"lock %s, successful return from ocfs2_dlm_unlock\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocfs2_super*, %struct.ocfs2_lock_res*)* @ocfs2_drop_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_drop_lock(%struct.ocfs2_super* %0, %struct.ocfs2_lock_res* %1) #0 {
  %3 = alloca %struct.ocfs2_super*, align 8
  %4 = alloca %struct.ocfs2_lock_res*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.ocfs2_super* %0, %struct.ocfs2_super** %3, align 8
  store %struct.ocfs2_lock_res* %1, %struct.ocfs2_lock_res** %4, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %4, align 8
  %9 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @OCFS2_LOCK_INITIALIZED, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  br label %209

15:                                               ; preds = %2
  %16 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %4, align 8
  %17 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %16, i32 0, i32 7
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @LOCK_TYPE_USES_LVB, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %15
  %25 = load i32, i32* @DLM_LKF_VALBLK, align 4
  %26 = load i32, i32* %7, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %7, align 4
  br label %28

28:                                               ; preds = %24, %15
  %29 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %4, align 8
  %30 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %29, i32 0, i32 5
  %31 = load i64, i64* %6, align 8
  %32 = call i32 @spin_lock_irqsave(i32* %30, i64 %31)
  %33 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %4, align 8
  %34 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @OCFS2_LOCK_FREEING, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  %39 = xor i1 %38, true
  %40 = zext i1 %39 to i32
  %41 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %4, align 8
  %42 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %4, align 8
  %45 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @mlog_bug_on_msg(i32 %40, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %43, i32 %46)
  br label %48

48:                                               ; preds = %55, %28
  %49 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %4, align 8
  %50 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @OCFS2_LOCK_BUSY, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %79

55:                                               ; preds = %48
  %56 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %4, align 8
  %57 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %4, align 8
  %60 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %4, align 8
  %63 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %4, align 8
  %66 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %65, i32 0, i32 6
  %67 = load i32, i32* %66, align 8
  %68 = call i32 (i32, i8*, i32, ...) @mlog(i32 0, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.1, i64 0, i64 0), i32 %58, i32 %61, i64 %64, i32 %67)
  %69 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %4, align 8
  %70 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %69, i32 0, i32 5
  %71 = load i64, i64* %6, align 8
  %72 = call i32 @spin_unlock_irqrestore(i32* %70, i64 %71)
  %73 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %4, align 8
  %74 = call i32 @ocfs2_wait_on_busy_lock(%struct.ocfs2_lock_res* %73)
  %75 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %4, align 8
  %76 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %75, i32 0, i32 5
  %77 = load i64, i64* %6, align 8
  %78 = call i32 @spin_lock_irqsave(i32* %76, i64 %77)
  br label %48

79:                                               ; preds = %48
  %80 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %4, align 8
  %81 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %80, i32 0, i32 7
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @LOCK_TYPE_USES_LVB, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %117

88:                                               ; preds = %79
  %89 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %4, align 8
  %90 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @OCFS2_LOCK_ATTACHED, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %116

95:                                               ; preds = %88
  %96 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %4, align 8
  %97 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %96, i32 0, i32 3
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @DLM_LOCK_EX, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %116

101:                                              ; preds = %95
  %102 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %4, align 8
  %103 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* @OCFS2_LOCK_NEEDS_REFRESH, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %116, label %108

108:                                              ; preds = %101
  %109 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %4, align 8
  %110 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %109, i32 0, i32 7
  %111 = load %struct.TYPE_2__*, %struct.TYPE_2__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 1
  %113 = load i32 (%struct.ocfs2_lock_res*)*, i32 (%struct.ocfs2_lock_res*)** %112, align 8
  %114 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %4, align 8
  %115 = call i32 %113(%struct.ocfs2_lock_res* %114)
  br label %116

116:                                              ; preds = %108, %101, %95, %88
  br label %117

117:                                              ; preds = %116, %79
  %118 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %4, align 8
  %119 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* @OCFS2_LOCK_BUSY, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %130

124:                                              ; preds = %117
  %125 = load i32, i32* @ML_ERROR, align 4
  %126 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %4, align 8
  %127 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = call i32 (i32, i8*, i32, ...) @mlog(i32 %125, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %128)
  br label %130

130:                                              ; preds = %124, %117
  %131 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %4, align 8
  %132 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = load i32, i32* @OCFS2_LOCK_BLOCKED, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %142

137:                                              ; preds = %130
  %138 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %4, align 8
  %139 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = call i32 (i32, i8*, i32, ...) @mlog(i32 0, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %140)
  br label %142

142:                                              ; preds = %137, %130
  %143 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %4, align 8
  %144 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = load i32, i32* @OCFS2_LOCK_ATTACHED, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %154, label %149

149:                                              ; preds = %142
  %150 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %4, align 8
  %151 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %150, i32 0, i32 5
  %152 = load i64, i64* %6, align 8
  %153 = call i32 @spin_unlock_irqrestore(i32* %151, i64 %152)
  br label %209

154:                                              ; preds = %142
  %155 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %4, align 8
  %156 = load i32, i32* @OCFS2_LOCK_ATTACHED, align 4
  %157 = call i32 @lockres_clear_flags(%struct.ocfs2_lock_res* %155, i32 %156)
  %158 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %4, align 8
  %159 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %158, i32 0, i32 2
  %160 = load i64, i64* %159, align 8
  %161 = load i64, i64* @OCFS2_AST_INVALID, align 8
  %162 = icmp ne i64 %160, %161
  %163 = zext i1 %162 to i32
  %164 = call i32 @BUG_ON(i32 %163)
  %165 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %4, align 8
  %166 = load i32, i32* @OCFS2_LOCK_BUSY, align 4
  %167 = call i32 @lockres_or_flags(%struct.ocfs2_lock_res* %165, i32 %166)
  %168 = load i32, i32* @OCFS2_UNLOCK_DROP_LOCK, align 4
  %169 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %4, align 8
  %170 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %169, i32 0, i32 6
  store i32 %168, i32* %170, align 8
  %171 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %4, align 8
  %172 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %171, i32 0, i32 5
  %173 = load i64, i64* %6, align 8
  %174 = call i32 @spin_unlock_irqrestore(i32* %172, i64 %173)
  %175 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %4, align 8
  %176 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = call i32 (i32, i8*, i32, ...) @mlog(i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 %177)
  %179 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %180 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %4, align 8
  %183 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %182, i32 0, i32 4
  %184 = load i32, i32* %7, align 4
  %185 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %4, align 8
  %186 = call i32 @ocfs2_dlm_unlock(i32 %181, i32* %183, i32 %184, %struct.ocfs2_lock_res* %185)
  store i32 %186, i32* %5, align 4
  %187 = load i32, i32* %5, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %202

189:                                              ; preds = %154
  %190 = load i32, i32* %5, align 4
  %191 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %4, align 8
  %192 = call i32 @ocfs2_log_dlm_error(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i32 %190, %struct.ocfs2_lock_res* %191)
  %193 = load i32, i32* @ML_ERROR, align 4
  %194 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %4, align 8
  %195 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = call i32 (i32, i8*, i32, ...) @mlog(i32 %193, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i32 %196)
  %198 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %4, align 8
  %199 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %198, i32 0, i32 4
  %200 = call i32 @ocfs2_dlm_dump_lksb(i32* %199)
  %201 = call i32 (...) @BUG()
  br label %202

202:                                              ; preds = %189, %154
  %203 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %4, align 8
  %204 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 4
  %206 = call i32 (i32, i8*, i32, ...) @mlog(i32 0, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.7, i64 0, i64 0), i32 %205)
  %207 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %4, align 8
  %208 = call i32 @ocfs2_wait_on_busy_lock(%struct.ocfs2_lock_res* %207)
  br label %209

209:                                              ; preds = %202, %149, %14
  %210 = call i32 @mlog_exit(i32 0)
  ret i32 0
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @mlog_bug_on_msg(i32, i8*, i32, i32) #1

declare dso_local i32 @mlog(i32, i8*, i32, ...) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @ocfs2_wait_on_busy_lock(%struct.ocfs2_lock_res*) #1

declare dso_local i32 @lockres_clear_flags(%struct.ocfs2_lock_res*, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @lockres_or_flags(%struct.ocfs2_lock_res*, i32) #1

declare dso_local i32 @ocfs2_dlm_unlock(i32, i32*, i32, %struct.ocfs2_lock_res*) #1

declare dso_local i32 @ocfs2_log_dlm_error(i8*, i32, %struct.ocfs2_lock_res*) #1

declare dso_local i32 @ocfs2_dlm_dump_lksb(i32*) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @mlog_exit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
