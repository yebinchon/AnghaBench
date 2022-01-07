; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_util.c_ieee80211_get_mesh_hdrlen.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_util.c_ieee80211_get_mesh_hdrlen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211s_hdr = type { i32 }

@MESH_FLAGS_AE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ieee80211_get_mesh_hdrlen(%struct.ieee80211s_hdr* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ieee80211s_hdr*, align 8
  %4 = alloca i32, align 4
  store %struct.ieee80211s_hdr* %0, %struct.ieee80211s_hdr** %3, align 8
  %5 = load %struct.ieee80211s_hdr*, %struct.ieee80211s_hdr** %3, align 8
  %6 = getelementptr inbounds %struct.ieee80211s_hdr, %struct.ieee80211s_hdr* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @MESH_FLAGS_AE, align 4
  %9 = and i32 %7, %8
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  switch i32 %10, label %11 [
    i32 0, label %12
    i32 129, label %13
    i32 128, label %14
  ]

11:                                               ; preds = %1
  br label %12

12:                                               ; preds = %1, %11
  store i32 6, i32* %2, align 4
  br label %15

13:                                               ; preds = %1
  store i32 12, i32* %2, align 4
  br label %15

14:                                               ; preds = %1
  store i32 18, i32* %2, align 4
  br label %15

15:                                               ; preds = %14, %13, %12
  %16 = load i32, i32* %2, align 4
  ret i32 %16
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
