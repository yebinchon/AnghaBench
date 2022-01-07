; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_addrconf.c_ipv6_chk_prefix.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_addrconf.c_ipv6_chk_prefix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in6_addr = type { i32 }
%struct.net_device = type { i32 }
%struct.inet6_dev = type { i32, %struct.inet6_ifaddr* }
%struct.inet6_ifaddr = type { i32, i32, %struct.inet6_ifaddr* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipv6_chk_prefix(%struct.in6_addr* %0, %struct.net_device* %1) #0 {
  %3 = alloca %struct.in6_addr*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.inet6_dev*, align 8
  %6 = alloca %struct.inet6_ifaddr*, align 8
  %7 = alloca i32, align 4
  store %struct.in6_addr* %0, %struct.in6_addr** %3, align 8
  store %struct.net_device* %1, %struct.net_device** %4, align 8
  store i32 0, i32* %7, align 4
  %8 = call i32 (...) @rcu_read_lock()
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call %struct.inet6_dev* @__in6_dev_get(%struct.net_device* %9)
  store %struct.inet6_dev* %10, %struct.inet6_dev** %5, align 8
  %11 = load %struct.inet6_dev*, %struct.inet6_dev** %5, align 8
  %12 = icmp ne %struct.inet6_dev* %11, null
  br i1 %12, label %13, label %43

13:                                               ; preds = %2
  %14 = load %struct.inet6_dev*, %struct.inet6_dev** %5, align 8
  %15 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %14, i32 0, i32 0
  %16 = call i32 @read_lock_bh(i32* %15)
  %17 = load %struct.inet6_dev*, %struct.inet6_dev** %5, align 8
  %18 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %17, i32 0, i32 1
  %19 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %18, align 8
  store %struct.inet6_ifaddr* %19, %struct.inet6_ifaddr** %6, align 8
  br label %20

20:                                               ; preds = %35, %13
  %21 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %6, align 8
  %22 = icmp ne %struct.inet6_ifaddr* %21, null
  br i1 %22, label %23, label %39

23:                                               ; preds = %20
  %24 = load %struct.in6_addr*, %struct.in6_addr** %3, align 8
  %25 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %6, align 8
  %26 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %25, i32 0, i32 1
  %27 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %6, align 8
  %28 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @ipv6_prefix_equal(%struct.in6_addr* %24, i32* %26, i32 %29)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %23
  br label %39

34:                                               ; preds = %23
  br label %35

35:                                               ; preds = %34
  %36 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %6, align 8
  %37 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %36, i32 0, i32 2
  %38 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %37, align 8
  store %struct.inet6_ifaddr* %38, %struct.inet6_ifaddr** %6, align 8
  br label %20

39:                                               ; preds = %33, %20
  %40 = load %struct.inet6_dev*, %struct.inet6_dev** %5, align 8
  %41 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %40, i32 0, i32 0
  %42 = call i32 @read_unlock_bh(i32* %41)
  br label %43

43:                                               ; preds = %39, %2
  %44 = call i32 (...) @rcu_read_unlock()
  %45 = load i32, i32* %7, align 4
  ret i32 %45
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.inet6_dev* @__in6_dev_get(%struct.net_device*) #1

declare dso_local i32 @read_lock_bh(i32*) #1

declare dso_local i32 @ipv6_prefix_equal(%struct.in6_addr*, i32*, i32) #1

declare dso_local i32 @read_unlock_bh(i32*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
