; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/dlm/extr_userdlm.c_user_dlm_destroy_lock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/dlm/extr_userdlm.c_user_dlm_destroy_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.user_lock_res = type { i32, i32, i32, i64, i64, i32, i32 }
%struct.dlm_ctxt = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"asked to destroy %.*s\0A\00", align 1
@USER_LOCK_IN_TEARDOWN = common dso_local global i32 0, align 4
@USER_LOCK_BUSY = common dso_local global i32 0, align 4
@USER_LOCK_ATTACHED = common dso_local global i32 0, align 4
@LKM_VALBLK = common dso_local global i32 0, align 4
@user_unlock_ast = common dso_local global i32 0, align 4
@DLM_NORMAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"dlmunlock\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @user_dlm_destroy_lock(%struct.user_lock_res* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.user_lock_res*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dlm_ctxt*, align 8
  store %struct.user_lock_res* %0, %struct.user_lock_res** %3, align 8
  %6 = load i32, i32* @EBUSY, align 4
  %7 = sub nsw i32 0, %6
  store i32 %7, i32* %4, align 4
  %8 = load %struct.user_lock_res*, %struct.user_lock_res** %3, align 8
  %9 = call %struct.dlm_ctxt* @dlm_ctxt_from_user_lockres(%struct.user_lock_res* %8)
  store %struct.dlm_ctxt* %9, %struct.dlm_ctxt** %5, align 8
  %10 = load %struct.user_lock_res*, %struct.user_lock_res** %3, align 8
  %11 = getelementptr inbounds %struct.user_lock_res, %struct.user_lock_res* %10, i32 0, i32 6
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.user_lock_res*, %struct.user_lock_res** %3, align 8
  %14 = getelementptr inbounds %struct.user_lock_res, %struct.user_lock_res* %13, i32 0, i32 5
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @mlog(i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %12, i32 %15)
  %17 = load %struct.user_lock_res*, %struct.user_lock_res** %3, align 8
  %18 = getelementptr inbounds %struct.user_lock_res, %struct.user_lock_res* %17, i32 0, i32 2
  %19 = call i32 @spin_lock(i32* %18)
  %20 = load %struct.user_lock_res*, %struct.user_lock_res** %3, align 8
  %21 = getelementptr inbounds %struct.user_lock_res, %struct.user_lock_res* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @USER_LOCK_IN_TEARDOWN, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %1
  %27 = load %struct.user_lock_res*, %struct.user_lock_res** %3, align 8
  %28 = getelementptr inbounds %struct.user_lock_res, %struct.user_lock_res* %27, i32 0, i32 2
  %29 = call i32 @spin_unlock(i32* %28)
  store i32 0, i32* %2, align 4
  br label %113

30:                                               ; preds = %1
  %31 = load i32, i32* @USER_LOCK_IN_TEARDOWN, align 4
  %32 = load %struct.user_lock_res*, %struct.user_lock_res** %3, align 8
  %33 = getelementptr inbounds %struct.user_lock_res, %struct.user_lock_res* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = or i32 %34, %31
  store i32 %35, i32* %33, align 8
  br label %36

36:                                               ; preds = %43, %30
  %37 = load %struct.user_lock_res*, %struct.user_lock_res** %3, align 8
  %38 = getelementptr inbounds %struct.user_lock_res, %struct.user_lock_res* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @USER_LOCK_BUSY, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %36
  %44 = load %struct.user_lock_res*, %struct.user_lock_res** %3, align 8
  %45 = getelementptr inbounds %struct.user_lock_res, %struct.user_lock_res* %44, i32 0, i32 2
  %46 = call i32 @spin_unlock(i32* %45)
  %47 = load %struct.user_lock_res*, %struct.user_lock_res** %3, align 8
  %48 = call i32 @user_wait_on_busy_lock(%struct.user_lock_res* %47)
  %49 = load %struct.user_lock_res*, %struct.user_lock_res** %3, align 8
  %50 = getelementptr inbounds %struct.user_lock_res, %struct.user_lock_res* %49, i32 0, i32 2
  %51 = call i32 @spin_lock(i32* %50)
  br label %36

52:                                               ; preds = %36
  %53 = load %struct.user_lock_res*, %struct.user_lock_res** %3, align 8
  %54 = getelementptr inbounds %struct.user_lock_res, %struct.user_lock_res* %53, i32 0, i32 4
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %62, label %57

