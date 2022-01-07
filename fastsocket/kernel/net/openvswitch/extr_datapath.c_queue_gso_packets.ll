; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/openvswitch/extr_datapath.c_queue_gso_packets.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/openvswitch/extr_datapath.c_queue_gso_packets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.sk_buff = type { %struct.sk_buff* }
%struct.dp_upcall_info = type { %struct.sw_flow_key* }
%struct.sw_flow_key = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i16 }

@NETIF_F_SG = common dso_local global i32 0, align 4
@NETIF_F_HW_CSUM = common dso_local global i32 0, align 4
@SKB_GSO_UDP = common dso_local global i16 0, align 2
@OVS_FRAG_TYPE_LATER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, i32, %struct.sk_buff*, %struct.dp_upcall_info*)* @queue_gso_packets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @queue_gso_packets(%struct.net* %0, i32 %1, %struct.sk_buff* %2, %struct.dp_upcall_info* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.dp_upcall_info*, align 8
  %10 = alloca i16, align 2
  %11 = alloca %struct.dp_upcall_info, align 8
  %12 = alloca %struct.sw_flow_key, align 4
  %13 = alloca %struct.sk_buff*, align 8
  %14 = alloca %struct.sk_buff*, align 8
  %15 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.sk_buff* %2, %struct.sk_buff** %8, align 8
  store %struct.dp_upcall_info* %3, %struct.dp_upcall_info** %9, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %17 = call %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff* %16)
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i16, i16* %18, align 2
  store i16 %19, i16* %10, align 2
  %20 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %21 = load i32, i32* @NETIF_F_SG, align 4
  %22 = load i32, i32* @NETIF_F_HW_CSUM, align 4
  %23 = or i32 %21, %22
  %24 = call %struct.sk_buff* @__skb_gso_segment(%struct.sk_buff* %20, i32 %23, i32 0)
  store %struct.sk_buff* %24, %struct.sk_buff** %13, align 8
  %25 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %26 = call i64 @IS_ERR(%struct.sk_buff* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %4
  %29 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %30 = call i32 @PTR_ERR(%struct.sk_buff* %29)
  store i32 %30, i32* %5, align 4
  br label %92

31:                                               ; preds = %4
  %32 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  store %struct.sk_buff* %32, %struct.sk_buff** %8, align 8
  br label %33

33:                                               ; preds = %67, %31
  %34 = load %struct.net*, %struct.net** %6, align 8
  %35 = load i32, i32* %7, align 4
  %36 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %37 = load %struct.dp_upcall_info*, %struct.dp_upcall_info** %9, align 8
  %38 = call i32 @queue_userspace_packet(%struct.net* %34, i32 %35, %struct.sk_buff* %36, %struct.dp_upcall_info* %37)
  store i32 %38, i32* %15, align 4
  %39 = load i32, i32* %15, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %33
  br label %72

42:                                               ; preds = %33
  %43 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %44 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %45 = icmp eq %struct.sk_buff* %43, %44
  br i1 %45, label %46, label %66

46:                                               ; preds = %42
  %47 = load i16, i16* %10, align 2
  %48 = zext i16 %47 to i32
  %49 = load i16, i16* @SKB_GSO_UDP, align 2
  %50 = zext i16 %49 to i32
  %51 = and i32 %48, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %66

53:                                               ; preds = %46
  %54 = load %struct.dp_upcall_info*, %struct.dp_upcall_info** %9, align 8
  %55 = getelementptr inbounds %struct.dp_upcall_info, %struct.dp_upcall_info* %54, i32 0, i32 0
  %56 = load %struct.sw_flow_key*, %struct.sw_flow_key** %55, align 8
  %57 = bitcast %struct.sw_flow_key* %12 to i8*
  %58 = bitcast %struct.sw_flow_key* %56 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %57, i8* align 4 %58, i64 4, i1 false)
  %59 = load i32, i32* @OVS_FRAG_TYPE_LATER, align 4
  %60 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %12, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 4
  %62 = load %struct.dp_upcall_info*, %struct.dp_upcall_info** %9, align 8
  %63 = bitcast %struct.dp_upcall_info* %11 to i8*
  %64 = bitcast %struct.dp_upcall_info* %62 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %63, i8* align 8 %64, i64 8, i1 false)
  %65 = getelementptr inbounds %struct.dp_upcall_info, %struct.dp_upcall_info* %11, i32 0, i32 0
  store %struct.sw_flow_key* %12, %struct.sw_flow_key** %65, align 8
  store %struct.dp_upcall_info* %11, %struct.dp_upcall_info** %9, align 8
  br label %66

66:                                               ; preds = %53, %46, %42
  br label %67

67:                                               ; preds = %66
  %68 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %69 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %68, i32 0, i32 0
  %70 = load %struct.sk_buff*, %struct.sk_buff** %69, align 8
  store %struct.sk_buff* %70, %struct.sk_buff** %8, align 8
  %71 = icmp ne %struct.sk_buff* %70, null
  br i1 %71, label %33, label %72

72:                                               ; preds = %67, %41
  %73 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  store %struct.sk_buff* %73, %struct.sk_buff** %8, align 8
  br label %74

74:                                               ; preds = %87, %72
  %75 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %76 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %75, i32 0, i32 0
  %77 = load %struct.sk_buff*, %struct.sk_buff** %76, align 8
  store %struct.sk_buff* %77, %struct.sk_buff** %14, align 8
  %78 = load i32, i32* %15, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %74
  %81 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %82 = call i32 @kfree_skb(%struct.sk_buff* %81)
  br label %86

83:                                               ; preds = %74
  %84 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %85 = call i32 @consume_skb(%struct.sk_buff* %84)
  br label %86

86:                                               ; preds = %83, %80
  br label %87

87:                                               ; preds = %86
  %88 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  store %struct.sk_buff* %88, %struct.sk_buff** %8, align 8
  %89 = icmp ne %struct.sk_buff* %88, null
  br i1 %89, label %74, label %90

90:                                               ; preds = %87
  %91 = load i32, i32* %15, align 4
  store i32 %91, i32* %5, align 4
  br label %92

92:                                               ; preds = %90, %28
  %93 = load i32, i32* %5, align 4
  ret i32 %93
}

declare dso_local %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @__skb_gso_segment(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.sk_buff*) #1

declare dso_local i32 @PTR_ERR(%struct.sk_buff*) #1

declare dso_local i32 @queue_userspace_packet(%struct.net*, i32, %struct.sk_buff*, %struct.dp_upcall_info*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @consume_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
