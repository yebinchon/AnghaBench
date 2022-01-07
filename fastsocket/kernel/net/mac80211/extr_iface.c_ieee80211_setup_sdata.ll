; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_iface.c_ieee80211_setup_sdata.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_iface.c_ieee80211_setup_sdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sub_if_data = type { i32, %struct.TYPE_18__, %struct.TYPE_17__, %struct.TYPE_15__*, i32, i32, i32, i64, i32, %struct.TYPE_10__ }
%struct.TYPE_18__ = type { i32, i32, i32*, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32* }
%struct.TYPE_17__ = type { i32, %struct.TYPE_14__, %struct.TYPE_13__, %struct.TYPE_12__ }
%struct.TYPE_14__ = type { i32* }
%struct.TYPE_13__ = type { i32* }
%struct.TYPE_12__ = type { i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_15__ = type { i32*, i32 }
%struct.TYPE_10__ = type { i32 }

@ETH_P_PAE = common dso_local global i32 0, align 4
@ieee80211_dataif_ops = common dso_local global i32 0, align 4
@ARPHRD_ETHER = common dso_local global i32 0, align 4
@ieee80211_iface_work = common dso_local global i32 0, align 4
@ieee80211_recalc_smps_work = common dso_local global i32 0, align 4
@ARPHRD_IEEE80211_RADIOTAP = common dso_local global i32 0, align 4
@ieee80211_monitorif_ops = common dso_local global i32 0, align 4
@MONITOR_FLAG_CONTROL = common dso_local global i32 0, align 4
@MONITOR_FLAG_OTHER_BSS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_sub_if_data*, i32)* @ieee80211_setup_sdata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ieee80211_setup_sdata(%struct.ieee80211_sub_if_data* %0, i32 %1) #0 {
  %3 = alloca %struct.ieee80211_sub_if_data*, align 8
  %4 = alloca i32, align 4
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %6 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %5, i32 0, i32 2
  %7 = call i32 @memset(%struct.TYPE_17__* %6, i32 0, i32 32)
  %8 = load i32, i32* %4, align 4
  %9 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %10 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %10, i32 0, i32 0
  store i32 %8, i32* %11, align 8
  %12 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %13 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 1
  store i32 0, i32* %14, align 4
  %15 = load i32, i32* %4, align 4
  %16 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %17 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %16, i32 0, i32 9
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  store i32 %15, i32* %18, align 4
  %19 = load i32, i32* @ETH_P_PAE, align 4
  %20 = call i32 @cpu_to_be16(i32 %19)
  %21 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %22 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %21, i32 0, i32 8
  store i32 %20, i32* %22, align 8
  %23 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %24 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %23, i32 0, i32 0
  store i32 0, i32* %24, align 8
  %25 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %26 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %25, i32 0, i32 7
  store i64 0, i64* %26, align 8
  %27 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %28 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %27, i32 0, i32 3
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %28, align 8
  %30 = icmp ne %struct.TYPE_15__* %29, null
  br i1 %30, label %31, label %41

31:                                               ; preds = %2
  %32 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %33 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %32, i32 0, i32 3
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 0
  store i32* @ieee80211_dataif_ops, i32** %35, align 8
  %36 = load i32, i32* @ARPHRD_ETHER, align 4
  %37 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %38 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %37, i32 0, i32 3
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %39, i32 0, i32 1
  store i32 %36, i32* %40, align 8
  br label %41

41:                                               ; preds = %31, %2
  %42 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %43 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %42, i32 0, i32 6
  %44 = call i32 @skb_queue_head_init(i32* %43)
  %45 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %46 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %45, i32 0, i32 5
  %47 = load i32, i32* @ieee80211_iface_work, align 4
  %48 = call i32 @INIT_WORK(i32* %46, i32 %47)
  %49 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %50 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %49, i32 0, i32 4
  %51 = load i32, i32* @ieee80211_recalc_smps_work, align 4
  %52 = call i32 @INIT_WORK(i32* %50, i32 %51)
  %53 = load i32, i32* %4, align 4
  switch i32 %53, label %156 [
    i32 132, label %54
    i32 138, label %62
    i32 134, label %82
    i32 131, label %90
    i32 139, label %102
    i32 136, label %114
    i32 135, label %123
    i32 129, label %139
    i32 137, label %144
    i32 133, label %145
    i32 130, label %154
    i32 128, label %154
  ]

54:                                               ; preds = %41
  store i32 138, i32* %4, align 4
  %55 = load i32, i32* %4, align 4
  %56 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %57 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %57, i32 0, i32 0
  store i32 %55, i32* %58, align 8
  %59 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %60 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %60, i32 0, i32 1
  store i32 1, i32* %61, align 4
  br label %62

