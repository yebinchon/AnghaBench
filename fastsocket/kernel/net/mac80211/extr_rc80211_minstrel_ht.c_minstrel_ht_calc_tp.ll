; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_rc80211_minstrel_ht.c_minstrel_ht_calc_tp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_rc80211_minstrel_ht.c_minstrel_ht_calc_tp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64* }
%struct.minstrel_ht_sta = type { i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.minstrel_rate_stats* }
%struct.minstrel_rate_stats = type { i32, i32 }

@MINSTREL_CCK_GROUP = common dso_local global i32 0, align 4
@minstrel_mcs_groups = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.minstrel_ht_sta*, i32, i32)* @minstrel_ht_calc_tp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @minstrel_ht_calc_tp(%struct.minstrel_ht_sta* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.minstrel_ht_sta*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.minstrel_rate_stats*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.minstrel_ht_sta* %0, %struct.minstrel_ht_sta** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %8, align 4
  %11 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %4, align 8
  %12 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %11, i32 0, i32 2
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load %struct.minstrel_rate_stats*, %struct.minstrel_rate_stats** %17, align 8
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.minstrel_rate_stats, %struct.minstrel_rate_stats* %18, i64 %20
  store %struct.minstrel_rate_stats* %21, %struct.minstrel_rate_stats** %7, align 8
  %22 = load %struct.minstrel_rate_stats*, %struct.minstrel_rate_stats** %7, align 8
  %23 = getelementptr inbounds %struct.minstrel_rate_stats, %struct.minstrel_rate_stats* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %10, align 4
  %26 = call i32 @MINSTREL_FRAC(i32 1, i32 10)
  %27 = icmp ult i32 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %3
  %29 = load %struct.minstrel_rate_stats*, %struct.minstrel_rate_stats** %7, align 8
  %30 = getelementptr inbounds %struct.minstrel_rate_stats, %struct.minstrel_rate_stats* %29, i32 0, i32 1
  store i32 0, i32* %30, align 4
  br label %77

31:                                               ; preds = %3
  %32 = load i32, i32* %10, align 4
  %33 = call i32 @MINSTREL_FRAC(i32 9, i32 10)
  %34 = icmp ugt i32 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  %36 = call i32 @MINSTREL_FRAC(i32 9, i32 10)
  store i32 %36, i32* %10, align 4
  br label %37

37:                                               ; preds = %35, %31
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @MINSTREL_CCK_GROUP, align 4
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %41, label %51

41:                                               ; preds = %37
  %42 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %4, align 8
  %43 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = mul nsw i32 1000, %44
  %46 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %4, align 8
  %47 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @MINSTREL_TRUNC(i32 %48)
  %50 = sdiv i32 %45, %49
  store i32 %50, i32* %8, align 4
  br label %51

51:                                               ; preds = %41, %37
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** @minstrel_mcs_groups, align 8
  %53 = load i32, i32* %5, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i64*, i64** %56, align 8
  %58 = load i32, i32* %6, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i64, i64* %57, i64 %59
  %61 = load i64, i64* %60, align 8
  %62 = load i32, i32* %8, align 4
  %63 = zext i32 %62 to i64
  %64 = add nsw i64 %63, %61
  %65 = trunc i64 %64 to i32
  store i32 %65, i32* %8, align 4
  %66 = load %struct.minstrel_rate_stats*, %struct.minstrel_rate_stats** %7, align 8
  %67 = getelementptr inbounds %struct.minstrel_rate_stats, %struct.minstrel_rate_stats* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = mul i32 %68, 1000
  %70 = load i32, i32* %8, align 4
  %71 = udiv i32 %69, %70
  %72 = mul i32 1000000, %71
  store i32 %72, i32* %9, align 4
  %73 = load i32, i32* %9, align 4
  %74 = call i32 @MINSTREL_TRUNC(i32 %73)
  %75 = load %struct.minstrel_rate_stats*, %struct.minstrel_rate_stats** %7, align 8
  %76 = getelementptr inbounds %struct.minstrel_rate_stats, %struct.minstrel_rate_stats* %75, i32 0, i32 1
  store i32 %74, i32* %76, align 4
  br label %77

77:                                               ; preds = %51, %28
  ret void
}

declare dso_local i32 @MINSTREL_FRAC(i32, i32) #1

declare dso_local i32 @MINSTREL_TRUNC(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
