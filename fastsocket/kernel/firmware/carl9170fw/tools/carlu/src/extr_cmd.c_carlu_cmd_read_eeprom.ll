; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/firmware/carl9170fw/tools/carlu/src/extr_cmd.c_carlu_cmd_read_eeprom.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/firmware/carl9170fw/tools/carlu/src/extr_cmd.c_carlu_cmd_read_eeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.carlu = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@AR9170_EEPROM_START = common dso_local global i32 0, align 4
@ENODATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @carlu_cmd_read_eeprom(%struct.carlu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.carlu*, align 8
  %4 = alloca i32, align 4
  store %struct.carlu* %0, %struct.carlu** %3, align 8
  %5 = load %struct.carlu*, %struct.carlu** %3, align 8
  %6 = load i32, i32* @AR9170_EEPROM_START, align 4
  %7 = load %struct.carlu*, %struct.carlu** %3, align 8
  %8 = getelementptr inbounds %struct.carlu, %struct.carlu* %7, i32 0, i32 0
  %9 = call i32 @carlu_cmd_mem_dump(%struct.carlu* %5, i32 %6, i32 8, %struct.TYPE_2__* %8)
  store i32 %9, i32* %4, align 4
  %10 = call i32 @BUILD_BUG_ON(i32 0)
  %11 = load %struct.carlu*, %struct.carlu** %3, align 8
  %12 = getelementptr inbounds %struct.carlu, %struct.carlu* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = call i64 @cpu_to_le16(i32 65535)
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load i32, i32* @ENODATA, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %21

20:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %21

21:                                               ; preds = %20, %17
  %22 = load i32, i32* %2, align 4
  ret i32 %22
}

declare dso_local i32 @carlu_cmd_mem_dump(%struct.carlu*, i32, i32, %struct.TYPE_2__*) #1

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i64 @cpu_to_le16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
