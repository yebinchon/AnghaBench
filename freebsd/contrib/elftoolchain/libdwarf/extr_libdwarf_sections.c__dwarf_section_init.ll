; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libdwarf/extr_libdwarf_sections.c__dwarf_section_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libdwarf/extr_libdwarf_sections.c__dwarf_section_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_10__*, i64, i32* }

@DW_DLE_MEMORY = common dso_local global i32 0, align 4
@_SECTION_INIT_SIZE = common dso_local global i64 0, align 8
@ds_next = common dso_local global i32 0, align 4
@DW_DLE_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_dwarf_section_init(%struct.TYPE_11__* %0, %struct.TYPE_10__** %1, i8* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca %struct.TYPE_10__**, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %7, align 8
  store %struct.TYPE_10__** %1, %struct.TYPE_10__*** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %14 = icmp ne %struct.TYPE_11__* %13, null
  br i1 %14, label %15, label %21

15:                                               ; preds = %5
  %16 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %8, align 8
  %17 = icmp ne %struct.TYPE_10__** %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  %19 = load i8*, i8** %9, align 8
  %20 = icmp ne i8* %19, null
  br label %21

21:                                               ; preds = %18, %15, %5
  %22 = phi i1 [ false, %15 ], [ false, %5 ], [ %20, %18 ]
  %23 = zext i1 %22 to i32
  %24 = call i32 @assert(i32 %23)
  %25 = call %struct.TYPE_10__* @calloc(i32 1, i32 4)
  store %struct.TYPE_10__* %25, %struct.TYPE_10__** %12, align 8
  %26 = icmp eq %struct.TYPE_10__* %25, null
  br i1 %26, label %27, label %33

27:                                               ; preds = %21
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %29 = load i32*, i32** %11, align 8
  %30 = load i32, i32* @DW_DLE_MEMORY, align 4
  %31 = call i32 @DWARF_SET_ERROR(%struct.TYPE_11__* %28, i32* %29, i32 %30)
  %32 = load i32, i32* @DW_DLE_MEMORY, align 4
  store i32 %32, i32* %6, align 4
  br label %87

33:                                               ; preds = %21
  %34 = load i8*, i8** %9, align 8
  %35 = call %struct.TYPE_10__* @strdup(i8* %34)
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 0
  store %struct.TYPE_10__* %35, %struct.TYPE_10__** %37, align 8
  %38 = icmp eq %struct.TYPE_10__* %35, null
  br i1 %38, label %39, label %47

39:                                               ; preds = %33
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %41 = call i32 @free(%struct.TYPE_10__* %40)
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %43 = load i32*, i32** %11, align 8
  %44 = load i32, i32* @DW_DLE_MEMORY, align 4
  %45 = call i32 @DWARF_SET_ERROR(%struct.TYPE_11__* %42, i32* %43, i32 %44)
  %46 = load i32, i32* @DW_DLE_MEMORY, align 4
  store i32 %46, i32* %6, align 4
  br label %87

47:                                               ; preds = %33
  %48 = load i32, i32* %10, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %83, label %50

50:                                               ; preds = %47
  %51 = load i64, i64* @_SECTION_INIT_SIZE, align 8
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 1
  store i64 %51, i64* %53, align 8
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = call i32* @malloc(i64 %56)
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 2
  store i32* %57, i32** %59, align 8
  %60 = icmp eq i32* %57, null
  br i1 %60, label %61, label %73

61:                                               ; preds = %50
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %63, align 8
  %65 = call i32 @free(%struct.TYPE_10__* %64)
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %67 = call i32 @free(%struct.TYPE_10__* %66)
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %69 = load i32*, i32** %11, align 8
  %70 = load i32, i32* @DW_DLE_MEMORY, align 4
  %71 = call i32 @DWARF_SET_ERROR(%struct.TYPE_11__* %68, i32* %69, i32 %70)
  %72 = load i32, i32* @DW_DLE_MEMORY, align 4
  store i32 %72, i32* %6, align 4
  br label %87

73:                                               ; preds = %50
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 1
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %77 = load i32, i32* @ds_next, align 4
  %78 = call i32 @STAILQ_INSERT_TAIL(i32* %75, %struct.TYPE_10__* %76, i32 %77)
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %80, align 4
  br label %83

83:                                               ; preds = %73, %47
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %85 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %8, align 8
  store %struct.TYPE_10__* %84, %struct.TYPE_10__** %85, align 8
  %86 = load i32, i32* @DW_DLE_NONE, align 4
  store i32 %86, i32* %6, align 4
  br label %87

87:                                               ; preds = %83, %61, %39, %27
  %88 = load i32, i32* %6, align 4
  ret i32 %88
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.TYPE_10__* @calloc(i32, i32) #1

declare dso_local i32 @DWARF_SET_ERROR(%struct.TYPE_11__*, i32*, i32) #1

declare dso_local %struct.TYPE_10__* @strdup(i8*) #1

declare dso_local i32 @free(%struct.TYPE_10__*) #1

declare dso_local i32* @malloc(i64) #1

declare dso_local i32 @STAILQ_INSERT_TAIL(i32*, %struct.TYPE_10__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
