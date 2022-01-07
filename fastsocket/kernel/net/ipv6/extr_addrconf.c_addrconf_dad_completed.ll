; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_addrconf.c_addrconf_dad_completed.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_addrconf.c_addrconf_dad_completed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inet6_ifaddr = type { i32, i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__, i32, %struct.net_device* }
%struct.TYPE_3__ = type { i64, i32 }
%struct.net_device = type { i32 }

@RTM_NEWADDR = common dso_local global i32 0, align 4
@IFF_LOOPBACK = common dso_local global i32 0, align 4
@IPV6_ADDR_LINKLOCAL = common dso_local global i32 0, align 4
@in6addr_linklocal_allrouters = common dso_local global i32 0, align 4
@IF_RS_SENT = common dso_local global i32 0, align 4
@AC_RS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inet6_ifaddr*)* @addrconf_dad_completed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @addrconf_dad_completed(%struct.inet6_ifaddr* %0) #0 {
  %2 = alloca %struct.inet6_ifaddr*, align 8
  %3 = alloca %struct.net_device*, align 8
  store %struct.inet6_ifaddr* %0, %struct.inet6_ifaddr** %2, align 8
  %4 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %2, align 8
  %5 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %4, i32 0, i32 2
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 2
  %8 = load %struct.net_device*, %struct.net_device** %7, align 8
  store %struct.net_device* %8, %struct.net_device** %3, align 8
  %9 = load i32, i32* @RTM_NEWADDR, align 4
  %10 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %2, align 8
  %11 = call i32 @ipv6_ifa_notify(i32 %9, %struct.inet6_ifaddr* %10)
  %12 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %2, align 8
  %13 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %12, i32 0, i32 2
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = call i64 @ipv6_accept_ra(%struct.TYPE_4__* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %72

17:                                               ; preds = %1
  %18 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %2, align 8
  %19 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %18, i32 0, i32 2
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp sgt i64 %23, 0
  br i1 %24, label %25, label %72

25:                                               ; preds = %17
  %26 = load %struct.net_device*, %struct.net_device** %3, align 8
  %27 = getelementptr inbounds %struct.net_device, %struct.net_device* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @IFF_LOOPBACK, align 4
  %30 = and i32 %28, %29
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %72

32:                                               ; preds = %25
  %33 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %2, align 8
  %34 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %33, i32 0, i32 3
  %35 = call i32 @ipv6_addr_type(i32* %34)
  %36 = load i32, i32* @IPV6_ADDR_LINKLOCAL, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %72

39:                                               ; preds = %32
  %40 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %2, align 8
  %41 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %40, i32 0, i32 2
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 2
  %44 = load %struct.net_device*, %struct.net_device** %43, align 8
  %45 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %2, align 8
  %46 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %45, i32 0, i32 3
  %47 = call i32 @ndisc_send_rs(%struct.net_device* %44, i32* %46, i32* @in6addr_linklocal_allrouters)
  %48 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %2, align 8
  %49 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %48, i32 0, i32 1
  %50 = call i32 @spin_lock_bh(i32* %49)
  %51 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %2, align 8
  %52 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %51, i32 0, i32 0
  store i32 1, i32* %52, align 8
  %53 = load i32, i32* @IF_RS_SENT, align 4
  %54 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %2, align 8
  %55 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %54, i32 0, i32 2
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = or i32 %58, %53
  store i32 %59, i32* %57, align 8
  %60 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %2, align 8
  %61 = load i32, i32* @AC_RS, align 4
  %62 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %2, align 8
  %63 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %62, i32 0, i32 2
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @addrconf_mod_timer(%struct.inet6_ifaddr* %60, i32 %61, i32 %67)
  %69 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %2, align 8
  %70 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %69, i32 0, i32 1
  %71 = call i32 @spin_unlock_bh(i32* %70)
  br label %72

72:                                               ; preds = %39, %32, %25, %17, %1
  ret void
}

declare dso_local i32 @ipv6_ifa_notify(i32, %struct.inet6_ifaddr*) #1

declare dso_local i64 @ipv6_accept_ra(%struct.TYPE_4__*) #1

declare dso_local i32 @ipv6_addr_type(i32*) #1

declare dso_local i32 @ndisc_send_rs(%struct.net_device*, i32*, i32*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @addrconf_mod_timer(%struct.inet6_ifaddr*, i32, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
