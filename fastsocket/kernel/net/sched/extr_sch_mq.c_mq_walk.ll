; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_mq.c_mq_walk.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_mq.c_mq_walk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { i32 }
%struct.qdisc_walker = type { i32, i32, i32, i64 (%struct.Qdisc.0*, i32, %struct.qdisc_walker*)* }
%struct.Qdisc.0 = type opaque
%struct.net_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.Qdisc*, %struct.qdisc_walker*)* @mq_walk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mq_walk(%struct.Qdisc* %0, %struct.qdisc_walker* %1) #0 {
  %3 = alloca %struct.Qdisc*, align 8
  %4 = alloca %struct.qdisc_walker*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  store %struct.Qdisc* %0, %struct.Qdisc** %3, align 8
  store %struct.qdisc_walker* %1, %struct.qdisc_walker** %4, align 8
  %7 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %8 = call %struct.net_device* @qdisc_dev(%struct.Qdisc* %7)
  store %struct.net_device* %8, %struct.net_device** %5, align 8
  %9 = load %struct.qdisc_walker*, %struct.qdisc_walker** %4, align 8
  %10 = getelementptr inbounds %struct.qdisc_walker, %struct.qdisc_walker* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %51

14:                                               ; preds = %2
  %15 = load %struct.qdisc_walker*, %struct.qdisc_walker** %4, align 8
  %16 = getelementptr inbounds %struct.qdisc_walker, %struct.qdisc_walker* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.qdisc_walker*, %struct.qdisc_walker** %4, align 8
  %19 = getelementptr inbounds %struct.qdisc_walker, %struct.qdisc_walker* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 4
  %20 = load %struct.qdisc_walker*, %struct.qdisc_walker** %4, align 8
  %21 = getelementptr inbounds %struct.qdisc_walker, %struct.qdisc_walker* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %6, align 4
  br label %23

23:                                               ; preds = %48, %14
  %24 = load i32, i32* %6, align 4
  %25 = load %struct.net_device*, %struct.net_device** %5, align 8
  %26 = getelementptr inbounds %struct.net_device, %struct.net_device* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ult i32 %24, %27
  br i1 %28, label %29, label %51

29:                                               ; preds = %23
  %30 = load %struct.qdisc_walker*, %struct.qdisc_walker** %4, align 8
  %31 = getelementptr inbounds %struct.qdisc_walker, %struct.qdisc_walker* %30, i32 0, i32 3
  %32 = load i64 (%struct.Qdisc.0*, i32, %struct.qdisc_walker*)*, i64 (%struct.Qdisc.0*, i32, %struct.qdisc_walker*)** %31, align 8
  %33 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %34 = bitcast %struct.Qdisc* %33 to %struct.Qdisc.0*
  %35 = load i32, i32* %6, align 4
  %36 = add i32 %35, 1
  %37 = load %struct.qdisc_walker*, %struct.qdisc_walker** %4, align 8
  %38 = call i64 %32(%struct.Qdisc.0* %34, i32 %36, %struct.qdisc_walker* %37)
  %39 = icmp slt i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %29
  %41 = load %struct.qdisc_walker*, %struct.qdisc_walker** %4, align 8
  %42 = getelementptr inbounds %struct.qdisc_walker, %struct.qdisc_walker* %41, i32 0, i32 0
  store i32 1, i32* %42, align 8
  br label %51

43:                                               ; preds = %29
  %44 = load %struct.qdisc_walker*, %struct.qdisc_walker** %4, align 8
  %45 = getelementptr inbounds %struct.qdisc_walker, %struct.qdisc_walker* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = add i32 %46, 1
  store i32 %47, i32* %45, align 4
  br label %48

48:                                               ; preds = %43
  %49 = load i32, i32* %6, align 4
  %50 = add i32 %49, 1
  store i32 %50, i32* %6, align 4
  br label %23

51:                                               ; preds = %13, %40, %23
  ret void
}

declare dso_local %struct.net_device* @qdisc_dev(%struct.Qdisc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
