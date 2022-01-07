; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/8021q/extr_vlan_dev.c_vlan_dev_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/8021q/extr_vlan_dev.c_vlan_dev_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32 }
%struct.vlan_dev_info = type { i32, i32, %struct.net_device* }

@IFF_UP = common dso_local global i32 0, align 4
@ENETDOWN = common dso_local global i32 0, align 4
@IFF_ALLMULTI = common dso_local global i32 0, align 4
@IFF_PROMISC = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@VLAN_FLAG_GVRP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @vlan_dev_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vlan_dev_open(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.vlan_dev_info*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.vlan_dev_info* @vlan_dev_info(%struct.net_device* %7)
  store %struct.vlan_dev_info* %8, %struct.vlan_dev_info** %4, align 8
  %9 = load %struct.vlan_dev_info*, %struct.vlan_dev_info** %4, align 8
  %10 = getelementptr inbounds %struct.vlan_dev_info, %struct.vlan_dev_info* %9, i32 0, i32 2
  %11 = load %struct.net_device*, %struct.net_device** %10, align 8
  store %struct.net_device* %11, %struct.net_device** %5, align 8
  %12 = load %struct.net_device*, %struct.net_device** %5, align 8
  %13 = getelementptr inbounds %struct.net_device, %struct.net_device* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @IFF_UP, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @ENETDOWN, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %125

21:                                               ; preds = %1
  %22 = load %struct.net_device*, %struct.net_device** %3, align 8
  %23 = getelementptr inbounds %struct.net_device, %struct.net_device* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.net_device*, %struct.net_device** %5, align 8
  %26 = getelementptr inbounds %struct.net_device, %struct.net_device* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @compare_ether_addr(i32 %24, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %40

30:                                               ; preds = %21
  %31 = load %struct.net_device*, %struct.net_device** %5, align 8
  %32 = load %struct.net_device*, %struct.net_device** %3, align 8
  %33 = getelementptr inbounds %struct.net_device, %struct.net_device* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @dev_unicast_add(%struct.net_device* %31, i32 %34)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %30
  br label %121

39:                                               ; preds = %30
  br label %40

40:                                               ; preds = %39, %21
  %41 = load %struct.net_device*, %struct.net_device** %3, align 8
  %42 = getelementptr inbounds %struct.net_device, %struct.net_device* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @IFF_ALLMULTI, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %40
  %48 = load %struct.net_device*, %struct.net_device** %5, align 8
  %49 = call i32 @dev_set_allmulti(%struct.net_device* %48, i32 1)
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %6, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  br label %105

53:                                               ; preds = %47
  br label %54

54:                                               ; preds = %53, %40
  %55 = load %struct.net_device*, %struct.net_device** %3, align 8
  %56 = getelementptr inbounds %struct.net_device, %struct.net_device* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @IFF_PROMISC, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %54
  %62 = load %struct.net_device*, %struct.net_device** %5, align 8
  %63 = call i32 @dev_set_promiscuity(%struct.net_device* %62, i32 1)
  store i32 %63, i32* %6, align 4
  %64 = load i32, i32* %6, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %61
  br label %94

67:                                               ; preds = %61
  br label %68

68:                                               ; preds = %67, %54
  %69 = load %struct.vlan_dev_info*, %struct.vlan_dev_info** %4, align 8
  %70 = getelementptr inbounds %struct.vlan_dev_info, %struct.vlan_dev_info* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.net_device*, %struct.net_device** %5, align 8
  %73 = getelementptr inbounds %struct.net_device, %struct.net_device* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @ETH_ALEN, align 4
  %76 = call i32 @memcpy(i32 %71, i32 %74, i32 %75)
  %77 = load %struct.vlan_dev_info*, %struct.vlan_dev_info** %4, align 8
  %78 = getelementptr inbounds %struct.vlan_dev_info, %struct.vlan_dev_info* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @VLAN_FLAG_GVRP, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %68
  %84 = load %struct.net_device*, %struct.net_device** %3, align 8
  %85 = call i32 @vlan_gvrp_request_join(%struct.net_device* %84)
  br label %86

86:                                               ; preds = %83, %68
  %87 = load %struct.net_device*, %struct.net_device** %5, align 8
  %88 = call i64 @netif_carrier_ok(%struct.net_device* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %86
  %91 = load %struct.net_device*, %struct.net_device** %3, align 8
  %92 = call i32 @netif_carrier_on(%struct.net_device* %91)
  br label %93

93:                                               ; preds = %90, %86
  store i32 0, i32* %2, align 4
  br label %125

94:                                               ; preds = %66
  %95 = load %struct.net_device*, %struct.net_device** %3, align 8
  %96 = getelementptr inbounds %struct.net_device, %struct.net_device* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @IFF_ALLMULTI, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %94
  %102 = load %struct.net_device*, %struct.net_device** %5, align 8
  %103 = call i32 @dev_set_allmulti(%struct.net_device* %102, i32 -1)
  br label %104

104:                                              ; preds = %101, %94
  br label %105

105:                                              ; preds = %104, %52
  %106 = load %struct.net_device*, %struct.net_device** %3, align 8
  %107 = getelementptr inbounds %struct.net_device, %struct.net_device* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.net_device*, %struct.net_device** %5, align 8
  %110 = getelementptr inbounds %struct.net_device, %struct.net_device* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = call i64 @compare_ether_addr(i32 %108, i32 %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %120

114:                                              ; preds = %105
  %115 = load %struct.net_device*, %struct.net_device** %5, align 8
  %116 = load %struct.net_device*, %struct.net_device** %3, align 8
  %117 = getelementptr inbounds %struct.net_device, %struct.net_device* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @dev_unicast_delete(%struct.net_device* %115, i32 %118)
  br label %120

120:                                              ; preds = %114, %105
  br label %121

121:                                              ; preds = %120, %38
  %122 = load %struct.net_device*, %struct.net_device** %3, align 8
  %123 = call i32 @netif_carrier_off(%struct.net_device* %122)
  %124 = load i32, i32* %6, align 4
  store i32 %124, i32* %2, align 4
  br label %125

125:                                              ; preds = %121, %93, %18
  %126 = load i32, i32* %2, align 4
  ret i32 %126
}

declare dso_local %struct.vlan_dev_info* @vlan_dev_info(%struct.net_device*) #1

declare dso_local i64 @compare_ether_addr(i32, i32) #1

declare dso_local i32 @dev_unicast_add(%struct.net_device*, i32) #1

declare dso_local i32 @dev_set_allmulti(%struct.net_device*, i32) #1

declare dso_local i32 @dev_set_promiscuity(%struct.net_device*, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @vlan_gvrp_request_join(%struct.net_device*) #1

declare dso_local i64 @netif_carrier_ok(%struct.net_device*) #1

declare dso_local i32 @netif_carrier_on(%struct.net_device*) #1

declare dso_local i32 @dev_unicast_delete(%struct.net_device*, i32) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
