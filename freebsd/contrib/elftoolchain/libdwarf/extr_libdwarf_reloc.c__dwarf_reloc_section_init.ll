; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libdwarf/extr_libdwarf_reloc.c__dwarf_reloc_section_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libdwarf/extr_libdwarf_reloc.c__dwarf_reloc_section_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32, i32 }
%struct.TYPE_12__ = type { i32, i32, i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 }

@DW_DLE_MEMORY = common dso_local global i32 0, align 4
@DW_DLC_SIZE_64 = common dso_local global i32 0, align 4
@DW_DLC_SYMBOLIC_RELOCATIONS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c".rela\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c".rel\00", align 1
@DW_DLE_NONE = common dso_local global i64 0, align 8
@drs_next = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_dwarf_reloc_section_init(%struct.TYPE_14__* %0, %struct.TYPE_12__** %1, %struct.TYPE_13__* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca %struct.TYPE_12__**, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca [128 x i8], align 16
  %12 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %6, align 8
  store %struct.TYPE_12__** %1, %struct.TYPE_12__*** %7, align 8
  store %struct.TYPE_13__* %2, %struct.TYPE_13__** %8, align 8
  store i32* %3, i32** %9, align 8
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %14 = icmp ne %struct.TYPE_14__* %13, null
  br i1 %14, label %15, label %21

15:                                               ; preds = %4
  %16 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %7, align 8
  %17 = icmp ne %struct.TYPE_12__** %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %20 = icmp ne %struct.TYPE_13__* %19, null
  br label %21

21:                                               ; preds = %18, %15, %4
  %22 = phi i1 [ false, %15 ], [ false, %4 ], [ %20, %18 ]
  %23 = zext i1 %22 to i32
  %24 = call i32 @assert(i32 %23)
  %25 = call %struct.TYPE_12__* @calloc(i32 1, i32 4)
  store %struct.TYPE_12__* %25, %struct.TYPE_12__** %10, align 8
  %26 = icmp eq %struct.TYPE_12__* %25, null
  br i1 %26, label %27, label %33

27:                                               ; preds = %21
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %29 = load i32*, i32** %9, align 8
  %30 = load i32, i32* @DW_DLE_MEMORY, align 4
  %31 = call i32 @DWARF_SET_ERROR(%struct.TYPE_14__* %28, i32* %29, i32 %30)
  %32 = load i32, i32* @DW_DLE_MEMORY, align 4
  store i32 %32, i32* %5, align 4
  br label %104

33:                                               ; preds = %21
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 3
  store %struct.TYPE_13__* %34, %struct.TYPE_13__** %36, align 8
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @DW_DLC_SIZE_64, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %33
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 0
  store i32 1, i32* %45, align 8
  br label %49

46:                                               ; preds = %33
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 0
  store i32 0, i32* %48, align 8
  br label %49

49:                                               ; preds = %46, %43
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @DW_DLC_SYMBOLIC_RELOCATIONS, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %49
  store i32 1, i32* %12, align 4
  br label %58

57:                                               ; preds = %49
  store i32 0, i32* %12, align 4
  br label %58

58:                                               ; preds = %57, %56
  %59 = getelementptr inbounds [128 x i8], [128 x i8]* %11, i64 0, i64 0
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp ne i32 %62, 0
  %64 = zext i1 %63 to i64
  %65 = select i1 %63, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @snprintf(i8* %59, i32 128, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %65, i32 %68)
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 2
  %73 = getelementptr inbounds [128 x i8], [128 x i8]* %11, i64 0, i64 0
  %74 = load i32, i32* %12, align 4
  %75 = load i32*, i32** %9, align 8
  %76 = call i64 @_dwarf_section_init(%struct.TYPE_14__* %70, i32* %72, i8* %73, i32 %74, i32* %75)
  %77 = load i64, i64* @DW_DLE_NONE, align 8
  %78 = icmp ne i64 %76, %77
  br i1 %78, label %79, label %87

79:                                               ; preds = %58
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %81 = call i32 @free(%struct.TYPE_12__* %80)
  %82 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %83 = load i32*, i32** %9, align 8
  %84 = load i32, i32* @DW_DLE_MEMORY, align 4
  %85 = call i32 @DWARF_SET_ERROR(%struct.TYPE_14__* %82, i32* %83, i32 %84)
  %86 = load i32, i32* @DW_DLE_MEMORY, align 4
  store i32 %86, i32* %5, align 4
  br label %104

87:                                               ; preds = %58
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 1
  %90 = call i32 @STAILQ_INIT(i32* %89)
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %91, i32 0, i32 2
  %93 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %94 = load i32, i32* @drs_next, align 4
  %95 = call i32 @STAILQ_INSERT_TAIL(i32* %92, %struct.TYPE_12__* %93, i32 %94)
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %97, align 4
  %100 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %101 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %7, align 8
  store %struct.TYPE_12__* %100, %struct.TYPE_12__** %101, align 8
  %102 = load i64, i64* @DW_DLE_NONE, align 8
  %103 = trunc i64 %102 to i32
  store i32 %103, i32* %5, align 4
  br label %104

104:                                              ; preds = %87, %79, %27
  %105 = load i32, i32* %5, align 4
  ret i32 %105
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.TYPE_12__* @calloc(i32, i32) #1

declare dso_local i32 @DWARF_SET_ERROR(%struct.TYPE_14__*, i32*, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i32) #1

declare dso_local i64 @_dwarf_section_init(%struct.TYPE_14__*, i32*, i8*, i32, i32*) #1

declare dso_local i32 @free(%struct.TYPE_12__*) #1

declare dso_local i32 @STAILQ_INIT(i32*) #1

declare dso_local i32 @STAILQ_INSERT_TAIL(i32*, %struct.TYPE_12__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
