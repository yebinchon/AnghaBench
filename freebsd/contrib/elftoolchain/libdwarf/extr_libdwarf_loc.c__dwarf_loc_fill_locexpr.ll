; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libdwarf/extr_libdwarf_loc.c__dwarf_loc_fill_locexpr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libdwarf/extr_libdwarf_loc.c__dwarf_loc_fill_locexpr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32*, i64 }

@DW_DLE_MEMORY = common dso_local global i32 0, align 4
@DW_DLE_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_dwarf_loc_fill_locexpr(i32 %0, %struct.TYPE_6__** %1, i32* %2, i32 %3, i32 %4, i32 %5, i32 %6, i32* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_6__**, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca %struct.TYPE_6__*, align 8
  %19 = alloca i32, align 4
  store i32 %0, i32* %10, align 4
  store %struct.TYPE_6__** %1, %struct.TYPE_6__*** %11, align 8
  store i32* %2, i32** %12, align 8
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32* %7, i32** %17, align 8
  %20 = call %struct.TYPE_6__* @malloc(i32 24)
  store %struct.TYPE_6__* %20, %struct.TYPE_6__** %18, align 8
  %21 = icmp eq %struct.TYPE_6__* %20, null
  br i1 %21, label %22, label %28

22:                                               ; preds = %8
  %23 = load i32, i32* %10, align 4
  %24 = load i32*, i32** %17, align 8
  %25 = load i32, i32* @DW_DLE_MEMORY, align 4
  %26 = call i32 @DWARF_SET_ERROR(i32 %23, i32* %24, i32 %25)
  %27 = load i32, i32* @DW_DLE_MEMORY, align 4
  store i32 %27, i32* %9, align 4
  br label %55

28:                                               ; preds = %8
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 2
  store i64 0, i64* %30, align 8
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  store i64 -1, i64* %32, align 8
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 1
  store i32* null, i32** %34, align 8
  %35 = load i32, i32* %10, align 4
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %37 = load i32*, i32** %12, align 8
  %38 = load i32, i32* %13, align 4
  %39 = load i32, i32* %14, align 4
  %40 = load i32, i32* %15, align 4
  %41 = load i32, i32* %16, align 4
  %42 = load i32*, i32** %17, align 8
  %43 = call i32 @_dwarf_loc_fill_locdesc(i32 %35, %struct.TYPE_6__* %36, i32* %37, i32 %38, i32 %39, i32 %40, i32 %41, i32* %42)
  store i32 %43, i32* %19, align 4
  %44 = load i32, i32* %19, align 4
  %45 = load i32, i32* @DW_DLE_NONE, align 4
  %46 = icmp ne i32 %44, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %28
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %49 = call i32 @free(%struct.TYPE_6__* %48)
  %50 = load i32, i32* %19, align 4
  store i32 %50, i32* %9, align 4
  br label %55

51:                                               ; preds = %28
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %53 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %11, align 8
  store %struct.TYPE_6__* %52, %struct.TYPE_6__** %53, align 8
  %54 = load i32, i32* %19, align 4
  store i32 %54, i32* %9, align 4
  br label %55

55:                                               ; preds = %51, %47, %22
  %56 = load i32, i32* %9, align 4
  ret i32 %56
}

declare dso_local %struct.TYPE_6__* @malloc(i32) #1

declare dso_local i32 @DWARF_SET_ERROR(i32, i32*, i32) #1

declare dso_local i32 @_dwarf_loc_fill_locdesc(i32, %struct.TYPE_6__*, i32*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @free(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
