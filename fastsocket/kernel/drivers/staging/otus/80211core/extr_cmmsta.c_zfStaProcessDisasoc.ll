; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_cmmsta.c_zfStaProcessDisasoc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_cmmsta.c_zfStaProcessDisasoc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64* }

@wd = common dso_local global %struct.TYPE_4__* null, align 8
@ZM_MODE_INFRASTRUCTURE = common dso_local global i64 0, align 8
@ZM_WLAN_HEADER_A3_OFFSET = common dso_local global i64 0, align 8
@ZM_STATUS_MEDIA_DISCONNECT_DISASOC = common dso_local global i32 0, align 4
@ZM_STATUS_MEDIA_DISCONNECT_ASOC_FAILED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zfStaProcessDisasoc(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca [3 x i64], align 16
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = call i32 @zmw_get_wlan_dev(i32* %6)
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @ZM_MODE_INFRASTRUCTURE, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %88

13:                                               ; preds = %2
  %14 = load i32*, i32** %3, align 8
  %15 = load i32*, i32** %4, align 8
  %16 = load i64, i64* @ZM_WLAN_HEADER_A3_OFFSET, align 8
  %17 = call i64 @zmw_rx_buf_readh(i32* %14, i32* %15, i64 %16)
  %18 = getelementptr inbounds [3 x i64], [3 x i64]* %5, i64 0, i64 0
  store i64 %17, i64* %18, align 16
  %19 = load i32*, i32** %3, align 8
  %20 = load i32*, i32** %4, align 8
  %21 = load i64, i64* @ZM_WLAN_HEADER_A3_OFFSET, align 8
  %22 = add nsw i64 %21, 2
  %23 = call i64 @zmw_rx_buf_readh(i32* %19, i32* %20, i64 %22)
  %24 = getelementptr inbounds [3 x i64], [3 x i64]* %5, i64 0, i64 1
  store i64 %23, i64* %24, align 8
  %25 = load i32*, i32** %3, align 8
  %26 = load i32*, i32** %4, align 8
  %27 = load i64, i64* @ZM_WLAN_HEADER_A3_OFFSET, align 8
  %28 = add nsw i64 %27, 4
  %29 = call i64 @zmw_rx_buf_readh(i32* %25, i32* %26, i64 %28)
  %30 = getelementptr inbounds [3 x i64], [3 x i64]* %5, i64 0, i64 2
  store i64 %29, i64* %30, align 16
  %31 = getelementptr inbounds [3 x i64], [3 x i64]* %5, i64 0, i64 0
  %32 = load i64, i64* %31, align 16
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i64*, i64** %35, align 8
  %37 = getelementptr inbounds i64, i64* %36, i64 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 %32, %38
  br i1 %39, label %40, label %87

40:                                               ; preds = %13
  %41 = getelementptr inbounds [3 x i64], [3 x i64]* %5, i64 0, i64 1
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i64*, i64** %45, align 8
  %47 = getelementptr inbounds i64, i64* %46, i64 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp eq i64 %42, %48
  br i1 %49, label %50, label %87

50:                                               ; preds = %40
  %51 = getelementptr inbounds [3 x i64], [3 x i64]* %5, i64 0, i64 2
  %52 = load i64, i64* %51, align 16
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i64*, i64** %55, align 8
  %57 = getelementptr inbounds i64, i64* %56, i64 2
  %58 = load i64, i64* %57, align 8
  %59 = icmp eq i64 %52, %58
  br i1 %59, label %60, label %87

60:                                               ; preds = %50
  %61 = load i32*, i32** %3, align 8
  %62 = load i32*, i32** %4, align 8
  %63 = call i32 @zfwBufGetSize(i32* %61, i32* %62)
  %64 = icmp sge i32 %63, 26
  br i1 %64, label %65, label %86

65:                                               ; preds = %60
  %66 = load i32*, i32** %3, align 8
  %67 = call i64 @zfStaIsConnected(i32* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %77

69:                                               ; preds = %65
  %70 = load i32*, i32** %3, align 8
  %71 = load i32, i32* @ZM_STATUS_MEDIA_DISCONNECT_DISASOC, align 4
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  %75 = load i64*, i64** %74, align 8
  %76 = call i32 @zfStaConnectFail(i32* %70, i32 %71, i64* %75, i32 2)
  br label %85

77:                                               ; preds = %65
  %78 = load i32*, i32** %3, align 8
  %79 = load i32, i32* @ZM_STATUS_MEDIA_DISCONNECT_ASOC_FAILED, align 4
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 0
  %83 = load i64*, i64** %82, align 8
  %84 = call i32 @zfStaConnectFail(i32* %78, i32 %79, i64* %83, i32 3)
  br label %85

85:                                               ; preds = %77, %69
  br label %86

86:                                               ; preds = %85, %60
  br label %87

87:                                               ; preds = %86, %50, %40, %13
  br label %88

88:                                               ; preds = %87, %2
  ret void
}

declare dso_local i32 @zmw_get_wlan_dev(i32*) #1

declare dso_local i64 @zmw_rx_buf_readh(i32*, i32*, i64) #1

declare dso_local i32 @zfwBufGetSize(i32*, i32*) #1

declare dso_local i64 @zfStaIsConnected(i32*) #1

declare dso_local i32 @zfStaConnectFail(i32*, i32, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
