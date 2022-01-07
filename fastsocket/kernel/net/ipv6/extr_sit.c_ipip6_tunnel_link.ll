; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_sit.c_ipip6_tunnel_link.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_sit.c_ipip6_tunnel_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sit_net = type { i32 }
%struct.ip_tunnel = type { %struct.ip_tunnel* }

@ipip6_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sit_net*, %struct.ip_tunnel*)* @ipip6_tunnel_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipip6_tunnel_link(%struct.sit_net* %0, %struct.ip_tunnel* %1) #0 {
  %3 = alloca %struct.sit_net*, align 8
  %4 = alloca %struct.ip_tunnel*, align 8
  %5 = alloca %struct.ip_tunnel**, align 8
  store %struct.sit_net* %0, %struct.sit_net** %3, align 8
  store %struct.ip_tunnel* %1, %struct.ip_tunnel** %4, align 8
  %6 = load %struct.sit_net*, %struct.sit_net** %3, align 8
  %7 = load %struct.ip_tunnel*, %struct.ip_tunnel** %4, align 8
  %8 = call %struct.ip_tunnel** @ipip6_bucket(%struct.sit_net* %6, %struct.ip_tunnel* %7)
  store %struct.ip_tunnel** %8, %struct.ip_tunnel*** %5, align 8
  %9 = load %struct.ip_tunnel**, %struct.ip_tunnel*** %5, align 8
  %10 = load %struct.ip_tunnel*, %struct.ip_tunnel** %9, align 8
  %11 = load %struct.ip_tunnel*, %struct.ip_tunnel** %4, align 8
  %12 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %11, i32 0, i32 0
  store %struct.ip_tunnel* %10, %struct.ip_tunnel** %12, align 8
  %13 = call i32 @write_lock_bh(i32* @ipip6_lock)
  %14 = load %struct.ip_tunnel*, %struct.ip_tunnel** %4, align 8
  %15 = load %struct.ip_tunnel**, %struct.ip_tunnel*** %5, align 8
  store %struct.ip_tunnel* %14, %struct.ip_tunnel** %15, align 8
  %16 = call i32 @write_unlock_bh(i32* @ipip6_lock)
  ret void
}

declare dso_local %struct.ip_tunnel** @ipip6_bucket(%struct.sit_net*, %struct.ip_tunnel*) #1

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
