; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/lib/extr_flex_array.c_flex_array_put.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/lib/extr_flex_array.c_flex_array_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.flex_array = type { i32, i32, i32* }
%struct.flex_array_part = type { i32* }

@ENOSPC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @flex_array_put(%struct.flex_array* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.flex_array*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.flex_array_part*, align 8
  %12 = alloca i8*, align 8
  store %struct.flex_array* %0, %struct.flex_array** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load %struct.flex_array*, %struct.flex_array** %6, align 8
  %14 = load i32, i32* %7, align 4
  %15 = call i32 @fa_element_to_part_nr(%struct.flex_array* %13, i32 %14)
  store i32 %15, i32* %10, align 4
  %16 = load i32, i32* %7, align 4
  %17 = load %struct.flex_array*, %struct.flex_array** %6, align 8
  %18 = getelementptr inbounds %struct.flex_array, %struct.flex_array* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp uge i32 %16, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %4
  %22 = load i32, i32* @ENOSPC, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %5, align 4
  br label %60

24:                                               ; preds = %4
  %25 = load %struct.flex_array*, %struct.flex_array** %6, align 8
  %26 = call i64 @elements_fit_in_base(%struct.flex_array* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %24
  %29 = load %struct.flex_array*, %struct.flex_array** %6, align 8
  %30 = getelementptr inbounds %struct.flex_array, %struct.flex_array* %29, i32 0, i32 2
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  %33 = bitcast i32* %32 to %struct.flex_array_part*
  store %struct.flex_array_part* %33, %struct.flex_array_part** %11, align 8
  br label %45

34:                                               ; preds = %24
  %35 = load %struct.flex_array*, %struct.flex_array** %6, align 8
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* %9, align 4
  %38 = call %struct.flex_array_part* @__fa_get_part(%struct.flex_array* %35, i32 %36, i32 %37)
  store %struct.flex_array_part* %38, %struct.flex_array_part** %11, align 8
  %39 = load %struct.flex_array_part*, %struct.flex_array_part** %11, align 8
  %40 = icmp ne %struct.flex_array_part* %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %34
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %5, align 4
  br label %60

44:                                               ; preds = %34
  br label %45

45:                                               ; preds = %44, %28
  %46 = load %struct.flex_array_part*, %struct.flex_array_part** %11, align 8
  %47 = getelementptr inbounds %struct.flex_array_part, %struct.flex_array_part* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = load %struct.flex_array*, %struct.flex_array** %6, align 8
  %50 = load i32, i32* %7, align 4
  %51 = call i64 @index_inside_part(%struct.flex_array* %49, i32 %50)
  %52 = getelementptr inbounds i32, i32* %48, i64 %51
  %53 = bitcast i32* %52 to i8*
  store i8* %53, i8** %12, align 8
  %54 = load i8*, i8** %12, align 8
  %55 = load i8*, i8** %8, align 8
  %56 = load %struct.flex_array*, %struct.flex_array** %6, align 8
  %57 = getelementptr inbounds %struct.flex_array, %struct.flex_array* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @memcpy(i8* %54, i8* %55, i32 %58)
  store i32 0, i32* %5, align 4
  br label %60

60:                                               ; preds = %45, %41, %21
  %61 = load i32, i32* %5, align 4
  ret i32 %61
}

declare dso_local i32 @fa_element_to_part_nr(%struct.flex_array*, i32) #1

declare dso_local i64 @elements_fit_in_base(%struct.flex_array*) #1

declare dso_local %struct.flex_array_part* @__fa_get_part(%struct.flex_array*, i32, i32) #1

declare dso_local i64 @index_inside_part(%struct.flex_array*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
