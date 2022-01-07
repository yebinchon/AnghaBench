; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_cmmsta.c_zfStaProcessDeauth.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_cmmsta.c_zfStaProcessDeauth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }

@wd = common dso_local global %struct.TYPE_6__* null, align 8
@ZM_MODE_INFRASTRUCTURE = common dso_local global i64 0, align 8
@ZM_WLAN_HEADER_A3_OFFSET = common dso_local global i64 0, align 8
@ZM_STATUS_MEDIA_DISCONNECT_DEAUTH = common dso_local global i32 0, align 4
@ZM_STATUS_MEDIA_DISCONNECT_AUTH_FAILED = common dso_local global i32 0, align 4
@ZM_MODE_IBSS = common dso_local global i64 0, align 8
@ZM_WLAN_HEADER_A2_OFFSET = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zfStaProcessDeauth(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca [3 x i64], align 16
  %6 = alloca [3 x i64], align 16
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = call i32 @zmw_get_wlan_dev(i32* %9)
  %11 = call i32 (...) @zmw_declare_for_critical_section()
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @ZM_MODE_INFRASTRUCTURE, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %98

17:                                               ; preds = %2
  %18 = load i32*, i32** %3, align 8
  %19 = load i32*, i32** %4, align 8
  %20 = load i64, i64* @ZM_WLAN_HEADER_A3_OFFSET, align 8
  %21 = call i64 @zmw_rx_buf_readh(i32* %18, i32* %19, i64 %20)
  %22 = getelementptr inbounds [3 x i64], [3 x i64]* %5, i64 0, i64 0
  store i64 %21, i64* %22, align 16
  %23 = load i32*, i32** %3, align 8
  %24 = load i32*, i32** %4, align 8
  %25 = load i64, i64* @ZM_WLAN_HEADER_A3_OFFSET, align 8
  %26 = add nsw i64 %25, 2
  %27 = call i64 @zmw_rx_buf_readh(i32* %23, i32* %24, i64 %26)
  %28 = getelementptr inbounds [3 x i64], [3 x i64]* %5, i64 0, i64 1
  store i64 %27, i64* %28, align 8
  %29 = load i32*, i32** %3, align 8
  %30 = load i32*, i32** %4, align 8
  %31 = load i64, i64* @ZM_WLAN_HEADER_A3_OFFSET, align 8
  %32 = add nsw i64 %31, 4
  %33 = call i64 @zmw_rx_buf_readh(i32* %29, i32* %30, i64 %32)
  %34 = getelementptr inbounds [3 x i64], [3 x i64]* %5, i64 0, i64 2
  store i64 %33, i64* %34, align 16
  %35 = getelementptr inbounds [3 x i64], [3 x i64]* %5, i64 0, i64 0
  %36 = load i64, i64* %35, align 16
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i64*, i64** %39, align 8
  %41 = getelementptr inbounds i64, i64* %40, i64 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp eq i64 %36, %42
  br i1 %43, label %44, label %97

44:                                               ; preds = %17
  %45 = getelementptr inbounds [3 x i64], [3 x i64]* %5, i64 0, i64 1
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i64*, i64** %49, align 8
  %51 = getelementptr inbounds i64, i64* %50, i64 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp eq i64 %46, %52
  br i1 %53, label %54, label %97

54:                                               ; preds = %44
  %55 = getelementptr inbounds [3 x i64], [3 x i64]* %5, i64 0, i64 2
  %56 = load i64, i64* %55, align 16
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load i64*, i64** %59, align 8
  %61 = getelementptr inbounds i64, i64* %60, i64 2
  %62 = load i64, i64* %61, align 8
  %63 = icmp eq i64 %56, %62
  br i1 %63, label %64, label %97

64:                                               ; preds = %54
  %65 = load i32*, i32** %3, align 8
  %66 = load i32*, i32** %4, align 8
  %67 = call i32 @zfwBufGetSize(i32* %65, i32* %66)
  %68 = icmp sge i32 %67, 26
  br i1 %68, label %69, label %96

69:                                               ; preds = %64
  %70 = load i32*, i32** %3, align 8
  %71 = call i64 @zfStaIsConnected(i32* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %81

73:                                               ; preds = %69
  %74 = load i32*, i32** %3, align 8
  %75 = load i32, i32* @ZM_STATUS_MEDIA_DISCONNECT_DEAUTH, align 4
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  %79 = load i64*, i64** %78, align 8
  %80 = call i32 @zfStaConnectFail(i32* %74, i32 %75, i64* %79, i32 2)
  br label %95

81:                                               ; preds = %69
  %82 = load i32*, i32** %3, align 8
  %83 = call i64 @zfStaIsConnecting(i32* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %93

85:                                               ; preds = %81
  %86 = load i32*, i32** %3, align 8
  %87 = load i32, i32* @ZM_STATUS_MEDIA_DISCONNECT_AUTH_FAILED, align 4
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 0
  %91 = load i64*, i64** %90, align 8
  %92 = call i32 @zfStaConnectFail(i32* %86, i32 %87, i64* %91, i32 3)
  br label %94

93:                                               ; preds = %81
  br label %94

94:                                               ; preds = %93, %85
  br label %95

95:                                               ; preds = %94, %73
  br label %96

96:                                               ; preds = %95, %64
  br label %97

97:                                               ; preds = %96, %54, %44, %17
  br label %146

98:                                               ; preds = %2
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @ZM_MODE_IBSS, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %145

104:                                              ; preds = %98
  %105 = load i32*, i32** %3, align 8
  %106 = call i64 @zfStaIsConnected(i32* %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %144

108:                                              ; preds = %104
  %109 = load i32*, i32** %3, align 8
  %110 = load i32*, i32** %4, align 8
  %111 = load i64, i64* @ZM_WLAN_HEADER_A2_OFFSET, align 8
  %112 = call i64 @zmw_rx_buf_readh(i32* %109, i32* %110, i64 %111)
  %113 = getelementptr inbounds [3 x i64], [3 x i64]* %6, i64 0, i64 0
  store i64 %112, i64* %113, align 16
  %114 = load i32*, i32** %3, align 8
  %115 = load i32*, i32** %4, align 8
  %116 = load i64, i64* @ZM_WLAN_HEADER_A2_OFFSET, align 8
  %117 = add nsw i64 %116, 2
  %118 = call i64 @zmw_rx_buf_readh(i32* %114, i32* %115, i64 %117)
  %119 = getelementptr inbounds [3 x i64], [3 x i64]* %6, i64 0, i64 1
  store i64 %118, i64* %119, align 8
  %120 = load i32*, i32** %3, align 8
  %121 = load i32*, i32** %4, align 8
  %122 = load i64, i64* @ZM_WLAN_HEADER_A2_OFFSET, align 8
  %123 = add nsw i64 %122, 4
  %124 = call i64 @zmw_rx_buf_readh(i32* %120, i32* %121, i64 %123)
  %125 = getelementptr inbounds [3 x i64], [3 x i64]* %6, i64 0, i64 2
  store i64 %124, i64* %125, align 16
  %126 = load i32*, i32** %3, align 8
  %127 = call i32 @zmw_enter_critical_section(i32* %126)
  %128 = load i32*, i32** %3, align 8
  %129 = getelementptr inbounds [3 x i64], [3 x i64]* %6, i64 0, i64 0
  %130 = call i32 @zfStaFindOppositeByMACAddr(i32* %128, i64* %129, i64* %7)
  store i32 %130, i32* %8, align 4
  %131 = load i32, i32* %8, align 4
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %141

133:                                              ; preds = %108
  %134 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i32 0, i32 1
  %137 = load %struct.TYPE_4__*, %struct.TYPE_4__** %136, align 8
  %138 = load i64, i64* %7, align 8
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i64 %138
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 0
  store i64 0, i64* %140, align 8
  br label %141

141:                                              ; preds = %133, %108
  %142 = load i32*, i32** %3, align 8
  %143 = call i32 @zmw_leave_critical_section(i32* %142)
  br label %144

144:                                              ; preds = %141, %104
  br label %145

145:                                              ; preds = %144, %98
  br label %146

146:                                              ; preds = %145, %97
  ret void
}

declare dso_local i32 @zmw_get_wlan_dev(i32*) #1

declare dso_local i32 @zmw_declare_for_critical_section(...) #1

declare dso_local i64 @zmw_rx_buf_readh(i32*, i32*, i64) #1

declare dso_local i32 @zfwBufGetSize(i32*, i32*) #1

declare dso_local i64 @zfStaIsConnected(i32*) #1

declare dso_local i32 @zfStaConnectFail(i32*, i32, i64*, i32) #1

declare dso_local i64 @zfStaIsConnecting(i32*) #1

declare dso_local i32 @zmw_enter_critical_section(i32*) #1

declare dso_local i32 @zfStaFindOppositeByMACAddr(i32*, i64*, i64*) #1

declare dso_local i32 @zmw_leave_critical_section(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
