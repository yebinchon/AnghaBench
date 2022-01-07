; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/qdsp5/extr_adsp_info.c_adsp_init_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/qdsp5/extr_adsp_info.c_adsp_init_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adsp_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32**, i32**, i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32**, i32** }

@IMG_MAX = common dso_local global i64 0, align 8
@qdsp_queue_offset_table = common dso_local global i32** null, align 8
@qdsp_task_to_module = common dso_local global i32** null, align 8
@QDSP_MODULE_MAX = common dso_local global i64 0, align 8
@QDSP_MAX_NUM_QUEUES = common dso_local global i32 0, align 4
@module_info = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @adsp_init_info(%struct.adsp_info* %0) #0 {
  %2 = alloca %struct.adsp_info*, align 8
  %3 = alloca i64, align 8
  store %struct.adsp_info* %0, %struct.adsp_info** %2, align 8
  %4 = load %struct.adsp_info*, %struct.adsp_info** %2, align 8
  %5 = getelementptr inbounds %struct.adsp_info, %struct.adsp_info* %4, i32 0, i32 0
  store i32 12583424, i32* %5, align 8
  %6 = load %struct.adsp_info*, %struct.adsp_info** %2, align 8
  %7 = getelementptr inbounds %struct.adsp_info, %struct.adsp_info* %6, i32 0, i32 1
  store i32 4194360, i32* %7, align 4
  %8 = load %struct.adsp_info*, %struct.adsp_info** %2, align 8
  %9 = getelementptr inbounds %struct.adsp_info, %struct.adsp_info* %8, i32 0, i32 2
  store i32 4194356, i32* %9, align 8
  %10 = load %struct.adsp_info*, %struct.adsp_info** %2, align 8
  %11 = getelementptr inbounds %struct.adsp_info, %struct.adsp_info* %10, i32 0, i32 3
  store i32 193, i32* %11, align 4
  %12 = load %struct.adsp_info*, %struct.adsp_info** %2, align 8
  %13 = getelementptr inbounds %struct.adsp_info, %struct.adsp_info* %12, i32 0, i32 4
  store i32 8, i32* %13, align 8
  store i64 0, i64* %3, align 8
  br label %14

14:                                               ; preds = %31, %1
  %15 = load i64, i64* %3, align 8
  %16 = load i64, i64* @IMG_MAX, align 8
  %17 = icmp ult i64 %15, %16
  br i1 %17, label %18, label %34

18:                                               ; preds = %14
  %19 = load %struct.adsp_info*, %struct.adsp_info** %2, align 8
  %20 = getelementptr inbounds %struct.adsp_info, %struct.adsp_info* %19, i32 0, i32 13
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i32**, i32*** %22, align 8
  %24 = load i64, i64* %3, align 8
  %25 = getelementptr inbounds i32*, i32** %23, i64 %24
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  %28 = load i32**, i32*** @qdsp_queue_offset_table, align 8
  %29 = load i64, i64* %3, align 8
  %30 = getelementptr inbounds i32*, i32** %28, i64 %29
  store i32* %27, i32** %30, align 8
  br label %31

31:                                               ; preds = %18
  %32 = load i64, i64* %3, align 8
  %33 = add i64 %32, 1
  store i64 %33, i64* %3, align 8
  br label %14

34:                                               ; preds = %14
  store i64 0, i64* %3, align 8
  br label %35

35:                                               ; preds = %52, %34
  %36 = load i64, i64* %3, align 8
  %37 = load i64, i64* @IMG_MAX, align 8
  %38 = icmp ult i64 %36, %37
  br i1 %38, label %39, label %55

39:                                               ; preds = %35
  %40 = load %struct.adsp_info*, %struct.adsp_info** %2, align 8
  %41 = getelementptr inbounds %struct.adsp_info, %struct.adsp_info* %40, i32 0, i32 13
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32**, i32*** %43, align 8
  %45 = load i64, i64* %3, align 8
  %46 = getelementptr inbounds i32*, i32** %44, i64 %45
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 0
  %49 = load i32**, i32*** @qdsp_task_to_module, align 8
  %50 = load i64, i64* %3, align 8
  %51 = getelementptr inbounds i32*, i32** %49, i64 %50
  store i32* %48, i32** %51, align 8
  br label %52

52:                                               ; preds = %39
  %53 = load i64, i64* %3, align 8
  %54 = add i64 %53, 1
  store i64 %54, i64* %3, align 8
  br label %35

55:                                               ; preds = %35
  %56 = load %struct.adsp_info*, %struct.adsp_info** %2, align 8
  %57 = getelementptr inbounds %struct.adsp_info, %struct.adsp_info* %56, i32 0, i32 5
  store i32 30, i32* %57, align 4
  %58 = load i64, i64* @QDSP_MODULE_MAX, align 8
  %59 = sub nsw i64 %58, 1
  %60 = load %struct.adsp_info*, %struct.adsp_info** %2, align 8
  %61 = getelementptr inbounds %struct.adsp_info, %struct.adsp_info* %60, i32 0, i32 12
  store i64 %59, i64* %61, align 8
  %62 = load i32, i32* @QDSP_MAX_NUM_QUEUES, align 4
  %63 = load %struct.adsp_info*, %struct.adsp_info** %2, align 8
  %64 = getelementptr inbounds %struct.adsp_info, %struct.adsp_info* %63, i32 0, i32 11
  store i32 %62, i32* %64, align 8
  %65 = load %struct.adsp_info*, %struct.adsp_info** %2, align 8
  %66 = getelementptr inbounds %struct.adsp_info, %struct.adsp_info* %65, i32 0, i32 6
  store i32 2, i32* %66, align 8
  %67 = load i32**, i32*** @qdsp_queue_offset_table, align 8
  %68 = load %struct.adsp_info*, %struct.adsp_info** %2, align 8
  %69 = getelementptr inbounds %struct.adsp_info, %struct.adsp_info* %68, i32 0, i32 10
  store i32** %67, i32*** %69, align 8
  %70 = load i32**, i32*** @qdsp_task_to_module, align 8
  %71 = load %struct.adsp_info*, %struct.adsp_info** %2, align 8
  %72 = getelementptr inbounds %struct.adsp_info, %struct.adsp_info* %71, i32 0, i32 9
  store i32** %70, i32*** %72, align 8
  %73 = load i32, i32* @module_info, align 4
  %74 = call i32 @ARRAY_SIZE(i32 %73)
  %75 = load %struct.adsp_info*, %struct.adsp_info** %2, align 8
  %76 = getelementptr inbounds %struct.adsp_info, %struct.adsp_info* %75, i32 0, i32 8
  store i32 %74, i32* %76, align 8
  %77 = load i32, i32* @module_info, align 4
  %78 = load %struct.adsp_info*, %struct.adsp_info** %2, align 8
  %79 = getelementptr inbounds %struct.adsp_info, %struct.adsp_info* %78, i32 0, i32 7
  store i32 %77, i32* %79, align 4
  ret i32 0
}

declare dso_local i32 @ARRAY_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
