; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/ieee80211/extr_ieee80211_softmac.c_ieee80211_start_protocol.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/ieee80211/extr_ieee80211_softmac.c_ieee80211_start_protocol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_device = type { i32, i32*, i32*, i32, i64, i64*, %struct.TYPE_3__, i32, i32 (i32, i16)* }
%struct.TYPE_3__ = type { i16, i32 }
%struct.TYPE_4__ = type { i32* }

@MAX_CHANNEL_NUMBER = common dso_local global i16 0, align 2

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
  br label %119

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
  br label %119

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
  %57 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %58 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %57, i32 0, i32 8
  %59 = load i32 (i32, i16)*, i32 (i32, i16)** %58, align 8
  %60 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %61 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %60, i32 0, i32 7
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %64 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %63, i32 0, i32 6
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load i16, i16* %65, align 8
  %67 = call i32 %59(i32 %62, i16 signext %66)
  store i32 0, i32* %4, align 4
  br label %68

68:                                               ; preds = %90, %56
  %69 = load i32, i32* %4, align 4
  %70 = icmp slt i32 %69, 17
  br i1 %70, label %71, label %93

71:                                               ; preds = %68
  %72 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %73 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %72, i32 0, i32 1
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* %4, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  store i32 -1, i32* %77, align 4
  %78 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %79 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %78, i32 0, i32 2
  %80 = load i32*, i32** %79, align 8
  %81 = load i32, i32* %4, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  store i32 -1, i32* %83, align 4
  %84 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %85 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %84, i32 0, i32 5
  %86 = load i64*, i64** %85, align 8
  %87 = load i32, i32* %4, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i64, i64* %86, i64 %88
  store i64 0, i64* %89, align 8
  br label %90

90:                                               ; preds = %71
  %91 = load i32, i32* %4, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %4, align 4
  br label %68

93:                                               ; preds = %68
  %94 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %95 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %94, i32 0, i32 4
  store i64 0, i64* %95, align 8
  %96 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %97 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 8
  switch i32 %98, label %114 [
    i32 131, label %99
    i32 130, label %102
    i32 132, label %105
    i32 129, label %108
    i32 128, label %111
  ]

99:                                               ; preds = %93
  %100 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %101 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %100, i32 0, i32 3
  store i32 130, i32* %101, align 8
  br label %102

102:                                              ; preds = %93, %99
  %103 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %104 = call i32 @ieee80211_start_bss(%struct.ieee80211_device* %103)
  br label %119

105:                                              ; preds = %93
  %106 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %107 = call i32 @ieee80211_start_ibss(%struct.ieee80211_device* %106)
  br label %119

108:                                              ; preds = %93
  %109 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %110 = call i32 @ieee80211_start_master_bss(%struct.ieee80211_device* %109)
  br label %119

111:                                              ; preds = %93
  %112 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %113 = call i32 @ieee80211_start_monitor_mode(%struct.ieee80211_device* %112)
  br label %119

114:                                              ; preds = %93
  %115 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %116 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %115, i32 0, i32 3
  store i32 130, i32* %116, align 8
  %117 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %118 = call i32 @ieee80211_start_bss(%struct.ieee80211_device* %117)
  br label %119

119:                                              ; preds = %9, %28, %114, %111, %108, %105, %102
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
