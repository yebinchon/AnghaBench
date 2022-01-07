; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_sta_info.c_sta_info_hash_del.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_sta_info.c_sta_info_hash_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_local = type { i32, i32* }
%struct.sta_info = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_local*, %struct.sta_info*)* @sta_info_hash_del to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sta_info_hash_del(%struct.ieee80211_local* %0, %struct.sta_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ieee80211_local*, align 8
  %5 = alloca %struct.sta_info*, align 8
  %6 = alloca %struct.sta_info*, align 8
  store %struct.ieee80211_local* %0, %struct.ieee80211_local** %4, align 8
  store %struct.sta_info* %1, %struct.sta_info** %5, align 8
  %7 = load %struct.ieee80211_local*, %struct.ieee80211_local** %4, align 8
  %8 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %7, i32 0, i32 1
  %9 = load i32*, i32** %8, align 8
  %10 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %11 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @STA_HASH(i32 %13)
  %15 = getelementptr inbounds i32, i32* %9, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.ieee80211_local*, %struct.ieee80211_local** %4, align 8
  %18 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %17, i32 0, i32 0
  %19 = call i32 @lockdep_is_held(i32* %18)
  %20 = call %struct.sta_info* @rcu_dereference_protected(i32 %16, i32 %19)
  store %struct.sta_info* %20, %struct.sta_info** %6, align 8
  %21 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %22 = icmp ne %struct.sta_info* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %2
  %24 = load i32, i32* @ENOENT, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %86

26:                                               ; preds = %2
  %27 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %28 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %29 = icmp eq %struct.sta_info* %27, %28
  br i1 %29, label %30, label %45

30:                                               ; preds = %26
  %31 = load %struct.ieee80211_local*, %struct.ieee80211_local** %4, align 8
  %32 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %35 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @STA_HASH(i32 %37)
  %39 = getelementptr inbounds i32, i32* %33, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %42 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @rcu_assign_pointer(i32 %40, i32 %43)
  store i32 0, i32* %3, align 4
  br label %86

45:                                               ; preds = %26
  br label %46

46:                                               ; preds = %61, %45
  %47 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %48 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call %struct.sta_info* @rcu_access_pointer(i32 %49)
  %51 = icmp ne %struct.sta_info* %50, null
  br i1 %51, label %52, label %59

52:                                               ; preds = %46
  %53 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %54 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call %struct.sta_info* @rcu_access_pointer(i32 %55)
  %57 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %58 = icmp ne %struct.sta_info* %56, %57
  br label %59

59:                                               ; preds = %52, %46
  %60 = phi i1 [ false, %46 ], [ %58, %52 ]
  br i1 %60, label %61, label %69

61:                                               ; preds = %59
  %62 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %63 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.ieee80211_local*, %struct.ieee80211_local** %4, align 8
  %66 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %65, i32 0, i32 0
  %67 = call i32 @lockdep_is_held(i32* %66)
  %68 = call %struct.sta_info* @rcu_dereference_protected(i32 %64, i32 %67)
  store %struct.sta_info* %68, %struct.sta_info** %6, align 8
  br label %46

69:                                               ; preds = %59
  %70 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %71 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call %struct.sta_info* @rcu_access_pointer(i32 %72)
  %74 = icmp ne %struct.sta_info* %73, null
  br i1 %74, label %75, label %83

75:                                               ; preds = %69
  %76 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %77 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %80 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @rcu_assign_pointer(i32 %78, i32 %81)
  store i32 0, i32* %3, align 4
  br label %86

83:                                               ; preds = %69
  %84 = load i32, i32* @ENOENT, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %3, align 4
  br label %86

86:                                               ; preds = %83, %75, %30, %23
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare dso_local %struct.sta_info* @rcu_dereference_protected(i32, i32) #1

declare dso_local i64 @STA_HASH(i32) #1

declare dso_local i32 @lockdep_is_held(i32*) #1

declare dso_local i32 @rcu_assign_pointer(i32, i32) #1

declare dso_local %struct.sta_info* @rcu_access_pointer(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
