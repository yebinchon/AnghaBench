; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/firmware/carl9170fw/tools/carlu/src/extr_cmd.c_carlu_cmd_write_mem.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/firmware/carl9170fw/tools/carlu/src/extr_cmd.c_carlu_cmd_write_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.carlu = type { i32 }

@CARL9170_CMD_WREG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @carlu_cmd_write_mem(%struct.carlu* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.carlu*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [2 x i32], align 4
  store %struct.carlu* %0, %struct.carlu** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @cpu_to_le32(i32 %11)
  store i32 %12, i32* %10, align 4
  %13 = getelementptr inbounds i32, i32* %10, i64 1
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @cpu_to_le32(i32 %14)
  store i32 %15, i32* %13, align 4
  %16 = load %struct.carlu*, %struct.carlu** %4, align 8
  %17 = load i32, i32* @CARL9170_CMD_WREG, align 4
  %18 = bitcast [2 x i32]* %9 to i8*
  %19 = bitcast i32* %8 to i8*
  %20 = call i32 @carlusb_cmd(%struct.carlu* %16, i32 %17, i8* %18, i32 8, i8* %19, i32 4)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  ret i32 %21
}

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @carlusb_cmd(%struct.carlu*, i32, i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
