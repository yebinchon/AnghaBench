; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/dsa/extr_slave.c_dsa_slave_get_settings.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/dsa/extr_slave.c_dsa_slave_get_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_cmd = type { i32 }
%struct.dsa_slave_priv = type { i32* }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_cmd*)* @dsa_slave_get_settings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsa_slave_get_settings(%struct.net_device* %0, %struct.ethtool_cmd* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_cmd*, align 8
  %5 = alloca %struct.dsa_slave_priv*, align 8
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_cmd* %1, %struct.ethtool_cmd** %4, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.dsa_slave_priv* @netdev_priv(%struct.net_device* %7)
  store %struct.dsa_slave_priv* %8, %struct.dsa_slave_priv** %5, align 8
  %9 = load i32, i32* @EOPNOTSUPP, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %6, align 4
  %11 = load %struct.dsa_slave_priv*, %struct.dsa_slave_priv** %5, align 8
  %12 = getelementptr inbounds %struct.dsa_slave_priv, %struct.dsa_slave_priv* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %29

15:                                               ; preds = %2
  %16 = load %struct.dsa_slave_priv*, %struct.dsa_slave_priv** %5, align 8
  %17 = getelementptr inbounds %struct.dsa_slave_priv, %struct.dsa_slave_priv* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = call i32 @phy_read_status(i32* %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %15
  %23 = load %struct.dsa_slave_priv*, %struct.dsa_slave_priv** %5, align 8
  %24 = getelementptr inbounds %struct.dsa_slave_priv, %struct.dsa_slave_priv* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %27 = call i32 @phy_ethtool_gset(i32* %25, %struct.ethtool_cmd* %26)
  store i32 %27, i32* %6, align 4
  br label %28

28:                                               ; preds = %22, %15
  br label %29

29:                                               ; preds = %28, %2
  %30 = load i32, i32* %6, align 4
  ret i32 %30
}

declare dso_local %struct.dsa_slave_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @phy_read_status(i32*) #1

declare dso_local i32 @phy_ethtool_gset(i32*, %struct.ethtool_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