62:                                               ; preds = %41, %54
  %63 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %64 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %64, i32 0, i32 3
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 0
  %68 = call i32 @skb_queue_head_init(i32* %67)
  %69 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %70 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %70, i32 0, i32 3
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 0
  %73 = call i32 @INIT_LIST_HEAD(i32* %72)
  %74 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %75 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %75, i32 0, i32 2
  %77 = load i32*, i32** %76, align 8
  %78 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %79 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %79, i32 0, i32 3
  %81 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %80, i32 0, i32 0
  store i32* %77, i32** %81, align 8
  br label %156

82:                                               ; preds = %41
  store i32 131, i32* %4, align 4
  %83 = load i32, i32* %4, align 4
  %84 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %85 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %85, i32 0, i32 0
  store i32 %83, i32* %86, align 8
  %87 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %88 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %88, i32 0, i32 1
  store i32 1, i32* %89, align 4
  br label %90

90:                                               ; preds = %41, %82
  %91 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %92 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %91, i32 0, i32 2
  %93 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %92, i32 0, i32 2
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %93, i32 0, i32 0
  %95 = load i32*, i32** %94, align 8
  %96 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %97 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %97, i32 0, i32 3
  %99 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %98, i32 0, i32 0
  store i32* %95, i32** %99, align 8
  %100 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %101 = call i32 @ieee80211_sta_setup_sdata(%struct.ieee80211_sub_if_data* %100)
  br label %156

102:                                              ; preds = %41
  %103 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %104 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %103, i32 0, i32 2
  %105 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %105, i32 0, i32 0
  %107 = load i32*, i32** %106, align 8
  %108 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %109 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %109, i32 0, i32 3
  %111 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %110, i32 0, i32 0
  store i32* %107, i32** %111, align 8
  %112 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %113 = call i32 @ieee80211_ibss_setup_sdata(%struct.ieee80211_sub_if_data* %112)
  br label %156

114:                                              ; preds = %41
  %115 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %116 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %115, i32 0, i32 1
  %117 = call i32 @ieee80211_vif_is_mesh(%struct.TYPE_18__* %116)
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %114
  %120 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %121 = call i32 @ieee80211_mesh_init_sdata(%struct.ieee80211_sub_if_data* %120)
  br label %122

122:                                              ; preds = %119, %114
  br label %156

123:                                              ; preds = %41
  %124 = load i32, i32* @ARPHRD_IEEE80211_RADIOTAP, align 4
  %125 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %126 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %125, i32 0, i32 3
  %127 = load %struct.TYPE_15__*, %struct.TYPE_15__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %127, i32 0, i32 1
  store i32 %124, i32* %128, align 8
  %129 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %130 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %129, i32 0, i32 3
  %131 = load %struct.TYPE_15__*, %struct.TYPE_15__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %131, i32 0, i32 0
  store i32* @ieee80211_monitorif_ops, i32** %132, align 8
  %133 = load i32, i32* @MONITOR_FLAG_CONTROL, align 4
  %134 = load i32, i32* @MONITOR_FLAG_OTHER_BSS, align 4
  %135 = or i32 %133, %134
  %136 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %137 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %136, i32 0, i32 2
  %138 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %137, i32 0, i32 0
  store i32 %135, i32* %138, align 8
  br label %156

139:                                              ; preds = %41
  %140 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %141 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %141, i32 0, i32 3
  %143 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %142, i32 0, i32 0
  store i32* null, i32** %143, align 8
  br label %156

144:                                              ; preds = %41
  br label %156

145:                                              ; preds = %41
  %146 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %147 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %146, i32 0, i32 1
  %148 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %147, i32 0, i32 2
  %149 = load i32*, i32** %148, align 8
  %150 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %151 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %151, i32 0, i32 3
  %153 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %152, i32 0, i32 0
  store i32* %149, i32** %153, align 8
  br label %156

154:                                              ; preds = %41, %41
  %155 = call i32 (...) @BUG()
  br label %156

156:                                              ; preds = %41, %154, %145, %144, %139, %123, %122, %102, %90, %62
  %157 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %158 = call i32 @ieee80211_debugfs_add_netdev(%struct.ieee80211_sub_if_data* %157)
  ret void
}

declare dso_local i32 @memset(%struct.TYPE_17__*, i32, i32) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @skb_queue_head_init(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @ieee80211_sta_setup_sdata(%struct.ieee80211_sub_if_data*) #1

declare dso_local i32 @ieee80211_ibss_setup_sdata(%struct.ieee80211_sub_if_data*) #1

declare dso_local i32 @ieee80211_vif_is_mesh(%struct.TYPE_18__*) #1

declare dso_local i32 @ieee80211_mesh_init_sdata(%struct.ieee80211_sub_if_data*) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @ieee80211_debugfs_add_netdev(%struct.ieee80211_sub_if_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
