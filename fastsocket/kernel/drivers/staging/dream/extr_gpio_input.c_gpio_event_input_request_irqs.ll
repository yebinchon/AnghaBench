; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/extr_gpio_input.c_gpio_event_input_request_irqs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/extr_gpio_input.c_gpio_event_input_request_irqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_input_state = type { i32*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@IRQF_TRIGGER_RISING = common dso_local global i64 0, align 8
@IRQF_TRIGGER_FALLING = common dso_local global i64 0, align 8
@gpio_event_input_irq_handler = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"gpio_keys\00", align 1
@.str.1 = private unnamed_addr constant [72 x i8] c"gpio_event_input_request_irqs: request_irq failed for input %d, irq %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_input_state*)* @gpio_event_input_request_irqs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gpio_event_input_request_irqs(%struct.gpio_input_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gpio_input_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.gpio_input_state* %0, %struct.gpio_input_state** %3, align 8
  %8 = load i64, i64* @IRQF_TRIGGER_RISING, align 8
  %9 = load i64, i64* @IRQF_TRIGGER_FALLING, align 8
  %10 = or i64 %8, %9
  store i64 %10, i64* %7, align 8
  store i32 0, i32* %4, align 4
  br label %11

11:                                               ; preds = %63, %1
  %12 = load i32, i32* %4, align 4
  %13 = load %struct.gpio_input_state*, %struct.gpio_input_state** %3, align 8
  %14 = getelementptr inbounds %struct.gpio_input_state, %struct.gpio_input_state* %13, i32 0, i32 1
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %12, %17
  br i1 %18, label %19, label %66

19:                                               ; preds = %11
  %20 = load %struct.gpio_input_state*, %struct.gpio_input_state** %3, align 8
  %21 = getelementptr inbounds %struct.gpio_input_state, %struct.gpio_input_state* %20, i32 0, i32 1
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = load i32, i32* %4, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @gpio_to_irq(i32 %29)
  store i32 %30, i32* %6, align 4
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %19
  br label %97

34:                                               ; preds = %19
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @gpio_event_input_irq_handler, align 4
  %37 = load i64, i64* %7, align 8
  %38 = load %struct.gpio_input_state*, %struct.gpio_input_state** %3, align 8
  %39 = getelementptr inbounds %struct.gpio_input_state, %struct.gpio_input_state* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %4, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = call i32 @request_irq(i32 %35, i32 %36, i64 %37, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32* %43)
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* %5, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %60

47:                                               ; preds = %34
  %48 = load %struct.gpio_input_state*, %struct.gpio_input_state** %3, align 8
  %49 = getelementptr inbounds %struct.gpio_input_state, %struct.gpio_input_state* %48, i32 0, i32 1
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %51, align 8
  %53 = load i32, i32* %4, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %6, align 4
  %59 = call i32 @pr_err(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.1, i64 0, i64 0), i32 %57, i32 %58)
  br label %96

60:                                               ; preds = %34
  %61 = load i32, i32* %6, align 4
  %62 = call i32 @enable_irq_wake(i32 %61)
  br label %63

63:                                               ; preds = %60
  %64 = load i32, i32* %4, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %4, align 4
  br label %11

66:                                               ; preds = %11
  store i32 0, i32* %2, align 4
  br label %103

67:                                               ; No predecessors!
  %68 = load %struct.gpio_input_state*, %struct.gpio_input_state** %3, align 8
  %69 = getelementptr inbounds %struct.gpio_input_state, %struct.gpio_input_state* %68, i32 0, i32 1
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = sub nsw i32 %72, 1
  store i32 %73, i32* %4, align 4
  br label %74

74:                                               ; preds = %98, %67
  %75 = load i32, i32* %4, align 4
  %76 = icmp sge i32 %75, 0
  br i1 %76, label %77, label %101

77:                                               ; preds = %74
  %78 = load %struct.gpio_input_state*, %struct.gpio_input_state** %3, align 8
  %79 = getelementptr inbounds %struct.gpio_input_state, %struct.gpio_input_state* %78, i32 0, i32 1
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 1
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %81, align 8
  %83 = load i32, i32* %4, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @gpio_to_irq(i32 %87)
  %89 = load %struct.gpio_input_state*, %struct.gpio_input_state** %3, align 8
  %90 = getelementptr inbounds %struct.gpio_input_state, %struct.gpio_input_state* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = load i32, i32* %4, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  %95 = call i32 @free_irq(i32 %88, i32* %94)
  br label %96

96:                                               ; preds = %77, %47
  br label %97

97:                                               ; preds = %96, %33
  br label %98

98:                                               ; preds = %97
  %99 = load i32, i32* %4, align 4
  %100 = add nsw i32 %99, -1
  store i32 %100, i32* %4, align 4
  br label %74

101:                                              ; preds = %74
  %102 = load i32, i32* %5, align 4
  store i32 %102, i32* %2, align 4
  br label %103

103:                                              ; preds = %101, %66
  %104 = load i32, i32* %2, align 4
  ret i32 %104
}

declare dso_local i32 @gpio_to_irq(i32) #1

declare dso_local i32 @request_irq(i32, i32, i64, i8*, i32*) #1

declare dso_local i32 @pr_err(i8*, i32, i32) #1

declare dso_local i32 @enable_irq_wake(i32) #1

declare dso_local i32 @free_irq(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
