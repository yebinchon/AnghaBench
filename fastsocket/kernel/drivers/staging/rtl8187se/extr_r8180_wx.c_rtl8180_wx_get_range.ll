; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/extr_r8180_wx.c_rtl8180_wx_get_range.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/extr_r8180_wx.c_rtl8180_wx_get_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.iw_request_info = type { i32 }
%union.iwreq_data = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.iw_range = type { i32, i32, i32, i32, i64, i32, %struct.TYPE_9__*, i32, i64, i32, i32, i32*, %struct.TYPE_8__, %struct.TYPE_7__, i32 }
%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i64 }
%struct.TYPE_7__ = type { i32, i32, i32, i64 }
%struct.r8180_priv = type { i32, i32, i32* }
%struct.TYPE_10__ = type { i64* }

@RATE_COUNT = common dso_local global i32 0, align 4
@IW_MAX_BITRATES = common dso_local global i32 0, align 4
@rtl8180_rates = common dso_local global i32* null, align 8
@MIN_FRAG_THRESHOLD = common dso_local global i32 0, align 4
@MAX_FRAG_THRESHOLD = common dso_local global i32 0, align 4
@WIRELESS_EXT = common dso_local global i32 0, align 4
@ieee80211_wlan_frequencies = common dso_local global i32* null, align 8
@IW_MAX_FREQUENCIES = common dso_local global i64 0, align 8
@IW_ENC_CAPA_WPA = common dso_local global i32 0, align 4
@IW_ENC_CAPA_WPA2 = common dso_local global i32 0, align 4
@IW_ENC_CAPA_CIPHER_TKIP = common dso_local global i32 0, align 4
@IW_ENC_CAPA_CIPHER_CCMP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.iw_request_info*, %union.iwreq_data*, i8*)* @rtl8180_wx_get_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl8180_wx_get_range(%struct.net_device* %0, %struct.iw_request_info* %1, %union.iwreq_data* %2, i8* %3) #0 {
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.iw_request_info*, align 8
  %7 = alloca %union.iwreq_data*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.iw_range*, align 8
  %10 = alloca %struct.r8180_priv*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %6, align 8
  store %union.iwreq_data* %2, %union.iwreq_data** %7, align 8
  store i8* %3, i8** %8, align 8
  %13 = load i8*, i8** %8, align 8
  %14 = bitcast i8* %13 to %struct.iw_range*
  store %struct.iw_range* %14, %struct.iw_range** %9, align 8
  %15 = load %struct.net_device*, %struct.net_device** %5, align 8
  %16 = call %struct.r8180_priv* @ieee80211_priv(%struct.net_device* %15)
  store %struct.r8180_priv* %16, %struct.r8180_priv** %10, align 8
  %17 = load %union.iwreq_data*, %union.iwreq_data** %7, align 8
  %18 = bitcast %union.iwreq_data* %17 to %struct.TYPE_6__*
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  store i32 128, i32* %19, align 4
  %20 = load %struct.iw_range*, %struct.iw_range** %9, align 8
  %21 = call i32 @memset(%struct.iw_range* %20, i32 0, i32 128)
  %22 = load %struct.iw_range*, %struct.iw_range** %9, align 8
  %23 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %22, i32 0, i32 0
  store i32 5000000, i32* %23, align 8
  %24 = load %struct.r8180_priv*, %struct.r8180_priv** %10, align 8
  %25 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %24, i32 0, i32 2
  %26 = load i32*, i32** %25, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %34

28:                                               ; preds = %4
  %29 = load %struct.r8180_priv*, %struct.r8180_priv** %10, align 8
  %30 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.iw_range*, %struct.iw_range** %9, align 8
  %33 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %32, i32 0, i32 14
  store i32 %31, i32* %33, align 8
  br label %34

