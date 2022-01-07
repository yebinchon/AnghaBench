; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/openvswitch/extr_datapath.c_ovs_packet_cmd_execute.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/openvswitch/extr_datapath.c_ovs_packet_cmd_execute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i32, i32, i32 }
%struct.genl_info = type { %struct.nlattr**, %struct.ovs_header* }
%struct.nlattr = type { i32 }
%struct.ovs_header = type { i32 }
%struct.sw_flow_actions = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.sw_flow = type { %struct.TYPE_6__, i32 }
%struct.datapath = type { i32 }
%struct.ethhdr = type { i32 }
%struct.TYPE_7__ = type { %struct.sw_flow_actions* }

@EINVAL = common dso_local global i32 0, align 4
@OVS_PACKET_ATTR_PACKET = common dso_local global i64 0, align 8
@OVS_PACKET_ATTR_KEY = common dso_local global i64 0, align 8
@OVS_PACKET_ATTR_ACTIONS = common dso_local global i64 0, align 8
@NET_IP_ALIGN = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ETH_P_802_2 = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.genl_info*)* @ovs_packet_cmd_execute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ovs_packet_cmd_execute(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.genl_info*, align 8
  %6 = alloca %struct.ovs_header*, align 8
  %7 = alloca %struct.nlattr**, align 8
  %8 = alloca %struct.sw_flow_actions*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca %struct.sw_flow*, align 8
  %11 = alloca %struct.datapath*, align 8
  %12 = alloca %struct.ethhdr*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.genl_info* %1, %struct.genl_info** %5, align 8
  %16 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %17 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %16, i32 0, i32 1
  %18 = load %struct.ovs_header*, %struct.ovs_header** %17, align 8
  store %struct.ovs_header* %18, %struct.ovs_header** %6, align 8
  %19 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %20 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %19, i32 0, i32 0
  %21 = load %struct.nlattr**, %struct.nlattr*** %20, align 8
  store %struct.nlattr** %21, %struct.nlattr*** %7, align 8
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %14, align 4
  %24 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %25 = load i64, i64* @OVS_PACKET_ATTR_PACKET, align 8
  %26 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %24, i64 %25
  %27 = load %struct.nlattr*, %struct.nlattr** %26, align 8
  %28 = icmp ne %struct.nlattr* %27, null
  br i1 %28, label %29, label %41

29:                                               ; preds = %2
  %30 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %31 = load i64, i64* @OVS_PACKET_ATTR_KEY, align 8
  %32 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %30, i64 %31
  %33 = load %struct.nlattr*, %struct.nlattr** %32, align 8
  %34 = icmp ne %struct.nlattr* %33, null
  br i1 %34, label %35, label %41

35:                                               ; preds = %29
  %36 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %37 = load i64, i64* @OVS_PACKET_ATTR_ACTIONS, align 8
  %38 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %36, i64 %37
  %39 = load %struct.nlattr*, %struct.nlattr** %38, align 8
  %40 = icmp ne %struct.nlattr* %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %35, %29, %2
  br label %206

42:                                               ; preds = %35
  %43 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %44 = load i64, i64* @OVS_PACKET_ATTR_PACKET, align 8
  %45 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %43, i64 %44
  %46 = load %struct.nlattr*, %struct.nlattr** %45, align 8
  %47 = call i32 @nla_len(%struct.nlattr* %46)
  store i32 %47, i32* %13, align 4
  %48 = load i64, i64* @NET_IP_ALIGN, align 8
  %49 = load i32, i32* %13, align 4
  %50 = sext i32 %49 to i64
  %51 = add nsw i64 %48, %50
  %52 = load i32, i32* @GFP_KERNEL, align 4
  %53 = call %struct.sk_buff* @__dev_alloc_skb(i64 %51, i32 %52)
  store %struct.sk_buff* %53, %struct.sk_buff** %9, align 8
  %54 = load i32, i32* @ENOMEM, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %14, align 4
  %56 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %57 = icmp ne %struct.sk_buff* %56, null
  br i1 %57, label %59, label %58

58:                                               ; preds = %42
  br label %206

59:                                               ; preds = %42
  %60 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %61 = load i64, i64* @NET_IP_ALIGN, align 8
  %62 = call i32 @skb_reserve(%struct.sk_buff* %60, i64 %61)
  %63 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %64 = load i32, i32* %13, align 4
  %65 = call i32 @__skb_put(%struct.sk_buff* %63, i32 %64)
  %66 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %67 = load i64, i64* @OVS_PACKET_ATTR_PACKET, align 8
  %68 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %66, i64 %67
  %69 = load %struct.nlattr*, %struct.nlattr** %68, align 8
  %70 = load i32, i32* %13, align 4
  %71 = call i32 @nla_memcpy(i32 %65, %struct.nlattr* %69, i32 %70)
  %72 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %73 = call i32 @skb_reset_mac_header(%struct.sk_buff* %72)
  %74 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %75 = call %struct.ethhdr* @eth_hdr(%struct.sk_buff* %74)
  store %struct.ethhdr* %75, %struct.ethhdr** %12, align 8
  %76 = load %struct.ethhdr*, %struct.ethhdr** %12, align 8
  %77 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @ntohs(i32 %78)
  %80 = icmp sge i32 %79, 1536
  br i1 %80, label %81, label %87

81:                                               ; preds = %59
  %82 = load %struct.ethhdr*, %struct.ethhdr** %12, align 8
  %83 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %86 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %85, i32 0, i32 3
  store i32 %84, i32* %86, align 4
  br label %92

87:                                               ; preds = %59
  %88 = load i32, i32* @ETH_P_802_2, align 4
  %89 = call i32 @htons(i32 %88)
  %90 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %91 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %90, i32 0, i32 3
  store i32 %89, i32* %91, align 4
  br label %92

92:                                               ; preds = %87, %81
  %93 = call %struct.sw_flow_actions* (...) @ovs_flow_alloc()
  %94 = bitcast %struct.sw_flow_actions* %93 to %struct.sw_flow*
  store %struct.sw_flow* %94, %struct.sw_flow** %10, align 8
  %95 = load %struct.sw_flow*, %struct.sw_flow** %10, align 8
  %96 = bitcast %struct.sw_flow* %95 to %struct.sw_flow_actions*
  %97 = call i32 @PTR_ERR(%struct.sw_flow_actions* %96)
  store i32 %97, i32* %14, align 4
  %98 = load %struct.sw_flow*, %struct.sw_flow** %10, align 8
  %99 = bitcast %struct.sw_flow* %98 to %struct.sw_flow_actions*
  %100 = call i64 @IS_ERR(%struct.sw_flow_actions* %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %92
  br label %203

103:                                              ; preds = %92
  %104 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %105 = load %struct.sw_flow*, %struct.sw_flow** %10, align 8
  %106 = getelementptr inbounds %struct.sw_flow, %struct.sw_flow* %105, i32 0, i32 0
  %107 = call i32 @ovs_flow_extract(%struct.sk_buff* %104, i32 -1, %struct.TYPE_6__* %106, i32* %15)
  store i32 %107, i32* %14, align 4
  %108 = load i32, i32* %14, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %103
  br label %199

111:                                              ; preds = %103
  %112 = load %struct.sw_flow*, %struct.sw_flow** %10, align 8
  %113 = bitcast %struct.sw_flow* %112 to %struct.sw_flow_actions*
  %114 = load i32, i32* %15, align 4
  %115 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %116 = load i64, i64* @OVS_PACKET_ATTR_KEY, align 8
  %117 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %115, i64 %116
  %118 = load %struct.nlattr*, %struct.nlattr** %117, align 8
  %119 = call i32 @ovs_flow_metadata_from_nlattrs(%struct.sw_flow_actions* %113, i32 %114, %struct.nlattr* %118)
  store i32 %119, i32* %14, align 4
  %120 = load i32, i32* %14, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %111
  br label %199

123:                                              ; preds = %111
  %124 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %125 = load i64, i64* @OVS_PACKET_ATTR_ACTIONS, align 8
  %126 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %124, i64 %125
  %127 = load %struct.nlattr*, %struct.nlattr** %126, align 8
  %128 = call i32 @nla_len(%struct.nlattr* %127)
  %129 = call %struct.sw_flow_actions* @ovs_flow_actions_alloc(i32 %128)
  store %struct.sw_flow_actions* %129, %struct.sw_flow_actions** %8, align 8
  %130 = load %struct.sw_flow_actions*, %struct.sw_flow_actions** %8, align 8
  %131 = call i32 @PTR_ERR(%struct.sw_flow_actions* %130)
  store i32 %131, i32* %14, align 4
  %132 = load %struct.sw_flow_actions*, %struct.sw_flow_actions** %8, align 8
  %133 = call i64 @IS_ERR(%struct.sw_flow_actions* %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %123
  br label %199

136:                                              ; preds = %123
  %137 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %138 = load i64, i64* @OVS_PACKET_ATTR_ACTIONS, align 8
  %139 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %137, i64 %138
  %140 = load %struct.nlattr*, %struct.nlattr** %139, align 8
  %141 = load %struct.sw_flow*, %struct.sw_flow** %10, align 8
  %142 = getelementptr inbounds %struct.sw_flow, %struct.sw_flow* %141, i32 0, i32 0
  %143 = call i32 @validate_and_copy_actions(%struct.nlattr* %140, %struct.TYPE_6__* %142, i32 0, %struct.sw_flow_actions** %8)
  store i32 %143, i32* %14, align 4
  %144 = load %struct.sw_flow*, %struct.sw_flow** %10, align 8
  %145 = getelementptr inbounds %struct.sw_flow, %struct.sw_flow* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.sw_flow_actions*, %struct.sw_flow_actions** %8, align 8
  %148 = call i32 @rcu_assign_pointer(i32 %146, %struct.sw_flow_actions* %147)
  %149 = load i32, i32* %14, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %152

151:                                              ; preds = %136
  br label %199

152:                                              ; preds = %136
  %153 = load %struct.sw_flow*, %struct.sw_flow** %10, align 8
  %154 = bitcast %struct.sw_flow* %153 to %struct.sw_flow_actions*
  %155 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %156 = call %struct.TYPE_7__* @OVS_CB(%struct.sk_buff* %155)
  %157 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %156, i32 0, i32 0
  store %struct.sw_flow_actions* %154, %struct.sw_flow_actions** %157, align 8
  %158 = load %struct.sw_flow*, %struct.sw_flow** %10, align 8
  %159 = getelementptr inbounds %struct.sw_flow, %struct.sw_flow* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %164 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %163, i32 0, i32 2
  store i32 %162, i32* %164, align 4
  %165 = load %struct.sw_flow*, %struct.sw_flow** %10, align 8
  %166 = getelementptr inbounds %struct.sw_flow, %struct.sw_flow* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %171 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %170, i32 0, i32 1
  store i32 %169, i32* %171, align 4
  %172 = call i32 (...) @rcu_read_lock()
  %173 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %174 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = call i32 @sock_net(i32 %175)
  %177 = load %struct.ovs_header*, %struct.ovs_header** %6, align 8
  %178 = getelementptr inbounds %struct.ovs_header, %struct.ovs_header* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = call %struct.datapath* @get_dp(i32 %176, i32 %179)
  store %struct.datapath* %180, %struct.datapath** %11, align 8
  %181 = load i32, i32* @ENODEV, align 4
  %182 = sub nsw i32 0, %181
  store i32 %182, i32* %14, align 4
  %183 = load %struct.datapath*, %struct.datapath** %11, align 8
  %184 = icmp ne %struct.datapath* %183, null
  br i1 %184, label %186, label %185

185:                                              ; preds = %152
  br label %197

186:                                              ; preds = %152
  %187 = call i32 (...) @local_bh_disable()
  %188 = load %struct.datapath*, %struct.datapath** %11, align 8
  %189 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %190 = call i32 @ovs_execute_actions(%struct.datapath* %188, %struct.sk_buff* %189)
  store i32 %190, i32* %14, align 4
  %191 = call i32 (...) @local_bh_enable()
  %192 = call i32 (...) @rcu_read_unlock()
  %193 = load %struct.sw_flow*, %struct.sw_flow** %10, align 8
  %194 = bitcast %struct.sw_flow* %193 to %struct.sw_flow_actions*
  %195 = call i32 @ovs_flow_free(%struct.sw_flow_actions* %194)
  %196 = load i32, i32* %14, align 4
  store i32 %196, i32* %3, align 4
  br label %208

197:                                              ; preds = %185
  %198 = call i32 (...) @rcu_read_unlock()
  br label %199

199:                                              ; preds = %197, %151, %135, %122, %110
  %200 = load %struct.sw_flow*, %struct.sw_flow** %10, align 8
  %201 = bitcast %struct.sw_flow* %200 to %struct.sw_flow_actions*
  %202 = call i32 @ovs_flow_free(%struct.sw_flow_actions* %201)
  br label %203

203:                                              ; preds = %199, %102
  %204 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %205 = call i32 @kfree_skb(%struct.sk_buff* %204)
  br label %206

206:                                              ; preds = %203, %58, %41
  %207 = load i32, i32* %14, align 4
  store i32 %207, i32* %3, align 4
  br label %208

208:                                              ; preds = %206, %186
  %209 = load i32, i32* %3, align 4
  ret i32 %209
}

declare dso_local i32 @nla_len(%struct.nlattr*) #1

declare dso_local %struct.sk_buff* @__dev_alloc_skb(i64, i32) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i64) #1

declare dso_local i32 @nla_memcpy(i32, %struct.nlattr*, i32) #1

declare dso_local i32 @__skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_reset_mac_header(%struct.sk_buff*) #1

declare dso_local %struct.ethhdr* @eth_hdr(%struct.sk_buff*) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local %struct.sw_flow_actions* @ovs_flow_alloc(...) #1

declare dso_local i32 @PTR_ERR(%struct.sw_flow_actions*) #1

declare dso_local i64 @IS_ERR(%struct.sw_flow_actions*) #1

declare dso_local i32 @ovs_flow_extract(%struct.sk_buff*, i32, %struct.TYPE_6__*, i32*) #1

declare dso_local i32 @ovs_flow_metadata_from_nlattrs(%struct.sw_flow_actions*, i32, %struct.nlattr*) #1

declare dso_local %struct.sw_flow_actions* @ovs_flow_actions_alloc(i32) #1

declare dso_local i32 @validate_and_copy_actions(%struct.nlattr*, %struct.TYPE_6__*, i32, %struct.sw_flow_actions**) #1

declare dso_local i32 @rcu_assign_pointer(i32, %struct.sw_flow_actions*) #1

declare dso_local %struct.TYPE_7__* @OVS_CB(%struct.sk_buff*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.datapath* @get_dp(i32, i32) #1

declare dso_local i32 @sock_net(i32) #1

declare dso_local i32 @local_bh_disable(...) #1

declare dso_local i32 @ovs_execute_actions(%struct.datapath*, %struct.sk_buff*) #1

declare dso_local i32 @local_bh_enable(...) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @ovs_flow_free(%struct.sw_flow_actions*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
