; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/aoa/core/extr_gpio-pmf.c_pmf_gpio_exit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/aoa/core/extr_gpio-pmf.c_pmf_gpio_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_runtime = type { %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__, i64 }
%struct.TYPE_6__ = type { i64, i32, i32 }
%struct.TYPE_5__ = type { i64, i32, i32 }
%struct.TYPE_4__ = type { i64, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gpio_runtime*)* @pmf_gpio_exit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pmf_gpio_exit(%struct.gpio_runtime* %0) #0 {
  %2 = alloca %struct.gpio_runtime*, align 8
  store %struct.gpio_runtime* %0, %struct.gpio_runtime** %2, align 8
  %3 = load %struct.gpio_runtime*, %struct.gpio_runtime** %2, align 8
  %4 = call i32 @pmf_gpio_all_amps_off(%struct.gpio_runtime* %3)
  %5 = load %struct.gpio_runtime*, %struct.gpio_runtime** %2, align 8
  %6 = getelementptr inbounds %struct.gpio_runtime, %struct.gpio_runtime* %5, i32 0, i32 3
  store i64 0, i64* %6, align 8
  %7 = load %struct.gpio_runtime*, %struct.gpio_runtime** %2, align 8
  %8 = getelementptr inbounds %struct.gpio_runtime, %struct.gpio_runtime* %7, i32 0, i32 2
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %1
  %13 = load %struct.gpio_runtime*, %struct.gpio_runtime** %2, align 8
  %14 = getelementptr inbounds %struct.gpio_runtime, %struct.gpio_runtime* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = call i32 @pmf_unregister_irq_client(i64 %16)
  br label %18

18:                                               ; preds = %12, %1
  %19 = load %struct.gpio_runtime*, %struct.gpio_runtime** %2, align 8
  %20 = getelementptr inbounds %struct.gpio_runtime, %struct.gpio_runtime* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %18
  %25 = load %struct.gpio_runtime*, %struct.gpio_runtime** %2, align 8
  %26 = getelementptr inbounds %struct.gpio_runtime, %struct.gpio_runtime* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @pmf_unregister_irq_client(i64 %28)
  br label %30

30:                                               ; preds = %24, %18
  %31 = load %struct.gpio_runtime*, %struct.gpio_runtime** %2, align 8
  %32 = getelementptr inbounds %struct.gpio_runtime, %struct.gpio_runtime* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %30
  %37 = load %struct.gpio_runtime*, %struct.gpio_runtime** %2, align 8
  %38 = getelementptr inbounds %struct.gpio_runtime, %struct.gpio_runtime* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @pmf_unregister_irq_client(i64 %40)
  br label %42

42:                                               ; preds = %36, %30
  %43 = load %struct.gpio_runtime*, %struct.gpio_runtime** %2, align 8
  %44 = getelementptr inbounds %struct.gpio_runtime, %struct.gpio_runtime* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 2
  %46 = call i32 @cancel_delayed_work(i32* %45)
  %47 = load %struct.gpio_runtime*, %struct.gpio_runtime** %2, align 8
  %48 = getelementptr inbounds %struct.gpio_runtime, %struct.gpio_runtime* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 2
  %50 = call i32 @cancel_delayed_work(i32* %49)
  %51 = load %struct.gpio_runtime*, %struct.gpio_runtime** %2, align 8
  %52 = getelementptr inbounds %struct.gpio_runtime, %struct.gpio_runtime* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 2
  %54 = call i32 @cancel_delayed_work(i32* %53)
  %55 = call i32 (...) @flush_scheduled_work()
  %56 = load %struct.gpio_runtime*, %struct.gpio_runtime** %2, align 8
  %57 = getelementptr inbounds %struct.gpio_runtime, %struct.gpio_runtime* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 1
  %59 = call i32 @mutex_destroy(i32* %58)
  %60 = load %struct.gpio_runtime*, %struct.gpio_runtime** %2, align 8
  %61 = getelementptr inbounds %struct.gpio_runtime, %struct.gpio_runtime* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 1
  %63 = call i32 @mutex_destroy(i32* %62)
  %64 = load %struct.gpio_runtime*, %struct.gpio_runtime** %2, align 8
  %65 = getelementptr inbounds %struct.gpio_runtime, %struct.gpio_runtime* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 1
  %67 = call i32 @mutex_destroy(i32* %66)
  %68 = load %struct.gpio_runtime*, %struct.gpio_runtime** %2, align 8
  %69 = getelementptr inbounds %struct.gpio_runtime, %struct.gpio_runtime* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %42
  %74 = load %struct.gpio_runtime*, %struct.gpio_runtime** %2, align 8
  %75 = getelementptr inbounds %struct.gpio_runtime, %struct.gpio_runtime* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = call i32 @kfree(i64 %77)
  br label %79

79:                                               ; preds = %73, %42
  %80 = load %struct.gpio_runtime*, %struct.gpio_runtime** %2, align 8
  %81 = getelementptr inbounds %struct.gpio_runtime, %struct.gpio_runtime* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %91

85:                                               ; preds = %79
  %86 = load %struct.gpio_runtime*, %struct.gpio_runtime** %2, align 8
  %87 = getelementptr inbounds %struct.gpio_runtime, %struct.gpio_runtime* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = call i32 @kfree(i64 %89)
  br label %91

91:                                               ; preds = %85, %79
  %92 = load %struct.gpio_runtime*, %struct.gpio_runtime** %2, align 8
  %93 = getelementptr inbounds %struct.gpio_runtime, %struct.gpio_runtime* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %103

97:                                               ; preds = %91
  %98 = load %struct.gpio_runtime*, %struct.gpio_runtime** %2, align 8
  %99 = getelementptr inbounds %struct.gpio_runtime, %struct.gpio_runtime* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = call i32 @kfree(i64 %101)
  br label %103

103:                                              ; preds = %97, %91
  ret void
}

declare dso_local i32 @pmf_gpio_all_amps_off(%struct.gpio_runtime*) #1

declare dso_local i32 @pmf_unregister_irq_client(i64) #1

declare dso_local i32 @cancel_delayed_work(i32*) #1

declare dso_local i32 @flush_scheduled_work(...) #1

declare dso_local i32 @mutex_destroy(i32*) #1

declare dso_local i32 @kfree(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
