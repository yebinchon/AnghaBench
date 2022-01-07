; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libdwarf/extr_libdwarf_reloc.c__dwarf_reloc_section_finalize.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libdwarf/extr_libdwarf_reloc.c__dwarf_reloc_section_finalize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }
%struct.TYPE_12__ = type { i32, %struct.TYPE_11__*, i64, %struct.TYPE_13__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_13__ = type { i64, i32, i32, i32, i32, i32* }

@DW_DLC_SIZE_64 = common dso_local global i32 0, align 4
@DW_DLE_NONE = common dso_local global i32 0, align 4
@DW_DLC_SYMBOLIC_RELOCATIONS = common dso_local global i32 0, align 4
@DW_DLE_MEMORY = common dso_local global i32 0, align 4
@SHT_RELA = common dso_local global i32 0, align 4
@SHT_REL = common dso_local global i32 0, align 4
@DW_DLE_ELF_SECT_ERR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_dwarf_reloc_section_finalize(%struct.TYPE_14__* %0, %struct.TYPE_12__* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %5, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %13 = icmp ne %struct.TYPE_14__* %12, null
  br i1 %13, label %14, label %27

14:                                               ; preds = %3
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %16 = icmp ne %struct.TYPE_12__* %15, null
  br i1 %16, label %17, label %27

17:                                               ; preds = %14
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 3
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  %21 = icmp ne %struct.TYPE_13__* %20, null
  br i1 %21, label %22, label %27

22:                                               ; preds = %17
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %24, align 8
  %26 = icmp ne %struct.TYPE_11__* %25, null
  br label %27

27:                                               ; preds = %22, %17, %14, %3
  %28 = phi i1 [ false, %17 ], [ false, %14 ], [ false, %3 ], [ %26, %22 ]
  %29 = zext i1 %28 to i32
  %30 = call i32 @assert(i32 %29)
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 3
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %32, align 8
  store %struct.TYPE_13__* %33, %struct.TYPE_13__** %8, align 8
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @DW_DLC_SIZE_64, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %27
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  %45 = zext i1 %44 to i64
  %46 = select i1 %44, i64 4, i64 4
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %9, align 4
  br label %56

48:                                               ; preds = %27
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  %53 = zext i1 %52 to i64
  %54 = select i1 %52, i64 4, i64 4
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %9, align 4
  br label %56

56:                                               ; preds = %48, %40
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp eq i64 %59, 0
  %61 = zext i1 %60 to i32
  %62 = call i32 @assert(i32 %61)
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* %9, align 4
  %67 = mul nsw i32 %65, %66
  store i32 %67, i32* %11, align 4
  %68 = load i32, i32* %11, align 4
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %56
  %71 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %72 = call i32 @_dwarf_reloc_section_free(%struct.TYPE_14__* %71, %struct.TYPE_12__** %6)
  %73 = load i32, i32* @DW_DLE_NONE, align 4
  store i32 %73, i32* %4, align 4
  br label %140

74:                                               ; preds = %56
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @DW_DLC_SYMBOLIC_RELOCATIONS, align 4
  %79 = and i32 %77, %78
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %103

81:                                               ; preds = %74
  %82 = load i32, i32* %11, align 4
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %83, i32 0, i32 1
  store i32 %82, i32* %84, align 8
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %85, i32 0, i32 5
  %87 = load i32*, i32** %86, align 8
  %88 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = sext i32 %90 to i64
  %92 = call i32* @realloc(i32* %87, i64 %91)
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %93, i32 0, i32 5
  store i32* %92, i32** %94, align 8
  %95 = icmp eq i32* %92, null
  br i1 %95, label %96, label %102

96:                                               ; preds = %81
  %97 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %98 = load i32*, i32** %7, align 8
  %99 = load i32, i32* @DW_DLE_MEMORY, align 4
  %100 = call i32 @DWARF_SET_ERROR(%struct.TYPE_14__* %97, i32* %98, i32 %99)
  %101 = load i32, i32* @DW_DLE_MEMORY, align 4
  store i32 %101, i32* %4, align 4
  br label %140

102:                                              ; preds = %81
  br label %103

103:                                              ; preds = %102, %74
  %104 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %105 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %106 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %105, i32 0, i32 4
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* %11, align 4
  %109 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i32 0, i32 2
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %103
  %114 = load i32, i32* @SHT_RELA, align 4
  br label %117

115:                                              ; preds = %103
  %116 = load i32, i32* @SHT_REL, align 4
  br label %117

117:                                              ; preds = %115, %113
  %118 = phi i32 [ %114, %113 ], [ %116, %115 ]
  %119 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %120 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %119, i32 0, i32 1
  %121 = load %struct.TYPE_11__*, %struct.TYPE_11__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %125 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %124, i32 0, i32 3
  %126 = call i32 @_dwarf_pro_callback(%struct.TYPE_14__* %104, i32 %107, i32 %108, i32 %118, i32 0, i32 0, i32 %123, i32* %125, i32* null)
  store i32 %126, i32* %10, align 4
  %127 = load i32, i32* %10, align 4
  %128 = icmp slt i32 %127, 0
  br i1 %128, label %129, label %135

129:                                              ; preds = %117
  %130 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %131 = load i32*, i32** %7, align 8
  %132 = load i32, i32* @DW_DLE_ELF_SECT_ERR, align 4
  %133 = call i32 @DWARF_SET_ERROR(%struct.TYPE_14__* %130, i32* %131, i32 %132)
  %134 = load i32, i32* @DW_DLE_ELF_SECT_ERR, align 4
  store i32 %134, i32* %4, align 4
  br label %140

135:                                              ; preds = %117
  %136 = load i32, i32* %10, align 4
  %137 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %138 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %137, i32 0, i32 2
  store i32 %136, i32* %138, align 4
  %139 = load i32, i32* @DW_DLE_NONE, align 4
  store i32 %139, i32* %4, align 4
  br label %140

140:                                              ; preds = %135, %129, %96, %70
  %141 = load i32, i32* %4, align 4
  ret i32 %141
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @_dwarf_reloc_section_free(%struct.TYPE_14__*, %struct.TYPE_12__**) #1

declare dso_local i32* @realloc(i32*, i64) #1

declare dso_local i32 @DWARF_SET_ERROR(%struct.TYPE_14__*, i32*, i32) #1

declare dso_local i32 @_dwarf_pro_callback(%struct.TYPE_14__*, i32, i32, i32, i32, i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
