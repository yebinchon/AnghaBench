; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/aoa/core/extr_gpio-pmf.c_pmf_gpio_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/aoa/core/extr_gpio-pmf.c_pmf_gpio_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_runtime = type { %struct.TYPE_4__, %struct.TYPE_6__, %struct.TYPE_5__, i64 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }

@pmf_handle_notify = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gpio_runtime*)* @pmf_gpio_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pmf_gpio_init(%struct.gpio_runtime* %0) #0 {
  %2 = alloca %struct.gpio_runtime*, align 8
  store %struct.gpio_runtime* %0, %struct.gpio_runtime** %2, align 8
  %3 = load %struct.gpio_runtime*, %struct.gpio_runtime** %2, align 8
  %4 = call i32 @pmf_gpio_all_amps_off(%struct.gpio_runtime* %3)
  %5 = load %struct.gpio_runtime*, %struct.gpio_runtime** %2, align 8
  %6 = getelementptr inbounds %struct.gpio_runtime, %struct.gpio_runtime* %5, i32 0, i32 3
  store i64 0, i64* %6, align 8
  %7 = load %struct.gpio_runtime*, %struct.gpio_runtime** %2, align 8
  %8 = getelementptr inbounds %struct.gpio_runtime, %struct.gpio_runtime* %7, i32 0, i32 2
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 1
  %10 = load i32, i32* @pmf_handle_notify, align 4
  %11 = call i32 @INIT_DELAYED_WORK(i32* %9, i32 %10)
  %12 = load %struct.gpio_runtime*, %struct.gpio_runtime** %2, align 8
  %13 = getelementptr inbounds %struct.gpio_runtime, %struct.gpio_runtime* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 1
  %15 = load i32, i32* @pmf_handle_notify, align 4
  %16 = call i32 @INIT_DELAYED_WORK(i32* %14, i32 %15)
  %17 = load %struct.gpio_runtime*, %struct.gpio_runtime** %2, align 8
  %18 = getelementptr inbounds %struct.gpio_runtime, %struct.gpio_runtime* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = load i32, i32* @pmf_handle_notify, align 4
  %21 = call i32 @INIT_DELAYED_WORK(i32* %19, i32 %20)
  %22 = load %struct.gpio_runtime*, %struct.gpio_runtime** %2, align 8
  %23 = getelementptr inbounds %struct.gpio_runtime, %struct.gpio_runtime* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = call i32 @mutex_init(i32* %24)
  %26 = load %struct.gpio_runtime*, %struct.gpio_runtime** %2, align 8
  %27 = getelementptr inbounds %struct.gpio_runtime, %struct.gpio_runtime* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = call i32 @mutex_init(i32* %28)
  %30 = load %struct.gpio_runtime*, %struct.gpio_runtime** %2, align 8
  %31 = getelementptr inbounds %struct.gpio_runtime, %struct.gpio_runtime* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = call i32 @mutex_init(i32* %32)
  ret void
}

declare dso_local i32 @pmf_gpio_all_amps_off(%struct.gpio_runtime*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
