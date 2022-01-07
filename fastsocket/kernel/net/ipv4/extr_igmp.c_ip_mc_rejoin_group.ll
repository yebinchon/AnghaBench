; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_igmp.c_ip_mc_rejoin_group.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_igmp.c_ip_mc_rejoin_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_mc_list = type { i64, %struct.in_device* }
%struct.in_device = type { i32 }

@IGMPV2_HOST_MEMBERSHIP_REPORT = common dso_local global i32 0, align 4
@IGMPV3_HOST_MEMBERSHIP_REPORT = common dso_local global i32 0, align 4
@IGMP_ALL_HOSTS = common dso_local global i64 0, align 8
@IGMP_HOST_MEMBERSHIP_REPORT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ip_mc_rejoin_group(%struct.ip_mc_list* %0) #0 {
  %2 = alloca %struct.ip_mc_list*, align 8
  store %struct.ip_mc_list* %0, %struct.ip_mc_list** %2, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
