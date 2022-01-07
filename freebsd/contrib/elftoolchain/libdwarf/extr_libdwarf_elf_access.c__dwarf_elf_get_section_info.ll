; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libdwarf/extr_libdwarf_elf_access.c__dwarf_elf_get_section_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libdwarf/extr_libdwarf_elf_access.c__dwarf_elf_get_section_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32*, i32, i32 }
%struct.TYPE_7__ = type { i64, i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32, i32 }

@DW_DLE_ARGUMENT = common dso_local global i32 0, align 4
@DW_DLV_ERROR = common dso_local global i32 0, align 4
@DW_DLE_NO_ENTRY = common dso_local global i32 0, align 4
@DW_DLV_NO_ENTRY = common dso_local global i32 0, align 4
@DW_DLE_ELF = common dso_local global i32 0, align 4
@DW_DLV_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_dwarf_elf_get_section_info(i8* %0, i64 %1, %struct.TYPE_6__* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca %struct.TYPE_5__*, align 8
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %13, %struct.TYPE_7__** %10, align 8
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %15 = icmp ne %struct.TYPE_7__* %14, null
  %16 = zext i1 %15 to i32
  %17 = call i32 @assert(i32 %16)
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %19 = icmp eq %struct.TYPE_6__* %18, null
  br i1 %19, label %20, label %28

20:                                               ; preds = %4
  %21 = load i32*, i32** %9, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = load i32, i32* @DW_DLE_ARGUMENT, align 4
  %25 = load i32*, i32** %9, align 8
  store i32 %24, i32* %25, align 4
  br label %26

26:                                               ; preds = %23, %20
  %27 = load i32, i32* @DW_DLV_ERROR, align 4
  store i32 %27, i32* %5, align 4
  br label %84

28:                                               ; preds = %4
  %29 = load i64, i64* %7, align 8
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp uge i64 %29, %32
  br i1 %33, label %34, label %42

34:                                               ; preds = %28
  %35 = load i32*, i32** %9, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = load i32, i32* @DW_DLE_NO_ENTRY, align 4
  %39 = load i32*, i32** %9, align 8
  store i32 %38, i32* %39, align 4
  br label %40

40:                                               ; preds = %37, %34
  %41 = load i32, i32* @DW_DLV_NO_ENTRY, align 4
  store i32 %41, i32* %5, align 4
  br label %84

42:                                               ; preds = %28
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 3
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %44, align 8
  %46 = load i64, i64* %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i64 %46
  store %struct.TYPE_5__* %47, %struct.TYPE_5__** %11, align 8
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 2
  store i32 %50, i32* %52, align 4
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 8
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32* @elf_strptr(i32 %60, i32 %63, i32 %66)
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  store i32* %67, i32** %69, align 8
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = icmp eq i32* %72, null
  br i1 %73, label %74, label %82

74:                                               ; preds = %42
  %75 = load i32*, i32** %9, align 8
  %76 = icmp ne i32* %75, null
  br i1 %76, label %77, label %80

77:                                               ; preds = %74
  %78 = load i32, i32* @DW_DLE_ELF, align 4
  %79 = load i32*, i32** %9, align 8
  store i32 %78, i32* %79, align 4
  br label %80

80:                                               ; preds = %77, %74
  %81 = load i32, i32* @DW_DLV_ERROR, align 4
  store i32 %81, i32* %5, align 4
  br label %84

82:                                               ; preds = %42
  %83 = load i32, i32* @DW_DLV_OK, align 4
  store i32 %83, i32* %5, align 4
  br label %84

84:                                               ; preds = %82, %80, %40, %26
  %85 = load i32, i32* %5, align 4
  ret i32 %85
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32* @elf_strptr(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
