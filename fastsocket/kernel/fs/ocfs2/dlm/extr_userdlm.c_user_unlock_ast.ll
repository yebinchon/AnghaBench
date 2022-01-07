; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/dlm/extr_userdlm.c_user_unlock_ast.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/dlm/extr_userdlm.c_user_unlock_ast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.user_lock_res = type { i32, i32, i32, i8*, i8*, i32, i32 }

@.str = private unnamed_addr constant [32 x i8] c"UNLOCK AST called on lock %.*s\0A\00", align 1
@DLM_NORMAL = common dso_local global i32 0, align 4
@DLM_CANCELGRANT = common dso_local global i32 0, align 4
@ML_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Dlm returns status %d\0A\00", align 1
@USER_LOCK_IN_TEARDOWN = common dso_local global i32 0, align 4
@USER_LOCK_IN_CANCEL = common dso_local global i32 0, align 4
@LKM_IVMODE = common dso_local global i8* null, align 8
@USER_LOCK_BLOCKED = common dso_local global i32 0, align 4
@USER_LOCK_BUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @user_unlock_ast to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @user_unlock_ast(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.user_lock_res*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.user_lock_res*
  store %struct.user_lock_res* %7, %struct.user_lock_res** %5, align 8
  %8 = load %struct.user_lock_res*, %struct.user_lock_res** %5, align 8
  %9 = getelementptr inbounds %struct.user_lock_res, %struct.user_lock_res* %8, i32 0, i32 6
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.user_lock_res*, %struct.user_lock_res** %5, align 8
  %12 = getelementptr inbounds %struct.user_lock_res, %struct.user_lock_res* %11, i32 0, i32 5
  %13 = load i32, i32* %12, align 8
  %14 = call i32 (i32, i8*, i32, ...) @mlog(i32 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %10, i32 %13)
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @DLM_NORMAL, align 4
  %17 = icmp ne i32 %15, %16
  br i1 %17, label %18, label %26

18:                                               ; preds = %2
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @DLM_CANCELGRANT, align 4
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %18
  %23 = load i32, i32* @ML_ERROR, align 4
  %24 = load i32, i32* %4, align 4
  %25 = call i32 (i32, i8*, i32, ...) @mlog(i32 %23, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %24)
  br label %26

26:                                               ; preds = %22, %18, %2
  %27 = load %struct.user_lock_res*, %struct.user_lock_res** %5, align 8
  %28 = getelementptr inbounds %struct.user_lock_res, %struct.user_lock_res* %27, i32 0, i32 2
  %29 = call i32 @spin_lock(i32* %28)
  %30 = load %struct.user_lock_res*, %struct.user_lock_res** %5, align 8
  %31 = getelementptr inbounds %struct.user_lock_res, %struct.user_lock_res* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @USER_LOCK_IN_TEARDOWN, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %47

36:                                               ; preds = %26
  %37 = load %struct.user_lock_res*, %struct.user_lock_res** %5, align 8
  %38 = getelementptr inbounds %struct.user_lock_res, %struct.user_lock_res* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @USER_LOCK_IN_CANCEL, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %36
  %44 = load i8*, i8** @LKM_IVMODE, align 8
  %45 = load %struct.user_lock_res*, %struct.user_lock_res** %5, align 8
  %46 = getelementptr inbounds %struct.user_lock_res, %struct.user_lock_res* %45, i32 0, i32 4
  store i8* %44, i8** %46, align 8
  br label %97

47:                                               ; preds = %36, %26
  %48 = load i32, i32* %4, align 4
  %49 = load i32, i32* @DLM_CANCELGRANT, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %67

51:                                               ; preds = %47
  %52 = load %struct.user_lock_res*, %struct.user_lock_res** %5, align 8
  %53 = getelementptr inbounds %struct.user_lock_res, %struct.user_lock_res* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @USER_LOCK_IN_CANCEL, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  %58 = xor i1 %57, true
  %59 = zext i1 %58 to i32
  %60 = call i32 @BUG_ON(i32 %59)
  %61 = load i32, i32* @USER_LOCK_IN_CANCEL, align 4
  %62 = xor i32 %61, -1
  %63 = load %struct.user_lock_res*, %struct.user_lock_res** %5, align 8
  %64 = getelementptr inbounds %struct.user_lock_res, %struct.user_lock_res* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = and i32 %65, %62
  store i32 %66, i32* %64, align 8
  br label %104

67:                                               ; preds = %47
  %68 = load %struct.user_lock_res*, %struct.user_lock_res** %5, align 8
  %69 = getelementptr inbounds %struct.user_lock_res, %struct.user_lock_res* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @USER_LOCK_IN_CANCEL, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  %74 = xor i1 %73, true
  %75 = zext i1 %74 to i32
  %76 = call i32 @BUG_ON(i32 %75)
  %77 = load i8*, i8** @LKM_IVMODE, align 8
  %78 = load %struct.user_lock_res*, %struct.user_lock_res** %5, align 8
  %79 = getelementptr inbounds %struct.user_lock_res, %struct.user_lock_res* %78, i32 0, i32 3
  store i8* %77, i8** %79, align 8
  %80 = load i32, i32* @USER_LOCK_IN_CANCEL, align 4
  %81 = xor i32 %80, -1
  %82 = load %struct.user_lock_res*, %struct.user_lock_res** %5, align 8
  %83 = getelementptr inbounds %struct.user_lock_res, %struct.user_lock_res* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = and i32 %84, %81
  store i32 %85, i32* %83, align 8
  %86 = load %struct.user_lock_res*, %struct.user_lock_res** %5, align 8
  %87 = getelementptr inbounds %struct.user_lock_res, %struct.user_lock_res* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @USER_LOCK_BLOCKED, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %67
  %93 = load %struct.user_lock_res*, %struct.user_lock_res** %5, align 8
  %94 = call i32 @__user_dlm_queue_lockres(%struct.user_lock_res* %93)
  br label %95

95:                                               ; preds = %92, %67
  br label %96

96:                                               ; preds = %95
  br label %97

97:                                               ; preds = %96, %43
  %98 = load i32, i32* @USER_LOCK_BUSY, align 4
  %99 = xor i32 %98, -1
  %100 = load %struct.user_lock_res*, %struct.user_lock_res** %5, align 8
  %101 = getelementptr inbounds %struct.user_lock_res, %struct.user_lock_res* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = and i32 %102, %99
  store i32 %103, i32* %101, align 8
  br label %104

104:                                              ; preds = %97, %51
  %105 = load %struct.user_lock_res*, %struct.user_lock_res** %5, align 8
  %106 = getelementptr inbounds %struct.user_lock_res, %struct.user_lock_res* %105, i32 0, i32 2
  %107 = call i32 @spin_unlock(i32* %106)
  %108 = load %struct.user_lock_res*, %struct.user_lock_res** %5, align 8
  %109 = getelementptr inbounds %struct.user_lock_res, %struct.user_lock_res* %108, i32 0, i32 1
  %110 = call i32 @wake_up(i32* %109)
  ret void
}

declare dso_local i32 @mlog(i32, i8*, i32, ...) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @__user_dlm_queue_lockres(%struct.user_lock_res*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
