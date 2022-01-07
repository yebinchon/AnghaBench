; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/dlm/extr_userdlm.c_user_dlm_inc_holders.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/dlm/extr_userdlm.c_user_dlm_inc_holders.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.user_lock_res = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.user_lock_res*, i32)* @user_dlm_inc_holders to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @user_dlm_inc_holders(%struct.user_lock_res* %0, i32 %1) #0 {
  %3 = alloca %struct.user_lock_res*, align 8
  %4 = alloca i32, align 4
  store %struct.user_lock_res* %0, %struct.user_lock_res** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  switch i32 %5, label %16 [
    i32 129, label %6
    i32 128, label %11
  ]

6:                                                ; preds = %2
  %7 = load %struct.user_lock_res*, %struct.user_lock_res** %3, align 8
  %8 = getelementptr inbounds %struct.user_lock_res, %struct.user_lock_res* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = add nsw i32 %9, 1
  store i32 %10, i32* %8, align 4
  br label %18

11:                                               ; preds = %2
  %12 = load %struct.user_lock_res*, %struct.user_lock_res** %3, align 8
  %13 = getelementptr inbounds %struct.user_lock_res, %struct.user_lock_res* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %13, align 4
  br label %18

16:                                               ; preds = %2
  %17 = call i32 (...) @BUG()
  br label %18

18:                                               ; preds = %16, %11, %6
  ret void
}

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
