; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_rtnetlink.c_rtnl_dellink.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_rtnetlink.c_rtnl_dellink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nlmsghdr = type { i32 }
%struct.net = type { i32 }
%struct.rtnl_link_ops = type { i32 (%struct.net_device*)* }
%struct.net_device = type opaque
%struct.net_device.0 = type { %struct.rtnl_link_ops* }
%struct.ifinfomsg = type { i64 }
%struct.nlattr = type { i32 }

@IFNAMSIZ = common dso_local global i32 0, align 4
@IFLA_MAX = common dso_local global i32 0, align 4
@ifla_policy = common dso_local global i32 0, align 4
@IFLA_IFNAME = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nlmsghdr*, i8*)* @rtnl_dellink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtnl_dellink(%struct.sk_buff* %0, %struct.nlmsghdr* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.nlmsghdr*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.net*, align 8
  %9 = alloca %struct.rtnl_link_ops*, align 8
  %10 = alloca %struct.net_device.0*, align 8
  %11 = alloca %struct.ifinfomsg*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.nlmsghdr* %1, %struct.nlmsghdr** %6, align 8
  store i8* %2, i8** %7, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %18 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.net* @sock_net(i32 %19)
  store %struct.net* %20, %struct.net** %8, align 8
  %21 = load i32, i32* @IFNAMSIZ, align 4
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %12, align 8
  %24 = alloca i8, i64 %22, align 16
  store i64 %22, i64* %13, align 8
  %25 = load i32, i32* @IFLA_MAX, align 4
  %26 = add nsw i32 %25, 1
  %27 = zext i32 %26 to i64
  %28 = alloca %struct.nlattr*, i64 %27, align 16
  store i64 %27, i64* %14, align 8
  %29 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %30 = load i32, i32* @IFLA_MAX, align 4
  %31 = load i32, i32* @ifla_policy, align 4
  %32 = call i32 @nlmsg_parse(%struct.nlmsghdr* %29, i32 8, %struct.nlattr** %28, i32 %30, i32 %31)
  store i32 %32, i32* %15, align 4
  %33 = load i32, i32* %15, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %3
  %36 = load i32, i32* %15, align 4
  store i32 %36, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %95

37:                                               ; preds = %3
  %38 = load i64, i64* @IFLA_IFNAME, align 8
  %39 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %28, i64 %38
  %40 = load %struct.nlattr*, %struct.nlattr** %39, align 8
  %41 = icmp ne %struct.nlattr* %40, null
  br i1 %41, label %42, label %48

42:                                               ; preds = %37
  %43 = load i64, i64* @IFLA_IFNAME, align 8
  %44 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %28, i64 %43
  %45 = load %struct.nlattr*, %struct.nlattr** %44, align 8
  %46 = load i32, i32* @IFNAMSIZ, align 4
  %47 = call i32 @nla_strlcpy(i8* %24, %struct.nlattr* %45, i32 %46)
  br label %48

48:                                               ; preds = %42, %37
  %49 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %50 = call %struct.ifinfomsg* @nlmsg_data(%struct.nlmsghdr* %49)
  store %struct.ifinfomsg* %50, %struct.ifinfomsg** %11, align 8
  %51 = load %struct.ifinfomsg*, %struct.ifinfomsg** %11, align 8
  %52 = getelementptr inbounds %struct.ifinfomsg, %struct.ifinfomsg* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp sgt i64 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %48
  %56 = load %struct.net*, %struct.net** %8, align 8
  %57 = load %struct.ifinfomsg*, %struct.ifinfomsg** %11, align 8
  %58 = getelementptr inbounds %struct.ifinfomsg, %struct.ifinfomsg* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = call %struct.net_device.0* @__dev_get_by_index(%struct.net* %56, i64 %59)
  store %struct.net_device.0* %60, %struct.net_device.0** %10, align 8
  br label %73

61:                                               ; preds = %48
  %62 = load i64, i64* @IFLA_IFNAME, align 8
  %63 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %28, i64 %62
  %64 = load %struct.nlattr*, %struct.nlattr** %63, align 8
  %65 = icmp ne %struct.nlattr* %64, null
  br i1 %65, label %66, label %69

66:                                               ; preds = %61
  %67 = load %struct.net*, %struct.net** %8, align 8
  %68 = call %struct.net_device.0* @__dev_get_by_name(%struct.net* %67, i8* %24)
  store %struct.net_device.0* %68, %struct.net_device.0** %10, align 8
  br label %72

69:                                               ; preds = %61
  %70 = load i32, i32* @EINVAL, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %95

72:                                               ; preds = %66
  br label %73

73:                                               ; preds = %72, %55
  %74 = load %struct.net_device.0*, %struct.net_device.0** %10, align 8
  %75 = icmp ne %struct.net_device.0* %74, null
  br i1 %75, label %79, label %76

76:                                               ; preds = %73
  %77 = load i32, i32* @ENODEV, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %95

79:                                               ; preds = %73
  %80 = load %struct.net_device.0*, %struct.net_device.0** %10, align 8
  %81 = getelementptr inbounds %struct.net_device.0, %struct.net_device.0* %80, i32 0, i32 0
  %82 = load %struct.rtnl_link_ops*, %struct.rtnl_link_ops** %81, align 8
  store %struct.rtnl_link_ops* %82, %struct.rtnl_link_ops** %9, align 8
  %83 = load %struct.rtnl_link_ops*, %struct.rtnl_link_ops** %9, align 8
  %84 = icmp ne %struct.rtnl_link_ops* %83, null
  br i1 %84, label %88, label %85

85:                                               ; preds = %79
  %86 = load i32, i32* @EOPNOTSUPP, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %95

88:                                               ; preds = %79
  %89 = load %struct.rtnl_link_ops*, %struct.rtnl_link_ops** %9, align 8
  %90 = getelementptr inbounds %struct.rtnl_link_ops, %struct.rtnl_link_ops* %89, i32 0, i32 0
  %91 = load i32 (%struct.net_device*)*, i32 (%struct.net_device*)** %90, align 8
  %92 = load %struct.net_device.0*, %struct.net_device.0** %10, align 8
  %93 = bitcast %struct.net_device.0* %92 to %struct.net_device*
  %94 = call i32 %91(%struct.net_device* %93)
  store i32 0, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %95

95:                                               ; preds = %88, %85, %76, %69, %35
  %96 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %96)
  %97 = load i32, i32* %4, align 4
  ret i32 %97
}

declare dso_local %struct.net* @sock_net(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @nlmsg_parse(%struct.nlmsghdr*, i32, %struct.nlattr**, i32, i32) #1

declare dso_local i32 @nla_strlcpy(i8*, %struct.nlattr*, i32) #1

declare dso_local %struct.ifinfomsg* @nlmsg_data(%struct.nlmsghdr*) #1

declare dso_local %struct.net_device.0* @__dev_get_by_index(%struct.net*, i64) #1

declare dso_local %struct.net_device.0* @__dev_get_by_name(%struct.net*, i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
