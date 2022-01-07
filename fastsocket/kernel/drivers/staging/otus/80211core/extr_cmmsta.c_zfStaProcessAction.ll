; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_cmmsta.c_zfStaProcessAction.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_cmmsta.c_zfStaProcessAction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@wd = common dso_local global %struct.TYPE_4__* null, align 8
@.str = private unnamed_addr constant [47 x i8] c"Action Frame contain not support action field \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfStaProcessAction(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = call i32 @zmw_get_wlan_dev(i32* %7)
  %9 = load i32*, i32** %3, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = call i32 @zmw_rx_buf_readb(i32* %9, i32* %10, i32 24)
  store i32 %11, i32* %5, align 4
  %12 = load i32*, i32** %3, align 8
  %13 = load i32*, i32** %4, align 8
  %14 = call i32 @zmw_rx_buf_readb(i32* %12, i32* %13, i32 25)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %5, align 4
  switch i32 %15, label %42 [
    i32 0, label %16
    i32 128, label %37
    i32 17, label %41
  ]

16:                                               ; preds = %2
  %17 = load i32, i32* %6, align 4
  switch i32 %17, label %33 [
    i32 0, label %18
    i32 1, label %19
    i32 2, label %20
    i32 3, label %21
    i32 4, label %22
  ]

18:                                               ; preds = %16
  br label %36

19:                                               ; preds = %16
  br label %36

20:                                               ; preds = %16
  br label %36

21:                                               ; preds = %16
  br label %36

22:                                               ; preds = %16
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %22
  %29 = load i32*, i32** %3, align 8
  %30 = load i32*, i32** %4, align 8
  %31 = call i32 @zfStaUpdateDot11HDFS(i32* %29, i32* %30)
  br label %32

32:                                               ; preds = %28, %22
  br label %36

33:                                               ; preds = %16
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @zm_debug_msg1(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %34)
  br label %36

36:                                               ; preds = %33, %32, %21, %20, %19, %18
  br label %42

37:                                               ; preds = %2
  %38 = load i32*, i32** %3, align 8
  %39 = load i32*, i32** %4, align 8
  %40 = call i32 @zfAggBlockAckActionFrame(i32* %38, i32* %39)
  br label %42

41:                                               ; preds = %2
  br label %42

42:                                               ; preds = %2, %41, %37, %36
  ret i32 0
}

declare dso_local i32 @zmw_get_wlan_dev(i32*) #1

declare dso_local i32 @zmw_rx_buf_readb(i32*, i32*, i32) #1

declare dso_local i32 @zfStaUpdateDot11HDFS(i32*, i32*) #1

declare dso_local i32 @zm_debug_msg1(i8*, i32) #1

declare dso_local i32 @zfAggBlockAckActionFrame(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
