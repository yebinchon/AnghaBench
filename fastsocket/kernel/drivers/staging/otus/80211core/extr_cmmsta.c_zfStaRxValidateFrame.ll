; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_cmmsta.c_zfStaRxValidateFrame.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_cmmsta.c_zfStaRxValidateFrame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i64, i32 (i32*, i32*)*, i64, i32* }
%struct.TYPE_4__ = type { i32 }

@ZM_WLAN_HEADER_A1_OFFSET = common dso_local global i32 0, align 4
@ZM_WLAN_DATA_FRAME = common dso_local global i32 0, align 4
@ZM_ERR_DATA_BEFORE_CONNECTED = common dso_local global i32 0, align 4
@wd = common dso_local global %struct.TYPE_6__* null, align 8
@ZM_MODE_INFRASTRUCTURE = common dso_local global i64 0, align 8
@ZM_WLAN_HEADER_A2_OFFSET = common dso_local global i64 0, align 8
@ZM_ERR_DATA_BSSID_NOT_MATCHED = common dso_local global i32 0, align 4
@ZM_MODE_IBSS = common dso_local global i64 0, align 8
@ZM_WLAN_HEADER_A3_OFFSET = common dso_local global i64 0, align 8
@ZM_ENCRYPTION_WEP_DISABLED = common dso_local global i64 0, align 8
@ZM_BIT_6 = common dso_local global i32 0, align 4
@ZM_ERR_DATA_NOT_ENCRYPTED = common dso_local global i32 0, align 4
@ZM_SUCCESS = common dso_local global i32 0, align 4
@ZM_ENCRYPTION_AES = common dso_local global i64 0, align 8
@ZM_ENCRYPTION_TKIP = common dso_local global i64 0, align 8
@ZM_WLAN_FRAME_TYPE_DEAUTH = common dso_local global i32 0, align 4
@sa = common dso_local global i32* null, align 8
@sa0 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfStaRxValidateFrame(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [3 x i32], align 4
  %12 = alloca [3 x i32], align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %13 = load i32*, i32** %4, align 8
  %14 = call i32 @zmw_get_wlan_dev(i32* %13)
  %15 = load i32*, i32** %4, align 8
  %16 = load i32*, i32** %5, align 8
  %17 = call i32 @zmw_rx_buf_readb(i32* %15, i32* %16, i32 0)
  store i32 %17, i32* %6, align 4
  %18 = load i32*, i32** %4, align 8
  %19 = load i32*, i32** %5, align 8
  %20 = load i32, i32* @ZM_WLAN_HEADER_A1_OFFSET, align 4
  %21 = call i32 @zmw_rx_buf_readb(i32* %18, i32* %19, i32 %20)
  store i32 %21, i32* %8, align 4
  %22 = load i32*, i32** %4, align 8
  %23 = call i64 @zfStaIsConnected(i32* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %32, label %25

25:                                               ; preds = %2
  %26 = load i32, i32* %6, align 4
  %27 = and i32 %26, 15
  %28 = load i32, i32* @ZM_WLAN_DATA_FRAME, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = load i32, i32* @ZM_ERR_DATA_BEFORE_CONNECTED, align 4
  store i32 %31, i32* %3, align 4
  br label %175

32:                                               ; preds = %25, %2
  %33 = load i32*, i32** %4, align 8
  %34 = call i64 @zfStaIsConnected(i32* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %173

36:                                               ; preds = %32
  %37 = load i32, i32* %6, align 4
  %38 = and i32 %37, 15
  %39 = load i32, i32* @ZM_WLAN_DATA_FRAME, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %173

41:                                               ; preds = %36
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @ZM_MODE_INFRASTRUCTURE, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %81

47:                                               ; preds = %41
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 3
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @zmw_cpu_to_le16(i32 %53)
  %55 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 0
  store i32 %54, i32* %55, align 4
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 3
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @zmw_cpu_to_le16(i32 %61)
  %63 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 1
  store i32 %62, i32* %63, align 4
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 3
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 2
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @zmw_cpu_to_le16(i32 %69)
  %71 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 2
  store i32 %70, i32* %71, align 4
  %72 = load i32*, i32** %4, align 8
  %73 = load i32*, i32** %5, align 8
  %74 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 0
  %75 = load i64, i64* @ZM_WLAN_HEADER_A2_OFFSET, align 8
  %76 = call i32 @zfRxBufferEqualToStr(i32* %72, i32* %73, i32* %74, i64 %75, i32 6)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %80, label %78

78:                                               ; preds = %47
  %79 = load i32, i32* @ZM_ERR_DATA_BSSID_NOT_MATCHED, align 4
  store i32 %79, i32* %3, align 4
  br label %175

80:                                               ; preds = %47
  br label %122

81:                                               ; preds = %41
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @ZM_MODE_IBSS, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %121

87:                                               ; preds = %81
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 3
  %91 = load i32*, i32** %90, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @zmw_cpu_to_le16(i32 %93)
  %95 = getelementptr inbounds [3 x i32], [3 x i32]* %12, i64 0, i64 0
  store i32 %94, i32* %95, align 4
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 3
  %99 = load i32*, i32** %98, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 1
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @zmw_cpu_to_le16(i32 %101)
  %103 = getelementptr inbounds [3 x i32], [3 x i32]* %12, i64 0, i64 1
  store i32 %102, i32* %103, align 4
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 3
  %107 = load i32*, i32** %106, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 2
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @zmw_cpu_to_le16(i32 %109)
  %111 = getelementptr inbounds [3 x i32], [3 x i32]* %12, i64 0, i64 2
  store i32 %110, i32* %111, align 4
  %112 = load i32*, i32** %4, align 8
  %113 = load i32*, i32** %5, align 8
  %114 = getelementptr inbounds [3 x i32], [3 x i32]* %12, i64 0, i64 0
  %115 = load i64, i64* @ZM_WLAN_HEADER_A3_OFFSET, align 8
  %116 = call i32 @zfRxBufferEqualToStr(i32* %112, i32* %113, i32* %114, i64 %115, i32 6)
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %120, label %118

118:                                              ; preds = %87
  %119 = load i32, i32* @ZM_ERR_DATA_BSSID_NOT_MATCHED, align 4
  store i32 %119, i32* %3, align 4
  br label %175

120:                                              ; preds = %87
  br label %121

121:                                              ; preds = %120, %81
  br label %122

122:                                              ; preds = %121, %80
  %123 = load i32*, i32** %4, align 8
  %124 = load i32*, i32** %5, align 8
  %125 = call i32 @zmw_rx_buf_readb(i32* %123, i32* %124, i32 1)
  store i32 %125, i32* %7, align 4
  %126 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 2
  %129 = load i64, i64* %128, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %172

131:                                              ; preds = %122
  %132 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* @ZM_ENCRYPTION_WEP_DISABLED, align 8
  %137 = icmp ne i64 %135, %136
  br i1 %137, label %138, label %172

138:                                              ; preds = %131
  %139 = load i32, i32* %7, align 4
  %140 = load i32, i32* @ZM_BIT_6, align 4
  %141 = and i32 %139, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %172, label %143

143:                                              ; preds = %138
  %144 = load i32, i32* @ZM_ERR_DATA_NOT_ENCRYPTED, align 4
  store i32 %144, i32* %9, align 4
  %145 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 1
  %147 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %146, i32 0, i32 1
  %148 = load i32 (i32*, i32*)*, i32 (i32*, i32*)** %147, align 8
  %149 = icmp ne i32 (i32*, i32*)* %148, null
  br i1 %149, label %150, label %158

150:                                              ; preds = %143
  %151 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 1
  %153 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %152, i32 0, i32 1
  %154 = load i32 (i32*, i32*)*, i32 (i32*, i32*)** %153, align 8
  %155 = load i32*, i32** %4, align 8
  %156 = load i32*, i32** %5, align 8
  %157 = call i32 %154(i32* %155, i32* %156)
  store i32 %157, i32* %9, align 4
  br label %160

158:                                              ; preds = %143
  %159 = load i32, i32* @ZM_ERR_DATA_NOT_ENCRYPTED, align 4
  store i32 %159, i32* %9, align 4
  br label %160

160:                                              ; preds = %158, %150
  %161 = load i32, i32* %9, align 4
  %162 = load i32, i32* @ZM_ERR_DATA_NOT_ENCRYPTED, align 4
  %163 = icmp eq i32 %161, %162
  br i1 %163, label %164, label %170

164:                                              ; preds = %160
  %165 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i32 0, i32 2
  %167 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %167, align 8
  br label %170

170:                                              ; preds = %164, %160
  %171 = load i32, i32* %9, align 4
  store i32 %171, i32* %3, align 4
  br label %175

172:                                              ; preds = %138, %131, %122
  br label %173

173:                                              ; preds = %172, %36, %32
  %174 = load i32, i32* @ZM_SUCCESS, align 4
  store i32 %174, i32* %3, align 4
  br label %175

175:                                              ; preds = %173, %170, %118, %78, %30
  %176 = load i32, i32* %3, align 4
  ret i32 %176
}

declare dso_local i32 @zmw_get_wlan_dev(i32*) #1

declare dso_local i32 @zmw_rx_buf_readb(i32*, i32*, i32) #1

declare dso_local i64 @zfStaIsConnected(i32*) #1

declare dso_local i32 @zmw_cpu_to_le16(i32) #1

declare dso_local i32 @zfRxBufferEqualToStr(i32*, i32*, i32*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
