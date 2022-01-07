; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libdwarf/extr_dwarf_init.c_dwarf_elf_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libdwarf/extr_dwarf_init.c_dwarf_elf_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DW_DLE_ARGUMENT = common dso_local global i32 0, align 4
@DW_DLV_ERROR = common dso_local global i32 0, align 4
@DW_DLC_READ = common dso_local global i32 0, align 4
@DW_DLE_NONE = common dso_local global i32 0, align 4
@DW_DLE_DEBUG_INFO_NULL = common dso_local global i32 0, align 4
@DW_DLV_NO_ENTRY = common dso_local global i32 0, align 4
@DW_DLV_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dwarf_elf_init(i32* %0, i32 %1, i32 %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %16 = load i32*, i32** %8, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %6
  %19 = load i32*, i32** %12, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %26

21:                                               ; preds = %18, %6
  %22 = load i32*, i32** %13, align 8
  %23 = load i32, i32* @DW_DLE_ARGUMENT, align 4
  %24 = call i32 @DWARF_SET_ERROR(i32* null, i32* %22, i32 %23)
  %25 = load i32, i32* @DW_DLV_ERROR, align 4
  store i32 %25, i32* %7, align 4
  br label %78

26:                                               ; preds = %18
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* @DW_DLC_READ, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %35

30:                                               ; preds = %26
  %31 = load i32*, i32** %13, align 8
  %32 = load i32, i32* @DW_DLE_ARGUMENT, align 4
  %33 = call i32 @DWARF_SET_ERROR(i32* null, i32* %31, i32 %32)
  %34 = load i32, i32* @DW_DLV_ERROR, align 4
  store i32 %34, i32* %7, align 4
  br label %78

35:                                               ; preds = %26
  %36 = load i32, i32* %9, align 4
  %37 = load i32*, i32** %13, align 8
  %38 = call i32 @_dwarf_alloc(i32* %14, i32 %36, i32* %37)
  %39 = load i32, i32* @DW_DLE_NONE, align 4
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %35
  %42 = load i32, i32* @DW_DLV_ERROR, align 4
  store i32 %42, i32* %7, align 4
  br label %78

43:                                               ; preds = %35
  %44 = load i32, i32* %14, align 4
  %45 = load i32*, i32** %8, align 8
  %46 = load i32*, i32** %13, align 8
  %47 = call i32 @_dwarf_elf_init(i32 %44, i32* %45, i32* %46)
  %48 = load i32, i32* @DW_DLE_NONE, align 4
  %49 = icmp ne i32 %47, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %43
  %51 = load i32, i32* %14, align 4
  %52 = call i32 @free(i32 %51)
  %53 = load i32, i32* @DW_DLV_ERROR, align 4
  store i32 %53, i32* %7, align 4
  br label %78

54:                                               ; preds = %43
  %55 = load i32, i32* %14, align 4
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* %11, align 4
  %58 = load i32*, i32** %13, align 8
  %59 = call i32 @_dwarf_init(i32 %55, i32 0, i32 %56, i32 %57, i32* %58)
  store i32 %59, i32* %15, align 4
  %60 = load i32, i32* @DW_DLE_NONE, align 4
  %61 = icmp ne i32 %59, %60
  br i1 %61, label %62, label %74

62:                                               ; preds = %54
  %63 = load i32, i32* %14, align 4
  %64 = call i32 @_dwarf_elf_deinit(i32 %63)
  %65 = load i32, i32* %14, align 4
  %66 = call i32 @free(i32 %65)
  %67 = load i32, i32* %15, align 4
  %68 = load i32, i32* @DW_DLE_DEBUG_INFO_NULL, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %62
  %71 = load i32, i32* @DW_DLV_NO_ENTRY, align 4
  store i32 %71, i32* %7, align 4
  br label %78

72:                                               ; preds = %62
  %73 = load i32, i32* @DW_DLV_ERROR, align 4
  store i32 %73, i32* %7, align 4
  br label %78

74:                                               ; preds = %54
  %75 = load i32, i32* %14, align 4
  %76 = load i32*, i32** %12, align 8
  store i32 %75, i32* %76, align 4
  %77 = load i32, i32* @DW_DLV_OK, align 4
  store i32 %77, i32* %7, align 4
  br label %78

78:                                               ; preds = %74, %72, %70, %50, %41, %30, %21
  %79 = load i32, i32* %7, align 4
  ret i32 %79
}

declare dso_local i32 @DWARF_SET_ERROR(i32*, i32*, i32) #1

declare dso_local i32 @_dwarf_alloc(i32*, i32, i32*) #1

declare dso_local i32 @_dwarf_elf_init(i32, i32*, i32*) #1

declare dso_local i32 @free(i32) #1

declare dso_local i32 @_dwarf_init(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @_dwarf_elf_deinit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
