; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libdwarf/extr_dwarf_frame.c_dwarf_get_fde_info_for_cfa_reg3.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libdwarf/extr_dwarf_frame.c_dwarf_get_fde_info_for_cfa_reg3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i64, i64, i32* }

@DW_DLE_ARGUMENT = common dso_local global i32 0, align 4
@DW_DLV_ERROR = common dso_local global i32 0, align 4
@DW_DLE_PC_NOT_IN_FDE_RANGE = common dso_local global i32 0, align 4
@DW_DLE_NONE = common dso_local global i32 0, align 4
@CFA = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@DW_DLV_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dwarf_get_fde_info_for_cfa_reg3(%struct.TYPE_5__* %0, i64 %1, i32* %2, i32* %3, i32* %4, i32* %5, i32* %6, i64* %7, i32* %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_5__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i64*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %11, align 8
  store i64 %1, i64* %12, align 8
  store i32* %2, i32** %13, align 8
  store i32* %3, i32** %14, align 8
  store i32* %4, i32** %15, align 8
  store i32* %5, i32** %16, align 8
  store i32* %6, i32** %17, align 8
  store i64* %7, i64** %18, align 8
  store i32* %8, i32** %19, align 8
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %25 = icmp ne %struct.TYPE_5__* %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %9
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 2
  %29 = load i32*, i32** %28, align 8
  br label %31

30:                                               ; preds = %9
  br label %31

31:                                               ; preds = %30, %26
  %32 = phi i32* [ %29, %26 ], [ null, %30 ]
  store i32* %32, i32** %21, align 8
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %34 = icmp eq %struct.TYPE_5__* %33, null
  br i1 %34, label %53, label %35

35:                                               ; preds = %31
  %36 = load i32*, i32** %13, align 8
  %37 = icmp eq i32* %36, null
  br i1 %37, label %53, label %38

38:                                               ; preds = %35
  %39 = load i32*, i32** %14, align 8
  %40 = icmp eq i32* %39, null
  br i1 %40, label %53, label %41

41:                                               ; preds = %38
  %42 = load i32*, i32** %15, align 8
  %43 = icmp eq i32* %42, null
  br i1 %43, label %53, label %44

44:                                               ; preds = %41
  %45 = load i32*, i32** %16, align 8
  %46 = icmp eq i32* %45, null
  br i1 %46, label %53, label %47

47:                                               ; preds = %44
  %48 = load i32*, i32** %17, align 8
  %49 = icmp eq i32* %48, null
  br i1 %49, label %53, label %50

50:                                               ; preds = %47
  %51 = load i64*, i64** %18, align 8
  %52 = icmp eq i64* %51, null
  br i1 %52, label %53, label %59

53:                                               ; preds = %50, %47, %44, %41, %38, %35, %31
  %54 = load i32*, i32** %21, align 8
  %55 = load i32*, i32** %19, align 8
  %56 = load i32, i32* @DW_DLE_ARGUMENT, align 4
  %57 = call i32 @DWARF_SET_ERROR(i32* %54, i32* %55, i32 %56)
  %58 = load i32, i32* @DW_DLV_ERROR, align 4
  store i32 %58, i32* %10, align 4
  br label %105

59:                                               ; preds = %50
  %60 = load i64, i64* %12, align 8
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp slt i64 %60, %63
  br i1 %64, label %75, label %65

65:                                               ; preds = %59
  %66 = load i64, i64* %12, align 8
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = add nsw i64 %69, %72
  %74 = icmp sge i64 %66, %73
  br i1 %74, label %75, label %81

75:                                               ; preds = %65, %59
  %76 = load i32*, i32** %21, align 8
  %77 = load i32*, i32** %19, align 8
  %78 = load i32, i32* @DW_DLE_PC_NOT_IN_FDE_RANGE, align 4
  %79 = call i32 @DWARF_SET_ERROR(i32* %76, i32* %77, i32 %78)
  %80 = load i32, i32* @DW_DLV_ERROR, align 4
  store i32 %80, i32* %10, align 4
  br label %105

81:                                               ; preds = %65
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %83 = load i64, i64* %12, align 8
  %84 = load i32*, i32** %19, align 8
  %85 = call i32 @_dwarf_frame_get_internal_table(%struct.TYPE_5__* %82, i64 %83, i32** %20, i64* %22, i32* %84)
  store i32 %85, i32* %23, align 4
  %86 = load i32, i32* %23, align 4
  %87 = load i32, i32* @DW_DLE_NONE, align 4
  %88 = icmp ne i32 %86, %87
  br i1 %88, label %89, label %91

89:                                               ; preds = %81
  %90 = load i32, i32* @DW_DLV_ERROR, align 4
  store i32 %90, i32* %10, align 4
  br label %105

91:                                               ; preds = %81
  %92 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @CFA, i32 0, i32 4), align 4
  %93 = load i32*, i32** %13, align 8
  store i32 %92, i32* %93, align 4
  %94 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @CFA, i32 0, i32 3), align 4
  %95 = load i32*, i32** %14, align 8
  store i32 %94, i32* %95, align 4
  %96 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @CFA, i32 0, i32 2), align 4
  %97 = load i32*, i32** %15, align 8
  store i32 %96, i32* %97, align 4
  %98 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @CFA, i32 0, i32 1), align 4
  %99 = load i32*, i32** %16, align 8
  store i32 %98, i32* %99, align 4
  %100 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @CFA, i32 0, i32 0), align 4
  %101 = load i32*, i32** %17, align 8
  store i32 %100, i32* %101, align 4
  %102 = load i64, i64* %22, align 8
  %103 = load i64*, i64** %18, align 8
  store i64 %102, i64* %103, align 8
  %104 = load i32, i32* @DW_DLV_OK, align 4
  store i32 %104, i32* %10, align 4
  br label %105

105:                                              ; preds = %91, %89, %75, %53
  %106 = load i32, i32* %10, align 4
  ret i32 %106
}

declare dso_local i32 @DWARF_SET_ERROR(i32*, i32*, i32) #1

declare dso_local i32 @_dwarf_frame_get_internal_table(%struct.TYPE_5__*, i64, i32**, i64*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
