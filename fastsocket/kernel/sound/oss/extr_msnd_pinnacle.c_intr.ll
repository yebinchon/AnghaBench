; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_msnd_pinnacle.c_intr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_msnd_pinnacle.c_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i64 }

@dev = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@HP_RXL = common dso_local global i64 0, align 8
@JQS_wTail = common dso_local global i64 0, align 8
@JQS_wHead = common dso_local global i64 0, align 8
@JQS_wSize = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %6 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dev, i32 0, i32 2), align 8
  %7 = load i64, i64* @HP_RXL, align 8
  %8 = add nsw i64 %6, %7
  %9 = call i32 @msnd_inb(i64 %8)
  br label %10

10:                                               ; preds = %52, %2
  %11 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dev, i32 0, i32 0), align 8
  %12 = load i64, i64* @JQS_wTail, align 8
  %13 = add nsw i64 %11, %12
  %14 = call i32 @readw(i64 %13)
  %15 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dev, i32 0, i32 0), align 8
  %16 = load i64, i64* @JQS_wHead, align 8
  %17 = add nsw i64 %15, %16
  %18 = call i32 @readw(i64 %17)
  %19 = icmp ne i32 %14, %18
  br i1 %19, label %20, label %53

20:                                               ; preds = %10
  %21 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dev, i32 0, i32 1), align 8
  %22 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dev, i32 0, i32 0), align 8
  %23 = load i64, i64* @JQS_wHead, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @readw(i64 %24)
  %26 = mul nsw i32 2, %25
  %27 = sext i32 %26 to i64
  %28 = add nsw i64 %21, %27
  %29 = call i32 @readw(i64 %28)
  %30 = call i32 @eval_dsp_msg(i32 %29)
  %31 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dev, i32 0, i32 0), align 8
  %32 = load i64, i64* @JQS_wHead, align 8
  %33 = add nsw i64 %31, %32
  %34 = call i32 @readw(i64 %33)
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %5, align 4
  %36 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dev, i32 0, i32 0), align 8
  %37 = load i64, i64* @JQS_wSize, align 8
  %38 = add nsw i64 %36, %37
  %39 = call i32 @readw(i64 %38)
  %40 = icmp sgt i32 %35, %39
  br i1 %40, label %41, label %46

41:                                               ; preds = %20
  %42 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dev, i32 0, i32 0), align 8
  %43 = load i64, i64* @JQS_wHead, align 8
  %44 = add nsw i64 %42, %43
  %45 = call i32 @writew(i32 0, i64 %44)
  br label %52

46:                                               ; preds = %20
  %47 = load i32, i32* %5, align 4
  %48 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dev, i32 0, i32 0), align 8
  %49 = load i64, i64* @JQS_wHead, align 8
  %50 = add nsw i64 %48, %49
  %51 = call i32 @writew(i32 %47, i64 %50)
  br label %52

52:                                               ; preds = %46, %41
  br label %10

53:                                               ; preds = %10
  %54 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %54
}

declare dso_local i32 @msnd_inb(i64) #1

declare dso_local i32 @readw(i64) #1

declare dso_local i32 @eval_dsp_msg(i32) #1

declare dso_local i32 @writew(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
