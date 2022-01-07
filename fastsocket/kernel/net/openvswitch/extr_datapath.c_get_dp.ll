; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/openvswitch/extr_datapath.c_get_dp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/openvswitch/extr_datapath.c_get_dp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.datapath = type { i32 }
%struct.net = type { i32 }
%struct.net_device = type { i32 }
%struct.vport = type { %struct.datapath* }

@dev_base_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.datapath* (%struct.net*, i32)* @get_dp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.datapath* @get_dp(%struct.net* %0, i32 %1) #0 {
  %3 = alloca %struct.net*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.datapath*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.vport*, align 8
  store %struct.net* %0, %struct.net** %3, align 8
  store i32 %1, i32* %4, align 4
  store %struct.datapath* null, %struct.datapath** %5, align 8
  %8 = call i32 @read_lock(i32* @dev_base_lock)
  %9 = load %struct.net*, %struct.net** %3, align 8
  %10 = load i32, i32* %4, align 4
  %11 = call %struct.net_device* @__dev_get_by_index(%struct.net* %9, i32 %10)
  store %struct.net_device* %11, %struct.net_device** %6, align 8
  %12 = load %struct.net_device*, %struct.net_device** %6, align 8
  %13 = icmp ne %struct.net_device* %12, null
  br i1 %13, label %14, label %24

14:                                               ; preds = %2
  %15 = load %struct.net_device*, %struct.net_device** %6, align 8
  %16 = call %struct.vport* @ovs_internal_dev_get_vport(%struct.net_device* %15)
  store %struct.vport* %16, %struct.vport** %7, align 8
  %17 = load %struct.vport*, %struct.vport** %7, align 8
  %18 = icmp ne %struct.vport* %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %14
  %20 = load %struct.vport*, %struct.vport** %7, align 8
  %21 = getelementptr inbounds %struct.vport, %struct.vport* %20, i32 0, i32 0
  %22 = load %struct.datapath*, %struct.datapath** %21, align 8
  store %struct.datapath* %22, %struct.datapath** %5, align 8
  br label %23

23:                                               ; preds = %19, %14
  br label %24

24:                                               ; preds = %23, %2
  %25 = call i32 @read_unlock(i32* @dev_base_lock)
  %26 = load %struct.datapath*, %struct.datapath** %5, align 8
  ret %struct.datapath* %26
}

declare dso_local i32 @read_lock(i32*) #1

declare dso_local %struct.net_device* @__dev_get_by_index(%struct.net*, i32) #1

declare dso_local %struct.vport* @ovs_internal_dev_get_vport(%struct.net_device*) #1

declare dso_local i32 @read_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
