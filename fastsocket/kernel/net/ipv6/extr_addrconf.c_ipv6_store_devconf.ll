; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_addrconf.c_ipv6_store_devconf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_addrconf.c_ipv6_store_devconf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipv6_devconf = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@DEVCONF_MAX = common dso_local global i32 0, align 4
@DEVCONF_FORWARDING = common dso_local global i64 0, align 8
@DEVCONF_HOPLIMIT = common dso_local global i64 0, align 8
@DEVCONF_MTU6 = common dso_local global i64 0, align 8
@DEVCONF_ACCEPT_RA = common dso_local global i64 0, align 8
@DEVCONF_ACCEPT_REDIRECTS = common dso_local global i64 0, align 8
@DEVCONF_AUTOCONF = common dso_local global i64 0, align 8
@DEVCONF_DAD_TRANSMITS = common dso_local global i64 0, align 8
@DEVCONF_RTR_SOLICITS = common dso_local global i64 0, align 8
@DEVCONF_RTR_SOLICIT_INTERVAL = common dso_local global i64 0, align 8
@DEVCONF_RTR_SOLICIT_DELAY = common dso_local global i64 0, align 8
@DEVCONF_FORCE_MLD_VERSION = common dso_local global i64 0, align 8
@DEVCONF_MAX_ADDRESSES = common dso_local global i64 0, align 8
@DEVCONF_ACCEPT_RA_DEFRTR = common dso_local global i64 0, align 8
@DEVCONF_ACCEPT_RA_PINFO = common dso_local global i64 0, align 8
@DEVCONF_PROXY_NDP = common dso_local global i64 0, align 8
@DEVCONF_ACCEPT_SOURCE_ROUTE = common dso_local global i64 0, align 8
@DEVCONF_DISABLE_IPV6 = common dso_local global i64 0, align 8
@DEVCONF_ACCEPT_DAD = common dso_local global i64 0, align 8
@DEVCONF_ACCEPT_RA_RTR_PREF = common dso_local global i64 0, align 8
@DEVCONF_ACCEPT_RA_RT_INFO_MAX_PLEN = common dso_local global i64 0, align 8
@DEVCONF_MAX_DESYNC_FACTOR = common dso_local global i64 0, align 8
@DEVCONF_MC_FORWARDING = common dso_local global i64 0, align 8
@DEVCONF_OPTIMISTIC_DAD = common dso_local global i64 0, align 8
@DEVCONF_REGEN_MAX_RETRY = common dso_local global i64 0, align 8
@DEVCONF_RTR_PROBE_INTERVAL = common dso_local global i64 0, align 8
@DEVCONF_TEMP_PREFERED_LFT = common dso_local global i64 0, align 8
@DEVCONF_TEMP_VALID_LFT = common dso_local global i64 0, align 8
@DEVCONF_USE_TEMPADDR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipv6_devconf*, i32*, i32)* @ipv6_store_devconf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipv6_store_devconf(%struct.ipv6_devconf* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.ipv6_devconf*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.ipv6_devconf* %0, %struct.ipv6_devconf** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @DEVCONF_MAX, align 4
  %9 = mul nsw i32 %8, 4
  %10 = icmp slt i32 %7, %9
  %11 = zext i1 %10 to i32
  %12 = call i32 @BUG_ON(i32 %11)
  %13 = load i32*, i32** %5, align 8
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @memset(i32* %13, i32 0, i32 %14)
  %16 = load %struct.ipv6_devconf*, %struct.ipv6_devconf** %4, align 8
  %17 = getelementptr inbounds %struct.ipv6_devconf, %struct.ipv6_devconf* %16, i32 0, i32 27
  %18 = load i32, i32* %17, align 4
  %19 = load i32*, i32** %5, align 8
  %20 = load i64, i64* @DEVCONF_FORWARDING, align 8
  %21 = getelementptr inbounds i32, i32* %19, i64 %20
  store i32 %18, i32* %21, align 4
  %22 = load %struct.ipv6_devconf*, %struct.ipv6_devconf** %4, align 8
  %23 = getelementptr inbounds %struct.ipv6_devconf, %struct.ipv6_devconf* %22, i32 0, i32 26
  %24 = load i32, i32* %23, align 4
  %25 = load i32*, i32** %5, align 8
  %26 = load i64, i64* @DEVCONF_HOPLIMIT, align 8
  %27 = getelementptr inbounds i32, i32* %25, i64 %26
  store i32 %24, i32* %27, align 4
  %28 = load %struct.ipv6_devconf*, %struct.ipv6_devconf** %4, align 8
  %29 = getelementptr inbounds %struct.ipv6_devconf, %struct.ipv6_devconf* %28, i32 0, i32 25
  %30 = load i32, i32* %29, align 4
  %31 = load i32*, i32** %5, align 8
  %32 = load i64, i64* @DEVCONF_MTU6, align 8
  %33 = getelementptr inbounds i32, i32* %31, i64 %32
  store i32 %30, i32* %33, align 4
  %34 = load %struct.ipv6_devconf*, %struct.ipv6_devconf** %4, align 8
  %35 = getelementptr inbounds %struct.ipv6_devconf, %struct.ipv6_devconf* %34, i32 0, i32 24
  %36 = load i32, i32* %35, align 4
  %37 = load i32*, i32** %5, align 8
  %38 = load i64, i64* @DEVCONF_ACCEPT_RA, align 8
  %39 = getelementptr inbounds i32, i32* %37, i64 %38
  store i32 %36, i32* %39, align 4
  %40 = load %struct.ipv6_devconf*, %struct.ipv6_devconf** %4, align 8
  %41 = getelementptr inbounds %struct.ipv6_devconf, %struct.ipv6_devconf* %40, i32 0, i32 23
  %42 = load i32, i32* %41, align 4
  %43 = load i32*, i32** %5, align 8
  %44 = load i64, i64* @DEVCONF_ACCEPT_REDIRECTS, align 8
  %45 = getelementptr inbounds i32, i32* %43, i64 %44
  store i32 %42, i32* %45, align 4
  %46 = load %struct.ipv6_devconf*, %struct.ipv6_devconf** %4, align 8
  %47 = getelementptr inbounds %struct.ipv6_devconf, %struct.ipv6_devconf* %46, i32 0, i32 22
  %48 = load i32, i32* %47, align 4
  %49 = load i32*, i32** %5, align 8
  %50 = load i64, i64* @DEVCONF_AUTOCONF, align 8
  %51 = getelementptr inbounds i32, i32* %49, i64 %50
  store i32 %48, i32* %51, align 4
  %52 = load %struct.ipv6_devconf*, %struct.ipv6_devconf** %4, align 8
  %53 = getelementptr inbounds %struct.ipv6_devconf, %struct.ipv6_devconf* %52, i32 0, i32 21
  %54 = load i32, i32* %53, align 4
  %55 = load i32*, i32** %5, align 8
  %56 = load i64, i64* @DEVCONF_DAD_TRANSMITS, align 8
  %57 = getelementptr inbounds i32, i32* %55, i64 %56
  store i32 %54, i32* %57, align 4
  %58 = load %struct.ipv6_devconf*, %struct.ipv6_devconf** %4, align 8
  %59 = getelementptr inbounds %struct.ipv6_devconf, %struct.ipv6_devconf* %58, i32 0, i32 20
  %60 = load i32, i32* %59, align 4
  %61 = load i32*, i32** %5, align 8
  %62 = load i64, i64* @DEVCONF_RTR_SOLICITS, align 8
  %63 = getelementptr inbounds i32, i32* %61, i64 %62
  store i32 %60, i32* %63, align 4
  %64 = load %struct.ipv6_devconf*, %struct.ipv6_devconf** %4, align 8
  %65 = getelementptr inbounds %struct.ipv6_devconf, %struct.ipv6_devconf* %64, i32 0, i32 19
  %66 = load i32, i32* %65, align 4
  %67 = load i32*, i32** %5, align 8
  %68 = load i64, i64* @DEVCONF_RTR_SOLICIT_INTERVAL, align 8
  %69 = getelementptr inbounds i32, i32* %67, i64 %68
  store i32 %66, i32* %69, align 4
  %70 = load %struct.ipv6_devconf*, %struct.ipv6_devconf** %4, align 8
  %71 = getelementptr inbounds %struct.ipv6_devconf, %struct.ipv6_devconf* %70, i32 0, i32 18
  %72 = load i32, i32* %71, align 4
  %73 = load i32*, i32** %5, align 8
  %74 = load i64, i64* @DEVCONF_RTR_SOLICIT_DELAY, align 8
  %75 = getelementptr inbounds i32, i32* %73, i64 %74
  store i32 %72, i32* %75, align 4
  %76 = load %struct.ipv6_devconf*, %struct.ipv6_devconf** %4, align 8
  %77 = getelementptr inbounds %struct.ipv6_devconf, %struct.ipv6_devconf* %76, i32 0, i32 17
  %78 = load i32, i32* %77, align 4
  %79 = load i32*, i32** %5, align 8
  %80 = load i64, i64* @DEVCONF_FORCE_MLD_VERSION, align 8
  %81 = getelementptr inbounds i32, i32* %79, i64 %80
  store i32 %78, i32* %81, align 4
  %82 = load %struct.ipv6_devconf*, %struct.ipv6_devconf** %4, align 8
  %83 = getelementptr inbounds %struct.ipv6_devconf, %struct.ipv6_devconf* %82, i32 0, i32 11
  %84 = load i32, i32* %83, align 4
  %85 = load i32*, i32** %5, align 8
  %86 = load i64, i64* @DEVCONF_MAX_ADDRESSES, align 8
  %87 = getelementptr inbounds i32, i32* %85, i64 %86
  store i32 %84, i32* %87, align 4
  %88 = load %struct.ipv6_devconf*, %struct.ipv6_devconf** %4, align 8
  %89 = getelementptr inbounds %struct.ipv6_devconf, %struct.ipv6_devconf* %88, i32 0, i32 10
  %90 = load i32, i32* %89, align 4
  %91 = load i32*, i32** %5, align 8
  %92 = load i64, i64* @DEVCONF_ACCEPT_RA_DEFRTR, align 8
  %93 = getelementptr inbounds i32, i32* %91, i64 %92
  store i32 %90, i32* %93, align 4
  %94 = load %struct.ipv6_devconf*, %struct.ipv6_devconf** %4, align 8
  %95 = getelementptr inbounds %struct.ipv6_devconf, %struct.ipv6_devconf* %94, i32 0, i32 9
  %96 = load i32, i32* %95, align 4
  %97 = load i32*, i32** %5, align 8
  %98 = load i64, i64* @DEVCONF_ACCEPT_RA_PINFO, align 8
  %99 = getelementptr inbounds i32, i32* %97, i64 %98
  store i32 %96, i32* %99, align 4
  %100 = load %struct.ipv6_devconf*, %struct.ipv6_devconf** %4, align 8
  %101 = getelementptr inbounds %struct.ipv6_devconf, %struct.ipv6_devconf* %100, i32 0, i32 5
  %102 = load i32, i32* %101, align 4
  %103 = load i32*, i32** %5, align 8
  %104 = load i64, i64* @DEVCONF_PROXY_NDP, align 8
  %105 = getelementptr inbounds i32, i32* %103, i64 %104
  store i32 %102, i32* %105, align 4
  %106 = load %struct.ipv6_devconf*, %struct.ipv6_devconf** %4, align 8
  %107 = getelementptr inbounds %struct.ipv6_devconf, %struct.ipv6_devconf* %106, i32 0, i32 4
  %108 = load i32, i32* %107, align 4
  %109 = load i32*, i32** %5, align 8
  %110 = load i64, i64* @DEVCONF_ACCEPT_SOURCE_ROUTE, align 8
  %111 = getelementptr inbounds i32, i32* %109, i64 %110
  store i32 %108, i32* %111, align 4
  %112 = load %struct.ipv6_devconf*, %struct.ipv6_devconf** %4, align 8
  %113 = getelementptr inbounds %struct.ipv6_devconf, %struct.ipv6_devconf* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = load i32*, i32** %5, align 8
  %116 = load i64, i64* @DEVCONF_DISABLE_IPV6, align 8
  %117 = getelementptr inbounds i32, i32* %115, i64 %116
  store i32 %114, i32* %117, align 4
  %118 = load %struct.ipv6_devconf*, %struct.ipv6_devconf** %4, align 8
  %119 = getelementptr inbounds %struct.ipv6_devconf, %struct.ipv6_devconf* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load i32*, i32** %5, align 8
  %122 = load i64, i64* @DEVCONF_ACCEPT_DAD, align 8
  %123 = getelementptr inbounds i32, i32* %121, i64 %122
  store i32 %120, i32* %123, align 4
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
