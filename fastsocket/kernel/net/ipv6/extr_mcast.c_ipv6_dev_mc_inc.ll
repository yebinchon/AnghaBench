; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_mcast.c_ipv6_dev_mc_inc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_mcast.c_ipv6_dev_mc_inc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.in6_addr = type { i32 }
%struct.ifmcaddr6 = type { i32, i64, i32*, i32, %struct.ifmcaddr6*, i32, i32, i32, i32, i32, %struct.inet6_dev*, i32 }
%struct.inet6_dev = type { i32, %struct.ifmcaddr6*, i64 }

@EINVAL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@MCAST_EXCLUDE = common dso_local global i64 0, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@igmp6_timer_handler = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@IPV6_ADDR_SCOPE_LINKLOCAL = common dso_local global i64 0, align 8
@MAF_NOREPORT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipv6_dev_mc_inc(%struct.net_device* %0, %struct.in6_addr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.in6_addr*, align 8
  %6 = alloca %struct.ifmcaddr6*, align 8
  %7 = alloca %struct.inet6_dev*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.in6_addr* %1, %struct.in6_addr** %5, align 8
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = call %struct.inet6_dev* @in6_dev_get(%struct.net_device* %8)
  store %struct.inet6_dev* %9, %struct.inet6_dev** %7, align 8
  %10 = load %struct.inet6_dev*, %struct.inet6_dev** %7, align 8
  %11 = icmp eq %struct.inet6_dev* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %148

15:                                               ; preds = %2
  %16 = load %struct.inet6_dev*, %struct.inet6_dev** %7, align 8
  %17 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %16, i32 0, i32 0
  %18 = call i32 @write_lock_bh(i32* %17)
  %19 = load %struct.inet6_dev*, %struct.inet6_dev** %7, align 8
  %20 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %15
  %24 = load %struct.inet6_dev*, %struct.inet6_dev** %7, align 8
  %25 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %24, i32 0, i32 0
  %26 = call i32 @write_unlock_bh(i32* %25)
  %27 = load %struct.inet6_dev*, %struct.inet6_dev** %7, align 8
  %28 = call i32 @in6_dev_put(%struct.inet6_dev* %27)
  %29 = load i32, i32* @ENODEV, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %148

31:                                               ; preds = %15
  %32 = load %struct.inet6_dev*, %struct.inet6_dev** %7, align 8
  %33 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %32, i32 0, i32 1
  %34 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %33, align 8
  store %struct.ifmcaddr6* %34, %struct.ifmcaddr6** %6, align 8
  br label %35

35:                                               ; preds = %60, %31
  %36 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %6, align 8
  %37 = icmp ne %struct.ifmcaddr6* %36, null
  br i1 %37, label %38, label %64

38:                                               ; preds = %35
  %39 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %6, align 8
  %40 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %39, i32 0, i32 3
  %41 = load %struct.in6_addr*, %struct.in6_addr** %5, align 8
  %42 = call i64 @ipv6_addr_equal(i32* %40, %struct.in6_addr* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %59

44:                                               ; preds = %38
  %45 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %6, align 8
  %46 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %46, align 8
  %49 = load %struct.inet6_dev*, %struct.inet6_dev** %7, align 8
  %50 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %49, i32 0, i32 0
  %51 = call i32 @write_unlock_bh(i32* %50)
  %52 = load %struct.inet6_dev*, %struct.inet6_dev** %7, align 8
  %53 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %6, align 8
  %54 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %53, i32 0, i32 3
  %55 = load i64, i64* @MCAST_EXCLUDE, align 8
  %56 = call i32 @ip6_mc_add_src(%struct.inet6_dev* %52, i32* %54, i64 %55, i32 0, i32* null, i32 0)
  %57 = load %struct.inet6_dev*, %struct.inet6_dev** %7, align 8
  %58 = call i32 @in6_dev_put(%struct.inet6_dev* %57)
  store i32 0, i32* %3, align 4
  br label %148

59:                                               ; preds = %38
  br label %60

60:                                               ; preds = %59
  %61 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %6, align 8
  %62 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %61, i32 0, i32 4
  %63 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %62, align 8
  store %struct.ifmcaddr6* %63, %struct.ifmcaddr6** %6, align 8
  br label %35

64:                                               ; preds = %35
  %65 = load i32, i32* @GFP_ATOMIC, align 4
  %66 = call %struct.ifmcaddr6* @kzalloc(i32 80, i32 %65)
  store %struct.ifmcaddr6* %66, %struct.ifmcaddr6** %6, align 8
  %67 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %6, align 8
  %68 = icmp eq %struct.ifmcaddr6* %67, null
  br i1 %68, label %69, label %77

69:                                               ; preds = %64
  %70 = load %struct.inet6_dev*, %struct.inet6_dev** %7, align 8
  %71 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %70, i32 0, i32 0
  %72 = call i32 @write_unlock_bh(i32* %71)
  %73 = load %struct.inet6_dev*, %struct.inet6_dev** %7, align 8
  %74 = call i32 @in6_dev_put(%struct.inet6_dev* %73)
  %75 = load i32, i32* @ENOMEM, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %3, align 4
  br label %148

77:                                               ; preds = %64
  %78 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %6, align 8
  %79 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %78, i32 0, i32 11
  %80 = load i32, i32* @igmp6_timer_handler, align 4
  %81 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %6, align 8
  %82 = ptrtoint %struct.ifmcaddr6* %81 to i64
  %83 = call i32 @setup_timer(i32* %79, i32 %80, i64 %82)
  %84 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %6, align 8
  %85 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %84, i32 0, i32 3
  %86 = load %struct.in6_addr*, %struct.in6_addr** %5, align 8
  %87 = call i32 @ipv6_addr_copy(i32* %85, %struct.in6_addr* %86)
  %88 = load %struct.inet6_dev*, %struct.inet6_dev** %7, align 8
  %89 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %6, align 8
  %90 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %89, i32 0, i32 10
  store %struct.inet6_dev* %88, %struct.inet6_dev** %90, align 8
  %91 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %6, align 8
  %92 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %91, i32 0, i32 0
  store i32 1, i32* %92, align 8
  %93 = load i32, i32* @jiffies, align 4
  %94 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %6, align 8
  %95 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %94, i32 0, i32 8
  store i32 %93, i32* %95, align 4
  %96 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %6, align 8
  %97 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %96, i32 0, i32 9
  store i32 %93, i32* %97, align 8
  %98 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %6, align 8
  %99 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %98, i32 0, i32 7
  %100 = call i32 @atomic_set(i32* %99, i32 2)
  %101 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %6, align 8
  %102 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %101, i32 0, i32 6
  %103 = call i32 @spin_lock_init(i32* %102)
  %104 = load i64, i64* @MCAST_EXCLUDE, align 8
  %105 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %6, align 8
  %106 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %105, i32 0, i32 1
  store i64 %104, i64* %106, align 8
  %107 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %6, align 8
  %108 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %107, i32 0, i32 2
  %109 = load i32*, i32** %108, align 8
  %110 = load i64, i64* @MCAST_EXCLUDE, align 8
  %111 = getelementptr inbounds i32, i32* %109, i64 %110
  store i32 1, i32* %111, align 4
  %112 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %6, align 8
  %113 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %112, i32 0, i32 3
  %114 = call i64 @ipv6_addr_is_ll_all_nodes(i32* %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %122, label %116

116:                                              ; preds = %77
  %117 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %6, align 8
  %118 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %117, i32 0, i32 3
  %119 = call i64 @IPV6_ADDR_MC_SCOPE(i32* %118)
  %120 = load i64, i64* @IPV6_ADDR_SCOPE_LINKLOCAL, align 8
  %121 = icmp slt i64 %119, %120
  br i1 %121, label %122, label %128

122:                                              ; preds = %116, %77
  %123 = load i32, i32* @MAF_NOREPORT, align 4
  %124 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %6, align 8
  %125 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %124, i32 0, i32 5
  %126 = load i32, i32* %125, align 8
  %127 = or i32 %126, %123
  store i32 %127, i32* %125, align 8
  br label %128

128:                                              ; preds = %122, %116
  %129 = load %struct.inet6_dev*, %struct.inet6_dev** %7, align 8
  %130 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %129, i32 0, i32 1
  %131 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %130, align 8
  %132 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %6, align 8
  %133 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %132, i32 0, i32 4
  store %struct.ifmcaddr6* %131, %struct.ifmcaddr6** %133, align 8
  %134 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %6, align 8
  %135 = load %struct.inet6_dev*, %struct.inet6_dev** %7, align 8
  %136 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %135, i32 0, i32 1
  store %struct.ifmcaddr6* %134, %struct.ifmcaddr6** %136, align 8
  %137 = load %struct.inet6_dev*, %struct.inet6_dev** %7, align 8
  %138 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %137, i32 0, i32 0
  %139 = call i32 @write_unlock_bh(i32* %138)
  %140 = load %struct.inet6_dev*, %struct.inet6_dev** %7, align 8
  %141 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %6, align 8
  %142 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %141, i32 0, i32 3
  %143 = call i32 @mld_del_delrec(%struct.inet6_dev* %140, i32* %142)
  %144 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %6, align 8
  %145 = call i32 @igmp6_group_added(%struct.ifmcaddr6* %144)
  %146 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %6, align 8
  %147 = call i32 @ma_put(%struct.ifmcaddr6* %146)
  store i32 0, i32* %3, align 4
  br label %148

148:                                              ; preds = %128, %69, %44, %23, %12
  %149 = load i32, i32* %3, align 4
  ret i32 %149
}

declare dso_local %struct.inet6_dev* @in6_dev_get(%struct.net_device*) #1

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

declare dso_local i32 @in6_dev_put(%struct.inet6_dev*) #1

declare dso_local i64 @ipv6_addr_equal(i32*, %struct.in6_addr*) #1

declare dso_local i32 @ip6_mc_add_src(%struct.inet6_dev*, i32*, i64, i32, i32*, i32) #1

declare dso_local %struct.ifmcaddr6* @kzalloc(i32, i32) #1

declare dso_local i32 @setup_timer(i32*, i32, i64) #1

declare dso_local i32 @ipv6_addr_copy(i32*, %struct.in6_addr*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i64 @ipv6_addr_is_ll_all_nodes(i32*) #1

declare dso_local i64 @IPV6_ADDR_MC_SCOPE(i32*) #1

declare dso_local i32 @mld_del_delrec(%struct.inet6_dev*, i32*) #1

declare dso_local i32 @igmp6_group_added(%struct.ifmcaddr6*) #1

declare dso_local i32 @ma_put(%struct.ifmcaddr6*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
