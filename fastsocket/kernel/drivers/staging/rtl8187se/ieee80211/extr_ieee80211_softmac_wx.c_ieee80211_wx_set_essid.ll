; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/ieee80211/extr_ieee80211_softmac_wx.c_ieee80211_wx_set_essid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/ieee80211/extr_ieee80211_softmac_wx.c_ieee80211_wx_set_essid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_device = type { i32, i16, i64, i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8*, i32, i8*, i64 }
%struct.iw_request_info = type { i32 }
%union.iwreq_data = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i64 }

@IW_ESSID_MAX_SIZE = common dso_local global i32 0, align 4
@E2BIG = common dso_local global i32 0, align 4
@IW_MODE_MONITOR = common dso_local global i64 0, align 8
@ETH_ALEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ieee80211_wx_set_essid(%struct.ieee80211_device* %0, %struct.iw_request_info* %1, %union.iwreq_data* %2, i8* %3) #0 {
  %5 = alloca %struct.ieee80211_device*, align 8
  %6 = alloca %struct.iw_request_info*, align 8
  %7 = alloca %union.iwreq_data*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i16, align 2
  %12 = alloca i64, align 8
  store %struct.ieee80211_device* %0, %struct.ieee80211_device** %5, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %6, align 8
  store %union.iwreq_data* %2, %union.iwreq_data** %7, align 8
  store i8* %3, i8** %8, align 8
  store i32 0, i32* %9, align 4
  %13 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %14 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %13, i32 0, i32 0
  store i32 1, i32* %14, align 8
  %15 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %16 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %15, i32 0, i32 4
  %17 = call i32 @down(i32* %16)
  %18 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %19 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %18, i32 0, i32 1
  %20 = load i16, i16* %19, align 4
  store i16 %20, i16* %11, align 2
  %21 = load %union.iwreq_data*, %union.iwreq_data** %7, align 8
  %22 = bitcast %union.iwreq_data* %21 to %struct.TYPE_3__*
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @IW_ESSID_MAX_SIZE, align 4
  %26 = icmp sgt i32 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %4
  %28 = load i32, i32* @E2BIG, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %9, align 4
  br label %132

30:                                               ; preds = %4
  %31 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %32 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @IW_MODE_MONITOR, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  store i32 -1, i32* %9, align 4
  br label %132

37:                                               ; preds = %30
  %38 = load i16, i16* %11, align 2
  %39 = icmp ne i16 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %37
  %41 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %42 = call i32 @ieee80211_stop_protocol(%struct.ieee80211_device* %41)
  br label %43

43:                                               ; preds = %40, %37
  %44 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %45 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %44, i32 0, i32 5
  %46 = load i64, i64* %12, align 8
  %47 = call i32 @spin_lock_irqsave(i32* %45, i64 %46)
  %48 = load %union.iwreq_data*, %union.iwreq_data** %7, align 8
  %49 = bitcast %union.iwreq_data* %48 to %struct.TYPE_3__*
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %110

53:                                               ; preds = %43
  %54 = load %union.iwreq_data*, %union.iwreq_data** %7, align 8
  %55 = bitcast %union.iwreq_data* %54 to %struct.TYPE_3__*
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %110

59:                                               ; preds = %53
  %60 = load %union.iwreq_data*, %union.iwreq_data** %7, align 8
  %61 = bitcast %union.iwreq_data* %60 to %struct.TYPE_3__*
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @IW_ESSID_MAX_SIZE, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %71

66:                                               ; preds = %59
  %67 = load %union.iwreq_data*, %union.iwreq_data** %7, align 8
  %68 = bitcast %union.iwreq_data* %67 to %struct.TYPE_3__*
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  br label %73

71:                                               ; preds = %59
  %72 = load i32, i32* @IW_ESSID_MAX_SIZE, align 4
  br label %73

73:                                               ; preds = %71, %66
  %74 = phi i32 [ %70, %66 ], [ %72, %71 ]
  store i32 %74, i32* %10, align 4
  %75 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %76 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %75, i32 0, i32 6
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load i8*, i8** %77, align 8
  %79 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %80 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %79, i32 0, i32 6
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @memset(i8* %78, i32 0, i32 %82)
  %84 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %85 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %84, i32 0, i32 6
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load i8*, i8** %86, align 8
  %88 = load i8*, i8** %8, align 8
  %89 = load i32, i32* %10, align 4
  %90 = call i32 @strncpy(i8* %87, i8* %88, i32 %89)
  %91 = load i32, i32* %10, align 4
  %92 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %93 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %92, i32 0, i32 6
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 1
  store i32 %91, i32* %94, align 8
  %95 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %96 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %95, i32 0, i32 3
  store i32 1, i32* %96, align 8
  %97 = load i32, i32* %10, align 4
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %109

99:                                               ; preds = %73
  %100 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %101 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %100, i32 0, i32 6
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 2
  %103 = load i8*, i8** %102, align 8
  %104 = load i32, i32* @ETH_ALEN, align 4
  %105 = call i32 @memset(i8* %103, i32 0, i32 %104)
  %106 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %107 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %106, i32 0, i32 6
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 3
  store i64 0, i64* %108, align 8
  br label %109

109:                                              ; preds = %99, %73
  br label %121

110:                                              ; preds = %53, %43
  %111 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %112 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %111, i32 0, i32 3
  store i32 0, i32* %112, align 8
  %113 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %114 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %113, i32 0, i32 6
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 0
  %116 = load i8*, i8** %115, align 8
  %117 = getelementptr inbounds i8, i8* %116, i64 0
  store i8 0, i8* %117, align 1
  %118 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %119 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %118, i32 0, i32 6
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 1
  store i32 0, i32* %120, align 8
  br label %121

121:                                              ; preds = %110, %109
  %122 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %123 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %122, i32 0, i32 5
  %124 = load i64, i64* %12, align 8
  %125 = call i32 @spin_unlock_irqrestore(i32* %123, i64 %124)
  %126 = load i16, i16* %11, align 2
  %127 = icmp ne i16 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %121
  %129 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %130 = call i32 @ieee80211_start_protocol(%struct.ieee80211_device* %129)
  br label %131

131:                                              ; preds = %128, %121
  br label %132

132:                                              ; preds = %131, %36, %27
  %133 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %134 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %133, i32 0, i32 4
  %135 = call i32 @up(i32* %134)
  %136 = load i32, i32* %9, align 4
  ret i32 %136
}

declare dso_local i32 @down(i32*) #1

declare dso_local i32 @ieee80211_stop_protocol(%struct.ieee80211_device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @ieee80211_start_protocol(%struct.ieee80211_device*) #1

declare dso_local i32 @up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
