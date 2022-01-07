; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/8021q/extr_vlan.c_vlan_exit_net.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/8021q/extr_vlan.c_vlan_exit_net.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.vlan_net = type { i32 }

@vlan_net_id = common dso_local global i32 0, align 4
@vlan_link_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net*)* @vlan_exit_net to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vlan_exit_net(%struct.net* %0) #0 {
  %2 = alloca %struct.net*, align 8
  %3 = alloca %struct.vlan_net*, align 8
  store %struct.net* %0, %struct.net** %2, align 8
  %4 = load %struct.net*, %struct.net** %2, align 8
  %5 = load i32, i32* @vlan_net_id, align 4
  %6 = call %struct.vlan_net* @net_generic(%struct.net* %4, i32 %5)
  store %struct.vlan_net* %6, %struct.vlan_net** %3, align 8
  %7 = load %struct.net*, %struct.net** %2, align 8
  %8 = call i32 @rtnl_kill_links(%struct.net* %7, i32* @vlan_link_ops)
  %9 = load %struct.net*, %struct.net** %2, align 8
  %10 = call i32 @vlan_proc_cleanup(%struct.net* %9)
  %11 = load %struct.vlan_net*, %struct.vlan_net** %3, align 8
  %12 = call i32 @kfree(%struct.vlan_net* %11)
  ret void
}

declare dso_local %struct.vlan_net* @net_generic(%struct.net*, i32) #1

declare dso_local i32 @rtnl_kill_links(%struct.net*, i32*) #1

declare dso_local i32 @vlan_proc_cleanup(%struct.net*) #1

declare dso_local i32 @kfree(%struct.vlan_net*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
