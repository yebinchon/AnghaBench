; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/xfrm/extr_xfrm_state.c_xfrm_replay_timer_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/xfrm/extr_xfrm_state.c_xfrm_replay_timer_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_state = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@XFRM_STATE_VALID = common dso_local global i64 0, align 8
@XFRM_REPLAY_TIMEOUT = common dso_local global i32 0, align 4
@XFRM_TIME_DEFER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @xfrm_replay_timer_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xfrm_replay_timer_handler(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.xfrm_state*, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = inttoptr i64 %4 to %struct.xfrm_state*
  store %struct.xfrm_state* %5, %struct.xfrm_state** %3, align 8
  %6 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %7 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %6, i32 0, i32 0
  %8 = call i32 @spin_lock(i32* %7)
  %9 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %10 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @XFRM_STATE_VALID, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %31

15:                                               ; preds = %1
  %16 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %17 = call i32 @xs_net(%struct.xfrm_state* %16)
  %18 = call i64 @xfrm_aevent_is_on(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %15
  %21 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %22 = load i32, i32* @XFRM_REPLAY_TIMEOUT, align 4
  %23 = call i32 @xfrm_replay_notify(%struct.xfrm_state* %21, i32 %22)
  br label %30

24:                                               ; preds = %15
  %25 = load i32, i32* @XFRM_TIME_DEFER, align 4
  %26 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %27 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = or i32 %28, %25
  store i32 %29, i32* %27, align 4
  br label %30

30:                                               ; preds = %24, %20
  br label %31

31:                                               ; preds = %30, %1
  %32 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %33 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %32, i32 0, i32 0
  %34 = call i32 @spin_unlock(i32* %33)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @xfrm_aevent_is_on(i32) #1

declare dso_local i32 @xs_net(%struct.xfrm_state*) #1

declare dso_local i32 @xfrm_replay_notify(%struct.xfrm_state*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
