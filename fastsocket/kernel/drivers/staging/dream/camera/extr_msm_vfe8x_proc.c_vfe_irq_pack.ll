; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/camera/extr_msm_vfe8x_proc.c_vfe_irq_pack.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/camera/extr_msm_vfe8x_proc.c_vfe_irq_pack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfe_interrupt_mask = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.vfe_irqenable = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vfe_interrupt_mask*)* @vfe_irq_pack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vfe_irq_pack(%struct.vfe_interrupt_mask* byval(%struct.vfe_interrupt_mask) align 8 %0) #0 {
  %2 = alloca %struct.vfe_irqenable, align 4
  %3 = call i32 @memset(%struct.vfe_irqenable* %2, i32 0, i32 128)
  %4 = getelementptr inbounds %struct.vfe_interrupt_mask, %struct.vfe_interrupt_mask* %0, i32 0, i32 31
  %5 = load i32, i32* %4, align 4
  %6 = getelementptr inbounds %struct.vfe_irqenable, %struct.vfe_irqenable* %2, i32 0, i32 31
  store i32 %5, i32* %6, align 4
  %7 = getelementptr inbounds %struct.vfe_interrupt_mask, %struct.vfe_interrupt_mask* %0, i32 0, i32 30
  %8 = load i32, i32* %7, align 8
  %9 = getelementptr inbounds %struct.vfe_irqenable, %struct.vfe_irqenable* %2, i32 0, i32 30
  store i32 %8, i32* %9, align 4
  %10 = getelementptr inbounds %struct.vfe_interrupt_mask, %struct.vfe_interrupt_mask* %0, i32 0, i32 29
  %11 = load i32, i32* %10, align 4
  %12 = getelementptr inbounds %struct.vfe_irqenable, %struct.vfe_irqenable* %2, i32 0, i32 29
  store i32 %11, i32* %12, align 4
  %13 = getelementptr inbounds %struct.vfe_interrupt_mask, %struct.vfe_interrupt_mask* %0, i32 0, i32 28
  %14 = load i32, i32* %13, align 8
  %15 = getelementptr inbounds %struct.vfe_irqenable, %struct.vfe_irqenable* %2, i32 0, i32 28
  store i32 %14, i32* %15, align 4
  %16 = getelementptr inbounds %struct.vfe_interrupt_mask, %struct.vfe_interrupt_mask* %0, i32 0, i32 27
  %17 = load i32, i32* %16, align 4
  %18 = getelementptr inbounds %struct.vfe_irqenable, %struct.vfe_irqenable* %2, i32 0, i32 27
  store i32 %17, i32* %18, align 4
  %19 = getelementptr inbounds %struct.vfe_interrupt_mask, %struct.vfe_interrupt_mask* %0, i32 0, i32 26
  %20 = load i32, i32* %19, align 8
  %21 = getelementptr inbounds %struct.vfe_irqenable, %struct.vfe_irqenable* %2, i32 0, i32 26
  store i32 %20, i32* %21, align 4
  %22 = getelementptr inbounds %struct.vfe_interrupt_mask, %struct.vfe_interrupt_mask* %0, i32 0, i32 25
  %23 = load i32, i32* %22, align 4
  %24 = getelementptr inbounds %struct.vfe_irqenable, %struct.vfe_irqenable* %2, i32 0, i32 25
  store i32 %23, i32* %24, align 4
  %25 = getelementptr inbounds %struct.vfe_interrupt_mask, %struct.vfe_interrupt_mask* %0, i32 0, i32 24
  %26 = load i32, i32* %25, align 8
  %27 = getelementptr inbounds %struct.vfe_irqenable, %struct.vfe_irqenable* %2, i32 0, i32 24
  store i32 %26, i32* %27, align 4
  %28 = getelementptr inbounds %struct.vfe_interrupt_mask, %struct.vfe_interrupt_mask* %0, i32 0, i32 23
  %29 = load i32, i32* %28, align 4
  %30 = getelementptr inbounds %struct.vfe_irqenable, %struct.vfe_irqenable* %2, i32 0, i32 23
  store i32 %29, i32* %30, align 4
  %31 = getelementptr inbounds %struct.vfe_interrupt_mask, %struct.vfe_interrupt_mask* %0, i32 0, i32 22
  %32 = load i32, i32* %31, align 8
  %33 = getelementptr inbounds %struct.vfe_irqenable, %struct.vfe_irqenable* %2, i32 0, i32 22
  store i32 %32, i32* %33, align 4
  %34 = getelementptr inbounds %struct.vfe_interrupt_mask, %struct.vfe_interrupt_mask* %0, i32 0, i32 21
  %35 = load i32, i32* %34, align 4
  %36 = getelementptr inbounds %struct.vfe_irqenable, %struct.vfe_irqenable* %2, i32 0, i32 21
  store i32 %35, i32* %36, align 4
  %37 = getelementptr inbounds %struct.vfe_interrupt_mask, %struct.vfe_interrupt_mask* %0, i32 0, i32 20
  %38 = load i32, i32* %37, align 8
  %39 = getelementptr inbounds %struct.vfe_irqenable, %struct.vfe_irqenable* %2, i32 0, i32 20
  store i32 %38, i32* %39, align 4
  %40 = getelementptr inbounds %struct.vfe_interrupt_mask, %struct.vfe_interrupt_mask* %0, i32 0, i32 19
  %41 = load i32, i32* %40, align 4
  %42 = getelementptr inbounds %struct.vfe_irqenable, %struct.vfe_irqenable* %2, i32 0, i32 19
  store i32 %41, i32* %42, align 4
  %43 = getelementptr inbounds %struct.vfe_interrupt_mask, %struct.vfe_interrupt_mask* %0, i32 0, i32 18
  %44 = load i32, i32* %43, align 8
  %45 = getelementptr inbounds %struct.vfe_irqenable, %struct.vfe_irqenable* %2, i32 0, i32 18
  store i32 %44, i32* %45, align 4
  %46 = getelementptr inbounds %struct.vfe_interrupt_mask, %struct.vfe_interrupt_mask* %0, i32 0, i32 17
  %47 = load i32, i32* %46, align 4
  %48 = getelementptr inbounds %struct.vfe_irqenable, %struct.vfe_irqenable* %2, i32 0, i32 17
  store i32 %47, i32* %48, align 4
  %49 = getelementptr inbounds %struct.vfe_interrupt_mask, %struct.vfe_interrupt_mask* %0, i32 0, i32 16
  %50 = load i32, i32* %49, align 8
  %51 = getelementptr inbounds %struct.vfe_irqenable, %struct.vfe_irqenable* %2, i32 0, i32 16
  store i32 %50, i32* %51, align 4
  %52 = getelementptr inbounds %struct.vfe_interrupt_mask, %struct.vfe_interrupt_mask* %0, i32 0, i32 15
  %53 = load i32, i32* %52, align 4
  %54 = getelementptr inbounds %struct.vfe_irqenable, %struct.vfe_irqenable* %2, i32 0, i32 15
  store i32 %53, i32* %54, align 4
  %55 = getelementptr inbounds %struct.vfe_interrupt_mask, %struct.vfe_interrupt_mask* %0, i32 0, i32 14
  %56 = load i32, i32* %55, align 8
  %57 = getelementptr inbounds %struct.vfe_irqenable, %struct.vfe_irqenable* %2, i32 0, i32 14
  store i32 %56, i32* %57, align 4
  %58 = getelementptr inbounds %struct.vfe_interrupt_mask, %struct.vfe_interrupt_mask* %0, i32 0, i32 13
  %59 = load i32, i32* %58, align 4
  %60 = getelementptr inbounds %struct.vfe_irqenable, %struct.vfe_irqenable* %2, i32 0, i32 13
  store i32 %59, i32* %60, align 4
  %61 = getelementptr inbounds %struct.vfe_interrupt_mask, %struct.vfe_interrupt_mask* %0, i32 0, i32 12
  %62 = load i32, i32* %61, align 8
  %63 = getelementptr inbounds %struct.vfe_irqenable, %struct.vfe_irqenable* %2, i32 0, i32 12
  store i32 %62, i32* %63, align 4
  %64 = getelementptr inbounds %struct.vfe_interrupt_mask, %struct.vfe_interrupt_mask* %0, i32 0, i32 11
  %65 = load i32, i32* %64, align 4
  %66 = getelementptr inbounds %struct.vfe_irqenable, %struct.vfe_irqenable* %2, i32 0, i32 11
  store i32 %65, i32* %66, align 4
  %67 = getelementptr inbounds %struct.vfe_interrupt_mask, %struct.vfe_interrupt_mask* %0, i32 0, i32 10
  %68 = load i32, i32* %67, align 8
  %69 = getelementptr inbounds %struct.vfe_irqenable, %struct.vfe_irqenable* %2, i32 0, i32 10
  store i32 %68, i32* %69, align 4
  %70 = getelementptr inbounds %struct.vfe_interrupt_mask, %struct.vfe_interrupt_mask* %0, i32 0, i32 9
  %71 = load i32, i32* %70, align 4
  %72 = getelementptr inbounds %struct.vfe_irqenable, %struct.vfe_irqenable* %2, i32 0, i32 9
  store i32 %71, i32* %72, align 4
  %73 = getelementptr inbounds %struct.vfe_interrupt_mask, %struct.vfe_interrupt_mask* %0, i32 0, i32 8
  %74 = load i32, i32* %73, align 8
  %75 = getelementptr inbounds %struct.vfe_irqenable, %struct.vfe_irqenable* %2, i32 0, i32 8
  store i32 %74, i32* %75, align 4
  %76 = getelementptr inbounds %struct.vfe_interrupt_mask, %struct.vfe_interrupt_mask* %0, i32 0, i32 7
  %77 = load i32, i32* %76, align 4
  %78 = getelementptr inbounds %struct.vfe_irqenable, %struct.vfe_irqenable* %2, i32 0, i32 7
  store i32 %77, i32* %78, align 4
  %79 = getelementptr inbounds %struct.vfe_interrupt_mask, %struct.vfe_interrupt_mask* %0, i32 0, i32 6
  %80 = load i32, i32* %79, align 8
  %81 = getelementptr inbounds %struct.vfe_irqenable, %struct.vfe_irqenable* %2, i32 0, i32 6
  store i32 %80, i32* %81, align 4
  %82 = getelementptr inbounds %struct.vfe_interrupt_mask, %struct.vfe_interrupt_mask* %0, i32 0, i32 5
  %83 = load i32, i32* %82, align 4
  %84 = getelementptr inbounds %struct.vfe_irqenable, %struct.vfe_irqenable* %2, i32 0, i32 5
  store i32 %83, i32* %84, align 4
  %85 = getelementptr inbounds %struct.vfe_interrupt_mask, %struct.vfe_interrupt_mask* %0, i32 0, i32 4
  %86 = load i32, i32* %85, align 8
  %87 = getelementptr inbounds %struct.vfe_irqenable, %struct.vfe_irqenable* %2, i32 0, i32 4
  store i32 %86, i32* %87, align 4
  %88 = getelementptr inbounds %struct.vfe_interrupt_mask, %struct.vfe_interrupt_mask* %0, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = getelementptr inbounds %struct.vfe_irqenable, %struct.vfe_irqenable* %2, i32 0, i32 3
  store i32 %89, i32* %90, align 4
  %91 = getelementptr inbounds %struct.vfe_interrupt_mask, %struct.vfe_interrupt_mask* %0, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = getelementptr inbounds %struct.vfe_irqenable, %struct.vfe_irqenable* %2, i32 0, i32 2
  store i32 %92, i32* %93, align 4
  %94 = getelementptr inbounds %struct.vfe_interrupt_mask, %struct.vfe_interrupt_mask* %0, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = getelementptr inbounds %struct.vfe_irqenable, %struct.vfe_irqenable* %2, i32 0, i32 1
  store i32 %95, i32* %96, align 4
  %97 = getelementptr inbounds %struct.vfe_interrupt_mask, %struct.vfe_interrupt_mask* %0, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = getelementptr inbounds %struct.vfe_irqenable, %struct.vfe_irqenable* %2, i32 0, i32 0
  store i32 %98, i32* %99, align 4
  %100 = bitcast %struct.vfe_irqenable* %2 to i32*
  %101 = load i32, i32* %100, align 4
  ret i32 %101
}

declare dso_local i32 @memset(%struct.vfe_irqenable*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
