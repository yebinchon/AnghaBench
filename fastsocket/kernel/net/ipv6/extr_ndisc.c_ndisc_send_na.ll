; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_ndisc.c_ndisc_send_na.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_ndisc.c_ndisc_send_na.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.neighbour = type { i32 }
%struct.in6_addr = type { i32 }
%struct.inet6_ifaddr = type { i32 }
%struct.icmp6hdr = type { i32, i32, i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_8__ = type { i32 }

@NDISC_NEIGHBOUR_ADVERTISEMENT = common dso_local global i32 0, align 4
@IFA_F_OPTIMISTIC = common dso_local global i32 0, align 4
@ND_OPT_TARGET_LL_ADDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.neighbour*, %struct.in6_addr*, %struct.in6_addr*, i32, i32, i32, i32)* @ndisc_send_na to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ndisc_send_na(%struct.net_device* %0, %struct.neighbour* %1, %struct.in6_addr* %2, %struct.in6_addr* %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca %struct.neighbour*, align 8
  %11 = alloca %struct.in6_addr*, align 8
  %12 = alloca %struct.in6_addr*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.in6_addr, align 4
  %18 = alloca %struct.inet6_ifaddr*, align 8
  %19 = alloca %struct.in6_addr*, align 8
  %20 = alloca %struct.icmp6hdr, align 4
  store %struct.net_device* %0, %struct.net_device** %9, align 8
  store %struct.neighbour* %1, %struct.neighbour** %10, align 8
  store %struct.in6_addr* %2, %struct.in6_addr** %11, align 8
  store %struct.in6_addr* %3, %struct.in6_addr** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %21 = getelementptr inbounds %struct.icmp6hdr, %struct.icmp6hdr* %20, i32 0, i32 0
  store i32 0, i32* %21, align 4
  %22 = getelementptr inbounds %struct.icmp6hdr, %struct.icmp6hdr* %20, i32 0, i32 1
  store i32 0, i32* %22, align 4
  %23 = getelementptr inbounds %struct.icmp6hdr, %struct.icmp6hdr* %20, i32 0, i32 2
  store i32 0, i32* %23, align 4
  %24 = getelementptr inbounds %struct.icmp6hdr, %struct.icmp6hdr* %20, i32 0, i32 3
  %25 = load i32, i32* @NDISC_NEIGHBOUR_ADVERTISEMENT, align 4
  store i32 %25, i32* %24, align 4
  %26 = load %struct.net_device*, %struct.net_device** %9, align 8
  %27 = call %struct.TYPE_7__* @dev_net(%struct.net_device* %26)
  %28 = load %struct.in6_addr*, %struct.in6_addr** %12, align 8
  %29 = load %struct.net_device*, %struct.net_device** %9, align 8
  %30 = call %struct.inet6_ifaddr* @ipv6_get_ifaddr(%struct.TYPE_7__* %27, %struct.in6_addr* %28, %struct.net_device* %29, i32 1)
  store %struct.inet6_ifaddr* %30, %struct.inet6_ifaddr** %18, align 8
  %31 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %18, align 8
  %32 = icmp ne %struct.inet6_ifaddr* %31, null
  br i1 %32, label %33, label %45

33:                                               ; preds = %8
  %34 = load %struct.in6_addr*, %struct.in6_addr** %12, align 8
  store %struct.in6_addr* %34, %struct.in6_addr** %19, align 8
  %35 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %18, align 8
  %36 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @IFA_F_OPTIMISTIC, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %33
  store i32 0, i32* %15, align 4
  br label %42

42:                                               ; preds = %41, %33
  %43 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %18, align 8
  %44 = call i32 @in6_ifa_put(%struct.inet6_ifaddr* %43)
  br label %62

45:                                               ; preds = %8
  %46 = load %struct.net_device*, %struct.net_device** %9, align 8
  %47 = call %struct.TYPE_7__* @dev_net(%struct.net_device* %46)
  %48 = load %struct.net_device*, %struct.net_device** %9, align 8
  %49 = load %struct.in6_addr*, %struct.in6_addr** %11, align 8
  %50 = load %struct.net_device*, %struct.net_device** %9, align 8
  %51 = call %struct.TYPE_7__* @dev_net(%struct.net_device* %50)
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call %struct.TYPE_8__* @inet6_sk(i32 %54)
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i64 @ipv6_dev_get_saddr(%struct.TYPE_7__* %47, %struct.net_device* %48, %struct.in6_addr* %49, i32 %57, %struct.in6_addr* %17)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %45
  br label %82

61:                                               ; preds = %45
  store %struct.in6_addr* %17, %struct.in6_addr** %19, align 8
  br label %62

62:                                               ; preds = %61, %42
  %63 = load i32, i32* %13, align 4
  %64 = getelementptr inbounds %struct.icmp6hdr, %struct.icmp6hdr* %20, i32 0, i32 0
  store i32 %63, i32* %64, align 4
  %65 = load i32, i32* %14, align 4
  %66 = getelementptr inbounds %struct.icmp6hdr, %struct.icmp6hdr* %20, i32 0, i32 1
  store i32 %65, i32* %66, align 4
  %67 = load i32, i32* %15, align 4
  %68 = getelementptr inbounds %struct.icmp6hdr, %struct.icmp6hdr* %20, i32 0, i32 2
  store i32 %67, i32* %68, align 4
  %69 = load %struct.net_device*, %struct.net_device** %9, align 8
  %70 = load %struct.neighbour*, %struct.neighbour** %10, align 8
  %71 = load %struct.in6_addr*, %struct.in6_addr** %11, align 8
  %72 = load %struct.in6_addr*, %struct.in6_addr** %19, align 8
  %73 = load %struct.in6_addr*, %struct.in6_addr** %12, align 8
  %74 = load i32, i32* %16, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %62
  %77 = load i32, i32* @ND_OPT_TARGET_LL_ADDR, align 4
  br label %79

78:                                               ; preds = %62
  br label %79

79:                                               ; preds = %78, %76
  %80 = phi i32 [ %77, %76 ], [ 0, %78 ]
  %81 = call i32 @__ndisc_send(%struct.net_device* %69, %struct.neighbour* %70, %struct.in6_addr* %71, %struct.in6_addr* %72, %struct.icmp6hdr* %20, %struct.in6_addr* %73, i32 %80)
  br label %82

82:                                               ; preds = %79, %60
  ret void
}

declare dso_local %struct.inet6_ifaddr* @ipv6_get_ifaddr(%struct.TYPE_7__*, %struct.in6_addr*, %struct.net_device*, i32) #1

declare dso_local %struct.TYPE_7__* @dev_net(%struct.net_device*) #1

declare dso_local i32 @in6_ifa_put(%struct.inet6_ifaddr*) #1

declare dso_local i64 @ipv6_dev_get_saddr(%struct.TYPE_7__*, %struct.net_device*, %struct.in6_addr*, i32, %struct.in6_addr*) #1

declare dso_local %struct.TYPE_8__* @inet6_sk(i32) #1

declare dso_local i32 @__ndisc_send(%struct.net_device*, %struct.neighbour*, %struct.in6_addr*, %struct.in6_addr*, %struct.icmp6hdr*, %struct.in6_addr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
