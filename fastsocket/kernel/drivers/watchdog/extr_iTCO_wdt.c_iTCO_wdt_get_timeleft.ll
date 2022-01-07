; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/watchdog/extr_iTCO_wdt.c_iTCO_wdt_get_timeleft.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/watchdog/extr_iTCO_wdt.c_iTCO_wdt_get_timeleft.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@iTCO_wdt_private = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@TCO_RLD = common dso_local global i32 0, align 4
@TCO1_STS = common dso_local global i32 0, align 4
@TCOv1_TMR = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @iTCO_wdt_get_timeleft to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iTCO_wdt_get_timeleft(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  store i32* %0, i32** %3, align 8
  %6 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @iTCO_wdt_private, i32 0, i32 0), align 4
  %7 = icmp eq i32 %6, 2
  br i1 %7, label %8, label %19

8:                                                ; preds = %1
  %9 = call i32 @spin_lock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @iTCO_wdt_private, i32 0, i32 1))
  %10 = load i32, i32* @TCO_RLD, align 4
  %11 = call i32 @inw(i32 %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = and i32 %12, 1023
  store i32 %13, i32* %4, align 4
  %14 = call i32 @spin_unlock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @iTCO_wdt_private, i32 0, i32 1))
  %15 = load i32, i32* %4, align 4
  %16 = mul i32 %15, 6
  %17 = udiv i32 %16, 10
  %18 = load i32*, i32** %3, align 8
  store i32 %17, i32* %18, align 4
  br label %54

19:                                               ; preds = %1
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @iTCO_wdt_private, i32 0, i32 0), align 4
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %22, label %50

22:                                               ; preds = %19
  %23 = call i32 @spin_lock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @iTCO_wdt_private, i32 0, i32 1))
  %24 = load i32, i32* @TCO_RLD, align 4
  %25 = call i32 @inb(i32 %24)
  %26 = trunc i32 %25 to i8
  store i8 %26, i8* %5, align 1
  %27 = load i8, i8* %5, align 1
  %28 = zext i8 %27 to i32
  %29 = and i32 %28, 63
  %30 = trunc i32 %29 to i8
  store i8 %30, i8* %5, align 1
  %31 = load i32, i32* @TCO1_STS, align 4
  %32 = call i32 @inw(i32 %31)
  %33 = and i32 %32, 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %43, label %35

35:                                               ; preds = %22
  %36 = load i32, i32* @TCOv1_TMR, align 4
  %37 = call i32 @inb(i32 %36)
  %38 = and i32 %37, 63
  %39 = load i8, i8* %5, align 1
  %40 = zext i8 %39 to i32
  %41 = add nsw i32 %40, %38
  %42 = trunc i32 %41 to i8
  store i8 %42, i8* %5, align 1
  br label %43

43:                                               ; preds = %35, %22
  %44 = call i32 @spin_unlock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @iTCO_wdt_private, i32 0, i32 1))
  %45 = load i8, i8* %5, align 1
  %46 = zext i8 %45 to i32
  %47 = mul nsw i32 %46, 6
  %48 = sdiv i32 %47, 10
  %49 = load i32*, i32** %3, align 8
  store i32 %48, i32* %49, align 4
  br label %53

50:                                               ; preds = %19
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %2, align 4
  br label %55

53:                                               ; preds = %43
  br label %54

54:                                               ; preds = %53, %8
  store i32 0, i32* %2, align 4
  br label %55

55:                                               ; preds = %54, %50
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @inw(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @inb(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
