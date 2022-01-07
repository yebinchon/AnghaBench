; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/octeon/extr_ethernet-mdio.c_cvm_oct_mdio_setup_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/octeon/extr_ethernet-mdio.c_cvm_oct_mdio_setup_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.octeon_ethernet = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, %struct.net_device* }

@cvm_oct_mdio_read = common dso_local global i32 0, align 4
@cvm_oct_mdio_write = common dso_local global i32 0, align 4
@cvm_oct_mdio_dummy_read = common dso_local global i32 0, align 4
@cvm_oct_mdio_dummy_write = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cvm_oct_mdio_setup_device(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.octeon_ethernet*, align 8
  %4 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.octeon_ethernet* @netdev_priv(%struct.net_device* %5)
  store %struct.octeon_ethernet* %6, %struct.octeon_ethernet** %3, align 8
  %7 = load %struct.octeon_ethernet*, %struct.octeon_ethernet** %3, align 8
  %8 = getelementptr inbounds %struct.octeon_ethernet, %struct.octeon_ethernet* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @cvmx_helper_board_get_mii_address(i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, -1
  br i1 %12, label %13, label %39

13:                                               ; preds = %1
  %14 = load %struct.net_device*, %struct.net_device** %2, align 8
  %15 = load %struct.octeon_ethernet*, %struct.octeon_ethernet** %3, align 8
  %16 = getelementptr inbounds %struct.octeon_ethernet, %struct.octeon_ethernet* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 6
  store %struct.net_device* %14, %struct.net_device** %17, align 8
  %18 = load i32, i32* %4, align 4
  %19 = load %struct.octeon_ethernet*, %struct.octeon_ethernet** %3, align 8
  %20 = getelementptr inbounds %struct.octeon_ethernet, %struct.octeon_ethernet* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  store i32 %18, i32* %21, align 8
  %22 = load %struct.octeon_ethernet*, %struct.octeon_ethernet** %3, align 8
  %23 = getelementptr inbounds %struct.octeon_ethernet, %struct.octeon_ethernet* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  store i32 255, i32* %24, align 4
  %25 = load %struct.octeon_ethernet*, %struct.octeon_ethernet** %3, align 8
  %26 = getelementptr inbounds %struct.octeon_ethernet, %struct.octeon_ethernet* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 2
  store i32 1, i32* %27, align 8
  %28 = load %struct.octeon_ethernet*, %struct.octeon_ethernet** %3, align 8
  %29 = getelementptr inbounds %struct.octeon_ethernet, %struct.octeon_ethernet* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 3
  store i32 31, i32* %30, align 4
  %31 = load i32, i32* @cvm_oct_mdio_read, align 4
  %32 = load %struct.octeon_ethernet*, %struct.octeon_ethernet** %3, align 8
  %33 = getelementptr inbounds %struct.octeon_ethernet, %struct.octeon_ethernet* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 5
  store i32 %31, i32* %34, align 4
  %35 = load i32, i32* @cvm_oct_mdio_write, align 4
  %36 = load %struct.octeon_ethernet*, %struct.octeon_ethernet** %3, align 8
  %37 = getelementptr inbounds %struct.octeon_ethernet, %struct.octeon_ethernet* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 4
  store i32 %35, i32* %38, align 8
  br label %48

39:                                               ; preds = %1
  %40 = load i32, i32* @cvm_oct_mdio_dummy_read, align 4
  %41 = load %struct.octeon_ethernet*, %struct.octeon_ethernet** %3, align 8
  %42 = getelementptr inbounds %struct.octeon_ethernet, %struct.octeon_ethernet* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 5
  store i32 %40, i32* %43, align 4
  %44 = load i32, i32* @cvm_oct_mdio_dummy_write, align 4
  %45 = load %struct.octeon_ethernet*, %struct.octeon_ethernet** %3, align 8
  %46 = getelementptr inbounds %struct.octeon_ethernet, %struct.octeon_ethernet* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 4
  store i32 %44, i32* %47, align 8
  br label %48

48:                                               ; preds = %39, %13
  ret i32 0
}

declare dso_local %struct.octeon_ethernet* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @cvmx_helper_board_get_mii_address(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
