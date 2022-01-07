; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libdwarf/extr_libdwarf_macinfo.c__dwarf_macinfo_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libdwarf/extr_libdwarf_macinfo.c__dwarf_macinfo_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32, i32* }
%struct.TYPE_12__ = type { i64 }

@.str = private unnamed_addr constant [15 x i8] c".debug_macinfo\00", align 1
@DW_DLE_NONE = common dso_local global i32 0, align 4
@DW_DLE_MEMORY = common dso_local global i32 0, align 4
@ms_next = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_dwarf_macinfo_init(%struct.TYPE_14__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %4, align 8
  store i32* %1, i32** %5, align 8
  %12 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %13 = call %struct.TYPE_12__* @_dwarf_find_section(%struct.TYPE_14__* %12, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_12__* %13, %struct.TYPE_12__** %8, align 8
  %14 = icmp eq %struct.TYPE_12__* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* @DW_DLE_NONE, align 4
  store i32 %16, i32* %3, align 4
  br label %95

17:                                               ; preds = %2
  store i64 0, i64* %9, align 8
  br label %18

18:                                               ; preds = %88, %17
  %19 = load i64, i64* %9, align 8
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp slt i64 %19, %22
  br i1 %23, label %24, label %89

24:                                               ; preds = %18
  %25 = load i64, i64* %9, align 8
  store i64 %25, i64* %10, align 8
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %28 = load i32*, i32** %5, align 8
  %29 = call i32 @_dwarf_macinfo_parse(%struct.TYPE_14__* %26, %struct.TYPE_12__* %27, i64* %9, i32* null, i32* %7, i32* %28)
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* %11, align 4
  %31 = load i32, i32* @DW_DLE_NONE, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %24
  %34 = load i32, i32* %11, align 4
  store i32 %34, i32* %3, align 4
  br label %95

35:                                               ; preds = %24
  %36 = load i32, i32* %7, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %35
  br label %89

39:                                               ; preds = %35
  %40 = call i8* @calloc(i32 1, i32 4)
  %41 = bitcast i8* %40 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %41, %struct.TYPE_13__** %6, align 8
  %42 = icmp eq %struct.TYPE_13__* %41, null
  br i1 %42, label %43, label %49

43:                                               ; preds = %39
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %45 = load i32*, i32** %5, align 8
  %46 = load i32, i32* @DW_DLE_MEMORY, align 4
  %47 = call i32 @DWARF_SET_ERROR(%struct.TYPE_14__* %44, i32* %45, i32 %46)
  %48 = load i32, i32* @DW_DLE_MEMORY, align 4
  store i32 %48, i32* %11, align 4
  br label %91

49:                                               ; preds = %39
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %53 = load i32, i32* @ms_next, align 4
  %54 = call i32 @STAILQ_INSERT_TAIL(i32* %51, %struct.TYPE_13__* %52, i32 %53)
  %55 = load i32, i32* %7, align 4
  %56 = call i8* @calloc(i32 %55, i32 4)
  %57 = bitcast i8* %56 to i32*
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 1
  store i32* %57, i32** %59, align 8
  %60 = icmp eq i32* %57, null
  br i1 %60, label %61, label %67

61:                                               ; preds = %49
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %63 = load i32*, i32** %5, align 8
  %64 = load i32, i32* @DW_DLE_MEMORY, align 4
  %65 = call i32 @DWARF_SET_ERROR(%struct.TYPE_14__* %62, i32* %63, i32 %64)
  %66 = load i32, i32* @DW_DLE_MEMORY, align 4
  store i32 %66, i32* %11, align 4
  br label %91

67:                                               ; preds = %49
  %68 = load i32, i32* %7, align 4
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 8
  %71 = load i64, i64* %10, align 8
  store i64 %71, i64* %9, align 8
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 1
  %76 = load i32*, i32** %75, align 8
  %77 = load i32*, i32** %5, align 8
  %78 = call i32 @_dwarf_macinfo_parse(%struct.TYPE_14__* %72, %struct.TYPE_12__* %73, i64* %9, i32* %76, i32* null, i32* %77)
  store i32 %78, i32* %11, align 4
  %79 = load i32, i32* %11, align 4
  %80 = load i32, i32* @DW_DLE_NONE, align 4
  %81 = icmp ne i32 %79, %80
  br i1 %81, label %82, label %88

82:                                               ; preds = %67
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %84 = load i32*, i32** %5, align 8
  %85 = load i32, i32* @DW_DLE_MEMORY, align 4
  %86 = call i32 @DWARF_SET_ERROR(%struct.TYPE_14__* %83, i32* %84, i32 %85)
  %87 = load i32, i32* @DW_DLE_MEMORY, align 4
  store i32 %87, i32* %11, align 4
  br label %91

88:                                               ; preds = %67
  br label %18

89:                                               ; preds = %38, %18
  %90 = load i32, i32* @DW_DLE_NONE, align 4
  store i32 %90, i32* %3, align 4
  br label %95

91:                                               ; preds = %82, %61, %43
  %92 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %93 = call i32 @_dwarf_macinfo_cleanup(%struct.TYPE_14__* %92)
  %94 = load i32, i32* %11, align 4
  store i32 %94, i32* %3, align 4
  br label %95

95:                                               ; preds = %91, %89, %33, %15
  %96 = load i32, i32* %3, align 4
  ret i32 %96
}

declare dso_local %struct.TYPE_12__* @_dwarf_find_section(%struct.TYPE_14__*, i8*) #1

declare dso_local i32 @_dwarf_macinfo_parse(%struct.TYPE_14__*, %struct.TYPE_12__*, i64*, i32*, i32*, i32*) #1

declare dso_local i8* @calloc(i32, i32) #1

declare dso_local i32 @DWARF_SET_ERROR(%struct.TYPE_14__*, i32*, i32) #1

declare dso_local i32 @STAILQ_INSERT_TAIL(i32*, %struct.TYPE_13__*, i32) #1

declare dso_local i32 @_dwarf_macinfo_cleanup(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
