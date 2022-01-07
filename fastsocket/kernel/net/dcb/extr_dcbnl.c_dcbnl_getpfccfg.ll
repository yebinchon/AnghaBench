; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/dcb/extr_dcbnl.c_dcbnl_getpfccfg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/dcb/extr_dcbnl.c_dcbnl_getpfccfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.net_device*, i32, i32*)* }
%struct.nlattr = type { i32 }
%struct.sk_buff = type { i32 }
%struct.nlmsghdr = type { i32 }
%struct.dcbmsg = type { i32, i32 }

@DCB_PFC_UP_ATTR_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@DCB_ATTR_PFC_CFG = common dso_local global i64 0, align 8
@dcbnl_pfc_up_nest = common dso_local global i32 0, align 4
@NLMSG_DEFAULT_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@RTM_GETDCB = common dso_local global i32 0, align 4
@AF_UNSPEC = common dso_local global i32 0, align 4
@DCB_CMD_PFC_GCFG = common dso_local global i32 0, align 4
@DCB_PFC_UP_ATTR_ALL = common dso_local global i64 0, align 8
@DCB_PFC_UP_ATTR_0 = common dso_local global i32 0, align 4
@DCB_PFC_UP_ATTR_7 = common dso_local global i32 0, align 4
@init_net = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.nlattr**, i32, i32, i32)* @dcbnl_getpfccfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dcbnl_getpfccfg(%struct.net_device* %0, %struct.nlattr** %1, i32 %2, i32 %3, i32 %4) #0 {
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
  %17 = alloca %struct.nlattr*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %7, align 8
  store %struct.nlattr** %1, %struct.nlattr*** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %23 = load i32, i32* @DCB_PFC_UP_ATTR_MAX, align 4
  %24 = add nsw i32 %23, 1
  %25 = zext i32 %24 to i64
  %26 = call i8* @llvm.stacksave()
  store i8* %26, i8** %15, align 8
  %27 = alloca %struct.nlattr*, i64 %25, align 16
  store i64 %25, i64* %16, align 8
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %19, align 4
  store i32 0, i32* %21, align 4
  %30 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %31 = load i64, i64* @DCB_ATTR_PFC_CFG, align 8
  %32 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %30, i64 %31
  %33 = load %struct.nlattr*, %struct.nlattr** %32, align 8
  %34 = icmp ne %struct.nlattr* %33, null
  br i1 %34, label %35, label %42

35:                                               ; preds = %5
  %36 = load %struct.net_device*, %struct.net_device** %7, align 8
  %37 = getelementptr inbounds %struct.net_device, %struct.net_device* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32 (%struct.net_device*, i32, i32*)*, i32 (%struct.net_device*, i32, i32*)** %39, align 8
  %41 = icmp ne i32 (%struct.net_device*, i32, i32*)* %40, null
  br i1 %41, label %44, label %42

42:                                               ; preds = %35, %5
  %43 = load i32, i32* %19, align 4
  store i32 %43, i32* %6, align 4
  store i32 1, i32* %22, align 4
  br label %151

44:                                               ; preds = %35
  %45 = load i32, i32* @DCB_PFC_UP_ATTR_MAX, align 4
  %46 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %47 = load i64, i64* @DCB_ATTR_PFC_CFG, align 8
  %48 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %46, i64 %47
  %49 = load %struct.nlattr*, %struct.nlattr** %48, align 8
  %50 = load i32, i32* @dcbnl_pfc_up_nest, align 4
  %51 = call i32 @nla_parse_nested(%struct.nlattr** %27, i32 %45, %struct.nlattr* %49, i32 %50)
  store i32 %51, i32* %19, align 4
  %52 = load i32, i32* %19, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %44
  br label %148

55:                                               ; preds = %44
  %56 = load i32, i32* @NLMSG_DEFAULT_SIZE, align 4
  %57 = load i32, i32* @GFP_KERNEL, align 4
  %58 = call %struct.sk_buff* @nlmsg_new(i32 %56, i32 %57)
  store %struct.sk_buff* %58, %struct.sk_buff** %12, align 8
  %59 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %60 = icmp ne %struct.sk_buff* %59, null
  br i1 %60, label %62, label %61

61:                                               ; preds = %55
  br label %148

62:                                               ; preds = %55
  %63 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* %10, align 4
  %66 = load i32, i32* @RTM_GETDCB, align 4
  %67 = load i32, i32* %11, align 4
  %68 = call %struct.nlmsghdr* @NLMSG_NEW(%struct.sk_buff* %63, i32 %64, i32 %65, i32 %66, i32 8, i32 %67)
  store %struct.nlmsghdr* %68, %struct.nlmsghdr** %13, align 8
  %69 = load %struct.nlmsghdr*, %struct.nlmsghdr** %13, align 8
  %70 = call %struct.dcbmsg* @NLMSG_DATA(%struct.nlmsghdr* %69)
  store %struct.dcbmsg* %70, %struct.dcbmsg** %14, align 8
  %71 = load i32, i32* @AF_UNSPEC, align 4
  %72 = load %struct.dcbmsg*, %struct.dcbmsg** %14, align 8
  %73 = getelementptr inbounds %struct.dcbmsg, %struct.dcbmsg* %72, i32 0, i32 1
  store i32 %71, i32* %73, align 4
  %74 = load i32, i32* @DCB_CMD_PFC_GCFG, align 4
  %75 = load %struct.dcbmsg*, %struct.dcbmsg** %14, align 8
  %76 = getelementptr inbounds %struct.dcbmsg, %struct.dcbmsg* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 4
  %77 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %78 = load i64, i64* @DCB_ATTR_PFC_CFG, align 8
  %79 = call %struct.nlattr* @nla_nest_start(%struct.sk_buff* %77, i64 %78)
  store %struct.nlattr* %79, %struct.nlattr** %17, align 8
  %80 = load %struct.nlattr*, %struct.nlattr** %17, align 8
  %81 = icmp ne %struct.nlattr* %80, null
  br i1 %81, label %83, label %82

