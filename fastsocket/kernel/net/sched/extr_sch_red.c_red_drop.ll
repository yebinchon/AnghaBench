; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_red.c_red_drop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_red.c_red_drop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_8__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_8__ = type { {}* }
%struct.red_sched_data = type { i32, %struct.TYPE_5__, %struct.Qdisc* }
%struct.TYPE_5__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Qdisc*)* @red_drop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @red_drop(%struct.Qdisc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.Qdisc*, align 8
  %4 = alloca %struct.red_sched_data*, align 8
  %5 = alloca %struct.Qdisc*, align 8
  %6 = alloca i32, align 4
  store %struct.Qdisc* %0, %struct.Qdisc** %3, align 8
  %7 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %8 = call %struct.red_sched_data* @qdisc_priv(%struct.Qdisc* %7)
  store %struct.red_sched_data* %8, %struct.red_sched_data** %4, align 8
  %9 = load %struct.red_sched_data*, %struct.red_sched_data** %4, align 8
  %10 = getelementptr inbounds %struct.red_sched_data, %struct.red_sched_data* %9, i32 0, i32 2
  %11 = load %struct.Qdisc*, %struct.Qdisc** %10, align 8
  store %struct.Qdisc* %11, %struct.Qdisc** %5, align 8
  %12 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %13 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %12, i32 0, i32 2
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = bitcast {}** %15 to i32 (%struct.Qdisc*)**
  %17 = load i32 (%struct.Qdisc*)*, i32 (%struct.Qdisc*)** %16, align 8
  %18 = icmp ne i32 (%struct.Qdisc*)* %17, null
  br i1 %18, label %19, label %46

19:                                               ; preds = %1
  %20 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %21 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %20, i32 0, i32 2
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = bitcast {}** %23 to i32 (%struct.Qdisc*)**
  %25 = load i32 (%struct.Qdisc*)*, i32 (%struct.Qdisc*)** %24, align 8
  %26 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %27 = call i32 %25(%struct.Qdisc* %26)
  store i32 %27, i32* %6, align 4
  %28 = icmp ugt i32 %27, 0
  br i1 %28, label %29, label %46

29:                                               ; preds = %19
  %30 = load %struct.red_sched_data*, %struct.red_sched_data** %4, align 8
  %31 = getelementptr inbounds %struct.red_sched_data, %struct.red_sched_data* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %32, align 4
  %35 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %36 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %37, align 4
  %40 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %41 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = add nsw i32 %43, -1
  store i32 %44, i32* %42, align 8
  %45 = load i32, i32* %6, align 4
  store i32 %45, i32* %2, align 4
  br label %56

46:                                               ; preds = %19, %1
  %47 = load %struct.red_sched_data*, %struct.red_sched_data** %4, align 8
  %48 = getelementptr inbounds %struct.red_sched_data, %struct.red_sched_data* %47, i32 0, i32 0
  %49 = call i32 @red_is_idling(i32* %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %55, label %51

51:                                               ; preds = %46
  %52 = load %struct.red_sched_data*, %struct.red_sched_data** %4, align 8
  %53 = getelementptr inbounds %struct.red_sched_data, %struct.red_sched_data* %52, i32 0, i32 0
  %54 = call i32 @red_start_of_idle_period(i32* %53)
  br label %55

55:                                               ; preds = %51, %46
  store i32 0, i32* %2, align 4
  br label %56

56:                                               ; preds = %55, %29
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local %struct.red_sched_data* @qdisc_priv(%struct.Qdisc*) #1

declare dso_local i32 @red_is_idling(i32*) #1

declare dso_local i32 @red_start_of_idle_period(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
