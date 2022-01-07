; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_ctxrx.c_zfiTxSendEth.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_ctxrx.c_zfiTxSendEth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32 }

@wd = common dso_local global %struct.TYPE_2__* null, align 8
@ZM_LV_2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"zfiTxSendEth(), port=\00", align 1
@ZM_PORT_DISABLED = common dso_local global i32 0, align 4
@ZM_ERR_TX_PORT_DISABLED = common dso_local global i32 0, align 4
@ZM_MODE_AP = common dso_local global i64 0, align 8
@ZM_SUCCESS = common dso_local global i32 0, align 4
@ZM_MODE_INFRASTRUCTURE = common dso_local global i64 0, align 8
@ZM_LV_1 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"Tx Comp err=\00", align 1
@ZM_EXTERNAL_ALLOC_BUF = common dso_local global i32 0, align 4
@ZM_MODE_IBSS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfiTxSendEth(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32*, i32** %5, align 8
  %11 = call i32 @zmw_get_wlan_dev(i32* %10)
  %12 = load i32*, i32** %5, align 8
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wd, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @ZM_PERFORMANCE_TX_MSDU(i32* %12, i32 %15)
  %17 = load i32, i32* @ZM_LV_2, align 4
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @zm_msg1_tx(i32 %17, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load i32*, i32** %5, align 8
  %21 = load i32*, i32** %6, align 8
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @zfTxPortControl(i32* %20, i32* %21, i32 %22)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* @ZM_PORT_DISABLED, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %3
  %27 = load i32, i32* @ZM_ERR_TX_PORT_DISABLED, align 4
  store i32 %27, i32* %8, align 4
  br label %68

28:                                               ; preds = %3
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wd, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @ZM_MODE_AP, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %46

34:                                               ; preds = %28
  %35 = load i32, i32* %7, align 4
  %36 = icmp slt i32 %35, 32
  br i1 %36, label %37, label %46

37:                                               ; preds = %34
  %38 = load i32*, i32** %5, align 8
  %39 = load i32*, i32** %6, align 8
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @zfApBufferPsFrame(i32* %38, i32* %39, i32 %40)
  store i32 %41, i32* %9, align 4
  %42 = icmp eq i32 %41, 1
  br i1 %42, label %43, label %45

43:                                               ; preds = %37
  %44 = load i32, i32* @ZM_SUCCESS, align 4
  store i32 %44, i32* %4, align 4
  br label %77

45:                                               ; preds = %37
  br label %61

46:                                               ; preds = %34, %28
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wd, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @ZM_MODE_INFRASTRUCTURE, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %60

52:                                               ; preds = %46
  %53 = load i32*, i32** %5, align 8
  %54 = call i64 @zfPowerSavingMgrIsSleeping(i32* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %52
  %57 = load i32*, i32** %5, align 8
  %58 = call i32 @zfPowerSavingMgrWakeup(i32* %57)
  br label %59

59:                                               ; preds = %56, %52
  br label %60

60:                                               ; preds = %59, %46
  br label %61

61:                                               ; preds = %60, %45
  %62 = load i32*, i32** %5, align 8
  %63 = load i32*, i32** %6, align 8
  %64 = call i32 @zfPutVtxq(i32* %62, i32* %63)
  store i32 %64, i32* %9, align 4
  %65 = load i32*, i32** %5, align 8
  %66 = call i32 @zfPushVtxq(i32* %65)
  %67 = load i32, i32* %9, align 4
  store i32 %67, i32* %4, align 4
  br label %77

68:                                               ; preds = %26
  %69 = load i32, i32* @ZM_LV_1, align 4
  %70 = load i32, i32* %8, align 4
  %71 = call i32 @zm_msg2_tx(i32 %69, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %70)
  %72 = load i32*, i32** %5, align 8
  %73 = load i32*, i32** %6, align 8
  %74 = load i32, i32* %8, align 4
  %75 = call i32 @zfwBufFree(i32* %72, i32* %73, i32 %74)
  %76 = load i32, i32* %8, align 4
  store i32 %76, i32* %4, align 4
  br label %77

77:                                               ; preds = %68, %61, %43
  %78 = load i32, i32* %4, align 4
  ret i32 %78
}

declare dso_local i32 @zmw_get_wlan_dev(i32*) #1

declare dso_local i32 @ZM_PERFORMANCE_TX_MSDU(i32*, i32) #1

declare dso_local i32 @zm_msg1_tx(i32, i8*, i32) #1

declare dso_local i32 @zfTxPortControl(i32*, i32*, i32) #1

declare dso_local i32 @zfApBufferPsFrame(i32*, i32*, i32) #1

declare dso_local i64 @zfPowerSavingMgrIsSleeping(i32*) #1

declare dso_local i32 @zfPowerSavingMgrWakeup(i32*) #1

declare dso_local i32 @zfPutVtxq(i32*, i32*) #1

declare dso_local i32 @zfPushVtxq(i32*) #1

declare dso_local i32 @zm_msg2_tx(i32, i8*, i32) #1

declare dso_local i32 @zfwBufFree(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
