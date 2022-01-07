; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_addrconf.c_addrconf_add_dev.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_addrconf.c_addrconf_add_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inet6_dev = type { i32 }
%struct.net_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.inet6_dev* (%struct.net_device*)* @addrconf_add_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.inet6_dev* @addrconf_add_dev(%struct.net_device* %0) #0 {
  %2 = alloca %struct.inet6_dev*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.inet6_dev*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %5 = call i32 (...) @ASSERT_RTNL()
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.inet6_dev* @ipv6_find_idev(%struct.net_device* %6)
  store %struct.inet6_dev* %7, %struct.inet6_dev** %4, align 8
  %8 = icmp eq %struct.inet6_dev* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store %struct.inet6_dev* null, %struct.inet6_dev** %2, align 8
  br label %16

10:                                               ; preds = %1
  %11 = load %struct.net_device*, %struct.net_device** %3, align 8
  %12 = call i32 @addrconf_add_mroute(%struct.net_device* %11)
  %13 = load %struct.net_device*, %struct.net_device** %3, align 8
  %14 = call i32 @addrconf_add_lroute(%struct.net_device* %13)
  %15 = load %struct.inet6_dev*, %struct.inet6_dev** %4, align 8
  store %struct.inet6_dev* %15, %struct.inet6_dev** %2, align 8
  br label %16

16:                                               ; preds = %10, %9
  %17 = load %struct.inet6_dev*, %struct.inet6_dev** %2, align 8
  ret %struct.inet6_dev* %17
}

declare dso_local i32 @ASSERT_RTNL(...) #1

declare dso_local %struct.inet6_dev* @ipv6_find_idev(%struct.net_device*) #1

declare dso_local i32 @addrconf_add_mroute(%struct.net_device*) #1

declare dso_local i32 @addrconf_add_lroute(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
