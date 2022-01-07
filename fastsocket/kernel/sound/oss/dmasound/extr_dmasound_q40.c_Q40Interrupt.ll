; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/oss/dmasound/extr_dmasound_q40.c_Q40Interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/oss/dmasound/extr_dmasound_q40.c_Q40Interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i64, i32 }

@write_sq = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@SAMPLE_ENABLE_REG = common dso_local global i32 0, align 4
@q40_sc = common dso_local global i32 0, align 4
@DAC_RIGHT = common dso_local global i32* null, align 8
@DAC_LEFT = common dso_local global i32* null, align 8
@SAMPLE_CLEAR_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @Q40Interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Q40Interrupt() #0 {
  %1 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @write_sq, i32 0, i32 2), align 8
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %8, label %3

3:                                                ; preds = %0
  %4 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @write_sq, i32 0, i32 3), align 8
  %5 = call i32 @WAKE_UP(i32 %4)
  %6 = load i32, i32* @SAMPLE_ENABLE_REG, align 4
  %7 = call i32 @master_outb(i32 0, i32 %6)
  br label %23

8:                                                ; preds = %0
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @write_sq, i32 0, i32 2), align 8
  br label %9

9:                                                ; preds = %8
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @write_sq, i32 0, i32 1), align 4
  %11 = add nsw i32 %10, -1
  store i32 %11, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @write_sq, i32 0, i32 1), align 4
  %12 = call i32 (...) @Q40Play()
  %13 = load i32, i32* @q40_sc, align 4
  %14 = icmp slt i32 %13, 2
  br i1 %14, label %15, label %20

15:                                               ; preds = %9
  %16 = load i32, i32* @SAMPLE_ENABLE_REG, align 4
  %17 = call i32 @master_outb(i32 0, i32 %16)
  %18 = load i32*, i32** @DAC_RIGHT, align 8
  store i32 127, i32* %18, align 4
  %19 = load i32*, i32** @DAC_LEFT, align 8
  store i32 127, i32* %19, align 4
  br label %20

20:                                               ; preds = %15, %9
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @write_sq, i32 0, i32 0), align 8
  %22 = call i32 @WAKE_UP(i32 %21)
  br label %23

23:                                               ; preds = %20, %3
  %24 = load i32, i32* @SAMPLE_CLEAR_REG, align 4
  %25 = call i32 @master_outb(i32 1, i32 %24)
  ret void
}

declare dso_local i32 @WAKE_UP(i32) #1

declare dso_local i32 @master_outb(i32, i32) #1

declare dso_local i32 @Q40Play(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
