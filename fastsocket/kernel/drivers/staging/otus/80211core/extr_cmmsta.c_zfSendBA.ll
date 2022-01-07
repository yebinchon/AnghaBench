; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_cmmsta.c_zfSendBA.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_cmmsta.c_zfSendBA.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@ZM_LV_0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Alloc mm buf Fail!\00", align 1
@ZM_WLAN_FRAME_TYPE_BA = common dso_local global i32 0, align 4
@wd = common dso_local global %struct.TYPE_4__* null, align 8
@zcRateToPhyCtrl = common dso_local global i32* null, align 8
@ZM_INTERNAL_ALLOC_BUF = common dso_local global i32 0, align 4
@ZM_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zfSendBA(i32* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [16 x i32], align 16
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  store i32 0, i32* %12, align 4
  %13 = load i32*, i32** %4, align 8
  %14 = call i32 @zmw_get_wlan_dev(i32* %13)
  %15 = load i32*, i32** %4, align 8
  %16 = call i32* @zfwBufAllocate(i32* %15, i32 1024)
  store i32* %16, i32** %7, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load i32, i32* @ZM_LV_0, align 4
  %20 = call i32 @zm_msg0_mm(i32 %19, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %93

21:                                               ; preds = %3
  %22 = load i32*, i32** %4, align 8
  %23 = load i32*, i32** %7, align 8
  %24 = call i32 @zfwBufSetSize(i32* %22, i32* %23, i32 12)
  %25 = load i32*, i32** %4, align 8
  %26 = load i32, i32* @ZM_WLAN_FRAME_TYPE_BA, align 4
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = getelementptr inbounds [16 x i32], [16 x i32]* %10, i64 0, i64 0
  %32 = load i32*, i32** %7, align 8
  %33 = call i32 @zfTxGenMmHeader(i32* %25, i32 %26, i32 %30, i32* %31, i32 0, i32* %32, i32 0, i32 0)
  %34 = getelementptr inbounds [16 x i32], [16 x i32]* %10, i64 0, i64 0
  store i32 32, i32* %34, align 16
  %35 = getelementptr inbounds [16 x i32], [16 x i32]* %10, i64 0, i64 1
  store i32 4, i32* %35, align 4
  %36 = load i32*, i32** @zcRateToPhyCtrl, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 4
  %38 = load i32, i32* %37, align 4
  %39 = and i32 %38, 65535
  %40 = getelementptr inbounds [16 x i32], [16 x i32]* %10, i64 0, i64 2
  store i32 %39, i32* %40, align 8
  %41 = load i32*, i32** @zcRateToPhyCtrl, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 4
  %43 = load i32, i32* %42, align 4
  %44 = ashr i32 %43, 16
  %45 = and i32 %44, 65535
  %46 = getelementptr inbounds [16 x i32], [16 x i32]* %10, i64 0, i64 3
  store i32 %45, i32* %46, align 4
  store i32 24, i32* %9, align 4
  store i32 0, i32* %12, align 4
  %47 = load i32*, i32** %4, align 8
  %48 = load i32*, i32** %7, align 8
  %49 = load i32, i32* %12, align 4
  %50 = call i32 @zmw_tx_buf_writeh(i32* %47, i32* %48, i32 %49, i32 5)
  %51 = load i32, i32* %12, align 4
  %52 = add nsw i32 %51, 2
  store i32 %52, i32* %12, align 4
  %53 = load i32*, i32** %4, align 8
  %54 = load i32*, i32** %7, align 8
  %55 = load i32, i32* %12, align 4
  %56 = load i32, i32* %5, align 4
  %57 = call i32 @zmw_tx_buf_writeh(i32* %53, i32* %54, i32 %55, i32 %56)
  %58 = load i32, i32* %12, align 4
  %59 = add nsw i32 %58, 2
  store i32 %59, i32* %12, align 4
  store i32 0, i32* %11, align 4
  br label %60

60:                                               ; preds = %75, %21
  %61 = load i32, i32* %11, align 4
  %62 = icmp slt i32 %61, 8
  br i1 %62, label %63, label %78

63:                                               ; preds = %60
  %64 = load i32*, i32** %4, align 8
  %65 = load i32*, i32** %7, align 8
  %66 = load i32, i32* %12, align 4
  %67 = load i32*, i32** %6, align 8
  %68 = load i32, i32* %11, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @zmw_tx_buf_writeb(i32* %64, i32* %65, i32 %66, i32 %71)
  %73 = load i32, i32* %12, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %12, align 4
  br label %75

75:                                               ; preds = %63
  %76 = load i32, i32* %11, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %11, align 4
  br label %60

78:                                               ; preds = %60
  %79 = load i32*, i32** %4, align 8
  %80 = getelementptr inbounds [16 x i32], [16 x i32]* %10, i64 0, i64 0
  %81 = load i32, i32* %9, align 4
  %82 = load i32*, i32** %7, align 8
  %83 = load i32, i32* @ZM_INTERNAL_ALLOC_BUF, align 4
  %84 = call i32 @zfHpSend(i32* %79, i32* %80, i32 %81, i32* null, i32 0, i32* null, i32 0, i32* %82, i32 0, i32 %83, i32 0, i32 255)
  store i32 %84, i32* %8, align 4
  %85 = load i32, i32* @ZM_SUCCESS, align 4
  %86 = icmp ne i32 %84, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %78
  br label %89

88:                                               ; preds = %78
  br label %93

89:                                               ; preds = %87
  %90 = load i32*, i32** %4, align 8
  %91 = load i32*, i32** %7, align 8
  %92 = call i32 @zfwBufFree(i32* %90, i32* %91, i32 0)
  br label %93

93:                                               ; preds = %89, %88, %18
  ret void
}

declare dso_local i32 @zmw_get_wlan_dev(i32*) #1

declare dso_local i32* @zfwBufAllocate(i32*, i32) #1

declare dso_local i32 @zm_msg0_mm(i32, i8*) #1

declare dso_local i32 @zfwBufSetSize(i32*, i32*, i32) #1

declare dso_local i32 @zfTxGenMmHeader(i32*, i32, i32, i32*, i32, i32*, i32, i32) #1

declare dso_local i32 @zmw_tx_buf_writeh(i32*, i32*, i32, i32) #1

declare dso_local i32 @zmw_tx_buf_writeb(i32*, i32*, i32, i32) #1

declare dso_local i32 @zfHpSend(i32*, i32*, i32, i32*, i32, i32*, i32, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @zfwBufFree(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
