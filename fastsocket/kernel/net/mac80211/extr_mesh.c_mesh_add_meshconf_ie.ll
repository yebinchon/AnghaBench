; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_mesh.c_mesh_add_meshconf_ie.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_mesh.c_mesh_add_meshconf_ie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sub_if_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ieee80211_if_mesh }
%struct.ieee80211_if_mesh = type { i64, i64, i64, i32, i32, i32, i32, i32, i32 }
%struct.sk_buff = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@WLAN_EID_MESH_CONFIG = common dso_local global i32 0, align 4
@IEEE80211_MESHCONF_CAPAB_FORWARDING = common dso_local global i64 0, align 8
@IEEE80211_MESHCONF_CAPAB_ACCEPT_PLINKS = common dso_local global i32 0, align 4
@IEEE80211_MESHCONF_CAPAB_POWER_SAVE_LEVEL = common dso_local global i32 0, align 4
@IEEE80211_MESHCONF_CAPAB_TBTT_ADJUSTING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mesh_add_meshconf_ie(%struct.ieee80211_sub_if_data* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ieee80211_sub_if_data*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.ieee80211_if_mesh*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %10 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %11 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store %struct.ieee80211_if_mesh* %12, %struct.ieee80211_if_mesh** %6, align 8
  store i64 4, i64* %9, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %14 = call i64 @skb_tailroom(%struct.sk_buff* %13)
  %15 = load i64, i64* %9, align 8
  %16 = add nsw i64 2, %15
  %17 = icmp slt i64 %14, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %121

21:                                               ; preds = %2
  %22 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %23 = load i64, i64* %9, align 8
  %24 = add nsw i64 2, %23
  %25 = call i64* @skb_put(%struct.sk_buff* %22, i64 %24)
  store i64* %25, i64** %7, align 8
  %26 = load i32, i32* @WLAN_EID_MESH_CONFIG, align 4
  %27 = sext i32 %26 to i64
  %28 = load i64*, i64** %7, align 8
  %29 = getelementptr inbounds i64, i64* %28, i32 1
  store i64* %29, i64** %7, align 8
  store i64 %27, i64* %28, align 8
  %30 = load i64, i64* %9, align 8
  %31 = load i64*, i64** %7, align 8
  %32 = getelementptr inbounds i64, i64* %31, i32 1
  store i64* %32, i64** %7, align 8
  store i64 %30, i64* %31, align 8
  %33 = load %struct.ieee80211_if_mesh*, %struct.ieee80211_if_mesh** %6, align 8
  %34 = getelementptr inbounds %struct.ieee80211_if_mesh, %struct.ieee80211_if_mesh* %33, i32 0, i32 8
  %35 = load i32, i32* %34, align 4
  %36 = sext i32 %35 to i64
  %37 = load i64*, i64** %7, align 8
  %38 = getelementptr inbounds i64, i64* %37, i32 1
  store i64* %38, i64** %7, align 8
  store i64 %36, i64* %37, align 8
  %39 = load %struct.ieee80211_if_mesh*, %struct.ieee80211_if_mesh** %6, align 8
  %40 = getelementptr inbounds %struct.ieee80211_if_mesh, %struct.ieee80211_if_mesh* %39, i32 0, i32 7
  %41 = load i32, i32* %40, align 8
  %42 = sext i32 %41 to i64
  %43 = load i64*, i64** %7, align 8
  %44 = getelementptr inbounds i64, i64* %43, i32 1
  store i64* %44, i64** %7, align 8
  store i64 %42, i64* %43, align 8
  %45 = load %struct.ieee80211_if_mesh*, %struct.ieee80211_if_mesh** %6, align 8
  %46 = getelementptr inbounds %struct.ieee80211_if_mesh, %struct.ieee80211_if_mesh* %45, i32 0, i32 6
  %47 = load i32, i32* %46, align 4
  %48 = sext i32 %47 to i64
  %49 = load i64*, i64** %7, align 8
  %50 = getelementptr inbounds i64, i64* %49, i32 1
  store i64* %50, i64** %7, align 8
  store i64 %48, i64* %49, align 8
  %51 = load %struct.ieee80211_if_mesh*, %struct.ieee80211_if_mesh** %6, align 8
  %52 = getelementptr inbounds %struct.ieee80211_if_mesh, %struct.ieee80211_if_mesh* %51, i32 0, i32 5
  %53 = load i32, i32* %52, align 8
  %54 = sext i32 %53 to i64
  %55 = load i64*, i64** %7, align 8
  %56 = getelementptr inbounds i64, i64* %55, i32 1
  store i64* %56, i64** %7, align 8
  store i64 %54, i64* %55, align 8
  %57 = load %struct.ieee80211_if_mesh*, %struct.ieee80211_if_mesh** %6, align 8
  %58 = getelementptr inbounds %struct.ieee80211_if_mesh, %struct.ieee80211_if_mesh* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 4
  %60 = sext i32 %59 to i64
  %61 = load i64*, i64** %7, align 8
  %62 = getelementptr inbounds i64, i64* %61, i32 1
  store i64* %62, i64** %7, align 8
  store i64 %60, i64* %61, align 8
  %63 = load %struct.ieee80211_if_mesh*, %struct.ieee80211_if_mesh** %6, align 8
  %64 = getelementptr inbounds %struct.ieee80211_if_mesh, %struct.ieee80211_if_mesh* %63, i32 0, i32 3
  %65 = call i64 @atomic_read(i32* %64)
  store i64 %65, i64* %8, align 8
  %66 = load i64, i64* %8, align 8
  %67 = icmp sgt i64 %66, 15
  br i1 %67, label %68, label %69

68:                                               ; preds = %21
  br label %71

69:                                               ; preds = %21
  %70 = load i64, i64* %8, align 8
  br label %71

71:                                               ; preds = %69, %68
  %72 = phi i64 [ 15, %68 ], [ %70, %69 ]
  store i64 %72, i64* %8, align 8
  %73 = load i64, i64* %8, align 8
  %74 = shl i64 %73, 1
  %75 = load i64*, i64** %7, align 8
  %76 = getelementptr inbounds i64, i64* %75, i32 1
  store i64* %76, i64** %7, align 8
  store i64 %74, i64* %75, align 8
  %77 = load i64, i64* @IEEE80211_MESHCONF_CAPAB_FORWARDING, align 8
  %78 = load i64*, i64** %7, align 8
  store i64 %77, i64* %78, align 8
  %79 = load %struct.ieee80211_if_mesh*, %struct.ieee80211_if_mesh** %6, align 8
  %80 = getelementptr inbounds %struct.ieee80211_if_mesh, %struct.ieee80211_if_mesh* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %71
  %84 = load i32, i32* @IEEE80211_MESHCONF_CAPAB_ACCEPT_PLINKS, align 4
  br label %86

85:                                               ; preds = %71
  br label %86

86:                                               ; preds = %85, %83
  %87 = phi i32 [ %84, %83 ], [ 0, %85 ]
  %88 = sext i32 %87 to i64
  %89 = load i64*, i64** %7, align 8
  %90 = load i64, i64* %89, align 8
  %91 = or i64 %90, %88
  store i64 %91, i64* %89, align 8
  %92 = load %struct.ieee80211_if_mesh*, %struct.ieee80211_if_mesh** %6, align 8
  %93 = getelementptr inbounds %struct.ieee80211_if_mesh, %struct.ieee80211_if_mesh* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %86
  %97 = load i32, i32* @IEEE80211_MESHCONF_CAPAB_POWER_SAVE_LEVEL, align 4
  br label %99

98:                                               ; preds = %86
  br label %99

99:                                               ; preds = %98, %96
  %100 = phi i32 [ %97, %96 ], [ 0, %98 ]
  %101 = sext i32 %100 to i64
  %102 = load i64*, i64** %7, align 8
  %103 = load i64, i64* %102, align 8
  %104 = or i64 %103, %101
  store i64 %104, i64* %102, align 8
  %105 = load %struct.ieee80211_if_mesh*, %struct.ieee80211_if_mesh** %6, align 8
  %106 = getelementptr inbounds %struct.ieee80211_if_mesh, %struct.ieee80211_if_mesh* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %99
  %110 = load i32, i32* @IEEE80211_MESHCONF_CAPAB_TBTT_ADJUSTING, align 4
  br label %112

111:                                              ; preds = %99
  br label %112

112:                                              ; preds = %111, %109
  %113 = phi i32 [ %110, %109 ], [ 0, %111 ]
  %114 = sext i32 %113 to i64
  %115 = load i64*, i64** %7, align 8
  %116 = getelementptr inbounds i64, i64* %115, i32 1
  store i64* %116, i64** %7, align 8
  %117 = load i64, i64* %115, align 8
  %118 = or i64 %117, %114
  store i64 %118, i64* %115, align 8
  %119 = load i64*, i64** %7, align 8
  %120 = getelementptr inbounds i64, i64* %119, i32 1
  store i64* %120, i64** %7, align 8
  store i64 0, i64* %119, align 8
  store i32 0, i32* %3, align 4
  br label %121

121:                                              ; preds = %112, %18
  %122 = load i32, i32* %3, align 4
  ret i32 %122
}

declare dso_local i64 @skb_tailroom(%struct.sk_buff*) #1

declare dso_local i64* @skb_put(%struct.sk_buff*, i64) #1

declare dso_local i64 @atomic_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
