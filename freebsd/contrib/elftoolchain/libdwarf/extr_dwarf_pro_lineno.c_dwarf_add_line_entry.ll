; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libdwarf/extr_dwarf_pro_lineno.c_dwarf_add_line_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libdwarf/extr_dwarf_pro_lineno.c_dwarf_add_line_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_11__ = type { i64, i32, i32, i64, i32, i8*, i8*, i64, %struct.TYPE_10__* }

@DW_DLE_ARGUMENT = common dso_local global i32 0, align 4
@DW_DLV_NOCOUNT = common dso_local global i8* null, align 8
@_Dwarf_Line = common dso_local global i32 0, align 4
@ln_next = common dso_local global i32 0, align 4
@DW_DLE_MEMORY = common dso_local global i32 0, align 4
@DW_DLV_OK = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @dwarf_add_line_entry(%struct.TYPE_9__* %0, i8* %1, i64 %2, i8* %3, i32 %4, i64 %5, i64 %6, i32* %7) #0 {
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32*, align 8
  %18 = alloca %struct.TYPE_10__*, align 8
  %19 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %10, align 8
  store i8* %1, i8** %11, align 8
  store i64 %2, i64* %12, align 8
  store i8* %3, i8** %13, align 8
  store i32 %4, i32* %14, align 4
  store i64 %5, i64* %15, align 8
  store i64 %6, i64* %16, align 8
  store i32* %7, i32** %17, align 8
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %21 = icmp eq %struct.TYPE_9__* %20, null
  br i1 %21, label %22, label %28

22:                                               ; preds = %8
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %24 = load i32*, i32** %17, align 8
  %25 = load i32, i32* @DW_DLE_ARGUMENT, align 4
  %26 = call i32 @DWARF_SET_ERROR(%struct.TYPE_9__* %23, i32* %24, i32 %25)
  %27 = load i8*, i8** @DW_DLV_NOCOUNT, align 8
  store i8* %27, i8** %9, align 8
  br label %100

28:                                               ; preds = %8
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %30, align 8
  store %struct.TYPE_10__* %31, %struct.TYPE_10__** %18, align 8
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 1
  %34 = load i32, i32* @_Dwarf_Line, align 4
  %35 = load i32, i32* @ln_next, align 4
  %36 = call %struct.TYPE_11__* @STAILQ_LAST(i32* %33, i32 %34, i32 %35)
  store %struct.TYPE_11__* %36, %struct.TYPE_11__** %19, align 8
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %38 = icmp eq %struct.TYPE_11__* %37, null
  br i1 %38, label %45, label %39

39:                                               ; preds = %28
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* %12, align 8
  %44 = icmp sgt i64 %42, %43
  br i1 %44, label %45, label %51

45:                                               ; preds = %39, %28
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %47 = load i32*, i32** %17, align 8
  %48 = load i32, i32* @DW_DLE_ARGUMENT, align 4
  %49 = call i32 @DWARF_SET_ERROR(%struct.TYPE_9__* %46, i32* %47, i32 %48)
  %50 = load i8*, i8** @DW_DLV_NOCOUNT, align 8
  store i8* %50, i8** %9, align 8
  br label %100

51:                                               ; preds = %39
  %52 = call %struct.TYPE_11__* @calloc(i32 1, i32 4)
  store %struct.TYPE_11__* %52, %struct.TYPE_11__** %19, align 8
  %53 = icmp eq %struct.TYPE_11__* %52, null
  br i1 %53, label %54, label %60

54:                                               ; preds = %51
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %56 = load i32*, i32** %17, align 8
  %57 = load i32, i32* @DW_DLE_MEMORY, align 4
  %58 = call i32 @DWARF_SET_ERROR(%struct.TYPE_9__* %55, i32* %56, i32 %57)
  %59 = load i8*, i8** @DW_DLV_NOCOUNT, align 8
  store i8* %59, i8** %9, align 8
  br label %100

60:                                               ; preds = %51
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 8
  store %struct.TYPE_10__* %61, %struct.TYPE_10__** %63, align 8
  %64 = load i64, i64* %12, align 8
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 0
  store i64 %64, i64* %66, align 8
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 7
  store i64 0, i64* %68, align 8
  %69 = load i8*, i8** %11, align 8
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 6
  store i8* %69, i8** %71, align 8
  %72 = load i8*, i8** %13, align 8
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 5
  store i8* %72, i8** %74, align 8
  %75 = load i32, i32* %14, align 4
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 4
  store i32 %75, i32* %77, align 8
  %78 = load i64, i64* %16, align 8
  %79 = icmp ne i64 %78, 0
  %80 = zext i1 %79 to i32
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 1
  store i32 %80, i32* %82, align 8
  %83 = load i64, i64* %15, align 8
  %84 = icmp ne i64 %83, 0
  %85 = zext i1 %84 to i32
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 2
  store i32 %85, i32* %87, align 4
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 3
  store i64 0, i64* %89, align 8
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 1
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %93 = load i32, i32* @ln_next, align 4
  %94 = call i32 @STAILQ_INSERT_TAIL(i32* %91, %struct.TYPE_11__* %92, i32 %93)
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %96, align 4
  %99 = load i8*, i8** @DW_DLV_OK, align 8
  store i8* %99, i8** %9, align 8
  br label %100

100:                                              ; preds = %60, %54, %45, %22
  %101 = load i8*, i8** %9, align 8
  ret i8* %101
}

declare dso_local i32 @DWARF_SET_ERROR(%struct.TYPE_9__*, i32*, i32) #1

declare dso_local %struct.TYPE_11__* @STAILQ_LAST(i32*, i32, i32) #1

declare dso_local %struct.TYPE_11__* @calloc(i32, i32) #1

declare dso_local i32 @STAILQ_INSERT_TAIL(i32*, %struct.TYPE_11__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
