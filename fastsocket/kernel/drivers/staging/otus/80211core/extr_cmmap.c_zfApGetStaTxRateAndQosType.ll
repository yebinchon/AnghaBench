; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_cmmap.c_zfApGetStaTxRateAndQosType.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_cmmap.c_zfApGetStaTxRateAndQosType.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i32 }

@wd = common dso_local global %struct.TYPE_6__* null, align 8
@zcRateToPhyCtrl = common dso_local global i32* null, align 8
@ZM_LV_3 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"PhyCtrl=\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zfApGetStaTxRateAndQosType(i32* %0, i32* %1, i32* %2, i64* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i64* %3, i64** %9, align 8
  store i32* %4, i32** %10, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = call i32 @zmw_get_wlan_dev(i32* %13)
  %15 = call i32 (...) @zmw_declare_for_critical_section()
  %16 = load i32*, i32** %6, align 8
  %17 = call i32 @zmw_enter_critical_section(i32* %16)
  %18 = load i32*, i32** %6, align 8
  %19 = load i32*, i32** %7, align 8
  %20 = call i32 @zfApFindSta(i32* %18, i32* %19)
  store i32 %20, i32* %11, align 4
  %21 = icmp ne i32 %20, 65535
  br i1 %21, label %22, label %49

22:                                               ; preds = %5
  %23 = load i32*, i32** %6, align 8
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = load i32, i32* %11, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = load i32*, i32** %10, align 8
  %33 = call i64 @zfRateCtrlGetTxRate(i32* %23, i32* %31, i32* %32)
  store i64 %33, i64* %12, align 8
  %34 = load i32*, i32** @zcRateToPhyCtrl, align 8
  %35 = load i64, i64* %12, align 8
  %36 = getelementptr inbounds i32, i32* %34, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = load i32*, i32** %8, align 8
  store i32 %37, i32* %38, align 4
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = load i32, i32* %11, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64*, i64** %9, align 8
  store i64 %47, i64* %48, align 8
  br label %60

49:                                               ; preds = %5
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp slt i32 %52, 3000
  br i1 %53, label %54, label %56

54:                                               ; preds = %49
  %55 = load i32*, i32** %8, align 8
  store i32 3840, i32* %55, align 4
  br label %58

56:                                               ; preds = %49
  %57 = load i32*, i32** %8, align 8
  store i32 724737, i32* %57, align 4
  br label %58

58:                                               ; preds = %56, %54
  %59 = load i64*, i64** %9, align 8
  store i64 0, i64* %59, align 8
  br label %60

60:                                               ; preds = %58, %22
  %61 = load i32*, i32** %6, align 8
  %62 = call i32 @zmw_leave_critical_section(i32* %61)
  %63 = load i32, i32* @ZM_LV_3, align 4
  %64 = load i32*, i32** %8, align 8
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @zm_msg2_mm(i32 %63, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %65)
  ret void
}

declare dso_local i32 @zmw_get_wlan_dev(i32*) #1

declare dso_local i32 @zmw_declare_for_critical_section(...) #1

declare dso_local i32 @zmw_enter_critical_section(i32*) #1

declare dso_local i32 @zfApFindSta(i32*, i32*) #1

declare dso_local i64 @zfRateCtrlGetTxRate(i32*, i32*, i32*) #1

declare dso_local i32 @zmw_leave_critical_section(i32*) #1

declare dso_local i32 @zm_msg2_mm(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
