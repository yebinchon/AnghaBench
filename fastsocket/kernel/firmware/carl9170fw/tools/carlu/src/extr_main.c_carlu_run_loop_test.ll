; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/firmware/carl9170fw/tools/carlu/src/extr_main.c_carlu_run_loop_test.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/firmware/carl9170fw/tools/carlu/src/extr_main.c_carlu_run_loop_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.carlu = type { i32 }

@EXIT_FAILURE = common dso_local global i32 0, align 4
@AR9170_MAC_REG_BCN_PERIOD = common dso_local global i32 0, align 4
@AR9170_MAC_REG_PRETBTT = common dso_local global i32 0, align 4
@EXIT_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @carlu_run_loop_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @carlu_run_loop_test() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.carlu*, align 8
  %3 = alloca i32, align 4
  %4 = call i32 (...) @carlu_init()
  store i32 %4, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %0
  %8 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %8, i32* %1, align 4
  br label %37

9:                                                ; preds = %0
  %10 = call %struct.carlu* (...) @carlusb_probe()
  store %struct.carlu* %10, %struct.carlu** %2, align 8
  %11 = load %struct.carlu*, %struct.carlu** %2, align 8
  %12 = call i64 @IS_ERR_OR_NULL(%struct.carlu* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %9
  %15 = load %struct.carlu*, %struct.carlu** %2, align 8
  %16 = call i32 @PTR_ERR(%struct.carlu* %15)
  store i32 %16, i32* %3, align 4
  br label %28

17:                                               ; preds = %9
  %18 = load %struct.carlu*, %struct.carlu** %2, align 8
  %19 = load i32, i32* @AR9170_MAC_REG_BCN_PERIOD, align 4
  %20 = call i32 @carlu_cmd_write_mem(%struct.carlu* %18, i32 %19, i32 -1)
  %21 = load %struct.carlu*, %struct.carlu** %2, align 8
  %22 = load i32, i32* @AR9170_MAC_REG_PRETBTT, align 4
  %23 = call i32 @carlu_cmd_write_mem(%struct.carlu* %21, i32 %22, i32 -1)
  %24 = load %struct.carlu*, %struct.carlu** %2, align 8
  %25 = call i32 @carlu_loopback_test(%struct.carlu* %24, i32 9000, i32 1000, i32 1566, i32 1566)
  %26 = load %struct.carlu*, %struct.carlu** %2, align 8
  %27 = call i32 @carlusb_close(%struct.carlu* %26)
  br label %28

28:                                               ; preds = %17, %14
  %29 = load i32, i32* %3, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  %32 = load i32, i32* @EXIT_FAILURE, align 4
  br label %35

33:                                               ; preds = %28
  %34 = load i32, i32* @EXIT_SUCCESS, align 4
  br label %35

35:                                               ; preds = %33, %31
  %36 = phi i32 [ %32, %31 ], [ %34, %33 ]
  store i32 %36, i32* %1, align 4
  br label %37

37:                                               ; preds = %35, %7
  %38 = load i32, i32* %1, align 4
  ret i32 %38
}

declare dso_local i32 @carlu_init(...) #1

declare dso_local %struct.carlu* @carlusb_probe(...) #1

declare dso_local i64 @IS_ERR_OR_NULL(%struct.carlu*) #1

declare dso_local i32 @PTR_ERR(%struct.carlu*) #1

declare dso_local i32 @carlu_cmd_write_mem(%struct.carlu*, i32, i32) #1

declare dso_local i32 @carlu_loopback_test(%struct.carlu*, i32, i32, i32, i32) #1

declare dso_local i32 @carlusb_close(%struct.carlu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
