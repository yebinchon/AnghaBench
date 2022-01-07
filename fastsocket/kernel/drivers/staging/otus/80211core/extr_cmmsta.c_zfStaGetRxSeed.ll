; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_cmmsta.c_zfStaGetRxSeed.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_cmmsta.c_zfStaGetRxSeed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64, %struct.zsTkipSeed* }
%struct.zsTkipSeed = type { i32 }

@wd = common dso_local global %struct.TYPE_4__* null, align 8
@ZM_TKIP = common dso_local global i64 0, align 8
@ZM_AES = common dso_local global i64 0, align 8
@ZM_STA_WPA_STATE_PK_OK = common dso_local global i64 0, align 8
@ZM_WLAN_HEADER_A1_OFFSET = common dso_local global i64 0, align 8
@ZM_WLAN_HEADER_IV_OFFSET = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.zsTkipSeed* @zfStaGetRxSeed(i32* %0, i32* %1) #0 {
  %3 = alloca %struct.zsTkipSeed*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = call i32 @zmw_get_wlan_dev(i32* %8)
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @ZM_TKIP, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %23

16:                                               ; preds = %2
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @ZM_AES, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %30, label %23

23:                                               ; preds = %16, %2
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @ZM_STA_WPA_STATE_PK_OK, align 8
  %29 = icmp slt i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %23, %16
  store %struct.zsTkipSeed* null, %struct.zsTkipSeed** %3, align 8
  br label %64

31:                                               ; preds = %23
  %32 = load i32*, i32** %4, align 8
  %33 = load i32*, i32** %5, align 8
  %34 = load i64, i64* @ZM_WLAN_HEADER_A1_OFFSET, align 8
  %35 = call i32 @zmw_rx_buf_readb(i32* %32, i32* %33, i64 %34)
  store i32 %35, i32* %7, align 4
  %36 = load i32*, i32** %4, align 8
  %37 = load i32*, i32** %5, align 8
  %38 = call i32 @zmw_rx_buf_readb(i32* %36, i32* %37, i64 0)
  %39 = and i32 %38, 128
  %40 = icmp eq i32 %39, 128
  br i1 %40, label %41, label %47

41:                                               ; preds = %31
  %42 = load i32*, i32** %4, align 8
  %43 = load i32*, i32** %5, align 8
  %44 = load i64, i64* @ZM_WLAN_HEADER_IV_OFFSET, align 8
  %45 = add nsw i64 %44, 5
  %46 = call i32 @zmw_rx_buf_readb(i32* %42, i32* %43, i64 %45)
  store i32 %46, i32* %6, align 4
  br label %53

47:                                               ; preds = %31
  %48 = load i32*, i32** %4, align 8
  %49 = load i32*, i32** %5, align 8
  %50 = load i64, i64* @ZM_WLAN_HEADER_IV_OFFSET, align 8
  %51 = add nsw i64 %50, 3
  %52 = call i32 @zmw_rx_buf_readb(i32* %48, i32* %49, i64 %51)
  store i32 %52, i32* %6, align 4
  br label %53

53:                                               ; preds = %47, %41
  %54 = load i32, i32* %6, align 4
  %55 = and i32 %54, 192
  %56 = ashr i32 %55, 6
  store i32 %56, i32* %6, align 4
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 2
  %60 = load %struct.zsTkipSeed*, %struct.zsTkipSeed** %59, align 8
  %61 = load i32, i32* %6, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.zsTkipSeed, %struct.zsTkipSeed* %60, i64 %62
  store %struct.zsTkipSeed* %63, %struct.zsTkipSeed** %3, align 8
  br label %64

64:                                               ; preds = %53, %30
  %65 = load %struct.zsTkipSeed*, %struct.zsTkipSeed** %3, align 8
  ret %struct.zsTkipSeed* %65
}

declare dso_local i32 @zmw_get_wlan_dev(i32*) #1

declare dso_local i32 @zmw_rx_buf_readb(i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
