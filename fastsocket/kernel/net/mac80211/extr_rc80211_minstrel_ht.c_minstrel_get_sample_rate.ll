; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_rc80211_minstrel_ht.c_minstrel_get_sample_rate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_rc80211_minstrel_ht.c_minstrel_get_sample_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.minstrel_priv = type { i32 }
%struct.minstrel_ht_sta = type { i64, i64, i32, i32, i32, i64, i32, i32, %struct.minstrel_mcs_group_data* }
%struct.minstrel_mcs_group_data = type { i64, i64, %struct.minstrel_rate_stats* }
%struct.minstrel_rate_stats = type { i64, i32 }

@sample_table = common dso_local global i32** null, align 8
@MCS_GROUP_RATES = common dso_local global i32 0, align 4
@minstrel_mcs_groups = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.minstrel_priv*, %struct.minstrel_ht_sta*)* @minstrel_get_sample_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @minstrel_get_sample_rate(%struct.minstrel_priv* %0, %struct.minstrel_ht_sta* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.minstrel_priv*, align 8
  %5 = alloca %struct.minstrel_ht_sta*, align 8
  %6 = alloca %struct.minstrel_rate_stats*, align 8
  %7 = alloca %struct.minstrel_mcs_group_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.minstrel_priv* %0, %struct.minstrel_priv** %4, align 8
  store %struct.minstrel_ht_sta* %1, %struct.minstrel_ht_sta** %5, align 8
  store i32 0, i32* %10, align 4
  %11 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %5, align 8
  %12 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp sgt i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %2
  %16 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %5, align 8
  %17 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = add nsw i64 %18, -1
  store i64 %19, i64* %17, align 8
  store i32 -1, i32* %3, align 4
  br label %134

20:                                               ; preds = %2
  %21 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %5, align 8
  %22 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %21, i32 0, i32 6
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %20
  store i32 -1, i32* %3, align 4
  br label %134

26:                                               ; preds = %20
  %27 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %5, align 8
  %28 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %27, i32 0, i32 8
  %29 = load %struct.minstrel_mcs_group_data*, %struct.minstrel_mcs_group_data** %28, align 8
  %30 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %5, align 8
  %31 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds %struct.minstrel_mcs_group_data, %struct.minstrel_mcs_group_data* %29, i64 %32
  store %struct.minstrel_mcs_group_data* %33, %struct.minstrel_mcs_group_data** %7, align 8
  %34 = load i32**, i32*** @sample_table, align 8
  %35 = load %struct.minstrel_mcs_group_data*, %struct.minstrel_mcs_group_data** %7, align 8
  %36 = getelementptr inbounds %struct.minstrel_mcs_group_data, %struct.minstrel_mcs_group_data* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds i32*, i32** %34, i64 %37
  %39 = load i32*, i32** %38, align 8
  %40 = load %struct.minstrel_mcs_group_data*, %struct.minstrel_mcs_group_data** %7, align 8
  %41 = getelementptr inbounds %struct.minstrel_mcs_group_data, %struct.minstrel_mcs_group_data* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds i32, i32* %39, i64 %42
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %10, align 4
  %45 = load %struct.minstrel_mcs_group_data*, %struct.minstrel_mcs_group_data** %7, align 8
  %46 = getelementptr inbounds %struct.minstrel_mcs_group_data, %struct.minstrel_mcs_group_data* %45, i32 0, i32 2
  %47 = load %struct.minstrel_rate_stats*, %struct.minstrel_rate_stats** %46, align 8
  %48 = load i32, i32* %10, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.minstrel_rate_stats, %struct.minstrel_rate_stats* %47, i64 %49
  store %struct.minstrel_rate_stats* %50, %struct.minstrel_rate_stats** %6, align 8
  %51 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %5, align 8
  %52 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %9, align 4
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* @MCS_GROUP_RATES, align 4
  %57 = mul i32 %55, %56
  %58 = load i32, i32* %10, align 4
  %59 = add i32 %58, %57
  store i32 %59, i32* %10, align 4
  %60 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %5, align 8
  %61 = call i32 @minstrel_next_sample_idx(%struct.minstrel_ht_sta* %60)
  %62 = load i32, i32* %10, align 4
  %63 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %5, align 8
  %64 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = icmp eq i32 %62, %65
  br i1 %66, label %79, label %67

67:                                               ; preds = %26
  %68 = load i32, i32* %10, align 4
  %69 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %5, align 8
  %70 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = icmp eq i32 %68, %71
  br i1 %72, label %79, label %73

73:                                               ; preds = %67
  %74 = load i32, i32* %10, align 4
  %75 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %5, align 8
  %76 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %75, i32 0, i32 4
  %77 = load i32, i32* %76, align 8
  %78 = icmp eq i32 %74, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %73, %67, %26
  store i32 -1, i32* %3, align 4
  br label %134

80:                                               ; preds = %73
  %81 = load %struct.minstrel_rate_stats*, %struct.minstrel_rate_stats** %6, align 8
  %82 = getelementptr inbounds %struct.minstrel_rate_stats, %struct.minstrel_rate_stats* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = call i64 @MINSTREL_FRAC(i32 95, i32 100)
  %85 = icmp sgt i64 %83, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %80
  store i32 -1, i32* %3, align 4
  br label %134

87:                                               ; preds = %80
  %88 = load i32, i32* %10, align 4
  %89 = call i32 @minstrel_get_duration(i32 %88)
  store i32 %89, i32* %8, align 4
  %90 = load i32, i32* %8, align 4
  %91 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %5, align 8
  %92 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @minstrel_get_duration(i32 %93)
  %95 = icmp uge i32 %90, %94
  br i1 %95, label %96, label %128

96:                                               ; preds = %87
  %97 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %5, align 8
  %98 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %97, i32 0, i32 5
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** @minstrel_mcs_groups, align 8
  %101 = load i32, i32* %9, align 4
  %102 = zext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = icmp slt i64 %99, %105
  br i1 %106, label %114, label %107

107:                                              ; preds = %96
  %108 = load i32, i32* %8, align 4
  %109 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %5, align 8
  %110 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %109, i32 0, i32 4
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @minstrel_get_duration(i32 %111)
  %113 = icmp uge i32 %108, %112
  br i1 %113, label %114, label %128

114:                                              ; preds = %107, %96
  %115 = load %struct.minstrel_rate_stats*, %struct.minstrel_rate_stats** %6, align 8
  %116 = getelementptr inbounds %struct.minstrel_rate_stats, %struct.minstrel_rate_stats* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  %118 = icmp slt i32 %117, 20
  br i1 %118, label %119, label %120

119:                                              ; preds = %114
  store i32 -1, i32* %3, align 4
  br label %134

120:                                              ; preds = %114
  %121 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %5, align 8
  %122 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %121, i32 0, i32 7
  %123 = load i32, i32* %122, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %122, align 4
  %125 = icmp sgt i32 %123, 2
  br i1 %125, label %126, label %127

126:                                              ; preds = %120
  store i32 -1, i32* %3, align 4
  br label %134

127:                                              ; preds = %120
  br label %128

128:                                              ; preds = %127, %107, %87
  %129 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %5, align 8
  %130 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %129, i32 0, i32 6
  %131 = load i32, i32* %130, align 8
  %132 = add nsw i32 %131, -1
  store i32 %132, i32* %130, align 8
  %133 = load i32, i32* %10, align 4
  store i32 %133, i32* %3, align 4
  br label %134

134:                                              ; preds = %128, %126, %119, %86, %79, %25, %15
  %135 = load i32, i32* %3, align 4
  ret i32 %135
}

declare dso_local i32 @minstrel_next_sample_idx(%struct.minstrel_ht_sta*) #1

declare dso_local i64 @MINSTREL_FRAC(i32, i32) #1

declare dso_local i32 @minstrel_get_duration(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