34:                                               ; preds = %28, %4
  %35 = load %struct.iw_range*, %struct.iw_range** %9, align 8
  %36 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %35, i32 0, i32 13
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  store i32 100, i32* %37, align 8
  %38 = load %struct.iw_range*, %struct.iw_range** %9, align 8
  %39 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %38, i32 0, i32 13
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 3
  store i64 0, i64* %40, align 8
  %41 = load %struct.iw_range*, %struct.iw_range** %9, align 8
  %42 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %41, i32 0, i32 13
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 1
  store i32 -98, i32* %43, align 4
  %44 = load %struct.iw_range*, %struct.iw_range** %9, align 8
  %45 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %44, i32 0, i32 13
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 2
  store i32 7, i32* %46, align 8
  %47 = load %struct.iw_range*, %struct.iw_range** %9, align 8
  %48 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %47, i32 0, i32 12
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  store i32 92, i32* %49, align 8
  %50 = load %struct.iw_range*, %struct.iw_range** %9, align 8
  %51 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %50, i32 0, i32 12
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 1
  store i32 -78, i32* %52, align 4
  %53 = load %struct.iw_range*, %struct.iw_range** %9, align 8
  %54 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %53, i32 0, i32 12
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 3
  store i64 0, i64* %55, align 8
  %56 = load %struct.iw_range*, %struct.iw_range** %9, align 8
  %57 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %56, i32 0, i32 12
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 2
  store i32 7, i32* %58, align 8
  %59 = load i32, i32* @RATE_COUNT, align 4
  %60 = load %struct.iw_range*, %struct.iw_range** %9, align 8
  %61 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 4
  store i32 0, i32* %12, align 4
  br label %62

62:                                               ; preds = %84, %34
  %63 = load i32, i32* %12, align 4
  %64 = load i32, i32* @RATE_COUNT, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %70

66:                                               ; preds = %62
  %67 = load i32, i32* %12, align 4
  %68 = load i32, i32* @IW_MAX_BITRATES, align 4
  %69 = icmp slt i32 %67, %68
  br label %70

70:                                               ; preds = %66, %62
  %71 = phi i1 [ false, %62 ], [ %69, %66 ]
  br i1 %71, label %72, label %87

72:                                               ; preds = %70
  %73 = load i32*, i32** @rtl8180_rates, align 8
  %74 = load i32, i32* %12, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.iw_range*, %struct.iw_range** %9, align 8
  %79 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %78, i32 0, i32 11
  %80 = load i32*, i32** %79, align 8
  %81 = load i32, i32* %12, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  store i32 %77, i32* %83, align 4
  br label %84

84:                                               ; preds = %72
  %85 = load i32, i32* %12, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %12, align 4
  br label %62

87:                                               ; preds = %70
  %88 = load i32, i32* @MIN_FRAG_THRESHOLD, align 4
  %89 = load %struct.iw_range*, %struct.iw_range** %9, align 8
  %90 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %89, i32 0, i32 10
  store i32 %88, i32* %90, align 4
  %91 = load i32, i32* @MAX_FRAG_THRESHOLD, align 4
  %92 = load %struct.iw_range*, %struct.iw_range** %9, align 8
  %93 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %92, i32 0, i32 9
  store i32 %91, i32* %93, align 8
  %94 = load %struct.iw_range*, %struct.iw_range** %9, align 8
  %95 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %94, i32 0, i32 8
  store i64 0, i64* %95, align 8
  %96 = load i32, i32* @WIRELESS_EXT, align 4
  %97 = load %struct.iw_range*, %struct.iw_range** %9, align 8
  %98 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %97, i32 0, i32 7
  store i32 %96, i32* %98, align 8
  %99 = load %struct.iw_range*, %struct.iw_range** %9, align 8
  %100 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %99, i32 0, i32 2
  store i32 16, i32* %100, align 8
  %101 = load %struct.iw_range*, %struct.iw_range** %9, align 8
  %102 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %101, i32 0, i32 3
  store i32 14, i32* %102, align 4
  store i32 0, i32* %12, align 4
  store i64 0, i64* %11, align 8
  br label %103

