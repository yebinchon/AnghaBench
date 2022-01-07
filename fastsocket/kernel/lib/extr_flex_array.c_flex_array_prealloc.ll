; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/lib/extr_flex_array.c_flex_array_prealloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/lib/extr_flex_array.c_flex_array_prealloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.flex_array = type { i32 }
%struct.flex_array_part = type { i32 }

@ENOSPC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @flex_array_prealloc(%struct.flex_array* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.flex_array*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.flex_array_part*, align 8
  store %struct.flex_array* %0, %struct.flex_array** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %4
  %18 = load i32, i32* %8, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %17
  store i32 0, i32* %5, align 4
  br label %79

21:                                               ; preds = %17, %4
  %22 = load i32, i32* %7, align 4
  %23 = load %struct.flex_array*, %struct.flex_array** %6, align 8
  %24 = getelementptr inbounds %struct.flex_array, %struct.flex_array* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp uge i32 %22, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %21
  %28 = load i32, i32* @ENOSPC, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %5, align 4
  br label %79

30:                                               ; preds = %21
  %31 = load i32, i32* %8, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %30
  store i32 0, i32* %5, align 4
  br label %79

34:                                               ; preds = %30
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* %8, align 4
  %37 = add i32 %35, %36
  %38 = sub i32 %37, 1
  store i32 %38, i32* %13, align 4
  %39 = load i32, i32* %13, align 4
  %40 = load %struct.flex_array*, %struct.flex_array** %6, align 8
  %41 = getelementptr inbounds %struct.flex_array, %struct.flex_array* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp uge i32 %39, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %34
  %45 = load i32, i32* @ENOSPC, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %5, align 4
  br label %79

47:                                               ; preds = %34
  %48 = load %struct.flex_array*, %struct.flex_array** %6, align 8
  %49 = call i64 @elements_fit_in_base(%struct.flex_array* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %47
  store i32 0, i32* %5, align 4
  br label %79

52:                                               ; preds = %47
  %53 = load %struct.flex_array*, %struct.flex_array** %6, align 8
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @fa_element_to_part_nr(%struct.flex_array* %53, i32 %54)
  store i32 %55, i32* %10, align 4
  %56 = load %struct.flex_array*, %struct.flex_array** %6, align 8
  %57 = load i32, i32* %13, align 4
  %58 = call i32 @fa_element_to_part_nr(%struct.flex_array* %56, i32 %57)
  store i32 %58, i32* %11, align 4
  %59 = load i32, i32* %10, align 4
  store i32 %59, i32* %12, align 4
  br label %60

60:                                               ; preds = %75, %52
  %61 = load i32, i32* %12, align 4
  %62 = load i32, i32* %11, align 4
  %63 = icmp sle i32 %61, %62
  br i1 %63, label %64, label %78

64:                                               ; preds = %60
  %65 = load %struct.flex_array*, %struct.flex_array** %6, align 8
  %66 = load i32, i32* %12, align 4
  %67 = load i32, i32* %9, align 4
  %68 = call %struct.flex_array_part* @__fa_get_part(%struct.flex_array* %65, i32 %66, i32 %67)
  store %struct.flex_array_part* %68, %struct.flex_array_part** %14, align 8
  %69 = load %struct.flex_array_part*, %struct.flex_array_part** %14, align 8
  %70 = icmp ne %struct.flex_array_part* %69, null
  br i1 %70, label %74, label %71

71:                                               ; preds = %64
  %72 = load i32, i32* @ENOMEM, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %5, align 4
  br label %79

74:                                               ; preds = %64
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %12, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %12, align 4
  br label %60

78:                                               ; preds = %60
  store i32 0, i32* %5, align 4
  br label %79

79:                                               ; preds = %78, %71, %51, %44, %33, %27, %20
  %80 = load i32, i32* %5, align 4
  ret i32 %80
}

declare dso_local i64 @elements_fit_in_base(%struct.flex_array*) #1

declare dso_local i32 @fa_element_to_part_nr(%struct.flex_array*, i32) #1

declare dso_local %struct.flex_array_part* @__fa_get_part(%struct.flex_array*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
