; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/firmware/carl9170fw/tools/carlu/src/extr_main.c_carlu_run_gpio_test.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/firmware/carl9170fw/tools/carlu/src/extr_main.c_carlu_run_gpio_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.carlu = type { i32 }

@EXIT_FAILURE = common dso_local global i32 0, align 4
@EXIT_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @carlu_run_gpio_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @carlu_run_gpio_test() #0 {
  %1 = alloca %struct.carlu*, align 8
  %2 = alloca i32, align 4
  store %struct.carlu* null, %struct.carlu** %1, align 8
  %3 = call i32 (...) @carlu_init()
  store i32 %3, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  br label %25

7:                                                ; preds = %0
  %8 = call %struct.carlu* (...) @carlusb_probe()
  store %struct.carlu* %8, %struct.carlu** %1, align 8
  %9 = load %struct.carlu*, %struct.carlu** %1, align 8
  %10 = call i64 @IS_ERR_OR_NULL(%struct.carlu* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %7
  %13 = load %struct.carlu*, %struct.carlu** %1, align 8
  %14 = call i32 @PTR_ERR(%struct.carlu* %13)
  store i32 %14, i32* %2, align 4
  br label %25

15:                                               ; preds = %7
  %16 = load %struct.carlu*, %struct.carlu** %1, align 8
  %17 = call i32 @carlu_gpio_test(%struct.carlu* %16)
  store i32 %17, i32* %2, align 4
  %18 = load i32, i32* %2, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  br label %22

21:                                               ; preds = %15
  br label %22

22:                                               ; preds = %21, %20
  %23 = load %struct.carlu*, %struct.carlu** %1, align 8
  %24 = call i32 @carlusb_close(%struct.carlu* %23)
  br label %25

25:                                               ; preds = %22, %12, %6
  %26 = call i32 (...) @carlu_exit()
  %27 = load i32, i32* %2, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  %30 = load i32, i32* @EXIT_FAILURE, align 4
  br label %33

31:                                               ; preds = %25
  %32 = load i32, i32* @EXIT_SUCCESS, align 4
  br label %33

33:                                               ; preds = %31, %29
  %34 = phi i32 [ %30, %29 ], [ %32, %31 ]
  ret i32 %34
}

declare dso_local i32 @carlu_init(...) #1

declare dso_local %struct.carlu* @carlusb_probe(...) #1

declare dso_local i64 @IS_ERR_OR_NULL(%struct.carlu*) #1

declare dso_local i32 @PTR_ERR(%struct.carlu*) #1

declare dso_local i32 @carlu_gpio_test(%struct.carlu*) #1

declare dso_local i32 @carlusb_close(%struct.carlu*) #1

declare dso_local i32 @carlu_exit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
