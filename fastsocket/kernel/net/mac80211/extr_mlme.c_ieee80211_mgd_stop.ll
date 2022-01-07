; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_mlme.c_ieee80211_mgd_stop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_mlme.c_ieee80211_mgd_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sub_if_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ieee80211_if_managed }
%struct.ieee80211_if_managed = type { i32, i32, i64, i64, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ieee80211_mgd_stop(%struct.ieee80211_sub_if_data* %0) #0 {
  %2 = alloca %struct.ieee80211_sub_if_data*, align 8
  %3 = alloca %struct.ieee80211_if_managed*, align 8
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %2, align 8
  %4 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %2, align 8
  %5 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  store %struct.ieee80211_if_managed* %6, %struct.ieee80211_if_managed** %3, align 8
  %7 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %3, align 8
  %8 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %7, i32 0, i32 8
  %9 = call i32 @cancel_work_sync(i32* %8)
  %10 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %3, align 8
  %11 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %10, i32 0, i32 7
  %12 = call i32 @cancel_work_sync(i32* %11)
  %13 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %3, align 8
  %14 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %13, i32 0, i32 6
  %15 = call i32 @cancel_work_sync(i32* %14)
  %16 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %3, align 8
  %17 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %16, i32 0, i32 5
  %18 = call i32 @cancel_work_sync(i32* %17)
  %19 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %3, align 8
  %20 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %19, i32 0, i32 4
  %21 = call i32 @cancel_work_sync(i32* %20)
  %22 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %3, align 8
  %23 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %22, i32 0, i32 0
  %24 = call i32 @mutex_lock(i32* %23)
  %25 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %3, align 8
  %26 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %25, i32 0, i32 3
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %1
  %30 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %2, align 8
  %31 = call i32 @ieee80211_destroy_assoc_data(%struct.ieee80211_sub_if_data* %30, i32 0)
  br label %32

32:                                               ; preds = %29, %1
  %33 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %3, align 8
  %34 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %2, align 8
  %39 = call i32 @ieee80211_destroy_auth_data(%struct.ieee80211_sub_if_data* %38, i32 0)
  br label %40

40:                                               ; preds = %37, %32
  %41 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %3, align 8
  %42 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %41, i32 0, i32 1
  %43 = call i32 @del_timer_sync(i32* %42)
  %44 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %3, align 8
  %45 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %44, i32 0, i32 0
  %46 = call i32 @mutex_unlock(i32* %45)
  ret void
}

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ieee80211_destroy_assoc_data(%struct.ieee80211_sub_if_data*, i32) #1

declare dso_local i32 @ieee80211_destroy_auth_data(%struct.ieee80211_sub_if_data*, i32) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
