; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_ipip.c_ipip_bucket.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_ipip.c_ipip_bucket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipip_net = type { i32 }
%struct.ip_tunnel = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ip_tunnel** (%struct.ipip_net*, %struct.ip_tunnel*)* @ipip_bucket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ip_tunnel** @ipip_bucket(%struct.ipip_net* %0, %struct.ip_tunnel* %1) #0 {
  %3 = alloca %struct.ipip_net*, align 8
  %4 = alloca %struct.ip_tunnel*, align 8
  store %struct.ipip_net* %0, %struct.ipip_net** %3, align 8
  store %struct.ip_tunnel* %1, %struct.ip_tunnel** %4, align 8
  %5 = load %struct.ipip_net*, %struct.ipip_net** %3, align 8
  %6 = load %struct.ip_tunnel*, %struct.ip_tunnel** %4, align 8
  %7 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %6, i32 0, i32 0
  %8 = call %struct.ip_tunnel** @__ipip_bucket(%struct.ipip_net* %5, i32* %7)
  ret %struct.ip_tunnel** %8
}

declare dso_local %struct.ip_tunnel** @__ipip_bucket(%struct.ipip_net*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
