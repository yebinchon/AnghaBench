; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_addrconf.c_addrconf_ifdown.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_addrconf.c_addrconf_ifdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inet6_ifaddr = type { i32, %struct.inet6_ifaddr*, i32, %struct.inet6_ifaddr*, %struct.inet6_ifaddr*, %struct.inet6_ifaddr*, %struct.inet6_dev* }
%struct.inet6_dev = type { i32, i32, i32, i32, i32, %struct.inet6_ifaddr*, %struct.inet6_ifaddr*, i32 }
%struct.net_device = type { i32 }
%struct.net = type { i32 }

@nd_tbl = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@IN6_ADDR_HSIZE = common dso_local global i32 0, align 4
@inet6_addr_lst = common dso_local global %struct.inet6_ifaddr** null, align 8
@addrconf_hash_lock = common dso_local global i32 0, align 4
@IF_RS_SENT = common dso_local global i32 0, align 4
@IF_RA_RCVD = common dso_local global i32 0, align 4
@IF_READY = common dso_local global i32 0, align 4
@ifa_state_lock = common dso_local global i32 0, align 4
@INET6_IFADDR_STATE_DEAD = common dso_local global i32 0, align 4
@RTM_DELADDR = common dso_local global i32 0, align 4
@inet6addr_chain = common dso_local global i32 0, align 4
@NETDEV_DOWN = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @addrconf_ifdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @addrconf_ifdown(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.inet6_dev*, align 8
  %7 = alloca %struct.inet6_ifaddr*, align 8
  %8 = alloca %struct.inet6_ifaddr**, align 8
  %9 = alloca %struct.net*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.net_device*, %struct.net_device** %4, align 8
  %13 = call %struct.net* @dev_net(%struct.net_device* %12)
  store %struct.net* %13, %struct.net** %9, align 8
  %14 = call i32 (...) @ASSERT_RTNL()
  %15 = load %struct.net*, %struct.net** %9, align 8
  %16 = load %struct.net_device*, %struct.net_device** %4, align 8
  %17 = call i32 @rt6_ifdown(%struct.net* %15, %struct.net_device* %16)
  %18 = load %struct.net_device*, %struct.net_device** %4, align 8
  %19 = call i32 @neigh_ifdown(i32* @nd_tbl, %struct.net_device* %18)
  %20 = load %struct.net_device*, %struct.net_device** %4, align 8
  %21 = call %struct.inet6_dev* @__in6_dev_get(%struct.net_device* %20)
  store %struct.inet6_dev* %21, %struct.inet6_dev** %6, align 8
  %22 = load %struct.inet6_dev*, %struct.inet6_dev** %6, align 8
  %23 = icmp eq %struct.inet6_dev* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %2
  %25 = load i32, i32* @ENODEV, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %170

27:                                               ; preds = %2
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %27
  %31 = load %struct.inet6_dev*, %struct.inet6_dev** %6, align 8
  %32 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %31, i32 0, i32 0
  store i32 1, i32* %32, align 8
  %33 = load %struct.net_device*, %struct.net_device** %4, align 8
  %34 = getelementptr inbounds %struct.net_device, %struct.net_device* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @rcu_assign_pointer(i32 %35, i32* null)
  %37 = load %struct.inet6_dev*, %struct.inet6_dev** %6, align 8
  %38 = call i32 @snmp6_unregister_dev(%struct.inet6_dev* %37)
  br label %39

39:                                               ; preds = %30, %27
  store i32 0, i32* %11, align 4
  br label %40

40:                                               ; preds = %76, %39
  %41 = load i32, i32* %11, align 4
  %42 = load i32, i32* @IN6_ADDR_HSIZE, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %79

44:                                               ; preds = %40
  %45 = load %struct.inet6_ifaddr**, %struct.inet6_ifaddr*** @inet6_addr_lst, align 8
  %46 = load i32, i32* %11, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %45, i64 %47
  store %struct.inet6_ifaddr** %48, %struct.inet6_ifaddr*** %8, align 8
  %49 = call i32 @write_lock_bh(i32* @addrconf_hash_lock)
  br label %50

50:                                               ; preds = %71, %60, %44
  %51 = load %struct.inet6_ifaddr**, %struct.inet6_ifaddr*** %8, align 8
  %52 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %51, align 8
  store %struct.inet6_ifaddr* %52, %struct.inet6_ifaddr** %7, align 8
  %53 = icmp ne %struct.inet6_ifaddr* %52, null
  br i1 %53, label %54, label %74

54:                                               ; preds = %50
  %55 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %7, align 8
  %56 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %55, i32 0, i32 6
  %57 = load %struct.inet6_dev*, %struct.inet6_dev** %56, align 8
  %58 = load %struct.inet6_dev*, %struct.inet6_dev** %6, align 8
  %59 = icmp eq %struct.inet6_dev* %57, %58
  br i1 %59, label %60, label %71

60:                                               ; preds = %54
  %61 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %7, align 8
  %62 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %61, i32 0, i32 5
  %63 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %62, align 8
  %64 = load %struct.inet6_ifaddr**, %struct.inet6_ifaddr*** %8, align 8
  store %struct.inet6_ifaddr* %63, %struct.inet6_ifaddr** %64, align 8
  %65 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %7, align 8
  %66 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %65, i32 0, i32 5
  store %struct.inet6_ifaddr* null, %struct.inet6_ifaddr** %66, align 8
  %67 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %7, align 8
  %68 = call i32 @addrconf_del_timer(%struct.inet6_ifaddr* %67)
  %69 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %7, align 8
  %70 = call i32 @in6_ifa_put(%struct.inet6_ifaddr* %69)
  br label %50

71:                                               ; preds = %54
  %72 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %7, align 8
  %73 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %72, i32 0, i32 5
  store %struct.inet6_ifaddr** %73, %struct.inet6_ifaddr*** %8, align 8
  br label %50

74:                                               ; preds = %50
  %75 = call i32 @write_unlock_bh(i32* @addrconf_hash_lock)
  br label %76

76:                                               ; preds = %74
  %77 = load i32, i32* %11, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %11, align 4
  br label %40

79:                                               ; preds = %40
  %80 = load %struct.inet6_dev*, %struct.inet6_dev** %6, align 8
  %81 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %80, i32 0, i32 4
  %82 = call i32 @write_lock_bh(i32* %81)
  %83 = load i32, i32* %5, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %96, label %85

85:                                               ; preds = %79
  %86 = load i32, i32* @IF_RS_SENT, align 4
  %87 = load i32, i32* @IF_RA_RCVD, align 4
  %88 = or i32 %86, %87
  %89 = load i32, i32* @IF_READY, align 4
  %90 = or i32 %88, %89
  %91 = xor i32 %90, -1
  %92 = load %struct.inet6_dev*, %struct.inet6_dev** %6, align 8
  %93 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = and i32 %94, %91
  store i32 %95, i32* %93, align 4
  br label %96

96:                                               ; preds = %85, %79
  br label %97

97:                                               ; preds = %134, %96
  %98 = load %struct.inet6_dev*, %struct.inet6_dev** %6, align 8
  %99 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %98, i32 0, i32 5
  %100 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %99, align 8
  store %struct.inet6_ifaddr* %100, %struct.inet6_ifaddr** %7, align 8
  %101 = icmp ne %struct.inet6_ifaddr* %100, null
  br i1 %101, label %102, label %140

102:                                              ; preds = %97
  %103 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %7, align 8
  %104 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %103, i32 0, i32 1
  %105 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %104, align 8
  %106 = load %struct.inet6_dev*, %struct.inet6_dev** %6, align 8
  %107 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %106, i32 0, i32 5
  store %struct.inet6_ifaddr* %105, %struct.inet6_ifaddr** %107, align 8
  %108 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %7, align 8
  %109 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %108, i32 0, i32 1
  store %struct.inet6_ifaddr* null, %struct.inet6_ifaddr** %109, align 8
  %110 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %7, align 8
  %111 = call i32 @addrconf_del_timer(%struct.inet6_ifaddr* %110)
  %112 = load %struct.inet6_dev*, %struct.inet6_dev** %6, align 8
  %113 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %112, i32 0, i32 4
  %114 = call i32 @write_unlock_bh(i32* %113)
  %115 = call i32 @spin_lock_bh(i32* @ifa_state_lock)
  %116 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %7, align 8
  %117 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  store i32 %118, i32* %10, align 4
  %119 = load i32, i32* @INET6_IFADDR_STATE_DEAD, align 4
  %120 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %7, align 8
  %121 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %120, i32 0, i32 0
  store i32 %119, i32* %121, align 8
  %122 = call i32 @spin_unlock_bh(i32* @ifa_state_lock)
  %123 = load i32, i32* %10, align 4
  %124 = load i32, i32* @INET6_IFADDR_STATE_DEAD, align 4
  %125 = icmp eq i32 %123, %124
  br i1 %125, label %126, label %127

126:                                              ; preds = %102
  br label %134

127:                                              ; preds = %102
  %128 = load i32, i32* @RTM_DELADDR, align 4
  %129 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %7, align 8
  %130 = call i32 @__ipv6_ifa_notify(i32 %128, %struct.inet6_ifaddr* %129)
  %131 = load i32, i32* @NETDEV_DOWN, align 4
  %132 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %7, align 8
  %133 = call i32 @atomic_notifier_call_chain(i32* @inet6addr_chain, i32 %131, %struct.inet6_ifaddr* %132)
  br label %134

134:                                              ; preds = %127, %126
  %135 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %7, align 8
  %136 = call i32 @in6_ifa_put(%struct.inet6_ifaddr* %135)
  %137 = load %struct.inet6_dev*, %struct.inet6_dev** %6, align 8
  %138 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %137, i32 0, i32 4
  %139 = call i32 @write_lock_bh(i32* %138)
  br label %97

140:                                              ; preds = %97
  %141 = load %struct.inet6_dev*, %struct.inet6_dev** %6, align 8
  %142 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %141, i32 0, i32 4
  %143 = call i32 @write_unlock_bh(i32* %142)
  %144 = load i32, i32* %5, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %149

146:                                              ; preds = %140
  %147 = load %struct.inet6_dev*, %struct.inet6_dev** %6, align 8
  %148 = call i32 @ipv6_mc_destroy_dev(%struct.inet6_dev* %147)
  br label %152

149:                                              ; preds = %140
  %150 = load %struct.inet6_dev*, %struct.inet6_dev** %6, align 8
  %151 = call i32 @ipv6_mc_down(%struct.inet6_dev* %150)
  br label %152

152:                                              ; preds = %149, %146
  %153 = load i32, i32* @jiffies, align 4
  %154 = load %struct.inet6_dev*, %struct.inet6_dev** %6, align 8
  %155 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %154, i32 0, i32 3
  store i32 %153, i32* %155, align 4
  %156 = load i32, i32* %5, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %169

158:                                              ; preds = %152
  %159 = load %struct.inet6_dev*, %struct.inet6_dev** %6, align 8
  %160 = call i32 @addrconf_sysctl_unregister(%struct.inet6_dev* %159)
  %161 = load %struct.inet6_dev*, %struct.inet6_dev** %6, align 8
  %162 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 8
  %164 = call i32 @neigh_parms_release(i32* @nd_tbl, i32 %163)
  %165 = load %struct.net_device*, %struct.net_device** %4, align 8
  %166 = call i32 @neigh_ifdown(i32* @nd_tbl, %struct.net_device* %165)
  %167 = load %struct.inet6_dev*, %struct.inet6_dev** %6, align 8
  %168 = call i32 @in6_dev_put(%struct.inet6_dev* %167)
  br label %169

169:                                              ; preds = %158, %152
  store i32 0, i32* %3, align 4
  br label %170

170:                                              ; preds = %169, %24
  %171 = load i32, i32* %3, align 4
  ret i32 %171
}

