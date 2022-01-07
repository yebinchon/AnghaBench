; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/extr_gpio_matrix.c_gpio_keypad_irq_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/extr_gpio_matrix.c_gpio_keypad_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_kp = type { i32, i32, i32, %struct.gpio_event_matrix_info* }
%struct.gpio_event_matrix_info = type { i32, i32, i32, i32*, i32* }

@IRQ_HANDLED = common dso_local global i32 0, align 4
@GPIOKPF_DRIVE_INACTIVE = common dso_local global i32 0, align 4
@GPIOKPF_ACTIVE_HIGH = common dso_local global i32 0, align 4
@HRTIMER_MODE_REL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @gpio_keypad_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gpio_keypad_irq_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.gpio_kp*, align 8
  %8 = alloca %struct.gpio_event_matrix_info*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.gpio_kp*
  store %struct.gpio_kp* %11, %struct.gpio_kp** %7, align 8
  %12 = load %struct.gpio_kp*, %struct.gpio_kp** %7, align 8
  %13 = getelementptr inbounds %struct.gpio_kp, %struct.gpio_kp* %12, i32 0, i32 3
  %14 = load %struct.gpio_event_matrix_info*, %struct.gpio_event_matrix_info** %13, align 8
  store %struct.gpio_event_matrix_info* %14, %struct.gpio_event_matrix_info** %8, align 8
  %15 = load %struct.gpio_event_matrix_info*, %struct.gpio_event_matrix_info** %8, align 8
  %16 = getelementptr inbounds %struct.gpio_event_matrix_info, %struct.gpio_event_matrix_info* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %9, align 4
  %18 = load %struct.gpio_kp*, %struct.gpio_kp** %7, align 8
  %19 = getelementptr inbounds %struct.gpio_kp, %struct.gpio_kp* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %2
  %23 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %23, i32* %3, align 4
  br label %94

24:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %25

25:                                               ; preds = %41, %24
  %26 = load i32, i32* %6, align 4
  %27 = load %struct.gpio_event_matrix_info*, %struct.gpio_event_matrix_info** %8, align 8
  %28 = getelementptr inbounds %struct.gpio_event_matrix_info, %struct.gpio_event_matrix_info* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = icmp slt i32 %26, %29
  br i1 %30, label %31, label %44

31:                                               ; preds = %25
  %32 = load %struct.gpio_event_matrix_info*, %struct.gpio_event_matrix_info** %8, align 8
  %33 = getelementptr inbounds %struct.gpio_event_matrix_info, %struct.gpio_event_matrix_info* %32, i32 0, i32 4
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %6, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @gpio_to_irq(i32 %38)
  %40 = call i32 @disable_irq(i32 %39)
  br label %41

41:                                               ; preds = %31
  %42 = load i32, i32* %6, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %6, align 4
  br label %25

44:                                               ; preds = %25
  store i32 0, i32* %6, align 4
  br label %45

45:                                               ; preds = %81, %44
  %46 = load i32, i32* %6, align 4
  %47 = load %struct.gpio_event_matrix_info*, %struct.gpio_event_matrix_info** %8, align 8
  %48 = getelementptr inbounds %struct.gpio_event_matrix_info, %struct.gpio_event_matrix_info* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = icmp slt i32 %46, %49
  br i1 %50, label %51, label %84

51:                                               ; preds = %45
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* @GPIOKPF_DRIVE_INACTIVE, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %71

56:                                               ; preds = %51
  %57 = load %struct.gpio_event_matrix_info*, %struct.gpio_event_matrix_info** %8, align 8
  %58 = getelementptr inbounds %struct.gpio_event_matrix_info, %struct.gpio_event_matrix_info* %57, i32 0, i32 3
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* %6, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* @GPIOKPF_ACTIVE_HIGH, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  %68 = xor i1 %67, true
  %69 = zext i1 %68 to i32
  %70 = call i32 @gpio_set_value(i32 %63, i32 %69)
  br label %80

71:                                               ; preds = %51
  %72 = load %struct.gpio_event_matrix_info*, %struct.gpio_event_matrix_info** %8, align 8
  %73 = getelementptr inbounds %struct.gpio_event_matrix_info, %struct.gpio_event_matrix_info* %72, i32 0, i32 3
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* %6, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @gpio_direction_input(i32 %78)
  br label %80

80:                                               ; preds = %71, %56
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* %6, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %6, align 4
  br label %45

84:                                               ; preds = %45
  %85 = load %struct.gpio_kp*, %struct.gpio_kp** %7, align 8
  %86 = getelementptr inbounds %struct.gpio_kp, %struct.gpio_kp* %85, i32 0, i32 1
  %87 = call i32 @wake_lock(i32* %86)
  %88 = load %struct.gpio_kp*, %struct.gpio_kp** %7, align 8
  %89 = getelementptr inbounds %struct.gpio_kp, %struct.gpio_kp* %88, i32 0, i32 0
  %90 = call i32 @ktime_set(i32 0, i32 0)
  %91 = load i32, i32* @HRTIMER_MODE_REL, align 4
  %92 = call i32 @hrtimer_start(i32* %89, i32 %90, i32 %91)
  %93 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %93, i32* %3, align 4
  br label %94

94:                                               ; preds = %84, %22
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

declare dso_local i32 @disable_irq(i32) #1

declare dso_local i32 @gpio_to_irq(i32) #1

declare dso_local i32 @gpio_set_value(i32, i32) #1

declare dso_local i32 @gpio_direction_input(i32) #1

declare dso_local i32 @wake_lock(i32*) #1

declare dso_local i32 @hrtimer_start(i32*, i32, i32) #1

declare dso_local i32 @ktime_set(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
