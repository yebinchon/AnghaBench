; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libdwarf/extr_dwarf_ranges.c_dwarf_get_ranges.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libdwarf/extr_dwarf_ranges.c_dwarf_get_ranges.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }

@DW_DLE_ARGUMENT = common dso_local global i32 0, align 4
@DW_DLV_ERROR = common dso_local global i32 0, align 4
@DW_DLE_NONE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dwarf_get_ranges(%struct.TYPE_6__* %0, i32 %1, i32** %2, i32* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32** %2, i32*** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %15 = icmp eq %struct.TYPE_6__* %14, null
  br i1 %15, label %22, label %16

16:                                               ; preds = %6
  %17 = load i32**, i32*** %10, align 8
  %18 = icmp eq i32** %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %16
  %20 = load i32*, i32** %11, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %28

22:                                               ; preds = %19, %16, %6
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %24 = load i32*, i32** %13, align 8
  %25 = load i32, i32* @DW_DLE_ARGUMENT, align 4
  %26 = call i32 @DWARF_SET_ERROR(%struct.TYPE_6__* %23, i32* %24, i32 %25)
  %27 = load i32, i32* @DW_DLV_ERROR, align 4
  store i32 %27, i32* %7, align 4
  br label %53

28:                                               ; preds = %19
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %42, label %33

33:                                               ; preds = %28
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %35 = load i32*, i32** %13, align 8
  %36 = call i64 @_dwarf_info_load(%struct.TYPE_6__* %34, i32 1, i32 1, i32* %35)
  %37 = load i64, i64* @DW_DLE_NONE, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %33
  %40 = load i32, i32* @DW_DLV_ERROR, align 4
  store i32 %40, i32* %7, align 4
  br label %53

41:                                               ; preds = %33
  br label %42

42:                                               ; preds = %41, %28
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = call i32 @STAILQ_FIRST(i32* %45)
  %47 = load i32, i32* %9, align 4
  %48 = load i32**, i32*** %10, align 8
  %49 = load i32*, i32** %11, align 8
  %50 = load i32*, i32** %12, align 8
  %51 = load i32*, i32** %13, align 8
  %52 = call i32 @_dwarf_get_ranges(%struct.TYPE_6__* %43, i32 %46, i32 %47, i32** %48, i32* %49, i32* %50, i32* %51)
  store i32 %52, i32* %7, align 4
  br label %53

53:                                               ; preds = %42, %39, %22
  %54 = load i32, i32* %7, align 4
  ret i32 %54
}

declare dso_local i32 @DWARF_SET_ERROR(%struct.TYPE_6__*, i32*, i32) #1

declare dso_local i64 @_dwarf_info_load(%struct.TYPE_6__*, i32, i32, i32*) #1

declare dso_local i32 @_dwarf_get_ranges(%struct.TYPE_6__*, i32, i32, i32**, i32*, i32*, i32*) #1

declare dso_local i32 @STAILQ_FIRST(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
