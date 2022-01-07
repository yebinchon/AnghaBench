; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/dlm/extr_lock.c_dlm_recover_grant.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/dlm/extr_lock.c_dlm_recover_grant.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_ls = type { i32 }
%struct.dlm_rsb = type { i32 }

@RSB_RECOVER_GRANT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dlm_recover_grant(%struct.dlm_ls* %0) #0 {
  %2 = alloca %struct.dlm_ls*, align 8
  %3 = alloca %struct.dlm_rsb*, align 8
  %4 = alloca i32, align 4
  store %struct.dlm_ls* %0, %struct.dlm_ls** %2, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %1, %19, %22
  %6 = load %struct.dlm_ls*, %struct.dlm_ls** %2, align 8
  %7 = load i32, i32* %4, align 4
  %8 = call %struct.dlm_rsb* @find_grant_rsb(%struct.dlm_ls* %6, i32 %7)
  store %struct.dlm_rsb* %8, %struct.dlm_rsb** %3, align 8
  %9 = load %struct.dlm_rsb*, %struct.dlm_rsb** %3, align 8
  %10 = icmp ne %struct.dlm_rsb* %9, null
  br i1 %10, label %22, label %11

11:                                               ; preds = %5
  %12 = load i32, i32* %4, align 4
  %13 = load %struct.dlm_ls*, %struct.dlm_ls** %2, align 8
  %14 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = sub nsw i32 %15, 1
  %17 = icmp eq i32 %12, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %11
  br label %37

19:                                               ; preds = %11
  %20 = load i32, i32* %4, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %4, align 4
  br label %5

22:                                               ; preds = %5
  %23 = load %struct.dlm_rsb*, %struct.dlm_rsb** %3, align 8
  %24 = call i32 @lock_rsb(%struct.dlm_rsb* %23)
  %25 = load %struct.dlm_rsb*, %struct.dlm_rsb** %3, align 8
  %26 = call i32 @grant_pending_locks(%struct.dlm_rsb* %25)
  %27 = load %struct.dlm_rsb*, %struct.dlm_rsb** %3, align 8
  %28 = load i32, i32* @RSB_RECOVER_GRANT, align 4
  %29 = call i32 @rsb_clear_flag(%struct.dlm_rsb* %27, i32 %28)
  %30 = load %struct.dlm_rsb*, %struct.dlm_rsb** %3, align 8
  %31 = call i32 @confirm_master(%struct.dlm_rsb* %30, i32 0)
  %32 = load %struct.dlm_rsb*, %struct.dlm_rsb** %3, align 8
  %33 = call i32 @unlock_rsb(%struct.dlm_rsb* %32)
  %34 = load %struct.dlm_rsb*, %struct.dlm_rsb** %3, align 8
  %35 = call i32 @put_rsb(%struct.dlm_rsb* %34)
  %36 = call i32 (...) @cond_resched()
  br label %5

37:                                               ; preds = %18
  ret void
}

declare dso_local %struct.dlm_rsb* @find_grant_rsb(%struct.dlm_ls*, i32) #1

declare dso_local i32 @lock_rsb(%struct.dlm_rsb*) #1

declare dso_local i32 @grant_pending_locks(%struct.dlm_rsb*) #1

declare dso_local i32 @rsb_clear_flag(%struct.dlm_rsb*, i32) #1

declare dso_local i32 @confirm_master(%struct.dlm_rsb*, i32) #1

declare dso_local i32 @unlock_rsb(%struct.dlm_rsb*) #1

declare dso_local i32 @put_rsb(%struct.dlm_rsb*) #1

declare dso_local i32 @cond_resched(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
