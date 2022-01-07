; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libdwarf/extr_libdwarf_elf_access.c__dwarf_elf_load_section.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libdwarf/extr_libdwarf_elf_access.c__dwarf_elf_load_section.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_4__*, i32* }
%struct.TYPE_4__ = type { i32* }

@DW_DLE_ARGUMENT = common dso_local global i32 0, align 4
@DW_DLV_ERROR = common dso_local global i32 0, align 4
@DW_DLE_NO_ENTRY = common dso_local global i32 0, align 4
@DW_DLV_NO_ENTRY = common dso_local global i32 0, align 4
@DW_DLV_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_dwarf_elf_load_section(i8* %0, i64 %1, i32** %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_5__*, align 8
  %11 = alloca %struct.TYPE_6__*, align 8
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32** %2, i32*** %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %13, %struct.TYPE_5__** %10, align 8
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %15 = icmp ne %struct.TYPE_5__* %14, null
  %16 = zext i1 %15 to i32
  %17 = call i32 @assert(i32 %16)
  %18 = load i32**, i32*** %8, align 8
  %19 = icmp eq i32** %18, null
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
  br label %79

28:                                               ; preds = %4
  %29 = load i64, i64* %7, align 8
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
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
  br label %79

42:                                               ; preds = %28
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 1
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %44, align 8
  %46 = load i64, i64* %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i64 %46
  store %struct.TYPE_6__* %47, %struct.TYPE_6__** %11, align 8
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = icmp ne i32* %50, null
  br i1 %51, label %52, label %57

52:                                               ; preds = %42
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = load i32**, i32*** %8, align 8
  store i32* %55, i32** %56, align 8
  br label %77

57:                                               ; preds = %42
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = icmp eq %struct.TYPE_4__* %60, null
  br i1 %61, label %62, label %70

62:                                               ; preds = %57
  %63 = load i32*, i32** %9, align 8
  %64 = icmp ne i32* %63, null
  br i1 %64, label %65, label %68

65:                                               ; preds = %62
  %66 = load i32, i32* @DW_DLE_NO_ENTRY, align 4
  %67 = load i32*, i32** %9, align 8
  store i32 %66, i32* %67, align 4
  br label %68

68:                                               ; preds = %65, %62
  %69 = load i32, i32* @DW_DLV_NO_ENTRY, align 4
  store i32 %69, i32* %5, align 4
  br label %79

70:                                               ; preds = %57
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = load i32**, i32*** %8, align 8
  store i32* %75, i32** %76, align 8
  br label %77

77:                                               ; preds = %70, %52
  %78 = load i32, i32* @DW_DLV_OK, align 4
  store i32 %78, i32* %5, align 4
  br label %79

79:                                               ; preds = %77, %68, %40, %26
  %80 = load i32, i32* %5, align 4
  ret i32 %80
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
