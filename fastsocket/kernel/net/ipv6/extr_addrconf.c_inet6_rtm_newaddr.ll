; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_addrconf.c_inet6_rtm_newaddr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_addrconf.c_inet6_rtm_newaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nlmsghdr = type { i32 }
%struct.net = type { i32 }
%struct.ifaddrmsg = type { i32, i32, i32 }
%struct.in6_addr = type { i32 }
%struct.inet6_ifaddr = type { i32 }
%struct.net_device = type { i32 }
%struct.ifa_cacheinfo = type { i32, i32 }
%struct.nlattr = type { i32 }

@IFA_MAX = common dso_local global i32 0, align 4
@INFINITY_LIFE_TIME = common dso_local global i32 0, align 4
@ifa_ipv6_policy = common dso_local global i32 0, align 4
@IFA_ADDRESS = common dso_local global i64 0, align 8
@IFA_LOCAL = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@IFA_CACHEINFO = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@IFA_F_NODAD = common dso_local global i32 0, align 4
@IFA_F_HOMEADDRESS = common dso_local global i32 0, align 4
@NLM_F_EXCL = common dso_local global i32 0, align 4
@NLM_F_REPLACE = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nlmsghdr*, i8*)* @inet6_rtm_newaddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @inet6_rtm_newaddr(%struct.sk_buff* %0, %struct.nlmsghdr* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.nlmsghdr*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.net*, align 8
  %9 = alloca %struct.ifaddrmsg*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.in6_addr*, align 8
  %13 = alloca %struct.inet6_ifaddr*, align 8
  %14 = alloca %struct.net_device*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.ifa_cacheinfo*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.nlmsghdr* %1, %struct.nlmsghdr** %6, align 8
  store i8* %2, i8** %7, align 8
  %21 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %22 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.net* @sock_net(i32 %23)
  store %struct.net* %24, %struct.net** %8, align 8
  %25 = load i32, i32* @IFA_MAX, align 4
  %26 = add nsw i32 %25, 1
  %27 = zext i32 %26 to i64
  %28 = call i8* @llvm.stacksave()
  store i8* %28, i8** %10, align 8
  %29 = alloca %struct.nlattr*, i64 %27, align 16
  store i64 %27, i64* %11, align 8
  %30 = load i32, i32* @INFINITY_LIFE_TIME, align 4
  store i32 %30, i32* %15, align 4
  %31 = load i32, i32* @INFINITY_LIFE_TIME, align 4
  store i32 %31, i32* %16, align 4
  %32 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %33 = load i32, i32* @IFA_MAX, align 4
  %34 = load i32, i32* @ifa_ipv6_policy, align 4
  %35 = call i32 @nlmsg_parse(%struct.nlmsghdr* %32, i32 12, %struct.nlattr** %29, i32 %33, i32 %34)
  store i32 %35, i32* %18, align 4
  %36 = load i32, i32* %18, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %3
  %39 = load i32, i32* %18, align 4
  store i32 %39, i32* %4, align 4
  store i32 1, i32* %19, align 4
  br label %139

40:                                               ; preds = %3
  %41 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %42 = call %struct.ifaddrmsg* @nlmsg_data(%struct.nlmsghdr* %41)
  store %struct.ifaddrmsg* %42, %struct.ifaddrmsg** %9, align 8
  %43 = load i64, i64* @IFA_ADDRESS, align 8
  %44 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %29, i64 %43
  %45 = load %struct.nlattr*, %struct.nlattr** %44, align 8
  %46 = load i64, i64* @IFA_LOCAL, align 8
  %47 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %29, i64 %46
  %48 = load %struct.nlattr*, %struct.nlattr** %47, align 8
  %49 = call %struct.in6_addr* @extract_addr(%struct.nlattr* %45, %struct.nlattr* %48)
  store %struct.in6_addr* %49, %struct.in6_addr** %12, align 8
  %50 = load %struct.in6_addr*, %struct.in6_addr** %12, align 8
  %51 = icmp eq %struct.in6_addr* %50, null
  br i1 %51, label %52, label %55

52:                                               ; preds = %40
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %4, align 4
  store i32 1, i32* %19, align 4
  br label %139

55:                                               ; preds = %40
  %56 = load i64, i64* @IFA_CACHEINFO, align 8
  %57 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %29, i64 %56
  %58 = load %struct.nlattr*, %struct.nlattr** %57, align 8
  %59 = icmp ne %struct.nlattr* %58, null
  br i1 %59, label %60, label %71

60:                                               ; preds = %55
  %61 = load i64, i64* @IFA_CACHEINFO, align 8
  %62 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %29, i64 %61
  %63 = load %struct.nlattr*, %struct.nlattr** %62, align 8
  %64 = call %struct.ifa_cacheinfo* @nla_data(%struct.nlattr* %63)
  store %struct.ifa_cacheinfo* %64, %struct.ifa_cacheinfo** %20, align 8
  %65 = load %struct.ifa_cacheinfo*, %struct.ifa_cacheinfo** %20, align 8
  %66 = getelementptr inbounds %struct.ifa_cacheinfo, %struct.ifa_cacheinfo* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  store i32 %67, i32* %15, align 4
  %68 = load %struct.ifa_cacheinfo*, %struct.ifa_cacheinfo** %20, align 8
  %69 = getelementptr inbounds %struct.ifa_cacheinfo, %struct.ifa_cacheinfo* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* %16, align 4
  br label %74

71:                                               ; preds = %55
  %72 = load i32, i32* @INFINITY_LIFE_TIME, align 4
  store i32 %72, i32* %16, align 4
  %73 = load i32, i32* @INFINITY_LIFE_TIME, align 4
  store i32 %73, i32* %15, align 4
  br label %74

74:                                               ; preds = %71, %60
  %75 = load %struct.net*, %struct.net** %8, align 8
  %76 = load %struct.ifaddrmsg*, %struct.ifaddrmsg** %9, align 8
  %77 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = call %struct.net_device* @__dev_get_by_index(%struct.net* %75, i32 %78)
  store %struct.net_device* %79, %struct.net_device** %14, align 8
  %80 = load %struct.net_device*, %struct.net_device** %14, align 8
  %81 = icmp eq %struct.net_device* %80, null
  br i1 %81, label %82, label %85

82:                                               ; preds = %74
  %83 = load i32, i32* @ENODEV, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %4, align 4
  store i32 1, i32* %19, align 4
  br label %139

85:                                               ; preds = %74
  %86 = load %struct.ifaddrmsg*, %struct.ifaddrmsg** %9, align 8
  %87 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @IFA_F_NODAD, align 4
  %90 = load i32, i32* @IFA_F_HOMEADDRESS, align 4
  %91 = or i32 %89, %90
  %92 = and i32 %88, %91
  store i32 %92, i32* %17, align 4
  %93 = load %struct.net*, %struct.net** %8, align 8
  %94 = load %struct.in6_addr*, %struct.in6_addr** %12, align 8
  %95 = load %struct.net_device*, %struct.net_device** %14, align 8
  %96 = call %struct.inet6_ifaddr* @ipv6_get_ifaddr(%struct.net* %93, %struct.in6_addr* %94, %struct.net_device* %95, i32 1)
  store %struct.inet6_ifaddr* %96, %struct.inet6_ifaddr** %13, align 8
  %97 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %13, align 8
  %98 = icmp eq %struct.inet6_ifaddr* %97, null
  br i1 %98, label %99, label %112

99:                                               ; preds = %85
  %100 = load %struct.net*, %struct.net** %8, align 8
  %101 = load %struct.ifaddrmsg*, %struct.ifaddrmsg** %9, align 8
  %102 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.in6_addr*, %struct.in6_addr** %12, align 8
  %105 = load %struct.ifaddrmsg*, %struct.ifaddrmsg** %9, align 8
  %106 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* %17, align 4
  %109 = load i32, i32* %16, align 4
  %110 = load i32, i32* %15, align 4
  %111 = call i32 @inet6_addr_add(%struct.net* %100, i32 %103, %struct.in6_addr* %104, i32 %107, i32 %108, i32 %109, i32 %110)
  store i32 %111, i32* %4, align 4
  store i32 1, i32* %19, align 4
  br label %139

112:                                              ; preds = %85
  %113 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %114 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @NLM_F_EXCL, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %126, label %119

119:                                              ; preds = %112
  %120 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %121 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @NLM_F_REPLACE, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %129, label %126

126:                                              ; preds = %119, %112
  %127 = load i32, i32* @EEXIST, align 4
  %128 = sub nsw i32 0, %127
  store i32 %128, i32* %18, align 4
  br label %135

129:                                              ; preds = %119
  %130 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %13, align 8
  %131 = load i32, i32* %17, align 4
  %132 = load i32, i32* %16, align 4
  %133 = load i32, i32* %15, align 4
  %134 = call i32 @inet6_addr_modify(%struct.inet6_ifaddr* %130, i32 %131, i32 %132, i32 %133)
  store i32 %134, i32* %18, align 4
  br label %135

135:                                              ; preds = %129, %126
  %136 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %13, align 8
  %137 = call i32 @in6_ifa_put(%struct.inet6_ifaddr* %136)
  %138 = load i32, i32* %18, align 4
  store i32 %138, i32* %4, align 4
  store i32 1, i32* %19, align 4
  br label %139

139:                                              ; preds = %135, %99, %82, %52, %38
  %140 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %140)
  %141 = load i32, i32* %4, align 4
  ret i32 %141
}

declare dso_local %struct.net* @sock_net(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @nlmsg_parse(%struct.nlmsghdr*, i32, %struct.nlattr**, i32, i32) #1

declare dso_local %struct.ifaddrmsg* @nlmsg_data(%struct.nlmsghdr*) #1

declare dso_local %struct.in6_addr* @extract_addr(%struct.nlattr*, %struct.nlattr*) #1

declare dso_local %struct.ifa_cacheinfo* @nla_data(%struct.nlattr*) #1

declare dso_local %struct.net_device* @__dev_get_by_index(%struct.net*, i32) #1

declare dso_local %struct.inet6_ifaddr* @ipv6_get_ifaddr(%struct.net*, %struct.in6_addr*, %struct.net_device*, i32) #1

declare dso_local i32 @inet6_addr_add(%struct.net*, i32, %struct.in6_addr*, i32, i32, i32, i32) #1

declare dso_local i32 @inet6_addr_modify(%struct.inet6_ifaddr*, i32, i32, i32) #1

declare dso_local i32 @in6_ifa_put(%struct.inet6_ifaddr*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
