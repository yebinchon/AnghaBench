; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/drivers/vx/extr_vx_uer.c_vx_write_one_cbit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/drivers/vx/extr_vx_uer.c_vx_write_one_cbit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vx_core = type { i32 }

@CSUER = common dso_local global i32 0, align 4
@RUER = common dso_local global i32 0, align 4
@XX_UER_CBITS_OFFSET_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vx_core*, i32, i32)* @vx_write_one_cbit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vx_write_one_cbit(%struct.vx_core* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.vx_core*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.vx_core* %0, %struct.vx_core** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  %9 = icmp ne i32 %8, 0
  %10 = xor i1 %9, true
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  store i32 %12, i32* %6, align 4
  %13 = load %struct.vx_core*, %struct.vx_core** %4, align 8
  %14 = getelementptr inbounds %struct.vx_core, %struct.vx_core* %13, i32 0, i32 0
  %15 = load i64, i64* %7, align 8
  %16 = call i32 @spin_lock_irqsave(i32* %14, i64 %15)
  %17 = load %struct.vx_core*, %struct.vx_core** %4, align 8
  %18 = call i64 @vx_is_pcmcia(%struct.vx_core* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %33

20:                                               ; preds = %3
  %21 = load %struct.vx_core*, %struct.vx_core** %4, align 8
  %22 = load i32, i32* @CSUER, align 4
  %23 = call i32 @vx_outb(%struct.vx_core* %21, i32 %22, i32 0)
  %24 = load %struct.vx_core*, %struct.vx_core** %4, align 8
  %25 = load i32, i32* @RUER, align 4
  %26 = load i32, i32* %6, align 4
  %27 = shl i32 %26, 7
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @XX_UER_CBITS_OFFSET_MASK, align 4
  %30 = and i32 %28, %29
  %31 = or i32 %27, %30
  %32 = call i32 @vx_outb(%struct.vx_core* %24, i32 %25, i32 %31)
  br label %46

33:                                               ; preds = %3
  %34 = load %struct.vx_core*, %struct.vx_core** %4, align 8
  %35 = load i32, i32* @CSUER, align 4
  %36 = call i32 @vx_outl(%struct.vx_core* %34, i32 %35, i32 0)
  %37 = load %struct.vx_core*, %struct.vx_core** %4, align 8
  %38 = load i32, i32* @RUER, align 4
  %39 = load i32, i32* %6, align 4
  %40 = shl i32 %39, 7
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* @XX_UER_CBITS_OFFSET_MASK, align 4
  %43 = and i32 %41, %42
  %44 = or i32 %40, %43
  %45 = call i32 @vx_outl(%struct.vx_core* %37, i32 %38, i32 %44)
  br label %46

46:                                               ; preds = %33, %20
  %47 = load %struct.vx_core*, %struct.vx_core** %4, align 8
  %48 = getelementptr inbounds %struct.vx_core, %struct.vx_core* %47, i32 0, i32 0
  %49 = load i64, i64* %7, align 8
  %50 = call i32 @spin_unlock_irqrestore(i32* %48, i64 %49)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @vx_is_pcmcia(%struct.vx_core*) #1

declare dso_local i32 @vx_outb(%struct.vx_core*, i32, i32) #1

declare dso_local i32 @vx_outl(%struct.vx_core*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