declare dso_local %struct.net* @dev_net(%struct.net_device*) #1

declare dso_local i32 @ASSERT_RTNL(...) #1

declare dso_local i32 @rt6_ifdown(%struct.net*, %struct.net_device*) #1

declare dso_local i32 @neigh_ifdown(i32*, %struct.net_device*) #1

declare dso_local %struct.inet6_dev* @__in6_dev_get(%struct.net_device*) #1

declare dso_local i32 @rcu_assign_pointer(i32, i32*) #1

declare dso_local i32 @snmp6_unregister_dev(%struct.inet6_dev*) #1

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local i32 @addrconf_del_timer(%struct.inet6_ifaddr*) #1

declare dso_local i32 @in6_ifa_put(%struct.inet6_ifaddr*) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @__ipv6_ifa_notify(i32, %struct.inet6_ifaddr*) #1

declare dso_local i32 @atomic_notifier_call_chain(i32*, i32, %struct.inet6_ifaddr*) #1

declare dso_local i32 @ipv6_mc_destroy_dev(%struct.inet6_dev*) #1

declare dso_local i32 @ipv6_mc_down(%struct.inet6_dev*) #1

declare dso_local i32 @addrconf_sysctl_unregister(%struct.inet6_dev*) #1

declare dso_local i32 @neigh_parms_release(i32*, i32) #1

declare dso_local i32 @in6_dev_put(%struct.inet6_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
