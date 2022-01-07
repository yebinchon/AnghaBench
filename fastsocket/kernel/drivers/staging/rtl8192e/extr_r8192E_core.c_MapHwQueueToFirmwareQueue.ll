; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192e/extr_r8192E_core.c_MapHwQueueToFirmwareQueue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192e/extr_r8192E_core.c_MapHwQueueToFirmwareQueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@QSLT_BE = common dso_local global i32 0, align 4
@QSLT_BK = common dso_local global i32 0, align 4
@QSLT_VO = common dso_local global i32 0, align 4
@QSLT_VI = common dso_local global i32 0, align 4
@QSLT_MGNT = common dso_local global i32 0, align 4
@QSLT_BEACON = common dso_local global i32 0, align 4
@QSLT_CMD = common dso_local global i32 0, align 4
@COMP_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"TransmitTCB(): Impossible Queue Selection: %d \0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @MapHwQueueToFirmwareQueue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @MapHwQueueToFirmwareQueue(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  %4 = load i32, i32* %2, align 4
  switch i32 %4, label %20 [
    i32 134, label %5
    i32 133, label %7
    i32 128, label %9
    i32 129, label %11
    i32 131, label %13
    i32 135, label %15
    i32 130, label %17
    i32 132, label %19
  ]

5:                                                ; preds = %1
  %6 = load i32, i32* @QSLT_BE, align 4
  store i32 %6, i32* %3, align 4
  br label %24

7:                                                ; preds = %1
  %8 = load i32, i32* @QSLT_BK, align 4
  store i32 %8, i32* %3, align 4
  br label %24

9:                                                ; preds = %1
  %10 = load i32, i32* @QSLT_VO, align 4
  store i32 %10, i32* %3, align 4
  br label %24

11:                                               ; preds = %1
  %12 = load i32, i32* @QSLT_VI, align 4
  store i32 %12, i32* %3, align 4
  br label %24

13:                                               ; preds = %1
  %14 = load i32, i32* @QSLT_MGNT, align 4
  store i32 %14, i32* %3, align 4
  br label %24

15:                                               ; preds = %1
  %16 = load i32, i32* @QSLT_BEACON, align 4
  store i32 %16, i32* %3, align 4
  br label %24

17:                                               ; preds = %1
  %18 = load i32, i32* @QSLT_CMD, align 4
  store i32 %18, i32* %3, align 4
  br label %24

19:                                               ; preds = %1
  br label %20

20:                                               ; preds = %1, %19
  %21 = load i32, i32* @COMP_ERR, align 4
  %22 = load i32, i32* %2, align 4
  %23 = call i32 @RT_TRACE(i32 %21, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %22)
  br label %24

24:                                               ; preds = %20, %17, %15, %13, %11, %9, %7, %5
  %25 = load i32, i32* %3, align 4
  ret i32 %25
}

declare dso_local i32 @RT_TRACE(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
