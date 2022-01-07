; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/camera/extr_msm_vfe8x_proc.c_vfe_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/camera/extr_msm_vfe8x_proc.c_vfe_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@TRUE = common dso_local global i32 0, align 4
@ctrl = common dso_local global %struct.TYPE_4__* null, align 8
@VFE_DISABLE_ALL_IRQS = common dso_local global i32 0, align 4
@VFE_IRQ_COMPOSITE_MASK = common dso_local global i64 0, align 8
@VFE_CLEAR_ALL_IRQS = common dso_local global i32 0, align 4
@VFE_IRQ_CLEAR = common dso_local global i64 0, align 8
@VFE_IRQ_MASK = common dso_local global i64 0, align 8
@VFE_RESET_UPON_RESET_CMD = common dso_local global i32 0, align 4
@VFE_GLOBAL_RESET_CMD = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vfe_reset() #0 {
  %1 = call i32 (...) @vfe_reset_internal_variables()
  %2 = load i32, i32* @TRUE, align 4
  %3 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ctrl, align 8
  %4 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 2
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  store i32 %2, i32* %5, align 4
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ctrl, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 2
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @vfe_irq_pack(i32 %9)
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ctrl, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  store i32 %10, i32* %12, align 8
  %13 = load i32, i32* @VFE_DISABLE_ALL_IRQS, align 4
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ctrl, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @VFE_IRQ_COMPOSITE_MASK, align 8
  %18 = add nsw i64 %16, %17
  %19 = call i32 @writel(i32 %13, i64 %18)
  %20 = load i32, i32* @VFE_CLEAR_ALL_IRQS, align 4
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ctrl, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @VFE_IRQ_CLEAR, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @writel(i32 %20, i64 %25)
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ctrl, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ctrl, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @VFE_IRQ_MASK, align 8
  %34 = add nsw i64 %32, %33
  %35 = call i32 @writel(i32 %29, i64 %34)
  %36 = load i32, i32* @VFE_RESET_UPON_RESET_CMD, align 4
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ctrl, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @VFE_GLOBAL_RESET_CMD, align 8
  %41 = add nsw i64 %39, %40
  %42 = call i32 @writel(i32 %36, i64 %41)
  ret void
}

declare dso_local i32 @vfe_reset_internal_variables(...) #1

declare dso_local i32 @vfe_irq_pack(i32) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
