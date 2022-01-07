; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_cmmsta.c_zfSendPSPoll.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_cmmsta.c_zfSendPSPoll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@ZM_LV_0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Alloc mm buf Fail!\00", align 1
@ZM_WLAN_FRAME_TYPE_PSPOLL = common dso_local global i32 0, align 4
@wd = common dso_local global %struct.TYPE_4__* null, align 8
@ZM_INTERNAL_ALLOC_BUF = common dso_local global i32 0, align 4
@ZM_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zfSendPSPoll(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [16 x i32], align 16
  store i32* %0, i32** %2, align 8
  %7 = load i32*, i32** %2, align 8
  %8 = call i32 @zmw_get_wlan_dev(i32* %7)
  %9 = load i32*, i32** %2, align 8
  %10 = call i32* @zfwBufAllocate(i32* %9, i32 1024)
  store i32* %10, i32** %3, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load i32, i32* @ZM_LV_0, align 4
  %14 = call i32 @zm_msg0_mm(i32 %13, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %52

15:                                               ; preds = %1
  %16 = load i32*, i32** %2, align 8
  %17 = load i32*, i32** %3, align 8
  %18 = call i32 @zfwBufSetSize(i32* %16, i32* %17, i32 0)
  %19 = load i32*, i32** %2, align 8
  %20 = load i32, i32* @ZM_WLAN_FRAME_TYPE_PSPOLL, align 4
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 0
  %26 = load i32*, i32** %3, align 8
  %27 = call i32 @zfTxGenMmHeader(i32* %19, i32 %20, i32 %24, i32* %25, i32 0, i32* %26, i32 0, i32 0)
  %28 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 0
  store i32 20, i32* %28, align 16
  %29 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 4
  %30 = load i32, i32* %29, align 16
  %31 = or i32 %30, 4096
  store i32 %31, i32* %29, align 16
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = or i32 %35, 49152
  %37 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 5
  store i32 %36, i32* %37, align 4
  store i32 24, i32* %5, align 4
  %38 = load i32*, i32** %2, align 8
  %39 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 0
  %40 = load i32, i32* %5, align 4
  %41 = load i32*, i32** %3, align 8
  %42 = load i32, i32* @ZM_INTERNAL_ALLOC_BUF, align 4
  %43 = call i32 @zfHpSend(i32* %38, i32* %39, i32 %40, i32* null, i32 0, i32* null, i32 0, i32* %41, i32 0, i32 %42, i32 0, i32 255)
  store i32 %43, i32* %4, align 4
  %44 = load i32, i32* @ZM_SUCCESS, align 4
  %45 = icmp ne i32 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %15
  br label %48

47:                                               ; preds = %15
  br label %52

48:                                               ; preds = %46
  %49 = load i32*, i32** %2, align 8
  %50 = load i32*, i32** %3, align 8
  %51 = call i32 @zfwBufFree(i32* %49, i32* %50, i32 0)
  br label %52

52:                                               ; preds = %48, %47, %12
  ret void
}

declare dso_local i32 @zmw_get_wlan_dev(i32*) #1

declare dso_local i32* @zfwBufAllocate(i32*, i32) #1

declare dso_local i32 @zm_msg0_mm(i32, i8*) #1

declare dso_local i32 @zfwBufSetSize(i32*, i32*, i32) #1

declare dso_local i32 @zfTxGenMmHeader(i32*, i32, i32, i32*, i32, i32*, i32, i32) #1

declare dso_local i32 @zfHpSend(i32*, i32*, i32, i32*, i32, i32*, i32, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @zfwBufFree(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
