; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/openvswitch/extr_datapath.c_queue_userspace_packet.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/openvswitch/extr_datapath.c_queue_userspace_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.sk_buff = type { i32, i64 }
%struct.dp_upcall_info = type { i32, %struct.nlattr*, i32, i32 }
%struct.nlattr = type { i32 }
%struct.ovs_header = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@USHORT_MAX = common dso_local global i64 0, align 8
@EFBIG = common dso_local global i32 0, align 4
@dp_packet_genl_family = common dso_local global i32 0, align 4
@OVS_PACKET_ATTR_KEY = common dso_local global i32 0, align 4
@OVS_PACKET_ATTR_USERDATA = common dso_local global i32 0, align 4
@OVS_PACKET_ATTR_PACKET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, i32, %struct.sk_buff*, %struct.dp_upcall_info*)* @queue_userspace_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @queue_userspace_packet(%struct.net* %0, i32 %1, %struct.sk_buff* %2, %struct.dp_upcall_info* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.dp_upcall_info*, align 8
  %10 = alloca %struct.ovs_header*, align 8
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca %struct.sk_buff*, align 8
  %13 = alloca %struct.nlattr*, align 8
  %14 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.sk_buff* %2, %struct.sk_buff** %8, align 8
  store %struct.dp_upcall_info* %3, %struct.dp_upcall_info** %9, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %11, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %16 = call i64 @vlan_tx_tag_present(%struct.sk_buff* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %41

18:                                               ; preds = %4
  %19 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %20 = load i32, i32* @GFP_ATOMIC, align 4
  %21 = call %struct.sk_buff* @skb_clone(%struct.sk_buff* %19, i32 %20)
  store %struct.sk_buff* %21, %struct.sk_buff** %11, align 8
  %22 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %23 = icmp ne %struct.sk_buff* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %18
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %5, align 4
  br label %124

27:                                               ; preds = %18
  %28 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %29 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %30 = call i32 @vlan_tx_tag_get(%struct.sk_buff* %29)
  %31 = call %struct.sk_buff* @__vlan_put_tag(%struct.sk_buff* %28, i32 %30)
  store %struct.sk_buff* %31, %struct.sk_buff** %11, align 8
  %32 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %33 = icmp ne %struct.sk_buff* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %27
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %5, align 4
  br label %124

37:                                               ; preds = %27
  %38 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %39 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %38, i32 0, i32 1
  store i64 0, i64* %39, align 8
  %40 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  store %struct.sk_buff* %40, %struct.sk_buff** %8, align 8
  br label %41

41:                                               ; preds = %37, %4
  %42 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %43 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i64 @nla_attr_size(i32 %44)
  %46 = load i64, i64* @USHORT_MAX, align 8
  %47 = icmp sgt i64 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %41
  %49 = load i32, i32* @EFBIG, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %14, align 4
  br label %120

51:                                               ; preds = %41
  %52 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %53 = load %struct.dp_upcall_info*, %struct.dp_upcall_info** %9, align 8
  %54 = getelementptr inbounds %struct.dp_upcall_info, %struct.dp_upcall_info* %53, i32 0, i32 1
  %55 = load %struct.nlattr*, %struct.nlattr** %54, align 8
  %56 = call i32 @upcall_msg_size(%struct.sk_buff* %52, %struct.nlattr* %55)
  %57 = load i32, i32* @GFP_ATOMIC, align 4
  %58 = call %struct.sk_buff* @genlmsg_new(i32 %56, i32 %57)
  store %struct.sk_buff* %58, %struct.sk_buff** %12, align 8
  %59 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %60 = icmp ne %struct.sk_buff* %59, null
  br i1 %60, label %64, label %61

61:                                               ; preds = %51
  %62 = load i32, i32* @ENOMEM, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %14, align 4
  br label %120

64:                                               ; preds = %51
  %65 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %66 = load %struct.dp_upcall_info*, %struct.dp_upcall_info** %9, align 8
  %67 = getelementptr inbounds %struct.dp_upcall_info, %struct.dp_upcall_info* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = call %struct.ovs_header* @genlmsg_put(%struct.sk_buff* %65, i32 0, i32 0, i32* @dp_packet_genl_family, i32 0, i32 %68)
  store %struct.ovs_header* %69, %struct.ovs_header** %10, align 8
  %70 = load i32, i32* %7, align 4
  %71 = load %struct.ovs_header*, %struct.ovs_header** %10, align 8
  %72 = getelementptr inbounds %struct.ovs_header, %struct.ovs_header* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 4
  %73 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %74 = load i32, i32* @OVS_PACKET_ATTR_KEY, align 4
  %75 = call %struct.nlattr* @nla_nest_start(%struct.sk_buff* %73, i32 %74)
  store %struct.nlattr* %75, %struct.nlattr** %13, align 8
  %76 = load %struct.dp_upcall_info*, %struct.dp_upcall_info** %9, align 8
  %77 = getelementptr inbounds %struct.dp_upcall_info, %struct.dp_upcall_info* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %80 = call i32 @ovs_flow_to_nlattrs(i32 %78, %struct.sk_buff* %79)
  %81 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %82 = load %struct.nlattr*, %struct.nlattr** %13, align 8
  %83 = call i32 @nla_nest_end(%struct.sk_buff* %81, %struct.nlattr* %82)
  %84 = load %struct.dp_upcall_info*, %struct.dp_upcall_info** %9, align 8
  %85 = getelementptr inbounds %struct.dp_upcall_info, %struct.dp_upcall_info* %84, i32 0, i32 1
  %86 = load %struct.nlattr*, %struct.nlattr** %85, align 8
  %87 = icmp ne %struct.nlattr* %86, null
  br i1 %87, label %88, label %100

88:                                               ; preds = %64
  %89 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %90 = load i32, i32* @OVS_PACKET_ATTR_USERDATA, align 4
  %91 = load %struct.dp_upcall_info*, %struct.dp_upcall_info** %9, align 8
  %92 = getelementptr inbounds %struct.dp_upcall_info, %struct.dp_upcall_info* %91, i32 0, i32 1
  %93 = load %struct.nlattr*, %struct.nlattr** %92, align 8
  %94 = call i32 @nla_len(%struct.nlattr* %93)
  %95 = load %struct.dp_upcall_info*, %struct.dp_upcall_info** %9, align 8
  %96 = getelementptr inbounds %struct.dp_upcall_info, %struct.dp_upcall_info* %95, i32 0, i32 1
  %97 = load %struct.nlattr*, %struct.nlattr** %96, align 8
  %98 = call i32 @nla_data(%struct.nlattr* %97)
  %99 = call i32 @__nla_put(%struct.sk_buff* %89, i32 %90, i32 %94, i32 %98)
  br label %100

100:                                              ; preds = %88, %64
  %101 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %102 = load i32, i32* @OVS_PACKET_ATTR_PACKET, align 4
  %103 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %104 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = call %struct.nlattr* @__nla_reserve(%struct.sk_buff* %101, i32 %102, i32 %105)
  store %struct.nlattr* %106, %struct.nlattr** %13, align 8
  %107 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %108 = load %struct.nlattr*, %struct.nlattr** %13, align 8
  %109 = call i32 @nla_data(%struct.nlattr* %108)
  %110 = call i32 @skb_copy_and_csum_dev(%struct.sk_buff* %107, i32 %109)
  %111 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %112 = load %struct.ovs_header*, %struct.ovs_header** %10, align 8
  %113 = call i32 @genlmsg_end(%struct.sk_buff* %111, %struct.ovs_header* %112)
  %114 = load %struct.net*, %struct.net** %6, align 8
  %115 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %116 = load %struct.dp_upcall_info*, %struct.dp_upcall_info** %9, align 8
  %117 = getelementptr inbounds %struct.dp_upcall_info, %struct.dp_upcall_info* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = call i32 @genlmsg_unicast(%struct.net* %114, %struct.sk_buff* %115, i32 %118)
  store i32 %119, i32* %14, align 4
  br label %120

120:                                              ; preds = %100, %61, %48
  %121 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %122 = call i32 @kfree_skb(%struct.sk_buff* %121)
  %123 = load i32, i32* %14, align 4
  store i32 %123, i32* %5, align 4
  br label %124

124:                                              ; preds = %120, %34, %24
  %125 = load i32, i32* %5, align 4
  ret i32 %125
}

declare dso_local i64 @vlan_tx_tag_present(%struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @skb_clone(%struct.sk_buff*, i32) #1

declare dso_local %struct.sk_buff* @__vlan_put_tag(%struct.sk_buff*, i32) #1

declare dso_local i32 @vlan_tx_tag_get(%struct.sk_buff*) #1

declare dso_local i64 @nla_attr_size(i32) #1

declare dso_local %struct.sk_buff* @genlmsg_new(i32, i32) #1

declare dso_local i32 @upcall_msg_size(%struct.sk_buff*, %struct.nlattr*) #1

declare dso_local %struct.ovs_header* @genlmsg_put(%struct.sk_buff*, i32, i32, i32*, i32, i32) #1

declare dso_local %struct.nlattr* @nla_nest_start(%struct.sk_buff*, i32) #1

declare dso_local i32 @ovs_flow_to_nlattrs(i32, %struct.sk_buff*) #1

declare dso_local i32 @nla_nest_end(%struct.sk_buff*, %struct.nlattr*) #1

declare dso_local i32 @__nla_put(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @nla_len(%struct.nlattr*) #1

declare dso_local i32 @nla_data(%struct.nlattr*) #1

declare dso_local %struct.nlattr* @__nla_reserve(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @skb_copy_and_csum_dev(%struct.sk_buff*, i32) #1

declare dso_local i32 @genlmsg_end(%struct.sk_buff*, %struct.ovs_header*) #1

declare dso_local i32 @genlmsg_unicast(%struct.net*, %struct.sk_buff*, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
