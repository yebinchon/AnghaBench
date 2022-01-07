; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_devinet.c_inet_rtm_deladdr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_devinet.c_inet_rtm_deladdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nlmsghdr = type { i32 }
%struct.net = type { i32 }
%struct.in_device = type { %struct.in_ifaddr* }
%struct.in_ifaddr = type { i64, i64, i32, %struct.in_ifaddr* }
%struct.ifaddrmsg = type { i64, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.nlattr = type { i32 }

@IFA_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ifa_ipv4_policy = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@IFA_LOCAL = common dso_local global i64 0, align 8
@IFA_LABEL = common dso_local global i64 0, align 8
@IFA_ADDRESS = common dso_local global i64 0, align 8
@EADDRNOTAVAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nlmsghdr*, i8*)* @inet_rtm_deladdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @inet_rtm_deladdr(%struct.sk_buff* %0, %struct.nlmsghdr* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.nlmsghdr*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.net*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.in_device*, align 8
  %12 = alloca %struct.ifaddrmsg*, align 8
  %13 = alloca %struct.in_ifaddr*, align 8
  %14 = alloca %struct.in_ifaddr**, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_2__, align 4
  %17 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.nlmsghdr* %1, %struct.nlmsghdr** %6, align 8
  store i8* %2, i8** %7, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %19 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.net* @sock_net(i32 %20)
  store %struct.net* %21, %struct.net** %8, align 8
  %22 = load i32, i32* @IFA_MAX, align 4
  %23 = add nsw i32 %22, 1
  %24 = zext i32 %23 to i64
  %25 = call i8* @llvm.stacksave()
  store i8* %25, i8** %9, align 8
  %26 = alloca %struct.nlattr*, i64 %24, align 16
  store i64 %24, i64* %10, align 8
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %15, align 4
  %29 = call i32 (...) @ASSERT_RTNL()
  %30 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %31 = load i32, i32* @IFA_MAX, align 4
  %32 = load i32, i32* @ifa_ipv4_policy, align 4
  %33 = call i32 @nlmsg_parse(%struct.nlmsghdr* %30, i32 16, %struct.nlattr** %26, i32 %31, i32 %32)
  store i32 %33, i32* %15, align 4
  %34 = load i32, i32* %15, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %3
  br label %127

37:                                               ; preds = %3
  %38 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %39 = call %struct.ifaddrmsg* @nlmsg_data(%struct.nlmsghdr* %38)
  store %struct.ifaddrmsg* %39, %struct.ifaddrmsg** %12, align 8
  %40 = load %struct.net*, %struct.net** %8, align 8
  %41 = load %struct.ifaddrmsg*, %struct.ifaddrmsg** %12, align 8
  %42 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = call %struct.in_device* @inetdev_by_index(%struct.net* %40, i32 %43)
  store %struct.in_device* %44, %struct.in_device** %11, align 8
  %45 = load %struct.in_device*, %struct.in_device** %11, align 8
  %46 = icmp eq %struct.in_device* %45, null
  br i1 %46, label %47, label %50

47:                                               ; preds = %37
  %48 = load i32, i32* @ENODEV, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %15, align 4
  br label %127

50:                                               ; preds = %37
  %51 = load %struct.in_device*, %struct.in_device** %11, align 8
  %52 = call i32 @__in_dev_put(%struct.in_device* %51)
  %53 = load %struct.in_device*, %struct.in_device** %11, align 8
  %54 = getelementptr inbounds %struct.in_device, %struct.in_device* %53, i32 0, i32 0
  store %struct.in_ifaddr** %54, %struct.in_ifaddr*** %14, align 8
  br label %55

55:                                               ; preds = %121, %50
  %56 = load %struct.in_ifaddr**, %struct.in_ifaddr*** %14, align 8
  %57 = load %struct.in_ifaddr*, %struct.in_ifaddr** %56, align 8
  store %struct.in_ifaddr* %57, %struct.in_ifaddr** %13, align 8
  %58 = icmp ne %struct.in_ifaddr* %57, null
  br i1 %58, label %59, label %124

59:                                               ; preds = %55
  %60 = load i64, i64* @IFA_LOCAL, align 8
  %61 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %26, i64 %60
  %62 = load %struct.nlattr*, %struct.nlattr** %61, align 8
  %63 = icmp ne %struct.nlattr* %62, null
  br i1 %63, label %64, label %74

64:                                               ; preds = %59
  %65 = load %struct.in_ifaddr*, %struct.in_ifaddr** %13, align 8
  %66 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @IFA_LOCAL, align 8
  %69 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %26, i64 %68
  %70 = load %struct.nlattr*, %struct.nlattr** %69, align 8
  %71 = call i64 @nla_get_be32(%struct.nlattr* %70)
  %72 = icmp ne i64 %67, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %64
  br label %121

74:                                               ; preds = %64, %59
  %75 = load i64, i64* @IFA_LABEL, align 8
  %76 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %26, i64 %75
  %77 = load %struct.nlattr*, %struct.nlattr** %76, align 8
  %78 = icmp ne %struct.nlattr* %77, null
  br i1 %78, label %79, label %89

79:                                               ; preds = %74
  %80 = load i64, i64* @IFA_LABEL, align 8
  %81 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %26, i64 %80
  %82 = load %struct.nlattr*, %struct.nlattr** %81, align 8
  %83 = load %struct.in_ifaddr*, %struct.in_ifaddr** %13, align 8
  %84 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = call i64 @nla_strcmp(%struct.nlattr* %82, i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %79
  br label %121

89:                                               ; preds = %79, %74
  %90 = load i64, i64* @IFA_ADDRESS, align 8
  %91 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %26, i64 %90
  %92 = load %struct.nlattr*, %struct.nlattr** %91, align 8
  %93 = icmp ne %struct.nlattr* %92, null
  br i1 %93, label %94, label %111

94:                                               ; preds = %89
  %95 = load %struct.ifaddrmsg*, %struct.ifaddrmsg** %12, align 8
  %96 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.in_ifaddr*, %struct.in_ifaddr** %13, align 8
  %99 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %97, %100
  br i1 %101, label %110, label %102

102:                                              ; preds = %94
  %103 = load i64, i64* @IFA_ADDRESS, align 8
  %104 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %26, i64 %103
  %105 = load %struct.nlattr*, %struct.nlattr** %104, align 8
  %106 = call i64 @nla_get_be32(%struct.nlattr* %105)
  %107 = load %struct.in_ifaddr*, %struct.in_ifaddr** %13, align 8
  %108 = call i32 @inet_ifa_match(i64 %106, %struct.in_ifaddr* %107)
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %111, label %110

110:                                              ; preds = %102, %94
  br label %121

111:                                              ; preds = %102, %89
  %112 = load %struct.in_device*, %struct.in_device** %11, align 8
  %113 = load %struct.in_ifaddr**, %struct.in_ifaddr*** %14, align 8
  %114 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %115 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %116 = call i32 @NETLINK_CB(%struct.sk_buff* %115)
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  store i32 %116, i32* %117, align 4
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @__inet_del_ifa(%struct.in_device* %112, %struct.in_ifaddr** %113, i32 1, %struct.nlmsghdr* %114, i32 %119)
  store i32 0, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %129

121:                                              ; preds = %110, %88, %73
  %122 = load %struct.in_ifaddr*, %struct.in_ifaddr** %13, align 8
  %123 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %122, i32 0, i32 3
  store %struct.in_ifaddr** %123, %struct.in_ifaddr*** %14, align 8
  br label %55

124:                                              ; preds = %55
  %125 = load i32, i32* @EADDRNOTAVAIL, align 4
  %126 = sub nsw i32 0, %125
  store i32 %126, i32* %15, align 4
  br label %127

127:                                              ; preds = %124, %47, %36
  %128 = load i32, i32* %15, align 4
  store i32 %128, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %129

129:                                              ; preds = %127, %111
  %130 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %130)
  %131 = load i32, i32* %4, align 4
  ret i32 %131
}

declare dso_local %struct.net* @sock_net(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @ASSERT_RTNL(...) #1

declare dso_local i32 @nlmsg_parse(%struct.nlmsghdr*, i32, %struct.nlattr**, i32, i32) #1

declare dso_local %struct.ifaddrmsg* @nlmsg_data(%struct.nlmsghdr*) #1

declare dso_local %struct.in_device* @inetdev_by_index(%struct.net*, i32) #1

declare dso_local i32 @__in_dev_put(%struct.in_device*) #1

declare dso_local i64 @nla_get_be32(%struct.nlattr*) #1

declare dso_local i64 @nla_strcmp(%struct.nlattr*, i32) #1

declare dso_local i32 @inet_ifa_match(i64, %struct.in_ifaddr*) #1

declare dso_local i32 @__inet_del_ifa(%struct.in_device*, %struct.in_ifaddr**, i32, %struct.nlmsghdr*, i32) #1

declare dso_local i32 @NETLINK_CB(%struct.sk_buff*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
