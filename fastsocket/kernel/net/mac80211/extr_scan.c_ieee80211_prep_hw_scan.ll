; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_scan.c_ieee80211_prep_hw_scan.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_scan.c_ieee80211_prep_hw_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_local = type { i64, %struct.TYPE_4__*, i32, %struct.cfg80211_scan_request* }
%struct.TYPE_4__ = type { i32, i32, i32, i64, %struct.TYPE_3__** }
%struct.TYPE_3__ = type { i32 }
%struct.cfg80211_scan_request = type { i32, i32, i32*, i32, i32, %struct.TYPE_3__** }

@IEEE80211_NUM_BANDS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_local*)* @ieee80211_prep_hw_scan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee80211_prep_hw_scan(%struct.ieee80211_local* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ieee80211_local*, align 8
  %4 = alloca %struct.cfg80211_scan_request*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ieee80211_local* %0, %struct.ieee80211_local** %3, align 8
  %9 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %10 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %9, i32 0, i32 3
  %11 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %10, align 8
  store %struct.cfg80211_scan_request* %11, %struct.cfg80211_scan_request** %4, align 8
  br label %12

12:                                               ; preds = %69, %1
  %13 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %14 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @IEEE80211_NUM_BANDS, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %12
  store i32 0, i32* %2, align 4
  br label %116

19:                                               ; preds = %12
  %20 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %21 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %5, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %6, align 4
  br label %24

24:                                               ; preds = %61, %19
  %25 = load i32, i32* %6, align 4
  %26 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %4, align 8
  %27 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp slt i32 %25, %28
  br i1 %29, label %30, label %64

30:                                               ; preds = %24
  %31 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %4, align 8
  %32 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %31, i32 0, i32 5
  %33 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %32, align 8
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %33, i64 %35
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %5, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %60

42:                                               ; preds = %30
  %43 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %4, align 8
  %44 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %43, i32 0, i32 5
  %45 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %44, align 8
  %46 = load i32, i32* %6, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %45, i64 %47
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %51 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %50, i32 0, i32 1
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 4
  %54 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %53, align 8
  %55 = load i32, i32* %8, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %54, i64 %56
  store %struct.TYPE_3__* %49, %struct.TYPE_3__** %57, align 8
  %58 = load i32, i32* %8, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %8, align 4
  br label %60

60:                                               ; preds = %42, %30
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %6, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %6, align 4
  br label %24

64:                                               ; preds = %24
  %65 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %66 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = add nsw i64 %67, 1
  store i64 %68, i64* %66, align 8
  br label %69

69:                                               ; preds = %64
  %70 = load i32, i32* %8, align 4
  %71 = icmp ne i32 %70, 0
  %72 = xor i1 %71, true
  br i1 %72, label %12, label %73

73:                                               ; preds = %69
  %74 = load i32, i32* %8, align 4
  %75 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %76 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %75, i32 0, i32 1
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  store i32 %74, i32* %78, align 8
  %79 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %80 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %81 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %80, i32 0, i32 1
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 3
  %84 = load i64, i64* %83, align 8
  %85 = inttoptr i64 %84 to i32*
  %86 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %87 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %4, align 8
  %90 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %89, i32 0, i32 4
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %4, align 8
  %93 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* %5, align 4
  %96 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %4, align 8
  %97 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %96, i32 0, i32 2
  %98 = load i32*, i32** %97, align 8
  %99 = load i32, i32* %5, align 4
  %100 = zext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @ieee80211_build_preq_ies(%struct.ieee80211_local* %79, i32* %85, i32 %88, i32 %91, i32 %94, i32 %95, i32 %102, i32 0)
  store i32 %103, i32* %7, align 4
  %104 = load i32, i32* %7, align 4
  %105 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %106 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %105, i32 0, i32 1
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 1
  store i32 %104, i32* %108, align 4
  %109 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %4, align 8
  %110 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %113 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %112, i32 0, i32 1
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 2
  store i32 %111, i32* %115, align 8
  store i32 1, i32* %2, align 4
  br label %116

116:                                              ; preds = %73, %18
  %117 = load i32, i32* %2, align 4
  ret i32 %117
}

declare dso_local i32 @ieee80211_build_preq_ies(%struct.ieee80211_local*, i32*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
