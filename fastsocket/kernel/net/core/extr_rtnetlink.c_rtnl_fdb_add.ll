; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_rtnetlink.c_rtnl_fdb_add.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_rtnetlink.c_rtnl_fdb_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nlmsghdr = type { i32 }
%struct.net = type { i32 }
%struct.ndmsg = type { i64, i32 }
%struct.net_device = type { i32 }
%struct.nlattr = type { i32 }
%struct.TYPE_2__ = type { i32 (%struct.ndmsg*, %struct.nlattr**, %struct.net_device*, i32*, i32)* }

@NDA_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"PF_BRIDGE: RTM_NEWNEIGH with invalid ifindex\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"PF_BRIDGE: RTM_NEWNEIGH with unknown ifindex\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@NDA_LLADDR = common dso_local global i64 0, align 8
@ETH_ALEN = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [46 x i8] c"PF_BRIDGE: RTM_NEWNEIGH with invalid address\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@NTF_MASTER = common dso_local global i32 0, align 4
@IFF_BRIDGE_PORT = common dso_local global i32 0, align 4
@NTF_SELF = common dso_local global i32 0, align 4
@RTM_NEWNEIGH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nlmsghdr*, i8*)* @rtnl_fdb_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtnl_fdb_add(%struct.sk_buff* %0, %struct.nlmsghdr* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.nlmsghdr*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.net*, align 8
  %9 = alloca %struct.ndmsg*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.net_device*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
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
  %25 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %26 = load i32, i32* @NDA_MAX, align 4
  %27 = call i32 @nlmsg_parse(%struct.nlmsghdr* %25, i32 16, %struct.nlattr** %24, i32 %26, i32* null)
  store i32 %27, i32* %14, align 4
  %28 = load i32, i32* %14, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %3
  %31 = load i32, i32* %14, align 4
  store i32 %31, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %144

32:                                               ; preds = %3
  %33 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %34 = call %struct.ndmsg* @nlmsg_data(%struct.nlmsghdr* %33)
  store %struct.ndmsg* %34, %struct.ndmsg** %9, align 8
  %35 = load %struct.ndmsg*, %struct.ndmsg** %9, align 8
  %36 = getelementptr inbounds %struct.ndmsg, %struct.ndmsg* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %32
  %40 = call i32 @pr_info(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %144

43:                                               ; preds = %32
  %44 = load %struct.net*, %struct.net** %8, align 8
  %45 = load %struct.ndmsg*, %struct.ndmsg** %9, align 8
  %46 = getelementptr inbounds %struct.ndmsg, %struct.ndmsg* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = call %struct.net_device* @__dev_get_by_index(%struct.net* %44, i64 %47)
  store %struct.net_device* %48, %struct.net_device** %12, align 8
  %49 = load %struct.net_device*, %struct.net_device** %12, align 8
  %50 = icmp eq %struct.net_device* %49, null
  br i1 %50, label %51, label %55

51:                                               ; preds = %43
  %52 = call i32 @pr_info(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  %53 = load i32, i32* @ENODEV, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %144

55:                                               ; preds = %43
  %56 = load i64, i64* @NDA_LLADDR, align 8
  %57 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %24, i64 %56
  %58 = load %struct.nlattr*, %struct.nlattr** %57, align 8
  %59 = icmp ne %struct.nlattr* %58, null
  br i1 %59, label %60, label %67

60:                                               ; preds = %55
  %61 = load i64, i64* @NDA_LLADDR, align 8
  %62 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %24, i64 %61
  %63 = load %struct.nlattr*, %struct.nlattr** %62, align 8
  %64 = call i64 @nla_len(%struct.nlattr* %63)
  %65 = load i64, i64* @ETH_ALEN, align 8
  %66 = icmp ne i64 %64, %65
  br i1 %66, label %67, label %71

67:                                               ; preds = %60, %55
  %68 = call i32 @pr_info(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0))
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %144

71:                                               ; preds = %60
  %72 = load i64, i64* @NDA_LLADDR, align 8
  %73 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %24, i64 %72
  %74 = load %struct.nlattr*, %struct.nlattr** %73, align 8
  %75 = call i32* @nla_data(%struct.nlattr* %74)
  store i32* %75, i32** %13, align 8
  %76 = load i32, i32* @EOPNOTSUPP, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %14, align 4
  %78 = load %struct.ndmsg*, %struct.ndmsg** %9, align 8
  %79 = getelementptr inbounds %struct.ndmsg, %struct.ndmsg* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %89

82:                                               ; preds = %71
  %83 = load %struct.ndmsg*, %struct.ndmsg** %9, align 8
  %84 = getelementptr inbounds %struct.ndmsg, %struct.ndmsg* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @NTF_MASTER, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %103

89:                                               ; preds = %82, %71
  %90 = load %struct.net_device*, %struct.net_device** %12, align 8
  %91 = getelementptr inbounds %struct.net_device, %struct.net_device* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @IFF_BRIDGE_PORT, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %103

96:                                               ; preds = %89
  %97 = load i32, i32* @NTF_MASTER, align 4
  %98 = xor i32 %97, -1
  %99 = load %struct.ndmsg*, %struct.ndmsg** %9, align 8
  %100 = getelementptr inbounds %struct.ndmsg, %struct.ndmsg* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = and i32 %101, %98
  store i32 %102, i32* %100, align 8
  br label %103

103:                                              ; preds = %96, %89, %82
  %104 = load %struct.ndmsg*, %struct.ndmsg** %9, align 8
  %105 = getelementptr inbounds %struct.ndmsg, %struct.ndmsg* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @NTF_SELF, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %142

110:                                              ; preds = %103
  %111 = load %struct.net_device*, %struct.net_device** %12, align 8
  %112 = call %struct.TYPE_2__* @netdev_extended(%struct.net_device* %111)
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 0
  %114 = load i32 (%struct.ndmsg*, %struct.nlattr**, %struct.net_device*, i32*, i32)*, i32 (%struct.ndmsg*, %struct.nlattr**, %struct.net_device*, i32*, i32)** %113, align 8
  %115 = icmp ne i32 (%struct.ndmsg*, %struct.nlattr**, %struct.net_device*, i32*, i32)* %114, null
  br i1 %115, label %116, label %142

116:                                              ; preds = %110
  %117 = load %struct.net_device*, %struct.net_device** %12, align 8
  %118 = call %struct.TYPE_2__* @netdev_extended(%struct.net_device* %117)
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 0
  %120 = load i32 (%struct.ndmsg*, %struct.nlattr**, %struct.net_device*, i32*, i32)*, i32 (%struct.ndmsg*, %struct.nlattr**, %struct.net_device*, i32*, i32)** %119, align 8
  %121 = load %struct.ndmsg*, %struct.ndmsg** %9, align 8
  %122 = load %struct.net_device*, %struct.net_device** %12, align 8
  %123 = load i32*, i32** %13, align 8
  %124 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %125 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = call i32 %120(%struct.ndmsg* %121, %struct.nlattr** %24, %struct.net_device* %122, i32* %123, i32 %126)
  store i32 %127, i32* %14, align 4
  %128 = load i32, i32* %14, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %141, label %130

130:                                              ; preds = %116
  %131 = load %struct.net_device*, %struct.net_device** %12, align 8
  %132 = load i32*, i32** %13, align 8
  %133 = load i32, i32* @RTM_NEWNEIGH, align 4
  %134 = call i32 @rtnl_fdb_notify(%struct.net_device* %131, i32* %132, i32 %133)
  %135 = load i32, i32* @NTF_SELF, align 4
  %136 = xor i32 %135, -1
  %137 = load %struct.ndmsg*, %struct.ndmsg** %9, align 8
  %138 = getelementptr inbounds %struct.ndmsg, %struct.ndmsg* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 8
  %140 = and i32 %139, %136
  store i32 %140, i32* %138, align 8
  br label %141

141:                                              ; preds = %130, %116
  br label %142

142:                                              ; preds = %141, %110, %103
  %143 = load i32, i32* %14, align 4
  store i32 %143, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %144

144:                                              ; preds = %142, %67, %51, %39, %30
  %145 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %145)
  %146 = load i32, i32* %4, align 4
  ret i32 %146
}

declare dso_local %struct.net* @sock_net(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

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
