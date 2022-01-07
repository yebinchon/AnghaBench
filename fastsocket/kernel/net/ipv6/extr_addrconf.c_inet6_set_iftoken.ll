; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_addrconf.c_inet6_set_iftoken.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_addrconf.c_inet6_set_iftoken.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inet6_dev = type { i32, i32, %struct.inet6_ifaddr*, i32, %struct.TYPE_4__, %struct.TYPE_3__, %struct.net_device* }
%struct.inet6_ifaddr = type { i32, i64, i64, i64, %struct.inet6_ifaddr* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64 }
%struct.net_device = type { i32 }
%struct.in6_addr = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@IFF_LOOPBACK = common dso_local global i32 0, align 4
@IFF_NOARP = common dso_local global i32 0, align 4
@IF_READY = common dso_local global i32 0, align 4
@IFA_F_TENTATIVE = common dso_local global i32 0, align 4
@IFA_F_OPTIMISTIC = common dso_local global i32 0, align 4
@in6addr_linklocal_allrouters = common dso_local global i32 0, align 4
@IF_RS_SENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inet6_dev*, %struct.in6_addr*)* @inet6_set_iftoken to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @inet6_set_iftoken(%struct.inet6_dev* %0, %struct.in6_addr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inet6_dev*, align 8
  %5 = alloca %struct.in6_addr*, align 8
  %6 = alloca %struct.inet6_ifaddr*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.in6_addr, align 8
  store %struct.inet6_dev* %0, %struct.inet6_dev** %4, align 8
  store %struct.in6_addr* %1, %struct.in6_addr** %5, align 8
  %10 = load %struct.inet6_dev*, %struct.inet6_dev** %4, align 8
  %11 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %10, i32 0, i32 6
  %12 = load %struct.net_device*, %struct.net_device** %11, align 8
  store %struct.net_device* %12, %struct.net_device** %7, align 8
  store i32 0, i32* %8, align 4
  %13 = load %struct.in6_addr*, %struct.in6_addr** %5, align 8
  %14 = icmp eq %struct.in6_addr* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %137

18:                                               ; preds = %2
  %19 = load %struct.in6_addr*, %struct.in6_addr** %5, align 8
  %20 = call i64 @ipv6_addr_any(%struct.in6_addr* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %137

25:                                               ; preds = %18
  %26 = load %struct.net_device*, %struct.net_device** %7, align 8
  %27 = getelementptr inbounds %struct.net_device, %struct.net_device* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @IFF_LOOPBACK, align 4
  %30 = load i32, i32* @IFF_NOARP, align 4
  %31 = or i32 %29, %30
  %32 = and i32 %28, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %25
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %137

37:                                               ; preds = %25
  %38 = load %struct.inet6_dev*, %struct.inet6_dev** %4, align 8
  %39 = call i32 @ipv6_accept_ra(%struct.inet6_dev* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %37
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  br label %137

44:                                               ; preds = %37
  %45 = load %struct.inet6_dev*, %struct.inet6_dev** %4, align 8
  %46 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %45, i32 0, i32 5
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp sle i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %44
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %3, align 4
  br label %137

53:                                               ; preds = %44
  %54 = load %struct.inet6_dev*, %struct.inet6_dev** %4, align 8
  %55 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %54, i32 0, i32 1
  %56 = call i32 @write_lock_bh(i32* %55)
  %57 = call i32 @BUILD_BUG_ON(i32 1)
  %58 = load %struct.inet6_dev*, %struct.inet6_dev** %4, align 8
  %59 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %58, i32 0, i32 4
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = add nsw i64 %61, 8
  %63 = load %struct.in6_addr*, %struct.in6_addr** %5, align 8
  %64 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = add nsw i64 %65, 8
  %67 = call i32 @memcpy(i64 %62, i64 %66, i32 8)
  %68 = load %struct.inet6_dev*, %struct.inet6_dev** %4, align 8
  %69 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %68, i32 0, i32 1
  %70 = call i32 @write_unlock_bh(i32* %69)
  %71 = load %struct.inet6_dev*, %struct.inet6_dev** %4, align 8
  %72 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 8
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %92, label %75

75:                                               ; preds = %53
  %76 = load %struct.inet6_dev*, %struct.inet6_dev** %4, align 8
  %77 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @IF_READY, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %92

82:                                               ; preds = %75
  %83 = load %struct.net_device*, %struct.net_device** %7, align 8
  %84 = load i32, i32* @IFA_F_TENTATIVE, align 4
  %85 = load i32, i32* @IFA_F_OPTIMISTIC, align 4
  %86 = or i32 %84, %85
  %87 = call i32 @ipv6_get_lladdr(%struct.net_device* %83, %struct.in6_addr* %9, i32 %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %92, label %89

89:                                               ; preds = %82
  %90 = load %struct.net_device*, %struct.net_device** %7, align 8
  %91 = call i32 @ndisc_send_rs(%struct.net_device* %90, %struct.in6_addr* %9, i32* @in6addr_linklocal_allrouters)
  store i32 1, i32* %8, align 4
  br label %92

92:                                               ; preds = %89, %82, %75, %53
  %93 = load %struct.inet6_dev*, %struct.inet6_dev** %4, align 8
  %94 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %93, i32 0, i32 1
  %95 = call i32 @write_lock_bh(i32* %94)
  %96 = load i32, i32* %8, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %104

98:                                               ; preds = %92
  %99 = load i32, i32* @IF_RS_SENT, align 4
  %100 = load %struct.inet6_dev*, %struct.inet6_dev** %4, align 8
  %101 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = or i32 %102, %99
  store i32 %103, i32* %101, align 8
  br label %104

104:                                              ; preds = %98, %92
  %105 = load %struct.inet6_dev*, %struct.inet6_dev** %4, align 8
  %106 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %105, i32 0, i32 2
  %107 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %106, align 8
  store %struct.inet6_ifaddr* %107, %struct.inet6_ifaddr** %6, align 8
  br label %108

108:                                              ; preds = %128, %104
  %109 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %6, align 8
  %110 = icmp ne %struct.inet6_ifaddr* %109, null
  br i1 %110, label %111, label %132

111:                                              ; preds = %108
  %112 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %6, align 8
  %113 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %112, i32 0, i32 0
  %114 = call i32 @spin_lock(i32* %113)
  %115 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %6, align 8
  %116 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %115, i32 0, i32 3
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %124

119:                                              ; preds = %111
  %120 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %6, align 8
  %121 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %120, i32 0, i32 2
  store i64 0, i64* %121, align 8
  %122 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %6, align 8
  %123 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %122, i32 0, i32 1
  store i64 0, i64* %123, align 8
  br label %124

124:                                              ; preds = %119, %111
  %125 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %6, align 8
  %126 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %125, i32 0, i32 0
  %127 = call i32 @spin_unlock(i32* %126)
  br label %128

128:                                              ; preds = %124
  %129 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %6, align 8
  %130 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %129, i32 0, i32 4
  %131 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %130, align 8
  store %struct.inet6_ifaddr* %131, %struct.inet6_ifaddr** %6, align 8
  br label %108

132:                                              ; preds = %108
  %133 = load %struct.inet6_dev*, %struct.inet6_dev** %4, align 8
  %134 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %133, i32 0, i32 1
  %135 = call i32 @write_unlock_bh(i32* %134)
  %136 = call i32 @addrconf_verify(i32 0)
  store i32 0, i32* %3, align 4
  br label %137

137:                                              ; preds = %132, %50, %41, %34, %22, %15
  %138 = load i32, i32* %3, align 4
  ret i32 %138
}

declare dso_local i64 @ipv6_addr_any(%struct.in6_addr*) #1

declare dso_local i32 @ipv6_accept_ra(%struct.inet6_dev*) #1

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i32 @memcpy(i64, i64, i32) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

declare dso_local i32 @ipv6_get_lladdr(%struct.net_device*, %struct.in6_addr*, i32) #1

declare dso_local i32 @ndisc_send_rs(%struct.net_device*, %struct.in6_addr*, i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @addrconf_verify(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
