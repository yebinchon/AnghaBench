; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_teql.c_teql_master_mtu.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_teql.c_teql_master_mtu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.teql_master = type { %struct.Qdisc* }
%struct.Qdisc = type { i32 }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @teql_master_mtu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @teql_master_mtu(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.teql_master*, align 8
  %7 = alloca %struct.Qdisc*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = call %struct.teql_master* @netdev_priv(%struct.net_device* %8)
  store %struct.teql_master* %9, %struct.teql_master** %6, align 8
  %10 = load i32, i32* %5, align 4
  %11 = icmp slt i32 %10, 68
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %45

15:                                               ; preds = %2
  %16 = load %struct.teql_master*, %struct.teql_master** %6, align 8
  %17 = getelementptr inbounds %struct.teql_master, %struct.teql_master* %16, i32 0, i32 0
  %18 = load %struct.Qdisc*, %struct.Qdisc** %17, align 8
  store %struct.Qdisc* %18, %struct.Qdisc** %7, align 8
  %19 = load %struct.Qdisc*, %struct.Qdisc** %7, align 8
  %20 = icmp ne %struct.Qdisc* %19, null
  br i1 %20, label %21, label %41

21:                                               ; preds = %15
  br label %22

22:                                               ; preds = %33, %21
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.Qdisc*, %struct.Qdisc** %7, align 8
  %25 = call %struct.TYPE_2__* @qdisc_dev(%struct.Qdisc* %24)
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp sgt i32 %23, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %22
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %45

32:                                               ; preds = %22
  br label %33

33:                                               ; preds = %32
  %34 = load %struct.Qdisc*, %struct.Qdisc** %7, align 8
  %35 = call %struct.Qdisc* @NEXT_SLAVE(%struct.Qdisc* %34)
  store %struct.Qdisc* %35, %struct.Qdisc** %7, align 8
  %36 = load %struct.teql_master*, %struct.teql_master** %6, align 8
  %37 = getelementptr inbounds %struct.teql_master, %struct.teql_master* %36, i32 0, i32 0
  %38 = load %struct.Qdisc*, %struct.Qdisc** %37, align 8
  %39 = icmp ne %struct.Qdisc* %35, %38
  br i1 %39, label %22, label %40

40:                                               ; preds = %33
  br label %41

41:                                               ; preds = %40, %15
  %42 = load i32, i32* %5, align 4
  %43 = load %struct.net_device*, %struct.net_device** %4, align 8
  %44 = getelementptr inbounds %struct.net_device, %struct.net_device* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  store i32 0, i32* %3, align 4
  br label %45

45:                                               ; preds = %41, %29, %12
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local %struct.teql_master* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.TYPE_2__* @qdisc_dev(%struct.Qdisc*) #1

declare dso_local %struct.Qdisc* @NEXT_SLAVE(%struct.Qdisc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
