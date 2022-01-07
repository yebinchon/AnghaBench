; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/dlm/extr_userdlm.c_user_bast.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/dlm/extr_userdlm.c_user_bast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.user_lock_res = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [56 x i8] c"Blocking AST fired for lockres %.*s. Blocking level %d\0A\00", align 1
@USER_LOCK_BLOCKED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @user_bast to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @user_bast(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.user_lock_res*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.user_lock_res*
  store %struct.user_lock_res* %7, %struct.user_lock_res** %5, align 8
  %8 = load %struct.user_lock_res*, %struct.user_lock_res** %5, align 8
  %9 = getelementptr inbounds %struct.user_lock_res, %struct.user_lock_res* %8, i32 0, i32 5
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.user_lock_res*, %struct.user_lock_res** %5, align 8
  %12 = getelementptr inbounds %struct.user_lock_res, %struct.user_lock_res* %11, i32 0, i32 4
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @mlog(i32 0, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %10, i32 %13, i32 %14)
  %16 = load %struct.user_lock_res*, %struct.user_lock_res** %5, align 8
  %17 = getelementptr inbounds %struct.user_lock_res, %struct.user_lock_res* %16, i32 0, i32 2
  %18 = call i32 @spin_lock(i32* %17)
  %19 = load i32, i32* @USER_LOCK_BLOCKED, align 4
  %20 = load %struct.user_lock_res*, %struct.user_lock_res** %5, align 8
  %21 = getelementptr inbounds %struct.user_lock_res, %struct.user_lock_res* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = or i32 %22, %19
  store i32 %23, i32* %21, align 4
  %24 = load i32, i32* %4, align 4
  %25 = load %struct.user_lock_res*, %struct.user_lock_res** %5, align 8
  %26 = getelementptr inbounds %struct.user_lock_res, %struct.user_lock_res* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp sgt i32 %24, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %2
  %30 = load i32, i32* %4, align 4
  %31 = load %struct.user_lock_res*, %struct.user_lock_res** %5, align 8
  %32 = getelementptr inbounds %struct.user_lock_res, %struct.user_lock_res* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  br label %33

33:                                               ; preds = %29, %2
  %34 = load %struct.user_lock_res*, %struct.user_lock_res** %5, align 8
  %35 = call i32 @__user_dlm_queue_lockres(%struct.user_lock_res* %34)
  %36 = load %struct.user_lock_res*, %struct.user_lock_res** %5, align 8
  %37 = getelementptr inbounds %struct.user_lock_res, %struct.user_lock_res* %36, i32 0, i32 2
  %38 = call i32 @spin_unlock(i32* %37)
  %39 = load %struct.user_lock_res*, %struct.user_lock_res** %5, align 8
  %40 = getelementptr inbounds %struct.user_lock_res, %struct.user_lock_res* %39, i32 0, i32 1
  %41 = call i32 @wake_up(i32* %40)
  ret void
}

declare dso_local i32 @mlog(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @__user_dlm_queue_lockres(%struct.user_lock_res*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
