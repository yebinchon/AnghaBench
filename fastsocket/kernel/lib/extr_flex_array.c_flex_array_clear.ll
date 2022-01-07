; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/lib/extr_flex_array.c_flex_array_clear.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/lib/extr_flex_array.c_flex_array_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.flex_array = type { i32, i32, %struct.flex_array_part** }
%struct.flex_array_part = type { i32* }

@ENOSPC = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@FLEX_ARRAY_FREE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @flex_array_clear(%struct.flex_array* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.flex_array*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.flex_array_part*, align 8
  %8 = alloca i8*, align 8
  store %struct.flex_array* %0, %struct.flex_array** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.flex_array*, %struct.flex_array** %4, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @fa_element_to_part_nr(%struct.flex_array* %9, i32 %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %5, align 4
  %13 = load %struct.flex_array*, %struct.flex_array** %4, align 8
  %14 = getelementptr inbounds %struct.flex_array, %struct.flex_array* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp uge i32 %12, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32, i32* @ENOSPC, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %59

20:                                               ; preds = %2
  %21 = load %struct.flex_array*, %struct.flex_array** %4, align 8
  %22 = call i64 @elements_fit_in_base(%struct.flex_array* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %20
  %25 = load %struct.flex_array*, %struct.flex_array** %4, align 8
  %26 = getelementptr inbounds %struct.flex_array, %struct.flex_array* %25, i32 0, i32 2
  %27 = load %struct.flex_array_part**, %struct.flex_array_part*** %26, align 8
  %28 = getelementptr inbounds %struct.flex_array_part*, %struct.flex_array_part** %27, i64 0
  %29 = bitcast %struct.flex_array_part** %28 to %struct.flex_array_part*
  store %struct.flex_array_part* %29, %struct.flex_array_part** %7, align 8
  br label %44

30:                                               ; preds = %20
  %31 = load %struct.flex_array*, %struct.flex_array** %4, align 8
  %32 = getelementptr inbounds %struct.flex_array, %struct.flex_array* %31, i32 0, i32 2
  %33 = load %struct.flex_array_part**, %struct.flex_array_part*** %32, align 8
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.flex_array_part*, %struct.flex_array_part** %33, i64 %35
  %37 = load %struct.flex_array_part*, %struct.flex_array_part** %36, align 8
  store %struct.flex_array_part* %37, %struct.flex_array_part** %7, align 8
  %38 = load %struct.flex_array_part*, %struct.flex_array_part** %7, align 8
  %39 = icmp ne %struct.flex_array_part* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %30
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %59

43:                                               ; preds = %30
  br label %44

44:                                               ; preds = %43, %24
  %45 = load %struct.flex_array_part*, %struct.flex_array_part** %7, align 8
  %46 = getelementptr inbounds %struct.flex_array_part, %struct.flex_array_part* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = load %struct.flex_array*, %struct.flex_array** %4, align 8
  %49 = load i32, i32* %5, align 4
  %50 = call i64 @index_inside_part(%struct.flex_array* %48, i32 %49)
  %51 = getelementptr inbounds i32, i32* %47, i64 %50
  %52 = bitcast i32* %51 to i8*
  store i8* %52, i8** %8, align 8
  %53 = load i8*, i8** %8, align 8
  %54 = load i32, i32* @FLEX_ARRAY_FREE, align 4
  %55 = load %struct.flex_array*, %struct.flex_array** %4, align 8
  %56 = getelementptr inbounds %struct.flex_array, %struct.flex_array* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @memset(i8* %53, i32 %54, i32 %57)
  store i32 0, i32* %3, align 4
  br label %59

59:                                               ; preds = %44, %40, %17
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i32 @fa_element_to_part_nr(%struct.flex_array*, i32) #1

declare dso_local i64 @elements_fit_in_base(%struct.flex_array*) #1

declare dso_local i64 @index_inside_part(%struct.flex_array*, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
