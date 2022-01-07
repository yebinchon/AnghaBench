; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/8021q/extr_vlan_core.c_vlan_gro_common.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/8021q/extr_vlan_core.c_vlan_gro_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.napi_struct = type { %struct.sk_buff* }
%struct.vlan_group = type { i32 }
%struct.sk_buff = type { i32, %struct.net_device*, %struct.sk_buff*, i32, i32 }
%struct.net_device = type { i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i64 }

@VLAN_VID_MASK = common dso_local global i32 0, align 4
@IFF_PROMISC = common dso_local global i32 0, align 4
@PACKET_OTHERHOST = common dso_local global i32 0, align 4
@GRO_DROP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.napi_struct*, %struct.vlan_group*, i32, %struct.sk_buff*)* @vlan_gro_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vlan_gro_common(%struct.napi_struct* %0, %struct.vlan_group* %1, i32 %2, %struct.sk_buff* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.napi_struct*, align 8
  %7 = alloca %struct.vlan_group*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca %struct.net_device*, align 8
  %12 = alloca i32, align 4
  store %struct.napi_struct* %0, %struct.napi_struct** %6, align 8
  store %struct.vlan_group* %1, %struct.vlan_group** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.sk_buff* %3, %struct.sk_buff** %9, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %15 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %14, i32 0, i32 1
  %16 = load %struct.net_device*, %struct.net_device** %15, align 8
  %17 = getelementptr inbounds %struct.net_device, %struct.net_device* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @ACCESS_ONCE(i32 %18)
  %20 = call i64 @skb_bond_should_drop(%struct.sk_buff* %13, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %4
  %23 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %24 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %23, i32 0, i32 0
  store i32 1, i32* %24, align 8
  br label %25

25:                                               ; preds = %22, %4
  %26 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %27 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %26, i32 0, i32 1
  %28 = load %struct.net_device*, %struct.net_device** %27, align 8
  %29 = getelementptr inbounds %struct.net_device, %struct.net_device* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %32 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %31, i32 0, i32 4
  store i32 %30, i32* %32, align 4
  %33 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @__vlan_hwaccel_put_tag(%struct.sk_buff* %33, i32 %34)
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* @VLAN_VID_MASK, align 4
  %38 = and i32 %36, %37
  store i32 %38, i32* %12, align 4
  %39 = load %struct.vlan_group*, %struct.vlan_group** %7, align 8
  %40 = load i32, i32* %12, align 4
  %41 = call %struct.net_device* @vlan_group_get_device(%struct.vlan_group* %39, i32 %40)
  store %struct.net_device* %41, %struct.net_device** %11, align 8
  %42 = load %struct.net_device*, %struct.net_device** %11, align 8
  %43 = icmp ne %struct.net_device* %42, null
  br i1 %43, label %44, label %48

44:                                               ; preds = %25
  %45 = load %struct.net_device*, %struct.net_device** %11, align 8
  %46 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %47 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %46, i32 0, i32 1
  store %struct.net_device* %45, %struct.net_device** %47, align 8
  br label %66

48:                                               ; preds = %25
  %49 = load i32, i32* %12, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %65

51:                                               ; preds = %48
  %52 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %53 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %52, i32 0, i32 1
  %54 = load %struct.net_device*, %struct.net_device** %53, align 8
  %55 = getelementptr inbounds %struct.net_device, %struct.net_device* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @IFF_PROMISC, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %51
  br label %106

61:                                               ; preds = %51
  %62 = load i32, i32* @PACKET_OTHERHOST, align 4
  %63 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %64 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %63, i32 0, i32 3
  store i32 %62, i32* %64, align 8
  br label %65

65:                                               ; preds = %61, %48
  br label %66

66:                                               ; preds = %65, %44
  %67 = load %struct.napi_struct*, %struct.napi_struct** %6, align 8
  %68 = getelementptr inbounds %struct.napi_struct, %struct.napi_struct* %67, i32 0, i32 0
  %69 = load %struct.sk_buff*, %struct.sk_buff** %68, align 8
  store %struct.sk_buff* %69, %struct.sk_buff** %10, align 8
  br label %70

70:                                               ; preds = %98, %66
  %71 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %72 = icmp ne %struct.sk_buff* %71, null
  br i1 %72, label %73, label %102

73:                                               ; preds = %70
  %74 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %75 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %74, i32 0, i32 1
  %76 = load %struct.net_device*, %struct.net_device** %75, align 8
  %77 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %78 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %77, i32 0, i32 1
  %79 = load %struct.net_device*, %struct.net_device** %78, align 8
  %80 = icmp eq %struct.net_device* %76, %79
  br i1 %80, label %81, label %89

81:                                               ; preds = %73
  %82 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %83 = call i32 @skb_mac_header(%struct.sk_buff* %82)
  %84 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %85 = call i32 @skb_gro_mac_header(%struct.sk_buff* %84)
  %86 = call i32 @compare_ether_header(i32 %83, i32 %85)
  %87 = icmp ne i32 %86, 0
  %88 = xor i1 %87, true
  br label %89

89:                                               ; preds = %81, %73
  %90 = phi i1 [ false, %73 ], [ %88, %81 ]
  %91 = zext i1 %90 to i32
  %92 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %93 = call %struct.TYPE_2__* @NAPI_GRO_CB(%struct.sk_buff* %92)
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 0
  store i32 %91, i32* %94, align 8
  %95 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %96 = call %struct.TYPE_2__* @NAPI_GRO_CB(%struct.sk_buff* %95)
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 1
  store i64 0, i64* %97, align 8
  br label %98

98:                                               ; preds = %89
  %99 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %100 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %99, i32 0, i32 2
  %101 = load %struct.sk_buff*, %struct.sk_buff** %100, align 8
  store %struct.sk_buff* %101, %struct.sk_buff** %10, align 8
  br label %70

102:                                              ; preds = %70
  %103 = load %struct.napi_struct*, %struct.napi_struct** %6, align 8
  %104 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %105 = call i32 @dev_gro_receive(%struct.napi_struct* %103, %struct.sk_buff* %104)
  store i32 %105, i32* %5, align 4
  br label %108

106:                                              ; preds = %60
  %107 = load i32, i32* @GRO_DROP, align 4
  store i32 %107, i32* %5, align 4
  br label %108

108:                                              ; preds = %106, %102
  %109 = load i32, i32* %5, align 4
  ret i32 %109
}

declare dso_local i64 @skb_bond_should_drop(%struct.sk_buff*, i32) #1

declare dso_local i32 @ACCESS_ONCE(i32) #1

declare dso_local i32 @__vlan_hwaccel_put_tag(%struct.sk_buff*, i32) #1

declare dso_local %struct.net_device* @vlan_group_get_device(%struct.vlan_group*, i32) #1

declare dso_local i32 @compare_ether_header(i32, i32) #1

declare dso_local i32 @skb_mac_header(%struct.sk_buff*) #1

declare dso_local i32 @skb_gro_mac_header(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_2__* @NAPI_GRO_CB(%struct.sk_buff*) #1

declare dso_local i32 @dev_gro_receive(%struct.napi_struct*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
