; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/dlm/extr_userdlm.c___user_dlm_cond_queue_lockres.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/dlm/extr_userdlm.c___user_dlm_cond_queue_lockres.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.user_lock_res = type { i32, i32, i32, i32 }

@USER_LOCK_BLOCKED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.user_lock_res*)* @__user_dlm_cond_queue_lockres to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__user_dlm_cond_queue_lockres(%struct.user_lock_res* %0) #0 {
  %2 = alloca %struct.user_lock_res*, align 8
  %3 = alloca i32, align 4
  store %struct.user_lock_res* %0, %struct.user_lock_res** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.user_lock_res*, %struct.user_lock_res** %2, align 8
  %5 = getelementptr inbounds %struct.user_lock_res, %struct.user_lock_res* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @USER_LOCK_BLOCKED, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %42

11:                                               ; preds = %1
  %12 = load %struct.user_lock_res*, %struct.user_lock_res** %2, align 8
  %13 = getelementptr inbounds %struct.user_lock_res, %struct.user_lock_res* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %34 [
    i32 129, label %15
    i32 128, label %27
  ]

15:                                               ; preds = %11
  %16 = load %struct.user_lock_res*, %struct.user_lock_res** %2, align 8
  %17 = getelementptr inbounds %struct.user_lock_res, %struct.user_lock_res* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %15
  %21 = load %struct.user_lock_res*, %struct.user_lock_res** %2, align 8
  %22 = getelementptr inbounds %struct.user_lock_res, %struct.user_lock_res* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %20
  store i32 1, i32* %3, align 4
  br label %26

26:                                               ; preds = %25, %20, %15
  br label %36

27:                                               ; preds = %11
  %28 = load %struct.user_lock_res*, %struct.user_lock_res** %2, align 8
  %29 = getelementptr inbounds %struct.user_lock_res, %struct.user_lock_res* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %27
  store i32 1, i32* %3, align 4
  br label %33

33:                                               ; preds = %32, %27
  br label %36

34:                                               ; preds = %11
  %35 = call i32 (...) @BUG()
  br label %36

36:                                               ; preds = %34, %33, %26
  %37 = load i32, i32* %3, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = load %struct.user_lock_res*, %struct.user_lock_res** %2, align 8
  %41 = call i32 @__user_dlm_queue_lockres(%struct.user_lock_res* %40)
  br label %42

42:                                               ; preds = %10, %39, %36
  ret void
}

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @__user_dlm_queue_lockres(%struct.user_lock_res*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
