; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libdwarf/extr_libdwarf_loc.c__dwarf_loc_fill_locdesc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libdwarf/extr_libdwarf_loc.c__dwarf_loc_fill_locdesc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32* }

@DW_DLE_LOC_EXPR_BAD = common dso_local global i32 0, align 4
@DW_DLE_NONE = common dso_local global i32 0, align 4
@DW_DLE_MEMORY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_dwarf_loc_fill_locdesc(i32 %0, %struct.TYPE_4__* %1, i32* %2, i64 %3, i32 %4, i32 %5, i32 %6, i32* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_4__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  store i32 %0, i32* %10, align 4
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %11, align 8
  store i32* %2, i32** %12, align 8
  store i64 %3, i64* %13, align 8
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32* %7, i32** %17, align 8
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %20 = icmp ne %struct.TYPE_4__* %19, null
  %21 = zext i1 %20 to i32
  %22 = call i32 @assert(i32 %21)
  %23 = load i32*, i32** %12, align 8
  %24 = icmp ne i32* %23, null
  %25 = zext i1 %24 to i32
  %26 = call i32 @assert(i32 %25)
  %27 = load i64, i64* %13, align 8
  %28 = icmp sgt i64 %27, 0
  %29 = zext i1 %28 to i32
  %30 = call i32 @assert(i32 %29)
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* %14, align 4
  %33 = load i32, i32* %15, align 4
  %34 = load i32, i32* %16, align 4
  %35 = load i32*, i32** %12, align 8
  %36 = load i64, i64* %13, align 8
  %37 = call i32 @_dwarf_loc_fill_loc(i32 %31, %struct.TYPE_4__* null, i32 %32, i32 %33, i32 %34, i32* %35, i64 %36)
  store i32 %37, i32* %18, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %8
  %40 = load i32, i32* %10, align 4
  %41 = load i32*, i32** %17, align 8
  %42 = load i32, i32* @DW_DLE_LOC_EXPR_BAD, align 4
  %43 = call i32 @DWARF_SET_ERROR(i32 %40, i32* %41, i32 %42)
  %44 = load i32, i32* @DW_DLE_LOC_EXPR_BAD, align 4
  store i32 %44, i32* %9, align 4
  br label %75

45:                                               ; preds = %8
  %46 = load i32, i32* %18, align 4
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  %49 = load i32, i32* %18, align 4
  %50 = icmp sle i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %45
  %52 = load i32, i32* @DW_DLE_NONE, align 4
  store i32 %52, i32* %9, align 4
  br label %75

53:                                               ; preds = %45
  %54 = load i32, i32* %18, align 4
  %55 = call i32* @calloc(i32 %54, i32 4)
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 1
  store i32* %55, i32** %57, align 8
  %58 = icmp eq i32* %55, null
  br i1 %58, label %59, label %65

59:                                               ; preds = %53
  %60 = load i32, i32* %10, align 4
  %61 = load i32*, i32** %17, align 8
  %62 = load i32, i32* @DW_DLE_MEMORY, align 4
  %63 = call i32 @DWARF_SET_ERROR(i32 %60, i32* %61, i32 %62)
  %64 = load i32, i32* @DW_DLE_MEMORY, align 4
  store i32 %64, i32* %9, align 4
  br label %75

65:                                               ; preds = %53
  %66 = load i32, i32* %10, align 4
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %68 = load i32, i32* %14, align 4
  %69 = load i32, i32* %15, align 4
  %70 = load i32, i32* %16, align 4
  %71 = load i32*, i32** %12, align 8
  %72 = load i64, i64* %13, align 8
  %73 = call i32 @_dwarf_loc_fill_loc(i32 %66, %struct.TYPE_4__* %67, i32 %68, i32 %69, i32 %70, i32* %71, i64 %72)
  %74 = load i32, i32* @DW_DLE_NONE, align 4
  store i32 %74, i32* %9, align 4
  br label %75

75:                                               ; preds = %65, %59, %51, %39
  %76 = load i32, i32* %9, align 4
  ret i32 %76
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @_dwarf_loc_fill_loc(i32, %struct.TYPE_4__*, i32, i32, i32, i32*, i64) #1

declare dso_local i32 @DWARF_SET_ERROR(i32, i32*, i32) #1

declare dso_local i32* @calloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
