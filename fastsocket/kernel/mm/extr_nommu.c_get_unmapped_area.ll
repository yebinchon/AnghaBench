; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_nommu.c_get_unmapped_area.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_nommu.c_get_unmapped_area.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 (%struct.file*, i64, i64, i64, i64)* }
%struct.file = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { {}* }

@current = common dso_local global %struct.TYPE_6__* null, align 8
@ENOSYS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @get_unmapped_area(%struct.file* %0, i64 %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.file*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64 (%struct.file*, i64, i64, i64, i64)*, align 8
  store %struct.file* %0, %struct.file** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i64 (%struct.file*, i64, i64, i64, i64)*, i64 (%struct.file*, i64, i64, i64, i64)** %16, align 8
  store i64 (%struct.file*, i64, i64, i64, i64)* %17, i64 (%struct.file*, i64, i64, i64, i64)** %12, align 8
  %18 = load %struct.file*, %struct.file** %7, align 8
  %19 = icmp ne %struct.file* %18, null
  br i1 %19, label %20, label %40

20:                                               ; preds = %5
  %21 = load %struct.file*, %struct.file** %7, align 8
  %22 = getelementptr inbounds %struct.file, %struct.file* %21, i32 0, i32 0
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = icmp ne %struct.TYPE_5__* %23, null
  br i1 %24, label %25, label %40

25:                                               ; preds = %20
  %26 = load %struct.file*, %struct.file** %7, align 8
  %27 = getelementptr inbounds %struct.file, %struct.file* %26, i32 0, i32 0
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = bitcast {}** %29 to i64 (%struct.file*, i64, i64, i64, i64)**
  %31 = load i64 (%struct.file*, i64, i64, i64, i64)*, i64 (%struct.file*, i64, i64, i64, i64)** %30, align 8
  %32 = icmp ne i64 (%struct.file*, i64, i64, i64, i64)* %31, null
  br i1 %32, label %33, label %40

33:                                               ; preds = %25
  %34 = load %struct.file*, %struct.file** %7, align 8
  %35 = getelementptr inbounds %struct.file, %struct.file* %34, i32 0, i32 0
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = bitcast {}** %37 to i64 (%struct.file*, i64, i64, i64, i64)**
  %39 = load i64 (%struct.file*, i64, i64, i64, i64)*, i64 (%struct.file*, i64, i64, i64, i64)** %38, align 8
  store i64 (%struct.file*, i64, i64, i64, i64)* %39, i64 (%struct.file*, i64, i64, i64, i64)** %12, align 8
  br label %40

40:                                               ; preds = %33, %25, %20, %5
  %41 = load i64 (%struct.file*, i64, i64, i64, i64)*, i64 (%struct.file*, i64, i64, i64, i64)** %12, align 8
  %42 = icmp ne i64 (%struct.file*, i64, i64, i64, i64)* %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %40
  %44 = load i64, i64* @ENOSYS, align 8
  %45 = sub i64 0, %44
  store i64 %45, i64* %6, align 8
  br label %54

46:                                               ; preds = %40
  %47 = load i64 (%struct.file*, i64, i64, i64, i64)*, i64 (%struct.file*, i64, i64, i64, i64)** %12, align 8
  %48 = load %struct.file*, %struct.file** %7, align 8
  %49 = load i64, i64* %8, align 8
  %50 = load i64, i64* %9, align 8
  %51 = load i64, i64* %10, align 8
  %52 = load i64, i64* %11, align 8
  %53 = call i64 %47(%struct.file* %48, i64 %49, i64 %50, i64 %51, i64 %52)
  store i64 %53, i64* %6, align 8
  br label %54

54:                                               ; preds = %46, %43
  %55 = load i64, i64* %6, align 8
  ret i64 %55
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
