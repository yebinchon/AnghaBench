; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/et131x/extr_et131x_netdev.c_et131x_multicast.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/et131x/extr_et131x_netdev.c_et131x_multicast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32, %struct.dev_mc_list* }
%struct.dev_mc_list = type { i32 }
%struct.et131x_adapter = type { i64, i32, i32, i32* }

@ET131X_PACKET_TYPE_MULTICAST = common dso_local global i64 0, align 8
@IFF_PROMISC = common dso_local global i32 0, align 4
@ET131X_PACKET_TYPE_PROMISCUOUS = common dso_local global i64 0, align 8
@IFF_ALLMULTI = common dso_local global i32 0, align 4
@ET131X_PACKET_TYPE_ALL_MULTICAST = common dso_local global i64 0, align 8
@NIC_MAX_MCAST_LIST = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @et131x_multicast(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.et131x_adapter*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.dev_mc_list*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %8 = load %struct.net_device*, %struct.net_device** %2, align 8
  %9 = call %struct.et131x_adapter* @netdev_priv(%struct.net_device* %8)
  store %struct.et131x_adapter* %9, %struct.et131x_adapter** %3, align 8
  store i64 0, i64* %4, align 8
  %10 = load %struct.net_device*, %struct.net_device** %2, align 8
  %11 = getelementptr inbounds %struct.net_device, %struct.net_device* %10, i32 0, i32 2
  %12 = load %struct.dev_mc_list*, %struct.dev_mc_list** %11, align 8
  store %struct.dev_mc_list* %12, %struct.dev_mc_list** %7, align 8
  %13 = load %struct.et131x_adapter*, %struct.et131x_adapter** %3, align 8
  %14 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %13, i32 0, i32 2
  %15 = load i64, i64* %6, align 8
  %16 = call i32 @spin_lock_irqsave(i32* %14, i64 %15)
  %17 = load %struct.et131x_adapter*, %struct.et131x_adapter** %3, align 8
  %18 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %4, align 8
  %20 = load i64, i64* @ET131X_PACKET_TYPE_MULTICAST, align 8
  %21 = xor i64 %20, -1
  %22 = load i64, i64* %4, align 8
  %23 = and i64 %22, %21
  store i64 %23, i64* %4, align 8
  %24 = load %struct.net_device*, %struct.net_device** %2, align 8
  %25 = getelementptr inbounds %struct.net_device, %struct.net_device* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @IFF_PROMISC, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %1
  %31 = load i64, i64* @ET131X_PACKET_TYPE_PROMISCUOUS, align 8
  %32 = load %struct.et131x_adapter*, %struct.et131x_adapter** %3, align 8
  %33 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = or i64 %34, %31
  store i64 %35, i64* %33, align 8
  br label %43

36:                                               ; preds = %1
  %37 = load i64, i64* @ET131X_PACKET_TYPE_PROMISCUOUS, align 8
  %38 = xor i64 %37, -1
  %39 = load %struct.et131x_adapter*, %struct.et131x_adapter** %3, align 8
  %40 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = and i64 %41, %38
  store i64 %42, i64* %40, align 8
  br label %43

43:                                               ; preds = %36, %30
  %44 = load %struct.net_device*, %struct.net_device** %2, align 8
  %45 = getelementptr inbounds %struct.net_device, %struct.net_device* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @IFF_ALLMULTI, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %43
  %51 = load i64, i64* @ET131X_PACKET_TYPE_ALL_MULTICAST, align 8
  %52 = load %struct.et131x_adapter*, %struct.et131x_adapter** %3, align 8
  %53 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = or i64 %54, %51
  store i64 %55, i64* %53, align 8
  br label %56

56:                                               ; preds = %50, %43
  %57 = load %struct.net_device*, %struct.net_device** %2, align 8
  %58 = getelementptr inbounds %struct.net_device, %struct.net_device* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @NIC_MAX_MCAST_LIST, align 4
  %61 = icmp sgt i32 %59, %60
  br i1 %61, label %62, label %68

62:                                               ; preds = %56
  %63 = load i64, i64* @ET131X_PACKET_TYPE_ALL_MULTICAST, align 8
  %64 = load %struct.et131x_adapter*, %struct.et131x_adapter** %3, align 8
  %65 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = or i64 %66, %63
  store i64 %67, i64* %65, align 8
  br label %68

68:                                               ; preds = %62, %56
  %69 = load %struct.net_device*, %struct.net_device** %2, align 8
  %70 = getelementptr inbounds %struct.net_device, %struct.net_device* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = icmp slt i32 %71, 1
  br i1 %72, label %73, label %86

73:                                               ; preds = %68
  %74 = load i64, i64* @ET131X_PACKET_TYPE_ALL_MULTICAST, align 8
  %75 = xor i64 %74, -1
  %76 = load %struct.et131x_adapter*, %struct.et131x_adapter** %3, align 8
  %77 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = and i64 %78, %75
  store i64 %79, i64* %77, align 8
  %80 = load i64, i64* @ET131X_PACKET_TYPE_MULTICAST, align 8
  %81 = xor i64 %80, -1
  %82 = load %struct.et131x_adapter*, %struct.et131x_adapter** %3, align 8
  %83 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = and i64 %84, %81
  store i64 %85, i64* %83, align 8
  br label %92

86:                                               ; preds = %68
  %87 = load i64, i64* @ET131X_PACKET_TYPE_MULTICAST, align 8
  %88 = load %struct.et131x_adapter*, %struct.et131x_adapter** %3, align 8
  %89 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = or i64 %90, %87
  store i64 %91, i64* %89, align 8
  br label %92

92:                                               ; preds = %86, %73
  %93 = load %struct.net_device*, %struct.net_device** %2, align 8
  %94 = getelementptr inbounds %struct.net_device, %struct.net_device* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.et131x_adapter*, %struct.et131x_adapter** %3, align 8
  %97 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %96, i32 0, i32 1
  store i32 %95, i32* %97, align 8
  %98 = load %struct.net_device*, %struct.net_device** %2, align 8
  %99 = getelementptr inbounds %struct.net_device, %struct.net_device* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %119

102:                                              ; preds = %92
  %103 = load %struct.net_device*, %struct.net_device** %2, align 8
  %104 = getelementptr inbounds %struct.net_device, %struct.net_device* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = sub nsw i32 %105, 1
  %107 = sext i32 %106 to i64
  store i64 %107, i64* %5, align 8
  %108 = load %struct.et131x_adapter*, %struct.et131x_adapter** %3, align 8
  %109 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %108, i32 0, i32 3
  %110 = load i32*, i32** %109, align 8
  %111 = load i64, i64* %5, align 8
  %112 = getelementptr inbounds i32, i32* %110, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.dev_mc_list*, %struct.dev_mc_list** %7, align 8
  %115 = getelementptr inbounds %struct.dev_mc_list, %struct.dev_mc_list* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* @ETH_ALEN, align 4
  %118 = call i32 @memcpy(i32 %113, i32 %116, i32 %117)
  br label %119

119:                                              ; preds = %102, %92
  %120 = load i64, i64* %4, align 8
  %121 = load %struct.et131x_adapter*, %struct.et131x_adapter** %3, align 8
  %122 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %120, %123
  br i1 %124, label %125, label %128

125:                                              ; preds = %119
  %126 = load %struct.et131x_adapter*, %struct.et131x_adapter** %3, align 8
  %127 = call i32 @et131x_set_packet_filter(%struct.et131x_adapter* %126)
  br label %128

128:                                              ; preds = %125, %119
  %129 = load %struct.et131x_adapter*, %struct.et131x_adapter** %3, align 8
  %130 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %129, i32 0, i32 2
  %131 = load i64, i64* %6, align 8
  %132 = call i32 @spin_unlock_irqrestore(i32* %130, i64 %131)
  ret void
}

declare dso_local %struct.et131x_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @et131x_set_packet_filter(%struct.et131x_adapter*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
