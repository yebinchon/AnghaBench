; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_devinet.c_rtm_to_ifaddr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_devinet.c_rtm_to_ifaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in_ifaddr = type { i32, i32, i8*, i8*, i8*, %struct.in_device*, i32, i32, i32 }
%struct.in_device = type { i32 }
%struct.net = type { i32 }
%struct.nlmsghdr = type { i32 }
%struct.ifaddrmsg = type { i32, i32, i32, i32 }
%struct.net_device = type { i32 }
%struct.nlattr = type { i32 }

@IFA_MAX = common dso_local global i32 0, align 4
@ifa_ipv4_policy = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IFA_LOCAL = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@IFA_ADDRESS = common dso_local global i64 0, align 8
@IFA_BROADCAST = common dso_local global i64 0, align 8
@IFA_LABEL = common dso_local global i64 0, align 8
@IFNAMSIZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.in_ifaddr* (%struct.net*, %struct.nlmsghdr*)* @rtm_to_ifaddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.in_ifaddr* @rtm_to_ifaddr(%struct.net* %0, %struct.nlmsghdr* %1) #0 {
  %3 = alloca %struct.in_ifaddr*, align 8
  %4 = alloca %struct.net*, align 8
  %5 = alloca %struct.nlmsghdr*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.in_ifaddr*, align 8
  %9 = alloca %struct.ifaddrmsg*, align 8
  %10 = alloca %struct.net_device*, align 8
  %11 = alloca %struct.in_device*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %4, align 8
  store %struct.nlmsghdr* %1, %struct.nlmsghdr** %5, align 8
  %14 = load i32, i32* @IFA_MAX, align 4
  %15 = add nsw i32 %14, 1
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %6, align 8
  %18 = alloca %struct.nlattr*, i64 %16, align 16
  store i64 %16, i64* %7, align 8
  %19 = load %struct.nlmsghdr*, %struct.nlmsghdr** %5, align 8
  %20 = load i32, i32* @IFA_MAX, align 4
  %21 = load i32, i32* @ifa_ipv4_policy, align 4
  %22 = call i32 @nlmsg_parse(%struct.nlmsghdr* %19, i32 16, %struct.nlattr** %18, i32 %20, i32 %21)
  store i32 %22, i32* %12, align 4
  %23 = load i32, i32* %12, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %2
  br label %153

26:                                               ; preds = %2
  %27 = load %struct.nlmsghdr*, %struct.nlmsghdr** %5, align 8
  %28 = call %struct.ifaddrmsg* @nlmsg_data(%struct.nlmsghdr* %27)
  store %struct.ifaddrmsg* %28, %struct.ifaddrmsg** %9, align 8
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %12, align 4
  %31 = load %struct.ifaddrmsg*, %struct.ifaddrmsg** %9, align 8
  %32 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp sgt i32 %33, 32
  br i1 %34, label %40, label %35

35:                                               ; preds = %26
  %36 = load i64, i64* @IFA_LOCAL, align 8
  %37 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %18, i64 %36
  %38 = load %struct.nlattr*, %struct.nlattr** %37, align 8
  %39 = icmp eq %struct.nlattr* %38, null
  br i1 %39, label %40, label %41

40:                                               ; preds = %35, %26
  br label %153

41:                                               ; preds = %35
  %42 = load %struct.net*, %struct.net** %4, align 8
  %43 = load %struct.ifaddrmsg*, %struct.ifaddrmsg** %9, align 8
  %44 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = call %struct.net_device* @__dev_get_by_index(%struct.net* %42, i32 %45)
  store %struct.net_device* %46, %struct.net_device** %10, align 8
  %47 = load i32, i32* @ENODEV, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %12, align 4
  %49 = load %struct.net_device*, %struct.net_device** %10, align 8
  %50 = icmp eq %struct.net_device* %49, null
  br i1 %50, label %51, label %52

51:                                               ; preds = %41
  br label %153

