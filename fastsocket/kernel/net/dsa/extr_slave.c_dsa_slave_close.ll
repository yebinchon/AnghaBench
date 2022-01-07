; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/dsa/extr_slave.c_dsa_slave_close.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/dsa/extr_slave.c_dsa_slave_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32 }
%struct.dsa_slave_priv = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.net_device* }

@IFF_ALLMULTI = common dso_local global i32 0, align 4
@IFF_PROMISC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @dsa_slave_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsa_slave_close(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.dsa_slave_priv*, align 8
  %4 = alloca %struct.net_device*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.dsa_slave_priv* @netdev_priv(%struct.net_device* %5)
  store %struct.dsa_slave_priv* %6, %struct.dsa_slave_priv** %3, align 8
  %7 = load %struct.dsa_slave_priv*, %struct.dsa_slave_priv** %3, align 8
  %8 = getelementptr inbounds %struct.dsa_slave_priv, %struct.dsa_slave_priv* %7, i32 0, i32 0
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load %struct.net_device*, %struct.net_device** %12, align 8
  store %struct.net_device* %13, %struct.net_device** %4, align 8
  %14 = load %struct.net_device*, %struct.net_device** %4, align 8
  %15 = load %struct.net_device*, %struct.net_device** %2, align 8
  %16 = call i32 @dev_mc_unsync(%struct.net_device* %14, %struct.net_device* %15)
  %17 = load %struct.net_device*, %struct.net_device** %4, align 8
  %18 = load %struct.net_device*, %struct.net_device** %2, align 8
  %19 = call i32 @dev_unicast_unsync(%struct.net_device* %17, %struct.net_device* %18)
  %20 = load %struct.net_device*, %struct.net_device** %2, align 8
  %21 = getelementptr inbounds %struct.net_device, %struct.net_device* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @IFF_ALLMULTI, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %1
  %27 = load %struct.net_device*, %struct.net_device** %4, align 8
  %28 = call i32 @dev_set_allmulti(%struct.net_device* %27, i32 -1)
  br label %29

29:                                               ; preds = %26, %1
  %30 = load %struct.net_device*, %struct.net_device** %2, align 8
  %31 = getelementptr inbounds %struct.net_device, %struct.net_device* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @IFF_PROMISC, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %29
  %37 = load %struct.net_device*, %struct.net_device** %4, align 8
  %38 = call i32 @dev_set_promiscuity(%struct.net_device* %37, i32 -1)
  br label %39

39:                                               ; preds = %36, %29
  %40 = load %struct.net_device*, %struct.net_device** %2, align 8
  %41 = getelementptr inbounds %struct.net_device, %struct.net_device* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.net_device*, %struct.net_device** %4, align 8
  %44 = getelementptr inbounds %struct.net_device, %struct.net_device* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i64 @compare_ether_addr(i32 %42, i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %39
  %49 = load %struct.net_device*, %struct.net_device** %4, align 8
  %50 = load %struct.net_device*, %struct.net_device** %2, align 8
  %51 = getelementptr inbounds %struct.net_device, %struct.net_device* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @dev_unicast_delete(%struct.net_device* %49, i32 %52)
  br label %54

54:                                               ; preds = %48, %39
  ret i32 0
}

declare dso_local %struct.dsa_slave_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @dev_mc_unsync(%struct.net_device*, %struct.net_device*) #1

declare dso_local i32 @dev_unicast_unsync(%struct.net_device*, %struct.net_device*) #1

declare dso_local i32 @dev_set_allmulti(%struct.net_device*, i32) #1

declare dso_local i32 @dev_set_promiscuity(%struct.net_device*, i32) #1

declare dso_local i64 @compare_ether_addr(i32, i32) #1

declare dso_local i32 @dev_unicast_delete(%struct.net_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
