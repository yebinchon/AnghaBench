; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_generic.c_qdisc_create_dflt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_generic.c_qdisc_create_dflt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { i32 }
%struct.net_device = type { i32 }
%struct.netdev_queue = type { i32 }
%struct.Qdisc_ops = type { i64 (%struct.Qdisc.0*, i32*)* }
%struct.Qdisc.0 = type opaque

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.Qdisc* @qdisc_create_dflt(%struct.net_device* %0, %struct.netdev_queue* %1, %struct.Qdisc_ops* %2, i32 %3) #0 {
  %5 = alloca %struct.Qdisc*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.netdev_queue*, align 8
  %8 = alloca %struct.Qdisc_ops*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.Qdisc*, align 8
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.netdev_queue* %1, %struct.netdev_queue** %7, align 8
  store %struct.Qdisc_ops* %2, %struct.Qdisc_ops** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load %struct.netdev_queue*, %struct.netdev_queue** %7, align 8
  %12 = load %struct.Qdisc_ops*, %struct.Qdisc_ops** %8, align 8
  %13 = call %struct.Qdisc* @qdisc_alloc(%struct.netdev_queue* %11, %struct.Qdisc_ops* %12)
  store %struct.Qdisc* %13, %struct.Qdisc** %10, align 8
  %14 = load %struct.Qdisc*, %struct.Qdisc** %10, align 8
  %15 = call i64 @IS_ERR(%struct.Qdisc* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %4
  br label %39

18:                                               ; preds = %4
  %19 = load i32, i32* %9, align 4
  %20 = load %struct.Qdisc*, %struct.Qdisc** %10, align 8
  %21 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  %22 = load %struct.Qdisc_ops*, %struct.Qdisc_ops** %8, align 8
  %23 = getelementptr inbounds %struct.Qdisc_ops, %struct.Qdisc_ops* %22, i32 0, i32 0
  %24 = load i64 (%struct.Qdisc.0*, i32*)*, i64 (%struct.Qdisc.0*, i32*)** %23, align 8
  %25 = icmp ne i64 (%struct.Qdisc.0*, i32*)* %24, null
  br i1 %25, label %26, label %34

26:                                               ; preds = %18
  %27 = load %struct.Qdisc_ops*, %struct.Qdisc_ops** %8, align 8
  %28 = getelementptr inbounds %struct.Qdisc_ops, %struct.Qdisc_ops* %27, i32 0, i32 0
  %29 = load i64 (%struct.Qdisc.0*, i32*)*, i64 (%struct.Qdisc.0*, i32*)** %28, align 8
  %30 = load %struct.Qdisc*, %struct.Qdisc** %10, align 8
  %31 = bitcast %struct.Qdisc* %30 to %struct.Qdisc.0*
  %32 = call i64 %29(%struct.Qdisc.0* %31, i32* null)
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %26, %18
  %35 = load %struct.Qdisc*, %struct.Qdisc** %10, align 8
  store %struct.Qdisc* %35, %struct.Qdisc** %5, align 8
  br label %40

36:                                               ; preds = %26
  %37 = load %struct.Qdisc*, %struct.Qdisc** %10, align 8
  %38 = call i32 @qdisc_destroy(%struct.Qdisc* %37)
  br label %39

39:                                               ; preds = %36, %17
  store %struct.Qdisc* null, %struct.Qdisc** %5, align 8
  br label %40

40:                                               ; preds = %39, %34
  %41 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  ret %struct.Qdisc* %41
}

declare dso_local %struct.Qdisc* @qdisc_alloc(%struct.netdev_queue*, %struct.Qdisc_ops*) #1

declare dso_local i64 @IS_ERR(%struct.Qdisc*) #1

declare dso_local i32 @qdisc_destroy(%struct.Qdisc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
