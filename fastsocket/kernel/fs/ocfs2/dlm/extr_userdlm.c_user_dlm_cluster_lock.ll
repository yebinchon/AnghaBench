; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/dlm/extr_userdlm.c_user_dlm_cluster_lock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/dlm/extr_userdlm.c_user_dlm_cluster_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.user_lock_res = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.dlm_ctxt = type { i32 }

@LKM_EXMODE = common dso_local global i32 0, align 4
@LKM_PRMODE = common dso_local global i32 0, align 4
@ML_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"lockres %.*s: invalid request!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [55 x i8] c"lockres %.*s: asking for %s lock, passed flags = 0x%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"LKM_EXMODE\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"LKM_PRMODE\00", align 1
@current = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@USER_LOCK_BUSY = common dso_local global i32 0, align 4
@USER_LOCK_BLOCKED = common dso_local global i32 0, align 4
@LKM_VALBLK = common dso_local global i32 0, align 4
@LKM_IVMODE = common dso_local global i32 0, align 4
@LKM_CONVERT = common dso_local global i32 0, align 4
@LKM_NLMODE = common dso_local global i32 0, align 4
@user_ast = common dso_local global i32 0, align 4
@user_bast = common dso_local global i32 0, align 4
@DLM_NORMAL = common dso_local global i32 0, align 4
@LKM_NOQUEUE = common dso_local global i32 0, align 4
@DLM_NOTQUEUED = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"dlmlock\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @user_dlm_cluster_lock(%struct.user_lock_res* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.user_lock_res*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.dlm_ctxt*, align 8
  store %struct.user_lock_res* %0, %struct.user_lock_res** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.user_lock_res*, %struct.user_lock_res** %4, align 8
  %11 = call %struct.dlm_ctxt* @dlm_ctxt_from_user_lockres(%struct.user_lock_res* %10)
  store %struct.dlm_ctxt* %11, %struct.dlm_ctxt** %9, align 8
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @LKM_EXMODE, align 4
  %14 = icmp ne i32 %12, %13
  br i1 %14, label %15, label %30

15:                                               ; preds = %3
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @LKM_PRMODE, align 4
  %18 = icmp ne i32 %16, %17
  br i1 %18, label %19, label %30

19:                                               ; preds = %15
  %20 = load i32, i32* @ML_ERROR, align 4
  %21 = load %struct.user_lock_res*, %struct.user_lock_res** %4, align 8
  %22 = getelementptr inbounds %struct.user_lock_res, %struct.user_lock_res* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.user_lock_res*, %struct.user_lock_res** %4, align 8
  %25 = getelementptr inbounds %struct.user_lock_res, %struct.user_lock_res* %24, i32 0, i32 5
  %26 = load i32, i32* %25, align 4
  %27 = call i32 (i32, i8*, i32, i32, ...) @mlog(i32 %20, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %26)
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %7, align 4
  br label %181

30:                                               ; preds = %15, %3
  %31 = load %struct.user_lock_res*, %struct.user_lock_res** %4, align 8
  %32 = getelementptr inbounds %struct.user_lock_res, %struct.user_lock_res* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.user_lock_res*, %struct.user_lock_res** %4, align 8
  %35 = getelementptr inbounds %struct.user_lock_res, %struct.user_lock_res* %34, i32 0, i32 5
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* @LKM_EXMODE, align 4
  %39 = icmp eq i32 %37, %38
  %40 = zext i1 %39 to i64
  %41 = select i1 %39, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0)
  %42 = load i32, i32* %6, align 4
  %43 = call i32 (i32, i8*, i32, i32, ...) @mlog(i32 0, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i32 %33, i32 %36, i8* %41, i32 %42)
  br label %44

