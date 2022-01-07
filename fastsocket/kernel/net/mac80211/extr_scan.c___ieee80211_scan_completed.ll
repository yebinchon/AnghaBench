; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_scan.c___ieee80211_scan_completed.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_scan.c___ieee80211_scan_completed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.ieee80211_local = type { i32*, i64, i32, i32*, i32*, i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, i32, i32)* @__ieee80211_scan_completed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__ieee80211_scan_completed(%struct.ieee80211_hw* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ieee80211_local*, align 8
  %8 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %10 = call %struct.ieee80211_local* @hw_to_local(%struct.ieee80211_hw* %9)
  store %struct.ieee80211_local* %10, %struct.ieee80211_local** %7, align 8
  %11 = load %struct.ieee80211_local*, %struct.ieee80211_local** %7, align 8
  %12 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %11, i32 0, i32 6
  %13 = call i32 @lockdep_assert_held(i32* %12)
  %14 = load %struct.ieee80211_local*, %struct.ieee80211_local** %7, align 8
  %15 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  br label %22

22:                                               ; preds = %18, %3
  %23 = phi i1 [ false, %3 ], [ %21, %18 ]
  %24 = zext i1 %23 to i32
  %25 = call i64 @WARN_ON(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  store i32 1, i32* %5, align 4
  br label %28

28:                                               ; preds = %27, %22
  %29 = load %struct.ieee80211_local*, %struct.ieee80211_local** %7, align 8
  %30 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %29, i32 0, i32 3
  %31 = load i32*, i32** %30, align 8
  %32 = icmp ne i32* %31, null
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  %35 = call i64 @WARN_ON(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %28
  br label %118

38:                                               ; preds = %28
  %39 = load i32, i32* %6, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %65

41:                                               ; preds = %38
  %42 = load i32, i32* %5, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %65, label %44

44:                                               ; preds = %41
  %45 = load %struct.ieee80211_local*, %struct.ieee80211_local** %7, align 8
  %46 = call i64 @ieee80211_prep_hw_scan(%struct.ieee80211_local* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %65

48:                                               ; preds = %44
  %49 = load %struct.ieee80211_local*, %struct.ieee80211_local** %7, align 8
  %50 = load %struct.ieee80211_local*, %struct.ieee80211_local** %7, align 8
  %51 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.ieee80211_local*, %struct.ieee80211_local** %7, align 8
  %54 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %53, i32 0, i32 6
  %55 = call i32 @lockdep_is_held(i32* %54)
  %56 = call i32 @rcu_dereference_protected(i32 %52, i32 %55)
  %57 = load %struct.ieee80211_local*, %struct.ieee80211_local** %7, align 8
  %58 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %57, i32 0, i32 5
  %59 = load i32*, i32** %58, align 8
  %60 = call i32 @drv_hw_scan(%struct.ieee80211_local* %49, i32 %56, i32* %59)
  store i32 %60, i32* %8, align 4
  %61 = load i32, i32* %8, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %48
  br label %118

64:                                               ; preds = %48
  br label %65

65:                                               ; preds = %64, %44, %41, %38
  %66 = load %struct.ieee80211_local*, %struct.ieee80211_local** %7, align 8
  %67 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %66, i32 0, i32 5
  %68 = load i32*, i32** %67, align 8
  %69 = call i32 @kfree(i32* %68)
  %70 = load %struct.ieee80211_local*, %struct.ieee80211_local** %7, align 8
  %71 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %70, i32 0, i32 5
  store i32* null, i32** %71, align 8
  %72 = load %struct.ieee80211_local*, %struct.ieee80211_local** %7, align 8
  %73 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %72, i32 0, i32 3
  %74 = load i32*, i32** %73, align 8
  %75 = load %struct.ieee80211_local*, %struct.ieee80211_local** %7, align 8
  %76 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %75, i32 0, i32 4
  %77 = load i32*, i32** %76, align 8
  %78 = icmp ne i32* %74, %77
  br i1 %78, label %79, label %85

79:                                               ; preds = %65
  %80 = load %struct.ieee80211_local*, %struct.ieee80211_local** %7, align 8
  %81 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %80, i32 0, i32 3
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* %5, align 4
  %84 = call i32 @cfg80211_scan_done(i32* %82, i32 %83)
  br label %85

85:                                               ; preds = %79, %65
  %86 = load %struct.ieee80211_local*, %struct.ieee80211_local** %7, align 8
  %87 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %86, i32 0, i32 3
  store i32* null, i32** %87, align 8
  %88 = load %struct.ieee80211_local*, %struct.ieee80211_local** %7, align 8
  %89 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @rcu_assign_pointer(i32 %90, i32* null)
  %92 = load %struct.ieee80211_local*, %struct.ieee80211_local** %7, align 8
  %93 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %92, i32 0, i32 1
  store i64 0, i64* %93, align 8
  %94 = load %struct.ieee80211_local*, %struct.ieee80211_local** %7, align 8
  %95 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %94, i32 0, i32 0
  store i32* null, i32** %95, align 8
  %96 = load %struct.ieee80211_local*, %struct.ieee80211_local** %7, align 8
  %97 = call i32 @ieee80211_hw_config(%struct.ieee80211_local* %96, i32 0)
  %98 = load i32, i32* %6, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %107, label %100

100:                                              ; preds = %85
  %101 = load %struct.ieee80211_local*, %struct.ieee80211_local** %7, align 8
  %102 = call i32 @ieee80211_configure_filter(%struct.ieee80211_local* %101)
  %103 = load %struct.ieee80211_local*, %struct.ieee80211_local** %7, align 8
  %104 = call i32 @drv_sw_scan_complete(%struct.ieee80211_local* %103)
  %105 = load %struct.ieee80211_local*, %struct.ieee80211_local** %7, align 8
  %106 = call i32 @ieee80211_offchannel_return(%struct.ieee80211_local* %105)
  br label %107

107:                                              ; preds = %100, %85
  %108 = load %struct.ieee80211_local*, %struct.ieee80211_local** %7, align 8
  %109 = call i32 @ieee80211_recalc_idle(%struct.ieee80211_local* %108)
  %110 = load %struct.ieee80211_local*, %struct.ieee80211_local** %7, align 8
  %111 = call i32 @ieee80211_mlme_notify_scan_completed(%struct.ieee80211_local* %110)
  %112 = load %struct.ieee80211_local*, %struct.ieee80211_local** %7, align 8
  %113 = call i32 @ieee80211_ibss_notify_scan_completed(%struct.ieee80211_local* %112)
  %114 = load %struct.ieee80211_local*, %struct.ieee80211_local** %7, align 8
  %115 = call i32 @ieee80211_mesh_notify_scan_completed(%struct.ieee80211_local* %114)
  %116 = load %struct.ieee80211_local*, %struct.ieee80211_local** %7, align 8
  %117 = call i32 @ieee80211_start_next_roc(%struct.ieee80211_local* %116)
  br label %118

118:                                              ; preds = %107, %63, %37
  ret void
}

declare dso_local %struct.ieee80211_local* @hw_to_local(%struct.ieee80211_hw*) #1

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i64 @ieee80211_prep_hw_scan(%struct.ieee80211_local*) #1

declare dso_local i32 @drv_hw_scan(%struct.ieee80211_local*, i32, i32*) #1

declare dso_local i32 @rcu_dereference_protected(i32, i32) #1

declare dso_local i32 @lockdep_is_held(i32*) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @cfg80211_scan_done(i32*, i32) #1

declare dso_local i32 @rcu_assign_pointer(i32, i32*) #1

declare dso_local i32 @ieee80211_hw_config(%struct.ieee80211_local*, i32) #1

declare dso_local i32 @ieee80211_configure_filter(%struct.ieee80211_local*) #1

declare dso_local i32 @drv_sw_scan_complete(%struct.ieee80211_local*) #1

declare dso_local i32 @ieee80211_offchannel_return(%struct.ieee80211_local*) #1

declare dso_local i32 @ieee80211_recalc_idle(%struct.ieee80211_local*) #1

declare dso_local i32 @ieee80211_mlme_notify_scan_completed(%struct.ieee80211_local*) #1

declare dso_local i32 @ieee80211_ibss_notify_scan_completed(%struct.ieee80211_local*) #1

declare dso_local i32 @ieee80211_mesh_notify_scan_completed(%struct.ieee80211_local*) #1

declare dso_local i32 @ieee80211_start_next_roc(%struct.ieee80211_local*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