52:                                               ; preds = %41
  %53 = load %struct.net_device*, %struct.net_device** %10, align 8
  %54 = call %struct.in_device* @__in_dev_get_rtnl(%struct.net_device* %53)
  store %struct.in_device* %54, %struct.in_device** %11, align 8
  %55 = load i32, i32* @ENOBUFS, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %12, align 4
  %57 = load %struct.in_device*, %struct.in_device** %11, align 8
  %58 = icmp eq %struct.in_device* %57, null
  br i1 %58, label %59, label %60

59:                                               ; preds = %52
  br label %153

60:                                               ; preds = %52
  %61 = call %struct.in_ifaddr* (...) @inet_alloc_ifa()
  store %struct.in_ifaddr* %61, %struct.in_ifaddr** %8, align 8
  %62 = load %struct.in_ifaddr*, %struct.in_ifaddr** %8, align 8
  %63 = icmp eq %struct.in_ifaddr* %62, null
  br i1 %63, label %64, label %65

64:                                               ; preds = %60
  br label %153

65:                                               ; preds = %60
  %66 = load %struct.in_device*, %struct.in_device** %11, align 8
  %67 = call i32 @ipv4_devconf_setall(%struct.in_device* %66)
  %68 = load %struct.in_device*, %struct.in_device** %11, align 8
  %69 = call i32 @in_dev_hold(%struct.in_device* %68)
  %70 = load i64, i64* @IFA_ADDRESS, align 8
  %71 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %18, i64 %70
  %72 = load %struct.nlattr*, %struct.nlattr** %71, align 8
  %73 = icmp eq %struct.nlattr* %72, null
  br i1 %73, label %74, label %80

74:                                               ; preds = %65
  %75 = load i64, i64* @IFA_LOCAL, align 8
  %76 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %18, i64 %75
  %77 = load %struct.nlattr*, %struct.nlattr** %76, align 8
  %78 = load i64, i64* @IFA_ADDRESS, align 8
  %79 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %18, i64 %78
  store %struct.nlattr* %77, %struct.nlattr** %79, align 8
  br label %80

80:                                               ; preds = %74, %65
  %81 = load %struct.ifaddrmsg*, %struct.ifaddrmsg** %9, align 8
  %82 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.in_ifaddr*, %struct.in_ifaddr** %8, align 8
  %85 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %84, i32 0, i32 0
  store i32 %83, i32* %85, align 8
  %86 = load %struct.ifaddrmsg*, %struct.ifaddrmsg** %9, align 8
  %87 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @inet_make_mask(i32 %88)
  %90 = load %struct.in_ifaddr*, %struct.in_ifaddr** %8, align 8
  %91 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %90, i32 0, i32 8
  store i32 %89, i32* %91, align 8
  %92 = load %struct.ifaddrmsg*, %struct.ifaddrmsg** %9, align 8
  %93 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.in_ifaddr*, %struct.in_ifaddr** %8, align 8
  %96 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %95, i32 0, i32 7
  store i32 %94, i32* %96, align 4
  %97 = load %struct.ifaddrmsg*, %struct.ifaddrmsg** %9, align 8
  %98 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.in_ifaddr*, %struct.in_ifaddr** %8, align 8
  %101 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %100, i32 0, i32 6
  store i32 %99, i32* %101, align 8
  %102 = load %struct.in_device*, %struct.in_device** %11, align 8
  %103 = load %struct.in_ifaddr*, %struct.in_ifaddr** %8, align 8
  %104 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %103, i32 0, i32 5
  store %struct.in_device* %102, %struct.in_device** %104, align 8
  %105 = load i64, i64* @IFA_LOCAL, align 8
  %106 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %18, i64 %105
  %107 = load %struct.nlattr*, %struct.nlattr** %106, align 8
  %108 = call i8* @nla_get_be32(%struct.nlattr* %107)
  %109 = load %struct.in_ifaddr*, %struct.in_ifaddr** %8, align 8
  %110 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %109, i32 0, i32 4
  store i8* %108, i8** %110, align 8
  %111 = load i64, i64* @IFA_ADDRESS, align 8
  %112 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %18, i64 %111
  %113 = load %struct.nlattr*, %struct.nlattr** %112, align 8
  %114 = call i8* @nla_get_be32(%struct.nlattr* %113)
  %115 = load %struct.in_ifaddr*, %struct.in_ifaddr** %8, align 8
  %116 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %115, i32 0, i32 3
  store i8* %114, i8** %116, align 8
  %117 = load i64, i64* @IFA_BROADCAST, align 8
  %118 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %18, i64 %117
  %119 = load %struct.nlattr*, %struct.nlattr** %118, align 8
  %120 = icmp ne %struct.nlattr* %119, null
  br i1 %120, label %121, label %128

