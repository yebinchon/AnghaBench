; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_rtnetlink.c_rtnl_fdb_del.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_rtnetlink.c_rtnl_fdb_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nlmsghdr = type { i32 }
%struct.net = type { i32 }
%struct.ndmsg = type { i64, i32 }
%struct.net_device = type { i32 }
%struct.nlattr = type { i32 }
%struct.TYPE_2__ = type { i32 (%struct.ndmsg*, %struct.nlattr**, %struct.net_device*, i32*)* }

@NDA_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@CAP_NET_ADMIN = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"PF_BRIDGE: RTM_DELNEIGH with invalid ifindex\0A\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"PF_BRIDGE: RTM_DELNEIGH with unknown ifindex\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@NDA_LLADDR = common dso_local global i64 0, align 8
@ETH_ALEN = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [46 x i8] c"PF_BRIDGE: RTM_DELNEIGH with invalid address\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@NTF_MASTER = common dso_local global i32 0, align 4
@IFF_BRIDGE_PORT = common dso_local global i32 0, align 4
@NTF_SELF = common dso_local global i32 0, align 4
@RTM_DELNEIGH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nlmsghdr*, i8*)* @rtnl_fdb_del to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtnl_fdb_del(%struct.sk_buff* %0, %struct.nlmsghdr* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.nlmsghdr*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.net*, align 8
  %9 = alloca %struct.ndmsg*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.net_device*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.nlmsghdr* %1, %struct.nlmsghdr** %6, align 8
  store i8* %2, i8** %7, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %17 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.net* @sock_net(i32 %18)
  store %struct.net* %19, %struct.net** %8, align 8
  %20 = load i32, i32* @NDA_MAX, align 4
  %21 = add nsw i32 %20, 1
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %10, align 8
  %24 = alloca %struct.nlattr*, i64 %22, align 16
  store i64 %22, i64* %11, align 8
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %13, align 4
  %27 = load i32, i32* @CAP_NET_ADMIN, align 4
  %28 = call i32 @capable(i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %3
  %31 = load i32, i32* @EPERM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %150

33:                                               ; preds = %3
  %34 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %35 = load i32, i32* @NDA_MAX, align 4
  %36 = call i32 @nlmsg_parse(%struct.nlmsghdr* %34, i32 16, %struct.nlattr** %24, i32 %35, i32* null)
  store i32 %36, i32* %13, align 4
  %37 = load i32, i32* %13, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %33
  %40 = load i32, i32* %13, align 4
  store i32 %40, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %150

41:                                               ; preds = %33
  %42 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %43 = call %struct.ndmsg* @nlmsg_data(%struct.nlmsghdr* %42)
  store %struct.ndmsg* %43, %struct.ndmsg** %9, align 8
  %44 = load %struct.ndmsg*, %struct.ndmsg** %9, align 8
  %45 = getelementptr inbounds %struct.ndmsg, %struct.ndmsg* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %41
  %49 = call i32 @pr_info(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %150

52:                                               ; preds = %41
  %53 = load %struct.net*, %struct.net** %8, align 8
  %54 = load %struct.ndmsg*, %struct.ndmsg** %9, align 8
  %55 = getelementptr inbounds %struct.ndmsg, %struct.ndmsg* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = call %struct.net_device* @__dev_get_by_index(%struct.net* %53, i64 %56)
  store %struct.net_device* %57, %struct.net_device** %12, align 8
  %58 = load %struct.net_device*, %struct.net_device** %12, align 8
  %59 = icmp eq %struct.net_device* %58, null
  br i1 %59, label %60, label %64

60:                                               ; preds = %52
  %61 = call i32 @pr_info(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  %62 = load i32, i32* @ENODEV, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %150

64:                                               ; preds = %52
  %65 = load i64, i64* @NDA_LLADDR, align 8
  %66 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %24, i64 %65
  %67 = load %struct.nlattr*, %struct.nlattr** %66, align 8
  %68 = icmp ne %struct.nlattr* %67, null
  br i1 %68, label %69, label %76

69:                                               ; preds = %64
  %70 = load i64, i64* @NDA_LLADDR, align 8
  %71 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %24, i64 %70
  %72 = load %struct.nlattr*, %struct.nlattr** %71, align 8
  %73 = call i64 @nla_len(%struct.nlattr* %72)
  %74 = load i64, i64* @ETH_ALEN, align 8
  %75 = icmp ne i64 %73, %74
  br i1 %75, label %76, label %80

76:                                               ; preds = %69, %64
  %77 = call i32 @pr_info(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0))
  %78 = load i32, i32* @EINVAL, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %150

80:                                               ; preds = %69
  %81 = load i64, i64* @NDA_LLADDR, align 8
  %82 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %24, i64 %81
  %83 = load %struct.nlattr*, %struct.nlattr** %82, align 8
  %84 = call i32* @nla_data(%struct.nlattr* %83)
  store i32* %84, i32** %14, align 8
  %85 = load i32, i32* @EOPNOTSUPP, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %13, align 4
  %87 = load %struct.ndmsg*, %struct.ndmsg** %9, align 8
  %88 = getelementptr inbounds %struct.ndmsg, %struct.ndmsg* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %98

91:                                               ; preds = %80
  %92 = load %struct.ndmsg*, %struct.ndmsg** %9, align 8
  %93 = getelementptr inbounds %struct.ndmsg, %struct.ndmsg* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @NTF_MASTER, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %112

98:                                               ; preds = %91, %80
  %99 = load %struct.net_device*, %struct.net_device** %12, align 8
  %100 = getelementptr inbounds %struct.net_device, %struct.net_device* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @IFF_BRIDGE_PORT, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %112

105:                                              ; preds = %98
  %106 = load i32, i32* @NTF_MASTER, align 4
  %107 = xor i32 %106, -1
  %108 = load %struct.ndmsg*, %struct.ndmsg** %9, align 8
  %109 = getelementptr inbounds %struct.ndmsg, %struct.ndmsg* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = and i32 %110, %107
  store i32 %111, i32* %109, align 8
  br label %112

112:                                              ; preds = %105, %98, %91
  %113 = load %struct.ndmsg*, %struct.ndmsg** %9, align 8
  %114 = getelementptr inbounds %struct.ndmsg, %struct.ndmsg* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* @NTF_SELF, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %148

119:                                              ; preds = %112
  %120 = load %struct.net_device*, %struct.net_device** %12, align 8
  %121 = call %struct.TYPE_2__* @netdev_extended(%struct.net_device* %120)
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 0
  %123 = load i32 (%struct.ndmsg*, %struct.nlattr**, %struct.net_device*, i32*)*, i32 (%struct.ndmsg*, %struct.nlattr**, %struct.net_device*, i32*)** %122, align 8
  %124 = icmp ne i32 (%struct.ndmsg*, %struct.nlattr**, %struct.net_device*, i32*)* %123, null
  br i1 %124, label %125, label %148

125:                                              ; preds = %119
  %126 = load %struct.net_device*, %struct.net_device** %12, align 8
  %127 = call %struct.TYPE_2__* @netdev_extended(%struct.net_device* %126)
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 0
  %129 = load i32 (%struct.ndmsg*, %struct.nlattr**, %struct.net_device*, i32*)*, i32 (%struct.ndmsg*, %struct.nlattr**, %struct.net_device*, i32*)** %128, align 8
  %130 = load %struct.ndmsg*, %struct.ndmsg** %9, align 8
  %131 = load %struct.net_device*, %struct.net_device** %12, align 8
  %132 = load i32*, i32** %14, align 8
  %133 = call i32 %129(%struct.ndmsg* %130, %struct.nlattr** %24, %struct.net_device* %131, i32* %132)
  store i32 %133, i32* %13, align 4
  %134 = load i32, i32* %13, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %147, label %136

136:                                              ; preds = %125
  %137 = load %struct.net_device*, %struct.net_device** %12, align 8
  %138 = load i32*, i32** %14, align 8
  %139 = load i32, i32* @RTM_DELNEIGH, align 4
  %140 = call i32 @rtnl_fdb_notify(%struct.net_device* %137, i32* %138, i32 %139)
  %141 = load i32, i32* @NTF_SELF, align 4
  %142 = xor i32 %141, -1
  %143 = load %struct.ndmsg*, %struct.ndmsg** %9, align 8
  %144 = getelementptr inbounds %struct.ndmsg, %struct.ndmsg* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 8
  %146 = and i32 %145, %142
  store i32 %146, i32* %144, align 8
  br label %147

147:                                              ; preds = %136, %125
  br label %148

148:                                              ; preds = %147, %119, %112
  %149 = load i32, i32* %13, align 4
  store i32 %149, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %150

150:                                              ; preds = %148, %76, %60, %48, %39, %30
  %151 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %151)
  %152 = load i32, i32* %4, align 4
  ret i32 %152
}

declare dso_local %struct.net* @sock_net(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @capable(i32) #1

declare dso_local i32 @nlmsg_parse(%struct.nlmsghdr*, i32, %struct.nlattr**, i32, i32*) #1

declare dso_local %struct.ndmsg* @nlmsg_data(%struct.nlmsghdr*) #1

declare dso_local i32 @pr_info(i8*) #1

declare dso_local %struct.net_device* @__dev_get_by_index(%struct.net*, i64) #1

declare dso_local i64 @nla_len(%struct.nlattr*) #1

declare dso_local i32* @nla_data(%struct.nlattr*) #1

declare dso_local %struct.TYPE_2__* @netdev_extended(%struct.net_device*) #1

declare dso_local i32 @rtnl_fdb_notify(%struct.net_device*, i32*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
