; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_ndisc.c_ndisc_ra_useropt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_ndisc.c_ndisc_ra_useropt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.nd_opt_hdr = type { i32 }
%struct.icmp6hdr = type { i32, i32 }
%struct.nlmsghdr = type { i32 }
%struct.nduseroptmsg = type { i32, i32, i32, i32, i32 }
%struct.net = type { i32 }
%struct.TYPE_3__ = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@RTM_NEWNDUSEROPT = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4
@NDUSEROPT_SRCADDR = common dso_local global i32 0, align 4
@RTNLGRP_ND_USEROPT = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*, %struct.nd_opt_hdr*)* @ndisc_ra_useropt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ndisc_ra_useropt(%struct.sk_buff* %0, %struct.nd_opt_hdr* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.nd_opt_hdr*, align 8
  %5 = alloca %struct.icmp6hdr*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.nlmsghdr*, align 8
  %8 = alloca %struct.nduseroptmsg*, align 8
  %9 = alloca %struct.net*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.nd_opt_hdr* %1, %struct.nd_opt_hdr** %4, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %14 = call i64 @skb_transport_header(%struct.sk_buff* %13)
  %15 = inttoptr i64 %14 to %struct.icmp6hdr*
  store %struct.icmp6hdr* %15, %struct.icmp6hdr** %5, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %17 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = call %struct.net* @dev_net(%struct.TYPE_4__* %18)
  store %struct.net* %19, %struct.net** %9, align 8
  %20 = load %struct.nd_opt_hdr*, %struct.nd_opt_hdr** %4, align 8
  %21 = getelementptr inbounds %struct.nd_opt_hdr, %struct.nd_opt_hdr* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = shl i32 %22, 3
  %24 = sext i32 %23 to i64
  %25 = add i64 20, %24
  %26 = trunc i64 %25 to i32
  %27 = call i32 @NLMSG_ALIGN(i32 %26)
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %11, align 4
  %29 = call i32 @nla_total_size(i32 4)
  %30 = add nsw i32 %28, %29
  %31 = sext i32 %30 to i64
  store i64 %31, i64* %12, align 8
  %32 = load i64, i64* %12, align 8
  %33 = load i32, i32* @GFP_ATOMIC, align 4
  %34 = call %struct.sk_buff* @nlmsg_new(i64 %32, i32 %33)
  store %struct.sk_buff* %34, %struct.sk_buff** %6, align 8
  %35 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %36 = icmp eq %struct.sk_buff* %35, null
  br i1 %36, label %37, label %40

37:                                               ; preds = %2
  %38 = load i32, i32* @ENOBUFS, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %10, align 4
  br label %104

40:                                               ; preds = %2
  %41 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %42 = load i32, i32* @RTM_NEWNDUSEROPT, align 4
  %43 = load i32, i32* %11, align 4
  %44 = call %struct.nlmsghdr* @nlmsg_put(%struct.sk_buff* %41, i32 0, i32 0, i32 %42, i32 %43, i32 0)
  store %struct.nlmsghdr* %44, %struct.nlmsghdr** %7, align 8
  %45 = load %struct.nlmsghdr*, %struct.nlmsghdr** %7, align 8
  %46 = icmp eq %struct.nlmsghdr* %45, null
  br i1 %46, label %47, label %48

47:                                               ; preds = %40
  br label %99

48:                                               ; preds = %40
  %49 = load %struct.nlmsghdr*, %struct.nlmsghdr** %7, align 8
  %50 = call %struct.nduseroptmsg* @nlmsg_data(%struct.nlmsghdr* %49)
  store %struct.nduseroptmsg* %50, %struct.nduseroptmsg** %8, align 8
  %51 = load i32, i32* @AF_INET6, align 4
  %52 = load %struct.nduseroptmsg*, %struct.nduseroptmsg** %8, align 8
  %53 = getelementptr inbounds %struct.nduseroptmsg, %struct.nduseroptmsg* %52, i32 0, i32 4
  store i32 %51, i32* %53, align 4
  %54 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %55 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %54, i32 0, i32 0
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.nduseroptmsg*, %struct.nduseroptmsg** %8, align 8
  %60 = getelementptr inbounds %struct.nduseroptmsg, %struct.nduseroptmsg* %59, i32 0, i32 3
  store i32 %58, i32* %60, align 4
  %61 = load %struct.icmp6hdr*, %struct.icmp6hdr** %5, align 8
  %62 = getelementptr inbounds %struct.icmp6hdr, %struct.icmp6hdr* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.nduseroptmsg*, %struct.nduseroptmsg** %8, align 8
  %65 = getelementptr inbounds %struct.nduseroptmsg, %struct.nduseroptmsg* %64, i32 0, i32 2
  store i32 %63, i32* %65, align 4
  %66 = load %struct.icmp6hdr*, %struct.icmp6hdr** %5, align 8
  %67 = getelementptr inbounds %struct.icmp6hdr, %struct.icmp6hdr* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.nduseroptmsg*, %struct.nduseroptmsg** %8, align 8
  %70 = getelementptr inbounds %struct.nduseroptmsg, %struct.nduseroptmsg* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 4
  %71 = load %struct.nd_opt_hdr*, %struct.nd_opt_hdr** %4, align 8
  %72 = getelementptr inbounds %struct.nd_opt_hdr, %struct.nd_opt_hdr* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = shl i32 %73, 3
  %75 = load %struct.nduseroptmsg*, %struct.nduseroptmsg** %8, align 8
  %76 = getelementptr inbounds %struct.nduseroptmsg, %struct.nduseroptmsg* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 4
  %77 = load %struct.nduseroptmsg*, %struct.nduseroptmsg** %8, align 8
  %78 = getelementptr inbounds %struct.nduseroptmsg, %struct.nduseroptmsg* %77, i64 1
  %79 = load %struct.nd_opt_hdr*, %struct.nd_opt_hdr** %4, align 8
  %80 = load %struct.nd_opt_hdr*, %struct.nd_opt_hdr** %4, align 8
  %81 = getelementptr inbounds %struct.nd_opt_hdr, %struct.nd_opt_hdr* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = shl i32 %82, 3
  %84 = call i32 @memcpy(%struct.nduseroptmsg* %78, %struct.nd_opt_hdr* %79, i32 %83)
  %85 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %86 = load i32, i32* @NDUSEROPT_SRCADDR, align 4
  %87 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %88 = call %struct.TYPE_3__* @ipv6_hdr(%struct.sk_buff* %87)
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 0
  %90 = call i32 @NLA_PUT(%struct.sk_buff* %85, i32 %86, i32 4, i32* %89)
  %91 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %92 = load %struct.nlmsghdr*, %struct.nlmsghdr** %7, align 8
  %93 = call i32 @nlmsg_end(%struct.sk_buff* %91, %struct.nlmsghdr* %92)
  %94 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %95 = load %struct.net*, %struct.net** %9, align 8
  %96 = load i32, i32* @RTNLGRP_ND_USEROPT, align 4
  %97 = load i32, i32* @GFP_ATOMIC, align 4
  %98 = call i32 @rtnl_notify(%struct.sk_buff* %94, %struct.net* %95, i32 0, i32 %96, i32* null, i32 %97)
  br label %109

99:                                               ; preds = %47
  %100 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %101 = call i32 @nlmsg_free(%struct.sk_buff* %100)
  %102 = load i32, i32* @EMSGSIZE, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %10, align 4
  br label %104

104:                                              ; preds = %99, %37
  %105 = load %struct.net*, %struct.net** %9, align 8
  %106 = load i32, i32* @RTNLGRP_ND_USEROPT, align 4
  %107 = load i32, i32* %10, align 4
  %108 = call i32 @rtnl_set_sk_err(%struct.net* %105, i32 %106, i32 %107)
  br label %109

109:                                              ; preds = %104, %48
  ret void
}

