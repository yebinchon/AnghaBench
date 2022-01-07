; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/extr_rsv.c_uwb_rsv_sched_update.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/extr_rsv.c_uwb_rsv_sched_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uwb_rc = type { i64, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @uwb_rsv_sched_update(%struct.uwb_rc* %0) #0 {
  %2 = alloca %struct.uwb_rc*, align 8
  store %struct.uwb_rc* %0, %struct.uwb_rc** %2, align 8
  %3 = load %struct.uwb_rc*, %struct.uwb_rc** %2, align 8
  %4 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %3, i32 0, i32 1
  %5 = call i32 @spin_lock_bh(i32* %4)
  %6 = load %struct.uwb_rc*, %struct.uwb_rc** %2, align 8
  %7 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %6, i32 0, i32 2
  %8 = call i32 @delayed_work_pending(i32* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %23, label %10

10:                                               ; preds = %1
  %11 = load %struct.uwb_rc*, %struct.uwb_rc** %2, align 8
  %12 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp sgt i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %10
  %16 = load %struct.uwb_rc*, %struct.uwb_rc** %2, align 8
  %17 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = add nsw i64 %18, 1
  store i64 %19, i64* %17, align 8
  br label %24

20:                                               ; preds = %10
  %21 = load %struct.uwb_rc*, %struct.uwb_rc** %2, align 8
  %22 = call i32 @uwb_rsv_queue_update(%struct.uwb_rc* %21)
  br label %23

23:                                               ; preds = %20, %1
  br label %24

24:                                               ; preds = %23, %15
  %25 = load %struct.uwb_rc*, %struct.uwb_rc** %2, align 8
  %26 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %25, i32 0, i32 1
  %27 = call i32 @spin_unlock_bh(i32* %26)
  ret void
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @delayed_work_pending(i32*) #1

declare dso_local i32 @uwb_rsv_queue_update(%struct.uwb_rc*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
