; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libdwarf/extr_dwarf_pro_attr.c_dwarf_add_AT_signed_const.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libdwarf/extr_dwarf_pro_attr.c_dwarf_add_AT_signed_const.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, %struct.TYPE_11__*, i32, %struct.TYPE_12__* }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_12__ = type { i32 }

@DW_DLE_ARGUMENT = common dso_local global i32 0, align 4
@DW_DLV_BADADDR = common dso_local global %struct.TYPE_13__* null, align 8
@DW_DLE_NONE = common dso_local global i64 0, align 8
@SCHAR_MIN = common dso_local global i64 0, align 8
@SCHAR_MAX = common dso_local global i64 0, align 8
@DW_FORM_data1 = common dso_local global i32 0, align 4
@SHRT_MIN = common dso_local global i64 0, align 8
@SHRT_MAX = common dso_local global i64 0, align 8
@DW_FORM_data2 = common dso_local global i32 0, align 4
@INT_MIN = common dso_local global i64 0, align 8
@INT_MAX = common dso_local global i64 0, align 8
@DW_FORM_data4 = common dso_local global i32 0, align 4
@DW_FORM_data8 = common dso_local global i32 0, align 4
@at_next = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_13__* @dwarf_add_AT_signed_const(i32* %0, %struct.TYPE_12__* %1, i32 %2, i64 %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_13__*, align 8
  store i32* %0, i32** %7, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %8, align 8
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i32* %4, i32** %11, align 8
  %13 = load i32*, i32** %7, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %5
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %17 = icmp eq %struct.TYPE_12__* %16, null
  br i1 %17, label %18, label %24

18:                                               ; preds = %15, %5
  %19 = load i32*, i32** %7, align 8
  %20 = load i32*, i32** %11, align 8
  %21 = load i32, i32* @DW_DLE_ARGUMENT, align 4
  %22 = call i32 @DWARF_SET_ERROR(i32* %19, i32* %20, i32 %21)
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** @DW_DLV_BADADDR, align 8
  store %struct.TYPE_13__* %23, %struct.TYPE_13__** %6, align 8
  br label %93

24:                                               ; preds = %15
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %26 = load i32*, i32** %11, align 8
  %27 = call i64 @_dwarf_attr_alloc(%struct.TYPE_12__* %25, %struct.TYPE_13__** %12, i32* %26)
  %28 = load i64, i64* @DW_DLE_NONE, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** @DW_DLV_BADADDR, align 8
  store %struct.TYPE_13__* %31, %struct.TYPE_13__** %6, align 8
  br label %93

32:                                               ; preds = %24
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 3
  store %struct.TYPE_12__* %33, %struct.TYPE_12__** %35, align 8
  %36 = load i32, i32* %9, align 4
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 2
  store i32 %36, i32* %38, align 8
  %39 = load i64, i64* %10, align 8
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 1
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i64 0
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 0
  store i64 %39, i64* %44, align 8
  %45 = load i64, i64* %10, align 8
  %46 = load i64, i64* @SCHAR_MIN, align 8
  %47 = icmp sge i64 %45, %46
  br i1 %47, label %48, label %56

48:                                               ; preds = %32
  %49 = load i64, i64* %10, align 8
  %50 = load i64, i64* @SCHAR_MAX, align 8
  %51 = icmp sle i64 %49, %50
  br i1 %51, label %52, label %56

52:                                               ; preds = %48
  %53 = load i32, i32* @DW_FORM_data1, align 4
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 8
  br label %86

56:                                               ; preds = %48, %32
  %57 = load i64, i64* %10, align 8
  %58 = load i64, i64* @SHRT_MIN, align 8
  %59 = icmp sge i64 %57, %58
  br i1 %59, label %60, label %68

60:                                               ; preds = %56
  %61 = load i64, i64* %10, align 8
  %62 = load i64, i64* @SHRT_MAX, align 8
  %63 = icmp sle i64 %61, %62
  br i1 %63, label %64, label %68

64:                                               ; preds = %60
  %65 = load i32, i32* @DW_FORM_data2, align 4
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 8
  br label %85

68:                                               ; preds = %60, %56
  %69 = load i64, i64* %10, align 8
  %70 = load i64, i64* @INT_MIN, align 8
  %71 = icmp sge i64 %69, %70
  br i1 %71, label %72, label %80

72:                                               ; preds = %68
  %73 = load i64, i64* %10, align 8
  %74 = load i64, i64* @INT_MAX, align 8
  %75 = icmp sle i64 %73, %74
  br i1 %75, label %76, label %80

76:                                               ; preds = %72
  %77 = load i32, i32* @DW_FORM_data4, align 4
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 8
  br label %84

80:                                               ; preds = %72, %68
  %81 = load i32, i32* @DW_FORM_data8, align 4
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i32 0, i32 0
  store i32 %81, i32* %83, align 8
  br label %84

84:                                               ; preds = %80, %76
  br label %85

85:                                               ; preds = %84, %64
  br label %86

86:                                               ; preds = %85, %52
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %90 = load i32, i32* @at_next, align 4
  %91 = call i32 @STAILQ_INSERT_TAIL(i32* %88, %struct.TYPE_13__* %89, i32 %90)
  %92 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  store %struct.TYPE_13__* %92, %struct.TYPE_13__** %6, align 8
  br label %93

93:                                               ; preds = %86, %30, %18
  %94 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  ret %struct.TYPE_13__* %94
}

declare dso_local i32 @DWARF_SET_ERROR(i32*, i32*, i32) #1

declare dso_local i64 @_dwarf_attr_alloc(%struct.TYPE_12__*, %struct.TYPE_13__**, i32*) #1

declare dso_local i32 @STAILQ_INSERT_TAIL(i32*, %struct.TYPE_13__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
