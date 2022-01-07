; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_neighbour.c_neigh_parms_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_neighbour.c_neigh_parms_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.neigh_parms = type { %struct.neigh_parms*, i32*, i32, %struct.net_device*, i32, i32, i32, %struct.neigh_table* }
%struct.net_device = type { %struct.net_device_ops* }
%struct.net_device_ops = type { i64 (%struct.net_device.0*, %struct.neigh_parms.1*)* }
%struct.net_device.0 = type opaque
%struct.neigh_parms.1 = type opaque
%struct.neigh_table = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.neigh_parms* }
%struct.net = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.neigh_parms* @neigh_parms_alloc(%struct.net_device* %0, %struct.neigh_table* %1) #0 {
  %3 = alloca %struct.neigh_parms*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.neigh_table*, align 8
  %6 = alloca %struct.neigh_parms*, align 8
  %7 = alloca %struct.neigh_parms*, align 8
  %8 = alloca %struct.net*, align 8
  %9 = alloca %struct.net_device_ops*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.neigh_table* %1, %struct.neigh_table** %5, align 8
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = call %struct.net* @dev_net(%struct.net_device* %10)
  store %struct.net* %11, %struct.net** %8, align 8
  %12 = load %struct.net_device*, %struct.net_device** %4, align 8
  %13 = getelementptr inbounds %struct.net_device, %struct.net_device* %12, i32 0, i32 0
  %14 = load %struct.net_device_ops*, %struct.net_device_ops** %13, align 8
  store %struct.net_device_ops* %14, %struct.net_device_ops** %9, align 8
  %15 = load %struct.neigh_table*, %struct.neigh_table** %5, align 8
  %16 = load %struct.net*, %struct.net** %8, align 8
  %17 = call %struct.neigh_parms* @lookup_neigh_parms(%struct.neigh_table* %15, %struct.net* %16, i32 0)
  store %struct.neigh_parms* %17, %struct.neigh_parms** %7, align 8
  %18 = load %struct.neigh_parms*, %struct.neigh_parms** %7, align 8
  %19 = icmp ne %struct.neigh_parms* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %2
  store %struct.neigh_parms* null, %struct.neigh_parms** %3, align 8
  br label %88

21:                                               ; preds = %2
  %22 = load %struct.neigh_parms*, %struct.neigh_parms** %7, align 8
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call %struct.neigh_parms* @kmemdup(%struct.neigh_parms* %22, i32 56, i32 %23)
  store %struct.neigh_parms* %24, %struct.neigh_parms** %6, align 8
  %25 = load %struct.neigh_parms*, %struct.neigh_parms** %6, align 8
  %26 = icmp ne %struct.neigh_parms* %25, null
  br i1 %26, label %27, label %86

27:                                               ; preds = %21
  %28 = load %struct.neigh_table*, %struct.neigh_table** %5, align 8
  %29 = load %struct.neigh_parms*, %struct.neigh_parms** %6, align 8
  %30 = getelementptr inbounds %struct.neigh_parms, %struct.neigh_parms* %29, i32 0, i32 7
  store %struct.neigh_table* %28, %struct.neigh_table** %30, align 8
  %31 = load %struct.neigh_parms*, %struct.neigh_parms** %6, align 8
  %32 = getelementptr inbounds %struct.neigh_parms, %struct.neigh_parms* %31, i32 0, i32 6
  %33 = call i32 @atomic_set(i32* %32, i32 1)
  %34 = load %struct.neigh_parms*, %struct.neigh_parms** %6, align 8
  %35 = getelementptr inbounds %struct.neigh_parms, %struct.neigh_parms* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @neigh_rand_reach_time(i32 %36)
  %38 = load %struct.neigh_parms*, %struct.neigh_parms** %6, align 8
  %39 = getelementptr inbounds %struct.neigh_parms, %struct.neigh_parms* %38, i32 0, i32 5
  store i32 %37, i32* %39, align 4
  %40 = load %struct.net_device_ops*, %struct.net_device_ops** %9, align 8
  %41 = getelementptr inbounds %struct.net_device_ops, %struct.net_device_ops* %40, i32 0, i32 0
  %42 = load i64 (%struct.net_device.0*, %struct.neigh_parms.1*)*, i64 (%struct.net_device.0*, %struct.neigh_parms.1*)** %41, align 8
  %43 = icmp ne i64 (%struct.net_device.0*, %struct.neigh_parms.1*)* %42, null
  br i1 %43, label %44, label %57

