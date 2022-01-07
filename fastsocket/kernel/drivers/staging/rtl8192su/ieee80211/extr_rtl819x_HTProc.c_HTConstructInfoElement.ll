; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/ieee80211/extr_rtl819x_HTProc.c_HTConstructInfoElement.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/ieee80211/extr_rtl819x_HTProc.c_HTConstructInfoElement.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_device = type { i64, %struct.TYPE_4__, %struct.TYPE_5__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32*, i64, i64, i64, i64, i64, i64, i32, i64, i64, i64, i32 }

@IEEE80211_DL_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [67 x i8] c"posHTInfo or pHTInfoEle can't be null in HTConstructInfoElement()\0A\00", align 1
@IW_MODE_ADHOC = common dso_local global i64 0, align 8
@IW_MODE_MASTER = common dso_local global i64 0, align 8
@HT_EXTCHNL_OFFSET_NO_EXT = common dso_local global i32 0, align 4
@HT_EXTCHNL_OFFSET_UPPER = common dso_local global i32 0, align 4
@HT_EXTCHNL_OFFSET_LOWER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @HTConstructInfoElement(%struct.ieee80211_device* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.ieee80211_device*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  store %struct.ieee80211_device* %0, %struct.ieee80211_device** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %12 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %11, i32 0, i32 2
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  store %struct.TYPE_5__* %13, %struct.TYPE_5__** %9, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = bitcast i32* %14 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %15, %struct.TYPE_6__** %10, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %4
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %20 = icmp eq %struct.TYPE_6__* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %18, %4
  %22 = load i32, i32* @IEEE80211_DL_ERR, align 4
  %23 = call i32 @IEEE80211_DEBUG(i32 %22, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0))
  br label %105

24:                                               ; preds = %18
  %25 = load i32*, i32** %6, align 8
  %26 = load i32*, i32** %7, align 8
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @memset(i32* %25, i32 0, i32 %27)
  %29 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %30 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @IW_MODE_ADHOC, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %40, label %34

34:                                               ; preds = %24
  %35 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %36 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @IW_MODE_MASTER, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %102

40:                                               ; preds = %34, %24
  %41 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %42 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %40
  %52 = load i32, i32* @HT_EXTCHNL_OFFSET_NO_EXT, align 4
  br label %65

53:                                               ; preds = %40
  %54 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %55 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp sle i32 %57, 6
  br i1 %58, label %59, label %61

59:                                               ; preds = %53
  %60 = load i32, i32* @HT_EXTCHNL_OFFSET_UPPER, align 4
  br label %63

61:                                               ; preds = %53
  %62 = load i32, i32* @HT_EXTCHNL_OFFSET_LOWER, align 4
  br label %63

63:                                               ; preds = %61, %59
  %64 = phi i32 [ %60, %59 ], [ %62, %61 ]
  br label %65

65:                                               ; preds = %63, %51
  %66 = phi i32 [ %52, %51 ], [ %64, %63 ]
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 13
  store i32 %66, i32* %68, align 8
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 1
  store i32 %71, i32* %73, align 4
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 12
  store i64 0, i64* %75, align 8
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 11
  store i64 0, i64* %77, align 8
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 10
  store i64 0, i64* %79, align 8
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 9
  store i32 %82, i32* %84, align 8
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 8
  store i64 0, i64* %86, align 8
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 7
  store i64 0, i64* %88, align 8
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 6
  store i64 0, i64* %90, align 8
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 5
  store i64 0, i64* %92, align 8
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 4
  store i64 0, i64* %94, align 8
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 3
  store i64 0, i64* %96, align 8
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 2
  %99 = load i32*, i32** %98, align 8
  %100 = call i32 @memset(i32* %99, i32 0, i32 16)
  %101 = load i32*, i32** %7, align 8
  store i32 24, i32* %101, align 4
  br label %104

102:                                              ; preds = %34
  %103 = load i32*, i32** %7, align 8
  store i32 0, i32* %103, align 4
  br label %104

104:                                              ; preds = %102, %65
  br label %105

105:                                              ; preds = %104, %21
  ret void
}

declare dso_local i32 @IEEE80211_DEBUG(i32, i8*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
