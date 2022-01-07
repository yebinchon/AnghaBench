; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/dlm/extr_userdlm.c_user_ast.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/dlm/extr_userdlm.c_user_ast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.user_lock_res = type { i64, i64, i32, i32, i32, i32, i32, i32, %struct.dlm_lockstatus }
%struct.dlm_lockstatus = type { i64 }

@.str = private unnamed_addr constant [28 x i8] c"AST fired for lockres %.*s\0A\00", align 1
@DLM_NORMAL = common dso_local global i64 0, align 8
@ML_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"lksb status value of %u on lockres %.*s\0A\00", align 1
@LKM_IVMODE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [44 x i8] c"Lockres %.*s, requested ivmode. flags 0x%x\0A\00", align 1
@LKM_NLMODE = common dso_local global i32 0, align 4
@USER_LOCK_BLOCKED = common dso_local global i32 0, align 4
@USER_LOCK_ATTACHED = common dso_local global i32 0, align 4
@USER_LOCK_BUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @user_ast to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @user_ast(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.user_lock_res*, align 8
  %4 = alloca %struct.dlm_lockstatus*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.user_lock_res*
  store %struct.user_lock_res* %6, %struct.user_lock_res** %3, align 8
  %7 = load %struct.user_lock_res*, %struct.user_lock_res** %3, align 8
  %8 = getelementptr inbounds %struct.user_lock_res, %struct.user_lock_res* %7, i32 0, i32 7
  %9 = load i32, i32* %8, align 4
  %10 = sext i32 %9 to i64
  %11 = load %struct.user_lock_res*, %struct.user_lock_res** %3, align 8
  %12 = getelementptr inbounds %struct.user_lock_res, %struct.user_lock_res* %11, i32 0, i32 6
  %13 = load i32, i32* %12, align 8
  %14 = call i32 (i32, i8*, i64, i32, ...) @mlog(i32 0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i64 %10, i32 %13)
  %15 = load %struct.user_lock_res*, %struct.user_lock_res** %3, align 8
  %16 = getelementptr inbounds %struct.user_lock_res, %struct.user_lock_res* %15, i32 0, i32 3
  %17 = call i32 @spin_lock(i32* %16)
  %18 = load %struct.user_lock_res*, %struct.user_lock_res** %3, align 8
  %19 = getelementptr inbounds %struct.user_lock_res, %struct.user_lock_res* %18, i32 0, i32 8
  store %struct.dlm_lockstatus* %19, %struct.dlm_lockstatus** %4, align 8
  %20 = load %struct.dlm_lockstatus*, %struct.dlm_lockstatus** %4, align 8
  %21 = getelementptr inbounds %struct.dlm_lockstatus, %struct.dlm_lockstatus* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @DLM_NORMAL, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %40

25:                                               ; preds = %1
  %26 = load i32, i32* @ML_ERROR, align 4
  %27 = load %struct.dlm_lockstatus*, %struct.dlm_lockstatus** %4, align 8
  %28 = getelementptr inbounds %struct.dlm_lockstatus, %struct.dlm_lockstatus* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.user_lock_res*, %struct.user_lock_res** %3, align 8
  %31 = getelementptr inbounds %struct.user_lock_res, %struct.user_lock_res* %30, i32 0, i32 7
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.user_lock_res*, %struct.user_lock_res** %3, align 8
  %34 = getelementptr inbounds %struct.user_lock_res, %struct.user_lock_res* %33, i32 0, i32 6
  %35 = load i32, i32* %34, align 8
  %36 = call i32 (i32, i8*, i64, i32, ...) @mlog(i32 %26, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i64 %29, i32 %32, i32 %35)
  %37 = load %struct.user_lock_res*, %struct.user_lock_res** %3, align 8
  %38 = getelementptr inbounds %struct.user_lock_res, %struct.user_lock_res* %37, i32 0, i32 3
  %39 = call i32 @spin_unlock(i32* %38)
  br label %110

40:                                               ; preds = %1
  %41 = load %struct.user_lock_res*, %struct.user_lock_res** %3, align 8
  %42 = getelementptr inbounds %struct.user_lock_res, %struct.user_lock_res* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @LKM_IVMODE, align 8
  %45 = icmp eq i64 %43, %44
  %46 = zext i1 %45 to i32
  %47 = load %struct.user_lock_res*, %struct.user_lock_res** %3, align 8
  %48 = getelementptr inbounds %struct.user_lock_res, %struct.user_lock_res* %47, i32 0, i32 7
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.user_lock_res*, %struct.user_lock_res** %3, align 8
  %51 = getelementptr inbounds %struct.user_lock_res, %struct.user_lock_res* %50, i32 0, i32 6
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.user_lock_res*, %struct.user_lock_res** %3, align 8
  %54 = getelementptr inbounds %struct.user_lock_res, %struct.user_lock_res* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @mlog_bug_on_msg(i32 %46, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %49, i32 %52, i32 %55)
  %57 = load %struct.user_lock_res*, %struct.user_lock_res** %3, align 8
  %58 = getelementptr inbounds %struct.user_lock_res, %struct.user_lock_res* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.user_lock_res*, %struct.user_lock_res** %3, align 8
  %61 = getelementptr inbounds %struct.user_lock_res, %struct.user_lock_res* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = icmp slt i64 %59, %62
  br i1 %63, label %64, label %84

64:                                               ; preds = %40
  %65 = load %struct.user_lock_res*, %struct.user_lock_res** %3, align 8
  %66 = getelementptr inbounds %struct.user_lock_res, %struct.user_lock_res* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.user_lock_res*, %struct.user_lock_res** %3, align 8
  %69 = getelementptr inbounds %struct.user_lock_res, %struct.user_lock_res* %68, i32 0, i32 5
  %70 = load i32, i32* %69, align 4
  %71 = call i64 @user_highest_compat_lock_level(i32 %70)
  %72 = icmp sle i64 %67, %71
  br i1 %72, label %73, label %83

73:                                               ; preds = %64
  %74 = load i32, i32* @LKM_NLMODE, align 4
  %75 = load %struct.user_lock_res*, %struct.user_lock_res** %3, align 8
  %76 = getelementptr inbounds %struct.user_lock_res, %struct.user_lock_res* %75, i32 0, i32 5
  store i32 %74, i32* %76, align 4
  %77 = load i32, i32* @USER_LOCK_BLOCKED, align 4
  %78 = xor i32 %77, -1
  %79 = load %struct.user_lock_res*, %struct.user_lock_res** %3, align 8
  %80 = getelementptr inbounds %struct.user_lock_res, %struct.user_lock_res* %79, i32 0, i32 4
  %81 = load i32, i32* %80, align 8
  %82 = and i32 %81, %78
  store i32 %82, i32* %80, align 8
  br label %83

83:                                               ; preds = %73, %64
  br label %84

84:                                               ; preds = %83, %40
  %85 = load %struct.user_lock_res*, %struct.user_lock_res** %3, align 8
  %86 = getelementptr inbounds %struct.user_lock_res, %struct.user_lock_res* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.user_lock_res*, %struct.user_lock_res** %3, align 8
  %89 = getelementptr inbounds %struct.user_lock_res, %struct.user_lock_res* %88, i32 0, i32 1
  store i64 %87, i64* %89, align 8
  %90 = load i64, i64* @LKM_IVMODE, align 8
  %91 = load %struct.user_lock_res*, %struct.user_lock_res** %3, align 8
  %92 = getelementptr inbounds %struct.user_lock_res, %struct.user_lock_res* %91, i32 0, i32 0
  store i64 %90, i64* %92, align 8
  %93 = load i32, i32* @USER_LOCK_ATTACHED, align 4
  %94 = load %struct.user_lock_res*, %struct.user_lock_res** %3, align 8
  %95 = getelementptr inbounds %struct.user_lock_res, %struct.user_lock_res* %94, i32 0, i32 4
  %96 = load i32, i32* %95, align 8
  %97 = or i32 %96, %93
  store i32 %97, i32* %95, align 8
  %98 = load i32, i32* @USER_LOCK_BUSY, align 4
  %99 = xor i32 %98, -1
  %100 = load %struct.user_lock_res*, %struct.user_lock_res** %3, align 8
  %101 = getelementptr inbounds %struct.user_lock_res, %struct.user_lock_res* %100, i32 0, i32 4
  %102 = load i32, i32* %101, align 8
  %103 = and i32 %102, %99
  store i32 %103, i32* %101, align 8
  %104 = load %struct.user_lock_res*, %struct.user_lock_res** %3, align 8
  %105 = getelementptr inbounds %struct.user_lock_res, %struct.user_lock_res* %104, i32 0, i32 3
  %106 = call i32 @spin_unlock(i32* %105)
  %107 = load %struct.user_lock_res*, %struct.user_lock_res** %3, align 8
  %108 = getelementptr inbounds %struct.user_lock_res, %struct.user_lock_res* %107, i32 0, i32 2
  %109 = call i32 @wake_up(i32* %108)
  br label %110

110:                                              ; preds = %84, %25
  ret void
}

declare dso_local i32 @mlog(i32, i8*, i64, i32, ...) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @mlog_bug_on_msg(i32, i8*, i32, i32, i32) #1

declare dso_local i64 @user_highest_compat_lock_level(i32) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
