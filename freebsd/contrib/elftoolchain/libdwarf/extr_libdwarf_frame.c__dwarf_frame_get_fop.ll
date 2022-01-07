; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libdwarf/extr_libdwarf_frame.c__dwarf_frame_get_fop.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libdwarf/extr_libdwarf_frame.c__dwarf_frame_get_fop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DW_DLE_NONE = common dso_local global i32 0, align 4
@DW_DLE_MEMORY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_dwarf_frame_get_fop(i32 %0, i32 %1, i32* %2, i32 %3, i32** %4, i32* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32**, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32 %0, i32* %9, align 4
  store i32 %1, i32* %10, align 4
  store i32* %2, i32** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32** %4, i32*** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* %10, align 4
  %21 = load i32*, i32** %11, align 8
  %22 = load i32, i32* %12, align 4
  %23 = load i32*, i32** %15, align 8
  %24 = call i32 @_dwarf_frame_convert_inst(i32 %19, i32 %20, i32* %21, i32 %22, i32* %17, i32* null, i32* null, i32* %23)
  store i32 %24, i32* %18, align 4
  %25 = load i32, i32* %18, align 4
  %26 = load i32, i32* @DW_DLE_NONE, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %7
  %29 = load i32, i32* %18, align 4
  store i32 %29, i32* %8, align 4
  br label %61

30:                                               ; preds = %7
  %31 = load i32, i32* %17, align 4
  %32 = call i32* @calloc(i32 %31, i32 4)
  store i32* %32, i32** %16, align 8
  %33 = icmp eq i32* %32, null
  br i1 %33, label %34, label %40

34:                                               ; preds = %30
  %35 = load i32, i32* %9, align 4
  %36 = load i32*, i32** %15, align 8
  %37 = load i32, i32* @DW_DLE_MEMORY, align 4
  %38 = call i32 @DWARF_SET_ERROR(i32 %35, i32* %36, i32 %37)
  %39 = load i32, i32* @DW_DLE_MEMORY, align 4
  store i32 %39, i32* %8, align 4
  br label %61

40:                                               ; preds = %30
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* %10, align 4
  %43 = load i32*, i32** %11, align 8
  %44 = load i32, i32* %12, align 4
  %45 = load i32*, i32** %16, align 8
  %46 = load i32*, i32** %15, align 8
  %47 = call i32 @_dwarf_frame_convert_inst(i32 %41, i32 %42, i32* %43, i32 %44, i32* %17, i32* %45, i32* null, i32* %46)
  store i32 %47, i32* %18, align 4
  %48 = load i32, i32* %18, align 4
  %49 = load i32, i32* @DW_DLE_NONE, align 4
  %50 = icmp ne i32 %48, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %40
  %52 = load i32*, i32** %16, align 8
  %53 = call i32 @free(i32* %52)
  %54 = load i32, i32* %18, align 4
  store i32 %54, i32* %8, align 4
  br label %61

55:                                               ; preds = %40
  %56 = load i32*, i32** %16, align 8
  %57 = load i32**, i32*** %13, align 8
  store i32* %56, i32** %57, align 8
  %58 = load i32, i32* %17, align 4
  %59 = load i32*, i32** %14, align 8
  store i32 %58, i32* %59, align 4
  %60 = load i32, i32* @DW_DLE_NONE, align 4
  store i32 %60, i32* %8, align 4
  br label %61

61:                                               ; preds = %55, %51, %34, %28
  %62 = load i32, i32* %8, align 4
  ret i32 %62
}

declare dso_local i32 @_dwarf_frame_convert_inst(i32, i32, i32*, i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32* @calloc(i32, i32) #1

declare dso_local i32 @DWARF_SET_ERROR(i32, i32*, i32) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
