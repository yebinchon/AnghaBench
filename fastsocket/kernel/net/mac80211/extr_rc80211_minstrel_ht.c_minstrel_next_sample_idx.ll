; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_rc80211_minstrel_ht.c_minstrel_next_sample_idx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_rc80211_minstrel_ht.c_minstrel_next_sample_idx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.minstrel_ht_sta = type { i64, %struct.minstrel_mcs_group_data* }
%struct.minstrel_mcs_group_data = type { i64, i64, i32 }

@minstrel_mcs_groups = common dso_local global i32 0, align 4
@MCS_GROUP_RATES = common dso_local global i64 0, align 8
@sample_table = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.minstrel_ht_sta*)* @minstrel_next_sample_idx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @minstrel_next_sample_idx(%struct.minstrel_ht_sta* %0) #0 {
  %2 = alloca %struct.minstrel_ht_sta*, align 8
  %3 = alloca %struct.minstrel_mcs_group_data*, align 8
  store %struct.minstrel_ht_sta* %0, %struct.minstrel_ht_sta** %2, align 8
  br label %4

4:                                                ; preds = %26, %1
  %5 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %2, align 8
  %6 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, 1
  store i64 %8, i64* %6, align 8
  %9 = load i32, i32* @minstrel_mcs_groups, align 4
  %10 = call i64 @ARRAY_SIZE(i32 %9)
  %11 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %2, align 8
  %12 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = urem i64 %13, %10
  store i64 %14, i64* %12, align 8
  %15 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %2, align 8
  %16 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %15, i32 0, i32 1
  %17 = load %struct.minstrel_mcs_group_data*, %struct.minstrel_mcs_group_data** %16, align 8
  %18 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %2, align 8
  %19 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds %struct.minstrel_mcs_group_data, %struct.minstrel_mcs_group_data* %17, i64 %20
  store %struct.minstrel_mcs_group_data* %21, %struct.minstrel_mcs_group_data** %3, align 8
  %22 = load %struct.minstrel_mcs_group_data*, %struct.minstrel_mcs_group_data** %3, align 8
  %23 = getelementptr inbounds %struct.minstrel_mcs_group_data, %struct.minstrel_mcs_group_data* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %4
  br label %4

27:                                               ; preds = %4
  %28 = load %struct.minstrel_mcs_group_data*, %struct.minstrel_mcs_group_data** %3, align 8
  %29 = getelementptr inbounds %struct.minstrel_mcs_group_data, %struct.minstrel_mcs_group_data* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = add nsw i64 %30, 1
  store i64 %31, i64* %29, align 8
  %32 = load i64, i64* @MCS_GROUP_RATES, align 8
  %33 = icmp sge i64 %31, %32
  br i1 %33, label %34, label %48

34:                                               ; preds = %27
  %35 = load %struct.minstrel_mcs_group_data*, %struct.minstrel_mcs_group_data** %3, align 8
  %36 = getelementptr inbounds %struct.minstrel_mcs_group_data, %struct.minstrel_mcs_group_data* %35, i32 0, i32 0
  store i64 0, i64* %36, align 8
  %37 = load %struct.minstrel_mcs_group_data*, %struct.minstrel_mcs_group_data** %3, align 8
  %38 = getelementptr inbounds %struct.minstrel_mcs_group_data, %struct.minstrel_mcs_group_data* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = add i64 %39, 1
  store i64 %40, i64* %38, align 8
  %41 = load i32, i32* @sample_table, align 4
  %42 = call i64 @ARRAY_SIZE(i32 %41)
  %43 = icmp uge i64 %40, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %34
  %45 = load %struct.minstrel_mcs_group_data*, %struct.minstrel_mcs_group_data** %3, align 8
  %46 = getelementptr inbounds %struct.minstrel_mcs_group_data, %struct.minstrel_mcs_group_data* %45, i32 0, i32 1
  store i64 0, i64* %46, align 8
  br label %47

47:                                               ; preds = %44, %34
  br label %48

48:                                               ; preds = %47, %27
  br label %49

49:                                               ; preds = %48
  ret void
}

declare dso_local i64 @ARRAY_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
