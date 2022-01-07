; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_util.c_ieee80211_sta_get_rates.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_util.c_ieee80211_sta_get_rates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_local = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.ieee80211_supported_band** }
%struct.ieee80211_supported_band = type { i64, %struct.ieee80211_rate* }
%struct.ieee80211_rate = type { i32 }
%struct.ieee802_11_elems = type { i32, i32, i32*, i32* }

@BSS_MEMBERSHIP_SELECTOR_HT_PHY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ieee80211_sta_get_rates(%struct.ieee80211_local* %0, %struct.ieee802_11_elems* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ieee80211_local*, align 8
  %7 = alloca %struct.ieee802_11_elems*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.ieee80211_supported_band*, align 8
  %11 = alloca %struct.ieee80211_rate*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.ieee80211_local* %0, %struct.ieee80211_local** %6, align 8
  store %struct.ieee802_11_elems* %1, %struct.ieee802_11_elems** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %19 = load %struct.ieee80211_local*, %struct.ieee80211_local** %6, align 8
  %20 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load %struct.ieee80211_supported_band**, %struct.ieee80211_supported_band*** %23, align 8
  %25 = load i32, i32* %8, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %24, i64 %26
  %28 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %27, align 8
  store %struct.ieee80211_supported_band* %28, %struct.ieee80211_supported_band** %10, align 8
  %29 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %10, align 8
  %30 = icmp ne %struct.ieee80211_supported_band* %29, null
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  %33 = call i64 @WARN_ON(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %4
  store i32 1, i32* %5, align 4
  br label %145

36:                                               ; preds = %4
  %37 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %10, align 8
  %38 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %37, i32 0, i32 1
  %39 = load %struct.ieee80211_rate*, %struct.ieee80211_rate** %38, align 8
  store %struct.ieee80211_rate* %39, %struct.ieee80211_rate** %11, align 8
  %40 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %10, align 8
  %41 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  store i64 %42, i64* %12, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %43

43:                                               ; preds = %140, %36
  %44 = load i32, i32* %14, align 4
  %45 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %7, align 8
  %46 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %7, align 8
  %49 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = add nsw i32 %47, %50
  %52 = icmp slt i32 %44, %51
  br i1 %52, label %53, label %143

53:                                               ; preds = %43
  store i32 0, i32* %16, align 4
  %54 = load i32, i32* %14, align 4
  %55 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %7, align 8
  %56 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp slt i32 %54, %57
  br i1 %58, label %59, label %67

59:                                               ; preds = %53
  %60 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %7, align 8
  %61 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %60, i32 0, i32 2
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %14, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* %16, align 4
  br label %85

67:                                               ; preds = %53
  %68 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %7, align 8
  %69 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %68, i32 0, i32 3
  %70 = load i32*, i32** %69, align 8
  %71 = icmp ne i32* %70, null
  br i1 %71, label %72, label %84

72:                                               ; preds = %67
  %73 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %7, align 8
  %74 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %73, i32 0, i32 3
  %75 = load i32*, i32** %74, align 8
  %76 = load i32, i32* %14, align 4
  %77 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %7, align 8
  %78 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = sub nsw i32 %76, %79
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %75, i64 %81
  %83 = load i32, i32* %82, align 4
  store i32 %83, i32* %16, align 4
  br label %84

84:                                               ; preds = %72, %67
  br label %85

85:                                               ; preds = %84, %59
  %86 = load i32, i32* %16, align 4
  %87 = and i32 %86, 127
  %88 = mul nsw i32 5, %87
  store i32 %88, i32* %17, align 4
  %89 = load i32, i32* %16, align 4
  %90 = and i32 %89, 128
  %91 = icmp ne i32 %90, 0
  %92 = xor i1 %91, true
  %93 = xor i1 %92, true
  %94 = zext i1 %93 to i32
  store i32 %94, i32* %18, align 4
  %95 = load i32, i32* %18, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %103

97:                                               ; preds = %85
  %98 = load i32, i32* %16, align 4
  %99 = and i32 %98, 127
  %100 = load i32, i32* @BSS_MEMBERSHIP_SELECTOR_HT_PHY, align 4
  %101 = icmp eq i32 %99, %100
  br i1 %101, label %102, label %103

102:                                              ; preds = %97
  br label %140

103:                                              ; preds = %97, %85
  store i32 0, i32* %15, align 4
  br label %104

104:                                              ; preds = %136, %103
  %105 = load i32, i32* %15, align 4
  %106 = sext i32 %105 to i64
  %107 = load i64, i64* %12, align 8
  %108 = icmp ult i64 %106, %107
  br i1 %108, label %109, label %139

109:                                              ; preds = %104
  %110 = load %struct.ieee80211_rate*, %struct.ieee80211_rate** %11, align 8
  %111 = load i32, i32* %15, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.ieee80211_rate, %struct.ieee80211_rate* %110, i64 %112
  %114 = getelementptr inbounds %struct.ieee80211_rate, %struct.ieee80211_rate* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* %17, align 4
  %117 = icmp eq i32 %115, %116
  br i1 %117, label %118, label %135

118:                                              ; preds = %109
  %119 = load i32, i32* %15, align 4
  %120 = call i32 @BIT(i32 %119)
  %121 = load i32, i32* %13, align 4
  %122 = or i32 %121, %120
  store i32 %122, i32* %13, align 4
  %123 = load i32*, i32** %9, align 8
  %124 = icmp ne i32* %123, null
  br i1 %124, label %125, label %134

125:                                              ; preds = %118
  %126 = load i32, i32* %18, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %134

128:                                              ; preds = %125
  %129 = load i32, i32* %15, align 4
  %130 = call i32 @BIT(i32 %129)
  %131 = load i32*, i32** %9, align 8
  %132 = load i32, i32* %131, align 4
  %133 = or i32 %132, %130
  store i32 %133, i32* %131, align 4
  br label %134

134:                                              ; preds = %128, %125, %118
  br label %135

135:                                              ; preds = %134, %109
  br label %136

136:                                              ; preds = %135
  %137 = load i32, i32* %15, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %15, align 4
  br label %104

139:                                              ; preds = %104
  br label %140

140:                                              ; preds = %139, %102
  %141 = load i32, i32* %14, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %14, align 4
  br label %43

143:                                              ; preds = %43
  %144 = load i32, i32* %13, align 4
  store i32 %144, i32* %5, align 4
  br label %145

145:                                              ; preds = %143, %35
  %146 = load i32, i32* %5, align 4
  ret i32 %146
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
