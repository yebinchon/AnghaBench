; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/firmware/carl9170fw/tools/carlu/src/extr_fw.c_carlu_fw_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/firmware/carl9170fw/tools/carlu/src/extr_fw.c_carlu_fw_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.carlu = type { i32 }
%struct.carl9170fw_motd_desc = type { i32 }

@MOTD_MAGIC = common dso_local global i64 0, align 8
@CARL9170FW_MOTD_DESC_CUR_VER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Firmware Date: 2%.3d-%.2d-%.2d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @carlu_fw_info(%struct.carlu* %0) #0 {
  %2 = alloca %struct.carlu*, align 8
  %3 = alloca %struct.carl9170fw_motd_desc*, align 8
  %4 = alloca i32, align 4
  store %struct.carlu* %0, %struct.carlu** %2, align 8
  %5 = load %struct.carlu*, %struct.carlu** %2, align 8
  %6 = getelementptr inbounds %struct.carlu, %struct.carlu* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i64, i64* @MOTD_MAGIC, align 8
  %9 = inttoptr i64 %8 to i32*
  %10 = load i32, i32* @CARL9170FW_MOTD_DESC_CUR_VER, align 4
  %11 = call %struct.carl9170fw_motd_desc* @carlfw_find_desc(i32 %7, i32* %9, i32 4, i32 %10)
  store %struct.carl9170fw_motd_desc* %11, %struct.carl9170fw_motd_desc** %3, align 8
  %12 = load %struct.carl9170fw_motd_desc*, %struct.carl9170fw_motd_desc** %3, align 8
  %13 = icmp ne %struct.carl9170fw_motd_desc* %12, null
  br i1 %13, label %14, label %26

14:                                               ; preds = %1
  %15 = load %struct.carl9170fw_motd_desc*, %struct.carl9170fw_motd_desc** %3, align 8
  %16 = getelementptr inbounds %struct.carl9170fw_motd_desc, %struct.carl9170fw_motd_desc* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @le32_to_cpu(i32 %17)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @CARL9170FW_GET_YEAR(i32 %19)
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @CARL9170FW_GET_MONTH(i32 %21)
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @CARL9170FW_GET_DAY(i32 %23)
  %25 = call i32 @info(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %22, i32 %24)
  br label %26

26:                                               ; preds = %14, %1
  ret void
}

declare dso_local %struct.carl9170fw_motd_desc* @carlfw_find_desc(i32, i32*, i32, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @info(i8*, i32, i32, i32) #1

declare dso_local i32 @CARL9170FW_GET_YEAR(i32) #1

declare dso_local i32 @CARL9170FW_GET_MONTH(i32) #1

declare dso_local i32 @CARL9170FW_GET_DAY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
