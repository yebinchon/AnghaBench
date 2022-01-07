; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/hal/extr_hpusb.c_zfHpSend.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/hal/extr_hpusb.c_zfHpSend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.zsHpPriv* }
%struct.zsHpPriv = type { i32*, i32 }

@wd = common dso_local global %struct.TYPE_2__* null, align 8
@ZM_LV_1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"zfHpSend(), len = \00", align 1
@USB_ENDPOINT_TX_INDEX = common dso_local global i32 0, align 4
@ZM_SUCCESS = common dso_local global i32 0, align 4
@EXTRA_INFO_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfHpSend(i32* %0, i32* %1, i32 %2, i32* %3, i32 %4, i32* %5, i32 %6, i32* %7, i32 %8, i32 %9, i32 %10, i32 %11) #0 {
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca %struct.zsHpPriv*, align 8
  store i32* %0, i32** %13, align 8
  store i32* %1, i32** %14, align 8
  store i32 %2, i32* %15, align 4
  store i32* %3, i32** %16, align 8
  store i32 %4, i32* %17, align 4
  store i32* %5, i32** %18, align 8
  store i32 %6, i32* %19, align 4
  store i32* %7, i32** %20, align 8
  store i32 %8, i32* %21, align 4
  store i32 %9, i32* %22, align 4
  store i32 %10, i32* %23, align 4
  store i32 %11, i32* %24, align 4
  %26 = load i32*, i32** %13, align 8
  %27 = call i32 @zmw_get_wlan_dev(i32* %26)
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wd, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load %struct.zsHpPriv*, %struct.zsHpPriv** %29, align 8
  store %struct.zsHpPriv* %30, %struct.zsHpPriv** %25, align 8
  %31 = load i32, i32* @ZM_LV_1, align 4
  %32 = load i32, i32* %15, align 4
  %33 = add nsw i32 12, %32
  %34 = sub nsw i32 %33, 8
  %35 = load i32, i32* %17, align 4
  %36 = add nsw i32 %34, %35
  %37 = load i32*, i32** %13, align 8
  %38 = load i32*, i32** %20, align 8
  %39 = call i32 @zfwBufGetSize(i32* %37, i32* %38)
  %40 = add nsw i32 %36, %39
  %41 = add nsw i32 %40, 4
  %42 = add nsw i32 %41, 8
  %43 = call i32 @zm_msg1_tx(i32 %31, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %42)
  %44 = load i32*, i32** %13, align 8
  %45 = load i32*, i32** %14, align 8
  %46 = load i32*, i32** %20, align 8
  %47 = call i32 @zfAdjustCtrlSetting(i32* %44, i32* %45, i32* %46)
  %48 = load i32*, i32** %13, align 8
  %49 = load i32*, i32** %20, align 8
  %50 = call i32 @zfwBufGetSize(i32* %48, i32* %49)
  %51 = load %struct.zsHpPriv*, %struct.zsHpPriv** %25, align 8
  %52 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = add nsw i32 %53, %50
  store i32 %54, i32* %52, align 8
  %55 = load i32*, i32** %13, align 8
  %56 = load i32*, i32** %20, align 8
  %57 = call i32 @zfwBufGetSize(i32* %55, i32* %56)
  %58 = load %struct.zsHpPriv*, %struct.zsHpPriv** %25, align 8
  %59 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %23, align 4
  %62 = and i32 %61, 3
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %60, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = add nsw i32 %65, %57
  store i32 %66, i32* %64, align 4
  %67 = load i32*, i32** %13, align 8
  %68 = load i32, i32* @USB_ENDPOINT_TX_INDEX, align 4
  %69 = load i32*, i32** %14, align 8
  %70 = load i32, i32* %15, align 4
  %71 = load i32*, i32** %16, align 8
  %72 = load i32, i32* %17, align 4
  %73 = load i32*, i32** %18, align 8
  %74 = load i32, i32* %19, align 4
  %75 = load i32*, i32** %20, align 8
  %76 = load i32, i32* %21, align 4
  %77 = call i32 @zfwUsbSend(i32* %67, i32 %68, i32* %69, i32 %70, i32* %71, i32 %72, i32* %73, i32 %74, i32* %75, i32 %76)
  %78 = load i32, i32* @ZM_SUCCESS, align 4
  ret i32 %78
}

declare dso_local i32 @zmw_get_wlan_dev(i32*) #1

declare dso_local i32 @zm_msg1_tx(i32, i8*, i32) #1

declare dso_local i32 @zfwBufGetSize(i32*, i32*) #1

declare dso_local i32 @zfAdjustCtrlSetting(i32*, i32*, i32*) #1

declare dso_local i32 @zfwUsbSend(i32*, i32, i32*, i32, i32*, i32, i32*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
