; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/openvswitch/extr_vport-internal_dev.c_ovs_internal_dev_get_vport.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/openvswitch/extr_vport-internal_dev.c_ovs_internal_dev_get_vport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vport = type { i32 }
%struct.net_device = type { i32 }
%struct.TYPE_2__ = type { %struct.vport* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.vport* @ovs_internal_dev_get_vport(%struct.net_device* %0) #0 {
  %2 = alloca %struct.vport*, align 8
  %3 = alloca %struct.net_device*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %4 = load %struct.net_device*, %struct.net_device** %3, align 8
  %5 = call i32 @ovs_is_internal_dev(%struct.net_device* %4)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  store %struct.vport* null, %struct.vport** %2, align 8
  br label %13

8:                                                ; preds = %1
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = call %struct.TYPE_2__* @internal_dev_priv(%struct.net_device* %9)
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.vport*, %struct.vport** %11, align 8
  store %struct.vport* %12, %struct.vport** %2, align 8
  br label %13

13:                                               ; preds = %8, %7
  %14 = load %struct.vport*, %struct.vport** %2, align 8
  ret %struct.vport* %14
}

declare dso_local i32 @ovs_is_internal_dev(%struct.net_device*) #1

declare dso_local %struct.TYPE_2__* @internal_dev_priv(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
