; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_ratectrl.c_zfRateCtrlNextLowerRate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_ratectrl.c_zfRateCtrlNextLowerRate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.zsRcCell = type { i64, i32, i32, i64, i64, i64, i32* }

@ZM_LV_0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"Lower Tx Rate=\00", align 1
@wd = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfRateCtrlNextLowerRate(i32* %0, %struct.zsRcCell* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.zsRcCell*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.zsRcCell* %1, %struct.zsRcCell** %4, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = call i32 @zmw_get_wlan_dev(i32* %5)
  %7 = load %struct.zsRcCell*, %struct.zsRcCell** %4, align 8
  %8 = getelementptr inbounds %struct.zsRcCell, %struct.zsRcCell* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ugt i64 %9, 0
  br i1 %10, label %11, label %26

11:                                               ; preds = %2
  %12 = load %struct.zsRcCell*, %struct.zsRcCell** %4, align 8
  %13 = getelementptr inbounds %struct.zsRcCell, %struct.zsRcCell* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = add i64 %14, -1
  store i64 %15, i64* %13, align 8
  %16 = load %struct.zsRcCell*, %struct.zsRcCell** %4, align 8
  %17 = getelementptr inbounds %struct.zsRcCell, %struct.zsRcCell* %16, i32 0, i32 6
  %18 = load i32*, i32** %17, align 8
  %19 = load %struct.zsRcCell*, %struct.zsRcCell** %4, align 8
  %20 = getelementptr inbounds %struct.zsRcCell, %struct.zsRcCell* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds i32, i32* %18, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.zsRcCell*, %struct.zsRcCell** %4, align 8
  %25 = getelementptr inbounds %struct.zsRcCell, %struct.zsRcCell* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 8
  br label %26

26:                                               ; preds = %11, %2
  %27 = load i32, i32* @ZM_LV_0, align 4
  %28 = load %struct.zsRcCell*, %struct.zsRcCell** %4, align 8
  %29 = getelementptr inbounds %struct.zsRcCell, %struct.zsRcCell* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @zm_msg1_tx(i32 %27, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load %struct.zsRcCell*, %struct.zsRcCell** %4, align 8
  %33 = getelementptr inbounds %struct.zsRcCell, %struct.zsRcCell* %32, i32 0, i32 4
  store i64 0, i64* %33, align 8
  %34 = load %struct.zsRcCell*, %struct.zsRcCell** %4, align 8
  %35 = getelementptr inbounds %struct.zsRcCell, %struct.zsRcCell* %34, i32 0, i32 5
  store i64 0, i64* %35, align 8
  %36 = load %struct.zsRcCell*, %struct.zsRcCell** %4, align 8
  %37 = getelementptr inbounds %struct.zsRcCell, %struct.zsRcCell* %36, i32 0, i32 3
  store i64 0, i64* %37, align 8
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wd, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.zsRcCell*, %struct.zsRcCell** %4, align 8
  %42 = getelementptr inbounds %struct.zsRcCell, %struct.zsRcCell* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 4
  %43 = load %struct.zsRcCell*, %struct.zsRcCell** %4, align 8
  %44 = getelementptr inbounds %struct.zsRcCell, %struct.zsRcCell* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  ret i32 %45
}

declare dso_local i32 @zmw_get_wlan_dev(i32*) #1

declare dso_local i32 @zm_msg1_tx(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
