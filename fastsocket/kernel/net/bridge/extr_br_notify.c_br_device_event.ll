; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bridge/extr_br_notify.c_br_device_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bridge/extr_br_notify.c_br_device_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.notifier_block = type { i32 }
%struct.net_device = type { i32, %struct.net_bridge_port* }
%struct.net_bridge_port = type { %struct.net_bridge* }
%struct.net_bridge = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@NOTIFY_DONE = common dso_local global i32 0, align 4
@IFF_UP = common dso_local global i32 0, align 4
@RTM_NEWLINK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.notifier_block*, i64, i8*)* @br_device_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @br_device_event(%struct.notifier_block* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.notifier_block*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca %struct.net_bridge_port*, align 8
  %10 = alloca %struct.net_bridge*, align 8
  store %struct.notifier_block* %0, %struct.notifier_block** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = bitcast i8* %11 to %struct.net_device*
  store %struct.net_device* %12, %struct.net_device** %8, align 8
  %13 = load %struct.net_device*, %struct.net_device** %8, align 8
  %14 = getelementptr inbounds %struct.net_device, %struct.net_device* %13, i32 0, i32 1
  %15 = load %struct.net_bridge_port*, %struct.net_bridge_port** %14, align 8
  store %struct.net_bridge_port* %15, %struct.net_bridge_port** %9, align 8
  %16 = load %struct.net_bridge_port*, %struct.net_bridge_port** %9, align 8
  %17 = icmp eq %struct.net_bridge_port* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* @NOTIFY_DONE, align 4
  store i32 %19, i32* %4, align 4
  br label %123

20:                                               ; preds = %3
  %21 = load %struct.net_bridge_port*, %struct.net_bridge_port** %9, align 8
  %22 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %21, i32 0, i32 0
  %23 = load %struct.net_bridge*, %struct.net_bridge** %22, align 8
  store %struct.net_bridge* %23, %struct.net_bridge** %10, align 8
  %24 = load i64, i64* %6, align 8
  switch i64 %24, label %105 [
    i64 132, label %25
    i64 133, label %32
    i64 134, label %46
    i64 130, label %49
    i64 131, label %59
    i64 128, label %78
    i64 129, label %101
  ]

25:                                               ; preds = %20
  %26 = load %struct.net_bridge*, %struct.net_bridge** %10, align 8
  %27 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %26, i32 0, i32 1
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = load %struct.net_bridge*, %struct.net_bridge** %10, align 8
  %30 = call i32 @br_min_mtu(%struct.net_bridge* %29)
  %31 = call i32 @dev_set_mtu(%struct.TYPE_3__* %28, i32 %30)
  br label %105

32:                                               ; preds = %20
  %33 = load %struct.net_bridge*, %struct.net_bridge** %10, align 8
  %34 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %33, i32 0, i32 0
  %35 = call i32 @spin_lock_bh(i32* %34)
  %36 = load %struct.net_bridge_port*, %struct.net_bridge_port** %9, align 8
  %37 = load %struct.net_device*, %struct.net_device** %8, align 8
  %38 = getelementptr inbounds %struct.net_device, %struct.net_device* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @br_fdb_changeaddr(%struct.net_bridge_port* %36, i32 %39)
  %41 = load %struct.net_bridge*, %struct.net_bridge** %10, align 8
  %42 = call i32 @br_stp_recalculate_bridge_id(%struct.net_bridge* %41)
  %43 = load %struct.net_bridge*, %struct.net_bridge** %10, align 8
  %44 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %43, i32 0, i32 0
  %45 = call i32 @spin_unlock_bh(i32* %44)
  br label %105

46:                                               ; preds = %20
  %47 = load %struct.net_bridge_port*, %struct.net_bridge_port** %9, align 8
  %48 = call i32 @br_port_carrier_check(%struct.net_bridge_port* %47)
  br label %105

49:                                               ; preds = %20
  %50 = load %struct.net_bridge*, %struct.net_bridge** %10, align 8
  %51 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %50, i32 0, i32 1
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %51, align 8
  %53 = call i32 @netif_running(%struct.TYPE_3__* %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %49
  %56 = load %struct.net_bridge*, %struct.net_bridge** %10, align 8
  %57 = call i32 @br_features_recompute(%struct.net_bridge* %56)
  br label %58

58:                                               ; preds = %55, %49
  br label %105

59:                                               ; preds = %20
  %60 = load %struct.net_bridge*, %struct.net_bridge** %10, align 8
  %61 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %60, i32 0, i32 0
  %62 = call i32 @spin_lock_bh(i32* %61)
  %63 = load %struct.net_bridge*, %struct.net_bridge** %10, align 8
  %64 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %63, i32 0, i32 1
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @IFF_UP, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %59
  %72 = load %struct.net_bridge_port*, %struct.net_bridge_port** %9, align 8
  %73 = call i32 @br_stp_disable_port(%struct.net_bridge_port* %72)
  br label %74

74:                                               ; preds = %71, %59
  %75 = load %struct.net_bridge*, %struct.net_bridge** %10, align 8
  %76 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %75, i32 0, i32 0
  %77 = call i32 @spin_unlock_bh(i32* %76)
  br label %105

78:                                               ; preds = %20
  %79 = load %struct.net_device*, %struct.net_device** %8, align 8
  %80 = call i32 @netif_carrier_ok(%struct.net_device* %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %100

82:                                               ; preds = %78
  %83 = load %struct.net_bridge*, %struct.net_bridge** %10, align 8
  %84 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %83, i32 0, i32 1
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @IFF_UP, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %100

91:                                               ; preds = %82
  %92 = load %struct.net_bridge*, %struct.net_bridge** %10, align 8
  %93 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %92, i32 0, i32 0
  %94 = call i32 @spin_lock_bh(i32* %93)
  %95 = load %struct.net_bridge_port*, %struct.net_bridge_port** %9, align 8
  %96 = call i32 @br_stp_enable_port(%struct.net_bridge_port* %95)
  %97 = load %struct.net_bridge*, %struct.net_bridge** %10, align 8
  %98 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %97, i32 0, i32 0
  %99 = call i32 @spin_unlock_bh(i32* %98)
  br label %100

100:                                              ; preds = %91, %82, %78
  br label %105

101:                                              ; preds = %20
  %102 = load %struct.net_bridge*, %struct.net_bridge** %10, align 8
  %103 = load %struct.net_device*, %struct.net_device** %8, align 8
  %104 = call i32 @br_del_if(%struct.net_bridge* %102, %struct.net_device* %103)
  br label %105

105:                                              ; preds = %20, %101, %100, %74, %58, %46, %32, %25
  %106 = load i64, i64* %6, align 8
  %107 = icmp eq i64 %106, 133
  br i1 %107, label %117, label %108

108:                                              ; preds = %105
  %109 = load i64, i64* %6, align 8
  %110 = icmp eq i64 %109, 128
  br i1 %110, label %117, label %111

111:                                              ; preds = %108
  %112 = load i64, i64* %6, align 8
  %113 = icmp eq i64 %112, 134
  br i1 %113, label %117, label %114

114:                                              ; preds = %111
  %115 = load i64, i64* %6, align 8
  %116 = icmp eq i64 %115, 131
  br i1 %116, label %117, label %121

117:                                              ; preds = %114, %111, %108, %105
  %118 = load i32, i32* @RTM_NEWLINK, align 4
  %119 = load %struct.net_bridge_port*, %struct.net_bridge_port** %9, align 8
  %120 = call i32 @br_ifinfo_notify(i32 %118, %struct.net_bridge_port* %119)
  br label %121

121:                                              ; preds = %117, %114
  %122 = load i32, i32* @NOTIFY_DONE, align 4
  store i32 %122, i32* %4, align 4
  br label %123

123:                                              ; preds = %121, %18
  %124 = load i32, i32* %4, align 4
  ret i32 %124
}

declare dso_local i32 @dev_set_mtu(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @br_min_mtu(%struct.net_bridge*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @br_fdb_changeaddr(%struct.net_bridge_port*, i32) #1

declare dso_local i32 @br_stp_recalculate_bridge_id(%struct.net_bridge*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @br_port_carrier_check(%struct.net_bridge_port*) #1

declare dso_local i32 @netif_running(%struct.TYPE_3__*) #1

declare dso_local i32 @br_features_recompute(%struct.net_bridge*) #1

declare dso_local i32 @br_stp_disable_port(%struct.net_bridge_port*) #1

declare dso_local i32 @netif_carrier_ok(%struct.net_device*) #1

declare dso_local i32 @br_stp_enable_port(%struct.net_bridge_port*) #1

declare dso_local i32 @br_del_if(%struct.net_bridge*, %struct.net_device*) #1

declare dso_local i32 @br_ifinfo_notify(i32, %struct.net_bridge_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
