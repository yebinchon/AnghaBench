; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/hal/extr_hpmain.c_zfFindCtlEdgesIndex.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/hal/extr_hpmain.c_zfFindCtlEdgesIndex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.zsHpPriv* }
%struct.zsHpPriv = type { i32* }
%struct.ar5416Eeprom = type { i64* }

@wd = common dso_local global %struct.TYPE_2__* null, align 8
@AR5416_NUM_CTLS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @zfFindCtlEdgesIndex(i32* %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.zsHpPriv*, align 8
  %7 = alloca %struct.ar5416Eeprom*, align 8
  store i32* %0, i32** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = call i32 @zmw_get_wlan_dev(i32* %8)
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wd, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.zsHpPriv*, %struct.zsHpPriv** %11, align 8
  store %struct.zsHpPriv* %12, %struct.zsHpPriv** %6, align 8
  %13 = load %struct.zsHpPriv*, %struct.zsHpPriv** %6, align 8
  %14 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 384
  %17 = bitcast i32* %16 to %struct.ar5416Eeprom*
  store %struct.ar5416Eeprom* %17, %struct.ar5416Eeprom** %7, align 8
  store i64 0, i64* %5, align 8
  br label %18

18:                                               ; preds = %33, %2
  %19 = load i64, i64* %5, align 8
  %20 = load i64, i64* @AR5416_NUM_CTLS, align 8
  %21 = icmp ult i64 %19, %20
  br i1 %21, label %22, label %36

22:                                               ; preds = %18
  %23 = load i64, i64* %4, align 8
  %24 = load %struct.ar5416Eeprom*, %struct.ar5416Eeprom** %7, align 8
  %25 = getelementptr inbounds %struct.ar5416Eeprom, %struct.ar5416Eeprom* %24, i32 0, i32 0
  %26 = load i64*, i64** %25, align 8
  %27 = load i64, i64* %5, align 8
  %28 = getelementptr inbounds i64, i64* %26, i64 %27
  %29 = load i64, i64* %28, align 8
  %30 = icmp eq i64 %23, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %22
  br label %36

32:                                               ; preds = %22
  br label %33

33:                                               ; preds = %32
  %34 = load i64, i64* %5, align 8
  %35 = add i64 %34, 1
  store i64 %35, i64* %5, align 8
  br label %18

36:                                               ; preds = %31, %18
  %37 = load i64, i64* %5, align 8
  ret i64 %37
}

declare dso_local i32 @zmw_get_wlan_dev(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
