; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/hal/extr_hpmain.c_zfHpFirmwareDownload.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/hal/extr_hpmain.c_zfHpFirmwareDownload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ZM_SUCCESS = common dso_local global i32 0, align 4
@ZM_FIRMWARE_WLAN = common dso_local global i64 0, align 8
@zcFwImage = common dso_local global i64 0, align 8
@zcFwImageSize = common dso_local global i64 0, align 8
@ZM_FIRMWARE_WLAN_ADDR = common dso_local global i32 0, align 4
@ZM_FIRMWARE_SPI_FLASH = common dso_local global i64 0, align 8
@zcFwImageSPI = common dso_local global i64 0, align 8
@zcFwImageSPISize = common dso_local global i64 0, align 8
@ZM_FIRMWARE_SPI_ADDR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Unknown firmware type = \00", align 1
@ZM_ERR_FIRMWARE_WRONG_TYPE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfHpFirmwareDownload(i32* %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i32, i32* @ZM_SUCCESS, align 4
  store i32 %6, i32* %5, align 4
  %7 = load i64, i64* %4, align 8
  %8 = load i64, i64* @ZM_FIRMWARE_WLAN, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %18

10:                                               ; preds = %2
  %11 = load i32*, i32** %3, align 8
  %12 = load i64, i64* @zcFwImage, align 8
  %13 = inttoptr i64 %12 to i32*
  %14 = load i64, i64* @zcFwImageSize, align 8
  %15 = trunc i64 %14 to i32
  %16 = load i32, i32* @ZM_FIRMWARE_WLAN_ADDR, align 4
  %17 = call i32 @zfFirmwareDownload(i32* %11, i32* %13, i32 %15, i32 %16)
  store i32 %17, i32* %5, align 4
  br label %35

18:                                               ; preds = %2
  %19 = load i64, i64* %4, align 8
  %20 = load i64, i64* @ZM_FIRMWARE_SPI_FLASH, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %30

22:                                               ; preds = %18
  %23 = load i32*, i32** %3, align 8
  %24 = load i64, i64* @zcFwImageSPI, align 8
  %25 = inttoptr i64 %24 to i32*
  %26 = load i64, i64* @zcFwImageSPISize, align 8
  %27 = trunc i64 %26 to i32
  %28 = load i32, i32* @ZM_FIRMWARE_SPI_ADDR, align 4
  %29 = call i32 @zfFirmwareDownload(i32* %23, i32* %25, i32 %27, i32 %28)
  store i32 %29, i32* %5, align 4
  br label %34

30:                                               ; preds = %18
  %31 = load i64, i64* %4, align 8
  %32 = call i32 @zm_debug_msg1(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i64 %31)
  %33 = load i32, i32* @ZM_ERR_FIRMWARE_WRONG_TYPE, align 4
  store i32 %33, i32* %5, align 4
  br label %34

34:                                               ; preds = %30, %22
  br label %35

35:                                               ; preds = %34, %10
  %36 = load i32, i32* %5, align 4
  ret i32 %36
}

declare dso_local i32 @zfFirmwareDownload(i32*, i32*, i32, i32) #1

declare dso_local i32 @zm_debug_msg1(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
