; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_ip6_tunnel.c_ip6_tnl_exit_net.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_ip6_tunnel.c_ip6_tnl_exit_net.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.ip6_tnl_net = type { i32 }

@ip6_tnl_net_id = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net*)* @ip6_tnl_exit_net to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ip6_tnl_exit_net(%struct.net* %0) #0 {
  %2 = alloca %struct.net*, align 8
  %3 = alloca %struct.ip6_tnl_net*, align 8
  store %struct.net* %0, %struct.net** %2, align 8
  %4 = load %struct.net*, %struct.net** %2, align 8
  %5 = load i32, i32* @ip6_tnl_net_id, align 4
  %6 = call %struct.ip6_tnl_net* @net_generic(%struct.net* %4, i32 %5)
  store %struct.ip6_tnl_net* %6, %struct.ip6_tnl_net** %3, align 8
  %7 = call i32 (...) @rtnl_lock()
  %8 = load %struct.ip6_tnl_net*, %struct.ip6_tnl_net** %3, align 8
  %9 = call i32 @ip6_tnl_destroy_tunnels(%struct.ip6_tnl_net* %8)
  %10 = call i32 (...) @rtnl_unlock()
  %11 = load %struct.ip6_tnl_net*, %struct.ip6_tnl_net** %3, align 8
  %12 = call i32 @kfree(%struct.ip6_tnl_net* %11)
  ret void
}

declare dso_local %struct.ip6_tnl_net* @net_generic(%struct.net*, i32) #1

declare dso_local i32 @rtnl_lock(...) #1

declare dso_local i32 @ip6_tnl_destroy_tunnels(%struct.ip6_tnl_net*) #1

declare dso_local i32 @rtnl_unlock(...) #1

declare dso_local i32 @kfree(%struct.ip6_tnl_net*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
