; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/xfrm/extr_xfrm_user.c_xfrm_notify_sa.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/xfrm/extr_xfrm_user.c_xfrm_notify_sa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_state = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.km_event = type { i32, i32, i32 }
%struct.net = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.xfrm_usersa_info = type { i32 }
%struct.xfrm_usersa_id = type { i32, i32, i32, i32 }
%struct.nlmsghdr = type { i32 }
%struct.sk_buff = type { i32 }
%struct.nlattr = type { i32 }

@XFRM_MSG_DELSA = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@XFRMA_SA = common dso_local global i32 0, align 4
@XFRMNLGRP_SA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xfrm_state*, %struct.km_event*)* @xfrm_notify_sa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xfrm_notify_sa(%struct.xfrm_state* %0, %struct.km_event* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xfrm_state*, align 8
  %5 = alloca %struct.km_event*, align 8
  %6 = alloca %struct.net*, align 8
  %7 = alloca %struct.xfrm_usersa_info*, align 8
  %8 = alloca %struct.xfrm_usersa_id*, align 8
  %9 = alloca %struct.nlmsghdr*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.nlattr*, align 8
  store %struct.xfrm_state* %0, %struct.xfrm_state** %4, align 8
  store %struct.km_event* %1, %struct.km_event** %5, align 8
  %14 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %15 = call %struct.net* @xs_net(%struct.xfrm_state* %14)
  store %struct.net* %15, %struct.net** %6, align 8
  %16 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %17 = call i32 @xfrm_sa_len(%struct.xfrm_state* %16)
  store i32 %17, i32* %11, align 4
  store i32 4, i32* %12, align 4
  %18 = load %struct.km_event*, %struct.km_event** %5, align 8
  %19 = getelementptr inbounds %struct.km_event, %struct.km_event* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @XFRM_MSG_DELSA, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %35

23:                                               ; preds = %2
  %24 = load i32, i32* %12, align 4
  %25 = call i64 @nla_total_size(i32 %24)
  %26 = load i32, i32* %11, align 4
  %27 = sext i32 %26 to i64
  %28 = add nsw i64 %27, %25
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %11, align 4
  store i32 16, i32* %12, align 4
  %30 = call i64 @nla_total_size(i32 4)
  %31 = load i32, i32* %11, align 4
  %32 = sext i32 %31 to i64
  %33 = add nsw i64 %32, %30
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %11, align 4
  br label %35

35:                                               ; preds = %23, %2
  %36 = load i32, i32* %12, align 4
  %37 = call i64 @NLMSG_ALIGN(i32 %36)
  %38 = load i32, i32* %11, align 4
  %39 = sext i32 %38 to i64
  %40 = add nsw i64 %39, %37
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %11, align 4
  %42 = load i32, i32* %11, align 4
  %43 = load i32, i32* @GFP_ATOMIC, align 4
  %44 = call %struct.sk_buff* @nlmsg_new(i32 %42, i32 %43)
  store %struct.sk_buff* %44, %struct.sk_buff** %10, align 8
  %45 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %46 = icmp eq %struct.sk_buff* %45, null
  br i1 %46, label %47, label %50

47:                                               ; preds = %35
  %48 = load i32, i32* @ENOMEM, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  br label %135

50:                                               ; preds = %35
  %51 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %52 = load %struct.km_event*, %struct.km_event** %5, align 8
  %53 = getelementptr inbounds %struct.km_event, %struct.km_event* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.km_event*, %struct.km_event** %5, align 8
  %56 = getelementptr inbounds %struct.km_event, %struct.km_event* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.km_event*, %struct.km_event** %5, align 8
  %59 = getelementptr inbounds %struct.km_event, %struct.km_event* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %12, align 4
  %62 = call %struct.nlmsghdr* @nlmsg_put(%struct.sk_buff* %51, i32 %54, i32 %57, i32 %60, i32 %61, i32 0)
  store %struct.nlmsghdr* %62, %struct.nlmsghdr** %9, align 8
  %63 = load %struct.nlmsghdr*, %struct.nlmsghdr** %9, align 8
  %64 = icmp eq %struct.nlmsghdr* %63, null
  br i1 %64, label %65, label %66

65:                                               ; preds = %50
  br label %131

66:                                               ; preds = %50
  %67 = load %struct.nlmsghdr*, %struct.nlmsghdr** %9, align 8
  %68 = call i8* @nlmsg_data(%struct.nlmsghdr* %67)
  %69 = bitcast i8* %68 to %struct.xfrm_usersa_info*
  store %struct.xfrm_usersa_info* %69, %struct.xfrm_usersa_info** %7, align 8
  %70 = load %struct.km_event*, %struct.km_event** %5, align 8
  %71 = getelementptr inbounds %struct.km_event, %struct.km_event* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @XFRM_MSG_DELSA, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %112

75:                                               ; preds = %66
  %76 = load %struct.nlmsghdr*, %struct.nlmsghdr** %9, align 8
  %77 = call i8* @nlmsg_data(%struct.nlmsghdr* %76)
  %78 = bitcast i8* %77 to %struct.xfrm_usersa_id*
  store %struct.xfrm_usersa_id* %78, %struct.xfrm_usersa_id** %8, align 8
  %79 = load %struct.xfrm_usersa_id*, %struct.xfrm_usersa_id** %8, align 8
  %80 = getelementptr inbounds %struct.xfrm_usersa_id, %struct.xfrm_usersa_id* %79, i32 0, i32 3
  %81 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %82 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 2
  %84 = call i32 @memcpy(i32* %80, i32* %83, i32 4)
  %85 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %86 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.xfrm_usersa_id*, %struct.xfrm_usersa_id** %8, align 8
  %90 = getelementptr inbounds %struct.xfrm_usersa_id, %struct.xfrm_usersa_id* %89, i32 0, i32 2
  store i32 %88, i32* %90, align 4
  %91 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %92 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.xfrm_usersa_id*, %struct.xfrm_usersa_id** %8, align 8
  %96 = getelementptr inbounds %struct.xfrm_usersa_id, %struct.xfrm_usersa_id* %95, i32 0, i32 1
  store i32 %94, i32* %96, align 4
  %97 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %98 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.xfrm_usersa_id*, %struct.xfrm_usersa_id** %8, align 8
  %102 = getelementptr inbounds %struct.xfrm_usersa_id, %struct.xfrm_usersa_id* %101, i32 0, i32 0
  store i32 %100, i32* %102, align 4
  %103 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %104 = load i32, i32* @XFRMA_SA, align 4
  %105 = call %struct.nlattr* @nla_reserve(%struct.sk_buff* %103, i32 %104, i32 4)
  store %struct.nlattr* %105, %struct.nlattr** %13, align 8
  %106 = load %struct.nlattr*, %struct.nlattr** %13, align 8
  %107 = icmp eq %struct.nlattr* %106, null
  br i1 %107, label %108, label %109

108:                                              ; preds = %75
  br label %131

109:                                              ; preds = %75
  %110 = load %struct.nlattr*, %struct.nlattr** %13, align 8
  %111 = call %struct.xfrm_usersa_info* @nla_data(%struct.nlattr* %110)
  store %struct.xfrm_usersa_info* %111, %struct.xfrm_usersa_info** %7, align 8
  br label %112

112:                                              ; preds = %109, %66
  %113 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %114 = load %struct.xfrm_usersa_info*, %struct.xfrm_usersa_info** %7, align 8
  %115 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %116 = call i64 @copy_to_user_state_extra(%struct.xfrm_state* %113, %struct.xfrm_usersa_info* %114, %struct.sk_buff* %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %112
  br label %131

119:                                              ; preds = %112
  %120 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %121 = load %struct.nlmsghdr*, %struct.nlmsghdr** %9, align 8
  %122 = call i32 @nlmsg_end(%struct.sk_buff* %120, %struct.nlmsghdr* %121)
  %123 = load %struct.net*, %struct.net** %6, align 8
  %124 = getelementptr inbounds %struct.net, %struct.net* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %128 = load i32, i32* @XFRMNLGRP_SA, align 4
  %129 = load i32, i32* @GFP_ATOMIC, align 4
  %130 = call i32 @nlmsg_multicast(i32 %126, %struct.sk_buff* %127, i32 0, i32 %128, i32 %129)
  store i32 %130, i32* %3, align 4
  br label %135

131:                                              ; preds = %118, %108, %65
  %132 = call i32 @WARN_ON(i32 1)
  %133 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %134 = call i32 @kfree_skb(%struct.sk_buff* %133)
  store i32 -1, i32* %3, align 4
  br label %135

135:                                              ; preds = %131, %119, %47
  %136 = load i32, i32* %3, align 4
  ret i32 %136
}

declare dso_local %struct.net* @xs_net(%struct.xfrm_state*) #1

declare dso_local i32 @xfrm_sa_len(%struct.xfrm_state*) #1

declare dso_local i64 @nla_total_size(i32) #1

declare dso_local i64 @NLMSG_ALIGN(i32) #1

declare dso_local %struct.sk_buff* @nlmsg_new(i32, i32) #1

declare dso_local %struct.nlmsghdr* @nlmsg_put(%struct.sk_buff*, i32, i32, i32, i32, i32) #1

declare dso_local i8* @nlmsg_data(%struct.nlmsghdr*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local %struct.nlattr* @nla_reserve(%struct.sk_buff*, i32, i32) #1

declare dso_local %struct.xfrm_usersa_info* @nla_data(%struct.nlattr*) #1

declare dso_local i64 @copy_to_user_state_extra(%struct.xfrm_state*, %struct.xfrm_usersa_info*, %struct.sk_buff*) #1

declare dso_local i32 @nlmsg_end(%struct.sk_buff*, %struct.nlmsghdr*) #1

declare dso_local i32 @nlmsg_multicast(i32, %struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
