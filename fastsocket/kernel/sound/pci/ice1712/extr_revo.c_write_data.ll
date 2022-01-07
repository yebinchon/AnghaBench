; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ice1712/extr_revo.c_write_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ice1712/extr_revo.c_write_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ice1712 = type { i32 }

@VT1724_REVO_CCLK = common dso_local global i32 0, align 4
@VT1724_REVO_CDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_ice1712*, i32, i32, i32)* @write_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_data(%struct.snd_ice1712* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.snd_ice1712*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.snd_ice1712* %0, %struct.snd_ice1712** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  br label %9

9:                                                ; preds = %47, %4
  %10 = load i32, i32* %8, align 4
  %11 = icmp sge i32 %10, 0
  br i1 %11, label %12, label %50

12:                                               ; preds = %9
  %13 = load i32, i32* @VT1724_REVO_CCLK, align 4
  %14 = xor i32 %13, -1
  %15 = load i32, i32* %6, align 4
  %16 = and i32 %15, %14
  store i32 %16, i32* %6, align 4
  %17 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @snd_ice1712_gpio_write(%struct.snd_ice1712* %17, i32 %18)
  %20 = call i32 @udelay(i32 1)
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* %8, align 4
  %23 = shl i32 1, %22
  %24 = and i32 %21, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %12
  %27 = load i32, i32* @VT1724_REVO_CDOUT, align 4
  %28 = load i32, i32* %6, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %6, align 4
  br label %35

30:                                               ; preds = %12
  %31 = load i32, i32* @VT1724_REVO_CDOUT, align 4
  %32 = xor i32 %31, -1
  %33 = load i32, i32* %6, align 4
  %34 = and i32 %33, %32
  store i32 %34, i32* %6, align 4
  br label %35

35:                                               ; preds = %30, %26
  %36 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @snd_ice1712_gpio_write(%struct.snd_ice1712* %36, i32 %37)
  %39 = call i32 @udelay(i32 1)
  %40 = load i32, i32* @VT1724_REVO_CCLK, align 4
  %41 = load i32, i32* %6, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %6, align 4
  %43 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @snd_ice1712_gpio_write(%struct.snd_ice1712* %43, i32 %44)
  %46 = call i32 @udelay(i32 1)
  br label %47

47:                                               ; preds = %35
  %48 = load i32, i32* %8, align 4
  %49 = add nsw i32 %48, -1
  store i32 %49, i32* %8, align 4
  br label %9

50:                                               ; preds = %9
  ret void
}

declare dso_local i32 @snd_ice1712_gpio_write(%struct.snd_ice1712*, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
