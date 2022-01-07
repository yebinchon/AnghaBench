; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/lib/extr_flex_array.c_flex_array_shrink.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/lib/extr_flex_array.c_flex_array_shrink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.flex_array = type { %struct.flex_array_part**, i32 }
%struct.flex_array_part = type { i32 }

@FLEX_ARRAY_NR_BASE_PTRS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @flex_array_shrink(%struct.flex_array* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.flex_array*, align 8
  %4 = alloca %struct.flex_array_part*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.flex_array* %0, %struct.flex_array** %3, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.flex_array*, %struct.flex_array** %3, align 8
  %8 = getelementptr inbounds %struct.flex_array, %struct.flex_array* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %55

12:                                               ; preds = %1
  %13 = load %struct.flex_array*, %struct.flex_array** %3, align 8
  %14 = call i64 @elements_fit_in_base(%struct.flex_array* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = load i32, i32* %6, align 4
  store i32 %17, i32* %2, align 4
  br label %55

18:                                               ; preds = %12
  store i32 0, i32* %5, align 4
  br label %19

19:                                               ; preds = %50, %18
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @FLEX_ARRAY_NR_BASE_PTRS, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %53

23:                                               ; preds = %19
  %24 = load %struct.flex_array*, %struct.flex_array** %3, align 8
  %25 = getelementptr inbounds %struct.flex_array, %struct.flex_array* %24, i32 0, i32 0
  %26 = load %struct.flex_array_part**, %struct.flex_array_part*** %25, align 8
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.flex_array_part*, %struct.flex_array_part** %26, i64 %28
  %30 = load %struct.flex_array_part*, %struct.flex_array_part** %29, align 8
  store %struct.flex_array_part* %30, %struct.flex_array_part** %4, align 8
  %31 = load %struct.flex_array_part*, %struct.flex_array_part** %4, align 8
  %32 = icmp ne %struct.flex_array_part* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %23
  br label %50

34:                                               ; preds = %23
  %35 = load %struct.flex_array_part*, %struct.flex_array_part** %4, align 8
  %36 = call i64 @part_is_free(%struct.flex_array_part* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %49

38:                                               ; preds = %34
  %39 = load %struct.flex_array*, %struct.flex_array** %3, align 8
  %40 = getelementptr inbounds %struct.flex_array, %struct.flex_array* %39, i32 0, i32 0
  %41 = load %struct.flex_array_part**, %struct.flex_array_part*** %40, align 8
  %42 = load i32, i32* %5, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.flex_array_part*, %struct.flex_array_part** %41, i64 %43
  store %struct.flex_array_part* null, %struct.flex_array_part** %44, align 8
  %45 = load %struct.flex_array_part*, %struct.flex_array_part** %4, align 8
  %46 = call i32 @kfree(%struct.flex_array_part* %45)
  %47 = load i32, i32* %6, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %6, align 4
  br label %49

49:                                               ; preds = %38, %34
  br label %50

50:                                               ; preds = %49, %33
  %51 = load i32, i32* %5, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %5, align 4
  br label %19

53:                                               ; preds = %19
  %54 = load i32, i32* %6, align 4
  store i32 %54, i32* %2, align 4
  br label %55

55:                                               ; preds = %53, %16, %11
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local i64 @elements_fit_in_base(%struct.flex_array*) #1

declare dso_local i64 @part_is_free(%struct.flex_array_part*) #1

declare dso_local i32 @kfree(%struct.flex_array_part*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
