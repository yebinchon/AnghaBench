; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/extr_r8180_core.c_rtl8180_set_channel_map.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/extr_r8180_core.c_rtl8180_set_channel_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32* }
%struct.ieee80211_device = type { i32, i32, i32 }
%struct.TYPE_3__ = type { i32*, i32 }

@MAX_CHANNEL_NUMBER = common dso_local global i32 0, align 4
@ChannelPlan = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.ieee80211_device*)* @rtl8180_set_channel_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl8180_set_channel_map(i32 %0, %struct.ieee80211_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ieee80211_device*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.ieee80211_device* %1, %struct.ieee80211_device** %4, align 8
  %6 = load i32, i32* @MAX_CHANNEL_NUMBER, align 4
  %7 = add nsw i32 %6, 1
  %8 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %9 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %8, i32 0, i32 0
  store i32 %7, i32* %9, align 4
  %10 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %11 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %10, i32 0, i32 1
  store i32 0, i32* %11, align 4
  %12 = load i32, i32* %3, align 4
  switch i32 %12, label %88 [
    i32 137, label %13
    i32 134, label %13
    i32 138, label %13
    i32 130, label %13
    i32 136, label %13
    i32 132, label %13
    i32 131, label %13
    i32 133, label %13
    i32 129, label %13
    i32 135, label %75
    i32 128, label %83
  ]

13:                                               ; preds = %2, %2, %2, %2, %2, %2, %2, %2, %2
  %14 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %15 = call i32 @Dot11d_Init(%struct.ieee80211_device* %14)
  %16 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %17 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %16, i32 0, i32 2
  store i32 0, i32* %17, align 4
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ChannelPlan, align 8
  %19 = load i32, i32* %3, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %74

25:                                               ; preds = %13
  %26 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %27 = call %struct.TYPE_3__* @GET_DOT11D_INFO(%struct.ieee80211_device* %26)
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = call i32 @memset(i32* %29, i32 0, i32 8)
  store i32 0, i32* %5, align 4
  br label %31

31:                                               ; preds = %70, %25
  %32 = load i32, i32* %5, align 4
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ChannelPlan, align 8
  %34 = load i32, i32* %3, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp slt i32 %32, %38
  br i1 %39, label %40, label %73

40:                                               ; preds = %31
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ChannelPlan, align 8
  %42 = load i32, i32* %3, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %5, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = icmp sle i32 %50, 14
  br i1 %51, label %52, label %69

52:                                               ; preds = %40
  %53 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %54 = call %struct.TYPE_3__* @GET_DOT11D_INFO(%struct.ieee80211_device* %53)
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ChannelPlan, align 8
  %58 = load i32, i32* %3, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %5, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %56, i64 %67
  store i32 1, i32* %68, align 4
  br label %69

69:                                               ; preds = %52, %40
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %5, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %5, align 4
  br label %31

73:                                               ; preds = %31
  br label %74

74:                                               ; preds = %73, %13
  br label %113

75:                                               ; preds = %2
  %76 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %77 = call %struct.TYPE_3__* @GET_DOT11D_INFO(%struct.ieee80211_device* %76)
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 1
  store i32 0, i32* %78, align 8
  %79 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %80 = call i32 @Dot11d_Reset(%struct.ieee80211_device* %79)
  %81 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %82 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %81, i32 0, i32 2
  store i32 1, i32* %82, align 4
  br label %113

83:                                               ; preds = %2
  %84 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %85 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %84, i32 0, i32 0
  store i32 12, i32* %85, align 4
  %86 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %87 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %86, i32 0, i32 1
  store i32 10, i32* %87, align 4
  br label %113

88:                                               ; preds = %2
  %89 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %90 = call i32 @Dot11d_Init(%struct.ieee80211_device* %89)
  %91 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %92 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %91, i32 0, i32 2
  store i32 0, i32* %92, align 4
  %93 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %94 = call %struct.TYPE_3__* @GET_DOT11D_INFO(%struct.ieee80211_device* %93)
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  %97 = call i32 @memset(i32* %96, i32 0, i32 8)
  store i32 1, i32* %5, align 4
  br label %98

98:                                               ; preds = %109, %88
  %99 = load i32, i32* %5, align 4
  %100 = icmp sle i32 %99, 14
  br i1 %100, label %101, label %112

101:                                              ; preds = %98
  %102 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %103 = call %struct.TYPE_3__* @GET_DOT11D_INFO(%struct.ieee80211_device* %102)
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 0
  %105 = load i32*, i32** %104, align 8
  %106 = load i32, i32* %5, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %105, i64 %107
  store i32 1, i32* %108, align 4
  br label %109

109:                                              ; preds = %101
  %110 = load i32, i32* %5, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %5, align 4
  br label %98

112:                                              ; preds = %98
  br label %113

113:                                              ; preds = %112, %83, %75, %74
  ret void
}

declare dso_local i32 @Dot11d_Init(%struct.ieee80211_device*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local %struct.TYPE_3__* @GET_DOT11D_INFO(%struct.ieee80211_device*) #1

declare dso_local i32 @Dot11d_Reset(%struct.ieee80211_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
