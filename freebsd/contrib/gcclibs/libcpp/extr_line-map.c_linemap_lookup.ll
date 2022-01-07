; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcclibs/libcpp/extr_line-map.c_linemap_lookup.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcclibs/libcpp/extr_line-map.c_linemap_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.line_map = type { i64 }
%struct.line_maps = type { i32, i32, %struct.line_map* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.line_map* @linemap_lookup(%struct.line_maps* %0, i64 %1) #0 {
  %3 = alloca %struct.line_map*, align 8
  %4 = alloca %struct.line_maps*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.line_map*, align 8
  store %struct.line_maps* %0, %struct.line_maps** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load %struct.line_maps*, %struct.line_maps** %4, align 8
  %11 = getelementptr inbounds %struct.line_maps, %struct.line_maps* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %7, align 4
  %13 = load %struct.line_maps*, %struct.line_maps** %4, align 8
  %14 = getelementptr inbounds %struct.line_maps, %struct.line_maps* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %8, align 4
  %16 = load %struct.line_maps*, %struct.line_maps** %4, align 8
  %17 = getelementptr inbounds %struct.line_maps, %struct.line_maps* %16, i32 0, i32 2
  %18 = load %struct.line_map*, %struct.line_map** %17, align 8
  %19 = load i32, i32* %7, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.line_map, %struct.line_map* %18, i64 %20
  store %struct.line_map* %21, %struct.line_map** %9, align 8
  %22 = load i64, i64* %5, align 8
  %23 = load %struct.line_map*, %struct.line_map** %9, align 8
  %24 = getelementptr inbounds %struct.line_map, %struct.line_map* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp sge i64 %22, %25
  br i1 %26, label %27, label %42

27:                                               ; preds = %2
  %28 = load i32, i32* %7, align 4
  %29 = add i32 %28, 1
  %30 = load i32, i32* %8, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %39, label %32

32:                                               ; preds = %27
  %33 = load i64, i64* %5, align 8
  %34 = load %struct.line_map*, %struct.line_map** %9, align 8
  %35 = getelementptr inbounds %struct.line_map, %struct.line_map* %34, i64 1
  %36 = getelementptr inbounds %struct.line_map, %struct.line_map* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp slt i64 %33, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %32, %27
  %40 = load %struct.line_map*, %struct.line_map** %9, align 8
  store %struct.line_map* %40, %struct.line_map** %3, align 8
  br label %80

41:                                               ; preds = %32
  br label %44

42:                                               ; preds = %2
  %43 = load i32, i32* %7, align 4
  store i32 %43, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %44

44:                                               ; preds = %42, %41
  br label %45

45:                                               ; preds = %69, %44
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* %7, align 4
  %48 = sub i32 %46, %47
  %49 = icmp ugt i32 %48, 1
  br i1 %49, label %50, label %70

50:                                               ; preds = %45
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* %8, align 4
  %53 = add i32 %51, %52
  %54 = udiv i32 %53, 2
  store i32 %54, i32* %6, align 4
  %55 = load %struct.line_maps*, %struct.line_maps** %4, align 8
  %56 = getelementptr inbounds %struct.line_maps, %struct.line_maps* %55, i32 0, i32 2
  %57 = load %struct.line_map*, %struct.line_map** %56, align 8
  %58 = load i32, i32* %6, align 4
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds %struct.line_map, %struct.line_map* %57, i64 %59
  %61 = getelementptr inbounds %struct.line_map, %struct.line_map* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* %5, align 8
  %64 = icmp sgt i64 %62, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %50
  %66 = load i32, i32* %6, align 4
  store i32 %66, i32* %8, align 4
  br label %69

67:                                               ; preds = %50
  %68 = load i32, i32* %6, align 4
  store i32 %68, i32* %7, align 4
  br label %69

69:                                               ; preds = %67, %65
  br label %45

70:                                               ; preds = %45
  %71 = load i32, i32* %7, align 4
  %72 = load %struct.line_maps*, %struct.line_maps** %4, align 8
  %73 = getelementptr inbounds %struct.line_maps, %struct.line_maps* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 8
  %74 = load %struct.line_maps*, %struct.line_maps** %4, align 8
  %75 = getelementptr inbounds %struct.line_maps, %struct.line_maps* %74, i32 0, i32 2
  %76 = load %struct.line_map*, %struct.line_map** %75, align 8
  %77 = load i32, i32* %7, align 4
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds %struct.line_map, %struct.line_map* %76, i64 %78
  store %struct.line_map* %79, %struct.line_map** %3, align 8
  br label %80

80:                                               ; preds = %70, %39
  %81 = load %struct.line_map*, %struct.line_map** %3, align 8
  ret %struct.line_map* %81
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
