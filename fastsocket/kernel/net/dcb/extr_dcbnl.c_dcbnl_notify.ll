; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/dcb/extr_dcbnl.c_dcbnl_notify.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/dcb/extr_dcbnl.c_dcbnl_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.dcbnl_rtnl_ops* }
%struct.dcbnl_rtnl_ops = type { i32 }
%struct.net = type { i32 }
%struct.sk_buff = type { i32 }
%struct.nlmsghdr = type { i32 }
%struct.dcbmsg = type { i32, i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@NLMSG_DEFAULT_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@AF_UNSPEC = common dso_local global i32 0, align 4
@DCB_CAP_DCBX_VER_IEEE = common dso_local global i32 0, align 4
@RTNLGRP_DCB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32, i32, i32, i32, i32)* @dcbnl_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dcbnl_notify(%struct.net_device* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.net*, align 8
  %15 = alloca %struct.sk_buff*, align 8
  %16 = alloca %struct.nlmsghdr*, align 8
  %17 = alloca %struct.dcbmsg*, align 8
  %18 = alloca %struct.dcbnl_rtnl_ops*, align 8
  %19 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %20 = load %struct.net_device*, %struct.net_device** %8, align 8
  %21 = call %struct.net* @dev_net(%struct.net_device* %20)
  store %struct.net* %21, %struct.net** %14, align 8
  %22 = load %struct.net_device*, %struct.net_device** %8, align 8
  %23 = getelementptr inbounds %struct.net_device, %struct.net_device* %22, i32 0, i32 0
  %24 = load %struct.dcbnl_rtnl_ops*, %struct.dcbnl_rtnl_ops** %23, align 8
  store %struct.dcbnl_rtnl_ops* %24, %struct.dcbnl_rtnl_ops** %18, align 8
  %25 = load %struct.dcbnl_rtnl_ops*, %struct.dcbnl_rtnl_ops** %18, align 8
  %26 = icmp ne %struct.dcbnl_rtnl_ops* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %6
  %28 = load i32, i32* @EOPNOTSUPP, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %7, align 4
  br label %95

30:                                               ; preds = %6
  %31 = load i32, i32* @NLMSG_DEFAULT_SIZE, align 4
  %32 = load i32, i32* @GFP_KERNEL, align 4
  %33 = call %struct.sk_buff* @nlmsg_new(i32 %31, i32 %32)
  store %struct.sk_buff* %33, %struct.sk_buff** %15, align 8
  %34 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %35 = icmp ne %struct.sk_buff* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %30
  %37 = load i32, i32* @ENOBUFS, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %7, align 4
  br label %95

39:                                               ; preds = %30
  %40 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %41 = load i32, i32* %12, align 4
  %42 = load i32, i32* %9, align 4
  %43 = call %struct.nlmsghdr* @nlmsg_put(%struct.sk_buff* %40, i32 %41, i32 0, i32 %42, i32 8, i32 0)
  store %struct.nlmsghdr* %43, %struct.nlmsghdr** %16, align 8
  %44 = load %struct.nlmsghdr*, %struct.nlmsghdr** %16, align 8
  %45 = icmp eq %struct.nlmsghdr* %44, null
  br i1 %45, label %46, label %51

46:                                               ; preds = %39
  %47 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %48 = call i32 @nlmsg_free(%struct.sk_buff* %47)
  %49 = load i32, i32* @EMSGSIZE, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %7, align 4
  br label %95

51:                                               ; preds = %39
  %52 = load %struct.nlmsghdr*, %struct.nlmsghdr** %16, align 8
  %53 = call %struct.dcbmsg* @NLMSG_DATA(%struct.nlmsghdr* %52)
  store %struct.dcbmsg* %53, %struct.dcbmsg** %17, align 8
  %54 = load i32, i32* @AF_UNSPEC, align 4
  %55 = load %struct.dcbmsg*, %struct.dcbmsg** %17, align 8
  %56 = getelementptr inbounds %struct.dcbmsg, %struct.dcbmsg* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  %57 = load i32, i32* %10, align 4
  %58 = load %struct.dcbmsg*, %struct.dcbmsg** %17, align 8
  %59 = getelementptr inbounds %struct.dcbmsg, %struct.dcbmsg* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 4
  %60 = load i32, i32* %13, align 4
  %61 = load i32, i32* @DCB_CAP_DCBX_VER_IEEE, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %67

63:                                               ; preds = %51
  %64 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %65 = load %struct.net_device*, %struct.net_device** %8, align 8
  %66 = call i32 @dcbnl_ieee_fill(%struct.sk_buff* %64, %struct.net_device* %65)
  store i32 %66, i32* %19, align 4
  br label %71

67:                                               ; preds = %51
  %68 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %69 = load %struct.net_device*, %struct.net_device** %8, align 8
  %70 = call i32 @dcbnl_cee_fill(%struct.sk_buff* %68, %struct.net_device* %69)
  store i32 %70, i32* %19, align 4
  br label %71

71:                                               ; preds = %67, %63
  %72 = load i32, i32* %19, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %84

74:                                               ; preds = %71
  %75 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %76 = load %struct.nlmsghdr*, %struct.nlmsghdr** %16, align 8
  %77 = call i32 @nlmsg_cancel(%struct.sk_buff* %75, %struct.nlmsghdr* %76)
  %78 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %79 = call i32 @kfree_skb(%struct.sk_buff* %78)
  %80 = load %struct.net*, %struct.net** %14, align 8
  %81 = load i32, i32* @RTNLGRP_DCB, align 4
  %82 = load i32, i32* %19, align 4
  %83 = call i32 @rtnl_set_sk_err(%struct.net* %80, i32 %81, i32 %82)
  br label %93

84:                                               ; preds = %71
  %85 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %86 = load %struct.nlmsghdr*, %struct.nlmsghdr** %16, align 8
  %87 = call i32 @nlmsg_end(%struct.sk_buff* %85, %struct.nlmsghdr* %86)
  %88 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %89 = load %struct.net*, %struct.net** %14, align 8
  %90 = load i32, i32* @RTNLGRP_DCB, align 4
  %91 = load i32, i32* @GFP_KERNEL, align 4
  %92 = call i32 @rtnl_notify(%struct.sk_buff* %88, %struct.net* %89, i32 0, i32 %90, i32* null, i32 %91)
  br label %93

93:                                               ; preds = %84, %74
  %94 = load i32, i32* %19, align 4
  store i32 %94, i32* %7, align 4
  br label %95

95:                                               ; preds = %93, %46, %36, %27
  %96 = load i32, i32* %7, align 4
  ret i32 %96
}

declare dso_local %struct.net* @dev_net(%struct.net_device*) #1

declare dso_local %struct.sk_buff* @nlmsg_new(i32, i32) #1

declare dso_local %struct.nlmsghdr* @nlmsg_put(%struct.sk_buff*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @nlmsg_free(%struct.sk_buff*) #1

declare dso_local %struct.dcbmsg* @NLMSG_DATA(%struct.nlmsghdr*) #1

declare dso_local i32 @dcbnl_ieee_fill(%struct.sk_buff*, %struct.net_device*) #1

declare dso_local i32 @dcbnl_cee_fill(%struct.sk_buff*, %struct.net_device*) #1

declare dso_local i32 @nlmsg_cancel(%struct.sk_buff*, %struct.nlmsghdr*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @rtnl_set_sk_err(%struct.net*, i32, i32) #1

declare dso_local i32 @nlmsg_end(%struct.sk_buff*, %struct.nlmsghdr*) #1

declare dso_local i32 @rtnl_notify(%struct.sk_buff*, %struct.net*, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
