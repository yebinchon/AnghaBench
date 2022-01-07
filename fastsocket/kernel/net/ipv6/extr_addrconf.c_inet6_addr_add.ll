; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_addrconf.c_inet6_addr_add.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_addrconf.c_inet6_addr_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.in6_addr = type { i32 }
%struct.inet6_ifaddr = type { i32, i32 }
%struct.inet6_dev = type { i32 }
%struct.net_device = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@HZ = common dso_local global i64 0, align 8
@RTF_EXPIRES = common dso_local global i64 0, align 8
@IFA_F_PERMANENT = common dso_local global i32 0, align 4
@IFA_F_DEPRECATED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, i32, %struct.in6_addr*, i32, i32, i64, i64)* @inet6_addr_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @inet6_addr_add(%struct.net* %0, i32 %1, %struct.in6_addr* %2, i32 %3, i32 %4, i64 %5, i64 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.net*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.in6_addr*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.inet6_ifaddr*, align 8
  %17 = alloca %struct.inet6_dev*, align 8
  %18 = alloca %struct.net_device*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  store %struct.net* %0, %struct.net** %9, align 8
  store i32 %1, i32* %10, align 4
  store %struct.in6_addr* %2, %struct.in6_addr** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i64 %5, i64* %14, align 8
  store i64 %6, i64* %15, align 8
  %23 = call i32 (...) @ASSERT_RTNL()
  %24 = load i32, i32* %12, align 4
  %25 = icmp ugt i32 %24, 128
  br i1 %25, label %26, label %29

26:                                               ; preds = %7
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %8, align 4
  br label %121

29:                                               ; preds = %7
  %30 = load i64, i64* %15, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %29
  %33 = load i64, i64* %14, align 8
  %34 = load i64, i64* %15, align 8
  %35 = icmp ugt i64 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %32, %29
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %8, align 4
  br label %121

39:                                               ; preds = %32
  %40 = load %struct.net*, %struct.net** %9, align 8
  %41 = load i32, i32* %10, align 4
  %42 = call %struct.net_device* @__dev_get_by_index(%struct.net* %40, i32 %41)
  store %struct.net_device* %42, %struct.net_device** %18, align 8
  %43 = load %struct.net_device*, %struct.net_device** %18, align 8
  %44 = icmp ne %struct.net_device* %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %39
  %46 = load i32, i32* @ENODEV, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %8, align 4
  br label %121

48:                                               ; preds = %39
  %49 = load %struct.net_device*, %struct.net_device** %18, align 8
  %50 = call %struct.inet6_dev* @addrconf_add_dev(%struct.net_device* %49)
  store %struct.inet6_dev* %50, %struct.inet6_dev** %17, align 8
  %51 = icmp eq %struct.inet6_dev* %50, null
  br i1 %51, label %52, label %55

52:                                               ; preds = %48
  %53 = load i32, i32* @ENOBUFS, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %8, align 4
  br label %121

55:                                               ; preds = %48
  %56 = load %struct.in6_addr*, %struct.in6_addr** %11, align 8
  %57 = call i32 @ipv6_addr_scope(%struct.in6_addr* %56)
  store i32 %57, i32* %19, align 4
  %58 = load i64, i64* %15, align 8
  %59 = load i64, i64* @HZ, align 8
  %60 = call i64 @addrconf_timeout_fixup(i64 %58, i64 %59)
  store i64 %60, i64* %22, align 8
  %61 = load i64, i64* %22, align 8
  %62 = call i64 @addrconf_finite_timeout(i64 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %71

64:                                               ; preds = %55
  %65 = load i64, i64* %22, align 8
  %66 = load i64, i64* @HZ, align 8
  %67 = mul i64 %65, %66
  %68 = call i64 @jiffies_to_clock_t(i64 %67)
  store i64 %68, i64* %21, align 8
  %69 = load i64, i64* %22, align 8
  store i64 %69, i64* %15, align 8
  %70 = load i64, i64* @RTF_EXPIRES, align 8
  store i64 %70, i64* %20, align 8
  br label %75

71:                                               ; preds = %55
  store i64 0, i64* %21, align 8
  store i64 0, i64* %20, align 8
  %72 = load i32, i32* @IFA_F_PERMANENT, align 4
  %73 = load i32, i32* %13, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %13, align 4
  br label %75

75:                                               ; preds = %71, %64
  %76 = load i64, i64* %14, align 8
  %77 = load i64, i64* @HZ, align 8
  %78 = call i64 @addrconf_timeout_fixup(i64 %76, i64 %77)
  store i64 %78, i64* %22, align 8
  %79 = load i64, i64* %22, align 8
  %80 = call i64 @addrconf_finite_timeout(i64 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %91

82:                                               ; preds = %75
  %83 = load i64, i64* %22, align 8
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %82
  %86 = load i32, i32* @IFA_F_DEPRECATED, align 4
  %87 = load i32, i32* %13, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %13, align 4
  br label %89

89:                                               ; preds = %85, %82
  %90 = load i64, i64* %22, align 8
  store i64 %90, i64* %14, align 8
  br label %91

91:                                               ; preds = %89, %75
  %92 = load %struct.inet6_dev*, %struct.inet6_dev** %17, align 8
  %93 = load %struct.in6_addr*, %struct.in6_addr** %11, align 8
  %94 = load i32, i32* %12, align 4
  %95 = load i32, i32* %19, align 4
  %96 = load i32, i32* %13, align 4
  %97 = load i64, i64* %15, align 8
  %98 = load i64, i64* %14, align 8
  %99 = call %struct.inet6_ifaddr* @ipv6_add_addr(%struct.inet6_dev* %92, %struct.in6_addr* %93, i32 %94, i32 %95, i32 %96, i64 %97, i64 %98)
  store %struct.inet6_ifaddr* %99, %struct.inet6_ifaddr** %16, align 8
  %100 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %16, align 8
  %101 = call i32 @IS_ERR(%struct.inet6_ifaddr* %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %118, label %103

103:                                              ; preds = %91
  %104 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %16, align 8
  %105 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %104, i32 0, i32 1
  %106 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %16, align 8
  %107 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.net_device*, %struct.net_device** %18, align 8
  %110 = load i64, i64* %21, align 8
  %111 = load i64, i64* %20, align 8
  %112 = call i32 @addrconf_prefix_route(i32* %105, i32 %108, %struct.net_device* %109, i64 %110, i64 %111)
  %113 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %16, align 8
  %114 = call i32 @addrconf_dad_start(%struct.inet6_ifaddr* %113, i32 0)
  %115 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %16, align 8
  %116 = call i32 @in6_ifa_put(%struct.inet6_ifaddr* %115)
  %117 = call i32 @addrconf_verify(i32 0)
  store i32 0, i32* %8, align 4
  br label %121

118:                                              ; preds = %91
  %119 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %16, align 8
  %120 = call i32 @PTR_ERR(%struct.inet6_ifaddr* %119)
  store i32 %120, i32* %8, align 4
  br label %121

121:                                              ; preds = %118, %103, %52, %45, %36, %26
  %122 = load i32, i32* %8, align 4
  ret i32 %122
}

declare dso_local i32 @ASSERT_RTNL(...) #1

declare dso_local %struct.net_device* @__dev_get_by_index(%struct.net*, i32) #1

declare dso_local %struct.inet6_dev* @addrconf_add_dev(%struct.net_device*) #1

declare dso_local i32 @ipv6_addr_scope(%struct.in6_addr*) #1

declare dso_local i64 @addrconf_timeout_fixup(i64, i64) #1

declare dso_local i64 @addrconf_finite_timeout(i64) #1

declare dso_local i64 @jiffies_to_clock_t(i64) #1

declare dso_local %struct.inet6_ifaddr* @ipv6_add_addr(%struct.inet6_dev*, %struct.in6_addr*, i32, i32, i32, i64, i64) #1

declare dso_local i32 @IS_ERR(%struct.inet6_ifaddr*) #1

declare dso_local i32 @addrconf_prefix_route(i32*, i32, %struct.net_device*, i64, i64) #1

declare dso_local i32 @addrconf_dad_start(%struct.inet6_ifaddr*, i32) #1

declare dso_local i32 @in6_ifa_put(%struct.inet6_ifaddr*) #1

declare dso_local i32 @addrconf_verify(i32) #1

declare dso_local i32 @PTR_ERR(%struct.inet6_ifaddr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
