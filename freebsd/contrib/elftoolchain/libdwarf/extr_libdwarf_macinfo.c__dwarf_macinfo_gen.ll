; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libdwarf/extr_libdwarf_macinfo.c__dwarf_macinfo_gen.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libdwarf/extr_libdwarf_macinfo.c__dwarf_macinfo_gen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, i32, i32, i32*, i32 }
%struct.TYPE_11__ = type { i32 }

@DW_DLE_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c".debug_macinfo\00", align 1
@SHT_PROGBITS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_dwarf_macinfo_gen(%struct.TYPE_12__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* @DW_DLE_NONE, align 4
  store i32 %15, i32* %3, align 4
  br label %97

16:                                               ; preds = %2
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %18 = load i32*, i32** %5, align 8
  %19 = call i32 @_dwarf_section_init(%struct.TYPE_12__* %17, %struct.TYPE_11__** %6, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 0, i32* %18)
  %20 = call i32 @RCHECK(i32 %19)
  store i32 0, i32* %8, align 4
  br label %21

21:                                               ; preds = %80, %16
  %22 = load i32, i32* %8, align 4
  %23 = sext i32 %22 to i64
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp slt i64 %23, %26
  br i1 %27, label %28, label %83

28:                                               ; preds = %21
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %30, align 8
  %32 = load i32, i32* %8, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i64 %33
  store %struct.TYPE_13__* %34, %struct.TYPE_13__** %7, align 8
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 4
  store i32 %37, i32* %39, align 8
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @WRITE_VALUE(i32 %42, i32 1)
  %44 = call i32 @RCHECK(i32 %43)
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  switch i32 %47, label %77 [
    i32 132, label %48
    i32 129, label %48
    i32 128, label %48
    i32 130, label %65
    i32 131, label %76
  ]

48:                                               ; preds = %28, %28, %28
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @WRITE_ULEB128(i32 %51)
  %53 = call i32 @RCHECK(i32 %52)
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 3
  %56 = load i32*, i32** %55, align 8
  %57 = icmp ne i32* %56, null
  %58 = zext i1 %57 to i32
  %59 = call i32 @assert(i32 %58)
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 3
  %62 = load i32*, i32** %61, align 8
  %63 = call i32 @WRITE_STRING(i32* %62)
  %64 = call i32 @RCHECK(i32 %63)
  br label %79

65:                                               ; preds = %28
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @WRITE_ULEB128(i32 %68)
  %70 = call i32 @RCHECK(i32 %69)
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @WRITE_ULEB128(i32 %73)
  %75 = call i32 @RCHECK(i32 %74)
  br label %79

76:                                               ; preds = %28
  br label %79

77:                                               ; preds = %28
  %78 = call i32 @assert(i32 0)
  br label %79

79:                                               ; preds = %77, %76, %65, %48
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %8, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %8, align 4
  br label %21

83:                                               ; preds = %21
  %84 = call i32 @WRITE_VALUE(i32 0, i32 1)
  %85 = call i32 @RCHECK(i32 %84)
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %88 = load i32, i32* @SHT_PROGBITS, align 4
  %89 = load i32*, i32** %5, align 8
  %90 = call i32 @_dwarf_section_callback(%struct.TYPE_12__* %86, %struct.TYPE_11__* %87, i32 %88, i32 0, i32 0, i32 0, i32* %89)
  %91 = call i32 @RCHECK(i32 %90)
  %92 = load i32, i32* @DW_DLE_NONE, align 4
  store i32 %92, i32* %3, align 4
  br label %97

93:                                               ; No predecessors!
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %95 = call i32 @_dwarf_section_free(%struct.TYPE_12__* %94, %struct.TYPE_11__** %6)
  %96 = load i32, i32* %9, align 4
  store i32 %96, i32* %3, align 4
  br label %97

97:                                               ; preds = %93, %83, %14
  %98 = load i32, i32* %3, align 4
  ret i32 %98
}

declare dso_local i32 @RCHECK(i32) #1

declare dso_local i32 @_dwarf_section_init(%struct.TYPE_12__*, %struct.TYPE_11__**, i8*, i32, i32*) #1

declare dso_local i32 @WRITE_VALUE(i32, i32) #1

declare dso_local i32 @WRITE_ULEB128(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @WRITE_STRING(i32*) #1

declare dso_local i32 @_dwarf_section_callback(%struct.TYPE_12__*, %struct.TYPE_11__*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @_dwarf_section_free(%struct.TYPE_12__*, %struct.TYPE_11__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
