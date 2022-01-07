; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libdwarf/extr_libdwarf_reloc.c__dwarf_reloc_entry_add.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libdwarf/extr_libdwarf_reloc.c__dwarf_reloc_entry_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32 (i32*, i32*, i8**, i8*, i8, i32*)* }
%struct.TYPE_11__ = type { i64, i32, i32 }
%struct.TYPE_13__ = type { i8*, i32, i32 }
%struct.TYPE_12__ = type { i8, i8, i8*, i8*, i8*, i8* }

@DW_DLC_SYMBOLIC_RELOCATIONS = common dso_local global i32 0, align 4
@DW_DLE_NONE = common dso_local global i32 0, align 4
@DW_DLE_MEMORY = common dso_local global i32 0, align 4
@dre_next = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_dwarf_reloc_entry_add(%struct.TYPE_14__* %0, %struct.TYPE_11__* %1, %struct.TYPE_13__* %2, i8 zeroext %3, i8 zeroext %4, i8* %5, i8* %6, i8* %7, i8* %8, i32* %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_14__*, align 8
  %13 = alloca %struct.TYPE_11__*, align 8
  %14 = alloca %struct.TYPE_13__*, align 8
  %15 = alloca i8, align 1
  %16 = alloca i8, align 1
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca %struct.TYPE_12__*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %12, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %13, align 8
  store %struct.TYPE_13__* %2, %struct.TYPE_13__** %14, align 8
  store i8 %3, i8* %15, align 1
  store i8 %4, i8* %16, align 1
  store i8* %5, i8** %17, align 8
  store i8* %6, i8** %18, align 8
  store i8* %7, i8** %19, align 8
  store i8* %8, i8** %20, align 8
  store i32* %9, i32** %21, align 8
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %26 = icmp ne %struct.TYPE_11__* %25, null
  %27 = zext i1 %26 to i32
  %28 = call i32 @assert(i32 %27)
  %29 = load i8*, i8** %17, align 8
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = icmp ule i8* %29, %32
  %34 = zext i1 %33 to i32
  %35 = call i32 @assert(i32 %34)
  %36 = load i8*, i8** %17, align 8
  store i8* %36, i8** %23, align 8
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @DW_DLC_SYMBOLIC_RELOCATIONS, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %48, label %43

43:                                               ; preds = %10
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %60

48:                                               ; preds = %43, %10
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 1
  %51 = load i32 (i32*, i32*, i8**, i8*, i8, i32*)*, i32 (i32*, i32*, i8**, i8*, i8, i32*)** %50, align 8
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 2
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 1
  %56 = load i8*, i8** %19, align 8
  %57 = load i8, i8* %16, align 1
  %58 = load i32*, i32** %21, align 8
  %59 = call i32 %51(i32* %53, i32* %55, i8** %17, i8* %56, i8 zeroext %57, i32* %58)
  store i32 %59, i32* %24, align 4
  br label %71

60:                                               ; preds = %43
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %61, i32 0, i32 1
  %63 = load i32 (i32*, i32*, i8**, i8*, i8, i32*)*, i32 (i32*, i32*, i8**, i8*, i8, i32*)** %62, align 8
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 2
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 1
  %68 = load i8, i8* %16, align 1
  %69 = load i32*, i32** %21, align 8
  %70 = call i32 %63(i32* %65, i32* %67, i8** %17, i8* null, i8 zeroext %68, i32* %69)
  store i32 %70, i32* %24, align 4
  br label %71

71:                                               ; preds = %60, %48
  %72 = load i32, i32* %24, align 4
  %73 = load i32, i32* @DW_DLE_NONE, align 4
  %74 = icmp ne i32 %72, %73
  br i1 %74, label %75, label %77

75:                                               ; preds = %71
  %76 = load i32, i32* %24, align 4
  store i32 %76, i32* %11, align 4
  br label %125

77:                                               ; preds = %71
  %78 = load i8*, i8** %17, align 8
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 0
  %81 = load i8*, i8** %80, align 8
  %82 = icmp ugt i8* %78, %81
  br i1 %82, label %83, label %87

83:                                               ; preds = %77
  %84 = load i8*, i8** %17, align 8
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %85, i32 0, i32 0
  store i8* %84, i8** %86, align 8
  br label %87

87:                                               ; preds = %83, %77
  %88 = call %struct.TYPE_12__* @calloc(i32 1, i32 4)
  store %struct.TYPE_12__* %88, %struct.TYPE_12__** %22, align 8
  %89 = icmp eq %struct.TYPE_12__* %88, null
  br i1 %89, label %90, label %96

90:                                               ; preds = %87
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %92 = load i32*, i32** %21, align 8
  %93 = load i32, i32* @DW_DLE_MEMORY, align 4
  %94 = call i32 @DWARF_SET_ERROR(%struct.TYPE_14__* %91, i32* %92, i32 %93)
  %95 = load i32, i32* @DW_DLE_MEMORY, align 4
  store i32 %95, i32* %11, align 4
  br label %125

96:                                               ; preds = %87
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 2
  %99 = load %struct.TYPE_12__*, %struct.TYPE_12__** %22, align 8
  %100 = load i32, i32* @dre_next, align 4
  %101 = call i32 @STAILQ_INSERT_TAIL(i32* %98, %struct.TYPE_12__* %99, i32 %100)
  %102 = load i8, i8* %15, align 1
  %103 = load %struct.TYPE_12__*, %struct.TYPE_12__** %22, align 8
  %104 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %103, i32 0, i32 0
  store i8 %102, i8* %104, align 8
  %105 = load i8, i8* %16, align 1
  %106 = load %struct.TYPE_12__*, %struct.TYPE_12__** %22, align 8
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 1
  store i8 %105, i8* %107, align 1
  %108 = load i8*, i8** %23, align 8
  %109 = load %struct.TYPE_12__*, %struct.TYPE_12__** %22, align 8
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i32 0, i32 5
  store i8* %108, i8** %110, align 8
  %111 = load i8*, i8** %18, align 8
  %112 = load %struct.TYPE_12__*, %struct.TYPE_12__** %22, align 8
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %112, i32 0, i32 4
  store i8* %111, i8** %113, align 8
  %114 = load i8*, i8** %19, align 8
  %115 = load %struct.TYPE_12__*, %struct.TYPE_12__** %22, align 8
  %116 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %115, i32 0, i32 3
  store i8* %114, i8** %116, align 8
  %117 = load i8*, i8** %20, align 8
  %118 = load %struct.TYPE_12__*, %struct.TYPE_12__** %22, align 8
  %119 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %118, i32 0, i32 2
  store i8* %117, i8** %119, align 8
  %120 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 8
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %121, align 8
  %124 = load i32, i32* @DW_DLE_NONE, align 4
  store i32 %124, i32* %11, align 4
  br label %125

125:                                              ; preds = %96, %90, %75
  %126 = load i32, i32* %11, align 4
  ret i32 %126
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.TYPE_12__* @calloc(i32, i32) #1

declare dso_local i32 @DWARF_SET_ERROR(%struct.TYPE_14__*, i32*, i32) #1

declare dso_local i32 @STAILQ_INSERT_TAIL(i32*, %struct.TYPE_12__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
