; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_iface.c_ieee80211_set_default_queues.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_iface.c_ieee80211_set_default_queues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sub_if_data = type { %struct.TYPE_3__, %struct.ieee80211_local* }
%struct.TYPE_3__ = type { i32*, i8* }
%struct.ieee80211_local = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@IEEE80211_NUM_ACS = common dso_local global i32 0, align 4
@IEEE80211_HW_QUEUE_CONTROL = common dso_local global i32 0, align 4
@IEEE80211_INVAL_HW_QUEUE = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_sub_if_data*)* @ieee80211_set_default_queues to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ieee80211_set_default_queues(%struct.ieee80211_sub_if_data* %0) #0 {
  %2 = alloca %struct.ieee80211_sub_if_data*, align 8
  %3 = alloca %struct.ieee80211_local*, align 8
  %4 = alloca i32, align 4
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %2, align 8
  %5 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %2, align 8
  %6 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %5, i32 0, i32 1
  %7 = load %struct.ieee80211_local*, %struct.ieee80211_local** %6, align 8
  store %struct.ieee80211_local* %7, %struct.ieee80211_local** %3, align 8
  store i32 0, i32* %4, align 4
  br label %8

8:                                                ; preds = %56, %1
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @IEEE80211_NUM_ACS, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %59

12:                                               ; preds = %8
  %13 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %14 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @IEEE80211_HW_QUEUE_CONTROL, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %30

20:                                               ; preds = %12
  %21 = load i8*, i8** @IEEE80211_INVAL_HW_QUEUE, align 8
  %22 = ptrtoint i8* %21 to i32
  %23 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %2, align 8
  %24 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %4, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  store i32 %22, i32* %29, align 4
  br label %55

30:                                               ; preds = %12
  %31 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %32 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @IEEE80211_NUM_ACS, align 4
  %36 = icmp sge i32 %34, %35
  br i1 %36, label %37, label %46

37:                                               ; preds = %30
  %38 = load i32, i32* %4, align 4
  %39 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %2, align 8
  %40 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %4, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  store i32 %38, i32* %45, align 4
  br label %54

46:                                               ; preds = %30
  %47 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %2, align 8
  %48 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %4, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  store i32 0, i32* %53, align 4
  br label %54

54:                                               ; preds = %46, %37
  br label %55

55:                                               ; preds = %54, %20
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %4, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %4, align 4
  br label %8

59:                                               ; preds = %8
  %60 = load i8*, i8** @IEEE80211_INVAL_HW_QUEUE, align 8
  %61 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %2, align 8
  %62 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 1
  store i8* %60, i8** %63, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
