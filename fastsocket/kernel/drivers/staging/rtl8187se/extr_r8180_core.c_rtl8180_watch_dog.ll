; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/extr_r8180_core.c_rtl8180_watch_dog.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/extr_r8180_core.c_rtl8180_watch_dog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.r8180_priv = type { i64, i64, i32, %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i64, i64, i32, i64, i64, i32, i32 }
%struct.TYPE_3__ = type { i64, i64*, i32, i32, i32, i32 }

@IW_MODE_ADHOC = common dso_local global i64 0, align 8
@IEEE80211_NOLINK = common dso_local global i64 0, align 8
@eRfOn = common dso_local global i64 0, align 8
@IEEE80211_LINKED = common dso_local global i64 0, align 8
@IW_MODE_INFRA = common dso_local global i64 0, align 8
@IEEE80211_ASSOCIATING = common dso_local global i64 0, align 8
@POWER_PROFILE_AC = common dso_local global i64 0, align 8
@POWER_PROFILE_BATTERY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl8180_watch_dog(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.r8180_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %9 = load %struct.net_device*, %struct.net_device** %2, align 8
  %10 = call %struct.r8180_priv* @ieee80211_priv(%struct.net_device* %9)
  store %struct.r8180_priv* %10, %struct.r8180_priv** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i64 0, i64* %6, align 8
  store i64 0, i64* %7, align 8
  store i64 0, i64* %8, align 8
  %11 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %12 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %11, i32 0, i32 3
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %50

17:                                               ; preds = %1
  %18 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %19 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %18, i32 0, i32 3
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @IW_MODE_ADHOC, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %49

25:                                               ; preds = %17
  %26 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %27 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %26, i32 0, i32 3
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @IEEE80211_NOLINK, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %49

33:                                               ; preds = %25
  %34 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %35 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %34, i32 0, i32 3
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %33
  %41 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %42 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @eRfOn, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %40
  %47 = load %struct.net_device*, %struct.net_device** %2, align 8
  %48 = call i32 @IPSEnter(%struct.net_device* %47)
  br label %49

49:                                               ; preds = %46, %40, %33, %25, %17
  br label %50

50:                                               ; preds = %49, %1
  %51 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %52 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %51, i32 0, i32 3
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @IEEE80211_LINKED, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %135

58:                                               ; preds = %50
  %59 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %60 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %59, i32 0, i32 3
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @IW_MODE_INFRA, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %135

66:                                               ; preds = %58
  %67 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %68 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %67, i32 0, i32 4
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 5
  %70 = load i32, i32* %69, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %69, align 4
  %72 = sext i32 %70 to i64
  %73 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %74 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %73, i32 0, i32 4
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = urem i64 %72, %76
  store i64 %77, i64* %7, align 8
  %78 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %79 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %78, i32 0, i32 3
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 4
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %84 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %83, i32 0, i32 3
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 5
  %87 = load i64, i64* %86, align 8
  %88 = add nsw i64 %82, %87
  %89 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %90 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %89, i32 0, i32 4
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 1
  %92 = load i64*, i64** %91, align 8
  %93 = load i64, i64* %7, align 8
  %94 = getelementptr inbounds i64, i64* %92, i64 %93
  store i64 %88, i64* %94, align 8
  store i64 0, i64* %8, align 8
  br label %95

95:                                               ; preds = %112, %66
  %96 = load i64, i64* %8, align 8
  %97 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %98 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %97, i32 0, i32 4
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = icmp ult i64 %96, %100
  br i1 %101, label %102, label %115

102:                                              ; preds = %95
  %103 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %104 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %103, i32 0, i32 4
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 1
  %106 = load i64*, i64** %105, align 8
  %107 = load i64, i64* %8, align 8
  %108 = getelementptr inbounds i64, i64* %106, i64 %107
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* %6, align 8
  %111 = add nsw i64 %110, %109
  store i64 %111, i64* %6, align 8
  br label %112

112:                                              ; preds = %102
  %113 = load i64, i64* %8, align 8
  %114 = add i64 %113, 1
  store i64 %114, i64* %8, align 8
  br label %95

115:                                              ; preds = %95
  %116 = load i64, i64* %6, align 8
  %117 = icmp eq i64 %116, 0
  br i1 %117, label %118, label %134

118:                                              ; preds = %115
  %119 = load i64, i64* @IEEE80211_ASSOCIATING, align 8
  %120 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %121 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %120, i32 0, i32 3
  %122 = load %struct.TYPE_4__*, %struct.TYPE_4__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 2
  store i64 %119, i64* %123, align 8
  %124 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %125 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %124, i32 0, i32 3
  %126 = load %struct.TYPE_4__*, %struct.TYPE_4__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 7
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %130 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %129, i32 0, i32 3
  %131 = load %struct.TYPE_4__*, %struct.TYPE_4__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 6
  %133 = call i32 @queue_work(i32 %128, i32* %132)
  br label %134

134:                                              ; preds = %118, %115
  br label %135

135:                                              ; preds = %134, %58, %50
  %136 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %137 = call i32 @MgntLinkKeepAlive(%struct.r8180_priv* %136)
  %138 = load i32, i32* %5, align 4
  %139 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %140 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %139, i32 0, i32 4
  %141 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %140, i32 0, i32 4
  store i32 %138, i32* %141, align 8
  %142 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %143 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %142, i32 0, i32 4
  %144 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %143, i32 0, i32 2
  store i32 0, i32* %144, align 8
  %145 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %146 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %145, i32 0, i32 4
  %147 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %146, i32 0, i32 3
  store i32 0, i32* %147, align 4
  %148 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %149 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %148, i32 0, i32 3
  %150 = load %struct.TYPE_4__*, %struct.TYPE_4__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 4
  store i64 0, i64* %151, align 8
  %152 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %153 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %152, i32 0, i32 3
  %154 = load %struct.TYPE_4__*, %struct.TYPE_4__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i32 0, i32 5
  store i64 0, i64* %155, align 8
  ret void
}

declare dso_local %struct.r8180_priv* @ieee80211_priv(%struct.net_device*) #1

declare dso_local i32 @IPSEnter(%struct.net_device*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @MgntLinkKeepAlive(%struct.r8180_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
