; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/ieee80211/extr_ieee80211_softmac.c_ieee80211_softmac_scan_syncro.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/ieee80211/extr_ieee80211_softmac.c_ieee80211_softmac_scan_syncro.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_device = type { i32, i64, i32, i32, i64, i32, i32 (i32, i16)* }
%struct.TYPE_2__ = type { i32 }

@MAX_CHANNEL_NUMBER = common dso_local global i32 0, align 4
@IEEE80211_LINKED = common dso_local global i64 0, align 8
@IEEE80211_SOFTMAC_SCAN_TIME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ieee80211_softmac_scan_syncro(%struct.ieee80211_device* %0) #0 {
  %2 = alloca %struct.ieee80211_device*, align 8
  %3 = alloca i16, align 2
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  store %struct.ieee80211_device* %0, %struct.ieee80211_device** %2, align 8
  store i16 0, i16* %3, align 2
  %6 = load i32, i32* @MAX_CHANNEL_NUMBER, align 4
  %7 = add nsw i32 %6, 1
  %8 = zext i32 %7 to i64
  %9 = call i8* @llvm.stacksave()
  store i8* %9, i8** %4, align 8
  %10 = alloca i32, i64 %8, align 16
  store i64 %8, i64* %5, align 8
  %11 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %12 = call %struct.TYPE_2__* @GET_DOT11D_INFO(%struct.ieee80211_device* %11)
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @MAX_CHANNEL_NUMBER, align 4
  %16 = add nsw i32 %15, 1
  %17 = call i32 @memcpy(i32* %10, i32 %14, i32 %16)
  %18 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %19 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %18, i32 0, i32 0
  store i32 1, i32* %19, align 8
  %20 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %21 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %20, i32 0, i32 3
  %22 = call i32 @down(i32* %21)
  br label %23

23:                                               ; preds = %79, %1
  br label %24

24:                                               ; preds = %23
  br label %25

25:                                               ; preds = %34, %24
  %26 = load i16, i16* %3, align 2
  %27 = add i16 %26, 1
  store i16 %27, i16* %3, align 2
  %28 = load i16, i16* %3, align 2
  %29 = sext i16 %28 to i32
  %30 = load i32, i32* @MAX_CHANNEL_NUMBER, align 4
  %31 = icmp sgt i32 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %25
  br label %82

33:                                               ; preds = %25
  br label %34

34:                                               ; preds = %33
  %35 = load i16, i16* %3, align 2
  %36 = sext i16 %35 to i64
  %37 = getelementptr inbounds i32, i32* %10, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  %40 = xor i1 %39, true
  br i1 %40, label %25, label %41

41:                                               ; preds = %34
  %42 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %43 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @IEEE80211_LINKED, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %41
  br label %82

48:                                               ; preds = %41
  %49 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %50 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %49, i32 0, i32 6
  %51 = load i32 (i32, i16)*, i32 (i32, i16)** %50, align 8
  %52 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %53 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %52, i32 0, i32 5
  %54 = load i32, i32* %53, align 8
  %55 = load i16, i16* %3, align 2
  %56 = call i32 %51(i32 %54, i16 signext %55)
  %57 = load i16, i16* %3, align 2
  %58 = sext i16 %57 to i64
  %59 = getelementptr inbounds i32, i32* %10, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = icmp eq i32 %60, 1
  br i1 %61, label %62, label %65

62:                                               ; preds = %48
  %63 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %64 = call i32 @ieee80211_send_probe_requests(%struct.ieee80211_device* %63)
  br label %65

65:                                               ; preds = %62, %48
  %66 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %67 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @IEEE80211_LINKED, align 8
  %70 = icmp slt i64 %68, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %65
  br label %79

72:                                               ; preds = %65
  %73 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %74 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %73, i32 0, i32 4
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %72
  br label %82

78:                                               ; preds = %72
  br label %79

79:                                               ; preds = %78, %71
  %80 = load i32, i32* @IEEE80211_SOFTMAC_SCAN_TIME, align 4
  %81 = call i32 @msleep_interruptible_rsl(i32 %80)
  br label %23

82:                                               ; preds = %77, %47, %32
  %83 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %84 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @IEEE80211_LINKED, align 8
  %87 = icmp slt i64 %85, %86
  br i1 %87, label %88, label %96

88:                                               ; preds = %82
  %89 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %90 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %89, i32 0, i32 2
  store i32 0, i32* %90, align 8
  %91 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %92 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %91, i32 0, i32 3
  %93 = call i32 @up(i32* %92)
  %94 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %95 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %94, i32 0, i32 0
  store i32 0, i32* %95, align 8
  br label %111

96:                                               ; preds = %82
  %97 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %98 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %97, i32 0, i32 4
  store i64 0, i64* %98, align 8
  %99 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %100 = call i64 @IS_DOT11D_ENABLE(%struct.ieee80211_device* %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %96
  %103 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %104 = call i32 @DOT11D_ScanComplete(%struct.ieee80211_device* %103)
  br label %105

105:                                              ; preds = %102, %96
  %106 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %107 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %106, i32 0, i32 3
  %108 = call i32 @up(i32* %107)
  %109 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %110 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %109, i32 0, i32 0
  store i32 0, i32* %110, align 8
  br label %111

111:                                              ; preds = %105, %88
  %112 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %112)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memcpy(i32*, i32, i32) #2

declare dso_local %struct.TYPE_2__* @GET_DOT11D_INFO(%struct.ieee80211_device*) #2

declare dso_local i32 @down(i32*) #2

declare dso_local i32 @ieee80211_send_probe_requests(%struct.ieee80211_device*) #2

declare dso_local i32 @msleep_interruptible_rsl(i32) #2

declare dso_local i32 @up(i32*) #2

declare dso_local i64 @IS_DOT11D_ENABLE(%struct.ieee80211_device*) #2

declare dso_local i32 @DOT11D_ScanComplete(%struct.ieee80211_device*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
