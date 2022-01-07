; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/hidp/extr_hidp.h_hidp_schedule.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/hidp/extr_hidp.h_hidp_schedule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hidp_session = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { %struct.sock* }
%struct.sock = type { i32 }
%struct.TYPE_3__ = type { %struct.sock* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hidp_session*)* @hidp_schedule to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hidp_schedule(%struct.hidp_session* %0) #0 {
  %2 = alloca %struct.hidp_session*, align 8
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.sock*, align 8
  store %struct.hidp_session* %0, %struct.hidp_session** %2, align 8
  %5 = load %struct.hidp_session*, %struct.hidp_session** %2, align 8
  %6 = getelementptr inbounds %struct.hidp_session, %struct.hidp_session* %5, i32 0, i32 1
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load %struct.sock*, %struct.sock** %8, align 8
  store %struct.sock* %9, %struct.sock** %3, align 8
  %10 = load %struct.hidp_session*, %struct.hidp_session** %2, align 8
  %11 = getelementptr inbounds %struct.hidp_session, %struct.hidp_session* %10, i32 0, i32 0
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.sock*, %struct.sock** %13, align 8
  store %struct.sock* %14, %struct.sock** %4, align 8
  %15 = load %struct.sock*, %struct.sock** %3, align 8
  %16 = getelementptr inbounds %struct.sock, %struct.sock* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @wake_up_interruptible(i32 %17)
  %19 = load %struct.sock*, %struct.sock** %4, align 8
  %20 = getelementptr inbounds %struct.sock, %struct.sock* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @wake_up_interruptible(i32 %21)
  ret void
}

declare dso_local i32 @wake_up_interruptible(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
