; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/xfrm/extr_xfrm_user.c_xfrm_notify_policy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/xfrm/extr_xfrm_user.c_xfrm_notify_policy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_policy = type { i32, i32, i32, i32, i32 }
%struct.km_event = type { %struct.TYPE_3__, i32, i32, i32 }
%struct.TYPE_3__ = type { i64 }
%struct.net = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.xfrm_userpolicy_info = type { i32 }
%struct.xfrm_userpolicy_id = type { i32, i32, i32 }
%struct.nlmsghdr = type { i32 }
%struct.sk_buff = type { i32 }
%struct.nlattr = type { i32 }

@XFRM_MSG_DELPOLICY = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@XFRMA_POLICY = common dso_local global i32 0, align 4
@XFRMNLGRP_POLICY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xfrm_policy*, i32, %struct.km_event*)* @xfrm_notify_policy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xfrm_notify_policy(%struct.xfrm_policy* %0, i32 %1, %struct.km_event* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.xfrm_policy*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.km_event*, align 8
  %8 = alloca %struct.net*, align 8
  %9 = alloca %struct.xfrm_userpolicy_info*, align 8
  %10 = alloca %struct.xfrm_userpolicy_id*, align 8
  %11 = alloca %struct.nlmsghdr*, align 8
  %12 = alloca %struct.sk_buff*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.nlattr*, align 8
  store %struct.xfrm_policy* %0, %struct.xfrm_policy** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.km_event* %2, %struct.km_event** %7, align 8
  %16 = load %struct.xfrm_policy*, %struct.xfrm_policy** %5, align 8
  %17 = call %struct.net* @xp_net(%struct.xfrm_policy* %16)
  store %struct.net* %17, %struct.net** %8, align 8
  %18 = load %struct.xfrm_policy*, %struct.xfrm_policy** %5, align 8
  %19 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = sext i32 %20 to i64
  %22 = mul i64 4, %21
  %23 = trunc i64 %22 to i32
  %24 = call i32 @nla_total_size(i32 %23)
  store i32 %24, i32* %13, align 4
  store i32 4, i32* %14, align 4
  %25 = load %struct.km_event*, %struct.km_event** %7, align 8
  %26 = getelementptr inbounds %struct.km_event, %struct.km_event* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @XFRM_MSG_DELPOLICY, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %35

30:                                               ; preds = %3
  %31 = load i32, i32* %14, align 4
  %32 = call i32 @nla_total_size(i32 %31)
  %33 = load i32, i32* %13, align 4
  %34 = add nsw i32 %33, %32
  store i32 %34, i32* %13, align 4
  store i32 12, i32* %14, align 4
  br label %35

35:                                               ; preds = %30, %3
  %36 = call i64 (...) @userpolicy_type_attrsize()
  %37 = load i32, i32* %13, align 4
  %38 = sext i32 %37 to i64
  %39 = add nsw i64 %38, %36
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %13, align 4
  %41 = call i32 @nla_total_size(i32 4)
  %42 = load i32, i32* %13, align 4
  %43 = add nsw i32 %42, %41
  store i32 %43, i32* %13, align 4
  %44 = load i32, i32* %14, align 4
  %45 = call i64 @NLMSG_ALIGN(i32 %44)
  %46 = load i32, i32* %13, align 4
  %47 = sext i32 %46 to i64
  %48 = add nsw i64 %47, %45
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %13, align 4
  %50 = load i32, i32* %13, align 4
  %51 = load i32, i32* @GFP_ATOMIC, align 4
  %52 = call %struct.sk_buff* @nlmsg_new(i32 %50, i32 %51)
  store %struct.sk_buff* %52, %struct.sk_buff** %12, align 8
  %53 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %54 = icmp eq %struct.sk_buff* %53, null
  br i1 %54, label %55, label %58

55:                                               ; preds = %35
  %56 = load i32, i32* @ENOMEM, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %4, align 4
  br label %160

58:                                               ; preds = %35
  %59 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %60 = load %struct.km_event*, %struct.km_event** %7, align 8
  %61 = getelementptr inbounds %struct.km_event, %struct.km_event* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.km_event*, %struct.km_event** %7, align 8
  %64 = getelementptr inbounds %struct.km_event, %struct.km_event* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.km_event*, %struct.km_event** %7, align 8
  %67 = getelementptr inbounds %struct.km_event, %struct.km_event* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* %14, align 4
  %70 = call %struct.nlmsghdr* @nlmsg_put(%struct.sk_buff* %59, i32 %62, i32 %65, i32 %68, i32 %69, i32 0)
  store %struct.nlmsghdr* %70, %struct.nlmsghdr** %11, align 8
  %71 = load %struct.nlmsghdr*, %struct.nlmsghdr** %11, align 8
  %72 = icmp eq %struct.nlmsghdr* %71, null
  br i1 %72, label %73, label %74

73:                                               ; preds = %58
  br label %157

74:                                               ; preds = %58
  %75 = load %struct.nlmsghdr*, %struct.nlmsghdr** %11, align 8
  %76 = call i8* @nlmsg_data(%struct.nlmsghdr* %75)
  %77 = bitcast i8* %76 to %struct.xfrm_userpolicy_info*
  store %struct.xfrm_userpolicy_info* %77, %struct.xfrm_userpolicy_info** %9, align 8
  %78 = load %struct.km_event*, %struct.km_event** %7, align 8
  %79 = getelementptr inbounds %struct.km_event, %struct.km_event* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @XFRM_MSG_DELPOLICY, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %83, label %119

83:                                               ; preds = %74
  %84 = load %struct.nlmsghdr*, %struct.nlmsghdr** %11, align 8
  %85 = call i8* @nlmsg_data(%struct.nlmsghdr* %84)
  %86 = bitcast i8* %85 to %struct.xfrm_userpolicy_id*
  store %struct.xfrm_userpolicy_id* %86, %struct.xfrm_userpolicy_id** %10, align 8
  %87 = load %struct.xfrm_userpolicy_id*, %struct.xfrm_userpolicy_id** %10, align 8
  %88 = call i32 @memset(%struct.xfrm_userpolicy_id* %87, i32 0, i32 12)
  %89 = load i32, i32* %6, align 4
  %90 = load %struct.xfrm_userpolicy_id*, %struct.xfrm_userpolicy_id** %10, align 8
  %91 = getelementptr inbounds %struct.xfrm_userpolicy_id, %struct.xfrm_userpolicy_id* %90, i32 0, i32 0
  store i32 %89, i32* %91, align 4
  %92 = load %struct.km_event*, %struct.km_event** %7, align 8
  %93 = getelementptr inbounds %struct.km_event, %struct.km_event* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %103

97:                                               ; preds = %83
  %98 = load %struct.xfrm_policy*, %struct.xfrm_policy** %5, align 8
  %99 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %98, i32 0, i32 4
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.xfrm_userpolicy_id*, %struct.xfrm_userpolicy_id** %10, align 8
  %102 = getelementptr inbounds %struct.xfrm_userpolicy_id, %struct.xfrm_userpolicy_id* %101, i32 0, i32 2
  store i32 %100, i32* %102, align 4
  br label %109

103:                                              ; preds = %83
  %104 = load %struct.xfrm_userpolicy_id*, %struct.xfrm_userpolicy_id** %10, align 8
  %105 = getelementptr inbounds %struct.xfrm_userpolicy_id, %struct.xfrm_userpolicy_id* %104, i32 0, i32 1
  %106 = load %struct.xfrm_policy*, %struct.xfrm_policy** %5, align 8
  %107 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %106, i32 0, i32 3
  %108 = call i32 @memcpy(i32* %105, i32* %107, i32 4)
  br label %109

109:                                              ; preds = %103, %97
  %110 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %111 = load i32, i32* @XFRMA_POLICY, align 4
  %112 = call %struct.nlattr* @nla_reserve(%struct.sk_buff* %110, i32 %111, i32 4)
  store %struct.nlattr* %112, %struct.nlattr** %15, align 8
  %113 = load %struct.nlattr*, %struct.nlattr** %15, align 8
  %114 = icmp eq %struct.nlattr* %113, null
  br i1 %114, label %115, label %116

115:                                              ; preds = %109
  br label %157

116:                                              ; preds = %109
  %117 = load %struct.nlattr*, %struct.nlattr** %15, align 8
  %118 = call %struct.xfrm_userpolicy_info* @nla_data(%struct.nlattr* %117)
  store %struct.xfrm_userpolicy_info* %118, %struct.xfrm_userpolicy_info** %9, align 8
  br label %119

119:                                              ; preds = %116, %74
  %120 = load %struct.xfrm_policy*, %struct.xfrm_policy** %5, align 8
  %121 = load %struct.xfrm_userpolicy_info*, %struct.xfrm_userpolicy_info** %9, align 8
  %122 = load i32, i32* %6, align 4
  %123 = call i32 @copy_to_user_policy(%struct.xfrm_policy* %120, %struct.xfrm_userpolicy_info* %121, i32 %122)
  %124 = load %struct.xfrm_policy*, %struct.xfrm_policy** %5, align 8
  %125 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %126 = call i64 @copy_to_user_tmpl(%struct.xfrm_policy* %124, %struct.sk_buff* %125)
  %127 = icmp slt i64 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %119
  br label %157

129:                                              ; preds = %119
  %130 = load %struct.xfrm_policy*, %struct.xfrm_policy** %5, align 8
  %131 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %134 = call i64 @copy_to_user_policy_type(i32 %132, %struct.sk_buff* %133)
  %135 = icmp slt i64 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %129
  br label %157

137:                                              ; preds = %129
  %138 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %139 = load %struct.xfrm_policy*, %struct.xfrm_policy** %5, align 8
  %140 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %139, i32 0, i32 1
  %141 = call i64 @xfrm_mark_put(%struct.sk_buff* %138, i32* %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %137
  br label %156

144:                                              ; preds = %137
  %145 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %146 = load %struct.nlmsghdr*, %struct.nlmsghdr** %11, align 8
  %147 = call i32 @nlmsg_end(%struct.sk_buff* %145, %struct.nlmsghdr* %146)
  %148 = load %struct.net*, %struct.net** %8, align 8
  %149 = getelementptr inbounds %struct.net, %struct.net* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %153 = load i32, i32* @XFRMNLGRP_POLICY, align 4
  %154 = load i32, i32* @GFP_ATOMIC, align 4
  %155 = call i32 @nlmsg_multicast(i32 %151, %struct.sk_buff* %152, i32 0, i32 %153, i32 %154)
  store i32 %155, i32* %4, align 4
  br label %160

156:                                              ; preds = %143
  br label %157

157:                                              ; preds = %156, %136, %128, %115, %73
  %158 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %159 = call i32 @kfree_skb(%struct.sk_buff* %158)
  store i32 -1, i32* %4, align 4
  br label %160

160:                                              ; preds = %157, %144, %55
  %161 = load i32, i32* %4, align 4
  ret i32 %161
}

declare dso_local %struct.net* @xp_net(%struct.xfrm_policy*) #1

declare dso_local i32 @nla_total_size(i32) #1

declare dso_local i64 @userpolicy_type_attrsize(...) #1

declare dso_local i64 @NLMSG_ALIGN(i32) #1

declare dso_local %struct.sk_buff* @nlmsg_new(i32, i32) #1

declare dso_local %struct.nlmsghdr* @nlmsg_put(%struct.sk_buff*, i32, i32, i32, i32, i32) #1

declare dso_local i8* @nlmsg_data(%struct.nlmsghdr*) #1

declare dso_local i32 @memset(%struct.xfrm_userpolicy_id*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local %struct.nlattr* @nla_reserve(%struct.sk_buff*, i32, i32) #1

declare dso_local %struct.xfrm_userpolicy_info* @nla_data(%struct.nlattr*) #1

declare dso_local i32 @copy_to_user_policy(%struct.xfrm_policy*, %struct.xfrm_userpolicy_info*, i32) #1

declare dso_local i64 @copy_to_user_tmpl(%struct.xfrm_policy*, %struct.sk_buff*) #1

declare dso_local i64 @copy_to_user_policy_type(i32, %struct.sk_buff*) #1

declare dso_local i64 @xfrm_mark_put(%struct.sk_buff*, i32*) #1

declare dso_local i32 @nlmsg_end(%struct.sk_buff*, %struct.nlmsghdr*) #1

declare dso_local i32 @nlmsg_multicast(i32, %struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
