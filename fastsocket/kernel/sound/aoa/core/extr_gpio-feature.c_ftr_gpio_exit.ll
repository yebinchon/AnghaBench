; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/aoa/core/extr_gpio-feature.c_ftr_gpio_exit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/aoa/core/extr_gpio-feature.c_ftr_gpio_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_runtime = type { %struct.TYPE_2__, %struct.TYPE_2__, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32, i32, i64, i64 }

@headphone_detect_irq = common dso_local global i32 0, align 4
@linein_detect_irq = common dso_local global i32 0, align 4
@lineout_detect_irq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gpio_runtime*)* @ftr_gpio_exit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ftr_gpio_exit(%struct.gpio_runtime* %0) #0 {
  %2 = alloca %struct.gpio_runtime*, align 8
  store %struct.gpio_runtime* %0, %struct.gpio_runtime** %2, align 8
  %3 = load %struct.gpio_runtime*, %struct.gpio_runtime** %2, align 8
  %4 = call i32 @ftr_gpio_all_amps_off(%struct.gpio_runtime* %3)
  %5 = load %struct.gpio_runtime*, %struct.gpio_runtime** %2, align 8
  %6 = getelementptr inbounds %struct.gpio_runtime, %struct.gpio_runtime* %5, i32 0, i32 3
  store i64 0, i64* %6, align 8
  %7 = load %struct.gpio_runtime*, %struct.gpio_runtime** %2, align 8
  %8 = getelementptr inbounds %struct.gpio_runtime, %struct.gpio_runtime* %7, i32 0, i32 2
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 3
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %1
  %13 = load i32, i32* @headphone_detect_irq, align 4
  %14 = load %struct.gpio_runtime*, %struct.gpio_runtime** %2, align 8
  %15 = getelementptr inbounds %struct.gpio_runtime, %struct.gpio_runtime* %14, i32 0, i32 2
  %16 = call i32 @free_irq(i32 %13, %struct.TYPE_2__* %15)
  br label %17

17:                                               ; preds = %12, %1
  %18 = load %struct.gpio_runtime*, %struct.gpio_runtime** %2, align 8
  %19 = getelementptr inbounds %struct.gpio_runtime, %struct.gpio_runtime* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %17
  %24 = load i32, i32* @linein_detect_irq, align 4
  %25 = load %struct.gpio_runtime*, %struct.gpio_runtime** %2, align 8
  %26 = getelementptr inbounds %struct.gpio_runtime, %struct.gpio_runtime* %25, i32 0, i32 1
  %27 = call i32 @free_irq(i32 %24, %struct.TYPE_2__* %26)
  br label %28

28:                                               ; preds = %23, %17
  %29 = load %struct.gpio_runtime*, %struct.gpio_runtime** %2, align 8
  %30 = getelementptr inbounds %struct.gpio_runtime, %struct.gpio_runtime* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %28
  %35 = load i32, i32* @lineout_detect_irq, align 4
  %36 = load %struct.gpio_runtime*, %struct.gpio_runtime** %2, align 8
  %37 = getelementptr inbounds %struct.gpio_runtime, %struct.gpio_runtime* %36, i32 0, i32 0
  %38 = call i32 @free_irq(i32 %35, %struct.TYPE_2__* %37)
  br label %39

39:                                               ; preds = %34, %28
  %40 = load %struct.gpio_runtime*, %struct.gpio_runtime** %2, align 8
  %41 = getelementptr inbounds %struct.gpio_runtime, %struct.gpio_runtime* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = call i32 @cancel_delayed_work(i32* %42)
  %44 = load %struct.gpio_runtime*, %struct.gpio_runtime** %2, align 8
  %45 = getelementptr inbounds %struct.gpio_runtime, %struct.gpio_runtime* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  %47 = call i32 @cancel_delayed_work(i32* %46)
  %48 = load %struct.gpio_runtime*, %struct.gpio_runtime** %2, align 8
  %49 = getelementptr inbounds %struct.gpio_runtime, %struct.gpio_runtime* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  %51 = call i32 @cancel_delayed_work(i32* %50)
  %52 = call i32 (...) @flush_scheduled_work()
  %53 = load %struct.gpio_runtime*, %struct.gpio_runtime** %2, align 8
  %54 = getelementptr inbounds %struct.gpio_runtime, %struct.gpio_runtime* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = call i32 @mutex_destroy(i32* %55)
  %57 = load %struct.gpio_runtime*, %struct.gpio_runtime** %2, align 8
  %58 = getelementptr inbounds %struct.gpio_runtime, %struct.gpio_runtime* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = call i32 @mutex_destroy(i32* %59)
  %61 = load %struct.gpio_runtime*, %struct.gpio_runtime** %2, align 8
  %62 = getelementptr inbounds %struct.gpio_runtime, %struct.gpio_runtime* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = call i32 @mutex_destroy(i32* %63)
  ret void
}

declare dso_local i32 @ftr_gpio_all_amps_off(%struct.gpio_runtime*) #1

declare dso_local i32 @free_irq(i32, %struct.TYPE_2__*) #1

declare dso_local i32 @cancel_delayed_work(i32*) #1

declare dso_local i32 @flush_scheduled_work(...) #1

declare dso_local i32 @mutex_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
