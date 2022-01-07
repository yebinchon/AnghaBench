; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/dcb/extr_dcbnl.c_dcbnl_getperm_hwaddr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/dcb/extr_dcbnl.c_dcbnl_getperm_hwaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.net_device*, i32*)* }
%struct.nlattr = type { i32 }
%struct.sk_buff = type { i32 }
%struct.nlmsghdr = type { i32 }
%struct.dcbmsg = type { i32, i32 }

@MAX_ADDR_LEN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@NLMSG_DEFAULT_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@RTM_GETDCB = common dso_local global i32 0, align 4
@AF_UNSPEC = common dso_local global i32 0, align 4
@DCB_CMD_GPERM_HWADDR = common dso_local global i32 0, align 4
@DCB_ATTR_PERM_HWADDR = common dso_local global i32 0, align 4
@init_net = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.nlattr**, i32, i32, i32)* @dcbnl_getperm_hwaddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dcbnl_getperm_hwaddr(%struct.net_device* %0, %struct.nlattr** %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.nlattr**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.sk_buff*, align 8
  %13 = alloca %struct.nlmsghdr*, align 8
  %14 = alloca %struct.dcbmsg*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %7, align 8
  store %struct.nlattr** %1, %struct.nlattr*** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %19 = load i32, i32* @MAX_ADDR_LEN, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %15, align 8
  %22 = alloca i32, i64 %20, align 16
  store i64 %20, i64* %16, align 8
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %17, align 4
  %25 = load %struct.net_device*, %struct.net_device** %7, align 8
  %26 = getelementptr inbounds %struct.net_device, %struct.net_device* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32 (%struct.net_device*, i32*)*, i32 (%struct.net_device*, i32*)** %28, align 8
  %30 = icmp ne i32 (%struct.net_device*, i32*)* %29, null
  br i1 %30, label %33, label %31

31:                                               ; preds = %5
  %32 = load i32, i32* %17, align 4
  store i32 %32, i32* %6, align 4
  store i32 1, i32* %18, align 4
  br label %86

33:                                               ; preds = %5
  %34 = load i32, i32* @NLMSG_DEFAULT_SIZE, align 4
  %35 = load i32, i32* @GFP_KERNEL, align 4
  %36 = call %struct.sk_buff* @nlmsg_new(i32 %34, i32 %35)
  store %struct.sk_buff* %36, %struct.sk_buff** %12, align 8
  %37 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %38 = icmp ne %struct.sk_buff* %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %33
  br label %83

40:                                               ; preds = %33
  %41 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* @RTM_GETDCB, align 4
  %45 = load i32, i32* %11, align 4
  %46 = call %struct.nlmsghdr* @NLMSG_NEW(%struct.sk_buff* %41, i32 %42, i32 %43, i32 %44, i32 8, i32 %45)
  store %struct.nlmsghdr* %46, %struct.nlmsghdr** %13, align 8
  %47 = load %struct.nlmsghdr*, %struct.nlmsghdr** %13, align 8
  %48 = call %struct.dcbmsg* @NLMSG_DATA(%struct.nlmsghdr* %47)
  store %struct.dcbmsg* %48, %struct.dcbmsg** %14, align 8
  %49 = load i32, i32* @AF_UNSPEC, align 4
  %50 = load %struct.dcbmsg*, %struct.dcbmsg** %14, align 8
  %51 = getelementptr inbounds %struct.dcbmsg, %struct.dcbmsg* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  %52 = load i32, i32* @DCB_CMD_GPERM_HWADDR, align 4
  %53 = load %struct.dcbmsg*, %struct.dcbmsg** %14, align 8
  %54 = getelementptr inbounds %struct.dcbmsg, %struct.dcbmsg* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 4
  %55 = mul nuw i64 4, %20
  %56 = trunc i64 %55 to i32
  %57 = call i32 @memset(i32* %22, i32 0, i32 %56)
  %58 = load %struct.net_device*, %struct.net_device** %7, align 8
  %59 = getelementptr inbounds %struct.net_device, %struct.net_device* %58, i32 0, i32 0
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32 (%struct.net_device*, i32*)*, i32 (%struct.net_device*, i32*)** %61, align 8
  %63 = load %struct.net_device*, %struct.net_device** %7, align 8
  %64 = call i32 %62(%struct.net_device* %63, i32* %22)
  %65 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %66 = load i32, i32* @DCB_ATTR_PERM_HWADDR, align 4
  %67 = mul nuw i64 4, %20
  %68 = trunc i64 %67 to i32
  %69 = call i32 @nla_put(%struct.sk_buff* %65, i32 %66, i32 %68, i32* %22)
  store i32 %69, i32* %17, align 4
  %70 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %71 = load %struct.nlmsghdr*, %struct.nlmsghdr** %13, align 8
  %72 = call i32 @nlmsg_end(%struct.sk_buff* %70, %struct.nlmsghdr* %71)
  %73 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %74 = load i32, i32* %9, align 4
  %75 = call i32 @rtnl_unicast(%struct.sk_buff* %73, i32* @init_net, i32 %74)
  store i32 %75, i32* %17, align 4
  %76 = load i32, i32* %17, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %40
  br label %83

79:                                               ; preds = %40
  store i32 0, i32* %6, align 4
  store i32 1, i32* %18, align 4
  br label %86

80:                                               ; No predecessors!
  %81 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %82 = call i32 @kfree_skb(%struct.sk_buff* %81)
  br label %83

83:                                               ; preds = %80, %78, %39
  %84 = load i32, i32* @EINVAL, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %6, align 4
  store i32 1, i32* %18, align 4
  br label %86

86:                                               ; preds = %83, %79, %31
  %87 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %87)
  %88 = load i32, i32* %6, align 4
  ret i32 %88
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.sk_buff* @nlmsg_new(i32, i32) #2

declare dso_local %struct.nlmsghdr* @NLMSG_NEW(%struct.sk_buff*, i32, i32, i32, i32, i32) #2

declare dso_local %struct.dcbmsg* @NLMSG_DATA(%struct.nlmsghdr*) #2

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i32 @nla_put(%struct.sk_buff*, i32, i32, i32*) #2

declare dso_local i32 @nlmsg_end(%struct.sk_buff*, %struct.nlmsghdr*) #2

declare dso_local i32 @rtnl_unicast(%struct.sk_buff*, i32*, i32) #2

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
