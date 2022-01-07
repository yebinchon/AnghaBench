; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_addrconf.c_ipv6_get_ifaddr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_addrconf.c_ipv6_get_ifaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inet6_ifaddr = type { i32, %struct.TYPE_2__*, i32, %struct.inet6_ifaddr* }
%struct.TYPE_2__ = type { %struct.net_device* }
%struct.net_device = type { i32 }
%struct.net = type { i32 }
%struct.in6_addr = type { i32 }

@addrconf_hash_lock = common dso_local global i32 0, align 4
@inet6_addr_lst = common dso_local global %struct.inet6_ifaddr** null, align 8
@IFA_LINK = common dso_local global i32 0, align 4
@IFA_HOST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.inet6_ifaddr* @ipv6_get_ifaddr(%struct.net* %0, %struct.in6_addr* %1, %struct.net_device* %2, i32 %3) #0 {
  %5 = alloca %struct.net*, align 8
  %6 = alloca %struct.in6_addr*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.inet6_ifaddr*, align 8
  %10 = alloca i64, align 8
  store %struct.net* %0, %struct.net** %5, align 8
  store %struct.in6_addr* %1, %struct.in6_addr** %6, align 8
  store %struct.net_device* %2, %struct.net_device** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.in6_addr*, %struct.in6_addr** %6, align 8
  %12 = call i64 @ipv6_addr_hash(%struct.in6_addr* %11)
  store i64 %12, i64* %10, align 8
  %13 = call i32 @read_lock_bh(i32* @addrconf_hash_lock)
  %14 = load %struct.inet6_ifaddr**, %struct.inet6_ifaddr*** @inet6_addr_lst, align 8
  %15 = load i64, i64* %10, align 8
  %16 = getelementptr inbounds %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %14, i64 %15
  %17 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %16, align 8
  store %struct.inet6_ifaddr* %17, %struct.inet6_ifaddr** %9, align 8
  br label %18

18:                                               ; preds = %66, %4
  %19 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %9, align 8
  %20 = icmp ne %struct.inet6_ifaddr* %19, null
  br i1 %20, label %21, label %70

21:                                               ; preds = %18
  %22 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %9, align 8
  %23 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %22, i32 0, i32 1
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load %struct.net_device*, %struct.net_device** %25, align 8
  %27 = call i32 @dev_net(%struct.net_device* %26)
  %28 = load %struct.net*, %struct.net** %5, align 8
  %29 = call i32 @net_eq(i32 %27, %struct.net* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %21
  br label %66

32:                                               ; preds = %21
  %33 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %9, align 8
  %34 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %33, i32 0, i32 2
  %35 = load %struct.in6_addr*, %struct.in6_addr** %6, align 8
  %36 = call i64 @ipv6_addr_equal(i32* %34, %struct.in6_addr* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %65

38:                                               ; preds = %32
  %39 = load %struct.net_device*, %struct.net_device** %7, align 8
  %40 = icmp eq %struct.net_device* %39, null
  br i1 %40, label %61, label %41

41:                                               ; preds = %38
  %42 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %9, align 8
  %43 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %42, i32 0, i32 1
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load %struct.net_device*, %struct.net_device** %45, align 8
  %47 = load %struct.net_device*, %struct.net_device** %7, align 8
  %48 = icmp eq %struct.net_device* %46, %47
  br i1 %48, label %61, label %49

49:                                               ; preds = %41
  %50 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %9, align 8
  %51 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @IFA_LINK, align 4
  %54 = load i32, i32* @IFA_HOST, align 4
  %55 = or i32 %53, %54
  %56 = and i32 %52, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %64, label %58

58:                                               ; preds = %49
  %59 = load i32, i32* %8, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %64, label %61

61:                                               ; preds = %58, %41, %38
  %62 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %9, align 8
  %63 = call i32 @in6_ifa_hold(%struct.inet6_ifaddr* %62)
  br label %70

64:                                               ; preds = %58, %49
  br label %65

65:                                               ; preds = %64, %32
  br label %66

66:                                               ; preds = %65, %31
  %67 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %9, align 8
  %68 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %67, i32 0, i32 3
  %69 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %68, align 8
  store %struct.inet6_ifaddr* %69, %struct.inet6_ifaddr** %9, align 8
  br label %18

70:                                               ; preds = %61, %18
  %71 = call i32 @read_unlock_bh(i32* @addrconf_hash_lock)
  %72 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %9, align 8
  ret %struct.inet6_ifaddr* %72
}

declare dso_local i64 @ipv6_addr_hash(%struct.in6_addr*) #1

declare dso_local i32 @read_lock_bh(i32*) #1

declare dso_local i32 @net_eq(i32, %struct.net*) #1

declare dso_local i32 @dev_net(%struct.net_device*) #1

declare dso_local i64 @ipv6_addr_equal(i32*, %struct.in6_addr*) #1

declare dso_local i32 @in6_ifa_hold(%struct.inet6_ifaddr*) #1

declare dso_local i32 @read_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
