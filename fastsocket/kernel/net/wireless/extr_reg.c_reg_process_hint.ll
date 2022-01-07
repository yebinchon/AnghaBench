; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_reg.c_reg_process_hint.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_reg.c_reg_process_hint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulatory_request = type { i64, i32 }
%struct.wiphy = type { i32 }

@WIPHY_IDX_INVALID = common dso_local global i64 0, align 8
@NL80211_REGDOM_SET_BY_DRIVER = common dso_local global i32 0, align 4
@WIPHY_FLAG_STRICT_REGULATORY = common dso_local global i32 0, align 4
@NL80211_REGDOM_SET_BY_USER = common dso_local global i32 0, align 4
@reg_timeout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.regulatory_request*, i32)* @reg_process_hint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reg_process_hint(%struct.regulatory_request* %0, i32 %1) #0 {
  %3 = alloca %struct.regulatory_request*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.wiphy*, align 8
  store %struct.regulatory_request* %0, %struct.regulatory_request** %3, align 8
  store i32 %1, i32* %4, align 4
  store %struct.wiphy* null, %struct.wiphy** %5, align 8
  %6 = load %struct.regulatory_request*, %struct.regulatory_request** %3, align 8
  %7 = getelementptr inbounds %struct.regulatory_request, %struct.regulatory_request* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 8
  %9 = icmp ne i32 %8, 0
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  %12 = call i64 @WARN_ON(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  br label %63

15:                                               ; preds = %2
  %16 = load %struct.regulatory_request*, %struct.regulatory_request** %3, align 8
  %17 = getelementptr inbounds %struct.regulatory_request, %struct.regulatory_request* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @WIPHY_IDX_INVALID, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %15
  %22 = load %struct.regulatory_request*, %struct.regulatory_request** %3, align 8
  %23 = getelementptr inbounds %struct.regulatory_request, %struct.regulatory_request* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = call %struct.wiphy* @wiphy_idx_to_wiphy(i64 %24)
  store %struct.wiphy* %25, %struct.wiphy** %5, align 8
  br label %26

26:                                               ; preds = %21, %15
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @NL80211_REGDOM_SET_BY_DRIVER, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %36

30:                                               ; preds = %26
  %31 = load %struct.wiphy*, %struct.wiphy** %5, align 8
  %32 = icmp ne %struct.wiphy* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %30
  %34 = load %struct.regulatory_request*, %struct.regulatory_request** %3, align 8
  %35 = call i32 @kfree(%struct.regulatory_request* %34)
  br label %63

36:                                               ; preds = %30, %26
  %37 = load %struct.wiphy*, %struct.wiphy** %5, align 8
  %38 = load %struct.regulatory_request*, %struct.regulatory_request** %3, align 8
  %39 = call i32 @__regulatory_hint(%struct.wiphy* %37, %struct.regulatory_request* %38)
  switch i32 %39, label %55 [
    i32 128, label %40
  ]

40:                                               ; preds = %36
  %41 = load %struct.wiphy*, %struct.wiphy** %5, align 8
  %42 = icmp ne %struct.wiphy* %41, null
  br i1 %42, label %43, label %54

43:                                               ; preds = %40
  %44 = load %struct.wiphy*, %struct.wiphy** %5, align 8
  %45 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @WIPHY_FLAG_STRICT_REGULATORY, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %43
  %51 = load %struct.wiphy*, %struct.wiphy** %5, align 8
  %52 = load i32, i32* %4, align 4
  %53 = call i32 @wiphy_update_regulatory(%struct.wiphy* %51, i32 %52)
  br label %54

54:                                               ; preds = %50, %43, %40
  br label %63

55:                                               ; preds = %36
  %56 = load i32, i32* %4, align 4
  %57 = load i32, i32* @NL80211_REGDOM_SET_BY_USER, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %55
  %60 = call i32 @msecs_to_jiffies(i32 3142)
  %61 = call i32 @schedule_delayed_work(i32* @reg_timeout, i32 %60)
  br label %62

62:                                               ; preds = %59, %55
  br label %63

63:                                               ; preds = %14, %33, %62, %54
  ret void
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local %struct.wiphy* @wiphy_idx_to_wiphy(i64) #1

declare dso_local i32 @kfree(%struct.regulatory_request*) #1

declare dso_local i32 @__regulatory_hint(%struct.wiphy*, %struct.regulatory_request*) #1

declare dso_local i32 @wiphy_update_regulatory(%struct.wiphy*, i32) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
