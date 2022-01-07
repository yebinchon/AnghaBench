; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libdwarf/extr_libdwarf_rw.c__dwarf_write_msb_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libdwarf/extr_libdwarf_rw.c__dwarf_write_msb_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DW_DLE_MEMORY = common dso_local global i32 0, align 4
@DW_DLE_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_dwarf_write_msb_alloc(i32** %0, i32* %1, i32* %2, i32 %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  store i32** %0, i32*** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  %14 = load i32*, i32** %9, align 8
  %15 = load i32, i32* %14, align 4
  %16 = icmp sgt i32 %15, 0
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  br label %19

19:                                               ; preds = %46, %6
  %20 = load i32*, i32** %10, align 8
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %12, align 4
  %23 = add nsw i32 %21, %22
  %24 = load i32*, i32** %9, align 8
  %25 = load i32, i32* %24, align 4
  %26 = icmp sgt i32 %23, %25
  br i1 %26, label %27, label %47

27:                                               ; preds = %19
  %28 = load i32*, i32** %9, align 8
  %29 = load i32, i32* %28, align 4
  %30 = mul nsw i32 %29, 2
  store i32 %30, i32* %28, align 4
  %31 = load i32**, i32*** %8, align 8
  %32 = load i32*, i32** %31, align 8
  %33 = load i32*, i32** %9, align 8
  %34 = load i32, i32* %33, align 4
  %35 = sext i32 %34 to i64
  %36 = call i32* @realloc(i32* %32, i64 %35)
  %37 = load i32**, i32*** %8, align 8
  store i32* %36, i32** %37, align 8
  %38 = load i32**, i32*** %8, align 8
  %39 = load i32*, i32** %38, align 8
  %40 = icmp eq i32* %39, null
  br i1 %40, label %41, label %46

41:                                               ; preds = %27
  %42 = load i32*, i32** %13, align 8
  %43 = load i32, i32* @DW_DLE_MEMORY, align 4
  %44 = call i32 @DWARF_SET_ERROR(i32* null, i32* %42, i32 %43)
  %45 = load i32, i32* @DW_DLE_MEMORY, align 4
  store i32 %45, i32* %7, align 4
  br label %55

46:                                               ; preds = %27
  br label %19

47:                                               ; preds = %19
  %48 = load i32**, i32*** %8, align 8
  %49 = load i32*, i32** %48, align 8
  %50 = load i32*, i32** %10, align 8
  %51 = load i32, i32* %11, align 4
  %52 = load i32, i32* %12, align 4
  %53 = call i32 @_dwarf_write_msb(i32* %49, i32* %50, i32 %51, i32 %52)
  %54 = load i32, i32* @DW_DLE_NONE, align 4
  store i32 %54, i32* %7, align 4
  br label %55

55:                                               ; preds = %47, %41
  %56 = load i32, i32* %7, align 4
  ret i32 %56
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32* @realloc(i32*, i64) #1

declare dso_local i32 @DWARF_SET_ERROR(i32*, i32*, i32) #1

declare dso_local i32 @_dwarf_write_msb(i32*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
