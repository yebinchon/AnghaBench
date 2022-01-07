; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_route.c_inet6_rtm_getroute.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_route.c_inet6_rtm_getroute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nlmsghdr = type { i32 }
%struct.net = type { i32 }
%struct.rt6_info = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.rtmsg = type { i32 }
%struct.flowi = type { i32, i32, i8* }
%struct.net_device = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.nlattr = type { i32 }

@RTA_MAX = common dso_local global i32 0, align 4
@rtm_ipv6_policy = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@RTA_SRC = common dso_local global i64 0, align 8
@RTA_DST = common dso_local global i64 0, align 8
@RTA_IIF = common dso_local global i64 0, align 8
@RTA_OIF = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@NLMSG_GOODSIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@MAX_HEADER = common dso_local global i64 0, align 8
@RTM_NEWROUTE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nlmsghdr*, i8*)* @inet6_rtm_getroute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @inet6_rtm_getroute(%struct.sk_buff* %0, %struct.nlmsghdr* %1, i8* %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.nlmsghdr*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.net*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.rt6_info*, align 8
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca %struct.rtmsg*, align 8
  %13 = alloca %struct.flowi, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.net_device*, align 8
  %17 = alloca %struct.TYPE_4__, align 4
  %18 = alloca %struct.TYPE_4__, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.nlmsghdr* %1, %struct.nlmsghdr** %5, align 8
  store i8* %2, i8** %6, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %20 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.net* @sock_net(i32 %21)
  store %struct.net* %22, %struct.net** %7, align 8
  %23 = load i32, i32* @RTA_MAX, align 4
  %24 = add nsw i32 %23, 1
  %25 = zext i32 %24 to i64
  %26 = call i8* @llvm.stacksave()
  store i8* %26, i8** %8, align 8
  %27 = alloca %struct.nlattr*, i64 %25, align 16
  store i64 %25, i64* %9, align 8
  store i32 0, i32* %15, align 4
  %28 = load %struct.nlmsghdr*, %struct.nlmsghdr** %5, align 8
  %29 = load i32, i32* @RTA_MAX, align 4
  %30 = load i32, i32* @rtm_ipv6_policy, align 4
  %31 = call i32 @nlmsg_parse(%struct.nlmsghdr* %28, i32 4, %struct.nlattr** %27, i32 %29, i32 %30)
  store i32 %31, i32* %14, align 4
  %32 = load i32, i32* %14, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %3
  br label %167

35:                                               ; preds = %3
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %14, align 4
  %38 = call i32 @memset(%struct.flowi* %13, i32 0, i32 16)
  %39 = load i64, i64* @RTA_SRC, align 8
  %40 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %27, i64 %39
  %41 = load %struct.nlattr*, %struct.nlattr** %40, align 8
  %42 = icmp ne %struct.nlattr* %41, null
  br i1 %42, label %43, label %58

43:                                               ; preds = %35
  %44 = load i64, i64* @RTA_SRC, align 8
  %45 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %27, i64 %44
  %46 = load %struct.nlattr*, %struct.nlattr** %45, align 8
  %47 = call i32 @nla_len(%struct.nlattr* %46)
  %48 = sext i32 %47 to i64
  %49 = icmp ult i64 %48, 4
  br i1 %49, label %50, label %51

50:                                               ; preds = %43
  br label %167

51:                                               ; preds = %43
  %52 = getelementptr inbounds %struct.flowi, %struct.flowi* %13, i32 0, i32 0
  %53 = load i64, i64* @RTA_SRC, align 8
  %54 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %27, i64 %53
  %55 = load %struct.nlattr*, %struct.nlattr** %54, align 8
  %56 = call i32 @nla_data(%struct.nlattr* %55)
  %57 = call i32 @ipv6_addr_copy(i32* %52, i32 %56)
  br label %58

58:                                               ; preds = %51, %35
  %59 = load i64, i64* @RTA_DST, align 8
  %60 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %27, i64 %59
  %61 = load %struct.nlattr*, %struct.nlattr** %60, align 8
  %62 = icmp ne %struct.nlattr* %61, null
  br i1 %62, label %63, label %78

63:                                               ; preds = %58
  %64 = load i64, i64* @RTA_DST, align 8
  %65 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %27, i64 %64
  %66 = load %struct.nlattr*, %struct.nlattr** %65, align 8
  %67 = call i32 @nla_len(%struct.nlattr* %66)
  %68 = sext i32 %67 to i64
  %69 = icmp ult i64 %68, 4
  br i1 %69, label %70, label %71

70:                                               ; preds = %63
  br label %167

71:                                               ; preds = %63
  %72 = getelementptr inbounds %struct.flowi, %struct.flowi* %13, i32 0, i32 1
  %73 = load i64, i64* @RTA_DST, align 8
  %74 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %27, i64 %73
  %75 = load %struct.nlattr*, %struct.nlattr** %74, align 8
  %76 = call i32 @nla_data(%struct.nlattr* %75)
  %77 = call i32 @ipv6_addr_copy(i32* %72, i32 %76)
  br label %78

78:                                               ; preds = %71, %58
  %79 = load i64, i64* @RTA_IIF, align 8
  %80 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %27, i64 %79
  %81 = load %struct.nlattr*, %struct.nlattr** %80, align 8
  %82 = icmp ne %struct.nlattr* %81, null
  br i1 %82, label %83, label %89

83:                                               ; preds = %78
  %84 = load i64, i64* @RTA_IIF, align 8
  %85 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %27, i64 %84
  %86 = load %struct.nlattr*, %struct.nlattr** %85, align 8
  %87 = call i8* @nla_get_u32(%struct.nlattr* %86)
  %88 = ptrtoint i8* %87 to i32
  store i32 %88, i32* %15, align 4
  br label %89

89:                                               ; preds = %83, %78
  %90 = load i64, i64* @RTA_OIF, align 8
  %91 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %27, i64 %90
  %92 = load %struct.nlattr*, %struct.nlattr** %91, align 8
  %93 = icmp ne %struct.nlattr* %92, null
  br i1 %93, label %94, label %100

94:                                               ; preds = %89
  %95 = load i64, i64* @RTA_OIF, align 8
  %96 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %27, i64 %95
  %97 = load %struct.nlattr*, %struct.nlattr** %96, align 8
  %98 = call i8* @nla_get_u32(%struct.nlattr* %97)
  %99 = getelementptr inbounds %struct.flowi, %struct.flowi* %13, i32 0, i32 2
  store i8* %98, i8** %99, align 8
  br label %100

100:                                              ; preds = %94, %89
  %101 = load i32, i32* %15, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %113

103:                                              ; preds = %100
  %104 = load %struct.net*, %struct.net** %7, align 8
  %105 = load i32, i32* %15, align 4
  %106 = call %struct.net_device* @__dev_get_by_index(%struct.net* %104, i32 %105)
  store %struct.net_device* %106, %struct.net_device** %16, align 8
  %107 = load %struct.net_device*, %struct.net_device** %16, align 8
  %108 = icmp ne %struct.net_device* %107, null
  br i1 %108, label %112, label %109

109:                                              ; preds = %103
  %110 = load i32, i32* @ENODEV, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %14, align 4
  br label %167

112:                                              ; preds = %103
  br label %113

113:                                              ; preds = %112, %100
  %114 = load i32, i32* @NLMSG_GOODSIZE, align 4
  %115 = load i32, i32* @GFP_KERNEL, align 4
  %116 = call %struct.sk_buff* @alloc_skb(i32 %114, i32 %115)
  store %struct.sk_buff* %116, %struct.sk_buff** %11, align 8
  %117 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %118 = icmp eq %struct.sk_buff* %117, null
  br i1 %118, label %119, label %122

119:                                              ; preds = %113
  %120 = load i32, i32* @ENOBUFS, align 4
  %121 = sub nsw i32 0, %120
  store i32 %121, i32* %14, align 4
  br label %167

122:                                              ; preds = %113
  %123 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %124 = call i32 @skb_reset_mac_header(%struct.sk_buff* %123)
  %125 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %126 = load i64, i64* @MAX_HEADER, align 8
  %127 = add i64 %126, 4
  %128 = call i32 @skb_reserve(%struct.sk_buff* %125, i64 %127)
  %129 = load %struct.net*, %struct.net** %7, align 8
  %130 = call i64 @ip6_route_output(%struct.net* %129, i32* null, %struct.flowi* %13)
  %131 = inttoptr i64 %130 to %struct.rt6_info*
  store %struct.rt6_info* %131, %struct.rt6_info** %10, align 8
  %132 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %133 = load %struct.rt6_info*, %struct.rt6_info** %10, align 8
  %134 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i32 0, i32 0
  %136 = call i32 @skb_dst_set(%struct.sk_buff* %132, i32* %135)
  %137 = load %struct.net*, %struct.net** %7, align 8
  %138 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %139 = load %struct.rt6_info*, %struct.rt6_info** %10, align 8
  %140 = getelementptr inbounds %struct.flowi, %struct.flowi* %13, i32 0, i32 1
  %141 = getelementptr inbounds %struct.flowi, %struct.flowi* %13, i32 0, i32 0
  %142 = load i32, i32* %15, align 4
  %143 = load i32, i32* @RTM_NEWROUTE, align 4
  %144 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %145 = call i32 @NETLINK_CB(%struct.sk_buff* %144)
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  store i32 %145, i32* %146, align 4
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.nlmsghdr*, %struct.nlmsghdr** %5, align 8
  %150 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @rt6_fill_node(%struct.net* %137, %struct.sk_buff* %138, %struct.rt6_info* %139, i32* %140, i32* %141, i32 %142, i32 %143, i32 %148, i32 %151, i32 0, i32 0, i32 0)
  store i32 %152, i32* %14, align 4
  %153 = load i32, i32* %14, align 4
  %154 = icmp slt i32 %153, 0
  br i1 %154, label %155, label %158

155:                                              ; preds = %122
  %156 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %157 = call i32 @kfree_skb(%struct.sk_buff* %156)
  br label %167

158:                                              ; preds = %122
  %159 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %160 = load %struct.net*, %struct.net** %7, align 8
  %161 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %162 = call i32 @NETLINK_CB(%struct.sk_buff* %161)
  %163 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  store i32 %162, i32* %163, align 4
  %164 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = call i32 @rtnl_unicast(%struct.sk_buff* %159, %struct.net* %160, i32 %165)
  store i32 %166, i32* %14, align 4
  br label %167

167:                                              ; preds = %158, %155, %119, %109, %70, %50, %34
  %168 = load i32, i32* %14, align 4
  %169 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %169)
  ret i32 %168
}

declare dso_local %struct.net* @sock_net(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @nlmsg_parse(%struct.nlmsghdr*, i32, %struct.nlattr**, i32, i32) #1

declare dso_local i32 @memset(%struct.flowi*, i32, i32) #1

declare dso_local i32 @nla_len(%struct.nlattr*) #1

declare dso_local i32 @ipv6_addr_copy(i32*, i32) #1

declare dso_local i32 @nla_data(%struct.nlattr*) #1

declare dso_local i8* @nla_get_u32(%struct.nlattr*) #1

declare dso_local %struct.net_device* @__dev_get_by_index(%struct.net*, i32) #1

declare dso_local %struct.sk_buff* @alloc_skb(i32, i32) #1

declare dso_local i32 @skb_reset_mac_header(%struct.sk_buff*) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i64) #1

declare dso_local i64 @ip6_route_output(%struct.net*, i32*, %struct.flowi*) #1

declare dso_local i32 @skb_dst_set(%struct.sk_buff*, i32*) #1

declare dso_local i32 @rt6_fill_node(%struct.net*, %struct.sk_buff*, %struct.rt6_info*, i32*, i32*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @NETLINK_CB(%struct.sk_buff*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @rtnl_unicast(%struct.sk_buff*, %struct.net*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