82:                                               ; preds = %62
  br label %145

83:                                               ; preds = %62
  %84 = load i64, i64* @DCB_PFC_UP_ATTR_ALL, align 8
  %85 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %27, i64 %84
  %86 = load %struct.nlattr*, %struct.nlattr** %85, align 8
  %87 = icmp ne %struct.nlattr* %86, null
  br i1 %87, label %88, label %89

88:                                               ; preds = %83
  store i32 1, i32* %21, align 4
  br label %89

89:                                               ; preds = %88, %83
  %90 = load i32, i32* @DCB_PFC_UP_ATTR_0, align 4
  store i32 %90, i32* %20, align 4
  br label %91

91:                                               ; preds = %127, %89
  %92 = load i32, i32* %20, align 4
  %93 = load i32, i32* @DCB_PFC_UP_ATTR_7, align 4
  %94 = icmp sle i32 %92, %93
  br i1 %94, label %95, label %130

95:                                               ; preds = %91
  %96 = load i32, i32* %21, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %105, label %98

98:                                               ; preds = %95
  %99 = load i32, i32* %20, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %27, i64 %100
  %102 = load %struct.nlattr*, %struct.nlattr** %101, align 8
  %103 = icmp ne %struct.nlattr* %102, null
  br i1 %103, label %105, label %104

104:                                              ; preds = %98
  br label %127

105:                                              ; preds = %98, %95
  %106 = load %struct.net_device*, %struct.net_device** %7, align 8
  %107 = getelementptr inbounds %struct.net_device, %struct.net_device* %106, i32 0, i32 0
  %108 = load %struct.TYPE_2__*, %struct.TYPE_2__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 0
  %110 = load i32 (%struct.net_device*, i32, i32*)*, i32 (%struct.net_device*, i32, i32*)** %109, align 8
  %111 = load %struct.net_device*, %struct.net_device** %7, align 8
  %112 = load i32, i32* %20, align 4
  %113 = load i32, i32* @DCB_PFC_UP_ATTR_0, align 4
  %114 = sub nsw i32 %112, %113
  %115 = call i32 %110(%struct.net_device* %111, i32 %114, i32* %18)
  %116 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %117 = load i32, i32* %20, align 4
  %118 = load i32, i32* %18, align 4
  %119 = call i32 @nla_put_u8(%struct.sk_buff* %116, i32 %117, i32 %118)
  store i32 %119, i32* %19, align 4
  %120 = load i32, i32* %19, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %126

122:                                              ; preds = %105
  %123 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %124 = load %struct.nlattr*, %struct.nlattr** %17, align 8
  %125 = call i32 @nla_nest_cancel(%struct.sk_buff* %123, %struct.nlattr* %124)
  br label %145

126:                                              ; preds = %105
  br label %127

127:                                              ; preds = %126, %104
  %128 = load i32, i32* %20, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %20, align 4
  br label %91

130:                                              ; preds = %91
  %131 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %132 = load %struct.nlattr*, %struct.nlattr** %17, align 8
  %133 = call i32 @nla_nest_end(%struct.sk_buff* %131, %struct.nlattr* %132)
  %134 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %135 = load %struct.nlmsghdr*, %struct.nlmsghdr** %13, align 8
  %136 = call i32 @nlmsg_end(%struct.sk_buff* %134, %struct.nlmsghdr* %135)
  %137 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %138 = load i32, i32* %9, align 4
  %139 = call i32 @rtnl_unicast(%struct.sk_buff* %137, i32* @init_net, i32 %138)
  store i32 %139, i32* %19, align 4
  %140 = load i32, i32* %19, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %130
  br label %148

143:                                              ; preds = %130
  store i32 0, i32* %6, align 4
  store i32 1, i32* %22, align 4
  br label %151

144:                                              ; No predecessors!
  br label %145

145:                                              ; preds = %144, %122, %82
  %146 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %147 = call i32 @kfree_skb(%struct.sk_buff* %146)
  br label %148

148:                                              ; preds = %145, %142, %61, %54
  %149 = load i32, i32* @EINVAL, align 4
  %150 = sub nsw i32 0, %149
  store i32 %150, i32* %6, align 4
  store i32 1, i32* %22, align 4
  br label %151

151:                                              ; preds = %148, %143, %42
  %152 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %152)
  %153 = load i32, i32* %6, align 4
  ret i32 %153
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @nla_parse_nested(%struct.nlattr**, i32, %struct.nlattr*, i32) #2

declare dso_local %struct.sk_buff* @nlmsg_new(i32, i32) #2

declare dso_local %struct.nlmsghdr* @NLMSG_NEW(%struct.sk_buff*, i32, i32, i32, i32, i32) #2

declare dso_local %struct.dcbmsg* @NLMSG_DATA(%struct.nlmsghdr*) #2

declare dso_local %struct.nlattr* @nla_nest_start(%struct.sk_buff*, i64) #2

declare dso_local i32 @nla_put_u8(%struct.sk_buff*, i32, i32) #2

declare dso_local i32 @nla_nest_cancel(%struct.sk_buff*, %struct.nlattr*) #2

declare dso_local i32 @nla_nest_end(%struct.sk_buff*, %struct.nlattr*) #2

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
