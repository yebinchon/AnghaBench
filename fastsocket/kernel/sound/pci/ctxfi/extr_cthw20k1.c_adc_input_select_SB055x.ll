; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ctxfi/extr_cthw20k1.c_adc_input_select_SB055x.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ctxfi/extr_cthw20k1.c_adc_input_select_SB055x.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hw = type { i32 }

@GPIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hw*, i32, i8)* @adc_input_select_SB055x to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adc_input_select_SB055x(%struct.hw* %0, i32 %1, i8 zeroext %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  store %struct.hw* %0, %struct.hw** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8 %2, i8* %7, align 1
  %9 = load %struct.hw*, %struct.hw** %5, align 8
  %10 = load i32, i32* @GPIO, align 4
  %11 = call i32 @hw_read_20kx(%struct.hw* %9, i32 %10)
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = and i32 %12, 60531
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %6, align 4
  switch i32 %14, label %34 [
    i32 129, label %15
    i32 130, label %25
    i32 131, label %28
    i32 128, label %31
  ]

15:                                               ; preds = %3
  %16 = load i32, i32* %8, align 4
  %17 = or i32 %16, 896
  store i32 %17, i32* %8, align 4
  %18 = load i8, i8* %7, align 1
  %19 = zext i8 %18 to i32
  %20 = icmp ne i32 %19, 0
  %21 = zext i1 %20 to i64
  %22 = select i1 %20, i32 4, i32 0
  %23 = load i32, i32* %8, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %8, align 4
  br label %35

25:                                               ; preds = %3
  %26 = load i32, i32* %8, align 4
  %27 = or i32 %26, 256
  store i32 %27, i32* %8, align 4
  br label %35

28:                                               ; preds = %3
  %29 = load i32, i32* %8, align 4
  %30 = or i32 %29, 4352
  store i32 %30, i32* %8, align 4
  br label %35

31:                                               ; preds = %3
  %32 = load i32, i32* %8, align 4
  %33 = or i32 %32, 4096
  store i32 %33, i32* %8, align 4
  br label %35

34:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %40

35:                                               ; preds = %31, %28, %25, %15
  %36 = load %struct.hw*, %struct.hw** %5, align 8
  %37 = load i32, i32* @GPIO, align 4
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @hw_write_20kx(%struct.hw* %36, i32 %37, i32 %38)
  store i32 0, i32* %4, align 4
  br label %40

40:                                               ; preds = %35, %34
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

declare dso_local i32 @hw_read_20kx(%struct.hw*, i32) #1

declare dso_local i32 @hw_write_20kx(%struct.hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
