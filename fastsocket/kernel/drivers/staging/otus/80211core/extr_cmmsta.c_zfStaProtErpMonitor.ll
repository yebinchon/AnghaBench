; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_cmmsta.c_zfStaProtErpMonitor.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_cmmsta.c_zfStaProtErpMonitor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i32, i32 }

@wd = common dso_local global %struct.TYPE_4__* null, align 8
@ZM_MODE_INFRASTRUCTURE = common dso_local global i64 0, align 8
@ZM_WLAN_HEADER_A2_OFFSET = common dso_local global i32 0, align 4
@ZM_WLAN_EID_ERP = common dso_local global i32 0, align 4
@ZM_BIT_1 = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@ZM_WLAN_EID_HT_CAPABILITY = common dso_local global i32 0, align 4
@ZM_WLAN_PREN2_EID_HTCAPABILITY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zfStaProtErpMonitor(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [6 x i32], align 16
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = call i32 @zmw_get_wlan_dev(i32* %8)
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @ZM_MODE_INFRASTRUCTURE, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %102

15:                                               ; preds = %2
  %16 = load i32*, i32** %3, align 8
  %17 = call i64 @zfStaIsConnected(i32* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %102

19:                                               ; preds = %15
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 0
  %25 = call i32 @ZM_MAC_WORD_TO_BYTE(i32 %23, i32* %24)
  %26 = load i32*, i32** %3, align 8
  %27 = load i32*, i32** %4, align 8
  %28 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 0
  %29 = load i32, i32* @ZM_WLAN_HEADER_A2_OFFSET, align 4
  %30 = call i64 @zfRxBufferEqualToStr(i32* %26, i32* %27, i32* %28, i32 %29, i32 6)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %80

32:                                               ; preds = %19
  %33 = load i32*, i32** %3, align 8
  %34 = load i32*, i32** %4, align 8
  %35 = load i32, i32* @ZM_WLAN_EID_ERP, align 4
  %36 = call i32 @zfFindElement(i32* %33, i32* %34, i32 %35)
  store i32 %36, i32* %5, align 4
  %37 = icmp ne i32 %36, 65535
  br i1 %37, label %38, label %79

38:                                               ; preds = %32
  %39 = load i32*, i32** %3, align 8
  %40 = load i32*, i32** %4, align 8
  %41 = load i32, i32* %5, align 4
  %42 = add nsw i32 %41, 2
  %43 = call i32 @zmw_rx_buf_readb(i32* %39, i32* %40, i32 %42)
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* @ZM_BIT_1, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %63

48:                                               ; preds = %38
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @FALSE, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %62

55:                                               ; preds = %48
  %56 = load i64, i64* @TRUE, align 8
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  store i64 %56, i64* %59, align 8
  %60 = load i32*, i32** %3, align 8
  %61 = call i32 @zfHpSetSlotTime(i32* %60, i32 0)
  br label %62

62:                                               ; preds = %55, %48
  br label %78

63:                                               ; preds = %38
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @TRUE, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %77

70:                                               ; preds = %63
  %71 = load i64, i64* @FALSE, align 8
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  store i64 %71, i64* %74, align 8
  %75 = load i32*, i32** %3, align 8
  %76 = call i32 @zfHpSetSlotTime(i32* %75, i32 1)
  br label %77

77:                                               ; preds = %70, %63
  br label %78

78:                                               ; preds = %77, %62
  br label %79

79:                                               ; preds = %78, %32
  br label %80

80:                                               ; preds = %79, %19
  %81 = load i32*, i32** %3, align 8
  %82 = load i32*, i32** %4, align 8
  %83 = load i32, i32* @ZM_WLAN_EID_HT_CAPABILITY, align 4
  %84 = call i32 @zfFindElement(i32* %81, i32* %82, i32 %83)
  store i32 %84, i32* %5, align 4
  %85 = icmp ne i32 %84, 65535
  br i1 %85, label %86, label %87

86:                                               ; preds = %80
  br label %101

87:                                               ; preds = %80
  %88 = load i32*, i32** %3, align 8
  %89 = load i32*, i32** %4, align 8
  %90 = load i32, i32* @ZM_WLAN_PREN2_EID_HTCAPABILITY, align 4
  %91 = call i32 @zfFindElement(i32* %88, i32* %89, i32 %90)
  store i32 %91, i32* %5, align 4
  %92 = icmp ne i32 %91, 65535
  br i1 %92, label %93, label %94

93:                                               ; preds = %87
  br label %100

94:                                               ; preds = %87
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %97, align 8
  br label %100

100:                                              ; preds = %94, %93
  br label %101

101:                                              ; preds = %100, %86
  br label %102

102:                                              ; preds = %101, %15, %2
  ret void
}

declare dso_local i32 @zmw_get_wlan_dev(i32*) #1

declare dso_local i64 @zfStaIsConnected(i32*) #1

declare dso_local i32 @ZM_MAC_WORD_TO_BYTE(i32, i32*) #1

declare dso_local i64 @zfRxBufferEqualToStr(i32*, i32*, i32*, i32, i32) #1

declare dso_local i32 @zfFindElement(i32*, i32*, i32) #1

declare dso_local i32 @zmw_rx_buf_readb(i32*, i32*, i32) #1

declare dso_local i32 @zfHpSetSlotTime(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
