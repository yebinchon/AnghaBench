; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_rc80211_minstrel_ht.c_minstrel_ht_check_cck_shortpreamble.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_rc80211_minstrel_ht.c_minstrel_ht_check_cck_shortpreamble.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.minstrel_priv = type { i32 }
%struct.minstrel_ht_sta = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@MINSTREL_CCK_GROUP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.minstrel_priv*, %struct.minstrel_ht_sta*, i32)* @minstrel_ht_check_cck_shortpreamble to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @minstrel_ht_check_cck_shortpreamble(%struct.minstrel_priv* %0, %struct.minstrel_ht_sta* %1, i32 %2) #0 {
  %4 = alloca %struct.minstrel_priv*, align 8
  %5 = alloca %struct.minstrel_ht_sta*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.minstrel_priv* %0, %struct.minstrel_priv** %4, align 8
  store %struct.minstrel_ht_sta* %1, %struct.minstrel_ht_sta** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %5, align 8
  %9 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %8, i32 0, i32 1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = load i64, i64* @MINSTREL_CCK_GROUP, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i64 %11
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %3
  %18 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %5, align 8
  %19 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %17, %3
  br label %52

23:                                               ; preds = %17
  %24 = load i32, i32* %7, align 4
  %25 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %5, align 8
  %26 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* %6, align 4
  %29 = mul nsw i32 %28, 4
  %30 = shl i32 %27, %29
  %31 = and i32 %24, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %23
  br label %52

34:                                               ; preds = %23
  %35 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %5, align 8
  %36 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %5, align 8
  %39 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = shl i32 %40, 4
  %42 = or i32 %37, %41
  %43 = load i32, i32* %7, align 4
  %44 = xor i32 %43, %42
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %7, align 4
  %46 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %5, align 8
  %47 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %46, i32 0, i32 1
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = load i64, i64* @MINSTREL_CCK_GROUP, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  store i32 %45, i32* %51, align 4
  br label %52

52:                                               ; preds = %34, %33, %22
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
