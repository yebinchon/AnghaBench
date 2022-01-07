; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/aty/extr_atyfb_base.c_aty_waitforvblank.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/aty/extr_atyfb_base.c_aty_waitforvblank.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atyfb_par = type { %struct.aty_interrupt }
%struct.aty_interrupt = type { i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atyfb_par*, i32)* @aty_waitforvblank to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aty_waitforvblank(%struct.atyfb_par* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.atyfb_par*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.aty_interrupt*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.atyfb_par* %0, %struct.atyfb_par** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  switch i32 %9, label %13 [
    i32 0, label %10
  ]

10:                                               ; preds = %2
  %11 = load %struct.atyfb_par*, %struct.atyfb_par** %4, align 8
  %12 = getelementptr inbounds %struct.atyfb_par, %struct.atyfb_par* %11, i32 0, i32 0
  store %struct.aty_interrupt* %12, %struct.aty_interrupt** %6, align 8
  br label %16

13:                                               ; preds = %2
  %14 = load i32, i32* @ENODEV, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %52

16:                                               ; preds = %10
  %17 = load %struct.atyfb_par*, %struct.atyfb_par** %4, align 8
  %18 = call i32 @aty_enable_irq(%struct.atyfb_par* %17, i32 0)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  %22 = load i32, i32* %8, align 4
  store i32 %22, i32* %3, align 4
  br label %52

23:                                               ; preds = %16
  %24 = load %struct.aty_interrupt*, %struct.aty_interrupt** %6, align 8
  %25 = getelementptr inbounds %struct.aty_interrupt, %struct.aty_interrupt* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %7, align 4
  %27 = load %struct.aty_interrupt*, %struct.aty_interrupt** %6, align 8
  %28 = getelementptr inbounds %struct.aty_interrupt, %struct.aty_interrupt* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %7, align 4
  %31 = load %struct.aty_interrupt*, %struct.aty_interrupt** %6, align 8
  %32 = getelementptr inbounds %struct.aty_interrupt, %struct.aty_interrupt* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %30, %33
  %35 = zext i1 %34 to i32
  %36 = load i32, i32* @HZ, align 4
  %37 = sdiv i32 %36, 10
  %38 = call i32 @wait_event_interruptible_timeout(i32 %29, i32 %35, i32 %37)
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %23
  %42 = load i32, i32* %8, align 4
  store i32 %42, i32* %3, align 4
  br label %52

43:                                               ; preds = %23
  %44 = load i32, i32* %8, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %43
  %47 = load %struct.atyfb_par*, %struct.atyfb_par** %4, align 8
  %48 = call i32 @aty_enable_irq(%struct.atyfb_par* %47, i32 1)
  %49 = load i32, i32* @ETIMEDOUT, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %3, align 4
  br label %52

51:                                               ; preds = %43
  store i32 0, i32* %3, align 4
  br label %52

52:                                               ; preds = %51, %46, %41, %21, %13
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i32 @aty_enable_irq(%struct.atyfb_par*, i32) #1

declare dso_local i32 @wait_event_interruptible_timeout(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
