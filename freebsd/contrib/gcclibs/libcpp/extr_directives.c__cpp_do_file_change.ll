; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcclibs/libcpp/extr_directives.c__cpp_do_file_change.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcclibs/libcpp/extr_directives.c__cpp_do_file_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32 (%struct.TYPE_6__*, %struct.line_map*)* }
%struct.line_map = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_cpp_do_file_change(%struct.TYPE_6__* %0, i32 %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.line_map*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* %10, align 4
  %17 = load i8*, i8** %8, align 8
  %18 = load i32, i32* %9, align 4
  %19 = call %struct.line_map* @linemap_add(i32 %14, i32 %15, i32 %16, i8* %17, i32 %18)
  store %struct.line_map* %19, %struct.line_map** %11, align 8
  %20 = load %struct.line_map*, %struct.line_map** %11, align 8
  %21 = icmp ne %struct.line_map* %20, null
  br i1 %21, label %22, label %30

22:                                               ; preds = %5
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.line_map*, %struct.line_map** %11, align 8
  %27 = getelementptr inbounds %struct.line_map, %struct.line_map* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @linemap_line_start(i32 %25, i32 %28, i32 127)
  br label %30

30:                                               ; preds = %22, %5
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i32 (%struct.TYPE_6__*, %struct.line_map*)*, i32 (%struct.TYPE_6__*, %struct.line_map*)** %33, align 8
  %35 = icmp ne i32 (%struct.TYPE_6__*, %struct.line_map*)* %34, null
  br i1 %35, label %36, label %44

36:                                               ; preds = %30
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i32 (%struct.TYPE_6__*, %struct.line_map*)*, i32 (%struct.TYPE_6__*, %struct.line_map*)** %39, align 8
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %42 = load %struct.line_map*, %struct.line_map** %11, align 8
  %43 = call i32 %40(%struct.TYPE_6__* %41, %struct.line_map* %42)
  br label %44

44:                                               ; preds = %36, %30
  ret void
}

declare dso_local %struct.line_map* @linemap_add(i32, i32, i32, i8*, i32) #1

declare dso_local i32 @linemap_line_start(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
