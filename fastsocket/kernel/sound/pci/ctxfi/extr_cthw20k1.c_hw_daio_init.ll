; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ctxfi/extr_cthw20k1.c_hw_daio_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ctxfi/extr_cthw20k1.c_hw_daio_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hw = type { i32 }
%struct.daio_conf = type { i32 }

@SPOCTL = common dso_local global i32 0, align 4
@I2SCTL = common dso_local global i32 0, align 4
@SPICTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hw*, %struct.daio_conf*)* @hw_daio_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hw_daio_init(%struct.hw* %0, %struct.daio_conf* %1) #0 {
  %3 = alloca %struct.hw*, align 8
  %4 = alloca %struct.daio_conf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.hw* %0, %struct.hw** %3, align 8
  store %struct.daio_conf* %1, %struct.daio_conf** %4, align 8
  store i32 -1811676156, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = and i32 %7, -4
  store i32 %8, i32* %5, align 4
  %9 = load %struct.hw*, %struct.hw** %3, align 8
  %10 = load i32, i32* @SPOCTL, align 4
  %11 = call i32 @hw_write_20kx(%struct.hw* %9, i32 %10, i32 0)
  store i32 5, i32* %6, align 4
  %12 = load %struct.daio_conf*, %struct.daio_conf** %4, align 8
  %13 = getelementptr inbounds %struct.daio_conf, %struct.daio_conf* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %29 [
    i32 1, label %15
    i32 2, label %19
    i32 4, label %24
  ]

15:                                               ; preds = %2
  %16 = load i32, i32* %5, align 4
  %17 = or i32 %16, 1
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %6, align 4
  store i32 %18, i32* %6, align 4
  br label %32

19:                                               ; preds = %2
  %20 = load i32, i32* %5, align 4
  %21 = or i32 %20, 2
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %6, align 4
  %23 = or i32 %22, 64
  store i32 %23, i32* %6, align 4
  br label %32

24:                                               ; preds = %2
  %25 = load i32, i32* %5, align 4
  %26 = or i32 %25, 3
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %6, align 4
  %28 = or i32 %27, 128
  store i32 %28, i32* %6, align 4
  br label %32

29:                                               ; preds = %2
  %30 = load i32, i32* %5, align 4
  %31 = or i32 %30, 1
  store i32 %31, i32* %5, align 4
  br label %32

32:                                               ; preds = %29, %24, %19, %15
  %33 = load %struct.hw*, %struct.hw** %3, align 8
  %34 = load i32, i32* @I2SCTL, align 4
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @hw_write_20kx(%struct.hw* %33, i32 %34, i32 %35)
  %37 = load %struct.hw*, %struct.hw** %3, align 8
  %38 = load i32, i32* @SPOCTL, align 4
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @hw_write_20kx(%struct.hw* %37, i32 %38, i32 %39)
  %41 = load %struct.hw*, %struct.hw** %3, align 8
  %42 = load i32, i32* @SPICTL, align 4
  %43 = call i32 @hw_write_20kx(%struct.hw* %41, i32 %42, i32 0)
  %44 = call i32 @mdelay(i32 1)
  store i32 168430090, i32* %6, align 4
  %45 = load %struct.hw*, %struct.hw** %3, align 8
  %46 = load i32, i32* @SPICTL, align 4
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @hw_write_20kx(%struct.hw* %45, i32 %46, i32 %47)
  %49 = call i32 @mdelay(i32 1)
  ret i32 0
}

declare dso_local i32 @hw_write_20kx(%struct.hw*, i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
