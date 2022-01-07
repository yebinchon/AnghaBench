; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/qdsp5/extr_adsp_6210.c_adsp_init_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/qdsp5/extr_adsp_6210.c_adsp_init_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adsp_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64 }

@QDSP_MODULE_MAX = common dso_local global i64 0, align 8
@QDSP_QUEUE_MAX = common dso_local global i32 0, align 4
@qdsp_queue_offset_table = common dso_local global i32 0, align 4
@qdsp_task_to_module = common dso_local global i32 0, align 4
@module_info = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @adsp_init_info(%struct.adsp_info* %0) #0 {
  %2 = alloca %struct.adsp_info*, align 8
  store %struct.adsp_info* %0, %struct.adsp_info** %2, align 8
  %3 = load %struct.adsp_info*, %struct.adsp_info** %2, align 8
  %4 = getelementptr inbounds %struct.adsp_info, %struct.adsp_info* %3, i32 0, i32 0
  store i32 12583424, i32* %4, align 8
  %5 = load %struct.adsp_info*, %struct.adsp_info** %2, align 8
  %6 = getelementptr inbounds %struct.adsp_info, %struct.adsp_info* %5, i32 0, i32 1
  store i32 4194360, i32* %6, align 4
  %7 = load %struct.adsp_info*, %struct.adsp_info** %2, align 8
  %8 = getelementptr inbounds %struct.adsp_info, %struct.adsp_info* %7, i32 0, i32 2
  store i32 4194356, i32* %8, align 8
  %9 = load %struct.adsp_info*, %struct.adsp_info** %2, align 8
  %10 = getelementptr inbounds %struct.adsp_info, %struct.adsp_info* %9, i32 0, i32 3
  store i32 193, i32* %10, align 4
  %11 = load %struct.adsp_info*, %struct.adsp_info** %2, align 8
  %12 = getelementptr inbounds %struct.adsp_info, %struct.adsp_info* %11, i32 0, i32 4
  store i32 8, i32* %12, align 8
  %13 = load %struct.adsp_info*, %struct.adsp_info** %2, align 8
  %14 = getelementptr inbounds %struct.adsp_info, %struct.adsp_info* %13, i32 0, i32 5
  store i32 16, i32* %14, align 4
  %15 = load i64, i64* @QDSP_MODULE_MAX, align 8
  %16 = sub nsw i64 %15, 1
  %17 = load %struct.adsp_info*, %struct.adsp_info** %2, align 8
  %18 = getelementptr inbounds %struct.adsp_info, %struct.adsp_info* %17, i32 0, i32 12
  store i64 %16, i64* %18, align 8
  %19 = load i32, i32* @QDSP_QUEUE_MAX, align 4
  %20 = load %struct.adsp_info*, %struct.adsp_info** %2, align 8
  %21 = getelementptr inbounds %struct.adsp_info, %struct.adsp_info* %20, i32 0, i32 11
  store i32 %19, i32* %21, align 4
  %22 = load %struct.adsp_info*, %struct.adsp_info** %2, align 8
  %23 = getelementptr inbounds %struct.adsp_info, %struct.adsp_info* %22, i32 0, i32 6
  store i32 2, i32* %23, align 8
  %24 = load i32, i32* @qdsp_queue_offset_table, align 4
  %25 = load %struct.adsp_info*, %struct.adsp_info** %2, align 8
  %26 = getelementptr inbounds %struct.adsp_info, %struct.adsp_info* %25, i32 0, i32 10
  store i32 %24, i32* %26, align 8
  %27 = load i32, i32* @qdsp_task_to_module, align 4
  %28 = load %struct.adsp_info*, %struct.adsp_info** %2, align 8
  %29 = getelementptr inbounds %struct.adsp_info, %struct.adsp_info* %28, i32 0, i32 9
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* @module_info, align 4
  %31 = call i32 @ARRAY_SIZE(i32 %30)
  %32 = load %struct.adsp_info*, %struct.adsp_info** %2, align 8
  %33 = getelementptr inbounds %struct.adsp_info, %struct.adsp_info* %32, i32 0, i32 8
  store i32 %31, i32* %33, align 8
  %34 = load i32, i32* @module_info, align 4
  %35 = load %struct.adsp_info*, %struct.adsp_info** %2, align 8
  %36 = getelementptr inbounds %struct.adsp_info, %struct.adsp_info* %35, i32 0, i32 7
  store i32 %34, i32* %36, align 4
  ret i32 0
}

declare dso_local i32 @ARRAY_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
