; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/firmware/carl9170fw/tools/carlu/src/extr_cmd.c_carlu_cmd_reboot.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/firmware/carl9170fw/tools/carlu/src/extr_cmd.c_carlu_cmd_reboot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.carlu = type { i32 }
%struct.carl9170_cmd = type { i32 }

@CARL9170_CMD_REBOOT_ASYNC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @carlu_cmd_reboot(%struct.carlu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.carlu*, align 8
  %4 = alloca %struct.carl9170_cmd*, align 8
  %5 = alloca i32, align 4
  store %struct.carlu* %0, %struct.carlu** %3, align 8
  %6 = load %struct.carlu*, %struct.carlu** %3, align 8
  %7 = load i32, i32* @CARL9170_CMD_REBOOT_ASYNC, align 4
  %8 = call %struct.carl9170_cmd* @carlu_cmd_buf(%struct.carlu* %6, i32 %7, i32 0)
  store %struct.carl9170_cmd* %8, %struct.carl9170_cmd** %4, align 8
  %9 = load %struct.carl9170_cmd*, %struct.carl9170_cmd** %4, align 8
  %10 = call i64 @IS_ERR_OR_NULL(%struct.carl9170_cmd* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %23

12:                                               ; preds = %1
  %13 = load %struct.carl9170_cmd*, %struct.carl9170_cmd** %4, align 8
  %14 = icmp ne %struct.carl9170_cmd* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  %16 = load %struct.carl9170_cmd*, %struct.carl9170_cmd** %4, align 8
  %17 = call i32 @PTR_ERR(%struct.carl9170_cmd* %16)
  br label %21

18:                                               ; preds = %12
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  br label %21

21:                                               ; preds = %18, %15
  %22 = phi i32 [ %17, %15 ], [ %20, %18 ]
  store i32 %22, i32* %2, align 4
  br label %28

23:                                               ; preds = %1
  %24 = load %struct.carlu*, %struct.carlu** %3, align 8
  %25 = load %struct.carl9170_cmd*, %struct.carl9170_cmd** %4, align 8
  %26 = call i32 @carlusb_cmd_async(%struct.carlu* %24, %struct.carl9170_cmd* %25, i32 1)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  store i32 %27, i32* %2, align 4
  br label %28

28:                                               ; preds = %23, %21
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local %struct.carl9170_cmd* @carlu_cmd_buf(%struct.carlu*, i32, i32) #1

declare dso_local i64 @IS_ERR_OR_NULL(%struct.carl9170_cmd*) #1

declare dso_local i32 @PTR_ERR(%struct.carl9170_cmd*) #1

declare dso_local i32 @carlusb_cmd_async(%struct.carlu*, %struct.carl9170_cmd*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
