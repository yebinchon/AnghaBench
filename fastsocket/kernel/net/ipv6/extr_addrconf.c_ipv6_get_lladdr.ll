; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_addrconf.c_ipv6_get_lladdr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_addrconf.c_ipv6_get_lladdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.in6_addr = type { i32 }
%struct.inet6_dev = type { i32, %struct.inet6_ifaddr* }
%struct.inet6_ifaddr = type { i64, i8, i32, %struct.inet6_ifaddr* }

@EADDRNOTAVAIL = common dso_local global i32 0, align 4
@IFA_LINK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipv6_get_lladdr(%struct.net_device* %0, %struct.in6_addr* %1, i8 zeroext %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.in6_addr*, align 8
  %6 = alloca i8, align 1
  %7 = alloca %struct.inet6_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.inet6_ifaddr*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.in6_addr* %1, %struct.in6_addr** %5, align 8
  store i8 %2, i8* %6, align 1
  %10 = load i32, i32* @EADDRNOTAVAIL, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %8, align 4
  %12 = call i32 (...) @rcu_read_lock()
  %13 = load %struct.net_device*, %struct.net_device** %4, align 8
  %14 = call %struct.inet6_dev* @__in6_dev_get(%struct.net_device* %13)
  store %struct.inet6_dev* %14, %struct.inet6_dev** %7, align 8
  %15 = icmp ne %struct.inet6_dev* %14, null
  br i1 %15, label %16, label %55

16:                                               ; preds = %3
  %17 = load %struct.inet6_dev*, %struct.inet6_dev** %7, align 8
  %18 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %17, i32 0, i32 0
  %19 = call i32 @read_lock_bh(i32* %18)
  %20 = load %struct.inet6_dev*, %struct.inet6_dev** %7, align 8
  %21 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %20, i32 0, i32 1
  %22 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %21, align 8
  store %struct.inet6_ifaddr* %22, %struct.inet6_ifaddr** %9, align 8
  br label %23

23:                                               ; preds = %47, %16
  %24 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %9, align 8
  %25 = icmp ne %struct.inet6_ifaddr* %24, null
  br i1 %25, label %26, label %51

26:                                               ; preds = %23
  %27 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %9, align 8
  %28 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @IFA_LINK, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %46

32:                                               ; preds = %26
  %33 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %9, align 8
  %34 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %33, i32 0, i32 1
  %35 = load i8, i8* %34, align 8
  %36 = zext i8 %35 to i32
  %37 = load i8, i8* %6, align 1
  %38 = zext i8 %37 to i32
  %39 = and i32 %36, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %46, label %41

41:                                               ; preds = %32
  %42 = load %struct.in6_addr*, %struct.in6_addr** %5, align 8
  %43 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %9, align 8
  %44 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %43, i32 0, i32 2
  %45 = call i32 @ipv6_addr_copy(%struct.in6_addr* %42, i32* %44)
  store i32 0, i32* %8, align 4
  br label %51

46:                                               ; preds = %32, %26
  br label %47

47:                                               ; preds = %46
  %48 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %9, align 8
  %49 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %48, i32 0, i32 3
  %50 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %49, align 8
  store %struct.inet6_ifaddr* %50, %struct.inet6_ifaddr** %9, align 8
  br label %23

51:                                               ; preds = %41, %23
  %52 = load %struct.inet6_dev*, %struct.inet6_dev** %7, align 8
  %53 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %52, i32 0, i32 0
  %54 = call i32 @read_unlock_bh(i32* %53)
  br label %55

55:                                               ; preds = %51, %3
  %56 = call i32 (...) @rcu_read_unlock()
  %57 = load i32, i32* %8, align 4
  ret i32 %57
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.inet6_dev* @__in6_dev_get(%struct.net_device*) #1

declare dso_local i32 @read_lock_bh(i32*) #1

declare dso_local i32 @ipv6_addr_copy(%struct.in6_addr*, i32*) #1

declare dso_local i32 @read_unlock_bh(i32*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
