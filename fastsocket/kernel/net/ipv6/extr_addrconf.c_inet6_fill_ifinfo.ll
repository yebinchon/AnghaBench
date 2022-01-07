; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_addrconf.c_inet6_fill_ifinfo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_addrconf.c_inet6_fill_ifinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.inet6_dev = type { %struct.net_device* }
%struct.net_device = type { i64, i64, i64, i32, i64, i32, i32 }
%struct.ifinfomsg = type { i64, i64, i32, i32, i64, i32 }
%struct.nlmsghdr = type { i32 }

@EMSGSIZE = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4
@IFLA_IFNAME = common dso_local global i32 0, align 4
@IFLA_ADDRESS = common dso_local global i32 0, align 4
@IFLA_MTU = common dso_local global i32 0, align 4
@IFLA_LINK = common dso_local global i32 0, align 4
@IFLA_PROTINFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.inet6_dev*, i32, i32, i32, i32)* @inet6_fill_ifinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @inet6_fill_ifinfo(%struct.sk_buff* %0, %struct.inet6_dev* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.inet6_dev*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.net_device*, align 8
  %15 = alloca %struct.ifinfomsg*, align 8
  %16 = alloca %struct.nlmsghdr*, align 8
  %17 = alloca i8*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %8, align 8
  store %struct.inet6_dev* %1, %struct.inet6_dev** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %18 = load %struct.inet6_dev*, %struct.inet6_dev** %9, align 8
  %19 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %18, i32 0, i32 0
  %20 = load %struct.net_device*, %struct.net_device** %19, align 8
  store %struct.net_device* %20, %struct.net_device** %14, align 8
  %21 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* %11, align 4
  %24 = load i32, i32* %12, align 4
  %25 = load i32, i32* %13, align 4
  %26 = call %struct.nlmsghdr* @nlmsg_put(%struct.sk_buff* %21, i32 %22, i32 %23, i32 %24, i32 40, i32 %25)
  store %struct.nlmsghdr* %26, %struct.nlmsghdr** %16, align 8
  %27 = load %struct.nlmsghdr*, %struct.nlmsghdr** %16, align 8
  %28 = icmp eq %struct.nlmsghdr* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %6
  %30 = load i32, i32* @EMSGSIZE, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %7, align 4
  br label %123

32:                                               ; preds = %6
  %33 = load %struct.nlmsghdr*, %struct.nlmsghdr** %16, align 8
  %34 = call %struct.ifinfomsg* @nlmsg_data(%struct.nlmsghdr* %33)
  store %struct.ifinfomsg* %34, %struct.ifinfomsg** %15, align 8
  %35 = load i32, i32* @AF_INET6, align 4
  %36 = load %struct.ifinfomsg*, %struct.ifinfomsg** %15, align 8
  %37 = getelementptr inbounds %struct.ifinfomsg, %struct.ifinfomsg* %36, i32 0, i32 5
  store i32 %35, i32* %37, align 8
  %38 = load %struct.ifinfomsg*, %struct.ifinfomsg** %15, align 8
  %39 = getelementptr inbounds %struct.ifinfomsg, %struct.ifinfomsg* %38, i32 0, i32 4
  store i64 0, i64* %39, align 8
  %40 = load %struct.net_device*, %struct.net_device** %14, align 8
  %41 = getelementptr inbounds %struct.net_device, %struct.net_device* %40, i32 0, i32 6
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.ifinfomsg*, %struct.ifinfomsg** %15, align 8
  %44 = getelementptr inbounds %struct.ifinfomsg, %struct.ifinfomsg* %43, i32 0, i32 3
  store i32 %42, i32* %44, align 4
  %45 = load %struct.net_device*, %struct.net_device** %14, align 8
  %46 = getelementptr inbounds %struct.net_device, %struct.net_device* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.ifinfomsg*, %struct.ifinfomsg** %15, align 8
  %49 = getelementptr inbounds %struct.ifinfomsg, %struct.ifinfomsg* %48, i32 0, i32 0
  store i64 %47, i64* %49, align 8
  %50 = load %struct.net_device*, %struct.net_device** %14, align 8
  %51 = call i32 @dev_get_flags(%struct.net_device* %50)
  %52 = load %struct.ifinfomsg*, %struct.ifinfomsg** %15, align 8
  %53 = getelementptr inbounds %struct.ifinfomsg, %struct.ifinfomsg* %52, i32 0, i32 2
  store i32 %51, i32* %53, align 8
  %54 = load %struct.ifinfomsg*, %struct.ifinfomsg** %15, align 8
  %55 = getelementptr inbounds %struct.ifinfomsg, %struct.ifinfomsg* %54, i32 0, i32 1
  store i64 0, i64* %55, align 8
  %56 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %57 = load i32, i32* @IFLA_IFNAME, align 4
  %58 = load %struct.net_device*, %struct.net_device** %14, align 8
  %59 = getelementptr inbounds %struct.net_device, %struct.net_device* %58, i32 0, i32 5
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @NLA_PUT_STRING(%struct.sk_buff* %56, i32 %57, i32 %60)
  %62 = load %struct.net_device*, %struct.net_device** %14, align 8
  %63 = getelementptr inbounds %struct.net_device, %struct.net_device* %62, i32 0, i32 4
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %76

66:                                               ; preds = %32
  %67 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %68 = load i32, i32* @IFLA_ADDRESS, align 4
  %69 = load %struct.net_device*, %struct.net_device** %14, align 8
  %70 = getelementptr inbounds %struct.net_device, %struct.net_device* %69, i32 0, i32 4
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.net_device*, %struct.net_device** %14, align 8
  %73 = getelementptr inbounds %struct.net_device, %struct.net_device* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @NLA_PUT(%struct.sk_buff* %67, i32 %68, i64 %71, i32 %74)
  br label %76

76:                                               ; preds = %66, %32
  %77 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %78 = load i32, i32* @IFLA_MTU, align 4
  %79 = load %struct.net_device*, %struct.net_device** %14, align 8
  %80 = getelementptr inbounds %struct.net_device, %struct.net_device* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = call i32 @NLA_PUT_U32(%struct.sk_buff* %77, i32 %78, i64 %81)
  %83 = load %struct.net_device*, %struct.net_device** %14, align 8
  %84 = getelementptr inbounds %struct.net_device, %struct.net_device* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.net_device*, %struct.net_device** %14, align 8
  %87 = getelementptr inbounds %struct.net_device, %struct.net_device* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %85, %88
  br i1 %89, label %90, label %97

90:                                               ; preds = %76
  %91 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %92 = load i32, i32* @IFLA_LINK, align 4
  %93 = load %struct.net_device*, %struct.net_device** %14, align 8
  %94 = getelementptr inbounds %struct.net_device, %struct.net_device* %93, i32 0, i32 2
  %95 = load i64, i64* %94, align 8
  %96 = call i32 @NLA_PUT_U32(%struct.sk_buff* %91, i32 %92, i64 %95)
  br label %97

97:                                               ; preds = %90, %76
  %98 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %99 = load i32, i32* @IFLA_PROTINFO, align 4
  %100 = call i8* @nla_nest_start(%struct.sk_buff* %98, i32 %99)
  store i8* %100, i8** %17, align 8
  %101 = load i8*, i8** %17, align 8
  %102 = icmp eq i8* %101, null
  br i1 %102, label %103, label %104

103:                                              ; preds = %97
  br label %117

104:                                              ; preds = %97
  %105 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %106 = load %struct.inet6_dev*, %struct.inet6_dev** %9, align 8
  %107 = call i64 @inet6_fill_ifla6_attrs(%struct.sk_buff* %105, %struct.inet6_dev* %106)
  %108 = icmp slt i64 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %104
  br label %117

110:                                              ; preds = %104
  %111 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %112 = load i8*, i8** %17, align 8
  %113 = call i32 @nla_nest_end(%struct.sk_buff* %111, i8* %112)
  %114 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %115 = load %struct.nlmsghdr*, %struct.nlmsghdr** %16, align 8
  %116 = call i32 @nlmsg_end(%struct.sk_buff* %114, %struct.nlmsghdr* %115)
  store i32 %116, i32* %7, align 4
  br label %123

117:                                              ; preds = %109, %103
  %118 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %119 = load %struct.nlmsghdr*, %struct.nlmsghdr** %16, align 8
  %120 = call i32 @nlmsg_cancel(%struct.sk_buff* %118, %struct.nlmsghdr* %119)
  %121 = load i32, i32* @EMSGSIZE, align 4
  %122 = sub nsw i32 0, %121
  store i32 %122, i32* %7, align 4
  br label %123

123:                                              ; preds = %117, %110, %29
  %124 = load i32, i32* %7, align 4
  ret i32 %124
}

declare dso_local %struct.nlmsghdr* @nlmsg_put(%struct.sk_buff*, i32, i32, i32, i32, i32) #1

declare dso_local %struct.ifinfomsg* @nlmsg_data(%struct.nlmsghdr*) #1

declare dso_local i32 @dev_get_flags(%struct.net_device*) #1

declare dso_local i32 @NLA_PUT_STRING(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @NLA_PUT(%struct.sk_buff*, i32, i64, i32) #1

declare dso_local i32 @NLA_PUT_U32(%struct.sk_buff*, i32, i64) #1

declare dso_local i8* @nla_nest_start(%struct.sk_buff*, i32) #1

declare dso_local i64 @inet6_fill_ifla6_attrs(%struct.sk_buff*, %struct.inet6_dev*) #1

declare dso_local i32 @nla_nest_end(%struct.sk_buff*, i8*) #1

declare dso_local i32 @nlmsg_end(%struct.sk_buff*, %struct.nlmsghdr*) #1

declare dso_local i32 @nlmsg_cancel(%struct.sk_buff*, %struct.nlmsghdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
