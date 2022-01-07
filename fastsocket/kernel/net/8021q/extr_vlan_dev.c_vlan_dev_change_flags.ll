; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/8021q/extr_vlan_dev.c_vlan_dev_change_flags.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/8021q/extr_vlan_dev.c_vlan_dev_change_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.vlan_dev_info = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@VLAN_FLAG_REORDER_HDR = common dso_local global i32 0, align 4
@VLAN_FLAG_GVRP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@NETIF_F_HW_VLAN_TX = common dso_local global i32 0, align 4
@NETIF_F_ALL_CSUM = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vlan_dev_change_flags(%struct.net_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.vlan_dev_info*, align 8
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.net_device*, %struct.net_device** %5, align 8
  %11 = call %struct.vlan_dev_info* @vlan_dev_info(%struct.net_device* %10)
  store %struct.vlan_dev_info* %11, %struct.vlan_dev_info** %8, align 8
  %12 = load %struct.vlan_dev_info*, %struct.vlan_dev_info** %8, align 8
  %13 = getelementptr inbounds %struct.vlan_dev_info, %struct.vlan_dev_info* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @VLAN_FLAG_REORDER_HDR, align 4
  %17 = load i32, i32* @VLAN_FLAG_GVRP, align 4
  %18 = or i32 %16, %17
  %19 = xor i32 %18, -1
  %20 = and i32 %15, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %3
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %110

25:                                               ; preds = %3
  %26 = load %struct.net_device*, %struct.net_device** %5, align 8
  %27 = call i64 @netif_running(%struct.net_device* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %57

29:                                               ; preds = %25
  %30 = load %struct.vlan_dev_info*, %struct.vlan_dev_info** %8, align 8
  %31 = getelementptr inbounds %struct.vlan_dev_info, %struct.vlan_dev_info* %30, i32 0, i32 1
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @NETIF_F_HW_VLAN_TX, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %57, label %38

38:                                               ; preds = %29
  %39 = load %struct.vlan_dev_info*, %struct.vlan_dev_info** %8, align 8
  %40 = getelementptr inbounds %struct.vlan_dev_info, %struct.vlan_dev_info* %39, i32 0, i32 1
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @NETIF_F_ALL_CSUM, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %57

47:                                               ; preds = %38
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* %9, align 4
  %50 = xor i32 %48, %49
  %51 = load i32, i32* @VLAN_FLAG_REORDER_HDR, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %47
  %55 = load i32, i32* @EBUSY, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %4, align 4
  br label %110

57:                                               ; preds = %47, %38, %29, %25
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* %7, align 4
  %60 = xor i32 %59, -1
  %61 = and i32 %58, %60
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* %7, align 4
  %64 = and i32 %62, %63
  %65 = or i32 %61, %64
  %66 = load %struct.vlan_dev_info*, %struct.vlan_dev_info** %8, align 8
  %67 = getelementptr inbounds %struct.vlan_dev_info, %struct.vlan_dev_info* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 8
  %68 = load %struct.net_device*, %struct.net_device** %5, align 8
  %69 = call i64 @netif_running(%struct.net_device* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %94

71:                                               ; preds = %57
  %72 = load %struct.vlan_dev_info*, %struct.vlan_dev_info** %8, align 8
  %73 = getelementptr inbounds %struct.vlan_dev_info, %struct.vlan_dev_info* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* %9, align 4
  %76 = xor i32 %74, %75
  %77 = load i32, i32* @VLAN_FLAG_GVRP, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %94

80:                                               ; preds = %71
  %81 = load %struct.vlan_dev_info*, %struct.vlan_dev_info** %8, align 8
  %82 = getelementptr inbounds %struct.vlan_dev_info, %struct.vlan_dev_info* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @VLAN_FLAG_GVRP, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %80
  %88 = load %struct.net_device*, %struct.net_device** %5, align 8
  %89 = call i32 @vlan_gvrp_request_join(%struct.net_device* %88)
  br label %93

90:                                               ; preds = %80
  %91 = load %struct.net_device*, %struct.net_device** %5, align 8
  %92 = call i32 @vlan_gvrp_request_leave(%struct.net_device* %91)
  br label %93

93:                                               ; preds = %90, %87
  br label %94

94:                                               ; preds = %93, %71, %57
  %95 = load %struct.vlan_dev_info*, %struct.vlan_dev_info** %8, align 8
  %96 = getelementptr inbounds %struct.vlan_dev_info, %struct.vlan_dev_info* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* %9, align 4
  %99 = xor i32 %97, %98
  %100 = load i32, i32* @VLAN_FLAG_REORDER_HDR, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %109

103:                                              ; preds = %94
  %104 = load %struct.vlan_dev_info*, %struct.vlan_dev_info** %8, align 8
  %105 = getelementptr inbounds %struct.vlan_dev_info, %struct.vlan_dev_info* %104, i32 0, i32 1
  %106 = load %struct.TYPE_2__*, %struct.TYPE_2__** %105, align 8
  %107 = load %struct.net_device*, %struct.net_device** %5, align 8
  %108 = call i32 @vlan_transfer_features(%struct.TYPE_2__* %106, %struct.net_device* %107)
  br label %109

109:                                              ; preds = %103, %94
  store i32 0, i32* %4, align 4
  br label %110

110:                                              ; preds = %109, %54, %22
  %111 = load i32, i32* %4, align 4
  ret i32 %111
}

declare dso_local %struct.vlan_dev_info* @vlan_dev_info(%struct.net_device*) #1

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i32 @vlan_gvrp_request_join(%struct.net_device*) #1

declare dso_local i32 @vlan_gvrp_request_leave(%struct.net_device*) #1

declare dso_local i32 @vlan_transfer_features(%struct.TYPE_2__*, %struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