declare dso_local i64 @skb_transport_header(%struct.sk_buff*) #1

declare dso_local %struct.net* @dev_net(%struct.TYPE_4__*) #1

declare dso_local i32 @NLMSG_ALIGN(i32) #1

declare dso_local i32 @nla_total_size(i32) #1

declare dso_local %struct.sk_buff* @nlmsg_new(i64, i32) #1

declare dso_local %struct.nlmsghdr* @nlmsg_put(%struct.sk_buff*, i32, i32, i32, i32, i32) #1

declare dso_local %struct.nduseroptmsg* @nlmsg_data(%struct.nlmsghdr*) #1

declare dso_local i32 @memcpy(%struct.nduseroptmsg*, %struct.nd_opt_hdr*, i32) #1

declare dso_local i32 @NLA_PUT(%struct.sk_buff*, i32, i32, i32*) #1

declare dso_local %struct.TYPE_3__* @ipv6_hdr(%struct.sk_buff*) #1

declare dso_local i32 @nlmsg_end(%struct.sk_buff*, %struct.nlmsghdr*) #1

declare dso_local i32 @rtnl_notify(%struct.sk_buff*, %struct.net*, i32, i32, i32*, i32) #1

declare dso_local i32 @nlmsg_free(%struct.sk_buff*) #1

declare dso_local i32 @rtnl_set_sk_err(%struct.net*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