44:                                               ; preds = %171, %85, %67, %30
  %45 = load i32, i32* @current, align 4
  %46 = call i64 @signal_pending(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %44
  %49 = load i32, i32* @ERESTARTSYS, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %7, align 4
  br label %181

51:                                               ; preds = %44
  %52 = load %struct.user_lock_res*, %struct.user_lock_res** %4, align 8
  %53 = getelementptr inbounds %struct.user_lock_res, %struct.user_lock_res* %52, i32 0, i32 3
  %54 = call i32 @spin_lock(i32* %53)
  %55 = load %struct.user_lock_res*, %struct.user_lock_res** %4, align 8
  %56 = getelementptr inbounds %struct.user_lock_res, %struct.user_lock_res* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @USER_LOCK_BUSY, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %73

61:                                               ; preds = %51
  %62 = load i32, i32* %5, align 4
  %63 = load %struct.user_lock_res*, %struct.user_lock_res** %4, align 8
  %64 = getelementptr inbounds %struct.user_lock_res, %struct.user_lock_res* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = icmp sgt i32 %62, %65
  br i1 %66, label %67, label %73

67:                                               ; preds = %61
  %68 = load %struct.user_lock_res*, %struct.user_lock_res** %4, align 8
  %69 = getelementptr inbounds %struct.user_lock_res, %struct.user_lock_res* %68, i32 0, i32 3
  %70 = call i32 @spin_unlock(i32* %69)
  %71 = load %struct.user_lock_res*, %struct.user_lock_res** %4, align 8
  %72 = call i32 @user_wait_on_busy_lock(%struct.user_lock_res* %71)
  br label %44

73:                                               ; preds = %61, %51
  %74 = load %struct.user_lock_res*, %struct.user_lock_res** %4, align 8
  %75 = getelementptr inbounds %struct.user_lock_res, %struct.user_lock_res* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @USER_LOCK_BLOCKED, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %91

80:                                               ; preds = %73
  %81 = load %struct.user_lock_res*, %struct.user_lock_res** %4, align 8
  %82 = load i32, i32* %5, align 4
  %83 = call i32 @user_may_continue_on_blocked_lock(%struct.user_lock_res* %81, i32 %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %91, label %85

85:                                               ; preds = %80
  %86 = load %struct.user_lock_res*, %struct.user_lock_res** %4, align 8
  %87 = getelementptr inbounds %struct.user_lock_res, %struct.user_lock_res* %86, i32 0, i32 3
  %88 = call i32 @spin_unlock(i32* %87)
  %89 = load %struct.user_lock_res*, %struct.user_lock_res** %4, align 8
  %90 = call i32 @user_wait_on_blocked_lock(%struct.user_lock_res* %89)
  br label %44

91:                                               ; preds = %80, %73
  %92 = load i32, i32* %5, align 4
  %93 = load %struct.user_lock_res*, %struct.user_lock_res** %4, align 8
  %94 = getelementptr inbounds %struct.user_lock_res, %struct.user_lock_res* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = icmp sgt i32 %92, %95
  br i1 %96, label %97, label %174

97:                                               ; preds = %91
  %98 = load i32, i32* %6, align 4
  %99 = load i32, i32* @LKM_VALBLK, align 4
  %100 = or i32 %98, %99
  store i32 %100, i32* %8, align 4
  %101 = load %struct.user_lock_res*, %struct.user_lock_res** %4, align 8
  %102 = getelementptr inbounds %struct.user_lock_res, %struct.user_lock_res* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @LKM_IVMODE, align 4
  %105 = icmp ne i32 %103, %104
  br i1 %105, label %106, label %110

106:                                              ; preds = %97
  %107 = load i32, i32* @LKM_CONVERT, align 4
  %108 = load i32, i32* %8, align 4
  %109 = or i32 %108, %107
  store i32 %109, i32* %8, align 4
  br label %110

110:                                              ; preds = %106, %97
  %111 = load i32, i32* %5, align 4
  %112 = load %struct.user_lock_res*, %struct.user_lock_res** %4, align 8
  %113 = getelementptr inbounds %struct.user_lock_res, %struct.user_lock_res* %112, i32 0, i32 2
  store i32 %111, i32* %113, align 4
  %114 = load i32, i32* @USER_LOCK_BUSY, align 4
  %115 = load %struct.user_lock_res*, %struct.user_lock_res** %4, align 8
  %116 = getelementptr inbounds %struct.user_lock_res, %struct.user_lock_res* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = or i32 %117, %114
  store i32 %118, i32* %116, align 4
  %119 = load %struct.user_lock_res*, %struct.user_lock_res** %4, align 8
  %120 = getelementptr inbounds %struct.user_lock_res, %struct.user_lock_res* %119, i32 0, i32 3
  %121 = call i32 @spin_unlock(i32* %120)
  %122 = load i32, i32* %5, align 4
  %123 = load i32, i32* @LKM_IVMODE, align 4
  %124 = icmp eq i32 %122, %123
  %125 = zext i1 %124 to i32
  %126 = call i32 @BUG_ON(i32 %125)
  %127 = load i32, i32* %5, align 4
  %128 = load i32, i32* @LKM_NLMODE, align 4
  %129 = icmp eq i32 %127, %128
  %130 = zext i1 %129 to i32
  %131 = call i32 @BUG_ON(i32 %130)
  %132 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %9, align 8
  %133 = load i32, i32* %5, align 4
  %134 = load %struct.user_lock_res*, %struct.user_lock_res** %4, align 8
  %135 = getelementptr inbounds %struct.user_lock_res, %struct.user_lock_res* %134, i32 0, i32 6
  %136 = load i32, i32* %8, align 4
  %137 = load %struct.user_lock_res*, %struct.user_lock_res** %4, align 8
  %138 = getelementptr inbounds %struct.user_lock_res, %struct.user_lock_res* %137, i32 0, i32 5
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.user_lock_res*, %struct.user_lock_res** %4, align 8
  %141 = getelementptr inbounds %struct.user_lock_res, %struct.user_lock_res* %140, i32 0, i32 4
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* @user_ast, align 4
  %144 = load %struct.user_lock_res*, %struct.user_lock_res** %4, align 8
  %145 = load i32, i32* @user_bast, align 4
  %146 = call i32 @dlmlock(%struct.dlm_ctxt* %132, i32 %133, i32* %135, i32 %136, i32 %139, i32 %142, i32 %143, %struct.user_lock_res* %144, i32 %145)
  store i32 %146, i32* %7, align 4
  %147 = load i32, i32* %7, align 4
  %148 = load i32, i32* @DLM_NORMAL, align 4
  %149 = icmp ne i32 %147, %148
  br i1 %149, label %150, label %171

150:                                              ; preds = %110
  %151 = load i32, i32* %6, align 4
  %152 = load i32, i32* @LKM_NOQUEUE, align 4
  %153 = and i32 %151, %152
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %162

155:                                              ; preds = %150
  %156 = load i32, i32* %7, align 4
  %157 = load i32, i32* @DLM_NOTQUEUED, align 4
  %158 = icmp eq i32 %156, %157
  br i1 %158, label %159, label %162

159:                                              ; preds = %155
  %160 = load i32, i32* @EAGAIN, align 4
  %161 = sub nsw i32 0, %160
  store i32 %161, i32* %7, align 4
  br label %168

162:                                              ; preds = %155, %150
  %163 = load i32, i32* %7, align 4
  %164 = load %struct.user_lock_res*, %struct.user_lock_res** %4, align 8
  %165 = call i32 @user_log_dlm_error(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 %163, %struct.user_lock_res* %164)
  %166 = load i32, i32* @EINVAL, align 4
  %167 = sub nsw i32 0, %166
  store i32 %167, i32* %7, align 4
  br label %168

168:                                              ; preds = %162, %159
  %169 = load %struct.user_lock_res*, %struct.user_lock_res** %4, align 8
  %170 = call i32 @user_recover_from_dlm_error(%struct.user_lock_res* %169)
  br label %181

171:                                              ; preds = %110
  %172 = load %struct.user_lock_res*, %struct.user_lock_res** %4, align 8
  %173 = call i32 @user_wait_on_busy_lock(%struct.user_lock_res* %172)
  br label %44

174:                                              ; preds = %91
  %175 = load %struct.user_lock_res*, %struct.user_lock_res** %4, align 8
  %176 = load i32, i32* %5, align 4
  %177 = call i32 @user_dlm_inc_holders(%struct.user_lock_res* %175, i32 %176)
  %178 = load %struct.user_lock_res*, %struct.user_lock_res** %4, align 8
  %179 = getelementptr inbounds %struct.user_lock_res, %struct.user_lock_res* %178, i32 0, i32 3
  %180 = call i32 @spin_unlock(i32* %179)
  store i32 0, i32* %7, align 4
  br label %181

181:                                              ; preds = %174, %168, %48, %19
  %182 = load i32, i32* %7, align 4
  ret i32 %182
}

declare dso_local %struct.dlm_ctxt* @dlm_ctxt_from_user_lockres(%struct.user_lock_res*) #1

declare dso_local i32 @mlog(i32, i8*, i32, i32, ...) #1

declare dso_local i64 @signal_pending(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @user_wait_on_busy_lock(%struct.user_lock_res*) #1

declare dso_local i32 @user_may_continue_on_blocked_lock(%struct.user_lock_res*, i32) #1

declare dso_local i32 @user_wait_on_blocked_lock(%struct.user_lock_res*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @dlmlock(%struct.dlm_ctxt*, i32, i32*, i32, i32, i32, i32, %struct.user_lock_res*, i32) #1

declare dso_local i32 @user_log_dlm_error(i8*, i32, %struct.user_lock_res*) #1

declare dso_local i32 @user_recover_from_dlm_error(%struct.user_lock_res*) #1

declare dso_local i32 @user_dlm_inc_holders(%struct.user_lock_res*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
