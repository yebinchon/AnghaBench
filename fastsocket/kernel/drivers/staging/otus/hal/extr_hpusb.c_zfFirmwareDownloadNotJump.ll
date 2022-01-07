; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/hal/extr_hpusb.c_zfFirmwareDownloadNotJump.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/hal/extr_hpusb.c_zfFirmwareDownloadNotJump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ZM_SUCCESS = common dso_local global i32 0, align 4
@FIRMWARE_DOWNLOAD = common dso_local global i32 0, align 4
@ZM_LV_0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"FIRMWARE_DOWNLOAD failed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfFirmwareDownloadNotJump(i32* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %15 = load i32, i32* @ZM_SUCCESS, align 4
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %8, align 4
  store i32 %16, i32* %10, align 4
  %17 = load i32*, i32** %6, align 8
  store i32* %17, i32** %11, align 8
  %18 = load i32*, i32** %11, align 8
  store i32* %18, i32** %12, align 8
  br label %19

19:                                               ; preds = %43, %4
  %20 = load i32, i32* %7, align 4
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %54

22:                                               ; preds = %19
  %23 = load i32, i32* %7, align 4
  %24 = icmp sgt i32 %23, 4096
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  br label %28

26:                                               ; preds = %22
  %27 = load i32, i32* %7, align 4
  br label %28

28:                                               ; preds = %26, %25
  %29 = phi i32 [ 4096, %25 ], [ %27, %26 ]
  store i32 %29, i32* %14, align 4
  %30 = load i32*, i32** %5, align 8
  %31 = load i32, i32* @FIRMWARE_DOWNLOAD, align 4
  %32 = load i32, i32* %10, align 4
  %33 = ashr i32 %32, 8
  %34 = load i32*, i32** %11, align 8
  %35 = load i32, i32* %14, align 4
  %36 = call i32 @zfwUsbSubmitControl(i32* %30, i32 %31, i32 %33, i32 0, i32* %34, i32 %35)
  store i32 %36, i32* %13, align 4
  %37 = load i32, i32* %13, align 4
  %38 = load i32, i32* @ZM_SUCCESS, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %28
  %41 = load i32, i32* @ZM_LV_0, align 4
  %42 = call i32 @zm_msg0_init(i32 %41, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %9, align 4
  br label %55

43:                                               ; preds = %28
  %44 = load i32, i32* %14, align 4
  %45 = load i32, i32* %7, align 4
  %46 = sub nsw i32 %45, %44
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %14, align 4
  %48 = load i32*, i32** %11, align 8
  %49 = sext i32 %47 to i64
  %50 = getelementptr inbounds i32, i32* %48, i64 %49
  store i32* %50, i32** %11, align 8
  %51 = load i32, i32* %14, align 4
  %52 = load i32, i32* %10, align 4
  %53 = add nsw i32 %52, %51
  store i32 %53, i32* %10, align 4
  store i32 0, i32* %13, align 4
  br label %19

54:                                               ; preds = %19
  br label %55

55:                                               ; preds = %54, %40
  %56 = load i32, i32* %9, align 4
  ret i32 %56
}

declare dso_local i32 @zfwUsbSubmitControl(i32*, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @zm_msg0_init(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
