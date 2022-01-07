; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_cpsmgr.c_zfPowerSavingMgrProcessBeacon.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_cpsmgr.c_zfPowerSavingMgrProcessBeacon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i64, i32 }

@wd = common dso_local global %struct.TYPE_6__* null, align 8
@ZM_STA_PS_NONE = common dso_local global i32 0, align 4
@ZM_WLAN_EID_TIM = common dso_local global i32 0, align 4
@ZM_BIT_0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"wake up and send null data\0A\00", align 1
@ZM_EXTERNAL_ALLOC_BUF = common dso_local global i32 0, align 4
@ZM_PS_MSG_STATE_S1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zfPowerSavingMgrProcessBeacon(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %13 = load i32*, i32** %3, align 8
  %14 = call i32 @zmw_get_wlan_dev(i32* %13)
  %15 = call i32 (...) @zmw_declare_for_critical_section()
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @ZM_STA_PS_NONE, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  br label %144

23:                                               ; preds = %2
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 4
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  store i32 1, i32* %27, align 8
  %28 = load i32*, i32** %3, align 8
  %29 = load i32*, i32** %4, align 8
  %30 = load i32, i32* @ZM_WLAN_EID_TIM, align 4
  %31 = call i32 @zfFindElement(i32* %28, i32* %29, i32 %30)
  store i32 %31, i32* %7, align 4
  %32 = icmp ne i32 %31, 65535
  br i1 %32, label %33, label %127

33:                                               ; preds = %23
  %34 = load i32*, i32** %3, align 8
  %35 = load i32*, i32** %4, align 8
  %36 = load i32, i32* %7, align 4
  %37 = add nsw i32 %36, 1
  %38 = call i32 @zmw_rx_buf_readb(i32* %34, i32* %35, i32 %37)
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  %40 = icmp sgt i32 %39, 3
  br i1 %40, label %41, label %126

41:                                               ; preds = %33
  %42 = load i32*, i32** %3, align 8
  %43 = load i32*, i32** %4, align 8
  %44 = load i32, i32* %7, align 4
  %45 = add nsw i32 %44, 4
  %46 = call i32 @zmw_rx_buf_readb(i32* %42, i32* %43, i32 %45)
  %47 = load i32, i32* @ZM_BIT_0, align 4
  %48 = xor i32 %47, -1
  %49 = and i32 %46, %48
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* %8, align 4
  %52 = add nsw i32 %50, %51
  %53 = sub nsw i32 %52, 4
  store i32 %53, i32* %9, align 4
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = ashr i32 %57, 3
  store i32 %58, i32* %10, align 4
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = and i32 %62, 7
  store i32 %63, i32* %11, align 4
  %64 = load i32, i32* %10, align 4
  %65 = load i32, i32* %8, align 4
  %66 = icmp sge i32 %64, %65
  br i1 %66, label %67, label %125

67:                                               ; preds = %41
  %68 = load i32, i32* %10, align 4
  %69 = load i32, i32* %9, align 4
  %70 = icmp sle i32 %68, %69
  br i1 %70, label %71, label %125

71:                                               ; preds = %67
  %72 = load i32*, i32** %3, align 8
  %73 = load i32*, i32** %4, align 8
  %74 = load i32, i32* %7, align 4
  %75 = add nsw i32 %74, 5
  %76 = load i32, i32* %10, align 4
  %77 = add nsw i32 %75, %76
  %78 = load i32, i32* %8, align 4
  %79 = sub nsw i32 %77, %78
  %80 = call i32 @zmw_rx_buf_readb(i32* %72, i32* %73, i32 %79)
  store i32 %80, i32* %6, align 4
  %81 = load i32, i32* %6, align 4
  %82 = load i32, i32* %11, align 4
  %83 = ashr i32 %81, %82
  %84 = load i32, i32* @ZM_BIT_0, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %124

87:                                               ; preds = %71
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = and i32 %91, 15
  %93 = icmp ne i32 %92, 15
  br i1 %93, label %94, label %123

94:                                               ; preds = %87
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 4
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  store i32 0, i32* %98, align 8
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  switch i32 %102, label %118 [
    i32 128, label %103
    i32 130, label %103
    i32 129, label %106
  ]

103:                                              ; preds = %94, %94
  %104 = load i32*, i32** %3, align 8
  %105 = call i32 @zfSendPSPoll(i32* %104)
  br label %118

106:                                              ; preds = %94
  %107 = call i32 @zm_debug_msg0(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %108 = load i32*, i32** %3, align 8
  %109 = call i32 @zmw_enter_critical_section(i32* %108)
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 4
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 1
  store i32 400, i32* %113, align 4
  %114 = load i32*, i32** %3, align 8
  %115 = call i32 @zmw_leave_critical_section(i32* %114)
  %116 = load i32*, i32** %3, align 8
  %117 = call i32 @zfSendNullData(i32* %116, i32 0)
  br label %118

118:                                              ; preds = %94, %106, %103
  %119 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 4
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 2
  store i64 0, i64* %122, align 8
  br label %123

123:                                              ; preds = %118, %87
  br label %124

124:                                              ; preds = %123, %71
  br label %125

125:                                              ; preds = %124, %67, %41
  br label %126

126:                                              ; preds = %125, %33
  br label %127

127:                                              ; preds = %126, %23
  br label %128

128:                                              ; preds = %136, %127
  %129 = load i32*, i32** %3, align 8
  %130 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 3
  %133 = load i32, i32* %132, align 4
  %134 = call i32* @zfQueueGet(i32* %129, i32 %133)
  store i32* %134, i32** %12, align 8
  %135 = icmp ne i32* %134, null
  br i1 %135, label %136, label %141

136:                                              ; preds = %128
  %137 = load i32*, i32** %3, align 8
  %138 = load i32*, i32** %12, align 8
  %139 = load i32, i32* @ZM_EXTERNAL_ALLOC_BUF, align 4
  %140 = call i32 @zfTxSendEth(i32* %137, i32* %138, i32 0, i32 %139, i32 0)
  br label %128

141:                                              ; preds = %128
  %142 = load i32*, i32** %3, align 8
  %143 = call i32 @zfPowerSavingMgrMain(i32* %142)
  br label %144

144:                                              ; preds = %141, %22
  ret void
}

declare dso_local i32 @zmw_get_wlan_dev(i32*) #1

declare dso_local i32 @zmw_declare_for_critical_section(...) #1

declare dso_local i32 @zfFindElement(i32*, i32*, i32) #1

declare dso_local i32 @zmw_rx_buf_readb(i32*, i32*, i32) #1

declare dso_local i32 @zfSendPSPoll(i32*) #1

declare dso_local i32 @zm_debug_msg0(i8*) #1

declare dso_local i32 @zmw_enter_critical_section(i32*) #1

declare dso_local i32 @zmw_leave_critical_section(i32*) #1

declare dso_local i32 @zfSendNullData(i32*, i32) #1

declare dso_local i32* @zfQueueGet(i32*, i32) #1

declare dso_local i32 @zfTxSendEth(i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @zfPowerSavingMgrMain(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
