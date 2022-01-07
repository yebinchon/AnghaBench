; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/xfrm/extr_xfrm_state.c_km_policy_expired.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/xfrm/extr_xfrm_state.c_km_policy_expired.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_policy = type { i32 }
%struct.net = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.km_event = type { i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@XFRM_MSG_POLEXPIRE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @km_policy_expired(%struct.xfrm_policy* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.xfrm_policy*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.net*, align 8
  %10 = alloca %struct.km_event, align 4
  store %struct.xfrm_policy* %0, %struct.xfrm_policy** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.xfrm_policy*, %struct.xfrm_policy** %5, align 8
  %12 = call %struct.net* @xp_net(%struct.xfrm_policy* %11)
  store %struct.net* %12, %struct.net** %9, align 8
  %13 = load i32, i32* %7, align 4
  %14 = getelementptr inbounds %struct.km_event, %struct.km_event* %10, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 4
  %16 = load i32, i32* %8, align 4
  %17 = getelementptr inbounds %struct.km_event, %struct.km_event* %10, i32 0, i32 1
  store i32 %16, i32* %17, align 4
  %18 = load i32, i32* @XFRM_MSG_POLEXPIRE, align 4
  %19 = getelementptr inbounds %struct.km_event, %struct.km_event* %10, i32 0, i32 0
  store i32 %18, i32* %19, align 4
  %20 = load %struct.xfrm_policy*, %struct.xfrm_policy** %5, align 8
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @km_policy_notify(%struct.xfrm_policy* %20, i32 %21, %struct.km_event* %10)
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %4
  %26 = load %struct.net*, %struct.net** %9, align 8
  %27 = getelementptr inbounds %struct.net, %struct.net* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = call i32 @wake_up(i32* %28)
  br label %30

30:                                               ; preds = %25, %4
  ret void
}

declare dso_local %struct.net* @xp_net(%struct.xfrm_policy*) #1

declare dso_local i32 @km_policy_notify(%struct.xfrm_policy*, i32, %struct.km_event*) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
