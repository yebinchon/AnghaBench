; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/octeon/extr_ethernet-proc.c_cvm_oct_stats_read_switch.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/octeon/extr_ethernet-proc.c_cvm_oct_stats_read_switch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.octeon_ethernet = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 (%struct.net_device.0*, i32, i32)*, i32 (%struct.net_device.1*, i32, i32, i32)* }
%struct.net_device.0 = type opaque
%struct.net_device.1 = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.net_device*, i32, i32)* @cvm_oct_stats_read_switch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @cvm_oct_stats_read_switch(%struct.net_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.octeon_ethernet*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = call %struct.octeon_ethernet* @netdev_priv(%struct.net_device* %8)
  store %struct.octeon_ethernet* %9, %struct.octeon_ethernet** %7, align 8
  %10 = load %struct.octeon_ethernet*, %struct.octeon_ethernet** %7, align 8
  %11 = getelementptr inbounds %struct.octeon_ethernet, %struct.octeon_ethernet* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %13 = load i32 (%struct.net_device.1*, i32, i32, i32)*, i32 (%struct.net_device.1*, i32, i32, i32)** %12, align 8
  %14 = load %struct.net_device*, %struct.net_device** %4, align 8
  %15 = bitcast %struct.net_device* %14 to %struct.net_device.1*
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* %6, align 4
  %18 = or i32 52224, %17
  %19 = call i32 %13(%struct.net_device.1* %15, i32 %16, i32 29, i32 %18)
  %20 = load %struct.octeon_ethernet*, %struct.octeon_ethernet** %7, align 8
  %21 = getelementptr inbounds %struct.octeon_ethernet, %struct.octeon_ethernet* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64 (%struct.net_device.0*, i32, i32)*, i64 (%struct.net_device.0*, i32, i32)** %22, align 8
  %24 = load %struct.net_device*, %struct.net_device** %4, align 8
  %25 = bitcast %struct.net_device* %24 to %struct.net_device.0*
  %26 = load i32, i32* %5, align 4
  %27 = call i64 %23(%struct.net_device.0* %25, i32 %26, i32 30)
  %28 = trunc i64 %27 to i32
  %29 = shl i32 %28, 16
  %30 = load %struct.octeon_ethernet*, %struct.octeon_ethernet** %7, align 8
  %31 = getelementptr inbounds %struct.octeon_ethernet, %struct.octeon_ethernet* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i64 (%struct.net_device.0*, i32, i32)*, i64 (%struct.net_device.0*, i32, i32)** %32, align 8
  %34 = load %struct.net_device*, %struct.net_device** %4, align 8
  %35 = bitcast %struct.net_device* %34 to %struct.net_device.0*
  %36 = load i32, i32* %5, align 4
  %37 = call i64 %33(%struct.net_device.0* %35, i32 %36, i32 31)
  %38 = trunc i64 %37 to i32
  %39 = or i32 %29, %38
  %40 = sext i32 %39 to i64
  ret i64 %40
}

declare dso_local %struct.octeon_ethernet* @netdev_priv(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
