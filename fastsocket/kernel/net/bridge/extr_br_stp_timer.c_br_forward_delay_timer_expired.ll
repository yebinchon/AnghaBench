; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bridge/extr_br_stp_timer.c_br_forward_delay_timer_expired.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bridge/extr_br_stp_timer.c_br_forward_delay_timer_expired.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_bridge_port = type { i64, i32, %struct.TYPE_4__*, i32, %struct.net_bridge* }
%struct.TYPE_4__ = type { i32 }
%struct.net_bridge = type { i32, i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"%s: %d(%s) forward delay timer\0A\00", align 1
@BR_STATE_LISTENING = common dso_local global i64 0, align 8
@BR_STATE_LEARNING = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@BR_STATE_FORWARDING = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @br_forward_delay_timer_expired to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @br_forward_delay_timer_expired(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.net_bridge_port*, align 8
  %4 = alloca %struct.net_bridge*, align 8
  store i64 %0, i64* %2, align 8
  %5 = load i64, i64* %2, align 8
  %6 = inttoptr i64 %5 to %struct.net_bridge_port*
  store %struct.net_bridge_port* %6, %struct.net_bridge_port** %3, align 8
  %7 = load %struct.net_bridge_port*, %struct.net_bridge_port** %3, align 8
  %8 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %7, i32 0, i32 4
  %9 = load %struct.net_bridge*, %struct.net_bridge** %8, align 8
  store %struct.net_bridge* %9, %struct.net_bridge** %4, align 8
  %10 = load %struct.net_bridge*, %struct.net_bridge** %4, align 8
  %11 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %10, i32 0, i32 2
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.net_bridge_port*, %struct.net_bridge_port** %3, align 8
  %16 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.net_bridge_port*, %struct.net_bridge_port** %3, align 8
  %19 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %18, i32 0, i32 2
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @pr_debug(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %17, i32 %22)
  %24 = load %struct.net_bridge*, %struct.net_bridge** %4, align 8
  %25 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %24, i32 0, i32 0
  %26 = call i32 @spin_lock(i32* %25)
  %27 = load %struct.net_bridge_port*, %struct.net_bridge_port** %3, align 8
  %28 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @BR_STATE_LISTENING, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %44

32:                                               ; preds = %1
  %33 = load i64, i64* @BR_STATE_LEARNING, align 8
  %34 = load %struct.net_bridge_port*, %struct.net_bridge_port** %3, align 8
  %35 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %34, i32 0, i32 0
  store i64 %33, i64* %35, align 8
  %36 = load %struct.net_bridge_port*, %struct.net_bridge_port** %3, align 8
  %37 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %36, i32 0, i32 1
  %38 = load i64, i64* @jiffies, align 8
  %39 = load %struct.net_bridge*, %struct.net_bridge** %4, align 8
  %40 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = add nsw i64 %38, %41
  %43 = call i32 @mod_timer(i32* %37, i64 %42)
  br label %62

44:                                               ; preds = %1
  %45 = load %struct.net_bridge_port*, %struct.net_bridge_port** %3, align 8
  %46 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @BR_STATE_LEARNING, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %61

50:                                               ; preds = %44
  %51 = load i64, i64* @BR_STATE_FORWARDING, align 8
  %52 = load %struct.net_bridge_port*, %struct.net_bridge_port** %3, align 8
  %53 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %52, i32 0, i32 0
  store i64 %51, i64* %53, align 8
  %54 = load %struct.net_bridge*, %struct.net_bridge** %4, align 8
  %55 = call i64 @br_is_designated_for_some_port(%struct.net_bridge* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %50
  %58 = load %struct.net_bridge*, %struct.net_bridge** %4, align 8
  %59 = call i32 @br_topology_change_detection(%struct.net_bridge* %58)
  br label %60

60:                                               ; preds = %57, %50
  br label %61

61:                                               ; preds = %60, %44
  br label %62

62:                                               ; preds = %61, %32
  %63 = load %struct.net_bridge_port*, %struct.net_bridge_port** %3, align 8
  %64 = call i32 @br_log_state(%struct.net_bridge_port* %63)
  %65 = load %struct.net_bridge*, %struct.net_bridge** %4, align 8
  %66 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %65, i32 0, i32 0
  %67 = call i32 @spin_unlock(i32* %66)
  ret void
}

declare dso_local i32 @pr_debug(i8*, i32, i32, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @br_is_designated_for_some_port(%struct.net_bridge*) #1

declare dso_local i32 @br_topology_change_detection(%struct.net_bridge*) #1

declare dso_local i32 @br_log_state(%struct.net_bridge_port*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
