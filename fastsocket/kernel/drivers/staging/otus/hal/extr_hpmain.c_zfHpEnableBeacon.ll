; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/hal/extr_hpmain.c_zfHpEnableBeacon.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/hal/extr_hpmain.c_zfHpEnableBeacon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.zsHpPriv = type { i32, i32 }

@ZM_MAC_REG_BCN_CTRL = common dso_local global i32 0, align 4
@ZM_MAC_REG_BCN_ADDR = common dso_local global i32 0, align 4
@ZM_BEACON_BUFFER_ADDRESS = common dso_local global i32 0, align 4
@ZM_MODE_AP = common dso_local global i64 0, align 8
@ZM_MODE_IBSS = common dso_local global i64 0, align 8
@wd = common dso_local global %struct.TYPE_2__* null, align 8
@ZM_MAC_REG_PRETBTT = common dso_local global i32 0, align 4
@ZM_MAC_REG_BCN_PERIOD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zfHpEnableBeacon(i32* %0, i64 %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = call i32 @zmw_get_wlan_dev(i32* %12)
  %14 = load i32*, i32** %6, align 8
  %15 = load i32, i32* @ZM_MAC_REG_BCN_CTRL, align 4
  %16 = call i32 @zfDelayWriteInternalReg(i32* %14, i32 %15, i32 0)
  %17 = load i32*, i32** %6, align 8
  %18 = load i32, i32* @ZM_MAC_REG_BCN_ADDR, align 4
  %19 = load i32, i32* @ZM_BEACON_BUFFER_ADDRESS, align 4
  %20 = call i32 @zfDelayWriteInternalReg(i32* %17, i32 %18, i32 %19)
  %21 = load i64, i64* %8, align 8
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %11, align 4
  %23 = load i64, i64* %9, align 8
  %24 = trunc i64 %23 to i32
  %25 = shl i32 %24, 16
  %26 = load i32, i32* %11, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %11, align 4
  %28 = load i64, i64* %7, align 8
  %29 = load i64, i64* @ZM_MODE_AP, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %5
  %32 = load i32, i32* %11, align 4
  %33 = or i32 %32, 16777216
  store i32 %33, i32* %11, align 4
  br label %59

34:                                               ; preds = %5
  %35 = load i64, i64* %7, align 8
  %36 = load i64, i64* @ZM_MODE_IBSS, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %58

38:                                               ; preds = %34
  %39 = load i32, i32* %11, align 4
  %40 = or i32 %39, 33554432
  store i32 %40, i32* %11, align 4
  %41 = load i64, i64* %10, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = load i32, i32* %11, align 4
  %45 = or i32 %44, 67108864
  store i32 %45, i32* %11, align 4
  br label %46

46:                                               ; preds = %43, %38
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wd, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = inttoptr i64 %49 to %struct.zsHpPriv*
  %51 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %50, i32 0, i32 0
  store i32 1, i32* %51, align 4
  %52 = load i32, i32* %11, align 4
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wd, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = inttoptr i64 %55 to %struct.zsHpPriv*
  %57 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %56, i32 0, i32 1
  store i32 %52, i32* %57, align 4
  br label %58

58:                                               ; preds = %46, %34
  br label %59

59:                                               ; preds = %58, %31
  %60 = load i32*, i32** %6, align 8
  %61 = load i32, i32* @ZM_MAC_REG_PRETBTT, align 4
  %62 = load i64, i64* %8, align 8
  %63 = sub nsw i64 %62, 6
  %64 = shl i64 %63, 16
  %65 = trunc i64 %64 to i32
  %66 = call i32 @zfDelayWriteInternalReg(i32* %60, i32 %61, i32 %65)
  %67 = load i32*, i32** %6, align 8
  %68 = load i32, i32* @ZM_MAC_REG_BCN_PERIOD, align 4
  %69 = load i32, i32* %11, align 4
  %70 = call i32 @zfDelayWriteInternalReg(i32* %67, i32 %68, i32 %69)
  %71 = load i32*, i32** %6, align 8
  %72 = call i32 @zfFlushDelayWrite(i32* %71)
  ret void
}

declare dso_local i32 @zmw_get_wlan_dev(i32*) #1

declare dso_local i32 @zfDelayWriteInternalReg(i32*, i32, i32) #1

declare dso_local i32 @zfFlushDelayWrite(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
