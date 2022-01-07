; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_chan.c_cfg80211_chandef_compatible.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_chan.c_cfg80211_chandef_compatible.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfg80211_chan_def = type { i64, i64 }

@NL80211_CHAN_WIDTH_20_NOHT = common dso_local global i64 0, align 8
@NL80211_CHAN_WIDTH_20 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cfg80211_chan_def* @cfg80211_chandef_compatible(%struct.cfg80211_chan_def* %0, %struct.cfg80211_chan_def* %1) #0 {
  %3 = alloca %struct.cfg80211_chan_def*, align 8
  %4 = alloca %struct.cfg80211_chan_def*, align 8
  %5 = alloca %struct.cfg80211_chan_def*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.cfg80211_chan_def* %0, %struct.cfg80211_chan_def** %4, align 8
  store %struct.cfg80211_chan_def* %1, %struct.cfg80211_chan_def** %5, align 8
  %10 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %4, align 8
  %11 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %5, align 8
  %12 = call i64 @cfg80211_chandef_identical(%struct.cfg80211_chan_def* %10, %struct.cfg80211_chan_def* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %4, align 8
  store %struct.cfg80211_chan_def* %15, %struct.cfg80211_chan_def** %3, align 8
  br label %104

16:                                               ; preds = %2
  %17 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %4, align 8
  %18 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %5, align 8
  %21 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %19, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %16
  store %struct.cfg80211_chan_def* null, %struct.cfg80211_chan_def** %3, align 8
  br label %104

25:                                               ; preds = %16
  %26 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %4, align 8
  %27 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %5, align 8
  %30 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %28, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %25
  store %struct.cfg80211_chan_def* null, %struct.cfg80211_chan_def** %3, align 8
  br label %104

34:                                               ; preds = %25
  %35 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %4, align 8
  %36 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @NL80211_CHAN_WIDTH_20_NOHT, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %46, label %40

40:                                               ; preds = %34
  %41 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %4, align 8
  %42 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @NL80211_CHAN_WIDTH_20, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %40, %34
  %47 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %5, align 8
  store %struct.cfg80211_chan_def* %47, %struct.cfg80211_chan_def** %3, align 8
  br label %104

48:                                               ; preds = %40
  %49 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %5, align 8
  %50 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @NL80211_CHAN_WIDTH_20_NOHT, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %60, label %54

54:                                               ; preds = %48
  %55 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %5, align 8
  %56 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @NL80211_CHAN_WIDTH_20, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %54, %48
  %61 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %4, align 8
  store %struct.cfg80211_chan_def* %61, %struct.cfg80211_chan_def** %3, align 8
  br label %104

62:                                               ; preds = %54
  %63 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %4, align 8
  %64 = call i32 @chandef_primary_freqs(%struct.cfg80211_chan_def* %63, i64* %6, i64* %7)
  %65 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %5, align 8
  %66 = call i32 @chandef_primary_freqs(%struct.cfg80211_chan_def* %65, i64* %8, i64* %9)
  %67 = load i64, i64* %6, align 8
  %68 = load i64, i64* %8, align 8
  %69 = icmp ne i64 %67, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %62
  store %struct.cfg80211_chan_def* null, %struct.cfg80211_chan_def** %3, align 8
  br label %104

71:                                               ; preds = %62
  %72 = load i64, i64* %7, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %78, label %74

74:                                               ; preds = %71
  %75 = load i64, i64* %9, align 8
  %76 = icmp ne i64 %75, 0
  %77 = xor i1 %76, true
  br label %78

78:                                               ; preds = %74, %71
  %79 = phi i1 [ false, %71 ], [ %77, %74 ]
  %80 = zext i1 %79 to i32
  %81 = call i32 @WARN_ON(i32 %80)
  %82 = load i64, i64* %7, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %92

84:                                               ; preds = %78
  %85 = load i64, i64* %9, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %84
  %88 = load i64, i64* %7, align 8
  %89 = load i64, i64* %9, align 8
  %90 = icmp ne i64 %88, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %87
  store %struct.cfg80211_chan_def* null, %struct.cfg80211_chan_def** %3, align 8
  br label %104

92:                                               ; preds = %87, %84, %78
  %93 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %4, align 8
  %94 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %5, align 8
  %97 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = icmp sgt i64 %95, %98
  br i1 %99, label %100, label %102

100:                                              ; preds = %92
  %101 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %4, align 8
  store %struct.cfg80211_chan_def* %101, %struct.cfg80211_chan_def** %3, align 8
  br label %104

102:                                              ; preds = %92
  %103 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %5, align 8
  store %struct.cfg80211_chan_def* %103, %struct.cfg80211_chan_def** %3, align 8
  br label %104

104:                                              ; preds = %102, %100, %91, %70, %60, %46, %33, %24, %14
  %105 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %3, align 8
  ret %struct.cfg80211_chan_def* %105
}

declare dso_local i64 @cfg80211_chandef_identical(%struct.cfg80211_chan_def*, %struct.cfg80211_chan_def*) #1

declare dso_local i32 @chandef_primary_freqs(%struct.cfg80211_chan_def*, i64*, i64*) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
