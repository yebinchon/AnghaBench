; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_page-writeback.c_get_dirty_limits.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_page-writeback.c_get_dirty_limits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }
%struct.backing_dev_info = type { i64, i64 }

@vm_dirty_bytes = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@vm_dirty_ratio = common dso_local global i32 0, align 4
@dirty_background_bytes = common dso_local global i64 0, align 8
@dirty_background_ratio = common dso_local global i64 0, align 8
@current = common dso_local global %struct.task_struct* null, align 8
@PF_LESS_THROTTLE = common dso_local global i32 0, align 4
@bdi_min_ratio = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @get_dirty_limits(i64* %0, i64* %1, i64* %2, %struct.backing_dev_info* %3) #0 {
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.backing_dev_info*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.task_struct*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store i64* %0, i64** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64* %2, i64** %7, align 8
  store %struct.backing_dev_info* %3, %struct.backing_dev_info** %8, align 8
  %17 = call i64 (...) @determine_dirtyable_memory()
  store i64 %17, i64* %11, align 8
  %18 = load i64, i64* @vm_dirty_bytes, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %4
  %21 = load i64, i64* @vm_dirty_bytes, align 8
  %22 = load i32, i32* @PAGE_SIZE, align 4
  %23 = call i64 @DIV_ROUND_UP(i64 %21, i32 %22)
  store i64 %23, i64* %10, align 8
  br label %35

24:                                               ; preds = %4
  %25 = load i32, i32* @vm_dirty_ratio, align 4
  store i32 %25, i32* %13, align 4
  %26 = load i32, i32* %13, align 4
  %27 = icmp slt i32 %26, 5
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  store i32 5, i32* %13, align 4
  br label %29

29:                                               ; preds = %28, %24
  %30 = load i32, i32* %13, align 4
  %31 = sext i32 %30 to i64
  %32 = load i64, i64* %11, align 8
  %33 = mul i64 %31, %32
  %34 = udiv i64 %33, 100
  store i64 %34, i64* %10, align 8
  br label %35

35:                                               ; preds = %29, %20
  %36 = load i64, i64* @dirty_background_bytes, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %35
  %39 = load i64, i64* @dirty_background_bytes, align 8
  %40 = load i32, i32* @PAGE_SIZE, align 4
  %41 = call i64 @DIV_ROUND_UP(i64 %39, i32 %40)
  store i64 %41, i64* %9, align 8
  br label %47

42:                                               ; preds = %35
  %43 = load i64, i64* @dirty_background_ratio, align 8
  %44 = load i64, i64* %11, align 8
  %45 = mul i64 %43, %44
  %46 = udiv i64 %45, 100
  store i64 %46, i64* %9, align 8
  br label %47

47:                                               ; preds = %42, %38
  %48 = load i64, i64* %9, align 8
  %49 = load i64, i64* %10, align 8
  %50 = icmp uge i64 %48, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %47
  %52 = load i64, i64* %10, align 8
  %53 = udiv i64 %52, 2
  store i64 %53, i64* %9, align 8
  br label %54

54:                                               ; preds = %51, %47
  %55 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  store %struct.task_struct* %55, %struct.task_struct** %12, align 8
  %56 = load %struct.task_struct*, %struct.task_struct** %12, align 8
  %57 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @PF_LESS_THROTTLE, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %66, label %62

