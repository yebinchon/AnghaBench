; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libdwarf/extr_dwarf_ranges.c__dwarf_get_ranges.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libdwarf/extr_dwarf_ranges.c__dwarf_get_ranges.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32* }

@DW_DLE_NO_ENTRY = common dso_local global i64 0, align 8
@DW_DLE_NONE = common dso_local global i32 0, align 4
@DW_DLV_ERROR = common dso_local global i32 0, align 4
@DW_DLV_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_8__*, i32, i32**, i32*, i32*, i32*)* @_dwarf_get_ranges to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_dwarf_get_ranges(i32 %0, %struct.TYPE_8__* %1, i32 %2, i32** %3, i32* %4, i32* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32**, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_7__*, align 8
  %17 = alloca i32, align 4
  store i32 %0, i32* %9, align 4
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32** %3, i32*** %12, align 8
  store i32* %4, i32** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %19 = icmp ne %struct.TYPE_8__* %18, null
  %20 = zext i1 %19 to i32
  %21 = call i32 @assert(i32 %20)
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* %11, align 4
  %24 = call i64 @_dwarf_ranges_find(i32 %22, i32 %23, %struct.TYPE_7__** %16)
  %25 = load i64, i64* @DW_DLE_NO_ENTRY, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %39

27:                                               ; preds = %7
  %28 = load i32, i32* %9, align 4
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %30 = load i32, i32* %11, align 4
  %31 = load i32*, i32** %15, align 8
  %32 = call i32 @_dwarf_ranges_add(i32 %28, %struct.TYPE_8__* %29, i32 %30, %struct.TYPE_7__** %16, i32* %31)
  store i32 %32, i32* %17, align 4
  %33 = load i32, i32* %17, align 4
  %34 = load i32, i32* @DW_DLE_NONE, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %27
  %37 = load i32, i32* @DW_DLV_ERROR, align 4
  store i32 %37, i32* %8, align 4
  br label %62

38:                                               ; preds = %27
  br label %39

39:                                               ; preds = %38, %7
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = load i32**, i32*** %12, align 8
  store i32* %42, i32** %43, align 8
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32*, i32** %13, align 8
  store i32 %46, i32* %47, align 4
  %48 = load i32*, i32** %14, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %50, label %60

50:                                               ; preds = %39
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = mul nsw i32 %53, %56
  %58 = mul nsw i32 %57, 2
  %59 = load i32*, i32** %14, align 8
  store i32 %58, i32* %59, align 4
  br label %60

60:                                               ; preds = %50, %39
  %61 = load i32, i32* @DW_DLV_OK, align 4
  store i32 %61, i32* %8, align 4
  br label %62

62:                                               ; preds = %60, %36
  %63 = load i32, i32* %8, align 4
  ret i32 %63
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @_dwarf_ranges_find(i32, i32, %struct.TYPE_7__**) #1

declare dso_local i32 @_dwarf_ranges_add(i32, %struct.TYPE_8__*, i32, %struct.TYPE_7__**, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
