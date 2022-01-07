; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_addrconf.c_ipv6_chk_same_addr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_addrconf.c_ipv6_chk_same_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inet6_ifaddr = type { %struct.TYPE_2__*, i32, %struct.inet6_ifaddr* }
%struct.TYPE_2__ = type { %struct.net_device* }
%struct.net_device = type { i32 }
%struct.net = type { i32 }
%struct.in6_addr = type { i32 }

@inet6_addr_lst = common dso_local global %struct.inet6_ifaddr** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.in6_addr*, %struct.net_device*)* @ipv6_chk_same_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipv6_chk_same_addr(%struct.net* %0, %struct.in6_addr* %1, %struct.net_device* %2) #0 {
  %4 = alloca %struct.net*, align 8
  %5 = alloca %struct.in6_addr*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.inet6_ifaddr*, align 8
  %8 = alloca i64, align 8
  store %struct.net* %0, %struct.net** %4, align 8
  store %struct.in6_addr* %1, %struct.in6_addr** %5, align 8
  store %struct.net_device* %2, %struct.net_device** %6, align 8
  %9 = load %struct.in6_addr*, %struct.in6_addr** %5, align 8
  %10 = call i64 @ipv6_addr_hash(%struct.in6_addr* %9)
  store i64 %10, i64* %8, align 8
  %11 = load %struct.inet6_ifaddr**, %struct.inet6_ifaddr*** @inet6_addr_lst, align 8
  %12 = load i64, i64* %8, align 8
  %13 = getelementptr inbounds %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %11, i64 %12
  %14 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %13, align 8
  store %struct.inet6_ifaddr* %14, %struct.inet6_ifaddr** %7, align 8
  br label %15

15:                                               ; preds = %49, %3
  %16 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %7, align 8
  %17 = icmp ne %struct.inet6_ifaddr* %16, null
  br i1 %17, label %18, label %53

18:                                               ; preds = %15
  %19 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %7, align 8
  %20 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load %struct.net_device*, %struct.net_device** %22, align 8
  %24 = call i32 @dev_net(%struct.net_device* %23)
  %25 = load %struct.net*, %struct.net** %4, align 8
  %26 = call i32 @net_eq(i32 %24, %struct.net* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %18
  br label %49

29:                                               ; preds = %18
  %30 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %7, align 8
  %31 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %30, i32 0, i32 1
  %32 = load %struct.in6_addr*, %struct.in6_addr** %5, align 8
  %33 = call i64 @ipv6_addr_equal(i32* %31, %struct.in6_addr* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %48

35:                                               ; preds = %29
  %36 = load %struct.net_device*, %struct.net_device** %6, align 8
  %37 = icmp eq %struct.net_device* %36, null
  br i1 %37, label %46, label %38

38:                                               ; preds = %35
  %39 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %7, align 8
  %40 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load %struct.net_device*, %struct.net_device** %42, align 8
  %44 = load %struct.net_device*, %struct.net_device** %6, align 8
  %45 = icmp eq %struct.net_device* %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %38, %35
  br label %53

47:                                               ; preds = %38
  br label %48

48:                                               ; preds = %47, %29
  br label %49

49:                                               ; preds = %48, %28
  %50 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %7, align 8
  %51 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %50, i32 0, i32 2
  %52 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %51, align 8
  store %struct.inet6_ifaddr* %52, %struct.inet6_ifaddr** %7, align 8
  br label %15

53:                                               ; preds = %46, %15
  %54 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %7, align 8
  %55 = icmp ne %struct.inet6_ifaddr* %54, null
  %56 = zext i1 %55 to i32
  ret i32 %56
}

declare dso_local i64 @ipv6_addr_hash(%struct.in6_addr*) #1

declare dso_local i32 @net_eq(i32, %struct.net*) #1

declare dso_local i32 @dev_net(%struct.net_device*) #1

declare dso_local i64 @ipv6_addr_equal(i32*, %struct.in6_addr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
