; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bridge/extr_br_stp_timer.c_br_hold_timer_expired.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bridge/extr_br_stp_timer.c_br_hold_timer_expired.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_bridge_port = type { %struct.TYPE_6__*, i64, %struct.TYPE_5__*, i32 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"%s: %d(%s) hold timer expired\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @br_hold_timer_expired to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @br_hold_timer_expired(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.net_bridge_port*, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = inttoptr i64 %4 to %struct.net_bridge_port*
  store %struct.net_bridge_port* %5, %struct.net_bridge_port** %3, align 8
  %6 = load %struct.net_bridge_port*, %struct.net_bridge_port** %3, align 8
  %7 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %6, i32 0, i32 0
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 1
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.net_bridge_port*, %struct.net_bridge_port** %3, align 8
  %14 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.net_bridge_port*, %struct.net_bridge_port** %3, align 8
  %17 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %16, i32 0, i32 2
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @pr_debug(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %12, i32 %15, i32 %20)
  %22 = load %struct.net_bridge_port*, %struct.net_bridge_port** %3, align 8
  %23 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %22, i32 0, i32 0
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = call i32 @spin_lock(i32* %25)
  %27 = load %struct.net_bridge_port*, %struct.net_bridge_port** %3, align 8
  %28 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %1
  %32 = load %struct.net_bridge_port*, %struct.net_bridge_port** %3, align 8
  %33 = call i32 @br_transmit_config(%struct.net_bridge_port* %32)
  br label %34

34:                                               ; preds = %31, %1
  %35 = load %struct.net_bridge_port*, %struct.net_bridge_port** %3, align 8
  %36 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %35, i32 0, i32 0
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = call i32 @spin_unlock(i32* %38)
  ret void
}

declare dso_local i32 @pr_debug(i8*, i32, i32, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @br_transmit_config(%struct.net_bridge_port*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
