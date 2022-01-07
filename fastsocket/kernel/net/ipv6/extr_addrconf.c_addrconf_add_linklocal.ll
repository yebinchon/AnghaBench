; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_addrconf.c_addrconf_add_linklocal.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_addrconf.c_addrconf_add_linklocal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inet6_dev = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.in6_addr = type { i32 }
%struct.inet6_ifaddr = type { i32, i32 }

@IFA_F_PERMANENT = common dso_local global i32 0, align 4
@IFA_LINK = common dso_local global i32 0, align 4
@IFA_F_OPTIMISTIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inet6_dev*, %struct.in6_addr*)* @addrconf_add_linklocal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @addrconf_add_linklocal(%struct.inet6_dev* %0, %struct.in6_addr* %1) #0 {
  %3 = alloca %struct.inet6_dev*, align 8
  %4 = alloca %struct.in6_addr*, align 8
  %5 = alloca %struct.inet6_ifaddr*, align 8
  %6 = alloca i32, align 4
  store %struct.inet6_dev* %0, %struct.inet6_dev** %3, align 8
  store %struct.in6_addr* %1, %struct.in6_addr** %4, align 8
  %7 = load i32, i32* @IFA_F_PERMANENT, align 4
  store i32 %7, i32* %6, align 4
  %8 = load %struct.inet6_dev*, %struct.inet6_dev** %3, align 8
  %9 = load %struct.in6_addr*, %struct.in6_addr** %4, align 8
  %10 = load i32, i32* @IFA_LINK, align 4
  %11 = load i32, i32* %6, align 4
  %12 = call %struct.inet6_ifaddr* @ipv6_add_addr(%struct.inet6_dev* %8, %struct.in6_addr* %9, i32 64, i32 %10, i32 %11, i32 0, i32 0)
  store %struct.inet6_ifaddr* %12, %struct.inet6_ifaddr** %5, align 8
  %13 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %5, align 8
  %14 = call i32 @IS_ERR(%struct.inet6_ifaddr* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %30, label %16

16:                                               ; preds = %2
  %17 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %5, align 8
  %18 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %17, i32 0, i32 1
  %19 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %5, align 8
  %20 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.inet6_dev*, %struct.inet6_dev** %3, align 8
  %23 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @addrconf_prefix_route(i32* %18, i32 %21, i32 %24, i32 0, i32 0)
  %26 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %5, align 8
  %27 = call i32 @addrconf_dad_start(%struct.inet6_ifaddr* %26, i32 0)
  %28 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %5, align 8
  %29 = call i32 @in6_ifa_put(%struct.inet6_ifaddr* %28)
  br label %30

30:                                               ; preds = %16, %2
  ret void
}

declare dso_local %struct.inet6_ifaddr* @ipv6_add_addr(%struct.inet6_dev*, %struct.in6_addr*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @IS_ERR(%struct.inet6_ifaddr*) #1

declare dso_local i32 @addrconf_prefix_route(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @addrconf_dad_start(%struct.inet6_ifaddr*, i32) #1

declare dso_local i32 @in6_ifa_put(%struct.inet6_ifaddr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
