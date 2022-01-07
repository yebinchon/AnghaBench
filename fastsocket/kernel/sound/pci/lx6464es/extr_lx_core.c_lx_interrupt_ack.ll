; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/lx6464es/extr_lx_core.c_lx_interrupt_ack.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/lx6464es/extr_lx_core.c_lx_interrupt_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lx6464es = type { i32 }

@PCX_IRQ_NONE = common dso_local global i32 0, align 4
@MASK_SYS_ASYNC_EVENTS = common dso_local global i32 0, align 4
@MASK_SYS_STATUS_ESA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lx6464es*, i32*, i32*, i32*)* @lx_interrupt_ack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lx_interrupt_ack(%struct.lx6464es* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.lx6464es*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.lx6464es* %0, %struct.lx6464es** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = load %struct.lx6464es*, %struct.lx6464es** %6, align 8
  %13 = call i32 @lx_interrupt_test_ack(%struct.lx6464es* %12)
  store i32 %13, i32* %11, align 4
  %14 = load i32, i32* %11, align 4
  %15 = load i32, i32* @PCX_IRQ_NONE, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %40

18:                                               ; preds = %4
  %19 = load i32, i32* %11, align 4
  %20 = load i32*, i32** %7, align 8
  store i32 %19, i32* %20, align 4
  %21 = load i32, i32* %11, align 4
  %22 = load i32, i32* @MASK_SYS_ASYNC_EVENTS, align 4
  %23 = and i32 %21, %22
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* @MASK_SYS_STATUS_ESA, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %18
  %29 = load i32, i32* @MASK_SYS_STATUS_ESA, align 4
  %30 = xor i32 %29, -1
  %31 = load i32, i32* %10, align 4
  %32 = and i32 %31, %30
  store i32 %32, i32* %10, align 4
  %33 = load i32*, i32** %9, align 8
  store i32 1, i32* %33, align 4
  br label %34

34:                                               ; preds = %28, %18
  %35 = load i32, i32* %10, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = load i32*, i32** %8, align 8
  store i32 1, i32* %38, align 4
  br label %39

39:                                               ; preds = %37, %34
  store i32 1, i32* %5, align 4
  br label %40

40:                                               ; preds = %39, %17
  %41 = load i32, i32* %5, align 4
  ret i32 %41
}

declare dso_local i32 @lx_interrupt_test_ack(%struct.lx6464es*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
