; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_mcast.c_ipv6_mc_destroy_dev.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_mcast.c_ipv6_mc_destroy_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inet6_dev = type { i32, %struct.ifmcaddr6*, %struct.TYPE_2__ }
%struct.ifmcaddr6 = type { %struct.ifmcaddr6* }
%struct.TYPE_2__ = type { i64 }

@in6addr_linklocal_allnodes = common dso_local global i32 0, align 4
@in6addr_linklocal_allrouters = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ipv6_mc_destroy_dev(%struct.inet6_dev* %0) #0 {
  %2 = alloca %struct.inet6_dev*, align 8
  %3 = alloca %struct.ifmcaddr6*, align 8
  store %struct.inet6_dev* %0, %struct.inet6_dev** %2, align 8
  %4 = load %struct.inet6_dev*, %struct.inet6_dev** %2, align 8
  %5 = call i32 @ipv6_mc_down(%struct.inet6_dev* %4)
  %6 = load %struct.inet6_dev*, %struct.inet6_dev** %2, align 8
  %7 = call i32 @__ipv6_dev_mc_dec(%struct.inet6_dev* %6, i32* @in6addr_linklocal_allnodes)
  %8 = load %struct.inet6_dev*, %struct.inet6_dev** %2, align 8
  %9 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load %struct.inet6_dev*, %struct.inet6_dev** %2, align 8
  %15 = call i32 @__ipv6_dev_mc_dec(%struct.inet6_dev* %14, i32* @in6addr_linklocal_allrouters)
  br label %16

16:                                               ; preds = %13, %1
  %17 = load %struct.inet6_dev*, %struct.inet6_dev** %2, align 8
  %18 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %17, i32 0, i32 0
  %19 = call i32 @write_lock_bh(i32* %18)
  br label %20

20:                                               ; preds = %25, %16
  %21 = load %struct.inet6_dev*, %struct.inet6_dev** %2, align 8
  %22 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %21, i32 0, i32 1
  %23 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %22, align 8
  store %struct.ifmcaddr6* %23, %struct.ifmcaddr6** %3, align 8
  %24 = icmp ne %struct.ifmcaddr6* %23, null
  br i1 %24, label %25, label %41

25:                                               ; preds = %20
  %26 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %3, align 8
  %27 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %26, i32 0, i32 0
  %28 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %27, align 8
  %29 = load %struct.inet6_dev*, %struct.inet6_dev** %2, align 8
  %30 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %29, i32 0, i32 1
  store %struct.ifmcaddr6* %28, %struct.ifmcaddr6** %30, align 8
  %31 = load %struct.inet6_dev*, %struct.inet6_dev** %2, align 8
  %32 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %31, i32 0, i32 0
  %33 = call i32 @write_unlock_bh(i32* %32)
  %34 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %3, align 8
  %35 = call i32 @igmp6_group_dropped(%struct.ifmcaddr6* %34)
  %36 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %3, align 8
  %37 = call i32 @ma_put(%struct.ifmcaddr6* %36)
  %38 = load %struct.inet6_dev*, %struct.inet6_dev** %2, align 8
  %39 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %38, i32 0, i32 0
  %40 = call i32 @write_lock_bh(i32* %39)
  br label %20

41:                                               ; preds = %20
  %42 = load %struct.inet6_dev*, %struct.inet6_dev** %2, align 8
  %43 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %42, i32 0, i32 0
  %44 = call i32 @write_unlock_bh(i32* %43)
  ret void
}

declare dso_local i32 @ipv6_mc_down(%struct.inet6_dev*) #1

declare dso_local i32 @__ipv6_dev_mc_dec(%struct.inet6_dev*, i32*) #1

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

declare dso_local i32 @igmp6_group_dropped(%struct.ifmcaddr6*) #1

declare dso_local i32 @ma_put(%struct.ifmcaddr6*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
