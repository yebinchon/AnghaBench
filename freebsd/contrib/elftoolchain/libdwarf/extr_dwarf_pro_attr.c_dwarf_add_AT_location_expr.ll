; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libdwarf/extr_dwarf_pro_attr.c_dwarf_add_AT_location_expr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libdwarf/extr_dwarf_pro_attr.c_dwarf_add_AT_location_expr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, %struct.TYPE_14__*, %struct.TYPE_15__*, i32, %struct.TYPE_16__* }
%struct.TYPE_14__ = type { i64, i32 }
%struct.TYPE_15__ = type { i64, i32 }
%struct.TYPE_16__ = type { i32 }

@DW_DLE_ARGUMENT = common dso_local global i32 0, align 4
@DW_DLV_BADADDR = common dso_local global %struct.TYPE_17__* null, align 8
@DW_DLE_NONE = common dso_local global i64 0, align 8
@UCHAR_MAX = common dso_local global i64 0, align 8
@DW_FORM_block1 = common dso_local global i32 0, align 4
@USHRT_MAX = common dso_local global i64 0, align 8
@DW_FORM_block2 = common dso_local global i32 0, align 4
@UINT_MAX = common dso_local global i64 0, align 8
@DW_FORM_block4 = common dso_local global i32 0, align 4
@DW_FORM_block = common dso_local global i32 0, align 4
@at_next = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_17__* @dwarf_add_AT_location_expr(i32* %0, %struct.TYPE_16__* %1, i32 %2, %struct.TYPE_15__* %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_15__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_17__*, align 8
  store i32* %0, i32** %7, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.TYPE_15__* %3, %struct.TYPE_15__** %10, align 8
  store i32* %4, i32** %11, align 8
  %13 = load i32*, i32** %7, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %21, label %15

15:                                               ; preds = %5
  %16 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %17 = icmp eq %struct.TYPE_16__* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %15
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %20 = icmp eq %struct.TYPE_15__* %19, null
  br i1 %20, label %21, label %27

21:                                               ; preds = %18, %15, %5
  %22 = load i32*, i32** %7, align 8
  %23 = load i32*, i32** %11, align 8
  %24 = load i32, i32* @DW_DLE_ARGUMENT, align 4
  %25 = call i32 @DWARF_SET_ERROR(i32* %22, i32* %23, i32 %24)
  %26 = load %struct.TYPE_17__*, %struct.TYPE_17__** @DW_DLV_BADADDR, align 8
  store %struct.TYPE_17__* %26, %struct.TYPE_17__** %6, align 8
  br label %111

27:                                               ; preds = %18
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %29 = load i32*, i32** %11, align 8
  %30 = call i64 @_dwarf_attr_alloc(%struct.TYPE_16__* %28, %struct.TYPE_17__** %12, i32* %29)
  %31 = load i64, i64* @DW_DLE_NONE, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = load %struct.TYPE_17__*, %struct.TYPE_17__** @DW_DLV_BADADDR, align 8
  store %struct.TYPE_17__* %34, %struct.TYPE_17__** %6, align 8
  br label %111

35:                                               ; preds = %27
  %36 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %37 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %38 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %37, i32 0, i32 4
  store %struct.TYPE_16__* %36, %struct.TYPE_16__** %38, align 8
  %39 = load i32, i32* %9, align 4
  %40 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %41 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %40, i32 0, i32 3
  store i32 %39, i32* %41, align 8
  %42 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %43 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %44 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %43, i32 0, i32 2
  store %struct.TYPE_15__* %42, %struct.TYPE_15__** %44, align 8
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %46 = load i32*, i32** %11, align 8
  %47 = call i64 @_dwarf_expr_into_block(%struct.TYPE_15__* %45, i32* %46)
  %48 = load i64, i64* @DW_DLE_NONE, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %35
  %51 = load %struct.TYPE_17__*, %struct.TYPE_17__** @DW_DLV_BADADDR, align 8
  store %struct.TYPE_17__* %51, %struct.TYPE_17__** %6, align 8
  br label %111

52:                                               ; preds = %35
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %54 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %57 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %56, i32 0, i32 1
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i64 0
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i32 0, i32 0
  store i64 %55, i64* %60, align 8
  %61 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %62 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %65 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %64, i32 0, i32 1
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i64 1
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i32 0, i32 1
  store i32 %63, i32* %68, align 8
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @UCHAR_MAX, align 8
  %73 = icmp sle i64 %71, %72
  br i1 %73, label %74, label %78

74:                                               ; preds = %52
  %75 = load i32, i32* @DW_FORM_block1, align 4
  %76 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %77 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 8
  br label %104

78:                                               ; preds = %52
  %79 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %80 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @USHRT_MAX, align 8
  %83 = icmp sle i64 %81, %82
  br i1 %83, label %84, label %88

84:                                               ; preds = %78
  %85 = load i32, i32* @DW_FORM_block2, align 4
  %86 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %87 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 8
  br label %103

88:                                               ; preds = %78
  %89 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %90 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @UINT_MAX, align 8
  %93 = icmp sle i64 %91, %92
  br i1 %93, label %94, label %98

94:                                               ; preds = %88
  %95 = load i32, i32* @DW_FORM_block4, align 4
  %96 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %97 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %96, i32 0, i32 0
  store i32 %95, i32* %97, align 8
  br label %102

98:                                               ; preds = %88
  %99 = load i32, i32* @DW_FORM_block, align 4
  %100 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %101 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %100, i32 0, i32 0
  store i32 %99, i32* %101, align 8
  br label %102

102:                                              ; preds = %98, %94
  br label %103

103:                                              ; preds = %102, %84
  br label %104

104:                                              ; preds = %103, %74
  %105 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %106 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %105, i32 0, i32 0
  %107 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %108 = load i32, i32* @at_next, align 4
  %109 = call i32 @STAILQ_INSERT_TAIL(i32* %106, %struct.TYPE_17__* %107, i32 %108)
  %110 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  store %struct.TYPE_17__* %110, %struct.TYPE_17__** %6, align 8
  br label %111

111:                                              ; preds = %104, %50, %33, %21
  %112 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  ret %struct.TYPE_17__* %112
}

declare dso_local i32 @DWARF_SET_ERROR(i32*, i32*, i32) #1

declare dso_local i64 @_dwarf_attr_alloc(%struct.TYPE_16__*, %struct.TYPE_17__**, i32*) #1

declare dso_local i64 @_dwarf_expr_into_block(%struct.TYPE_15__*, i32*) #1

declare dso_local i32 @STAILQ_INSERT_TAIL(i32*, %struct.TYPE_17__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
