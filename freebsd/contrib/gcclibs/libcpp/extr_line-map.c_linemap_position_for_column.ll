; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcclibs/libcpp/extr_line-map.c_linemap_position_for_column.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcclibs/libcpp/extr_line-map.c_linemap_position_for_column.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.line_maps = type { i32, i32, i32, i32, %struct.line_map* }
%struct.line_map = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @linemap_position_for_column(%struct.line_maps* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.line_maps*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.line_map*, align 8
  store %struct.line_maps* %0, %struct.line_maps** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.line_maps*, %struct.line_maps** %4, align 8
  %9 = getelementptr inbounds %struct.line_maps, %struct.line_maps* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load %struct.line_maps*, %struct.line_maps** %4, align 8
  %13 = getelementptr inbounds %struct.line_maps, %struct.line_maps* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = icmp uge i32 %11, %14
  br i1 %15, label %16, label %42

16:                                               ; preds = %2
  %17 = load i32, i32* %6, align 4
  %18 = icmp sge i32 %17, 201326592
  br i1 %18, label %22, label %19

19:                                               ; preds = %16
  %20 = load i32, i32* %5, align 4
  %21 = icmp ugt i32 %20, 100000
  br i1 %21, label %22, label %24

22:                                               ; preds = %19, %16
  %23 = load i32, i32* %6, align 4
  store i32 %23, i32* %3, align 4
  br label %57

24:                                               ; preds = %19
  %25 = load %struct.line_maps*, %struct.line_maps** %4, align 8
  %26 = getelementptr inbounds %struct.line_maps, %struct.line_maps* %25, i32 0, i32 4
  %27 = load %struct.line_map*, %struct.line_map** %26, align 8
  %28 = load %struct.line_maps*, %struct.line_maps** %4, align 8
  %29 = getelementptr inbounds %struct.line_maps, %struct.line_maps* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = sub nsw i32 %30, 1
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.line_map, %struct.line_map* %27, i64 %32
  store %struct.line_map* %33, %struct.line_map** %7, align 8
  %34 = load %struct.line_maps*, %struct.line_maps** %4, align 8
  %35 = load %struct.line_map*, %struct.line_map** %7, align 8
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @SOURCE_LINE(%struct.line_map* %35, i32 %36)
  %38 = load i32, i32* %5, align 4
  %39 = add i32 %38, 50
  %40 = call i32 @linemap_line_start(%struct.line_maps* %34, i32 %37, i32 %39)
  store i32 %40, i32* %6, align 4
  br label %41

41:                                               ; preds = %24
  br label %42

42:                                               ; preds = %41, %2
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* %5, align 4
  %45 = add i32 %43, %44
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* %6, align 4
  %47 = load %struct.line_maps*, %struct.line_maps** %4, align 8
  %48 = getelementptr inbounds %struct.line_maps, %struct.line_maps* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = icmp sge i32 %46, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %42
  %52 = load i32, i32* %6, align 4
  %53 = load %struct.line_maps*, %struct.line_maps** %4, align 8
  %54 = getelementptr inbounds %struct.line_maps, %struct.line_maps* %53, i32 0, i32 3
  store i32 %52, i32* %54, align 4
  br label %55

55:                                               ; preds = %51, %42
  %56 = load i32, i32* %6, align 4
  store i32 %56, i32* %3, align 4
  br label %57

57:                                               ; preds = %55, %22
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i32 @linemap_line_start(%struct.line_maps*, i32, i32) #1

declare dso_local i32 @SOURCE_LINE(%struct.line_map*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
