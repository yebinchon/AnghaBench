; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_cmm.c_zfProcessProbeRsp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_cmm.c_zfProcessProbeRsp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.zsAdditionInfo = type { i32 }
%struct.zsWlanProbeRspFrameHeader = type { i32 }
%struct.zsBssInfo = type { i64 }

@wd = common dso_local global %struct.TYPE_2__* null, align 8
@ZM_MODE_IBSS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zfProcessProbeRsp(i32* %0, i32* %1, %struct.zsAdditionInfo* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.zsAdditionInfo*, align 8
  %7 = alloca %struct.zsWlanProbeRspFrameHeader*, align 8
  %8 = alloca %struct.zsBssInfo*, align 8
  %9 = alloca [4 x i32], align 16
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.zsAdditionInfo* %2, %struct.zsAdditionInfo** %6, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = call i32 @zmw_get_wlan_dev(i32* %12)
  %14 = call i32 (...) @zmw_declare_for_critical_section()
  %15 = load i32*, i32** %4, align 8
  %16 = load i32*, i32** %5, align 8
  %17 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %18 = call i32 @zfCopyFromRxBuffer(i32* %15, i32* %16, i32* %17, i32 0, i32 4)
  %19 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %20 = bitcast i32* %19 to %struct.zsWlanProbeRspFrameHeader*
  store %struct.zsWlanProbeRspFrameHeader* %20, %struct.zsWlanProbeRspFrameHeader** %7, align 8
  %21 = load i32*, i32** %4, align 8
  %22 = call i32 @zmw_enter_critical_section(i32* %21)
  %23 = load i32*, i32** %4, align 8
  %24 = load i32*, i32** %5, align 8
  %25 = load %struct.zsWlanProbeRspFrameHeader*, %struct.zsWlanProbeRspFrameHeader** %7, align 8
  %26 = call %struct.zsBssInfo* @zfStaFindBssInfo(i32* %23, i32* %24, %struct.zsWlanProbeRspFrameHeader* %25)
  store %struct.zsBssInfo* %26, %struct.zsBssInfo** %8, align 8
  %27 = load %struct.zsBssInfo*, %struct.zsBssInfo** %8, align 8
  %28 = icmp eq %struct.zsBssInfo* %27, null
  br i1 %28, label %29, label %53

29:                                               ; preds = %3
  %30 = load i32*, i32** %4, align 8
  %31 = call %struct.zsBssInfo* @zfBssInfoAllocate(i32* %30)
  store %struct.zsBssInfo* %31, %struct.zsBssInfo** %8, align 8
  %32 = load %struct.zsBssInfo*, %struct.zsBssInfo** %8, align 8
  %33 = icmp ne %struct.zsBssInfo* %32, null
  br i1 %33, label %34, label %52

34:                                               ; preds = %29
  %35 = load i32*, i32** %4, align 8
  %36 = load i32*, i32** %5, align 8
  %37 = load %struct.zsWlanProbeRspFrameHeader*, %struct.zsWlanProbeRspFrameHeader** %7, align 8
  %38 = load %struct.zsBssInfo*, %struct.zsBssInfo** %8, align 8
  %39 = load %struct.zsAdditionInfo*, %struct.zsAdditionInfo** %6, align 8
  %40 = call i32 @zfStaInitBssInfo(i32* %35, i32* %36, %struct.zsWlanProbeRspFrameHeader* %37, %struct.zsBssInfo* %38, %struct.zsAdditionInfo* %39, i32 0)
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %10, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %34
  %44 = load i32*, i32** %4, align 8
  %45 = load %struct.zsBssInfo*, %struct.zsBssInfo** %8, align 8
  %46 = call i32 @zfBssInfoFree(i32* %44, %struct.zsBssInfo* %45)
  br label %51

47:                                               ; preds = %34
  %48 = load i32*, i32** %4, align 8
  %49 = load %struct.zsBssInfo*, %struct.zsBssInfo** %8, align 8
  %50 = call i32 @zfBssInfoInsertToList(i32* %48, %struct.zsBssInfo* %49)
  br label %51

51:                                               ; preds = %47, %43
  br label %52

52:                                               ; preds = %51, %29
  br label %84

53:                                               ; preds = %3
  %54 = load i32*, i32** %4, align 8
  %55 = load i32*, i32** %5, align 8
  %56 = load %struct.zsWlanProbeRspFrameHeader*, %struct.zsWlanProbeRspFrameHeader** %7, align 8
  %57 = load %struct.zsBssInfo*, %struct.zsBssInfo** %8, align 8
  %58 = load %struct.zsAdditionInfo*, %struct.zsAdditionInfo** %6, align 8
  %59 = call i32 @zfStaInitBssInfo(i32* %54, i32* %55, %struct.zsWlanProbeRspFrameHeader* %56, %struct.zsBssInfo* %57, %struct.zsAdditionInfo* %58, i32 1)
  store i32 %59, i32* %10, align 4
  %60 = load i32, i32* %10, align 4
  %61 = icmp eq i32 %60, 2
  br i1 %61, label %62, label %69

62:                                               ; preds = %53
  %63 = load i32*, i32** %4, align 8
  %64 = load %struct.zsBssInfo*, %struct.zsBssInfo** %8, align 8
  %65 = call i32 @zfBssInfoRemoveFromList(i32* %63, %struct.zsBssInfo* %64)
  %66 = load i32*, i32** %4, align 8
  %67 = load %struct.zsBssInfo*, %struct.zsBssInfo** %8, align 8
  %68 = call i32 @zfBssInfoFree(i32* %66, %struct.zsBssInfo* %67)
  br label %83

69:                                               ; preds = %53
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wd, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @ZM_MODE_IBSS, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %82

75:                                               ; preds = %69
  %76 = load i32*, i32** %4, align 8
  %77 = load %struct.zsBssInfo*, %struct.zsBssInfo** %8, align 8
  %78 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = inttoptr i64 %79 to i32*
  %81 = call i32 @zfStaFindFreeOpposite(i32* %76, i32* %80, i32* %11)
  br label %82

82:                                               ; preds = %75, %69
  br label %83

83:                                               ; preds = %82, %62
  br label %84

84:                                               ; preds = %83, %52
  %85 = load i32*, i32** %4, align 8
  %86 = call i32 @zmw_leave_critical_section(i32* %85)
  ret void
}

declare dso_local i32 @zmw_get_wlan_dev(i32*) #1

declare dso_local i32 @zmw_declare_for_critical_section(...) #1

declare dso_local i32 @zfCopyFromRxBuffer(i32*, i32*, i32*, i32, i32) #1

declare dso_local i32 @zmw_enter_critical_section(i32*) #1

declare dso_local %struct.zsBssInfo* @zfStaFindBssInfo(i32*, i32*, %struct.zsWlanProbeRspFrameHeader*) #1

declare dso_local %struct.zsBssInfo* @zfBssInfoAllocate(i32*) #1

declare dso_local i32 @zfStaInitBssInfo(i32*, i32*, %struct.zsWlanProbeRspFrameHeader*, %struct.zsBssInfo*, %struct.zsAdditionInfo*, i32) #1

declare dso_local i32 @zfBssInfoFree(i32*, %struct.zsBssInfo*) #1

declare dso_local i32 @zfBssInfoInsertToList(i32*, %struct.zsBssInfo*) #1

declare dso_local i32 @zfBssInfoRemoveFromList(i32*, %struct.zsBssInfo*) #1

declare dso_local i32 @zfStaFindFreeOpposite(i32*, i32*, i32*) #1

declare dso_local i32 @zmw_leave_critical_section(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
