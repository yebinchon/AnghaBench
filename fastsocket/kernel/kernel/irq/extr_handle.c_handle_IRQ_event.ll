; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/irq/extr_handle.c_handle_IRQ_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/irq/extr_handle.c_handle_IRQ_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irqaction = type { i32, i32 (i32, i32)*, %struct.irqaction*, i32, i32, i32, i32 }

@IRQ_NONE = common dso_local global i32 0, align 4
@IRQF_DISABLED = common dso_local global i32 0, align 4
@IRQTF_DIED = common dso_local global i32 0, align 4
@IRQTF_RUNTHREAD = common dso_local global i32 0, align 4
@IRQF_SAMPLE_RANDOM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @handle_IRQ_event(i32 %0, %struct.irqaction* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.irqaction*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.irqaction* %1, %struct.irqaction** %4, align 8
  %8 = load i32, i32* @IRQ_NONE, align 4
  store i32 %8, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %9 = load %struct.irqaction*, %struct.irqaction** %4, align 8
  %10 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @IRQF_DISABLED, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %2
  %16 = call i32 (...) @local_irq_enable_in_hardirq()
  br label %17

17:                                               ; preds = %15, %2
  br label %18

18:                                               ; preds = %82, %17
  %19 = load i32, i32* %3, align 4
  %20 = load %struct.irqaction*, %struct.irqaction** %4, align 8
  %21 = call i32 @trace_irq_handler_entry(i32 %19, %struct.irqaction* %20)
  %22 = load %struct.irqaction*, %struct.irqaction** %4, align 8
  %23 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %22, i32 0, i32 1
  %24 = load i32 (i32, i32)*, i32 (i32, i32)** %23, align 8
  %25 = load i32, i32* %3, align 4
  %26 = load %struct.irqaction*, %struct.irqaction** %4, align 8
  %27 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %26, i32 0, i32 6
  %28 = load i32, i32* %27, align 4
  %29 = call i32 %24(i32 %25, i32 %28)
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %3, align 4
  %31 = load %struct.irqaction*, %struct.irqaction** %4, align 8
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @trace_irq_handler_exit(i32 %30, %struct.irqaction* %31, i32 %32)
  %34 = load i32, i32* %5, align 4
  switch i32 %34, label %74 [
    i32 128, label %35
    i32 129, label %68
  ]

35:                                               ; preds = %18
  store i32 129, i32* %5, align 4
  %36 = load %struct.irqaction*, %struct.irqaction** %4, align 8
  %37 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %36, i32 0, i32 5
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  %42 = call i32 @unlikely(i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %35
  %45 = load i32, i32* %3, align 4
  %46 = load %struct.irqaction*, %struct.irqaction** %4, align 8
  %47 = call i32 @warn_no_thread(i32 %45, %struct.irqaction* %46)
  br label %75

48:                                               ; preds = %35
  %49 = load i32, i32* @IRQTF_DIED, align 4
  %50 = load %struct.irqaction*, %struct.irqaction** %4, align 8
  %51 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %50, i32 0, i32 4
  %52 = call i32 @test_bit(i32 %49, i32* %51)
  %53 = icmp ne i32 %52, 0
  %54 = xor i1 %53, true
  %55 = zext i1 %54 to i32
  %56 = call i32 @likely(i32 %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %67

58:                                               ; preds = %48
  %59 = load i32, i32* @IRQTF_RUNTHREAD, align 4
  %60 = load %struct.irqaction*, %struct.irqaction** %4, align 8
  %61 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %60, i32 0, i32 4
  %62 = call i32 @set_bit(i32 %59, i32* %61)
  %63 = load %struct.irqaction*, %struct.irqaction** %4, align 8
  %64 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @wake_up_process(i32 %65)
  br label %67

67:                                               ; preds = %58, %48
  br label %68

68:                                               ; preds = %18, %67
  %69 = load %struct.irqaction*, %struct.irqaction** %4, align 8
  %70 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* %7, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %7, align 4
  br label %75

74:                                               ; preds = %18
  br label %75

75:                                               ; preds = %74, %68, %44
  %76 = load i32, i32* %5, align 4
  %77 = load i32, i32* %6, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %6, align 4
  %79 = load %struct.irqaction*, %struct.irqaction** %4, align 8
  %80 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %79, i32 0, i32 2
  %81 = load %struct.irqaction*, %struct.irqaction** %80, align 8
  store %struct.irqaction* %81, %struct.irqaction** %4, align 8
  br label %82

82:                                               ; preds = %75
  %83 = load %struct.irqaction*, %struct.irqaction** %4, align 8
  %84 = icmp ne %struct.irqaction* %83, null
  br i1 %84, label %18, label %85

85:                                               ; preds = %82
  %86 = load i32, i32* %7, align 4
  %87 = load i32, i32* @IRQF_SAMPLE_RANDOM, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %85
  %91 = load i32, i32* %3, align 4
  %92 = call i32 @add_interrupt_randomness(i32 %91)
  br label %93

93:                                               ; preds = %90, %85
  %94 = call i32 (...) @local_irq_disable()
  %95 = load i32, i32* %6, align 4
  ret i32 %95
}

declare dso_local i32 @local_irq_enable_in_hardirq(...) #1

declare dso_local i32 @trace_irq_handler_entry(i32, %struct.irqaction*) #1

declare dso_local i32 @trace_irq_handler_exit(i32, %struct.irqaction*, i32) #1

declare dso_local i32 @unlikely(i32) #1

declare dso_local i32 @warn_no_thread(i32, %struct.irqaction*) #1

declare dso_local i32 @likely(i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @wake_up_process(i32) #1

declare dso_local i32 @add_interrupt_randomness(i32) #1

declare dso_local i32 @local_irq_disable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
