; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/decnet/extr_dn_dev.c_dn_dev_insert_ifa.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/decnet/extr_dn_dev.c_dn_dev_insert_ifa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dn_dev = type { %struct.dn_ifaddr*, %struct.net_device* }
%struct.net_device = type { i64, i32 }
%struct.dn_ifaddr = type { i64, %struct.dn_ifaddr* }

@EEXIST = common dso_local global i32 0, align 4
@ARPHRD_ETHER = common dso_local global i64 0, align 8
@ETH_ALEN = common dso_local global i32 0, align 4
@RTM_NEWADDR = common dso_local global i32 0, align 4
@dnaddr_chain = common dso_local global i32 0, align 4
@NETDEV_UP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dn_dev*, %struct.dn_ifaddr*)* @dn_dev_insert_ifa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dn_dev_insert_ifa(%struct.dn_dev* %0, %struct.dn_ifaddr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dn_dev*, align 8
  %5 = alloca %struct.dn_ifaddr*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.dn_ifaddr*, align 8
  %8 = alloca [6 x i8], align 1
  store %struct.dn_dev* %0, %struct.dn_dev** %4, align 8
  store %struct.dn_ifaddr* %1, %struct.dn_ifaddr** %5, align 8
  %9 = load %struct.dn_dev*, %struct.dn_dev** %4, align 8
  %10 = getelementptr inbounds %struct.dn_dev, %struct.dn_dev* %9, i32 0, i32 1
  %11 = load %struct.net_device*, %struct.net_device** %10, align 8
  store %struct.net_device* %11, %struct.net_device** %6, align 8
  %12 = call i32 (...) @ASSERT_RTNL()
  %13 = load %struct.dn_dev*, %struct.dn_dev** %4, align 8
  %14 = getelementptr inbounds %struct.dn_dev, %struct.dn_dev* %13, i32 0, i32 0
  %15 = load %struct.dn_ifaddr*, %struct.dn_ifaddr** %14, align 8
  store %struct.dn_ifaddr* %15, %struct.dn_ifaddr** %7, align 8
  br label %16

16:                                               ; preds = %31, %2
  %17 = load %struct.dn_ifaddr*, %struct.dn_ifaddr** %7, align 8
  %18 = icmp ne %struct.dn_ifaddr* %17, null
  br i1 %18, label %19, label %35

19:                                               ; preds = %16
  %20 = load %struct.dn_ifaddr*, %struct.dn_ifaddr** %7, align 8
  %21 = getelementptr inbounds %struct.dn_ifaddr, %struct.dn_ifaddr* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.dn_ifaddr*, %struct.dn_ifaddr** %5, align 8
  %24 = getelementptr inbounds %struct.dn_ifaddr, %struct.dn_ifaddr* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %22, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %19
  %28 = load i32, i32* @EEXIST, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %76

30:                                               ; preds = %19
  br label %31

31:                                               ; preds = %30
  %32 = load %struct.dn_ifaddr*, %struct.dn_ifaddr** %7, align 8
  %33 = getelementptr inbounds %struct.dn_ifaddr, %struct.dn_ifaddr* %32, i32 0, i32 1
  %34 = load %struct.dn_ifaddr*, %struct.dn_ifaddr** %33, align 8
  store %struct.dn_ifaddr* %34, %struct.dn_ifaddr** %7, align 8
  br label %16

35:                                               ; preds = %16
  %36 = load %struct.net_device*, %struct.net_device** %6, align 8
  %37 = getelementptr inbounds %struct.net_device, %struct.net_device* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @ARPHRD_ETHER, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %61

41:                                               ; preds = %35
  %42 = load %struct.dn_ifaddr*, %struct.dn_ifaddr** %5, align 8
  %43 = getelementptr inbounds %struct.dn_ifaddr, %struct.dn_ifaddr* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.net_device*, %struct.net_device** %6, align 8
  %46 = getelementptr inbounds %struct.net_device, %struct.net_device* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = call i64 @dn_eth2dn(i32 %47)
  %49 = icmp ne i64 %44, %48
  br i1 %49, label %50, label %60

50:                                               ; preds = %41
  %51 = getelementptr inbounds [6 x i8], [6 x i8]* %8, i64 0, i64 0
  %52 = load %struct.dn_ifaddr*, %struct.dn_ifaddr** %5, align 8
  %53 = getelementptr inbounds %struct.dn_ifaddr, %struct.dn_ifaddr* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @dn_dn2eth(i8* %51, i64 %54)
  %56 = load %struct.net_device*, %struct.net_device** %6, align 8
  %57 = getelementptr inbounds [6 x i8], [6 x i8]* %8, i64 0, i64 0
  %58 = load i32, i32* @ETH_ALEN, align 4
  %59 = call i32 @dev_mc_add(%struct.net_device* %56, i8* %57, i32 %58, i32 0)
  br label %60

60:                                               ; preds = %50, %41
  br label %61

61:                                               ; preds = %60, %35
  %62 = load %struct.dn_dev*, %struct.dn_dev** %4, align 8
  %63 = getelementptr inbounds %struct.dn_dev, %struct.dn_dev* %62, i32 0, i32 0
  %64 = load %struct.dn_ifaddr*, %struct.dn_ifaddr** %63, align 8
  %65 = load %struct.dn_ifaddr*, %struct.dn_ifaddr** %5, align 8
  %66 = getelementptr inbounds %struct.dn_ifaddr, %struct.dn_ifaddr* %65, i32 0, i32 1
  store %struct.dn_ifaddr* %64, %struct.dn_ifaddr** %66, align 8
  %67 = load %struct.dn_ifaddr*, %struct.dn_ifaddr** %5, align 8
  %68 = load %struct.dn_dev*, %struct.dn_dev** %4, align 8
  %69 = getelementptr inbounds %struct.dn_dev, %struct.dn_dev* %68, i32 0, i32 0
  store %struct.dn_ifaddr* %67, %struct.dn_ifaddr** %69, align 8
  %70 = load i32, i32* @RTM_NEWADDR, align 4
  %71 = load %struct.dn_ifaddr*, %struct.dn_ifaddr** %5, align 8
  %72 = call i32 @dn_ifaddr_notify(i32 %70, %struct.dn_ifaddr* %71)
  %73 = load i32, i32* @NETDEV_UP, align 4
  %74 = load %struct.dn_ifaddr*, %struct.dn_ifaddr** %5, align 8
  %75 = call i32 @blocking_notifier_call_chain(i32* @dnaddr_chain, i32 %73, %struct.dn_ifaddr* %74)
  store i32 0, i32* %3, align 4
  br label %76

76:                                               ; preds = %61, %27
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local i32 @ASSERT_RTNL(...) #1

declare dso_local i64 @dn_eth2dn(i32) #1

declare dso_local i32 @dn_dn2eth(i8*, i64) #1

declare dso_local i32 @dev_mc_add(%struct.net_device*, i8*, i32, i32) #1

declare dso_local i32 @dn_ifaddr_notify(i32, %struct.dn_ifaddr*) #1

declare dso_local i32 @blocking_notifier_call_chain(i32*, i32, %struct.dn_ifaddr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
