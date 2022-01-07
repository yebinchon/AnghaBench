; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libdwarf/extr_libdwarf_info.c__dwarf_info_gen.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libdwarf/extr_libdwarf_info.c__dwarf_info_gen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i32, i32, %struct.TYPE_24__*, i32 (i32, i64*, i32, i32)*, i32*, i32* }
%struct.TYPE_24__ = type { i32, i32 }
%struct.TYPE_26__ = type { i32, i32, i32, i32, %struct.TYPE_25__* }

@DW_DLE_NONE = common dso_local global i32 0, align 4
@DW_DLE_MEMORY = common dso_local global i32 0, align 4
@cu_next = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c".debug_info\00", align 1
@dwarf_drt_data_reloc = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c".debug_abbrev\00", align 1
@SHT_PROGBITS = common dso_local global i32 0, align 4
@_Dwarf_CU = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_dwarf_info_gen(%struct.TYPE_25__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_25__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_24__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_26__*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %4, align 8
  store i32* %1, i32** %5, align 8
  %11 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %12 = icmp ne %struct.TYPE_25__* %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %2
  %14 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %14, i32 0, i32 5
  %16 = load i32*, i32** %15, align 8
  %17 = icmp ne i32* %16, null
  br label %18

18:                                               ; preds = %13, %2
  %19 = phi i1 [ false, %2 ], [ %17, %13 ]
  %20 = zext i1 %19 to i32
  %21 = call i32 @assert(i32 %20)
  %22 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %22, i32 0, i32 4
  %24 = load i32*, i32** %23, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %18
  %27 = load i32, i32* @DW_DLE_NONE, align 4
  store i32 %27, i32* %3, align 4
  br label %153

28:                                               ; preds = %18
  %29 = call %struct.TYPE_26__* @calloc(i32 1, i32 4)
  store %struct.TYPE_26__* %29, %struct.TYPE_26__** %9, align 8
  %30 = icmp eq %struct.TYPE_26__* %29, null
  br i1 %30, label %31, label %37

31:                                               ; preds = %28
  %32 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %33 = load i32*, i32** %5, align 8
  %34 = load i32, i32* @DW_DLE_MEMORY, align 4
  %35 = call i32 @DWARF_SET_ERROR(%struct.TYPE_25__* %32, i32* %33, i32 %34)
  %36 = load i32, i32* @DW_DLE_MEMORY, align 4
  store i32 %36, i32* %3, align 4
  br label %153

37:                                               ; preds = %28
  %38 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %39 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %39, i32 0, i32 4
  store %struct.TYPE_25__* %38, %struct.TYPE_25__** %40, align 8
  %41 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %41, i32 0, i32 0
  store i32 2, i32* %42, align 8
  %43 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  %48 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %48, i32 0, i32 1
  %50 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %51 = load i32, i32* @cu_next, align 4
  %52 = call i32 @STAILQ_INSERT_TAIL(i32* %49, %struct.TYPE_26__* %50, i32 %51)
  %53 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %54 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %54, i32 0, i32 2
  %56 = load i32*, i32** %5, align 8
  %57 = call i32 @_dwarf_section_init(%struct.TYPE_25__* %53, %struct.TYPE_24__** %55, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 0, i32* %56)
  store i32 %57, i32* %10, align 4
  %58 = load i32, i32* @DW_DLE_NONE, align 4
  %59 = icmp ne i32 %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %37
  br label %143

61:                                               ; preds = %37
  %62 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %62, i32 0, i32 2
  %64 = load %struct.TYPE_24__*, %struct.TYPE_24__** %63, align 8
  store %struct.TYPE_24__* %64, %struct.TYPE_24__** %6, align 8
  %65 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %66 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %67 = load i32*, i32** %5, align 8
  %68 = call i32 @_dwarf_reloc_section_init(%struct.TYPE_25__* %65, i32* %7, %struct.TYPE_24__* %66, i32* %67)
  store i32 %68, i32* %10, align 4
  %69 = load i32, i32* @DW_DLE_NONE, align 4
  %70 = icmp ne i32 %68, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %61
  br label %138

72:                                               ; preds = %61
  %73 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %74 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @WRITE_VALUE(i32 %75, i32 4)
  %77 = call i32 @RCHECK(i32 %76)
  %78 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %79 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @WRITE_VALUE(i32 %80, i32 2)
  %82 = call i32 @RCHECK(i32 %81)
  %83 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %84 = load i32, i32* %7, align 4
  %85 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %86 = load i32, i32* @dwarf_drt_data_reloc, align 4
  %87 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %91 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = load i32*, i32** %5, align 8
  %94 = call i32 @_dwarf_reloc_entry_add(%struct.TYPE_25__* %83, i32 %84, %struct.TYPE_24__* %85, i32 %86, i32 4, i32 %89, i32 0, i32 %92, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32* %93)
  %95 = call i32 @RCHECK(i32 %94)
  %96 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %97 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @WRITE_VALUE(i32 %98, i32 1)
  %100 = call i32 @RCHECK(i32 %99)
  %101 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %102 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %103 = load i32, i32* %7, align 4
  %104 = load i32*, i32** %5, align 8
  %105 = call i32 @_dwarf_die_gen(%struct.TYPE_25__* %101, %struct.TYPE_26__* %102, i32 %103, i32* %104)
  %106 = call i32 @RCHECK(i32 %105)
  %107 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = sub nsw i32 %109, 4
  %111 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %112 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %111, i32 0, i32 2
  store i32 %110, i32* %112, align 8
  store i64 0, i64* %8, align 8
  %113 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %113, i32 0, i32 3
  %115 = load i32 (i32, i64*, i32, i32)*, i32 (i32, i64*, i32, i32)** %114, align 8
  %116 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %117 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %120 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  %122 = call i32 %115(i32 %118, i64* %8, i32 %121, i32 4)
  %123 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %124 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %125 = load i32, i32* @SHT_PROGBITS, align 4
  %126 = load i32*, i32** %5, align 8
  %127 = call i32 @_dwarf_section_callback(%struct.TYPE_25__* %123, %struct.TYPE_24__* %124, i32 %125, i32 0, i32 0, i32 0, i32* %126)
  %128 = call i32 @RCHECK(i32 %127)
  %129 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %130 = load i32, i32* %7, align 4
  %131 = load i32*, i32** %5, align 8
  %132 = call i32 @_dwarf_reloc_section_finalize(%struct.TYPE_25__* %129, i32 %130, i32* %131)
  %133 = call i32 @RCHECK(i32 %132)
  %134 = load i32, i32* @DW_DLE_NONE, align 4
  store i32 %134, i32* %3, align 4
  br label %153

135:                                              ; No predecessors!
  %136 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %137 = call i32 @_dwarf_reloc_section_free(%struct.TYPE_25__* %136, i32* %7)
  br label %138

138:                                              ; preds = %135, %71
  %139 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %140 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %141 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %140, i32 0, i32 2
  %142 = call i32 @_dwarf_section_free(%struct.TYPE_25__* %139, %struct.TYPE_24__** %141)
  br label %143

143:                                              ; preds = %138, %60
  %144 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %145 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %144, i32 0, i32 1
  %146 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %147 = load i32, i32* @_Dwarf_CU, align 4
  %148 = load i32, i32* @cu_next, align 4
  %149 = call i32 @STAILQ_REMOVE(i32* %145, %struct.TYPE_26__* %146, i32 %147, i32 %148)
  %150 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %151 = call i32 @free(%struct.TYPE_26__* %150)
  %152 = load i32, i32* %10, align 4
  store i32 %152, i32* %3, align 4
  br label %153

153:                                              ; preds = %143, %72, %31, %26
  %154 = load i32, i32* %3, align 4
  ret i32 %154
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.TYPE_26__* @calloc(i32, i32) #1

declare dso_local i32 @DWARF_SET_ERROR(%struct.TYPE_25__*, i32*, i32) #1

declare dso_local i32 @STAILQ_INSERT_TAIL(i32*, %struct.TYPE_26__*, i32) #1

declare dso_local i32 @_dwarf_section_init(%struct.TYPE_25__*, %struct.TYPE_24__**, i8*, i32, i32*) #1

declare dso_local i32 @_dwarf_reloc_section_init(%struct.TYPE_25__*, i32*, %struct.TYPE_24__*, i32*) #1

declare dso_local i32 @RCHECK(i32) #1

declare dso_local i32 @WRITE_VALUE(i32, i32) #1

declare dso_local i32 @_dwarf_reloc_entry_add(%struct.TYPE_25__*, i32, %struct.TYPE_24__*, i32, i32, i32, i32, i32, i8*, i32*) #1

declare dso_local i32 @_dwarf_die_gen(%struct.TYPE_25__*, %struct.TYPE_26__*, i32, i32*) #1

declare dso_local i32 @_dwarf_section_callback(%struct.TYPE_25__*, %struct.TYPE_24__*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @_dwarf_reloc_section_finalize(%struct.TYPE_25__*, i32, i32*) #1

declare dso_local i32 @_dwarf_reloc_section_free(%struct.TYPE_25__*, i32*) #1

declare dso_local i32 @_dwarf_section_free(%struct.TYPE_25__*, %struct.TYPE_24__**) #1

declare dso_local i32 @STAILQ_REMOVE(i32*, %struct.TYPE_26__*, i32, i32) #1

declare dso_local i32 @free(%struct.TYPE_26__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
