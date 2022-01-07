; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_rc80211_minstrel_ht.c_minstrel_calc_rate_ewma.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_rc80211_minstrel_ht.c_minstrel_calc_rate_ewma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.minstrel_rate_stats = type { i64, i64, i64, i64, i64, i64, i32, i32, i32 }

@EWMA_LEVEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.minstrel_rate_stats*)* @minstrel_calc_rate_ewma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @minstrel_calc_rate_ewma(%struct.minstrel_rate_stats* %0) #0 {
  %2 = alloca %struct.minstrel_rate_stats*, align 8
  store %struct.minstrel_rate_stats* %0, %struct.minstrel_rate_stats** %2, align 8
  %3 = load %struct.minstrel_rate_stats*, %struct.minstrel_rate_stats** %2, align 8
  %4 = getelementptr inbounds %struct.minstrel_rate_stats, %struct.minstrel_rate_stats* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = icmp sgt i64 %5, 0
  %7 = zext i1 %6 to i32
  %8 = call i64 @unlikely(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %60

10:                                               ; preds = %1
  %11 = load %struct.minstrel_rate_stats*, %struct.minstrel_rate_stats** %2, align 8
  %12 = getelementptr inbounds %struct.minstrel_rate_stats, %struct.minstrel_rate_stats* %11, i32 0, i32 5
  store i64 0, i64* %12, align 8
  %13 = load %struct.minstrel_rate_stats*, %struct.minstrel_rate_stats** %2, align 8
  %14 = getelementptr inbounds %struct.minstrel_rate_stats, %struct.minstrel_rate_stats* %13, i32 0, i32 3
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.minstrel_rate_stats*, %struct.minstrel_rate_stats** %2, align 8
  %17 = getelementptr inbounds %struct.minstrel_rate_stats, %struct.minstrel_rate_stats* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = call i32 @MINSTREL_FRAC(i64 %15, i64 %18)
  %20 = load %struct.minstrel_rate_stats*, %struct.minstrel_rate_stats** %2, align 8
  %21 = getelementptr inbounds %struct.minstrel_rate_stats, %struct.minstrel_rate_stats* %20, i32 0, i32 7
  store i32 %19, i32* %21, align 4
  %22 = load %struct.minstrel_rate_stats*, %struct.minstrel_rate_stats** %2, align 8
  %23 = getelementptr inbounds %struct.minstrel_rate_stats, %struct.minstrel_rate_stats* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %10
  %27 = load %struct.minstrel_rate_stats*, %struct.minstrel_rate_stats** %2, align 8
  %28 = getelementptr inbounds %struct.minstrel_rate_stats, %struct.minstrel_rate_stats* %27, i32 0, i32 7
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.minstrel_rate_stats*, %struct.minstrel_rate_stats** %2, align 8
  %31 = getelementptr inbounds %struct.minstrel_rate_stats, %struct.minstrel_rate_stats* %30, i32 0, i32 8
  store i32 %29, i32* %31, align 8
  br label %43

32:                                               ; preds = %10
  %33 = load %struct.minstrel_rate_stats*, %struct.minstrel_rate_stats** %2, align 8
  %34 = getelementptr inbounds %struct.minstrel_rate_stats, %struct.minstrel_rate_stats* %33, i32 0, i32 8
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.minstrel_rate_stats*, %struct.minstrel_rate_stats** %2, align 8
  %37 = getelementptr inbounds %struct.minstrel_rate_stats, %struct.minstrel_rate_stats* %36, i32 0, i32 7
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @EWMA_LEVEL, align 4
  %40 = call i32 @minstrel_ewma(i32 %35, i32 %38, i32 %39)
  %41 = load %struct.minstrel_rate_stats*, %struct.minstrel_rate_stats** %2, align 8
  %42 = getelementptr inbounds %struct.minstrel_rate_stats, %struct.minstrel_rate_stats* %41, i32 0, i32 8
  store i32 %40, i32* %42, align 8
  br label %43

43:                                               ; preds = %32, %26
  %44 = load %struct.minstrel_rate_stats*, %struct.minstrel_rate_stats** %2, align 8
  %45 = getelementptr inbounds %struct.minstrel_rate_stats, %struct.minstrel_rate_stats* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.minstrel_rate_stats*, %struct.minstrel_rate_stats** %2, align 8
  %48 = getelementptr inbounds %struct.minstrel_rate_stats, %struct.minstrel_rate_stats* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = add nsw i64 %49, %46
  store i64 %50, i64* %48, align 8
  %51 = load %struct.minstrel_rate_stats*, %struct.minstrel_rate_stats** %2, align 8
  %52 = getelementptr inbounds %struct.minstrel_rate_stats, %struct.minstrel_rate_stats* %51, i32 0, i32 3
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.minstrel_rate_stats*, %struct.minstrel_rate_stats** %2, align 8
  %55 = getelementptr inbounds %struct.minstrel_rate_stats, %struct.minstrel_rate_stats* %54, i32 0, i32 6
  %56 = load i32, i32* %55, align 8
  %57 = sext i32 %56 to i64
  %58 = add nsw i64 %57, %53
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %55, align 8
  br label %65

60:                                               ; preds = %1
  %61 = load %struct.minstrel_rate_stats*, %struct.minstrel_rate_stats** %2, align 8
  %62 = getelementptr inbounds %struct.minstrel_rate_stats, %struct.minstrel_rate_stats* %61, i32 0, i32 5
  %63 = load i64, i64* %62, align 8
  %64 = add nsw i64 %63, 1
  store i64 %64, i64* %62, align 8
  br label %65

65:                                               ; preds = %60, %43
  %66 = load %struct.minstrel_rate_stats*, %struct.minstrel_rate_stats** %2, align 8
  %67 = getelementptr inbounds %struct.minstrel_rate_stats, %struct.minstrel_rate_stats* %66, i32 0, i32 3
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.minstrel_rate_stats*, %struct.minstrel_rate_stats** %2, align 8
  %70 = getelementptr inbounds %struct.minstrel_rate_stats, %struct.minstrel_rate_stats* %69, i32 0, i32 4
  store i64 %68, i64* %70, align 8
  %71 = load %struct.minstrel_rate_stats*, %struct.minstrel_rate_stats** %2, align 8
  %72 = getelementptr inbounds %struct.minstrel_rate_stats, %struct.minstrel_rate_stats* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.minstrel_rate_stats*, %struct.minstrel_rate_stats** %2, align 8
  %75 = getelementptr inbounds %struct.minstrel_rate_stats, %struct.minstrel_rate_stats* %74, i32 0, i32 2
  store i64 %73, i64* %75, align 8
  %76 = load %struct.minstrel_rate_stats*, %struct.minstrel_rate_stats** %2, align 8
  %77 = getelementptr inbounds %struct.minstrel_rate_stats, %struct.minstrel_rate_stats* %76, i32 0, i32 3
  store i64 0, i64* %77, align 8
  %78 = load %struct.minstrel_rate_stats*, %struct.minstrel_rate_stats** %2, align 8
  %79 = getelementptr inbounds %struct.minstrel_rate_stats, %struct.minstrel_rate_stats* %78, i32 0, i32 0
  store i64 0, i64* %79, align 8
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @MINSTREL_FRAC(i64, i64) #1

declare dso_local i32 @minstrel_ewma(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
