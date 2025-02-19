; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_mesh.c_mesh_add_rsn_ie.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_mesh.c_mesh_add_rsn_ie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sub_if_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ieee80211_if_mesh }
%struct.ieee80211_if_mesh = type { i64*, i32 }
%struct.sk_buff = type { i32 }

@WLAN_EID_RSN = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mesh_add_rsn_ie(%struct.ieee80211_sub_if_data* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ieee80211_sub_if_data*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.ieee80211_if_mesh*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %9 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %10 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store %struct.ieee80211_if_mesh* %11, %struct.ieee80211_if_mesh** %6, align 8
  store i64 0, i64* %7, align 8
  %12 = load %struct.ieee80211_if_mesh*, %struct.ieee80211_if_mesh** %6, align 8
  %13 = getelementptr inbounds %struct.ieee80211_if_mesh, %struct.ieee80211_if_mesh* %12, i32 0, i32 0
  %14 = load i64*, i64** %13, align 8
  %15 = icmp ne i64* %14, null
  br i1 %15, label %16, label %21

16:                                               ; preds = %2
  %17 = load %struct.ieee80211_if_mesh*, %struct.ieee80211_if_mesh** %6, align 8
  %18 = getelementptr inbounds %struct.ieee80211_if_mesh, %struct.ieee80211_if_mesh* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %16, %2
  store i32 0, i32* %3, align 4
  br label %69

22:                                               ; preds = %16
  %23 = load %struct.ieee80211_if_mesh*, %struct.ieee80211_if_mesh** %6, align 8
  %24 = getelementptr inbounds %struct.ieee80211_if_mesh, %struct.ieee80211_if_mesh* %23, i32 0, i32 0
  %25 = load i64*, i64** %24, align 8
  store i64* %25, i64** %8, align 8
  br label %26

26:                                               ; preds = %47, %22
  %27 = load i64*, i64** %8, align 8
  %28 = load %struct.ieee80211_if_mesh*, %struct.ieee80211_if_mesh** %6, align 8
  %29 = getelementptr inbounds %struct.ieee80211_if_mesh, %struct.ieee80211_if_mesh* %28, i32 0, i32 0
  %30 = load i64*, i64** %29, align 8
  %31 = load %struct.ieee80211_if_mesh*, %struct.ieee80211_if_mesh** %6, align 8
  %32 = getelementptr inbounds %struct.ieee80211_if_mesh, %struct.ieee80211_if_mesh* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i64, i64* %30, i64 %34
  %36 = icmp ult i64* %27, %35
  br i1 %36, label %37, label %50

37:                                               ; preds = %26
  %38 = load i64*, i64** %8, align 8
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @WLAN_EID_RSN, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %47

42:                                               ; preds = %37
  %43 = load i64*, i64** %8, align 8
  %44 = getelementptr inbounds i64, i64* %43, i64 1
  %45 = load i64, i64* %44, align 8
  %46 = add nsw i64 %45, 2
  store i64 %46, i64* %7, align 8
  br label %50

47:                                               ; preds = %37
  %48 = load i64*, i64** %8, align 8
  %49 = getelementptr inbounds i64, i64* %48, i32 1
  store i64* %49, i64** %8, align 8
  br label %26

50:                                               ; preds = %42, %26
  %51 = load i64, i64* %7, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %68

53:                                               ; preds = %50
  %54 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %55 = call i64 @skb_tailroom(%struct.sk_buff* %54)
  %56 = load i64, i64* %7, align 8
  %57 = icmp slt i64 %55, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %53
  %59 = load i32, i32* @ENOMEM, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %3, align 4
  br label %69

61:                                               ; preds = %53
  %62 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %63 = load i64, i64* %7, align 8
  %64 = call i32 @skb_put(%struct.sk_buff* %62, i64 %63)
  %65 = load i64*, i64** %8, align 8
  %66 = load i64, i64* %7, align 8
  %67 = call i32 @memcpy(i32 %64, i64* %65, i64 %66)
  br label %68

68:                                               ; preds = %61, %50
  store i32 0, i32* %3, align 4
  br label %69

69:                                               ; preds = %68, %58, %21
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local i64 @skb_tailroom(%struct.sk_buff*) #1

declare dso_local i32 @memcpy(i32, i64*, i64) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
