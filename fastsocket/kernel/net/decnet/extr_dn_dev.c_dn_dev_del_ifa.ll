; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/decnet/extr_dn_dev.c_dn_dev_del_ifa.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/decnet/extr_dn_dev.c_dn_dev_del_ifa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dn_dev = type { %struct.net_device*, i32* }
%struct.net_device = type { i64, i32 }
%struct.dn_ifaddr = type { i64, %struct.dn_ifaddr* }

@ARPHRD_ETHER = common dso_local global i64 0, align 8
@ETH_ALEN = common dso_local global i32 0, align 4
@RTM_DELADDR = common dso_local global i32 0, align 4
@dnaddr_chain = common dso_local global i32 0, align 4
@NETDEV_DOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dn_dev*, %struct.dn_ifaddr**, i32)* @dn_dev_del_ifa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dn_dev_del_ifa(%struct.dn_dev* %0, %struct.dn_ifaddr** %1, i32 %2) #0 {
  %4 = alloca %struct.dn_dev*, align 8
  %5 = alloca %struct.dn_ifaddr**, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.dn_ifaddr*, align 8
  %8 = alloca [6 x i8], align 1
  %9 = alloca %struct.net_device*, align 8
  store %struct.dn_dev* %0, %struct.dn_dev** %4, align 8
  store %struct.dn_ifaddr** %1, %struct.dn_ifaddr*** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.dn_ifaddr**, %struct.dn_ifaddr*** %5, align 8
  %11 = load %struct.dn_ifaddr*, %struct.dn_ifaddr** %10, align 8
  store %struct.dn_ifaddr* %11, %struct.dn_ifaddr** %7, align 8
  %12 = load %struct.dn_dev*, %struct.dn_dev** %4, align 8
  %13 = getelementptr inbounds %struct.dn_dev, %struct.dn_dev* %12, i32 0, i32 0
  %14 = load %struct.net_device*, %struct.net_device** %13, align 8
  store %struct.net_device* %14, %struct.net_device** %9, align 8
  %15 = call i32 (...) @ASSERT_RTNL()
  %16 = load %struct.dn_ifaddr*, %struct.dn_ifaddr** %7, align 8
  %17 = getelementptr inbounds %struct.dn_ifaddr, %struct.dn_ifaddr* %16, i32 0, i32 1
  %18 = load %struct.dn_ifaddr*, %struct.dn_ifaddr** %17, align 8
  %19 = load %struct.dn_ifaddr**, %struct.dn_ifaddr*** %5, align 8
  store %struct.dn_ifaddr* %18, %struct.dn_ifaddr** %19, align 8
  %20 = load %struct.dn_dev*, %struct.dn_dev** %4, align 8
  %21 = getelementptr inbounds %struct.dn_dev, %struct.dn_dev* %20, i32 0, i32 0
  %22 = load %struct.net_device*, %struct.net_device** %21, align 8
  %23 = getelementptr inbounds %struct.net_device, %struct.net_device* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @ARPHRD_ETHER, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %47

27:                                               ; preds = %3
  %28 = load %struct.dn_ifaddr*, %struct.dn_ifaddr** %7, align 8
  %29 = getelementptr inbounds %struct.dn_ifaddr, %struct.dn_ifaddr* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.net_device*, %struct.net_device** %9, align 8
  %32 = getelementptr inbounds %struct.net_device, %struct.net_device* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = call i64 @dn_eth2dn(i32 %33)
  %35 = icmp ne i64 %30, %34
  br i1 %35, label %36, label %46

36:                                               ; preds = %27
  %37 = getelementptr inbounds [6 x i8], [6 x i8]* %8, i64 0, i64 0
  %38 = load %struct.dn_ifaddr*, %struct.dn_ifaddr** %7, align 8
  %39 = getelementptr inbounds %struct.dn_ifaddr, %struct.dn_ifaddr* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @dn_dn2eth(i8* %37, i64 %40)
  %42 = load %struct.net_device*, %struct.net_device** %9, align 8
  %43 = getelementptr inbounds [6 x i8], [6 x i8]* %8, i64 0, i64 0
  %44 = load i32, i32* @ETH_ALEN, align 4
  %45 = call i32 @dev_mc_delete(%struct.net_device* %42, i8* %43, i32 %44, i32 0)
  br label %46

46:                                               ; preds = %36, %27
  br label %47

47:                                               ; preds = %46, %3
  %48 = load i32, i32* @RTM_DELADDR, align 4
  %49 = load %struct.dn_ifaddr*, %struct.dn_ifaddr** %7, align 8
  %50 = call i32 @dn_ifaddr_notify(i32 %48, %struct.dn_ifaddr* %49)
  %51 = load i32, i32* @NETDEV_DOWN, align 4
  %52 = load %struct.dn_ifaddr*, %struct.dn_ifaddr** %7, align 8
  %53 = call i32 @blocking_notifier_call_chain(i32* @dnaddr_chain, i32 %51, %struct.dn_ifaddr* %52)
  %54 = load i32, i32* %6, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %69

56:                                               ; preds = %47
  %57 = load %struct.dn_ifaddr*, %struct.dn_ifaddr** %7, align 8
  %58 = call i32 @dn_dev_free_ifa(%struct.dn_ifaddr* %57)
  %59 = load %struct.dn_dev*, %struct.dn_dev** %4, align 8
  %60 = getelementptr inbounds %struct.dn_dev, %struct.dn_dev* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = icmp eq i32* %61, null
  br i1 %62, label %63, label %68

63:                                               ; preds = %56
  %64 = load %struct.dn_dev*, %struct.dn_dev** %4, align 8
  %65 = getelementptr inbounds %struct.dn_dev, %struct.dn_dev* %64, i32 0, i32 0
  %66 = load %struct.net_device*, %struct.net_device** %65, align 8
  %67 = call i32 @dn_dev_delete(%struct.net_device* %66)
  br label %68

68:                                               ; preds = %63, %56
  br label %69

69:                                               ; preds = %68, %47
  ret void
}

declare dso_local i32 @ASSERT_RTNL(...) #1

declare dso_local i64 @dn_eth2dn(i32) #1

declare dso_local i32 @dn_dn2eth(i8*, i64) #1

declare dso_local i32 @dev_mc_delete(%struct.net_device*, i8*, i32, i32) #1

declare dso_local i32 @dn_ifaddr_notify(i32, %struct.dn_ifaddr*) #1

declare dso_local i32 @blocking_notifier_call_chain(i32*, i32, %struct.dn_ifaddr*) #1

declare dso_local i32 @dn_dev_free_ifa(%struct.dn_ifaddr*) #1

declare dso_local i32 @dn_dev_delete(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
