; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_ip_tunnel.c_ip_tunnel_bind_dev.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_ip_tunnel.c_ip_tunnel_bind_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i64, i32, i32, i32, i64, i32 }
%struct.ip_tunnel = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i32, %struct.iphdr }
%struct.iphdr = type { i32, i32, i64, i32 }
%struct.flowi = type { i32 }
%struct.rtable = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.net_device* }

@LL_MAX_HEADER = common dso_local global i32 0, align 4
@ETH_DATA_LEN = common dso_local global i32 0, align 4
@ARPHRD_ETHER = common dso_local global i64 0, align 8
@IFF_POINTOPOINT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @ip_tunnel_bind_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip_tunnel_bind_dev(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ip_tunnel*, align 8
  %5 = alloca %struct.iphdr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.flowi, align 4
  %10 = alloca %struct.rtable*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  store %struct.net_device* null, %struct.net_device** %3, align 8
  %11 = load %struct.net_device*, %struct.net_device** %2, align 8
  %12 = call %struct.ip_tunnel* @netdev_priv(%struct.net_device* %11)
  store %struct.ip_tunnel* %12, %struct.ip_tunnel** %4, align 8
  %13 = load i32, i32* @LL_MAX_HEADER, align 4
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* @ETH_DATA_LEN, align 4
  store i32 %14, i32* %7, align 4
  %15 = load %struct.ip_tunnel*, %struct.ip_tunnel** %4, align 8
  %16 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = sext i32 %17 to i64
  %19 = add i64 %18, 24
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %8, align 4
  %21 = load %struct.ip_tunnel*, %struct.ip_tunnel** %4, align 8
  %22 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 2
  store %struct.iphdr* %23, %struct.iphdr** %5, align 8
  %24 = load %struct.iphdr*, %struct.iphdr** %5, align 8
  %25 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %79

28:                                               ; preds = %1
  %29 = load %struct.net_device*, %struct.net_device** %2, align 8
  %30 = call i32 @dev_net(%struct.net_device* %29)
  %31 = load %struct.ip_tunnel*, %struct.ip_tunnel** %4, align 8
  %32 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.iphdr*, %struct.iphdr** %5, align 8
  %37 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.iphdr*, %struct.iphdr** %5, align 8
  %40 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.ip_tunnel*, %struct.ip_tunnel** %4, align 8
  %43 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.iphdr*, %struct.iphdr** %5, align 8
  %47 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @RT_TOS(i32 %48)
  %50 = load %struct.ip_tunnel*, %struct.ip_tunnel** %4, align 8
  %51 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = call %struct.rtable* @ip_route_output_tunnel(i32 %30, %struct.flowi* %9, i32 %35, i64 %38, i32 %41, i32 %45, i32 %49, i64 %53)
  store %struct.rtable* %54, %struct.rtable** %10, align 8
  %55 = load %struct.rtable*, %struct.rtable** %10, align 8
  %56 = call i32 @IS_ERR(%struct.rtable* %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %66, label %58

58:                                               ; preds = %28
  %59 = load %struct.rtable*, %struct.rtable** %10, align 8
  %60 = getelementptr inbounds %struct.rtable, %struct.rtable* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load %struct.net_device*, %struct.net_device** %62, align 8
  store %struct.net_device* %63, %struct.net_device** %3, align 8
  %64 = load %struct.rtable*, %struct.rtable** %10, align 8
  %65 = call i32 @ip_rt_put(%struct.rtable* %64)
  br label %66

66:                                               ; preds = %58, %28
  %67 = load %struct.net_device*, %struct.net_device** %2, align 8
  %68 = getelementptr inbounds %struct.net_device, %struct.net_device* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @ARPHRD_ETHER, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %78

72:                                               ; preds = %66
  %73 = load i32, i32* @IFF_POINTOPOINT, align 4
  %74 = load %struct.net_device*, %struct.net_device** %2, align 8
  %75 = getelementptr inbounds %struct.net_device, %struct.net_device* %74, i32 0, i32 5
  %76 = load i32, i32* %75, align 8
  %77 = or i32 %76, %73
  store i32 %77, i32* %75, align 8
  br label %78

78:                                               ; preds = %72, %66
  br label %79

79:                                               ; preds = %78, %1
  %80 = load %struct.net_device*, %struct.net_device** %3, align 8
  %81 = icmp ne %struct.net_device* %80, null
  br i1 %81, label %96, label %82

82:                                               ; preds = %79
  %83 = load %struct.ip_tunnel*, %struct.ip_tunnel** %4, align 8
  %84 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %96

88:                                               ; preds = %82
  %89 = load %struct.net_device*, %struct.net_device** %2, align 8
  %90 = call i32 @dev_net(%struct.net_device* %89)
  %91 = load %struct.ip_tunnel*, %struct.ip_tunnel** %4, align 8
  %92 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = call %struct.net_device* @__dev_get_by_index(i32 %90, i64 %94)
  store %struct.net_device* %95, %struct.net_device** %3, align 8
  br label %96

96:                                               ; preds = %88, %82, %79
  %97 = load %struct.net_device*, %struct.net_device** %3, align 8
  %98 = icmp ne %struct.net_device* %97, null
  br i1 %98, label %99, label %110

99:                                               ; preds = %96
  %100 = load %struct.net_device*, %struct.net_device** %3, align 8
  %101 = getelementptr inbounds %struct.net_device, %struct.net_device* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.net_device*, %struct.net_device** %3, align 8
  %104 = getelementptr inbounds %struct.net_device, %struct.net_device* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = add nsw i32 %102, %105
  store i32 %106, i32* %6, align 4
  %107 = load %struct.net_device*, %struct.net_device** %3, align 8
  %108 = getelementptr inbounds %struct.net_device, %struct.net_device* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 8
  store i32 %109, i32* %7, align 4
  br label %110

110:                                              ; preds = %99, %96
  %111 = load %struct.ip_tunnel*, %struct.ip_tunnel** %4, align 8
  %112 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load %struct.net_device*, %struct.net_device** %2, align 8
  %116 = getelementptr inbounds %struct.net_device, %struct.net_device* %115, i32 0, i32 4
  store i64 %114, i64* %116, align 8
  %117 = load i32, i32* %8, align 4
  %118 = load i32, i32* %6, align 4
  %119 = add nsw i32 %117, %118
  %120 = load %struct.net_device*, %struct.net_device** %2, align 8
  %121 = getelementptr inbounds %struct.net_device, %struct.net_device* %120, i32 0, i32 2
  store i32 %119, i32* %121, align 4
  %122 = load %struct.net_device*, %struct.net_device** %2, align 8
  %123 = getelementptr inbounds %struct.net_device, %struct.net_device* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* %8, align 4
  %126 = add nsw i32 %124, %125
  %127 = load i32, i32* %7, align 4
  %128 = sub nsw i32 %127, %126
  store i32 %128, i32* %7, align 4
  %129 = load i32, i32* %7, align 4
  %130 = icmp slt i32 %129, 68
  br i1 %130, label %131, label %132

131:                                              ; preds = %110
  store i32 68, i32* %7, align 4
  br label %132

132:                                              ; preds = %131, %110
  %133 = load i32, i32* %7, align 4
  ret i32 %133
}

declare dso_local %struct.ip_tunnel* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.rtable* @ip_route_output_tunnel(i32, %struct.flowi*, i32, i64, i32, i32, i32, i64) #1

declare dso_local i32 @dev_net(%struct.net_device*) #1

declare dso_local i32 @RT_TOS(i32) #1

declare dso_local i32 @IS_ERR(%struct.rtable*) #1

declare dso_local i32 @ip_rt_put(%struct.rtable*) #1

declare dso_local %struct.net_device* @__dev_get_by_index(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
