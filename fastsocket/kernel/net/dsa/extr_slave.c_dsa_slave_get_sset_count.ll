; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/dsa/extr_slave.c_dsa_slave_get_sset_count.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/dsa/extr_slave.c_dsa_slave_get_sset_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.dsa_slave_priv = type { %struct.dsa_switch* }
%struct.dsa_switch = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 (%struct.dsa_switch*)* }

@ETH_SS_STATS = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @dsa_slave_get_sset_count to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsa_slave_get_sset_count(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dsa_slave_priv*, align 8
  %7 = alloca %struct.dsa_switch*, align 8
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call %struct.dsa_slave_priv* @netdev_priv(%struct.net_device* %9)
  store %struct.dsa_slave_priv* %10, %struct.dsa_slave_priv** %6, align 8
  %11 = load %struct.dsa_slave_priv*, %struct.dsa_slave_priv** %6, align 8
  %12 = getelementptr inbounds %struct.dsa_slave_priv, %struct.dsa_slave_priv* %11, i32 0, i32 0
  %13 = load %struct.dsa_switch*, %struct.dsa_switch** %12, align 8
  store %struct.dsa_switch* %13, %struct.dsa_switch** %7, align 8
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @ETH_SS_STATS, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %38

17:                                               ; preds = %2
  store i32 4, i32* %8, align 4
  %18 = load %struct.dsa_switch*, %struct.dsa_switch** %7, align 8
  %19 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64 (%struct.dsa_switch*)*, i64 (%struct.dsa_switch*)** %21, align 8
  %23 = icmp ne i64 (%struct.dsa_switch*)* %22, null
  br i1 %23, label %24, label %36

24:                                               ; preds = %17
  %25 = load %struct.dsa_switch*, %struct.dsa_switch** %7, align 8
  %26 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i64 (%struct.dsa_switch*)*, i64 (%struct.dsa_switch*)** %28, align 8
  %30 = load %struct.dsa_switch*, %struct.dsa_switch** %7, align 8
  %31 = call i64 %29(%struct.dsa_switch* %30)
  %32 = load i32, i32* %8, align 4
  %33 = sext i32 %32 to i64
  %34 = add nsw i64 %33, %31
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %8, align 4
  br label %36

36:                                               ; preds = %24, %17
  %37 = load i32, i32* %8, align 4
  store i32 %37, i32* %3, align 4
  br label %41

38:                                               ; preds = %2
  %39 = load i32, i32* @EOPNOTSUPP, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %38, %36
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local %struct.dsa_slave_priv* @netdev_priv(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
