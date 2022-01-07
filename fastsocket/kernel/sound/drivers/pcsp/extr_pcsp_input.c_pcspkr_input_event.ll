; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/drivers/pcsp/extr_pcsp_input.c_pcspkr_input_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/drivers/pcsp/extr_pcsp_input.c_pcspkr_input_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.input_dev = type { i32 }

@pcsp_chip = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@PIT_TICK_RATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.input_dev*, i32, i32, i32)* @pcspkr_input_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcspkr_input_event(%struct.input_dev* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.input_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.input_dev* %0, %struct.input_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %11 = call i64 @atomic_read(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pcsp_chip, i32 0, i32 1))
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %4
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pcsp_chip, i32 0, i32 0), align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %13, %4
  store i32 0, i32* %5, align 4
  br label %43

17:                                               ; preds = %13
  %18 = load i32, i32* %7, align 4
  switch i32 %18, label %29 [
    i32 130, label %19
  ]

19:                                               ; preds = %17
  %20 = load i32, i32* %8, align 4
  switch i32 %20, label %27 [
    i32 129, label %21
    i32 128, label %26
  ]

21:                                               ; preds = %19
  %22 = load i32, i32* %9, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  store i32 1000, i32* %9, align 4
  br label %25

25:                                               ; preds = %24, %21
  br label %26

26:                                               ; preds = %19, %25
  br label %28

27:                                               ; preds = %19
  store i32 -1, i32* %5, align 4
  br label %43

28:                                               ; preds = %26
  br label %30

29:                                               ; preds = %17
  store i32 -1, i32* %5, align 4
  br label %43

30:                                               ; preds = %28
  %31 = load i32, i32* %9, align 4
  %32 = icmp sgt i32 %31, 20
  br i1 %32, label %33, label %40

33:                                               ; preds = %30
  %34 = load i32, i32* %9, align 4
  %35 = icmp slt i32 %34, 32767
  br i1 %35, label %36, label %40

36:                                               ; preds = %33
  %37 = load i32, i32* @PIT_TICK_RATE, align 4
  %38 = load i32, i32* %9, align 4
  %39 = sdiv i32 %37, %38
  store i32 %39, i32* %10, align 4
  br label %40

40:                                               ; preds = %36, %33, %30
  %41 = load i32, i32* %10, align 4
  %42 = call i32 @pcspkr_do_sound(i32 %41)
  store i32 0, i32* %5, align 4
  br label %43

43:                                               ; preds = %40, %29, %27, %16
  %44 = load i32, i32* %5, align 4
  ret i32 %44
}

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @pcspkr_do_sound(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
