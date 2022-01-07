; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libdwarf/extr_dwarf_attrval.c_dwarf_attrval_string.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libdwarf/extr_dwarf_attrval.c_dwarf_attrval_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32* }
%struct.TYPE_9__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i8* }

@DW_DLE_ARGUMENT = common dso_local global i32 0, align 4
@DW_DLV_ERROR = common dso_local global i32 0, align 4
@DW_DLE_NO_ENTRY = common dso_local global i32 0, align 4
@DW_DLV_NO_ENTRY = common dso_local global i32 0, align 4
@DW_DLE_ATTR_FORM_BAD = common dso_local global i32 0, align 4
@DW_DLV_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dwarf_attrval_string(%struct.TYPE_8__* %0, i32 %1, i8** %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca i32*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8** %2, i8*** %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %13 = icmp ne %struct.TYPE_8__* %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %4
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  br label %19

18:                                               ; preds = %4
  br label %19

19:                                               ; preds = %18, %14
  %20 = phi i32* [ %17, %14 ], [ null, %18 ]
  store i32* %20, i32** %11, align 8
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %22 = icmp eq %struct.TYPE_8__* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %19
  %24 = load i8**, i8*** %8, align 8
  %25 = icmp eq i8** %24, null
  br i1 %25, label %26, label %32

26:                                               ; preds = %23, %19
  %27 = load i32*, i32** %11, align 8
  %28 = load i32*, i32** %9, align 8
  %29 = load i32, i32* @DW_DLE_ARGUMENT, align 4
  %30 = call i32 @DWARF_SET_ERROR(i32* %27, i32* %28, i32 %29)
  %31 = load i32, i32* @DW_DLV_ERROR, align 4
  store i32 %31, i32* %5, align 4
  br label %72

32:                                               ; preds = %23
  %33 = load i8**, i8*** %8, align 8
  store i8* null, i8** %33, align 8
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %35 = load i32, i32* %7, align 4
  %36 = call %struct.TYPE_9__* @_dwarf_attr_find(%struct.TYPE_8__* %34, i32 %35)
  store %struct.TYPE_9__* %36, %struct.TYPE_9__** %10, align 8
  %37 = icmp eq %struct.TYPE_9__* %36, null
  br i1 %37, label %38, label %44

38:                                               ; preds = %32
  %39 = load i32*, i32** %11, align 8
  %40 = load i32*, i32** %9, align 8
  %41 = load i32, i32* @DW_DLE_NO_ENTRY, align 4
  %42 = call i32 @DWARF_SET_ERROR(i32* %39, i32* %40, i32 %41)
  %43 = load i32, i32* @DW_DLV_NO_ENTRY, align 4
  store i32 %43, i32* %5, align 4
  br label %72

44:                                               ; preds = %32
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  switch i32 %47, label %64 [
    i32 128, label %48
    i32 129, label %56
  ]

48:                                               ; preds = %44
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 1
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i64 1
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  %55 = load i8**, i8*** %8, align 8
  store i8* %54, i8** %55, align 8
  br label %70

56:                                               ; preds = %44
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 1
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i64 0
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  %63 = load i8**, i8*** %8, align 8
  store i8* %62, i8** %63, align 8
  br label %70

64:                                               ; preds = %44
  %65 = load i32*, i32** %11, align 8
  %66 = load i32*, i32** %9, align 8
  %67 = load i32, i32* @DW_DLE_ATTR_FORM_BAD, align 4
  %68 = call i32 @DWARF_SET_ERROR(i32* %65, i32* %66, i32 %67)
  %69 = load i32, i32* @DW_DLV_ERROR, align 4
  store i32 %69, i32* %5, align 4
  br label %72

70:                                               ; preds = %56, %48
  %71 = load i32, i32* @DW_DLV_OK, align 4
  store i32 %71, i32* %5, align 4
  br label %72

72:                                               ; preds = %70, %64, %38, %26
  %73 = load i32, i32* %5, align 4
  ret i32 %73
}

declare dso_local i32 @DWARF_SET_ERROR(i32*, i32*, i32) #1

declare dso_local %struct.TYPE_9__* @_dwarf_attr_find(%struct.TYPE_8__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