103:                                              ; preds = %155, %87
  %104 = load i32, i32* %12, align 4
  %105 = icmp slt i32 %104, 14
  br i1 %105, label %106, label %158

106:                                              ; preds = %103
  %107 = load %struct.r8180_priv*, %struct.r8180_priv** %10, align 8
  %108 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = call %struct.TYPE_10__* @GET_DOT11D_INFO(i32 %109)
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 0
  %112 = load i64*, i64** %111, align 8
  %113 = load i32, i32* %12, align 4
  %114 = add nsw i32 %113, 1
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i64, i64* %112, i64 %115
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %148

119:                                              ; preds = %106
  %120 = load i32, i32* %12, align 4
  %121 = add nsw i32 %120, 1
  %122 = load %struct.iw_range*, %struct.iw_range** %9, align 8
  %123 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %122, i32 0, i32 6
  %124 = load %struct.TYPE_9__*, %struct.TYPE_9__** %123, align 8
  %125 = load i64, i64* %11, align 8
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i64 %125
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 0
  store i32 %121, i32* %127, align 4
  %128 = load i32*, i32** @ieee80211_wlan_frequencies, align 8
  %129 = load i32, i32* %12, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %128, i64 %130
  %132 = load i32, i32* %131, align 4
  %133 = mul nsw i32 %132, 100000
  %134 = load %struct.iw_range*, %struct.iw_range** %9, align 8
  %135 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %134, i32 0, i32 6
  %136 = load %struct.TYPE_9__*, %struct.TYPE_9__** %135, align 8
  %137 = load i64, i64* %11, align 8
  %138 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %136, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %138, i32 0, i32 1
  store i32 %133, i32* %139, align 4
  %140 = load %struct.iw_range*, %struct.iw_range** %9, align 8
  %141 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %140, i32 0, i32 6
  %142 = load %struct.TYPE_9__*, %struct.TYPE_9__** %141, align 8
  %143 = load i64, i64* %11, align 8
  %144 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %142, i64 %143
  %145 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %144, i32 0, i32 2
  store i32 1, i32* %145, align 4
  %146 = load i64, i64* %11, align 8
  %147 = add i64 %146, 1
  store i64 %147, i64* %11, align 8
  br label %149

148:                                              ; preds = %106
  br label %149

149:                                              ; preds = %148, %119
  %150 = load i64, i64* %11, align 8
  %151 = load i64, i64* @IW_MAX_FREQUENCIES, align 8
  %152 = icmp eq i64 %150, %151
  br i1 %152, label %153, label %154

153:                                              ; preds = %149
  br label %158

154:                                              ; preds = %149
  br label %155

155:                                              ; preds = %154
  %156 = load i32, i32* %12, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %12, align 4
  br label %103

158:                                              ; preds = %153, %103
  %159 = load i64, i64* %11, align 8
  %160 = load %struct.iw_range*, %struct.iw_range** %9, align 8
  %161 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %160, i32 0, i32 4
  store i64 %159, i64* %161, align 8
  %162 = load i32, i32* @IW_ENC_CAPA_WPA, align 4
  %163 = load i32, i32* @IW_ENC_CAPA_WPA2, align 4
  %164 = or i32 %162, %163
  %165 = load i32, i32* @IW_ENC_CAPA_CIPHER_TKIP, align 4
  %166 = or i32 %164, %165
  %167 = load i32, i32* @IW_ENC_CAPA_CIPHER_CCMP, align 4
  %168 = or i32 %166, %167
  %169 = load %struct.iw_range*, %struct.iw_range** %9, align 8
  %170 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %169, i32 0, i32 5
  store i32 %168, i32* %170, align 8
  ret i32 0
}

declare dso_local %struct.r8180_priv* @ieee80211_priv(%struct.net_device*) #1

declare dso_local i32 @memset(%struct.iw_range*, i32, i32) #1

declare dso_local %struct.TYPE_10__* @GET_DOT11D_INFO(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
