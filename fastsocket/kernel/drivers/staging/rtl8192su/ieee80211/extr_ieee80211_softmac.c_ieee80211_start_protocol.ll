; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/ieee80211/extr_ieee80211_softmac.c_ieee80211_start_protocol.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/ieee80211/extr_ieee80211_softmac.c_ieee80211_start_protocol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_device = type { i32, i32*, i32*, i64, i64, i64*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i16, i32 }
%struct.TYPE_4__ = type { i32* }

@MAX_CHANNEL_NUMBER = common dso_local global i16 0, align 2
@IW_MODE_INFRA = common dso_local global i64 0, align 8
@IW_MODE_ADHOC = common dso_local global i64 0, align 8
@IW_MODE_MASTER = common dso_local global i64 0, align 8
@IW_MODE_MONITOR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ieee80211_start_protocol(%struct.ieee80211_device* %0) #0 {
  %2 = alloca %struct.ieee80211_device*, align 8
  %3 = alloca i16, align 2
  %4 = alloca i32, align 4
  store %struct.ieee80211_device* %0, %struct.ieee80211_device** %2, align 8
  store i16 0, i16* %3, align 2
  store i32 0, i32* %4, align 4
  %5 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %6 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %123

10:                                               ; preds = %1
  %11 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %12 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %11, i32 0, i32 0
  store i32 1, i32* %12, align 8
  %13 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %14 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %13, i32 0, i32 6
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i16, i16* %15, align 8
  %17 = sext i16 %16 to i32
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %46

19:                                               ; preds = %10
  br label %20

20:                                               ; preds = %30, %19
  %21 = load i16, i16* %3, align 2
  %22 = add i16 %21, 1
  store i16 %22, i16* %3, align 2
  %23 = load i16, i16* %3, align 2
  %24 = sext i16 %23 to i32
  %25 = load i16, i16* @MAX_CHANNEL_NUMBER, align 2
  %26 = sext i16 %25 to i32
  %27 = icmp sgt i32 %24, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %20
  br label %123

29:                                               ; preds = %20
  br label %30

30:                                               ; preds = %29
  %31 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %32 = call %struct.TYPE_4__* @GET_DOT11D_INFO(%struct.ieee80211_device* %31)
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = load i16, i16* %3, align 2
  %36 = sext i16 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  %40 = xor i1 %39, true
  br i1 %40, label %20, label %41

41:                                               ; preds = %30
  %42 = load i16, i16* %3, align 2
  %43 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %44 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %43, i32 0, i32 6
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  store i16 %42, i16* %45, align 8
  br label %46

46:                                               ; preds = %41, %10
  %47 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %48 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %47, i32 0, i32 6
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %46
  %53 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %54 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %53, i32 0, i32 6
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 1
  store i32 100, i32* %55, align 4
  br label %56

56:                                               ; preds = %52, %46
  store i32 0, i32* %4, align 4
  br label %57

57:                                               ; preds = %79, %56
  %58 = load i32, i32* %4, align 4
  %59 = icmp slt i32 %58, 17
  br i1 %59, label %60, label %82

60:                                               ; preds = %57
  %61 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %62 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %4, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  store i32 -1, i32* %66, align 4
  %67 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %68 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %67, i32 0, i32 2
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* %4, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  store i32 -1, i32* %72, align 4
  %73 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %74 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %73, i32 0, i32 5
  %75 = load i64*, i64** %74, align 8
  %76 = load i32, i32* %4, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i64, i64* %75, i64 %77
  store i64 0, i64* %78, align 8
  br label %79

79:                                               ; preds = %60
  %80 = load i32, i32* %4, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %4, align 4
  br label %57

82:                                               ; preds = %57
  %83 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %84 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %83, i32 0, i32 4
  store i64 0, i64* %84, align 8
  %85 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %86 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %85, i32 0, i32 3
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @IW_MODE_INFRA, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %93

90:                                               ; preds = %82
  %91 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %92 = call i32 @ieee80211_start_bss(%struct.ieee80211_device* %91)
  br label %123

93:                                               ; preds = %82
  %94 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %95 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %94, i32 0, i32 3
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @IW_MODE_ADHOC, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %102

99:                                               ; preds = %93
  %100 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %101 = call i32 @ieee80211_start_ibss(%struct.ieee80211_device* %100)
  br label %122

102:                                              ; preds = %93
  %103 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %104 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %103, i32 0, i32 3
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @IW_MODE_MASTER, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %108, label %111

108:                                              ; preds = %102
  %109 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %110 = call i32 @ieee80211_start_master_bss(%struct.ieee80211_device* %109)
  br label %121

111:                                              ; preds = %102
  %112 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %113 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %112, i32 0, i32 3
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @IW_MODE_MONITOR, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %117, label %120

117:                                              ; preds = %111
  %118 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %119 = call i32 @ieee80211_start_monitor_mode(%struct.ieee80211_device* %118)
  br label %120

120:                                              ; preds = %117, %111
  br label %121

121:                                              ; preds = %120, %108
  br label %122

122:                                              ; preds = %121, %99
  br label %123

123:                                              ; preds = %9, %28, %122, %90
  ret void
}

declare dso_local %struct.TYPE_4__* @GET_DOT11D_INFO(%struct.ieee80211_device*) #1

declare dso_local i32 @ieee80211_start_bss(%struct.ieee80211_device*) #1

declare dso_local i32 @ieee80211_start_ibss(%struct.ieee80211_device*) #1

declare dso_local i32 @ieee80211_start_master_bss(%struct.ieee80211_device*) #1

declare dso_local i32 @ieee80211_start_monitor_mode(%struct.ieee80211_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
