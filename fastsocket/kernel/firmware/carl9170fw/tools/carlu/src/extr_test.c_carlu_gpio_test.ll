; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/firmware/carl9170fw/tools/carlu/src/extr_test.c_carlu_gpio_test.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/firmware/carl9170fw/tools/carlu/src/extr_test.c_carlu_gpio_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.carlu = type { i32 }

@AR9170_GPIO_REG_PORT_DATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"GPIO state:%x\0A\00", align 1
@AR9170_GPIO_PORT_LED_0 = common dso_local global i32 0, align 4
@AR9170_GPIO_PORT_LED_1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @carlu_gpio_test(%struct.carlu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.carlu*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.carlu* %0, %struct.carlu** %3, align 8
  br label %10

10:                                               ; preds = %1
  %11 = load %struct.carlu*, %struct.carlu** %3, align 8
  %12 = load i32, i32* @AR9170_GPIO_REG_PORT_DATA, align 4
  %13 = call i32 @carlu_cmd_read_mem(%struct.carlu* %11, i32 %12, i32* %4)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %10
  %17 = load i32, i32* %5, align 4
  store i32 %17, i32* %2, align 4
  br label %70

18:                                               ; preds = %10
  br label %19

19:                                               ; preds = %18
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @info(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %20)
  br label %22

22:                                               ; preds = %19
  %23 = load %struct.carlu*, %struct.carlu** %3, align 8
  %24 = load i32, i32* @AR9170_GPIO_REG_PORT_DATA, align 4
  %25 = load i32, i32* @AR9170_GPIO_PORT_LED_0, align 4
  %26 = load i32, i32* @AR9170_GPIO_PORT_LED_1, align 4
  %27 = or i32 %25, %26
  %28 = call i32 @carlu_cmd_write_mem(%struct.carlu* %23, i32 %24, i32 %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %22
  %32 = load i32, i32* %6, align 4
  store i32 %32, i32* %2, align 4
  br label %70

33:                                               ; preds = %22
  br label %34

34:                                               ; preds = %33
  %35 = call i32 @SDL_Delay(i32 700)
  br label %36

36:                                               ; preds = %34
  %37 = load %struct.carlu*, %struct.carlu** %3, align 8
  %38 = load i32, i32* @AR9170_GPIO_REG_PORT_DATA, align 4
  %39 = call i32 @carlu_cmd_read_mem(%struct.carlu* %37, i32 %38, i32* %4)
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %7, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %36
  %43 = load i32, i32* %7, align 4
  store i32 %43, i32* %2, align 4
  br label %70

44:                                               ; preds = %36
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %4, align 4
  %47 = call i32 @info(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %46)
  br label %48

48:                                               ; preds = %45
  %49 = load %struct.carlu*, %struct.carlu** %3, align 8
  %50 = load i32, i32* @AR9170_GPIO_REG_PORT_DATA, align 4
  %51 = call i32 @carlu_cmd_write_mem(%struct.carlu* %49, i32 %50, i32 0)
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %8, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %48
  %55 = load i32, i32* %8, align 4
  store i32 %55, i32* %2, align 4
  br label %70

56:                                               ; preds = %48
  br label %57

57:                                               ; preds = %56
  br label %58

58:                                               ; preds = %57
  %59 = load %struct.carlu*, %struct.carlu** %3, align 8
  %60 = load i32, i32* @AR9170_GPIO_REG_PORT_DATA, align 4
  %61 = call i32 @carlu_cmd_read_mem(%struct.carlu* %59, i32 %60, i32* %4)
  store i32 %61, i32* %9, align 4
  %62 = load i32, i32* %9, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %58
  %65 = load i32, i32* %9, align 4
  store i32 %65, i32* %2, align 4
  br label %70

66:                                               ; preds = %58
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %4, align 4
  %69 = call i32 @info(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %68)
  br label %70

70:                                               ; preds = %67, %64, %54, %42, %31, %16
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local i32 @carlu_cmd_read_mem(%struct.carlu*, i32, i32*) #1

declare dso_local i32 @info(i8*, i32) #1

declare dso_local i32 @carlu_cmd_write_mem(%struct.carlu*, i32, i32) #1

declare dso_local i32 @SDL_Delay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
