; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bridge/extr_br_netfilter.c_br_nf_forward_ip.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bridge/extr_br_netfilter.c_br_nf_forward_ip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64, i64, i32, %struct.nf_bridge_info* }
%struct.nf_bridge_info = type { i32, i32 }
%struct.net_device = type { i32 }

@NF_ACCEPT = common dso_local global i32 0, align 4
@NF_DROP = common dso_local global i32 0, align 4
@ETH_P_IP = common dso_local global i32 0, align 4
@PF_INET = common dso_local global i32 0, align 4
@ETH_P_IPV6 = common dso_local global i32 0, align 4
@PF_INET6 = common dso_local global i32 0, align 4
@PACKET_OTHERHOST = common dso_local global i64 0, align 8
@PACKET_HOST = common dso_local global i64 0, align 8
@BRNF_PKT_TYPE = common dso_local global i32 0, align 4
@BRNF_BRIDGED = common dso_local global i32 0, align 4
@NF_INET_FORWARD = common dso_local global i32 0, align 4
@br_nf_forward_finish = common dso_local global i32 0, align 4
@NF_STOLEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.sk_buff*, %struct.net_device*, %struct.net_device*, i32 (%struct.sk_buff*)*)* @br_nf_forward_ip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @br_nf_forward_ip(i32 %0, %struct.sk_buff* %1, %struct.net_device* %2, %struct.net_device* %3, i32 (%struct.sk_buff*)* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca %struct.net_device*, align 8
  %11 = alloca i32 (%struct.sk_buff*)*, align 8
  %12 = alloca %struct.nf_bridge_info*, align 8
  %13 = alloca %struct.net_device*, align 8
  %14 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store %struct.sk_buff* %1, %struct.sk_buff** %8, align 8
  store %struct.net_device* %2, %struct.net_device** %9, align 8
  store %struct.net_device* %3, %struct.net_device** %10, align 8
  store i32 (%struct.sk_buff*)* %4, i32 (%struct.sk_buff*)** %11, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %16 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %15, i32 0, i32 3
  %17 = load %struct.nf_bridge_info*, %struct.nf_bridge_info** %16, align 8
  %18 = icmp ne %struct.nf_bridge_info* %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %5
  %20 = load i32, i32* @NF_ACCEPT, align 4
  store i32 %20, i32* %6, align 4
  br label %114

21:                                               ; preds = %5
  %22 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %23 = call i32 @nf_bridge_unshare(%struct.sk_buff* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %21
  %26 = load i32, i32* @NF_DROP, align 4
  store i32 %26, i32* %6, align 4
  br label %114

27:                                               ; preds = %21
  %28 = load %struct.net_device*, %struct.net_device** %10, align 8
  %29 = call %struct.net_device* @bridge_parent(%struct.net_device* %28)
  store %struct.net_device* %29, %struct.net_device** %13, align 8
  %30 = load %struct.net_device*, %struct.net_device** %13, align 8
  %31 = icmp ne %struct.net_device* %30, null
  br i1 %31, label %34, label %32

32:                                               ; preds = %27
  %33 = load i32, i32* @NF_DROP, align 4
  store i32 %33, i32* %6, align 4
  br label %114

34:                                               ; preds = %27
  %35 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %36 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i32, i32* @ETH_P_IP, align 4
  %39 = call i64 @htons(i32 %38)
  %40 = icmp eq i64 %37, %39
  br i1 %40, label %49, label %41

41:                                               ; preds = %34
  %42 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %43 = call i64 @IS_VLAN_IP(%struct.sk_buff* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %41
  %46 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %47 = call i64 @IS_PPPOE_IP(%struct.sk_buff* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %45, %41, %34
  %50 = load i32, i32* @PF_INET, align 4
  store i32 %50, i32* %14, align 4
  br label %71

51:                                               ; preds = %45
  %52 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %53 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i32, i32* @ETH_P_IPV6, align 4
  %56 = call i64 @htons(i32 %55)
  %57 = icmp eq i64 %54, %56
  br i1 %57, label %66, label %58

58:                                               ; preds = %51
  %59 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %60 = call i64 @IS_VLAN_IPV6(%struct.sk_buff* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %66, label %62

62:                                               ; preds = %58
  %63 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %64 = call i64 @IS_PPPOE_IPV6(%struct.sk_buff* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %62, %58, %51
  %67 = load i32, i32* @PF_INET6, align 4
  store i32 %67, i32* %14, align 4
  br label %70

68:                                               ; preds = %62
  %69 = load i32, i32* @NF_ACCEPT, align 4
  store i32 %69, i32* %6, align 4
  br label %114

70:                                               ; preds = %66
  br label %71

71:                                               ; preds = %70, %49
  %72 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %73 = call i32 @nf_bridge_pull_encap_header(%struct.sk_buff* %72)
  %74 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %75 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %74, i32 0, i32 3
  %76 = load %struct.nf_bridge_info*, %struct.nf_bridge_info** %75, align 8
  store %struct.nf_bridge_info* %76, %struct.nf_bridge_info** %12, align 8
  %77 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %78 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @PACKET_OTHERHOST, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %91

82:                                               ; preds = %71
  %83 = load i64, i64* @PACKET_HOST, align 8
  %84 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %85 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %84, i32 0, i32 1
  store i64 %83, i64* %85, align 8
  %86 = load i32, i32* @BRNF_PKT_TYPE, align 4
  %87 = load %struct.nf_bridge_info*, %struct.nf_bridge_info** %12, align 8
  %88 = getelementptr inbounds %struct.nf_bridge_info, %struct.nf_bridge_info* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = or i32 %89, %86
  store i32 %90, i32* %88, align 4
  br label %91

91:                                               ; preds = %82, %71
  %92 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %93 = call i32 @IPCB(%struct.sk_buff* %92)
  %94 = call i32 @memset(i32 %93, i32 0, i32 4)
  %95 = load i32, i32* @BRNF_BRIDGED, align 4
  %96 = load %struct.nf_bridge_info*, %struct.nf_bridge_info** %12, align 8
  %97 = getelementptr inbounds %struct.nf_bridge_info, %struct.nf_bridge_info* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = or i32 %98, %95
  store i32 %99, i32* %97, align 4
  %100 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %101 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.nf_bridge_info*, %struct.nf_bridge_info** %12, align 8
  %104 = getelementptr inbounds %struct.nf_bridge_info, %struct.nf_bridge_info* %103, i32 0, i32 0
  store i32 %102, i32* %104, align 4
  %105 = load i32, i32* %14, align 4
  %106 = load i32, i32* @NF_INET_FORWARD, align 4
  %107 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %108 = load %struct.net_device*, %struct.net_device** %9, align 8
  %109 = call %struct.net_device* @bridge_parent(%struct.net_device* %108)
  %110 = load %struct.net_device*, %struct.net_device** %13, align 8
  %111 = load i32, i32* @br_nf_forward_finish, align 4
  %112 = call i32 @NF_HOOK(i32 %105, i32 %106, %struct.sk_buff* %107, %struct.net_device* %109, %struct.net_device* %110, i32 %111)
  %113 = load i32, i32* @NF_STOLEN, align 4
  store i32 %113, i32* %6, align 4
  br label %114

114:                                              ; preds = %91, %68, %32, %25, %19
  %115 = load i32, i32* %6, align 4
  ret i32 %115
}

declare dso_local i32 @nf_bridge_unshare(%struct.sk_buff*) #1

declare dso_local %struct.net_device* @bridge_parent(%struct.net_device*) #1

declare dso_local i64 @htons(i32) #1

declare dso_local i64 @IS_VLAN_IP(%struct.sk_buff*) #1

declare dso_local i64 @IS_PPPOE_IP(%struct.sk_buff*) #1

declare dso_local i64 @IS_VLAN_IPV6(%struct.sk_buff*) #1

declare dso_local i64 @IS_PPPOE_IPV6(%struct.sk_buff*) #1

declare dso_local i32 @nf_bridge_pull_encap_header(%struct.sk_buff*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @IPCB(%struct.sk_buff*) #1

declare dso_local i32 @NF_HOOK(i32, i32, %struct.sk_buff*, %struct.net_device*, %struct.net_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
