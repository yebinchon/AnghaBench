; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libdwarf/extr_libdwarf_reloc.c__dwarf_reloc_entry_add_pair.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libdwarf/extr_libdwarf_reloc.c__dwarf_reloc_entry_add_pair.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32 (i32*, i32*, i8**, i8*, i8, i32*)* }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_13__ = type { i8*, i32, i32 }
%struct.TYPE_12__ = type { i8, i32*, i64, i8*, i8*, i32 }

@DW_DLC_SYMBOLIC_RELOCATIONS = common dso_local global i32 0, align 4
@DW_DLE_NONE = common dso_local global i32 0, align 4
@DW_DLE_MEMORY = common dso_local global i32 0, align 4
@dre_next = common dso_local global i32 0, align 4
@dwarf_drt_first_of_length_pair = common dso_local global i32 0, align 4
@dwarf_drt_second_of_length_pair = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_dwarf_reloc_entry_add_pair(%struct.TYPE_14__* %0, %struct.TYPE_11__* %1, %struct.TYPE_13__* %2, i8 zeroext %3, i8* %4, i8* %5, i8* %6, i8* %7, i8* %8, i32* %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_14__*, align 8
  %13 = alloca %struct.TYPE_11__*, align 8
  %14 = alloca %struct.TYPE_13__*, align 8
  %15 = alloca i8, align 1
  %16 = alloca i8*, align 8
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
  store i8* %4, i8** %16, align 8
  store i8* %5, i8** %17, align 8
  store i8* %6, i8** %18, align 8
  store i8* %7, i8** %19, align 8
  store i8* %8, i8** %20, align 8
  store i32* %9, i32** %21, align 8
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %26 = icmp ne %struct.TYPE_11__* %25, null
  %27 = zext i1 %26 to i32
  %28 = call i32 @assert(i32 %27)
  %29 = load i8*, i8** %16, align 8
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = icmp ule i8* %29, %32
  %34 = zext i1 %33 to i32
  %35 = call i32 @assert(i32 %34)
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @DW_DLC_SYMBOLIC_RELOCATIONS, align 4
  %40 = and i32 %38, %39
  %41 = call i32 @assert(i32 %40)
  %42 = load i8*, i8** %16, align 8
  store i8* %42, i8** %23, align 8
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 1
  %45 = load i32 (i32*, i32*, i8**, i8*, i8, i32*)*, i32 (i32*, i32*, i8**, i8*, i8, i32*)** %44, align 8
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 2
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 1
  %50 = load i8*, i8** %20, align 8
  %51 = load i8*, i8** %19, align 8
  %52 = ptrtoint i8* %50 to i64
  %53 = ptrtoint i8* %51 to i64
  %54 = sub i64 %52, %53
  %55 = inttoptr i64 %54 to i8*
  %56 = load i8, i8* %15, align 1
  %57 = load i32*, i32** %21, align 8
  %58 = call i32 %45(i32* %47, i32* %49, i8** %16, i8* %55, i8 zeroext %56, i32* %57)
  store i32 %58, i32* %24, align 4
  %59 = load i32, i32* %24, align 4
  %60 = load i32, i32* @DW_DLE_NONE, align 4
  %61 = icmp ne i32 %59, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %10
  %63 = load i32, i32* %24, align 4
  store i32 %63, i32* %11, align 4
  br label %145

64:                                               ; preds = %10
  %65 = load i8*, i8** %16, align 8
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 0
  %68 = load i8*, i8** %67, align 8
  %69 = icmp ugt i8* %65, %68
  br i1 %69, label %70, label %74

70:                                               ; preds = %64
  %71 = load i8*, i8** %16, align 8
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 0
  store i8* %71, i8** %73, align 8
  br label %74

74:                                               ; preds = %70, %64
  %75 = call %struct.TYPE_12__* @calloc(i32 2, i32 4)
  store %struct.TYPE_12__* %75, %struct.TYPE_12__** %22, align 8
  %76 = icmp eq %struct.TYPE_12__* %75, null
  br i1 %76, label %77, label %83

77:                                               ; preds = %74
  %78 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %79 = load i32*, i32** %21, align 8
  %80 = load i32, i32* @DW_DLE_MEMORY, align 4
  %81 = call i32 @DWARF_SET_ERROR(%struct.TYPE_14__* %78, i32* %79, i32 %80)
  %82 = load i32, i32* @DW_DLE_MEMORY, align 4
  store i32 %82, i32* %11, align 4
  br label %145

83:                                               ; preds = %74
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 1
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %22, align 8
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i64 0
  %88 = load i32, i32* @dre_next, align 4
  %89 = call i32 @STAILQ_INSERT_TAIL(i32* %85, %struct.TYPE_12__* %87, i32 %88)
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 1
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %22, align 8
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i64 1
  %94 = load i32, i32* @dre_next, align 4
  %95 = call i32 @STAILQ_INSERT_TAIL(i32* %91, %struct.TYPE_12__* %93, i32 %94)
  %96 = load i32, i32* @dwarf_drt_first_of_length_pair, align 4
  %97 = load %struct.TYPE_12__*, %struct.TYPE_12__** %22, align 8
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i64 0
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i32 0, i32 5
  store i32 %96, i32* %99, align 8
  %100 = load i8, i8* %15, align 1
  %101 = load %struct.TYPE_12__*, %struct.TYPE_12__** %22, align 8
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i64 0
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %102, i32 0, i32 0
  store i8 %100, i8* %103, align 8
  %104 = load i8*, i8** %23, align 8
  %105 = load %struct.TYPE_12__*, %struct.TYPE_12__** %22, align 8
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %105, i64 0
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 4
  store i8* %104, i8** %107, align 8
  %108 = load i8*, i8** %17, align 8
  %109 = load %struct.TYPE_12__*, %struct.TYPE_12__** %22, align 8
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i64 0
  %111 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %110, i32 0, i32 3
  store i8* %108, i8** %111, align 8
  %112 = load %struct.TYPE_12__*, %struct.TYPE_12__** %22, align 8
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %112, i64 0
  %114 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %113, i32 0, i32 2
  store i64 0, i64* %114, align 8
  %115 = load %struct.TYPE_12__*, %struct.TYPE_12__** %22, align 8
  %116 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %115, i64 0
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %116, i32 0, i32 1
  store i32* null, i32** %117, align 8
  %118 = load i32, i32* @dwarf_drt_second_of_length_pair, align 4
  %119 = load %struct.TYPE_12__*, %struct.TYPE_12__** %22, align 8
  %120 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %119, i64 1
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %120, i32 0, i32 5
  store i32 %118, i32* %121, align 8
  %122 = load i8, i8* %15, align 1
  %123 = load %struct.TYPE_12__*, %struct.TYPE_12__** %22, align 8
  %124 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %123, i64 1
  %125 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %124, i32 0, i32 0
  store i8 %122, i8* %125, align 8
  %126 = load i8*, i8** %23, align 8
  %127 = load %struct.TYPE_12__*, %struct.TYPE_12__** %22, align 8
  %128 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %127, i64 1
  %129 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %128, i32 0, i32 4
  store i8* %126, i8** %129, align 8
  %130 = load i8*, i8** %18, align 8
  %131 = load %struct.TYPE_12__*, %struct.TYPE_12__** %22, align 8
  %132 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %131, i64 1
  %133 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %132, i32 0, i32 3
  store i8* %130, i8** %133, align 8
  %134 = load %struct.TYPE_12__*, %struct.TYPE_12__** %22, align 8
  %135 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %134, i64 1
  %136 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %135, i32 0, i32 2
  store i64 0, i64* %136, align 8
  %137 = load %struct.TYPE_12__*, %struct.TYPE_12__** %22, align 8
  %138 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %137, i64 1
  %139 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %138, i32 0, i32 1
  store i32* null, i32** %139, align 8
  %140 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %141 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = add nsw i32 %142, 2
  store i32 %143, i32* %141, align 4
  %144 = load i32, i32* @DW_DLE_NONE, align 4
  store i32 %144, i32* %11, align 4
  br label %145

145:                                              ; preds = %83, %77, %62
  %146 = load i32, i32* %11, align 4
  ret i32 %146
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
