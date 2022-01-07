; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/dsa/extr_slave.c_dsa_slave_get_ethtool_stats.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/dsa/extr_slave.c_dsa_slave_get_ethtool_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_stats = type { i32 }
%struct.dsa_slave_priv = type { i32, %struct.TYPE_5__*, %struct.dsa_switch* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.dsa_switch = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 (%struct.dsa_switch*, i32, i32*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_stats*, i32*)* @dsa_slave_get_ethtool_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dsa_slave_get_ethtool_stats(%struct.net_device* %0, %struct.ethtool_stats* %1, i32* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_stats*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.dsa_slave_priv*, align 8
  %8 = alloca %struct.dsa_switch*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_stats* %1, %struct.ethtool_stats** %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call %struct.dsa_slave_priv* @netdev_priv(%struct.net_device* %9)
  store %struct.dsa_slave_priv* %10, %struct.dsa_slave_priv** %7, align 8
  %11 = load %struct.dsa_slave_priv*, %struct.dsa_slave_priv** %7, align 8
  %12 = getelementptr inbounds %struct.dsa_slave_priv, %struct.dsa_slave_priv* %11, i32 0, i32 2
  %13 = load %struct.dsa_switch*, %struct.dsa_switch** %12, align 8
  store %struct.dsa_switch* %13, %struct.dsa_switch** %8, align 8
  %14 = load %struct.dsa_slave_priv*, %struct.dsa_slave_priv** %7, align 8
  %15 = getelementptr inbounds %struct.dsa_slave_priv, %struct.dsa_slave_priv* %14, i32 0, i32 1
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = load i32*, i32** %6, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  store i32 %19, i32* %21, align 4
  %22 = load %struct.dsa_slave_priv*, %struct.dsa_slave_priv** %7, align 8
  %23 = getelementptr inbounds %struct.dsa_slave_priv, %struct.dsa_slave_priv* %22, i32 0, i32 1
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load i32*, i32** %6, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 1
  store i32 %27, i32* %29, align 4
  %30 = load %struct.dsa_slave_priv*, %struct.dsa_slave_priv** %7, align 8
  %31 = getelementptr inbounds %struct.dsa_slave_priv, %struct.dsa_slave_priv* %30, i32 0, i32 1
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32*, i32** %6, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 2
  store i32 %35, i32* %37, align 4
  %38 = load %struct.dsa_slave_priv*, %struct.dsa_slave_priv** %7, align 8
  %39 = getelementptr inbounds %struct.dsa_slave_priv, %struct.dsa_slave_priv* %38, i32 0, i32 1
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32*, i32** %6, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 3
  store i32 %43, i32* %45, align 4
  %46 = load %struct.dsa_switch*, %struct.dsa_switch** %8, align 8
  %47 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %46, i32 0, i32 0
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i32 (%struct.dsa_switch*, i32, i32*)*, i32 (%struct.dsa_switch*, i32, i32*)** %49, align 8
  %51 = icmp ne i32 (%struct.dsa_switch*, i32, i32*)* %50, null
  br i1 %51, label %52, label %65

52:                                               ; preds = %3
  %53 = load %struct.dsa_switch*, %struct.dsa_switch** %8, align 8
  %54 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %53, i32 0, i32 0
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i32 (%struct.dsa_switch*, i32, i32*)*, i32 (%struct.dsa_switch*, i32, i32*)** %56, align 8
  %58 = load %struct.dsa_switch*, %struct.dsa_switch** %8, align 8
  %59 = load %struct.dsa_slave_priv*, %struct.dsa_slave_priv** %7, align 8
  %60 = getelementptr inbounds %struct.dsa_slave_priv, %struct.dsa_slave_priv* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32*, i32** %6, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 4
  %64 = call i32 %57(%struct.dsa_switch* %58, i32 %61, i32* %63)
  br label %65

65:                                               ; preds = %52, %3
  ret void
}

declare dso_local %struct.dsa_slave_priv* @netdev_priv(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
