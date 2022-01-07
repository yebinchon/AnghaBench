; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_bt455.h_bt455_read_cmap_entry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_bt455.h_bt455_read_cmap_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bt455_regs = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bt455_regs*, i32, i32*, i32*, i32*)* @bt455_read_cmap_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bt455_read_cmap_entry(%struct.bt455_regs* %0, i32 %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.bt455_regs*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store %struct.bt455_regs* %0, %struct.bt455_regs** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %11 = load %struct.bt455_regs*, %struct.bt455_regs** %6, align 8
  %12 = load i32, i32* %7, align 4
  %13 = call i32 @bt455_select_reg(%struct.bt455_regs* %11, i32 %12)
  %14 = call i32 (...) @mb()
  %15 = load %struct.bt455_regs*, %struct.bt455_regs** %6, align 8
  %16 = getelementptr inbounds %struct.bt455_regs, %struct.bt455_regs* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = and i32 %17, 15
  %19 = load i32*, i32** %8, align 8
  store i32 %18, i32* %19, align 4
  %20 = call i32 (...) @rmb()
  %21 = load %struct.bt455_regs*, %struct.bt455_regs** %6, align 8
  %22 = getelementptr inbounds %struct.bt455_regs, %struct.bt455_regs* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = and i32 %23, 15
  %25 = load i32*, i32** %9, align 8
  store i32 %24, i32* %25, align 4
  %26 = call i32 (...) @rmb()
  %27 = load %struct.bt455_regs*, %struct.bt455_regs** %6, align 8
  %28 = getelementptr inbounds %struct.bt455_regs, %struct.bt455_regs* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = and i32 %29, 15
  %31 = load i32*, i32** %10, align 8
  store i32 %30, i32* %31, align 4
  ret void
}

declare dso_local i32 @bt455_select_reg(%struct.bt455_regs*, i32) #1

declare dso_local i32 @mb(...) #1

declare dso_local i32 @rmb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
