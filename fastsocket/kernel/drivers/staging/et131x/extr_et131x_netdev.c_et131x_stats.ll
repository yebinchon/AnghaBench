; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/et131x/extr_et131x_netdev.c_et131x_stats.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/et131x/extr_et131x_netdev.c_et131x_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device_stats = type { i64, i32, i64, i32, i32, i32, i64, i32, i32 }
%struct.net_device = type { i32 }
%struct.et131x_adapter = type { %struct.TYPE_2__, %struct.net_device_stats }
%struct.TYPE_2__ = type { i64, i32, i64, i32, i32, i32, i64, i64, i64, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.net_device_stats* @et131x_stats(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.et131x_adapter*, align 8
  %4 = alloca %struct.net_device_stats*, align 8
  %5 = alloca %struct.TYPE_2__*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call %struct.et131x_adapter* @netdev_priv(%struct.net_device* %6)
  store %struct.et131x_adapter* %7, %struct.et131x_adapter** %3, align 8
  %8 = load %struct.et131x_adapter*, %struct.et131x_adapter** %3, align 8
  %9 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %8, i32 0, i32 1
  store %struct.net_device_stats* %9, %struct.net_device_stats** %4, align 8
  %10 = load %struct.et131x_adapter*, %struct.et131x_adapter** %3, align 8
  %11 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %10, i32 0, i32 0
  store %struct.TYPE_2__* %11, %struct.TYPE_2__** %5, align 8
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 10
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.net_device_stats*, %struct.net_device_stats** %4, align 8
  %16 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %15, i32 0, i32 8
  store i32 %14, i32* %16, align 4
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 9
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.net_device_stats*, %struct.net_device_stats** %4, align 8
  %21 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %20, i32 0, i32 7
  store i32 %19, i32* %21, align 8
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 8
  %27 = load i64, i64* %26, align 8
  %28 = add nsw i64 %24, %27
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = add nsw i64 %28, %31
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 7
  %35 = load i64, i64* %34, align 8
  %36 = add nsw i64 %32, %35
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 6
  %39 = load i64, i64* %38, align 8
  %40 = add nsw i64 %36, %39
  %41 = load %struct.net_device_stats*, %struct.net_device_stats** %4, align 8
  %42 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %41, i32 0, i32 6
  store i64 %40, i64* %42, align 8
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 5
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.net_device_stats*, %struct.net_device_stats** %4, align 8
  %47 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %46, i32 0, i32 5
  store i32 %45, i32* %47, align 8
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.net_device_stats*, %struct.net_device_stats** %4, align 8
  %52 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %51, i32 0, i32 4
  store i32 %50, i32* %52, align 4
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.net_device_stats*, %struct.net_device_stats** %4, align 8
  %57 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %56, i32 0, i32 3
  store i32 %55, i32* %57, align 8
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.net_device_stats*, %struct.net_device_stats** %4, align 8
  %62 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %61, i32 0, i32 2
  store i64 %60, i64* %62, align 8
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.net_device_stats*, %struct.net_device_stats** %4, align 8
  %67 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 8
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.net_device_stats*, %struct.net_device_stats** %4, align 8
  %72 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %71, i32 0, i32 0
  store i64 %70, i64* %72, align 8
  %73 = load %struct.net_device_stats*, %struct.net_device_stats** %4, align 8
  ret %struct.net_device_stats* %73
}

declare dso_local %struct.et131x_adapter* @netdev_priv(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