57:                                               ; preds = %52
  %58 = load %struct.user_lock_res*, %struct.user_lock_res** %3, align 8
  %59 = getelementptr inbounds %struct.user_lock_res, %struct.user_lock_res* %58, i32 0, i32 3
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %57, %52
  %63 = load %struct.user_lock_res*, %struct.user_lock_res** %3, align 8
  %64 = getelementptr inbounds %struct.user_lock_res, %struct.user_lock_res* %63, i32 0, i32 2
  %65 = call i32 @spin_unlock(i32* %64)
  br label %111

66:                                               ; preds = %57
  store i32 0, i32* %4, align 4
  %67 = load %struct.user_lock_res*, %struct.user_lock_res** %3, align 8
  %68 = getelementptr inbounds %struct.user_lock_res, %struct.user_lock_res* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @USER_LOCK_ATTACHED, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %77, label %73

73:                                               ; preds = %66
  %74 = load %struct.user_lock_res*, %struct.user_lock_res** %3, align 8
  %75 = getelementptr inbounds %struct.user_lock_res, %struct.user_lock_res* %74, i32 0, i32 2
  %76 = call i32 @spin_unlock(i32* %75)
  br label %111

77:                                               ; preds = %66
  %78 = load i32, i32* @USER_LOCK_ATTACHED, align 4
  %79 = xor i32 %78, -1
  %80 = load %struct.user_lock_res*, %struct.user_lock_res** %3, align 8
  %81 = getelementptr inbounds %struct.user_lock_res, %struct.user_lock_res* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = and i32 %82, %79
  store i32 %83, i32* %81, align 8
  %84 = load i32, i32* @USER_LOCK_BUSY, align 4
  %85 = load %struct.user_lock_res*, %struct.user_lock_res** %3, align 8
  %86 = getelementptr inbounds %struct.user_lock_res, %struct.user_lock_res* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = or i32 %87, %84
  store i32 %88, i32* %86, align 8
  %89 = load %struct.user_lock_res*, %struct.user_lock_res** %3, align 8
  %90 = getelementptr inbounds %struct.user_lock_res, %struct.user_lock_res* %89, i32 0, i32 2
  %91 = call i32 @spin_unlock(i32* %90)
  %92 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %5, align 8
  %93 = load %struct.user_lock_res*, %struct.user_lock_res** %3, align 8
  %94 = getelementptr inbounds %struct.user_lock_res, %struct.user_lock_res* %93, i32 0, i32 1
  %95 = load i32, i32* @LKM_VALBLK, align 4
  %96 = load i32, i32* @user_unlock_ast, align 4
  %97 = load %struct.user_lock_res*, %struct.user_lock_res** %3, align 8
  %98 = call i32 @dlmunlock(%struct.dlm_ctxt* %92, i32* %94, i32 %95, i32 %96, %struct.user_lock_res* %97)
  store i32 %98, i32* %4, align 4
  %99 = load i32, i32* %4, align 4
  %100 = load i32, i32* @DLM_NORMAL, align 4
  %101 = icmp ne i32 %99, %100
  br i1 %101, label %102, label %108

102:                                              ; preds = %77
  %103 = load i32, i32* %4, align 4
  %104 = load %struct.user_lock_res*, %struct.user_lock_res** %3, align 8
  %105 = call i32 @user_log_dlm_error(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %103, %struct.user_lock_res* %104)
  %106 = load i32, i32* @EINVAL, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %4, align 4
  br label %111

108:                                              ; preds = %77
  %109 = load %struct.user_lock_res*, %struct.user_lock_res** %3, align 8
  %110 = call i32 @user_wait_on_busy_lock(%struct.user_lock_res* %109)
  store i32 0, i32* %4, align 4
  br label %111

111:                                              ; preds = %108, %102, %73, %62
  %112 = load i32, i32* %4, align 4
  store i32 %112, i32* %2, align 4
  br label %113

113:                                              ; preds = %111, %26
  %114 = load i32, i32* %2, align 4
  ret i32 %114
}

declare dso_local %struct.dlm_ctxt* @dlm_ctxt_from_user_lockres(%struct.user_lock_res*) #1

declare dso_local i32 @mlog(i32, i8*, i32, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @user_wait_on_busy_lock(%struct.user_lock_res*) #1

declare dso_local i32 @dlmunlock(%struct.dlm_ctxt*, i32*, i32, i32, %struct.user_lock_res*) #1

declare dso_local i32 @user_log_dlm_error(i8*, i32, %struct.user_lock_res*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
