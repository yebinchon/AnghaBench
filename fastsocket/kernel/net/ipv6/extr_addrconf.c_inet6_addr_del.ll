; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_addrconf.c_inet6_addr_del.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_addrconf.c_inet6_addr_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.in6_addr = type { i32 }
%struct.inet6_ifaddr = type { i32, i32, %struct.inet6_ifaddr* }
%struct.inet6_dev = type { i32, i32, %struct.inet6_ifaddr* }
%struct.net_device = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@EADDRNOTAVAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, i32, %struct.in6_addr*, i32)* @inet6_addr_del to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @inet6_addr_del(%struct.net* %0, i32 %1, %struct.in6_addr* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.in6_addr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.inet6_ifaddr*, align 8
  %11 = alloca %struct.inet6_dev*, align 8
  %12 = alloca %struct.net_device*, align 8
  store %struct.net* %0, %struct.net** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.in6_addr* %2, %struct.in6_addr** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  %14 = icmp ugt i32 %13, 128
  br i1 %14, label %15, label %18

15:                                               ; preds = %4
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %5, align 4
  br label %85

18:                                               ; preds = %4
  %19 = load %struct.net*, %struct.net** %6, align 8
  %20 = load i32, i32* %7, align 4
  %21 = call %struct.net_device* @__dev_get_by_index(%struct.net* %19, i32 %20)
  store %struct.net_device* %21, %struct.net_device** %12, align 8
  %22 = load %struct.net_device*, %struct.net_device** %12, align 8
  %23 = icmp ne %struct.net_device* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %18
  %25 = load i32, i32* @ENODEV, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %5, align 4
  br label %85

27:                                               ; preds = %18
  %28 = load %struct.net_device*, %struct.net_device** %12, align 8
  %29 = call %struct.inet6_dev* @__in6_dev_get(%struct.net_device* %28)
  store %struct.inet6_dev* %29, %struct.inet6_dev** %11, align 8
  %30 = icmp eq %struct.inet6_dev* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = load i32, i32* @ENXIO, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %5, align 4
  br label %85

34:                                               ; preds = %27
  %35 = load %struct.inet6_dev*, %struct.inet6_dev** %11, align 8
  %36 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %35, i32 0, i32 0
  %37 = call i32 @read_lock_bh(i32* %36)
  %38 = load %struct.inet6_dev*, %struct.inet6_dev** %11, align 8
  %39 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %38, i32 0, i32 2
  %40 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %39, align 8
  store %struct.inet6_ifaddr* %40, %struct.inet6_ifaddr** %10, align 8
  br label %41

41:                                               ; preds = %75, %34
  %42 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %10, align 8
  %43 = icmp ne %struct.inet6_ifaddr* %42, null
  br i1 %43, label %44, label %79

44:                                               ; preds = %41
  %45 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %10, align 8
  %46 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* %9, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %74

50:                                               ; preds = %44
  %51 = load %struct.in6_addr*, %struct.in6_addr** %8, align 8
  %52 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %10, align 8
  %53 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %52, i32 0, i32 1
  %54 = call i64 @ipv6_addr_equal(%struct.in6_addr* %51, i32* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %74

56:                                               ; preds = %50
  %57 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %10, align 8
  %58 = call i32 @in6_ifa_hold(%struct.inet6_ifaddr* %57)
  %59 = load %struct.inet6_dev*, %struct.inet6_dev** %11, align 8
  %60 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %59, i32 0, i32 0
  %61 = call i32 @read_unlock_bh(i32* %60)
  %62 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %10, align 8
  %63 = call i32 @ipv6_del_addr(%struct.inet6_ifaddr* %62)
  %64 = load %struct.inet6_dev*, %struct.inet6_dev** %11, align 8
  %65 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %64, i32 0, i32 2
  %66 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %65, align 8
  %67 = icmp eq %struct.inet6_ifaddr* %66, null
  br i1 %67, label %68, label %73

68:                                               ; preds = %56
  %69 = load %struct.inet6_dev*, %struct.inet6_dev** %11, align 8
  %70 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @addrconf_ifdown(i32 %71, i32 1)
  br label %73

73:                                               ; preds = %68, %56
  store i32 0, i32* %5, align 4
  br label %85

74:                                               ; preds = %50, %44
  br label %75

75:                                               ; preds = %74
  %76 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %10, align 8
  %77 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %76, i32 0, i32 2
  %78 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %77, align 8
  store %struct.inet6_ifaddr* %78, %struct.inet6_ifaddr** %10, align 8
  br label %41

79:                                               ; preds = %41
  %80 = load %struct.inet6_dev*, %struct.inet6_dev** %11, align 8
  %81 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %80, i32 0, i32 0
  %82 = call i32 @read_unlock_bh(i32* %81)
  %83 = load i32, i32* @EADDRNOTAVAIL, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %5, align 4
  br label %85

85:                                               ; preds = %79, %73, %31, %24, %15
  %86 = load i32, i32* %5, align 4
  ret i32 %86
}

declare dso_local %struct.net_device* @__dev_get_by_index(%struct.net*, i32) #1

declare dso_local %struct.inet6_dev* @__in6_dev_get(%struct.net_device*) #1

declare dso_local i32 @read_lock_bh(i32*) #1

declare dso_local i64 @ipv6_addr_equal(%struct.in6_addr*, i32*) #1

declare dso_local i32 @in6_ifa_hold(%struct.inet6_ifaddr*) #1

declare dso_local i32 @read_unlock_bh(i32*) #1

declare dso_local i32 @ipv6_del_addr(%struct.inet6_ifaddr*) #1

declare dso_local i32 @addrconf_ifdown(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