121:                                              ; preds = %80
  %122 = load i64, i64* @IFA_BROADCAST, align 8
  %123 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %18, i64 %122
  %124 = load %struct.nlattr*, %struct.nlattr** %123, align 8
  %125 = call i8* @nla_get_be32(%struct.nlattr* %124)
  %126 = load %struct.in_ifaddr*, %struct.in_ifaddr** %8, align 8
  %127 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %126, i32 0, i32 2
  store i8* %125, i8** %127, align 8
  br label %128

128:                                              ; preds = %121, %80
  %129 = load i64, i64* @IFA_LABEL, align 8
  %130 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %18, i64 %129
  %131 = load %struct.nlattr*, %struct.nlattr** %130, align 8
  %132 = icmp ne %struct.nlattr* %131, null
  br i1 %132, label %133, label %142

133:                                              ; preds = %128
  %134 = load %struct.in_ifaddr*, %struct.in_ifaddr** %8, align 8
  %135 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = load i64, i64* @IFA_LABEL, align 8
  %138 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %18, i64 %137
  %139 = load %struct.nlattr*, %struct.nlattr** %138, align 8
  %140 = load i32, i32* @IFNAMSIZ, align 4
  %141 = call i32 @nla_strlcpy(i32 %136, %struct.nlattr* %139, i32 %140)
  br label %151

142:                                              ; preds = %128
  %143 = load %struct.in_ifaddr*, %struct.in_ifaddr** %8, align 8
  %144 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.net_device*, %struct.net_device** %10, align 8
  %147 = getelementptr inbounds %struct.net_device, %struct.net_device* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* @IFNAMSIZ, align 4
  %150 = call i32 @memcpy(i32 %145, i32 %148, i32 %149)
  br label %151

151:                                              ; preds = %142, %133
  %152 = load %struct.in_ifaddr*, %struct.in_ifaddr** %8, align 8
  store %struct.in_ifaddr* %152, %struct.in_ifaddr** %3, align 8
  store i32 1, i32* %13, align 4
  br label %156

153:                                              ; preds = %64, %59, %51, %40, %25
  %154 = load i32, i32* %12, align 4
  %155 = call %struct.in_ifaddr* @ERR_PTR(i32 %154)
  store %struct.in_ifaddr* %155, %struct.in_ifaddr** %3, align 8
  store i32 1, i32* %13, align 4
  br label %156

156:                                              ; preds = %153, %151
  %157 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %157)
  %158 = load %struct.in_ifaddr*, %struct.in_ifaddr** %3, align 8
  ret %struct.in_ifaddr* %158
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @nlmsg_parse(%struct.nlmsghdr*, i32, %struct.nlattr**, i32, i32) #2

declare dso_local %struct.ifaddrmsg* @nlmsg_data(%struct.nlmsghdr*) #2

declare dso_local %struct.net_device* @__dev_get_by_index(%struct.net*, i32) #2

declare dso_local %struct.in_device* @__in_dev_get_rtnl(%struct.net_device*) #2

declare dso_local %struct.in_ifaddr* @inet_alloc_ifa(...) #2

declare dso_local i32 @ipv4_devconf_setall(%struct.in_device*) #2

declare dso_local i32 @in_dev_hold(%struct.in_device*) #2

declare dso_local i32 @inet_make_mask(i32) #2

declare dso_local i8* @nla_get_be32(%struct.nlattr*) #2

declare dso_local i32 @nla_strlcpy(i32, %struct.nlattr*, i32) #2

declare dso_local i32 @memcpy(i32, i32, i32) #2

declare dso_local %struct.in_ifaddr* @ERR_PTR(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
