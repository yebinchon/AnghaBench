; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/ieee80211/extr_ieee80211_wx.c_ieee80211_wx_get_encode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/ieee80211/extr_ieee80211_wx.c_ieee80211_wx_get_encode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_device = type { i64, i32, i64, %struct.ieee80211_crypt_data** }
%struct.ieee80211_crypt_data = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i8*, i32, i32*, i32)*, i32 }
%struct.iw_request_info = type { i32 }
%union.iwreq_data = type { %struct.iw_point }
%struct.iw_point = type { i32, i32 }

@.str = private unnamed_addr constant [12 x i8] c"GET_ENCODE\0A\00", align 1
@IW_MODE_MONITOR = common dso_local global i64 0, align 8
@IW_ENCODE_INDEX = common dso_local global i32 0, align 4
@WEP_KEYS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IW_ENCODE_DISABLED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"WEP\00", align 1
@IW_ENCODE_ENABLED = common dso_local global i32 0, align 4
@WEP_KEY_LEN = common dso_local global i32 0, align 4
@IW_ENCODE_OPEN = common dso_local global i32 0, align 4
@IW_ENCODE_RESTRICTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ieee80211_wx_get_encode(%struct.ieee80211_device* %0, %struct.iw_request_info* %1, %union.iwreq_data* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ieee80211_device*, align 8
  %7 = alloca %struct.iw_request_info*, align 8
  %8 = alloca %union.iwreq_data*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.iw_point*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.ieee80211_crypt_data*, align 8
  store %struct.ieee80211_device* %0, %struct.ieee80211_device** %6, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %7, align 8
  store %union.iwreq_data* %2, %union.iwreq_data** %8, align 8
  store i8* %3, i8** %9, align 8
  %14 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %15 = bitcast %union.iwreq_data* %14 to %struct.iw_point*
  store %struct.iw_point* %15, %struct.iw_point** %10, align 8
  %16 = call i32 @IEEE80211_DEBUG_WX(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.ieee80211_device*, %struct.ieee80211_device** %6, align 8
  %18 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @IW_MODE_MONITOR, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %131

23:                                               ; preds = %4
  %24 = load %struct.iw_point*, %struct.iw_point** %10, align 8
  %25 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @IW_ENCODE_INDEX, align 4
  %28 = and i32 %26, %27
  store i32 %28, i32* %12, align 4
  %29 = load i32, i32* %12, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %41

31:                                               ; preds = %23
  %32 = load i32, i32* %12, align 4
  %33 = load i32, i32* @WEP_KEYS, align 4
  %34 = icmp sgt i32 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %31
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %5, align 4
  br label %131

38:                                               ; preds = %31
  %39 = load i32, i32* %12, align 4
  %40 = add nsw i32 %39, -1
  store i32 %40, i32* %12, align 4
  br label %45

41:                                               ; preds = %23
  %42 = load %struct.ieee80211_device*, %struct.ieee80211_device** %6, align 8
  %43 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  store i32 %44, i32* %12, align 4
  br label %45

45:                                               ; preds = %41, %38
  %46 = load %struct.ieee80211_device*, %struct.ieee80211_device** %6, align 8
  %47 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %46, i32 0, i32 3
  %48 = load %struct.ieee80211_crypt_data**, %struct.ieee80211_crypt_data*** %47, align 8
  %49 = load i32, i32* %12, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.ieee80211_crypt_data*, %struct.ieee80211_crypt_data** %48, i64 %50
  %52 = load %struct.ieee80211_crypt_data*, %struct.ieee80211_crypt_data** %51, align 8
  store %struct.ieee80211_crypt_data* %52, %struct.ieee80211_crypt_data** %13, align 8
  %53 = load i32, i32* %12, align 4
  %54 = add nsw i32 %53, 1
  %55 = load %struct.iw_point*, %struct.iw_point** %10, align 8
  %56 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 4
  %57 = load %struct.ieee80211_crypt_data*, %struct.ieee80211_crypt_data** %13, align 8
  %58 = icmp eq %struct.ieee80211_crypt_data* %57, null
  br i1 %58, label %64, label %59

59:                                               ; preds = %45
  %60 = load %struct.ieee80211_crypt_data*, %struct.ieee80211_crypt_data** %13, align 8
  %61 = getelementptr inbounds %struct.ieee80211_crypt_data, %struct.ieee80211_crypt_data* %60, i32 0, i32 1
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = icmp eq %struct.TYPE_2__* %62, null
  br i1 %63, label %64, label %72

64:                                               ; preds = %59, %45
  %65 = load %struct.iw_point*, %struct.iw_point** %10, align 8
  %66 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %65, i32 0, i32 1
  store i32 0, i32* %66, align 4
  %67 = load i32, i32* @IW_ENCODE_DISABLED, align 4
  %68 = load %struct.iw_point*, %struct.iw_point** %10, align 8
  %69 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = or i32 %70, %67
  store i32 %71, i32* %69, align 4
  store i32 0, i32* %5, align 4
  br label %131

72:                                               ; preds = %59
  %73 = load %struct.ieee80211_crypt_data*, %struct.ieee80211_crypt_data** %13, align 8
  %74 = getelementptr inbounds %struct.ieee80211_crypt_data, %struct.ieee80211_crypt_data* %73, i32 0, i32 1
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = call i64 @strcmp(i32 %77, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %88

80:                                               ; preds = %72
  %81 = load %struct.iw_point*, %struct.iw_point** %10, align 8
  %82 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %81, i32 0, i32 1
  store i32 0, i32* %82, align 4
  %83 = load i32, i32* @IW_ENCODE_ENABLED, align 4
  %84 = load %struct.iw_point*, %struct.iw_point** %10, align 8
  %85 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = or i32 %86, %83
  store i32 %87, i32* %85, align 4
  store i32 0, i32* %5, align 4
  br label %131

88:                                               ; preds = %72
  %89 = load %struct.ieee80211_crypt_data*, %struct.ieee80211_crypt_data** %13, align 8
  %90 = getelementptr inbounds %struct.ieee80211_crypt_data, %struct.ieee80211_crypt_data* %89, i32 0, i32 1
  %91 = load %struct.TYPE_2__*, %struct.TYPE_2__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  %93 = load i32 (i8*, i32, i32*, i32)*, i32 (i8*, i32, i32*, i32)** %92, align 8
  %94 = load i8*, i8** %9, align 8
  %95 = load i32, i32* @WEP_KEY_LEN, align 4
  %96 = load %struct.ieee80211_crypt_data*, %struct.ieee80211_crypt_data** %13, align 8
  %97 = getelementptr inbounds %struct.ieee80211_crypt_data, %struct.ieee80211_crypt_data* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = call i32 %93(i8* %94, i32 %95, i32* null, i32 %98)
  store i32 %99, i32* %11, align 4
  %100 = load i32, i32* %11, align 4
  %101 = icmp sge i32 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %88
  %103 = load i32, i32* %11, align 4
  br label %105

104:                                              ; preds = %88
  br label %105

105:                                              ; preds = %104, %102
  %106 = phi i32 [ %103, %102 ], [ 0, %104 ]
  %107 = load %struct.iw_point*, %struct.iw_point** %10, align 8
  %108 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %107, i32 0, i32 1
  store i32 %106, i32* %108, align 4
  %109 = load i32, i32* @IW_ENCODE_ENABLED, align 4
  %110 = load %struct.iw_point*, %struct.iw_point** %10, align 8
  %111 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = or i32 %112, %109
  store i32 %113, i32* %111, align 4
  %114 = load %struct.ieee80211_device*, %struct.ieee80211_device** %6, align 8
  %115 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %114, i32 0, i32 2
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %124

118:                                              ; preds = %105
  %119 = load i32, i32* @IW_ENCODE_OPEN, align 4
  %120 = load %struct.iw_point*, %struct.iw_point** %10, align 8
  %121 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = or i32 %122, %119
  store i32 %123, i32* %121, align 4
  br label %130

124:                                              ; preds = %105
  %125 = load i32, i32* @IW_ENCODE_RESTRICTED, align 4
  %126 = load %struct.iw_point*, %struct.iw_point** %10, align 8
  %127 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = or i32 %128, %125
  store i32 %129, i32* %127, align 4
  br label %130

130:                                              ; preds = %124, %118
  store i32 0, i32* %5, align 4
  br label %131

131:                                              ; preds = %130, %80, %64, %35, %22
  %132 = load i32, i32* %5, align 4
  ret i32 %132
}

declare dso_local i32 @IEEE80211_DEBUG_WX(i8*) #1

declare dso_local i64 @strcmp(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
