; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/cx25821/extr_cx25821-gpio.c_cx25821_set_gpiopin_logicvalue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/cx25821/extr_cx25821-gpio.c_cx25821_set_gpiopin_logicvalue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx25821_dev = type { i32 }

@GPIO_LO = common dso_local global i32 0, align 4
@GPIO_HI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cx25821_dev*, i32, i32)* @cx25821_set_gpiopin_logicvalue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cx25821_set_gpiopin_logicvalue(%struct.cx25821_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.cx25821_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.cx25821_dev* %0, %struct.cx25821_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %5, align 4
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* @GPIO_LO, align 4
  store i32 %11, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp sge i32 %12, 47
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  br label %44

15:                                               ; preds = %3
  %16 = load %struct.cx25821_dev*, %struct.cx25821_dev** %4, align 8
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @cx25821_set_gpiopin_direction(%struct.cx25821_dev* %16, i32 %17, i32 0)
  %19 = load i32, i32* %5, align 4
  %20 = icmp sgt i32 %19, 31
  br i1 %20, label %21, label %25

21:                                               ; preds = %15
  %22 = load i32, i32* %5, align 4
  %23 = sub nsw i32 %22, 31
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* @GPIO_HI, align 4
  store i32 %24, i32* %8, align 4
  br label %25

25:                                               ; preds = %21, %15
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @cx_read(i32 %26)
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %25
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @Clear_GPIO_Bit(i32 %31)
  %33 = load i32, i32* %9, align 4
  %34 = and i32 %33, %32
  store i32 %34, i32* %9, align 4
  br label %40

35:                                               ; preds = %25
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @Set_GPIO_Bit(i32 %36)
  %38 = load i32, i32* %9, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %9, align 4
  br label %40

40:                                               ; preds = %35, %30
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* %9, align 4
  %43 = call i32 @cx_write(i32 %41, i32 %42)
  br label %44

44:                                               ; preds = %40, %14
  ret void
}

declare dso_local i32 @cx25821_set_gpiopin_direction(%struct.cx25821_dev*, i32, i32) #1

declare dso_local i32 @cx_read(i32) #1

declare dso_local i32 @Clear_GPIO_Bit(i32) #1

declare dso_local i32 @Set_GPIO_Bit(i32) #1

declare dso_local i32 @cx_write(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
