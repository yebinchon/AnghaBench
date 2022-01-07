; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_prio.c_prio_drop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_prio.c_prio_drop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { %struct.TYPE_3__, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { {}* }
%struct.prio_sched_data = type { i32, %struct.Qdisc** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Qdisc*)* @prio_drop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prio_drop(%struct.Qdisc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.Qdisc*, align 8
  %4 = alloca %struct.prio_sched_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.Qdisc*, align 8
  store %struct.Qdisc* %0, %struct.Qdisc** %3, align 8
  %8 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %9 = call %struct.prio_sched_data* @qdisc_priv(%struct.Qdisc* %8)
  store %struct.prio_sched_data* %9, %struct.prio_sched_data** %4, align 8
  %10 = load %struct.prio_sched_data*, %struct.prio_sched_data** %4, align 8
  %11 = getelementptr inbounds %struct.prio_sched_data, %struct.prio_sched_data* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = sub nsw i32 %12, 1
  store i32 %13, i32* %5, align 4
  br label %14

14:                                               ; preds = %50, %1
  %15 = load i32, i32* %5, align 4
  %16 = icmp sge i32 %15, 0
  br i1 %16, label %17, label %53

17:                                               ; preds = %14
  %18 = load %struct.prio_sched_data*, %struct.prio_sched_data** %4, align 8
  %19 = getelementptr inbounds %struct.prio_sched_data, %struct.prio_sched_data* %18, i32 0, i32 1
  %20 = load %struct.Qdisc**, %struct.Qdisc*** %19, align 8
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.Qdisc*, %struct.Qdisc** %20, i64 %22
  %24 = load %struct.Qdisc*, %struct.Qdisc** %23, align 8
  store %struct.Qdisc* %24, %struct.Qdisc** %7, align 8
  %25 = load %struct.Qdisc*, %struct.Qdisc** %7, align 8
  %26 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %25, i32 0, i32 1
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = bitcast {}** %28 to i32 (%struct.Qdisc*)**
  %30 = load i32 (%struct.Qdisc*)*, i32 (%struct.Qdisc*)** %29, align 8
  %31 = icmp ne i32 (%struct.Qdisc*)* %30, null
  br i1 %31, label %32, label %49

32:                                               ; preds = %17
  %33 = load %struct.Qdisc*, %struct.Qdisc** %7, align 8
  %34 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %33, i32 0, i32 1
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = bitcast {}** %36 to i32 (%struct.Qdisc*)**
  %38 = load i32 (%struct.Qdisc*)*, i32 (%struct.Qdisc*)** %37, align 8
  %39 = load %struct.Qdisc*, %struct.Qdisc** %7, align 8
  %40 = call i32 %38(%struct.Qdisc* %39)
  store i32 %40, i32* %6, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %32
  %43 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %44 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = add nsw i32 %46, -1
  store i32 %47, i32* %45, align 8
  %48 = load i32, i32* %6, align 4
  store i32 %48, i32* %2, align 4
  br label %54

49:                                               ; preds = %32, %17
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %5, align 4
  %52 = add nsw i32 %51, -1
  store i32 %52, i32* %5, align 4
  br label %14

53:                                               ; preds = %14
  store i32 0, i32* %2, align 4
  br label %54

54:                                               ; preds = %53, %42
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local %struct.prio_sched_data* @qdisc_priv(%struct.Qdisc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
