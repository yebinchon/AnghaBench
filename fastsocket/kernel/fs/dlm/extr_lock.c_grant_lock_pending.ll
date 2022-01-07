; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/dlm/extr_lock.c_grant_lock_pending.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/dlm/extr_lock.c_grant_lock_pending.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_rsb = type { i32 }
%struct.dlm_lkb = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dlm_rsb*, %struct.dlm_lkb*)* @grant_lock_pending to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @grant_lock_pending(%struct.dlm_rsb* %0, %struct.dlm_lkb* %1) #0 {
  %3 = alloca %struct.dlm_rsb*, align 8
  %4 = alloca %struct.dlm_lkb*, align 8
  store %struct.dlm_rsb* %0, %struct.dlm_rsb** %3, align 8
  store %struct.dlm_lkb* %1, %struct.dlm_lkb** %4, align 8
  %5 = load %struct.dlm_rsb*, %struct.dlm_rsb** %3, align 8
  %6 = load %struct.dlm_lkb*, %struct.dlm_lkb** %4, align 8
  %7 = call i32 @grant_lock(%struct.dlm_rsb* %5, %struct.dlm_lkb* %6)
  %8 = load %struct.dlm_lkb*, %struct.dlm_lkb** %4, align 8
  %9 = call i64 @is_master_copy(%struct.dlm_lkb* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load %struct.dlm_rsb*, %struct.dlm_rsb** %3, align 8
  %13 = load %struct.dlm_lkb*, %struct.dlm_lkb** %4, align 8
  %14 = call i32 @send_grant(%struct.dlm_rsb* %12, %struct.dlm_lkb* %13)
  br label %19

15:                                               ; preds = %2
  %16 = load %struct.dlm_rsb*, %struct.dlm_rsb** %3, align 8
  %17 = load %struct.dlm_lkb*, %struct.dlm_lkb** %4, align 8
  %18 = call i32 @queue_cast(%struct.dlm_rsb* %16, %struct.dlm_lkb* %17, i32 0)
  br label %19

19:                                               ; preds = %15, %11
  ret void
}

declare dso_local i32 @grant_lock(%struct.dlm_rsb*, %struct.dlm_lkb*) #1

declare dso_local i64 @is_master_copy(%struct.dlm_lkb*) #1

declare dso_local i32 @send_grant(%struct.dlm_rsb*, %struct.dlm_lkb*) #1

declare dso_local i32 @queue_cast(%struct.dlm_rsb*, %struct.dlm_lkb*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
