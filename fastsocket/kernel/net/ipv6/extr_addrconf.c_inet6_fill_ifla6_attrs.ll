; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_addrconf.c_inet6_fill_ifla6_attrs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_addrconf.c_inet6_fill_ifla6_attrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.inet6_dev = type { i32, %struct.TYPE_4__, i32, %struct.TYPE_3__*, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.nlattr = type { i32 }
%struct.ifla_cacheinfo = type { i32, i32, i64, i32 }

@IFLA_INET6_FLAGS = common dso_local global i32 0, align 4
@IPV6_MAXPLEN = common dso_local global i32 0, align 4
@INITIAL_JIFFIES = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@IFLA_INET6_CACHEINFO = common dso_local global i32 0, align 4
@IFLA_INET6_CONF = common dso_local global i32 0, align 4
@DEVCONF_MAX = common dso_local global i32 0, align 4
@IFLA_INET6_STATS = common dso_local global i32 0, align 4
@IPSTATS_MIB_MAX = common dso_local global i32 0, align 4
@IFLA_INET6_ICMP6STATS = common dso_local global i32 0, align 4
@ICMP6_MIB_MAX = common dso_local global i32 0, align 4
@IFLA_INET6_TOKEN = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.inet6_dev*)* @inet6_fill_ifla6_attrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @inet6_fill_ifla6_attrs(%struct.sk_buff* %0, %struct.inet6_dev* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.inet6_dev*, align 8
  %6 = alloca %struct.nlattr*, align 8
  %7 = alloca %struct.ifla_cacheinfo, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.inet6_dev* %1, %struct.inet6_dev** %5, align 8
  %8 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %9 = load i32, i32* @IFLA_INET6_FLAGS, align 4
  %10 = load %struct.inet6_dev*, %struct.inet6_dev** %5, align 8
  %11 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %10, i32 0, i32 5
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @NLA_PUT_U32(%struct.sk_buff* %8, i32 %9, i32 %12)
  %14 = load i32, i32* @IPV6_MAXPLEN, align 4
  %15 = getelementptr inbounds %struct.ifla_cacheinfo, %struct.ifla_cacheinfo* %7, i32 0, i32 3
  store i32 %14, i32* %15, align 8
  %16 = load %struct.inet6_dev*, %struct.inet6_dev** %5, align 8
  %17 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @INITIAL_JIFFIES, align 4
  %20 = call i32 @TIME_DELTA(i32 %18, i32 %19)
  %21 = load i32, i32* @HZ, align 4
  %22 = sdiv i32 %20, %21
  %23 = mul nsw i32 %22, 100
  %24 = load %struct.inet6_dev*, %struct.inet6_dev** %5, align 8
  %25 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @INITIAL_JIFFIES, align 4
  %28 = call i32 @TIME_DELTA(i32 %26, i32 %27)
  %29 = load i32, i32* @HZ, align 4
  %30 = srem i32 %28, %29
  %31 = mul nsw i32 %30, 100
  %32 = load i32, i32* @HZ, align 4
  %33 = sdiv i32 %31, %32
  %34 = add nsw i32 %23, %33
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.ifla_cacheinfo, %struct.ifla_cacheinfo* %7, i32 0, i32 2
  store i64 %35, i64* %36, align 8
  %37 = load %struct.inet6_dev*, %struct.inet6_dev** %5, align 8
  %38 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %37, i32 0, i32 3
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = getelementptr inbounds %struct.ifla_cacheinfo, %struct.ifla_cacheinfo* %7, i32 0, i32 1
  store i32 %41, i32* %42, align 4
  %43 = load %struct.inet6_dev*, %struct.inet6_dev** %5, align 8
  %44 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %43, i32 0, i32 3
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = getelementptr inbounds %struct.ifla_cacheinfo, %struct.ifla_cacheinfo* %7, i32 0, i32 0
  store i32 %47, i32* %48, align 8
  %49 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %50 = load i32, i32* @IFLA_INET6_CACHEINFO, align 4
  %51 = call i32 @NLA_PUT(%struct.sk_buff* %49, i32 %50, i32 24, %struct.ifla_cacheinfo* %7)
  %52 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %53 = load i32, i32* @IFLA_INET6_CONF, align 4
  %54 = load i32, i32* @DEVCONF_MAX, align 4
  %55 = sext i32 %54 to i64
  %56 = mul i64 %55, 4
  %57 = trunc i64 %56 to i32
  %58 = call %struct.nlattr* @nla_reserve(%struct.sk_buff* %52, i32 %53, i32 %57)
  store %struct.nlattr* %58, %struct.nlattr** %6, align 8
  %59 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %60 = icmp eq %struct.nlattr* %59, null
  br i1 %60, label %61, label %62

61:                                               ; preds = %2
  br label %128

62:                                               ; preds = %2
  %63 = load %struct.inet6_dev*, %struct.inet6_dev** %5, align 8
  %64 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %63, i32 0, i32 2
  %65 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %66 = call i32 @nla_data(%struct.nlattr* %65)
  %67 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %68 = call i32 @nla_len(%struct.nlattr* %67)
  %69 = call i32 @ipv6_store_devconf(i32* %64, i32 %66, i32 %68)
  %70 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %71 = load i32, i32* @IFLA_INET6_STATS, align 4
  %72 = load i32, i32* @IPSTATS_MIB_MAX, align 4
  %73 = sext i32 %72 to i64
  %74 = mul i64 %73, 4
  %75 = trunc i64 %74 to i32
  %76 = call %struct.nlattr* @nla_reserve(%struct.sk_buff* %70, i32 %71, i32 %75)
  store %struct.nlattr* %76, %struct.nlattr** %6, align 8
  %77 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %78 = icmp eq %struct.nlattr* %77, null
  br i1 %78, label %79, label %80

79:                                               ; preds = %62
  br label %128

80:                                               ; preds = %62
  %81 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %82 = call i32 @nla_data(%struct.nlattr* %81)
  %83 = load %struct.inet6_dev*, %struct.inet6_dev** %5, align 8
  %84 = load i32, i32* @IFLA_INET6_STATS, align 4
  %85 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %86 = call i32 @nla_len(%struct.nlattr* %85)
  %87 = call i32 @snmp6_fill_stats(i32 %82, %struct.inet6_dev* %83, i32 %84, i32 %86)
  %88 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %89 = load i32, i32* @IFLA_INET6_ICMP6STATS, align 4
  %90 = load i32, i32* @ICMP6_MIB_MAX, align 4
  %91 = sext i32 %90 to i64
  %92 = mul i64 %91, 4
  %93 = trunc i64 %92 to i32
  %94 = call %struct.nlattr* @nla_reserve(%struct.sk_buff* %88, i32 %89, i32 %93)
  store %struct.nlattr* %94, %struct.nlattr** %6, align 8
  %95 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %96 = icmp eq %struct.nlattr* %95, null
  br i1 %96, label %97, label %98

97:                                               ; preds = %80
  br label %128

98:                                               ; preds = %80
  %99 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %100 = call i32 @nla_data(%struct.nlattr* %99)
  %101 = load %struct.inet6_dev*, %struct.inet6_dev** %5, align 8
  %102 = load i32, i32* @IFLA_INET6_ICMP6STATS, align 4
  %103 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %104 = call i32 @nla_len(%struct.nlattr* %103)
  %105 = call i32 @snmp6_fill_stats(i32 %100, %struct.inet6_dev* %101, i32 %102, i32 %104)
  %106 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %107 = load i32, i32* @IFLA_INET6_TOKEN, align 4
  %108 = call %struct.nlattr* @nla_reserve(%struct.sk_buff* %106, i32 %107, i32 4)
  store %struct.nlattr* %108, %struct.nlattr** %6, align 8
  %109 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %110 = icmp eq %struct.nlattr* %109, null
  br i1 %110, label %111, label %112

111:                                              ; preds = %98
  br label %128

112:                                              ; preds = %98
  %113 = load %struct.inet6_dev*, %struct.inet6_dev** %5, align 8
  %114 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %113, i32 0, i32 0
  %115 = call i32 @read_lock_bh(i32* %114)
  %116 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %117 = call i32 @nla_data(%struct.nlattr* %116)
  %118 = load %struct.inet6_dev*, %struct.inet6_dev** %5, align 8
  %119 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %123 = call i32 @nla_len(%struct.nlattr* %122)
  %124 = call i32 @memcpy(i32 %117, i32 %121, i32 %123)
  %125 = load %struct.inet6_dev*, %struct.inet6_dev** %5, align 8
  %126 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %125, i32 0, i32 0
  %127 = call i32 @read_unlock_bh(i32* %126)
  store i32 0, i32* %3, align 4
  br label %131

128:                                              ; preds = %111, %97, %79, %61
  %129 = load i32, i32* @EMSGSIZE, align 4
  %130 = sub nsw i32 0, %129
  store i32 %130, i32* %3, align 4
  br label %131

131:                                              ; preds = %128, %112
  %132 = load i32, i32* %3, align 4
  ret i32 %132
}

declare dso_local i32 @NLA_PUT_U32(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @TIME_DELTA(i32, i32) #1

declare dso_local i32 @NLA_PUT(%struct.sk_buff*, i32, i32, %struct.ifla_cacheinfo*) #1

declare dso_local %struct.nlattr* @nla_reserve(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @ipv6_store_devconf(i32*, i32, i32) #1

declare dso_local i32 @nla_data(%struct.nlattr*) #1

declare dso_local i32 @nla_len(%struct.nlattr*) #1

declare dso_local i32 @snmp6_fill_stats(i32, %struct.inet6_dev*, i32, i32) #1

declare dso_local i32 @read_lock_bh(i32*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @read_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