44:                                               ; preds = %27
  %45 = load %struct.net_device_ops*, %struct.net_device_ops** %9, align 8
  %46 = getelementptr inbounds %struct.net_device_ops, %struct.net_device_ops* %45, i32 0, i32 0
  %47 = load i64 (%struct.net_device.0*, %struct.neigh_parms.1*)*, i64 (%struct.net_device.0*, %struct.neigh_parms.1*)** %46, align 8
  %48 = load %struct.net_device*, %struct.net_device** %4, align 8
  %49 = bitcast %struct.net_device* %48 to %struct.net_device.0*
  %50 = load %struct.neigh_parms*, %struct.neigh_parms** %6, align 8
  %51 = bitcast %struct.neigh_parms* %50 to %struct.neigh_parms.1*
  %52 = call i64 %47(%struct.net_device.0* %49, %struct.neigh_parms.1* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %44
  %55 = load %struct.neigh_parms*, %struct.neigh_parms** %6, align 8
  %56 = call i32 @kfree(%struct.neigh_parms* %55)
  store %struct.neigh_parms* null, %struct.neigh_parms** %3, align 8
  br label %88

57:                                               ; preds = %44, %27
  %58 = load %struct.net_device*, %struct.net_device** %4, align 8
  %59 = call i32 @dev_hold(%struct.net_device* %58)
  %60 = load %struct.net_device*, %struct.net_device** %4, align 8
  %61 = load %struct.neigh_parms*, %struct.neigh_parms** %6, align 8
  %62 = getelementptr inbounds %struct.neigh_parms, %struct.neigh_parms* %61, i32 0, i32 3
  store %struct.net_device* %60, %struct.net_device** %62, align 8
  %63 = load %struct.neigh_parms*, %struct.neigh_parms** %6, align 8
  %64 = getelementptr inbounds %struct.neigh_parms, %struct.neigh_parms* %63, i32 0, i32 2
  %65 = load %struct.net*, %struct.net** %8, align 8
  %66 = call i32 @hold_net(%struct.net* %65)
  %67 = call i32 @write_pnet(i32* %64, i32 %66)
  %68 = load %struct.neigh_parms*, %struct.neigh_parms** %6, align 8
  %69 = getelementptr inbounds %struct.neigh_parms, %struct.neigh_parms* %68, i32 0, i32 1
  store i32* null, i32** %69, align 8
  %70 = load %struct.neigh_table*, %struct.neigh_table** %5, align 8
  %71 = getelementptr inbounds %struct.neigh_table, %struct.neigh_table* %70, i32 0, i32 0
  %72 = call i32 @write_lock_bh(i32* %71)
  %73 = load %struct.neigh_table*, %struct.neigh_table** %5, align 8
  %74 = getelementptr inbounds %struct.neigh_table, %struct.neigh_table* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load %struct.neigh_parms*, %struct.neigh_parms** %75, align 8
  %77 = load %struct.neigh_parms*, %struct.neigh_parms** %6, align 8
  %78 = getelementptr inbounds %struct.neigh_parms, %struct.neigh_parms* %77, i32 0, i32 0
  store %struct.neigh_parms* %76, %struct.neigh_parms** %78, align 8
  %79 = load %struct.neigh_parms*, %struct.neigh_parms** %6, align 8
  %80 = load %struct.neigh_table*, %struct.neigh_table** %5, align 8
  %81 = getelementptr inbounds %struct.neigh_table, %struct.neigh_table* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  store %struct.neigh_parms* %79, %struct.neigh_parms** %82, align 8
  %83 = load %struct.neigh_table*, %struct.neigh_table** %5, align 8
  %84 = getelementptr inbounds %struct.neigh_table, %struct.neigh_table* %83, i32 0, i32 0
  %85 = call i32 @write_unlock_bh(i32* %84)
  br label %86

86:                                               ; preds = %57, %21
  %87 = load %struct.neigh_parms*, %struct.neigh_parms** %6, align 8
  store %struct.neigh_parms* %87, %struct.neigh_parms** %3, align 8
  br label %88

88:                                               ; preds = %86, %54, %20
  %89 = load %struct.neigh_parms*, %struct.neigh_parms** %3, align 8
  ret %struct.neigh_parms* %89
}

declare dso_local %struct.net* @dev_net(%struct.net_device*) #1

declare dso_local %struct.neigh_parms* @lookup_neigh_parms(%struct.neigh_table*, %struct.net*, i32) #1

declare dso_local %struct.neigh_parms* @kmemdup(%struct.neigh_parms*, i32, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @neigh_rand_reach_time(i32) #1

declare dso_local i32 @kfree(%struct.neigh_parms*) #1

declare dso_local i32 @dev_hold(%struct.net_device*) #1

declare dso_local i32 @write_pnet(i32*, i32) #1

declare dso_local i32 @hold_net(%struct.net*) #1

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
