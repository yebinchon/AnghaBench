; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/drivers/vx/extr_vx_uer.c_vx_read_one_cbit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/drivers/vx/extr_vx_uer.c_vx_read_one_cbit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vx_core = type { i64, i32 }

@VX_TYPE_VXPOCKET = common dso_local global i64 0, align 8
@CSUER = common dso_local global i32 0, align 4
@RUER = common dso_local global i32 0, align 4
@XX_UER_CBITS_OFFSET_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vx_core*, i32)* @vx_read_one_cbit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vx_read_one_cbit(%struct.vx_core* %0, i32 %1) #0 {
  %3 = alloca %struct.vx_core*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.vx_core* %0, %struct.vx_core** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.vx_core*, %struct.vx_core** %3, align 8
  %8 = getelementptr inbounds %struct.vx_core, %struct.vx_core* %7, i32 0, i32 1
  %9 = load i64, i64* %5, align 8
  %10 = call i32 @spin_lock_irqsave(i32* %8, i64 %9)
  %11 = load %struct.vx_core*, %struct.vx_core** %3, align 8
  %12 = getelementptr inbounds %struct.vx_core, %struct.vx_core* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @VX_TYPE_VXPOCKET, align 8
  %15 = icmp sge i64 %13, %14
  br i1 %15, label %16, label %31

16:                                               ; preds = %2
  %17 = load %struct.vx_core*, %struct.vx_core** %3, align 8
  %18 = load i32, i32* @CSUER, align 4
  %19 = call i32 @vx_outb(%struct.vx_core* %17, i32 %18, i32 1)
  %20 = load %struct.vx_core*, %struct.vx_core** %3, align 8
  %21 = load i32, i32* @RUER, align 4
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @XX_UER_CBITS_OFFSET_MASK, align 4
  %24 = and i32 %22, %23
  %25 = call i32 @vx_outb(%struct.vx_core* %20, i32 %21, i32 %24)
  %26 = load %struct.vx_core*, %struct.vx_core** %3, align 8
  %27 = load i32, i32* @RUER, align 4
  %28 = call i32 @vx_inb(%struct.vx_core* %26, i32 %27)
  %29 = ashr i32 %28, 7
  %30 = and i32 %29, 1
  store i32 %30, i32* %6, align 4
  br label %46

31:                                               ; preds = %2
  %32 = load %struct.vx_core*, %struct.vx_core** %3, align 8
  %33 = load i32, i32* @CSUER, align 4
  %34 = call i32 @vx_outl(%struct.vx_core* %32, i32 %33, i32 1)
  %35 = load %struct.vx_core*, %struct.vx_core** %3, align 8
  %36 = load i32, i32* @RUER, align 4
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* @XX_UER_CBITS_OFFSET_MASK, align 4
  %39 = and i32 %37, %38
  %40 = call i32 @vx_outl(%struct.vx_core* %35, i32 %36, i32 %39)
  %41 = load %struct.vx_core*, %struct.vx_core** %3, align 8
  %42 = load i32, i32* @RUER, align 4
  %43 = call i32 @vx_inl(%struct.vx_core* %41, i32 %42)
  %44 = ashr i32 %43, 7
  %45 = and i32 %44, 1
  store i32 %45, i32* %6, align 4
  br label %46

46:                                               ; preds = %31, %16
  %47 = load %struct.vx_core*, %struct.vx_core** %3, align 8
  %48 = getelementptr inbounds %struct.vx_core, %struct.vx_core* %47, i32 0, i32 1
  %49 = load i64, i64* %5, align 8
  %50 = call i32 @spin_unlock_irqrestore(i32* %48, i64 %49)
  %51 = load i32, i32* %6, align 4
  ret i32 %51
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @vx_outb(%struct.vx_core*, i32, i32) #1

declare dso_local i32 @vx_inb(%struct.vx_core*, i32) #1

declare dso_local i32 @vx_outl(%struct.vx_core*, i32, i32) #1

declare dso_local i32 @vx_inl(%struct.vx_core*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