62:                                               ; preds = %54
  %63 = load %struct.task_struct*, %struct.task_struct** %12, align 8
  %64 = call i64 @rt_task(%struct.task_struct* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %75

66:                                               ; preds = %62, %54
  %67 = load i64, i64* %9, align 8
  %68 = udiv i64 %67, 4
  %69 = load i64, i64* %9, align 8
  %70 = add i64 %69, %68
  store i64 %70, i64* %9, align 8
  %71 = load i64, i64* %10, align 8
  %72 = udiv i64 %71, 4
  %73 = load i64, i64* %10, align 8
  %74 = add i64 %73, %72
  store i64 %74, i64* %10, align 8
  br label %75

75:                                               ; preds = %66, %62
  %76 = load i64, i64* %9, align 8
  %77 = load i64*, i64** %5, align 8
  store i64 %76, i64* %77, align 8
  %78 = load i64, i64* %10, align 8
  %79 = load i64*, i64** %6, align 8
  store i64 %78, i64* %79, align 8
  %80 = load %struct.backing_dev_info*, %struct.backing_dev_info** %8, align 8
  %81 = icmp ne %struct.backing_dev_info* %80, null
  br i1 %81, label %82, label %130

82:                                               ; preds = %75
  %83 = load %struct.backing_dev_info*, %struct.backing_dev_info** %8, align 8
  %84 = call i32 @bdi_writeout_fraction(%struct.backing_dev_info* %83, i64* %15, i64* %16)
  %85 = load i64, i64* %10, align 8
  %86 = load i32, i32* @bdi_min_ratio, align 4
  %87 = sub nsw i32 100, %86
  %88 = sext i32 %87 to i64
  %89 = mul i64 %85, %88
  %90 = udiv i64 %89, 100
  store i64 %90, i64* %14, align 8
  %91 = load i64, i64* %15, align 8
  %92 = load i64, i64* %14, align 8
  %93 = mul nsw i64 %92, %91
  store i64 %93, i64* %14, align 8
  %94 = load i64, i64* %14, align 8
  %95 = load i64, i64* %16, align 8
  %96 = call i32 @do_div(i64 %94, i64 %95)
  %97 = load i64, i64* %10, align 8
  %98 = load %struct.backing_dev_info*, %struct.backing_dev_info** %8, align 8
  %99 = getelementptr inbounds %struct.backing_dev_info, %struct.backing_dev_info* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = mul i64 %97, %100
  %102 = udiv i64 %101, 100
  %103 = load i64, i64* %14, align 8
  %104 = add i64 %103, %102
  store i64 %104, i64* %14, align 8
  %105 = load i64, i64* %14, align 8
  %106 = load i64, i64* %10, align 8
  %107 = load %struct.backing_dev_info*, %struct.backing_dev_info** %8, align 8
  %108 = getelementptr inbounds %struct.backing_dev_info, %struct.backing_dev_info* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = mul i64 %106, %109
  %111 = udiv i64 %110, 100
  %112 = icmp ugt i64 %105, %111
  br i1 %112, label %113, label %120

113:                                              ; preds = %82
  %114 = load i64, i64* %10, align 8
  %115 = load %struct.backing_dev_info*, %struct.backing_dev_info** %8, align 8
  %116 = getelementptr inbounds %struct.backing_dev_info, %struct.backing_dev_info* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = mul i64 %114, %117
  %119 = udiv i64 %118, 100
  store i64 %119, i64* %14, align 8
  br label %120

120:                                              ; preds = %113, %82
  %121 = load i64, i64* %14, align 8
  %122 = load i64*, i64** %7, align 8
  store i64 %121, i64* %122, align 8
  %123 = load %struct.backing_dev_info*, %struct.backing_dev_info** %8, align 8
  %124 = load i64, i64* %10, align 8
  %125 = load i64*, i64** %7, align 8
  %126 = call i32 @clip_bdi_dirty_limit(%struct.backing_dev_info* %123, i64 %124, i64* %125)
  %127 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  %128 = load i64*, i64** %7, align 8
  %129 = call i32 @task_dirty_limit(%struct.task_struct* %127, i64* %128)
  br label %130

130:                                              ; preds = %120, %75
  ret void
}

declare dso_local i64 @determine_dirtyable_memory(...) #1

declare dso_local i64 @DIV_ROUND_UP(i64, i32) #1

declare dso_local i64 @rt_task(%struct.task_struct*) #1

declare dso_local i32 @bdi_writeout_fraction(%struct.backing_dev_info*, i64*, i64*) #1

declare dso_local i32 @do_div(i64, i64) #1

declare dso_local i32 @clip_bdi_dirty_limit(%struct.backing_dev_info*, i64, i64*) #1

declare dso_local i32 @task_dirty_limit(%struct.task_struct*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
