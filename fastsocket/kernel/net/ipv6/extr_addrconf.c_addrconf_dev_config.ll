; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_addrconf.c_addrconf_dev_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_addrconf.c_addrconf_dev_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i64 }
%struct.in6_addr = type { i64, i32* }
%struct.inet6_dev = type { i32 }

@ARPHRD_ETHER = common dso_local global i64 0, align 8
@ARPHRD_FDDI = common dso_local global i64 0, align 8
@ARPHRD_IEEE802_TR = common dso_local global i64 0, align 8
@ARPHRD_ARCNET = common dso_local global i64 0, align 8
@ARPHRD_INFINIBAND = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @addrconf_dev_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @addrconf_dev_config(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.in6_addr, align 8
  %4 = alloca %struct.inet6_dev*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = call i32 (...) @ASSERT_RTNL()
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = getelementptr inbounds %struct.net_device, %struct.net_device* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @ARPHRD_ETHER, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %36

11:                                               ; preds = %1
  %12 = load %struct.net_device*, %struct.net_device** %2, align 8
  %13 = getelementptr inbounds %struct.net_device, %struct.net_device* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @ARPHRD_FDDI, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %36

17:                                               ; preds = %11
  %18 = load %struct.net_device*, %struct.net_device** %2, align 8
  %19 = getelementptr inbounds %struct.net_device, %struct.net_device* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @ARPHRD_IEEE802_TR, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %36

23:                                               ; preds = %17
  %24 = load %struct.net_device*, %struct.net_device** %2, align 8
  %25 = getelementptr inbounds %struct.net_device, %struct.net_device* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @ARPHRD_ARCNET, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %36

29:                                               ; preds = %23
  %30 = load %struct.net_device*, %struct.net_device** %2, align 8
  %31 = getelementptr inbounds %struct.net_device, %struct.net_device* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @ARPHRD_INFINIBAND, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  br label %57

36:                                               ; preds = %29, %23, %17, %11, %1
  %37 = load %struct.net_device*, %struct.net_device** %2, align 8
  %38 = call %struct.inet6_dev* @addrconf_add_dev(%struct.net_device* %37)
  store %struct.inet6_dev* %38, %struct.inet6_dev** %4, align 8
  %39 = load %struct.inet6_dev*, %struct.inet6_dev** %4, align 8
  %40 = icmp eq %struct.inet6_dev* %39, null
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  br label %57

42:                                               ; preds = %36
  %43 = call i32 @memset(%struct.in6_addr* %3, i32 0, i32 16)
  %44 = call i32 @htonl(i32 -25165824)
  %45 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %3, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 0
  store i32 %44, i32* %47, align 4
  %48 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %3, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = add nsw i64 %49, 8
  %51 = load %struct.net_device*, %struct.net_device** %2, align 8
  %52 = call i64 @ipv6_generate_eui64(i64 %50, %struct.net_device* %51)
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %42
  %55 = load %struct.inet6_dev*, %struct.inet6_dev** %4, align 8
  %56 = call i32 @addrconf_add_linklocal(%struct.inet6_dev* %55, %struct.in6_addr* %3)
  br label %57

57:                                               ; preds = %35, %41, %54, %42
  ret void
}

declare dso_local i32 @ASSERT_RTNL(...) #1

declare dso_local %struct.inet6_dev* @addrconf_add_dev(%struct.net_device*) #1

declare dso_local i32 @memset(%struct.in6_addr*, i32, i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i64 @ipv6_generate_eui64(i64, %struct.net_device*) #1

declare dso_local i32 @addrconf_add_linklocal(%struct.inet6_dev*, %struct.in6_addr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
