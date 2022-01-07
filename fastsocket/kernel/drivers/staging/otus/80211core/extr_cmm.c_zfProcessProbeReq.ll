; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_cmm.c_zfProcessProbeReq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_cmm.c_zfProcessProbeReq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32, i64*, i32*, i32** }
%struct.TYPE_4__ = type { i64 }

@wd = common dso_local global %struct.TYPE_6__* null, align 8
@ZM_MODE_AP = common dso_local global i64 0, align 8
@ZM_MODE_IBSS = common dso_local global i64 0, align 8
@ZM_LV_3 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Ignore probe req\00", align 1
@ZM_STA_STATE_DISCONNECT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [40 x i8] c"Packets dropped due to disconnect state\00", align 1
@ZM_WLAN_FRAME_TYPE_PROBERSP = common dso_local global i32 0, align 4
@ZM_WLAN_EID_SSID = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"probe req SSID not found\00", align 1
@ZM_MAX_AP_SUPPORT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"len=\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zfProcessProbeReq(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %13 = load i32*, i32** %4, align 8
  %14 = call i32 @zmw_get_wlan_dev(i32* %13)
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @ZM_MODE_AP, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %29

20:                                               ; preds = %3
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @ZM_MODE_IBSS, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %20
  %27 = load i32, i32* @ZM_LV_3, align 4
  %28 = call i32 @zm_msg0_mm(i32 %27, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %166

29:                                               ; preds = %20, %3
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @ZM_MODE_AP, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %45

35:                                               ; preds = %29
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @ZM_STA_STATE_DISCONNECT, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %35
  %43 = load i32, i32* @ZM_LV_3, align 4
  %44 = call i32 @zm_msg0_mm(i32 %43, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  br label %166

45:                                               ; preds = %35, %29
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @ZM_MODE_IBSS, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %56

51:                                               ; preds = %45
  %52 = load i32*, i32** %4, align 8
  %53 = load i32, i32* @ZM_WLAN_FRAME_TYPE_PROBERSP, align 4
  %54 = load i32*, i32** %6, align 8
  %55 = call i32 @zfSendMmFrame(i32* %52, i32 %53, i32* %54, i32 0, i32 0, i32 0)
  br label %166

56:                                               ; preds = %45
  %57 = load i32*, i32** %4, align 8
  %58 = load i32*, i32** %5, align 8
  %59 = load i32, i32* @ZM_WLAN_EID_SSID, align 4
  %60 = call i32 @zfFindElement(i32* %57, i32* %58, i32 %59)
  store i32 %60, i32* %7, align 4
  %61 = icmp eq i32 %60, 65535
  br i1 %61, label %62, label %65

62:                                               ; preds = %56
  %63 = load i32, i32* @ZM_LV_3, align 4
  %64 = call i32 @zm_msg0_mm(i32 %63, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  br label %166

65:                                               ; preds = %56
  %66 = load i32*, i32** %4, align 8
  %67 = load i32*, i32** %5, align 8
  %68 = load i32, i32* %7, align 4
  %69 = add nsw i32 %68, 1
  %70 = call i32 @zmw_rx_buf_readb(i32* %66, i32* %67, i32 %69)
  store i32 %70, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %71

71:                                               ; preds = %163, %65
  %72 = load i32, i32* %9, align 4
  %73 = load i32, i32* @ZM_MAX_AP_SUPPORT, align 4
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %75, label %166

75:                                               ; preds = %71
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* %9, align 4
  %81 = shl i32 1, %80
  %82 = and i32 %79, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %162

84:                                               ; preds = %75
  %85 = load i32, i32* @ZM_LV_3, align 4
  %86 = load i32, i32* %8, align 4
  %87 = call i32 @zm_msg1_mm(i32 %85, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %86)
  store i32 0, i32* %12, align 4
  %88 = load i32, i32* %8, align 4
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %102

90:                                               ; preds = %84
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 1
  %94 = load i64*, i64** %93, align 8
  %95 = load i32, i32* %9, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i64, i64* %94, i64 %96
  %98 = load i64, i64* %97, align 8
  %99 = icmp eq i64 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %90
  store i32 1, i32* %12, align 4
  br label %101

101:                                              ; preds = %100, %90
  br label %151

102:                                              ; preds = %84
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 2
  %106 = load i32*, i32** %105, align 8
  %107 = load i32, i32* %9, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* %8, align 4
  %112 = icmp eq i32 %110, %111
  br i1 %112, label %113, label %150

113:                                              ; preds = %102
  store i32 0, i32* %10, align 4
  br label %114

114:                                              ; preds = %141, %113
  %115 = load i32, i32* %10, align 4
  %116 = load i32, i32* %8, align 4
  %117 = icmp slt i32 %115, %116
  br i1 %117, label %118, label %144

118:                                              ; preds = %114
  %119 = load i32*, i32** %4, align 8
  %120 = load i32*, i32** %5, align 8
  %121 = load i32, i32* %7, align 4
  %122 = add nsw i32 %121, 2
  %123 = load i32, i32* %10, align 4
  %124 = add nsw i32 %122, %123
  %125 = call i32 @zmw_rx_buf_readb(i32* %119, i32* %120, i32 %124)
  store i32 %125, i32* %11, align 4
  %126 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 3
  %129 = load i32**, i32*** %128, align 8
  %130 = load i32, i32* %9, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32*, i32** %129, i64 %131
  %133 = load i32*, i32** %132, align 8
  %134 = load i32, i32* %10, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %133, i64 %135
  %137 = load i32, i32* %136, align 4
  %138 = icmp ne i32 %125, %137
  br i1 %138, label %139, label %140

139:                                              ; preds = %118
  br label %144

140:                                              ; preds = %118
  br label %141

141:                                              ; preds = %140
  %142 = load i32, i32* %10, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %10, align 4
  br label %114

144:                                              ; preds = %139, %114
  %145 = load i32, i32* %10, align 4
  %146 = load i32, i32* %8, align 4
  %147 = icmp eq i32 %145, %146
  br i1 %147, label %148, label %149

148:                                              ; preds = %144
  store i32 1, i32* %12, align 4
  br label %149

149:                                              ; preds = %148, %144
  br label %150

150:                                              ; preds = %149, %102
  br label %151

151:                                              ; preds = %150, %101
  %152 = load i32, i32* %12, align 4
  %153 = icmp eq i32 %152, 1
  br i1 %153, label %154, label %161

154:                                              ; preds = %151
  %155 = load i32*, i32** %4, align 8
  %156 = load i32, i32* @ZM_WLAN_FRAME_TYPE_PROBERSP, align 4
  %157 = load i32*, i32** %6, align 8
  %158 = load i32, i32* %9, align 4
  %159 = load i32, i32* %9, align 4
  %160 = call i32 @zfSendMmFrame(i32* %155, i32 %156, i32* %157, i32 %158, i32 0, i32 %159)
  br label %161

161:                                              ; preds = %154, %151
  br label %162

162:                                              ; preds = %161, %75
  br label %163

163:                                              ; preds = %162
  %164 = load i32, i32* %9, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %9, align 4
  br label %71

166:                                              ; preds = %26, %42, %51, %62, %71
  ret void
}

declare dso_local i32 @zmw_get_wlan_dev(i32*) #1

declare dso_local i32 @zm_msg0_mm(i32, i8*) #1

declare dso_local i32 @zfSendMmFrame(i32*, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @zfFindElement(i32*, i32*, i32) #1

declare dso_local i32 @zmw_rx_buf_readb(i32*, i32*, i32) #1

declare dso_local i32 @zm_msg1_mm(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
