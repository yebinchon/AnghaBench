; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/firmware/carl9170fw/tools/carlu/src/extr_usb.c_carlusb_load_firmware.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/firmware/carl9170fw/tools/carlu/src/extr_usb.c_carlusb_load_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.carlu = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"loading firmware...\0A\00", align 1
@CARL9170_FIRMWARE_FILE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.carlu*)* @carlusb_load_firmware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @carlusb_load_firmware(%struct.carlu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.carlu*, align 8
  %4 = alloca i32, align 4
  store %struct.carlu* %0, %struct.carlu** %3, align 8
  store i32 0, i32* %4, align 4
  %5 = call i32 @dbg(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %6 = load i32, i32* @CARL9170_FIRMWARE_FILE, align 4
  %7 = call i32 @carlfw_load(i32 %6)
  %8 = load %struct.carlu*, %struct.carlu** %3, align 8
  %9 = getelementptr inbounds %struct.carlu, %struct.carlu* %8, i32 0, i32 0
  store i32 %7, i32* %9, align 4
  %10 = load %struct.carlu*, %struct.carlu** %3, align 8
  %11 = getelementptr inbounds %struct.carlu, %struct.carlu* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i64 @IS_ERR_OR_NULL(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %1
  %16 = load %struct.carlu*, %struct.carlu** %3, align 8
  %17 = getelementptr inbounds %struct.carlu, %struct.carlu* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @PTR_ERR(i32 %18)
  store i32 %19, i32* %2, align 4
  br label %35

20:                                               ; preds = %1
  %21 = load %struct.carlu*, %struct.carlu** %3, align 8
  %22 = call i32 @carlu_fw_check(%struct.carlu* %21)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = load i32, i32* %4, align 4
  store i32 %26, i32* %2, align 4
  br label %35

27:                                               ; preds = %20
  %28 = load %struct.carlu*, %struct.carlu** %3, align 8
  %29 = call i32 @carlusb_fw_check(%struct.carlu* %28)
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = load i32, i32* %4, align 4
  store i32 %33, i32* %2, align 4
  br label %35

34:                                               ; preds = %27
  store i32 0, i32* %2, align 4
  br label %35

35:                                               ; preds = %34, %32, %25, %15
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local i32 @dbg(i8*) #1

declare dso_local i32 @carlfw_load(i32) #1

declare dso_local i64 @IS_ERR_OR_NULL(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @carlu_fw_check(%struct.carlu*) #1

declare dso_local i32 @carlusb_fw_check(%struct.carlu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
