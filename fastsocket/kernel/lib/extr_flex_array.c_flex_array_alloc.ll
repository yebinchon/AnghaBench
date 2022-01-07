; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/lib/extr_flex_array.c_flex_array_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/lib/extr_flex_array.c_flex_array_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.flex_array = type { i32, i32, i32* }

@FLEX_ARRAY_NR_BASE_PTRS = common dso_local global i32 0, align 4
@__GFP_ZERO = common dso_local global i32 0, align 4
@FLEX_ARRAY_FREE = common dso_local global i32 0, align 4
@FLEX_ARRAY_BASE_BYTES_LEFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.flex_array* @flex_array_alloc(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.flex_array*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.flex_array*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* @FLEX_ARRAY_NR_BASE_PTRS, align 4
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @FLEX_ARRAY_ELEMENTS_PER_PART(i32 %11)
  %13 = mul nsw i32 %10, %12
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* %9, align 4
  %16 = icmp ugt i32 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store %struct.flex_array* null, %struct.flex_array** %4, align 8
  br label %49

18:                                               ; preds = %3
  %19 = load i32, i32* %7, align 4
  %20 = call %struct.flex_array* @kzalloc(i32 16, i32 %19)
  store %struct.flex_array* %20, %struct.flex_array** %8, align 8
  %21 = load %struct.flex_array*, %struct.flex_array** %8, align 8
  %22 = icmp ne %struct.flex_array* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %18
  store %struct.flex_array* null, %struct.flex_array** %4, align 8
  br label %49

24:                                               ; preds = %18
  %25 = load i32, i32* %5, align 4
  %26 = load %struct.flex_array*, %struct.flex_array** %8, align 8
  %27 = getelementptr inbounds %struct.flex_array, %struct.flex_array* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = load i32, i32* %6, align 4
  %29 = load %struct.flex_array*, %struct.flex_array** %8, align 8
  %30 = getelementptr inbounds %struct.flex_array, %struct.flex_array* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = load %struct.flex_array*, %struct.flex_array** %8, align 8
  %32 = call i64 @elements_fit_in_base(%struct.flex_array* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %47

34:                                               ; preds = %24
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* @__GFP_ZERO, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %47, label %39

39:                                               ; preds = %34
  %40 = load %struct.flex_array*, %struct.flex_array** %8, align 8
  %41 = getelementptr inbounds %struct.flex_array, %struct.flex_array* %40, i32 0, i32 2
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  %44 = load i32, i32* @FLEX_ARRAY_FREE, align 4
  %45 = load i32, i32* @FLEX_ARRAY_BASE_BYTES_LEFT, align 4
  %46 = call i32 @memset(i32* %43, i32 %44, i32 %45)
  br label %47

47:                                               ; preds = %39, %34, %24
  %48 = load %struct.flex_array*, %struct.flex_array** %8, align 8
  store %struct.flex_array* %48, %struct.flex_array** %4, align 8
  br label %49

49:                                               ; preds = %47, %23, %17
  %50 = load %struct.flex_array*, %struct.flex_array** %4, align 8
  ret %struct.flex_array* %50
}

declare dso_local i32 @FLEX_ARRAY_ELEMENTS_PER_PART(i32) #1

declare dso_local %struct.flex_array* @kzalloc(i32, i32) #1

declare dso_local i64 @elements_fit_in_base(%struct.flex_array*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
