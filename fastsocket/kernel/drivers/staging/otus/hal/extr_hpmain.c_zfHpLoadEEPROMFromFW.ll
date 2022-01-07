; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/hal/extr_hpmain.c_zfHpLoadEEPROMFromFW.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/hal/extr_hpmain.c_zfHpLoadEEPROMFromFW.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.zsHpPriv = type { i32 }

@wd = common dso_local global %struct.TYPE_2__* null, align 8
@ZM_HAL_MAX_EEPROM_PRQ = common dso_local global i32 0, align 4
@ZM_EEPROM_READ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfHpLoadEEPROMFromFW(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca [16 x i32], align 16
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  store i32 0, i32* %4, align 4
  %7 = load i32*, i32** %2, align 8
  %8 = call i32 @zmw_get_wlan_dev(i32* %7)
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wd, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.zsHpPriv*
  %13 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* @ZM_HAL_MAX_EEPROM_PRQ, align 4
  %16 = mul nsw i32 %15, 4
  %17 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 0
  store i32 %16, i32* %17, align 16
  store i32 0, i32* %6, align 4
  br label %18

18:                                               ; preds = %34, %1
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @ZM_HAL_MAX_EEPROM_PRQ, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %37

22:                                               ; preds = %18
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @ZM_HAL_MAX_EEPROM_PRQ, align 4
  %25 = mul nsw i32 %23, %24
  %26 = load i32, i32* %6, align 4
  %27 = add nsw i32 %25, %26
  %28 = mul nsw i32 %27, 4
  %29 = add nsw i32 4096, %28
  %30 = load i32, i32* %6, align 4
  %31 = add nsw i32 %30, 1
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 %32
  store i32 %29, i32* %33, align 4
  br label %34

34:                                               ; preds = %22
  %35 = load i32, i32* %6, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %6, align 4
  br label %18

37:                                               ; preds = %18
  %38 = load i32*, i32** %2, align 8
  %39 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 0
  %40 = load i32, i32* @ZM_HAL_MAX_EEPROM_PRQ, align 4
  %41 = add nsw i32 %40, 1
  %42 = mul nsw i32 %41, 4
  %43 = load i32, i32* @ZM_EEPROM_READ, align 4
  %44 = call i32 @zfIssueCmd(i32* %38, i32* %39, i32 %42, i32 %43, i32 0)
  store i32 %44, i32* %4, align 4
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local i32 @zmw_get_wlan_dev(i32*) #1

declare dso_local i32 @zfIssueCmd(i32*, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
