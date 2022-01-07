; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/extr_rsv.c_uwb_rsv_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/extr_rsv.c_uwb_rsv_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uwb_rc = type { %struct.TYPE_5__, %struct.TYPE_4__, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32, %struct.TYPE_6__, i64 }
%struct.TYPE_6__ = type { i64, i32 }

@uwb_rsv_update_work = common dso_local global i32 0, align 4
@uwb_rsv_alien_bp_work = common dso_local global i32 0, align 4
@UWB_DRP_BACKOFF_WIN_MIN = common dso_local global i32 0, align 4
@uwb_rsv_backoff_win_timer = common dso_local global i32 0, align 4
@UWB_NUM_STREAMS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @uwb_rsv_init(%struct.uwb_rc* %0) #0 {
  %2 = alloca %struct.uwb_rc*, align 8
  store %struct.uwb_rc* %0, %struct.uwb_rc** %2, align 8
  %3 = load %struct.uwb_rc*, %struct.uwb_rc** %2, align 8
  %4 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %3, i32 0, i32 7
  %5 = call i32 @INIT_LIST_HEAD(i32* %4)
  %6 = load %struct.uwb_rc*, %struct.uwb_rc** %2, align 8
  %7 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %6, i32 0, i32 6
  %8 = call i32 @INIT_LIST_HEAD(i32* %7)
  %9 = load %struct.uwb_rc*, %struct.uwb_rc** %2, align 8
  %10 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %9, i32 0, i32 5
  %11 = call i32 @mutex_init(i32* %10)
  %12 = load %struct.uwb_rc*, %struct.uwb_rc** %2, align 8
  %13 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %12, i32 0, i32 4
  %14 = call i32 @spin_lock_init(i32* %13)
  %15 = load %struct.uwb_rc*, %struct.uwb_rc** %2, align 8
  %16 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %15, i32 0, i32 3
  %17 = load i32, i32* @uwb_rsv_update_work, align 4
  %18 = call i32 @INIT_DELAYED_WORK(i32* %16, i32 %17)
  %19 = load %struct.uwb_rc*, %struct.uwb_rc** %2, align 8
  %20 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %19, i32 0, i32 2
  %21 = load i32, i32* @uwb_rsv_alien_bp_work, align 4
  %22 = call i32 @INIT_DELAYED_WORK(i32* %20, i32 %21)
  %23 = load %struct.uwb_rc*, %struct.uwb_rc** %2, align 8
  %24 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  store i32 1, i32* %25, align 8
  %26 = load %struct.uwb_rc*, %struct.uwb_rc** %2, align 8
  %27 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 3
  store i64 0, i64* %28, align 8
  %29 = load i32, i32* @UWB_DRP_BACKOFF_WIN_MIN, align 4
  %30 = ashr i32 %29, 1
  %31 = load %struct.uwb_rc*, %struct.uwb_rc** %2, align 8
  %32 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  store i32 %30, i32* %33, align 4
  %34 = load %struct.uwb_rc*, %struct.uwb_rc** %2, align 8
  %35 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 2
  %37 = call i32 @init_timer(%struct.TYPE_6__* %36)
  %38 = load i32, i32* @uwb_rsv_backoff_win_timer, align 4
  %39 = load %struct.uwb_rc*, %struct.uwb_rc** %2, align 8
  %40 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 1
  store i32 %38, i32* %42, align 8
  %43 = load %struct.uwb_rc*, %struct.uwb_rc** %2, align 8
  %44 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %43, i32 0, i32 1
  %45 = ptrtoint %struct.TYPE_4__* %44 to i64
  %46 = load %struct.uwb_rc*, %struct.uwb_rc** %2, align 8
  %47 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  store i64 %45, i64* %49, align 8
  %50 = load %struct.uwb_rc*, %struct.uwb_rc** %2, align 8
  %51 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.uwb_rc*, %struct.uwb_rc** %2, align 8
  %55 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @UWB_NUM_STREAMS, align 4
  %59 = call i32 @bitmap_complement(i32 %53, i32 %57, i32 %58)
  ret void
}

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @init_timer(%struct.TYPE_6__*) #1

declare dso_local i32 @bitmap_complement(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
