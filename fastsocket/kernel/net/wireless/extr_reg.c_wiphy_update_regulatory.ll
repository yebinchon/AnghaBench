; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_reg.c_wiphy_update_regulatory.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_reg.c_wiphy_update_regulatory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 (%struct.wiphy*, %struct.regulatory_request*)*, i32* }
%struct.regulatory_request = type opaque
%struct.regulatory_request.0 = type { i32 }
%struct.TYPE_2__ = type { i32 }

@IEEE80211_NUM_BANDS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wiphy*, i32)* @wiphy_update_regulatory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wiphy_update_regulatory(%struct.wiphy* %0, i32 %1) #0 {
  %3 = alloca %struct.wiphy*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.regulatory_request.0*, align 8
  store %struct.wiphy* %0, %struct.wiphy** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = call %struct.regulatory_request.0* (...) @get_last_request()
  store %struct.regulatory_request.0* %7, %struct.regulatory_request.0** %6, align 8
  %8 = load %struct.wiphy*, %struct.wiphy** %3, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call i64 @ignore_reg_update(%struct.wiphy* %8, i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %54

13:                                               ; preds = %2
  %14 = call %struct.TYPE_2__* (...) @get_cfg80211_regdom()
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.regulatory_request.0*, %struct.regulatory_request.0** %6, align 8
  %18 = getelementptr inbounds %struct.regulatory_request.0, %struct.regulatory_request.0* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  store i32 0, i32* %5, align 4
  br label %19

19:                                               ; preds = %34, %13
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @IEEE80211_NUM_BANDS, align 4
  %22 = icmp ult i32 %20, %21
  br i1 %22, label %23, label %37

23:                                               ; preds = %19
  %24 = load %struct.wiphy*, %struct.wiphy** %3, align 8
  %25 = load i32, i32* %4, align 4
  %26 = load %struct.wiphy*, %struct.wiphy** %3, align 8
  %27 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %5, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @handle_band(%struct.wiphy* %24, i32 %25, i32 %32)
  br label %34

34:                                               ; preds = %23
  %35 = load i32, i32* %5, align 4
  %36 = add i32 %35, 1
  store i32 %36, i32* %5, align 4
  br label %19

37:                                               ; preds = %19
  %38 = load %struct.wiphy*, %struct.wiphy** %3, align 8
  %39 = call i32 @reg_process_beacons(%struct.wiphy* %38)
  %40 = load %struct.wiphy*, %struct.wiphy** %3, align 8
  %41 = call i32 @reg_process_ht_flags(%struct.wiphy* %40)
  %42 = load %struct.wiphy*, %struct.wiphy** %3, align 8
  %43 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %42, i32 0, i32 0
  %44 = load i32 (%struct.wiphy*, %struct.regulatory_request*)*, i32 (%struct.wiphy*, %struct.regulatory_request*)** %43, align 8
  %45 = icmp ne i32 (%struct.wiphy*, %struct.regulatory_request*)* %44, null
  br i1 %45, label %46, label %54

46:                                               ; preds = %37
  %47 = load %struct.wiphy*, %struct.wiphy** %3, align 8
  %48 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %47, i32 0, i32 0
  %49 = load i32 (%struct.wiphy*, %struct.regulatory_request*)*, i32 (%struct.wiphy*, %struct.regulatory_request*)** %48, align 8
  %50 = load %struct.wiphy*, %struct.wiphy** %3, align 8
  %51 = load %struct.regulatory_request.0*, %struct.regulatory_request.0** %6, align 8
  %52 = bitcast %struct.regulatory_request.0* %51 to %struct.regulatory_request*
  %53 = call i32 %49(%struct.wiphy* %50, %struct.regulatory_request* %52)
  br label %54

54:                                               ; preds = %12, %46, %37
  ret void
}

declare dso_local %struct.regulatory_request.0* @get_last_request(...) #1

declare dso_local i64 @ignore_reg_update(%struct.wiphy*, i32) #1

declare dso_local %struct.TYPE_2__* @get_cfg80211_regdom(...) #1

declare dso_local i32 @handle_band(%struct.wiphy*, i32, i32) #1

declare dso_local i32 @reg_process_beacons(%struct.wiphy*) #1

declare dso_local i32 @reg_process_ht_flags(%struct.wiphy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
