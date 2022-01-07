; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/hal/extr_hpusb.c_zfHpSendBeacon.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/hal/extr_hpusb.c_zfHpSendBeacon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.zsHpPriv = type { i32 }

@ZM_BEACON_BUFFER_ADDRESS = common dso_local global i64 0, align 8
@wd = common dso_local global %struct.TYPE_2__* null, align 8
@ZM_MAC_REG_BCN_PLCP = common dso_local global i64 0, align 8
@ZM_MAC_REG_BCN_LENGTH = common dso_local global i64 0, align 8
@ZM_MAC_REG_BCN_CTRL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zfHpSendBeacon(i32* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = call i32 @zmw_get_wlan_dev(i32* %10)
  store i64 0, i64* %9, align 8
  br label %12

12:                                               ; preds = %35, %3
  %13 = load i64, i64* %9, align 8
  %14 = load i64, i64* %6, align 8
  %15 = icmp slt i64 %13, %14
  br i1 %15, label %16, label %38

16:                                               ; preds = %12
  %17 = load i32*, i32** %4, align 8
  %18 = load i32*, i32** %5, align 8
  %19 = load i64, i64* %9, align 8
  %20 = call i32 @zmw_tx_buf_readh(i32* %17, i32* %18, i64 %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32*, i32** %4, align 8
  %22 = load i32*, i32** %5, align 8
  %23 = load i64, i64* %9, align 8
  %24 = add nsw i64 %23, 2
  %25 = call i32 @zmw_tx_buf_readh(i32* %21, i32* %22, i64 %24)
  store i32 %25, i32* %7, align 4
  %26 = load i32*, i32** %4, align 8
  %27 = load i64, i64* @ZM_BEACON_BUFFER_ADDRESS, align 8
  %28 = load i64, i64* %9, align 8
  %29 = add nsw i64 %27, %28
  %30 = load i32, i32* %7, align 4
  %31 = shl i32 %30, 16
  %32 = load i32, i32* %8, align 4
  %33 = add nsw i32 %31, %32
  %34 = call i32 @zfDelayWriteInternalReg(i32* %26, i64 %29, i32 %33)
  br label %35

35:                                               ; preds = %16
  %36 = load i64, i64* %9, align 8
  %37 = add nsw i64 %36, 4
  store i64 %37, i64* %9, align 8
  br label %12

38:                                               ; preds = %12
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wd, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = inttoptr i64 %41 to %struct.zsHpPriv*
  %43 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp slt i32 %44, 3000
  br i1 %45, label %46, label %55

46:                                               ; preds = %38
  %47 = load i32*, i32** %4, align 8
  %48 = load i64, i64* @ZM_MAC_REG_BCN_PLCP, align 8
  %49 = load i64, i64* %6, align 8
  %50 = add nsw i64 %49, 4
  %51 = shl i64 %50, 19
  %52 = add nsw i64 %51, 1024
  %53 = trunc i64 %52 to i32
  %54 = call i32 @zfDelayWriteInternalReg(i32* %47, i64 %48, i32 %53)
  br label %64

55:                                               ; preds = %38
  %56 = load i32*, i32** %4, align 8
  %57 = load i64, i64* @ZM_MAC_REG_BCN_PLCP, align 8
  %58 = load i64, i64* %6, align 8
  %59 = add nsw i64 %58, 4
  %60 = shl i64 %59, 16
  %61 = add nsw i64 %60, 27
  %62 = trunc i64 %61 to i32
  %63 = call i32 @zfDelayWriteInternalReg(i32* %56, i64 %57, i32 %62)
  br label %64

64:                                               ; preds = %55, %46
  %65 = load i32*, i32** %4, align 8
  %66 = load i64, i64* @ZM_MAC_REG_BCN_LENGTH, align 8
  %67 = load i64, i64* %6, align 8
  %68 = add nsw i64 %67, 4
  %69 = trunc i64 %68 to i32
  %70 = call i32 @zfDelayWriteInternalReg(i32* %65, i64 %66, i32 %69)
  %71 = load i32*, i32** %4, align 8
  %72 = load i64, i64* @ZM_MAC_REG_BCN_CTRL, align 8
  %73 = call i32 @zfDelayWriteInternalReg(i32* %71, i64 %72, i32 1)
  %74 = load i32*, i32** %4, align 8
  %75 = call i32 @zfFlushDelayWrite(i32* %74)
  %76 = load i32*, i32** %4, align 8
  %77 = load i32*, i32** %5, align 8
  %78 = call i32 @zfwBufFree(i32* %76, i32* %77, i32 0)
  ret void
}

declare dso_local i32 @zmw_get_wlan_dev(i32*) #1

declare dso_local i32 @zmw_tx_buf_readh(i32*, i32*, i64) #1

declare dso_local i32 @zfDelayWriteInternalReg(i32*, i64, i32) #1

declare dso_local i32 @zfFlushDelayWrite(i32*) #1

declare dso_local i32 @zfwBufFree(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
