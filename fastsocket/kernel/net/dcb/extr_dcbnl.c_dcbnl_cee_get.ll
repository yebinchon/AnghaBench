; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/dcb/extr_dcbnl.c_dcbnl_cee_get.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/dcb/extr_dcbnl.c_dcbnl_cee_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.dcbnl_rtnl_ops* }
%struct.dcbnl_rtnl_ops = type { i32 }
%struct.nlattr = type { i32 }
%struct.net = type { i32 }
%struct.sk_buff = type { i32 }
%struct.nlmsghdr = type { i32 }
%struct.dcbmsg = type { i32, i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@NLMSG_DEFAULT_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@RTM_GETDCB = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@AF_UNSPEC = common dso_local global i32 0, align 4
@DCB_CMD_CEE_GET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.nlattr**, i32, i32, i32)* @dcbnl_cee_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dcbnl_cee_get(%struct.net_device* %0, %struct.nlattr** %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.nlattr**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.net*, align 8
  %13 = alloca %struct.sk_buff*, align 8
  %14 = alloca %struct.nlmsghdr*, align 8
  %15 = alloca %struct.dcbmsg*, align 8
  %16 = alloca %struct.dcbnl_rtnl_ops*, align 8
  %17 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %7, align 8
  store %struct.nlattr** %1, %struct.nlattr*** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %18 = load %struct.net_device*, %struct.net_device** %7, align 8
  %19 = call %struct.net* @dev_net(%struct.net_device* %18)
  store %struct.net* %19, %struct.net** %12, align 8
  %20 = load %struct.net_device*, %struct.net_device** %7, align 8
  %21 = getelementptr inbounds %struct.net_device, %struct.net_device* %20, i32 0, i32 0
  %22 = load %struct.dcbnl_rtnl_ops*, %struct.dcbnl_rtnl_ops** %21, align 8
  store %struct.dcbnl_rtnl_ops* %22, %struct.dcbnl_rtnl_ops** %16, align 8
  %23 = load %struct.dcbnl_rtnl_ops*, %struct.dcbnl_rtnl_ops** %16, align 8
  %24 = icmp ne %struct.dcbnl_rtnl_ops* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %5
  %26 = load i32, i32* @EOPNOTSUPP, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %6, align 4
  br label %81

28:                                               ; preds = %5
  %29 = load i32, i32* @NLMSG_DEFAULT_SIZE, align 4
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call %struct.sk_buff* @nlmsg_new(i32 %29, i32 %30)
  store %struct.sk_buff* %31, %struct.sk_buff** %13, align 8
  %32 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %33 = icmp ne %struct.sk_buff* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %28
  %35 = load i32, i32* @ENOBUFS, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %6, align 4
  br label %81

37:                                               ; preds = %28
  %38 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* @RTM_GETDCB, align 4
  %42 = load i32, i32* %11, align 4
  %43 = call %struct.nlmsghdr* @nlmsg_put(%struct.sk_buff* %38, i32 %39, i32 %40, i32 %41, i32 8, i32 %42)
  store %struct.nlmsghdr* %43, %struct.nlmsghdr** %14, align 8
  %44 = load %struct.nlmsghdr*, %struct.nlmsghdr** %14, align 8
  %45 = icmp eq %struct.nlmsghdr* %44, null
  br i1 %45, label %46, label %51

46:                                               ; preds = %37
  %47 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %48 = call i32 @nlmsg_free(%struct.sk_buff* %47)
  %49 = load i32, i32* @EMSGSIZE, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %6, align 4
  br label %81

51:                                               ; preds = %37
  %52 = load %struct.nlmsghdr*, %struct.nlmsghdr** %14, align 8
  %53 = call %struct.dcbmsg* @NLMSG_DATA(%struct.nlmsghdr* %52)
  store %struct.dcbmsg* %53, %struct.dcbmsg** %15, align 8
  %54 = load i32, i32* @AF_UNSPEC, align 4
  %55 = load %struct.dcbmsg*, %struct.dcbmsg** %15, align 8
  %56 = getelementptr inbounds %struct.dcbmsg, %struct.dcbmsg* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  %57 = load i32, i32* @DCB_CMD_CEE_GET, align 4
  %58 = load %struct.dcbmsg*, %struct.dcbmsg** %15, align 8
  %59 = getelementptr inbounds %struct.dcbmsg, %struct.dcbmsg* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 4
  %60 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %61 = load %struct.net_device*, %struct.net_device** %7, align 8
  %62 = call i32 @dcbnl_cee_fill(%struct.sk_buff* %60, %struct.net_device* %61)
  store i32 %62, i32* %17, align 4
  %63 = load i32, i32* %17, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %51
  %66 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %67 = load %struct.nlmsghdr*, %struct.nlmsghdr** %14, align 8
  %68 = call i32 @nlmsg_cancel(%struct.sk_buff* %66, %struct.nlmsghdr* %67)
  %69 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %70 = call i32 @nlmsg_free(%struct.sk_buff* %69)
  br label %79

71:                                               ; preds = %51
  %72 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %73 = load %struct.nlmsghdr*, %struct.nlmsghdr** %14, align 8
  %74 = call i32 @nlmsg_end(%struct.sk_buff* %72, %struct.nlmsghdr* %73)
  %75 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %76 = load %struct.net*, %struct.net** %12, align 8
  %77 = load i32, i32* %9, align 4
  %78 = call i32 @rtnl_unicast(%struct.sk_buff* %75, %struct.net* %76, i32 %77)
  store i32 %78, i32* %17, align 4
  br label %79

79:                                               ; preds = %71, %65
  %80 = load i32, i32* %17, align 4
  store i32 %80, i32* %6, align 4
  br label %81

81:                                               ; preds = %79, %46, %34, %25
  %82 = load i32, i32* %6, align 4
  ret i32 %82
}

declare dso_local %struct.net* @dev_net(%struct.net_device*) #1

declare dso_local %struct.sk_buff* @nlmsg_new(i32, i32) #1

declare dso_local %struct.nlmsghdr* @nlmsg_put(%struct.sk_buff*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @nlmsg_free(%struct.sk_buff*) #1

declare dso_local %struct.dcbmsg* @NLMSG_DATA(%struct.nlmsghdr*) #1

declare dso_local i32 @dcbnl_cee_fill(%struct.sk_buff*, %struct.net_device*) #1

declare dso_local i32 @nlmsg_cancel(%struct.sk_buff*, %struct.nlmsghdr*) #1

declare dso_local i32 @nlmsg_end(%struct.sk_buff*, %struct.nlmsghdr*) #1

declare dso_local i32 @rtnl_unicast(%struct.sk_buff*, %struct.net*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
