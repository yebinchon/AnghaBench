; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ctxfi/extr_cthw20k1.c_i2c_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ctxfi/extr_cthw20k1.c_i2c_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hw = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hw*, i32, i32, i32)* @i2c_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i2c_write(%struct.hw* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.hw* %0, %struct.hw** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  br label %10

10:                                               ; preds = %13, %4
  %11 = load %struct.hw*, %struct.hw** %5, align 8
  %12 = call i32 @hw_read_pci(%struct.hw* %11, i32 236)
  store i32 %12, i32* %9, align 4
  br label %13

13:                                               ; preds = %10
  %14 = load i32, i32* %9, align 4
  %15 = and i32 %14, 8388608
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  br i1 %17, label %10, label %18

18:                                               ; preds = %13
  %19 = load %struct.hw*, %struct.hw** %5, align 8
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @hw_write_pci(%struct.hw* %19, i32 224, i32 %20)
  %22 = load %struct.hw*, %struct.hw** %5, align 8
  %23 = load i32, i32* %8, align 4
  %24 = shl i32 %23, 8
  %25 = load i32, i32* %7, align 4
  %26 = and i32 %25, 255
  %27 = or i32 %24, %26
  %28 = call i32 @hw_write_pci(%struct.hw* %22, i32 228, i32 %27)
  ret void
}

declare dso_local i32 @hw_read_pci(%struct.hw*, i32) #1

declare dso_local i32 @hw_write_pci(%struct.hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
