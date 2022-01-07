; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_cmm.c_zfSendProbeReq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_cmm.c_zfSendProbeReq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i64, %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64, i32 }

@ZM_WLAN_EID_SSID = common dso_local global i64 0, align 8
@wd = common dso_local global %struct.TYPE_10__* null, align 8
@ZM_WLAN_EID_SUPPORT_RATE = common dso_local global i32 0, align 4
@ZM_RATE_SET_CCK = common dso_local global i32 0, align 4
@ZM_WIRELESS_MODE_24_54 = common dso_local global i32 0, align 4
@ZM_WIRELESS_MODE_24_N = common dso_local global i32 0, align 4
@ZM_MODE_IBSS = common dso_local global i64 0, align 8
@ZM_WLAN_EID_EXTENDED_RATE = common dso_local global i32 0, align 4
@ZM_RATE_SET_OFDM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @zfSendProbeReq(i32* %0, i32* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load i32*, i32** %5, align 8
  %10 = call i32 @zmw_get_wlan_dev(i32* %9)
  %11 = call i32 (...) @zmw_declare_for_critical_section()
  %12 = load i32, i32* %8, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %28

14:                                               ; preds = %4
  %15 = load i32*, i32** %5, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = load i64, i64* %7, align 8
  %18 = add nsw i64 %17, 1
  store i64 %18, i64* %7, align 8
  %19 = trunc i64 %17 to i32
  %20 = load i64, i64* @ZM_WLAN_EID_SSID, align 8
  %21 = call i32 @zmw_tx_buf_writeb(i32* %15, i32* %16, i32 %19, i64 %20)
  %22 = load i32*, i32** %5, align 8
  %23 = load i32*, i32** %6, align 8
  %24 = load i64, i64* %7, align 8
  %25 = add nsw i64 %24, 1
  store i64 %25, i64* %7, align 8
  %26 = trunc i64 %24 to i32
  %27 = call i32 @zmw_tx_buf_writeb(i32* %22, i32* %23, i32 %26, i64 0)
  br label %119

28:                                               ; preds = %4
  %29 = load i32*, i32** %5, align 8
  %30 = call i32 @zmw_enter_critical_section(i32* %29)
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** @wd, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 4
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = load i32, i32* %8, align 4
  %36 = sub nsw i32 %35, 1
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %56

42:                                               ; preds = %28
  %43 = load i32*, i32** %5, align 8
  %44 = load i32*, i32** %6, align 8
  %45 = load i64, i64* %7, align 8
  %46 = add nsw i64 %45, 1
  store i64 %46, i64* %7, align 8
  %47 = trunc i64 %45 to i32
  %48 = load i64, i64* @ZM_WLAN_EID_SSID, align 8
  %49 = call i32 @zmw_tx_buf_writeb(i32* %43, i32* %44, i32 %47, i64 %48)
  %50 = load i32*, i32** %5, align 8
  %51 = load i32*, i32** %6, align 8
  %52 = load i64, i64* %7, align 8
  %53 = add nsw i64 %52, 1
  store i64 %53, i64* %7, align 8
  %54 = trunc i64 %52 to i32
  %55 = call i32 @zmw_tx_buf_writeb(i32* %50, i32* %51, i32 %54, i64 0)
  br label %116

56:                                               ; preds = %28
  %57 = load i32*, i32** %5, align 8
  %58 = load i32*, i32** %6, align 8
  %59 = load i64, i64* %7, align 8
  %60 = add nsw i64 %59, 1
  store i64 %60, i64* %7, align 8
  %61 = trunc i64 %59 to i32
  %62 = load i64, i64* @ZM_WLAN_EID_SSID, align 8
  %63 = call i32 @zmw_tx_buf_writeb(i32* %57, i32* %58, i32 %61, i64 %62)
  %64 = load i32*, i32** %5, align 8
  %65 = load i32*, i32** %6, align 8
  %66 = load i64, i64* %7, align 8
  %67 = add nsw i64 %66, 1
  store i64 %67, i64* %7, align 8
  %68 = trunc i64 %66 to i32
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** @wd, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 4
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %71, align 8
  %73 = load i32, i32* %8, align 4
  %74 = sub nsw i32 %73, 1
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = call i32 @zmw_tx_buf_writeb(i32* %64, i32* %65, i32 %68, i64 %78)
  %80 = load i32*, i32** %5, align 8
  %81 = load i32*, i32** %6, align 8
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** @wd, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 4
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 0
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %84, align 8
  %86 = load i32, i32* %8, align 4
  %87 = sub nsw i32 %86, 1
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = load i64, i64* %7, align 8
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** @wd, align 8
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 4
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 0
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %95, align 8
  %97 = load i32, i32* %8, align 4
  %98 = sub nsw i32 %97, 1
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = call i32 @zfCopyToIntTxBuffer(i32* %80, i32* %81, i32 %91, i64 %92, i64 %102)
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** @wd, align 8
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 4
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 0
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %106, align 8
  %108 = load i32, i32* %8, align 4
  %109 = sub nsw i32 %108, 1
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* %7, align 8
  %115 = add nsw i64 %114, %113
  store i64 %115, i64* %7, align 8
  br label %116

116:                                              ; preds = %56, %42
  %117 = load i32*, i32** %5, align 8
  %118 = call i32 @zmw_leave_critical_section(i32* %117)
  br label %119

119:                                              ; preds = %116, %14
  %120 = load %struct.TYPE_10__*, %struct.TYPE_10__** @wd, align 8
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 3
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = icmp slt i32 %123, 3000
  br i1 %124, label %125, label %169

125:                                              ; preds = %119
  %126 = load i32*, i32** %5, align 8
  %127 = load i32*, i32** %6, align 8
  %128 = load i64, i64* %7, align 8
  %129 = load i32, i32* @ZM_WLAN_EID_SUPPORT_RATE, align 4
  %130 = load i32, i32* @ZM_RATE_SET_CCK, align 4
  %131 = call i64 @zfMmAddIeSupportRate(i32* %126, i32* %127, i64 %128, i32 %129, i32 %130)
  store i64 %131, i64* %7, align 8
  %132 = load %struct.TYPE_10__*, %struct.TYPE_10__** @wd, align 8
  %133 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = load i32, i32* @ZM_WIRELESS_MODE_24_54, align 4
  %136 = load i32, i32* @ZM_WIRELESS_MODE_24_N, align 4
  %137 = or i32 %135, %136
  %138 = and i32 %134, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %168

140:                                              ; preds = %125
  %141 = load %struct.TYPE_10__*, %struct.TYPE_10__** @wd, align 8
  %142 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %141, i32 0, i32 1
  %143 = load i64, i64* %142, align 8
  %144 = load i64, i64* @ZM_MODE_IBSS, align 8
  %145 = icmp eq i64 %143, %144
  br i1 %145, label %146, label %160

146:                                              ; preds = %140
  %147 = load %struct.TYPE_10__*, %struct.TYPE_10__** @wd, align 8
  %148 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %147, i32 0, i32 2
  %149 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %159

152:                                              ; preds = %146
  %153 = load i32*, i32** %5, align 8
  %154 = load i32*, i32** %6, align 8
  %155 = load i64, i64* %7, align 8
  %156 = load i32, i32* @ZM_WLAN_EID_EXTENDED_RATE, align 4
  %157 = load i32, i32* @ZM_RATE_SET_OFDM, align 4
  %158 = call i64 @zfMmAddIeSupportRate(i32* %153, i32* %154, i64 %155, i32 %156, i32 %157)
  store i64 %158, i64* %7, align 8
  br label %159

159:                                              ; preds = %152, %146
  br label %167

160:                                              ; preds = %140
  %161 = load i32*, i32** %5, align 8
  %162 = load i32*, i32** %6, align 8
  %163 = load i64, i64* %7, align 8
  %164 = load i32, i32* @ZM_WLAN_EID_EXTENDED_RATE, align 4
  %165 = load i32, i32* @ZM_RATE_SET_OFDM, align 4
  %166 = call i64 @zfMmAddIeSupportRate(i32* %161, i32* %162, i64 %163, i32 %164, i32 %165)
  store i64 %166, i64* %7, align 8
  br label %167

167:                                              ; preds = %160, %159
  br label %168

168:                                              ; preds = %167, %125
  br label %176

169:                                              ; preds = %119
  %170 = load i32*, i32** %5, align 8
  %171 = load i32*, i32** %6, align 8
  %172 = load i64, i64* %7, align 8
  %173 = load i32, i32* @ZM_WLAN_EID_SUPPORT_RATE, align 4
  %174 = load i32, i32* @ZM_RATE_SET_OFDM, align 4
  %175 = call i64 @zfMmAddIeSupportRate(i32* %170, i32* %171, i64 %172, i32 %173, i32 %174)
  store i64 %175, i64* %7, align 8
  br label %176

176:                                              ; preds = %169, %168
  %177 = load i64, i64* %7, align 8
  ret i64 %177
}

declare dso_local i32 @zmw_get_wlan_dev(i32*) #1

declare dso_local i32 @zmw_declare_for_critical_section(...) #1

declare dso_local i32 @zmw_tx_buf_writeb(i32*, i32*, i32, i64) #1

declare dso_local i32 @zmw_enter_critical_section(i32*) #1

declare dso_local i32 @zfCopyToIntTxBuffer(i32*, i32*, i32, i64, i64) #1

declare dso_local i32 @zmw_leave_critical_section(i32*) #1

declare dso_local i64 @zfMmAddIeSupportRate(i32*, i32*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
