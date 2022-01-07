; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_ndisc.c_pndisc_destructor.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_ndisc.c_pndisc_destructor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pneigh_entry = type { %struct.net_device*, i32 }
%struct.net_device = type { i32 }
%struct.in6_addr = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pneigh_entry*)* @pndisc_destructor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pndisc_destructor(%struct.pneigh_entry* %0) #0 {
  %2 = alloca %struct.pneigh_entry*, align 8
  %3 = alloca %struct.in6_addr*, align 8
  %4 = alloca %struct.in6_addr, align 4
  %5 = alloca %struct.net_device*, align 8
  store %struct.pneigh_entry* %0, %struct.pneigh_entry** %2, align 8
  %6 = load %struct.pneigh_entry*, %struct.pneigh_entry** %2, align 8
  %7 = getelementptr inbounds %struct.pneigh_entry, %struct.pneigh_entry* %6, i32 0, i32 1
  %8 = bitcast i32* %7 to %struct.in6_addr*
  store %struct.in6_addr* %8, %struct.in6_addr** %3, align 8
  %9 = load %struct.pneigh_entry*, %struct.pneigh_entry** %2, align 8
  %10 = getelementptr inbounds %struct.pneigh_entry, %struct.pneigh_entry* %9, i32 0, i32 0
  %11 = load %struct.net_device*, %struct.net_device** %10, align 8
  store %struct.net_device* %11, %struct.net_device** %5, align 8
  %12 = load %struct.net_device*, %struct.net_device** %5, align 8
  %13 = icmp eq %struct.net_device* %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %1
  %15 = load %struct.net_device*, %struct.net_device** %5, align 8
  %16 = call i32* @__in6_dev_get(%struct.net_device* %15)
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %14, %1
  br label %24

19:                                               ; preds = %14
  %20 = load %struct.in6_addr*, %struct.in6_addr** %3, align 8
  %21 = call i32 @addrconf_addr_solict_mult(%struct.in6_addr* %20, %struct.in6_addr* %4)
  %22 = load %struct.net_device*, %struct.net_device** %5, align 8
  %23 = call i32 @ipv6_dev_mc_dec(%struct.net_device* %22, %struct.in6_addr* %4)
  br label %24

24:                                               ; preds = %19, %18
  ret void
}

declare dso_local i32* @__in6_dev_get(%struct.net_device*) #1

declare dso_local i32 @addrconf_addr_solict_mult(%struct.in6_addr*, %struct.in6_addr*) #1

declare dso_local i32 @ipv6_dev_mc_dec(%struct.net_device*, %struct.in6_addr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
