; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcclibs/libcpp/extr_files.c_cpp_make_system_header.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcclibs/libcpp/extr_files.c_cpp_make_system_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.line_maps*, %struct.TYPE_5__* }
%struct.line_maps = type { i32, i32, %struct.line_map* }
%struct.line_map = type { i32 }
%struct.TYPE_5__ = type { i32 }

@LC_RENAME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cpp_make_system_header(%struct.TYPE_6__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.line_maps*, align 8
  %9 = alloca %struct.line_map*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load %struct.line_maps*, %struct.line_maps** %11, align 8
  store %struct.line_maps* %12, %struct.line_maps** %8, align 8
  %13 = load %struct.line_maps*, %struct.line_maps** %8, align 8
  %14 = getelementptr inbounds %struct.line_maps, %struct.line_maps* %13, i32 0, i32 2
  %15 = load %struct.line_map*, %struct.line_map** %14, align 8
  %16 = load %struct.line_maps*, %struct.line_maps** %8, align 8
  %17 = getelementptr inbounds %struct.line_maps, %struct.line_maps* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = sub nsw i32 %18, 1
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.line_map, %struct.line_map* %15, i64 %20
  store %struct.line_map* %21, %struct.line_map** %9, align 8
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %3
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  %27 = zext i1 %26 to i32
  %28 = add nsw i32 1, %27
  store i32 %28, i32* %7, align 4
  br label %29

29:                                               ; preds = %24, %3
  %30 = load i32, i32* %7, align 4
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  store i32 %30, i32* %34, align 4
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %36 = load i32, i32* @LC_RENAME, align 4
  %37 = load %struct.line_map*, %struct.line_map** %9, align 8
  %38 = getelementptr inbounds %struct.line_map, %struct.line_map* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.line_map*, %struct.line_map** %9, align 8
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load %struct.line_maps*, %struct.line_maps** %42, align 8
  %44 = getelementptr inbounds %struct.line_maps, %struct.line_maps* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @SOURCE_LINE(%struct.line_map* %40, i32 %45)
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @_cpp_do_file_change(%struct.TYPE_6__* %35, i32 %36, i32 %39, i32 %46, i32 %47)
  ret void
}

declare dso_local i32 @_cpp_do_file_change(%struct.TYPE_6__*, i32, i32, i32, i32) #1

declare dso_local i32 @SOURCE_LINE(%struct.line_map*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
