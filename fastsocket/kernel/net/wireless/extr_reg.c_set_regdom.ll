; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_reg.c_set_regdom.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_reg.c_set_regdom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_regdomain = type { i32 }
%struct.regulatory_request = type { i32, i32 }

@reg_mutex = common dso_local global i32 0, align 4
@EALREADY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @set_regdom(%struct.ieee80211_regdomain* %0) #0 {
  %2 = alloca %struct.ieee80211_regdomain*, align 8
  %3 = alloca %struct.regulatory_request*, align 8
  %4 = alloca i32, align 4
  store %struct.ieee80211_regdomain* %0, %struct.ieee80211_regdomain** %2, align 8
  %5 = call i32 @mutex_lock(i32* @reg_mutex)
  %6 = call %struct.regulatory_request* (...) @get_last_request()
  store %struct.regulatory_request* %6, %struct.regulatory_request** %3, align 8
  %7 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %2, align 8
  %8 = call i32 @__set_regdom(%struct.ieee80211_regdomain* %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %21

11:                                               ; preds = %1
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @EALREADY, align 4
  %14 = sub nsw i32 0, %13
  %15 = icmp eq i32 %12, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %11
  %17 = call i32 (...) @reg_set_request_processed()
  br label %18

18:                                               ; preds = %16, %11
  %19 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %2, align 8
  %20 = call i32 @kfree(%struct.ieee80211_regdomain* %19)
  br label %48

21:                                               ; preds = %1
  %22 = load %struct.regulatory_request*, %struct.regulatory_request** %3, align 8
  %23 = getelementptr inbounds %struct.regulatory_request, %struct.regulatory_request* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %21
  %27 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %2, align 8
  %28 = call %struct.ieee80211_regdomain* (...) @get_cfg80211_regdom()
  %29 = icmp ne %struct.ieee80211_regdomain* %27, %28
  br label %30

30:                                               ; preds = %26, %21
  %31 = phi i1 [ false, %21 ], [ %29, %26 ]
  %32 = zext i1 %31 to i32
  %33 = call i64 @WARN_ON(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %48

38:                                               ; preds = %30
  %39 = load %struct.regulatory_request*, %struct.regulatory_request** %3, align 8
  %40 = getelementptr inbounds %struct.regulatory_request, %struct.regulatory_request* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @update_all_wiphy_regulatory(i32 %41)
  %43 = call %struct.ieee80211_regdomain* (...) @get_cfg80211_regdom()
  %44 = call i32 @print_regdomain(%struct.ieee80211_regdomain* %43)
  %45 = load %struct.regulatory_request*, %struct.regulatory_request** %3, align 8
  %46 = call i32 @nl80211_send_reg_change_event(%struct.regulatory_request* %45)
  %47 = call i32 (...) @reg_set_request_processed()
  br label %48

48:                                               ; preds = %38, %35, %18
  %49 = call i32 @mutex_unlock(i32* @reg_mutex)
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.regulatory_request* @get_last_request(...) #1

declare dso_local i32 @__set_regdom(%struct.ieee80211_regdomain*) #1

declare dso_local i32 @reg_set_request_processed(...) #1

declare dso_local i32 @kfree(%struct.ieee80211_regdomain*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local %struct.ieee80211_regdomain* @get_cfg80211_regdom(...) #1

declare dso_local i32 @update_all_wiphy_regulatory(i32) #1

declare dso_local i32 @print_regdomain(%struct.ieee80211_regdomain*) #1

declare dso_local i32 @nl80211_send_reg_change_event(%struct.regulatory_request*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
