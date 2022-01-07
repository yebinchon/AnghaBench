; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libdwarf/extr_libdwarf_attr.c__dwarf_add_string_attr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libdwarf/extr_libdwarf_attr.c__dwarf_add_string_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32* }
%struct.TYPE_13__ = type { %struct.TYPE_11__*, i32, i32, %struct.TYPE_12__* }
%struct.TYPE_11__ = type { i64, i64 }

@DW_DLE_ARGUMENT = common dso_local global i32 0, align 4
@DW_DLE_NONE = common dso_local global i32 0, align 4
@DW_FORM_strp = common dso_local global i32 0, align 4
@at_next = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_dwarf_add_string_attr(%struct.TYPE_12__* %0, %struct.TYPE_13__** %1, i32 %2, i8* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca %struct.TYPE_13__**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_13__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %7, align 8
  store %struct.TYPE_13__** %1, %struct.TYPE_13__*** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32* %4, i32** %11, align 8
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %16 = icmp ne %struct.TYPE_12__* %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %5
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  br label %22

21:                                               ; preds = %5
  br label %22

22:                                               ; preds = %21, %17
  %23 = phi i32* [ %20, %17 ], [ null, %21 ]
  store i32* %23, i32** %13, align 8
  %24 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %8, align 8
  %25 = icmp ne %struct.TYPE_13__** %24, null
  %26 = zext i1 %25 to i32
  %27 = call i32 @assert(i32 %26)
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %29 = icmp eq %struct.TYPE_12__* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %22
  %31 = load i8*, i8** %10, align 8
  %32 = icmp eq i8* %31, null
  br i1 %32, label %33, label %39

33:                                               ; preds = %30, %22
  %34 = load i32*, i32** %13, align 8
  %35 = load i32*, i32** %11, align 8
  %36 = load i32, i32* @DW_DLE_ARGUMENT, align 4
  %37 = call i32 @DWARF_SET_ERROR(i32* %34, i32* %35, i32 %36)
  %38 = load i32, i32* @DW_DLE_ARGUMENT, align 4
  store i32 %38, i32* %6, align 4
  br label %95

39:                                               ; preds = %30
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %41 = load i32*, i32** %11, align 8
  %42 = call i32 @_dwarf_attr_alloc(%struct.TYPE_12__* %40, %struct.TYPE_13__** %12, i32* %41)
  store i32 %42, i32* %14, align 4
  %43 = load i32, i32* @DW_DLE_NONE, align 4
  %44 = icmp ne i32 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %39
  %46 = load i32, i32* %14, align 4
  store i32 %46, i32* %6, align 4
  br label %95

47:                                               ; preds = %39
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i32 0, i32 3
  store %struct.TYPE_12__* %48, %struct.TYPE_12__** %50, align 8
  %51 = load i32, i32* %9, align 4
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 2
  store i32 %51, i32* %53, align 4
  %54 = load i32, i32* @DW_FORM_strp, align 4
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 8
  %57 = load i32*, i32** %13, align 8
  %58 = load i8*, i8** %10, align 8
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i64 0
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 0
  %64 = load i32*, i32** %11, align 8
  %65 = call i32 @_dwarf_strtab_add(i32* %57, i8* %58, i64* %63, i32* %64)
  store i32 %65, i32* %14, align 4
  %66 = load i32, i32* @DW_DLE_NONE, align 4
  %67 = icmp ne i32 %65, %66
  br i1 %67, label %68, label %72

68:                                               ; preds = %47
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %70 = call i32 @free(%struct.TYPE_13__* %69)
  %71 = load i32, i32* %14, align 4
  store i32 %71, i32* %6, align 4
  br label %95

72:                                               ; preds = %47
  %73 = load i32*, i32** %13, align 8
  %74 = call i64 @_dwarf_strtab_get_table(i32* %73)
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i64 0
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = add nsw i64 %74, %80
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i64 1
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 1
  store i64 %81, i64* %86, align 8
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %88 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %8, align 8
  store %struct.TYPE_13__* %87, %struct.TYPE_13__** %88, align 8
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 0
  %91 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %92 = load i32, i32* @at_next, align 4
  %93 = call i32 @STAILQ_INSERT_TAIL(i32* %90, %struct.TYPE_13__* %91, i32 %92)
  %94 = load i32, i32* @DW_DLE_NONE, align 4
  store i32 %94, i32* %6, align 4
  br label %95

95:                                               ; preds = %72, %68, %45, %33
  %96 = load i32, i32* %6, align 4
  ret i32 %96
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @DWARF_SET_ERROR(i32*, i32*, i32) #1

declare dso_local i32 @_dwarf_attr_alloc(%struct.TYPE_12__*, %struct.TYPE_13__**, i32*) #1

declare dso_local i32 @_dwarf_strtab_add(i32*, i8*, i64*, i32*) #1

declare dso_local i32 @free(%struct.TYPE_13__*) #1

declare dso_local i64 @_dwarf_strtab_get_table(i32*) #1

declare dso_local i32 @STAILQ_INSERT_TAIL(i32*, %struct.TYPE_13__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
