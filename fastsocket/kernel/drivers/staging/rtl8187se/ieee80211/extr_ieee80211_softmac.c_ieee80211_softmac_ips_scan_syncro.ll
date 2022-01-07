; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/ieee80211/extr_ieee80211_softmac.c_ieee80211_softmac_ips_scan_syncro.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/ieee80211/extr_ieee80211_softmac.c_ieee80211_softmac_ips_scan_syncro.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_device = type { i64, i32, i32, %struct.TYPE_3__, i32, i32 (i32, i64)* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@MAX_CHANNEL_NUMBER = common dso_local global i32 0, align 4
@IEEE80211_LINKED = common dso_local global i64 0, align 8
@IEEE80211_SOFTMAC_SCAN_TIME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ieee80211_softmac_ips_scan_syncro(%struct.ieee80211_device* %0) #0 {
  %2 = alloca %struct.ieee80211_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store %struct.ieee80211_device* %0, %struct.ieee80211_device** %2, align 8
  store i32 0, i32* %4, align 4
  %7 = load i32, i32* @MAX_CHANNEL_NUMBER, align 4
  %8 = add nsw i32 %7, 1
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %5, align 8
  %11 = alloca i32, i64 %9, align 16
  store i64 %9, i64* %6, align 8
  %12 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %13 = call %struct.TYPE_4__* @GET_DOT11D_INFO(%struct.ieee80211_device* %12)
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @MAX_CHANNEL_NUMBER, align 4
  %17 = add nsw i32 %16, 1
  %18 = call i32 @memcpy(i32* %11, i32 %15, i32 %17)
  %19 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %20 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %19, i32 0, i32 2
  %21 = call i32 @down(i32* %20)
  %22 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %23 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %22, i32 0, i32 3
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %3, align 4
  br label %26

26:                                               ; preds = %98, %1
  br label %27

27:                                               ; preds = %26
  %28 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %29 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @IEEE80211_LINKED, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  br label %99

34:                                               ; preds = %27
  %35 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %36 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %35, i32 0, i32 3
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %11, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = icmp sgt i32 %41, 0
  br i1 %42, label %43, label %56

43:                                               ; preds = %34
  %44 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %45 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %44, i32 0, i32 5
  %46 = load i32 (i32, i64)*, i32 (i32, i64)** %45, align 8
  %47 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %48 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %51 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %50, i32 0, i32 3
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = sext i32 %53 to i64
  %55 = call i32 %46(i32 %49, i64 %54)
  br label %56

56:                                               ; preds = %43, %34
  %57 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %58 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %57, i32 0, i32 3
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %11, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = icmp eq i32 %63, 1
  br i1 %64, label %65, label %68

65:                                               ; preds = %56
  %66 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %67 = call i32 @ieee80211_send_probe_requests(%struct.ieee80211_device* %66)
  br label %68

68:                                               ; preds = %65, %56
  %69 = load i32, i32* @IEEE80211_SOFTMAC_SCAN_TIME, align 4
  %70 = call i32 @msleep_interruptible_rtl(i32 %69)
  br label %71

71:                                               ; preds = %88, %68
  %72 = load i32, i32* %4, align 4
  %73 = add i32 %72, 1
  store i32 %73, i32* %4, align 4
  %74 = load i32, i32* @MAX_CHANNEL_NUMBER, align 4
  %75 = icmp uge i32 %72, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %71
  br label %99

77:                                               ; preds = %71
  %78 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %79 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %78, i32 0, i32 3
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = add nsw i32 %81, 1
  %83 = load i32, i32* @MAX_CHANNEL_NUMBER, align 4
  %84 = srem i32 %82, %83
  %85 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %86 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %85, i32 0, i32 3
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 0
  store i32 %84, i32* %87, align 8
  br label %88

88:                                               ; preds = %77
  %89 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %90 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %89, i32 0, i32 3
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %11, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = icmp ne i32 %95, 0
  %97 = xor i1 %96, true
  br i1 %97, label %71, label %98

98:                                               ; preds = %88
  br label %26

99:                                               ; preds = %76, %33
  %100 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %101 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %100, i32 0, i32 1
  store i32 0, i32* %101, align 8
  %102 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %103 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %102, i32 0, i32 2
  %104 = call i32 @up(i32* %103)
  %105 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %106 = call i64 @IS_DOT11D_ENABLE(%struct.ieee80211_device* %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %99
  %109 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %110 = call i32 @DOT11D_ScanComplete(%struct.ieee80211_device* %109)
  br label %111

111:                                              ; preds = %108, %99
  %112 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %112)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memcpy(i32*, i32, i32) #2

declare dso_local %struct.TYPE_4__* @GET_DOT11D_INFO(%struct.ieee80211_device*) #2

declare dso_local i32 @down(i32*) #2

declare dso_local i32 @ieee80211_send_probe_requests(%struct.ieee80211_device*) #2

declare dso_local i32 @msleep_interruptible_rtl(i32) #2

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
