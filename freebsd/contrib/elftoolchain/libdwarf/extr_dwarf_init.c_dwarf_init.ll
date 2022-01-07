; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libdwarf/extr_dwarf_init.c_dwarf_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libdwarf/extr_dwarf_init.c_dwarf_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DW_DLE_ARGUMENT = common dso_local global i32 0, align 4
@DW_DLV_ERROR = common dso_local global i32 0, align 4
@DW_DLC_READ = common dso_local global i32 0, align 4
@EV_CURRENT = common dso_local global i32 0, align 4
@EV_NONE = common dso_local global i64 0, align 8
@ELF_C_READ = common dso_local global i32 0, align 4
@DW_DLE_NONE = common dso_local global i32 0, align 4
@DW_DLE_DEBUG_INFO_NULL = common dso_local global i32 0, align 4
@DW_DLV_NO_ENTRY = common dso_local global i32 0, align 4
@DW_DLV_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dwarf_init(i32 %0, i32 %1, i32 %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %17 = load i32, i32* %8, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %6
  %20 = load i32*, i32** %12, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %27

22:                                               ; preds = %19, %6
  %23 = load i32*, i32** %13, align 8
  %24 = load i32, i32* @DW_DLE_ARGUMENT, align 4
  %25 = call i32 @DWARF_SET_ERROR(i32* null, i32* %23, i32 %24)
  %26 = load i32, i32* @DW_DLV_ERROR, align 4
  store i32 %26, i32* %7, align 4
  br label %97

27:                                               ; preds = %19
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* @DW_DLC_READ, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %27
  %32 = load i32*, i32** %13, align 8
  %33 = load i32, i32* @DW_DLE_ARGUMENT, align 4
  %34 = call i32 @DWARF_SET_ERROR(i32* null, i32* %32, i32 %33)
  %35 = load i32, i32* @DW_DLV_ERROR, align 4
  store i32 %35, i32* %7, align 4
  br label %97

36:                                               ; preds = %27
  %37 = load i32, i32* @EV_CURRENT, align 4
  %38 = call i64 @elf_version(i32 %37)
  %39 = load i64, i64* @EV_NONE, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %36
  %42 = load i32*, i32** %13, align 8
  %43 = call i32 @DWARF_SET_ELF_ERROR(i32* null, i32* %42)
  %44 = load i32, i32* @DW_DLV_ERROR, align 4
  store i32 %44, i32* %7, align 4
  br label %97

45:                                               ; preds = %36
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* @ELF_C_READ, align 4
  %48 = call i32* @elf_begin(i32 %46, i32 %47, i32* null)
  store i32* %48, i32** %15, align 8
  %49 = icmp eq i32* %48, null
  br i1 %49, label %50, label %54

50:                                               ; preds = %45
  %51 = load i32*, i32** %13, align 8
  %52 = call i32 @DWARF_SET_ELF_ERROR(i32* null, i32* %51)
  %53 = load i32, i32* @DW_DLV_ERROR, align 4
  store i32 %53, i32* %7, align 4
  br label %97

54:                                               ; preds = %45
  %55 = load i32, i32* %9, align 4
  %56 = load i32*, i32** %13, align 8
  %57 = call i32 @_dwarf_alloc(i32* %14, i32 %55, i32* %56)
  %58 = load i32, i32* @DW_DLE_NONE, align 4
  %59 = icmp ne i32 %57, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %54
  %61 = load i32, i32* @DW_DLV_ERROR, align 4
  store i32 %61, i32* %7, align 4
  br label %97

62:                                               ; preds = %54
  %63 = load i32, i32* %14, align 4
  %64 = load i32*, i32** %15, align 8
  %65 = load i32*, i32** %13, align 8
  %66 = call i32 @_dwarf_elf_init(i32 %63, i32* %64, i32* %65)
  %67 = load i32, i32* @DW_DLE_NONE, align 4
  %68 = icmp ne i32 %66, %67
  br i1 %68, label %69, label %73

69:                                               ; preds = %62
  %70 = load i32, i32* %14, align 4
  %71 = call i32 @free(i32 %70)
  %72 = load i32, i32* @DW_DLV_ERROR, align 4
  store i32 %72, i32* %7, align 4
  br label %97

73:                                               ; preds = %62
  %74 = load i32, i32* %14, align 4
  %75 = load i32, i32* %10, align 4
  %76 = load i32, i32* %11, align 4
  %77 = load i32*, i32** %13, align 8
  %78 = call i32 @_dwarf_init(i32 %74, i32 0, i32 %75, i32 %76, i32* %77)
  store i32 %78, i32* %16, align 4
  %79 = load i32, i32* @DW_DLE_NONE, align 4
  %80 = icmp ne i32 %78, %79
  br i1 %80, label %81, label %93

81:                                               ; preds = %73
  %82 = load i32, i32* %14, align 4
  %83 = call i32 @_dwarf_elf_deinit(i32 %82)
  %84 = load i32, i32* %14, align 4
  %85 = call i32 @free(i32 %84)
  %86 = load i32, i32* %16, align 4
  %87 = load i32, i32* @DW_DLE_DEBUG_INFO_NULL, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %89, label %91

89:                                               ; preds = %81
  %90 = load i32, i32* @DW_DLV_NO_ENTRY, align 4
  store i32 %90, i32* %7, align 4
  br label %97

91:                                               ; preds = %81
  %92 = load i32, i32* @DW_DLV_ERROR, align 4
  store i32 %92, i32* %7, align 4
  br label %97

93:                                               ; preds = %73
  %94 = load i32, i32* %14, align 4
  %95 = load i32*, i32** %12, align 8
  store i32 %94, i32* %95, align 4
  %96 = load i32, i32* @DW_DLV_OK, align 4
  store i32 %96, i32* %7, align 4
  br label %97

97:                                               ; preds = %93, %91, %89, %69, %60, %50, %41, %31, %22
  %98 = load i32, i32* %7, align 4
  ret i32 %98
}

declare dso_local i32 @DWARF_SET_ERROR(i32*, i32*, i32) #1

declare dso_local i64 @elf_version(i32) #1

declare dso_local i32 @DWARF_SET_ELF_ERROR(i32*, i32*) #1

declare dso_local i32* @elf_begin(i32, i32, i32*) #1

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
