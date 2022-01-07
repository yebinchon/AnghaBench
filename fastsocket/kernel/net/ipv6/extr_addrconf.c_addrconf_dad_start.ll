; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_addrconf.c_addrconf_dad_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_addrconf.c_addrconf_dad_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inet6_ifaddr = type { i64, i32, i32, i32, %struct.TYPE_4__, %struct.inet6_dev* }
%struct.TYPE_4__ = type { i32* }
%struct.inet6_dev = type { i32, i32, %struct.TYPE_3__, %struct.net_device* }
%struct.TYPE_3__ = type { i32 }
%struct.net_device = type { i32 }

@INET6_IFADDR_STATE_DEAD = common dso_local global i64 0, align 8
@IFF_NOARP = common dso_local global i32 0, align 4
@IFF_LOOPBACK = common dso_local global i32 0, align 4
@IFA_F_TENTATIVE = common dso_local global i32 0, align 4
@IFA_F_NODAD = common dso_local global i32 0, align 4
@IFA_F_OPTIMISTIC = common dso_local global i32 0, align 4
@IFA_F_DADFAILED = common dso_local global i32 0, align 4
@IF_READY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inet6_ifaddr*, i32)* @addrconf_dad_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @addrconf_dad_start(%struct.inet6_ifaddr* %0, i32 %1) #0 {
  %3 = alloca %struct.inet6_ifaddr*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.inet6_dev*, align 8
  %6 = alloca %struct.net_device*, align 8
  store %struct.inet6_ifaddr* %0, %struct.inet6_ifaddr** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %3, align 8
  %8 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %7, i32 0, i32 5
  %9 = load %struct.inet6_dev*, %struct.inet6_dev** %8, align 8
  store %struct.inet6_dev* %9, %struct.inet6_dev** %5, align 8
  %10 = load %struct.inet6_dev*, %struct.inet6_dev** %5, align 8
  %11 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %10, i32 0, i32 3
  %12 = load %struct.net_device*, %struct.net_device** %11, align 8
  store %struct.net_device* %12, %struct.net_device** %6, align 8
  %13 = load %struct.net_device*, %struct.net_device** %6, align 8
  %14 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %3, align 8
  %15 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %14, i32 0, i32 4
  %16 = call i32 @addrconf_join_solict(%struct.net_device* %13, %struct.TYPE_4__* %15)
  %17 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %3, align 8
  %18 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %17, i32 0, i32 4
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 3
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @net_srandom(i32 %22)
  %24 = load %struct.inet6_dev*, %struct.inet6_dev** %5, align 8
  %25 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %24, i32 0, i32 1
  %26 = call i32 @read_lock_bh(i32* %25)
  %27 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %3, align 8
  %28 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %27, i32 0, i32 2
  %29 = call i32 @spin_lock_bh(i32* %28)
  %30 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %3, align 8
  %31 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @INET6_IFADDR_STATE_DEAD, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %2
  br label %117

36:                                               ; preds = %2
  %37 = load %struct.net_device*, %struct.net_device** %6, align 8
  %38 = getelementptr inbounds %struct.net_device, %struct.net_device* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @IFF_NOARP, align 4
  %41 = load i32, i32* @IFF_LOOPBACK, align 4
  %42 = or i32 %40, %41
  %43 = and i32 %39, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %65, label %45

45:                                               ; preds = %36
  %46 = load %struct.inet6_dev*, %struct.inet6_dev** %5, align 8
  %47 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp slt i32 %49, 1
  br i1 %50, label %65, label %51

51:                                               ; preds = %45
  %52 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %3, align 8
  %53 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @IFA_F_TENTATIVE, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %51
  %59 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %3, align 8
  %60 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @IFA_F_NODAD, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %84

65:                                               ; preds = %58, %51, %45, %36
  %66 = load i32, i32* @IFA_F_TENTATIVE, align 4
  %67 = load i32, i32* @IFA_F_OPTIMISTIC, align 4
  %68 = or i32 %66, %67
  %69 = load i32, i32* @IFA_F_DADFAILED, align 4
  %70 = or i32 %68, %69
  %71 = xor i32 %70, -1
  %72 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %3, align 8
  %73 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = and i32 %74, %71
  store i32 %75, i32* %73, align 8
  %76 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %3, align 8
  %77 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %76, i32 0, i32 2
  %78 = call i32 @spin_unlock_bh(i32* %77)
  %79 = load %struct.inet6_dev*, %struct.inet6_dev** %5, align 8
  %80 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %79, i32 0, i32 1
  %81 = call i32 @read_unlock_bh(i32* %80)
  %82 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %3, align 8
  %83 = call i32 @addrconf_dad_completed(%struct.inet6_ifaddr* %82)
  br label %124

84:                                               ; preds = %58
  %85 = load %struct.inet6_dev*, %struct.inet6_dev** %5, align 8
  %86 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @IF_READY, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %102, label %91

91:                                               ; preds = %84
  %92 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %3, align 8
  %93 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %92, i32 0, i32 2
  %94 = call i32 @spin_unlock_bh(i32* %93)
  %95 = load %struct.inet6_dev*, %struct.inet6_dev** %5, align 8
  %96 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %95, i32 0, i32 1
  %97 = call i32 @read_unlock_bh(i32* %96)
  %98 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %3, align 8
  %99 = call i32 @in6_ifa_hold(%struct.inet6_ifaddr* %98)
  %100 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %3, align 8
  %101 = call i32 @addrconf_dad_stop(%struct.inet6_ifaddr* %100, i32 0)
  br label %124

102:                                              ; preds = %84
  %103 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %3, align 8
  %104 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* @IFA_F_OPTIMISTIC, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %114

109:                                              ; preds = %102
  %110 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %3, align 8
  %111 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @ip6_ins_rt(i32 %112)
  br label %114

114:                                              ; preds = %109, %102
  %115 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %3, align 8
  %116 = call i32 @addrconf_dad_kick(%struct.inet6_ifaddr* %115)
  br label %117

117:                                              ; preds = %114, %35
  %118 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %3, align 8
  %119 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %118, i32 0, i32 2
  %120 = call i32 @spin_unlock_bh(i32* %119)
  %121 = load %struct.inet6_dev*, %struct.inet6_dev** %5, align 8
  %122 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %121, i32 0, i32 1
  %123 = call i32 @read_unlock_bh(i32* %122)
  br label %124

124:                                              ; preds = %117, %91, %65
  ret void
}

declare dso_local i32 @addrconf_join_solict(%struct.net_device*, %struct.TYPE_4__*) #1

declare dso_local i32 @net_srandom(i32) #1

declare dso_local i32 @read_lock_bh(i32*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @read_unlock_bh(i32*) #1

declare dso_local i32 @addrconf_dad_completed(%struct.inet6_ifaddr*) #1

declare dso_local i32 @in6_ifa_hold(%struct.inet6_ifaddr*) #1

declare dso_local i32 @addrconf_dad_stop(%struct.inet6_ifaddr*, i32) #1

declare dso_local i32 @ip6_ins_rt(i32) #1

declare dso_local i32 @addrconf_dad_kick(%struct.inet6_ifaddr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
